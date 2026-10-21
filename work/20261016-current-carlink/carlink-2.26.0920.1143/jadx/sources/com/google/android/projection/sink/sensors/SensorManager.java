package com.google.android.projection.sink.sensors;

import android.location.Location;
import android.os.Handler;
import android.os.Message;
import com.google.android.projection.protocol.SensorSource;
import com.google.android.projection.sink.GalIntegration;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class SensorManager {
    private GalIntegration mGal;
    private SensorsInterceptor mSensorsInterceptor;
    private long mUpdateCounter;
    private final Set<Integer> mSupportedSensors = new HashSet();
    private final Handler mHandler = new SensorHandler();
    private final List<SensorCollectorBase> mSensorFeeds = new ArrayList();
    private final Object mGalLock = new Object();
    private final List<LocationListener> mLocationListeners = new CopyOnWriteArrayList();
    private final List<CompassListener> mCompassListeners = new CopyOnWriteArrayList();

    public interface CompassListener {
        void onCompassChanged(float f2, float f3, float f4);
    }

    public interface LocationListener {
        void onLocationChanged(Location location);
    }

    public class SensorHandler extends Handler {
        private SensorHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            synchronized (SensorManager.this.mGalLock) {
                if (message.what == 0) {
                    SensorManager.this.sendRegularUpdatesLocked();
                } else if (SensorManager.this.mGal != null && SensorManager.this.mGal.sensors != null) {
                    SensorManager.this.sendUpdate(message.what);
                }
            }
        }
    }

    public class SensorsInterceptor extends SensorSinkWrapper {
        public SensorsInterceptor(SensorSource sensorSource) {
            super(sensorSource);
        }

        @Override // com.google.android.projection.sink.sensors.SensorSinkWrapper
        public void reportCompassData(final int i2, final boolean z2, final int i3, final boolean z3, final int i4) {
            super.reportCompassData(i2, z2, i3, z3, i4);
            SensorManager.this.mHandler.post(new Runnable() { // from class: com.google.android.projection.sink.sensors.SensorManager.SensorsInterceptor.2
                @Override // java.lang.Runnable
                public void run() {
                    float f2 = i2;
                    float f3 = z2 ? i3 : Float.NaN;
                    float f4 = z3 ? i4 : Float.NaN;
                    Iterator it = SensorManager.this.mCompassListeners.iterator();
                    while (it.hasNext()) {
                        ((CompassListener) it.next()).onCompassChanged(f2, f3, f4);
                    }
                }
            });
        }

        @Override // com.google.android.projection.sink.sensors.SensorSinkWrapper
        public void reportLocation(final Location location) {
            super.reportLocation(location);
            SensorManager.this.mHandler.post(new Runnable() { // from class: com.google.android.projection.sink.sensors.SensorManager.SensorsInterceptor.1
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = SensorManager.this.mLocationListeners.iterator();
                    while (it.hasNext()) {
                        ((LocationListener) it.next()).onLocationChanged(location);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRegularUpdatesLocked() {
        GalIntegration galIntegration = this.mGal;
        if (galIntegration != null && galIntegration.sensors != null) {
            sendUpdate(3);
            sendUpdate(2);
            sendUpdate(19);
            sendUpdate(20);
            sendUpdate(4);
            if (this.mUpdateCounter % 10 == 0) {
                sendUpdate(14);
            }
            if (this.mUpdateCounter % 100 == 0) {
                sendUpdate(11);
            }
            if (this.mUpdateCounter == 0) {
                sendUpdate(13);
                sendUpdate(1);
                sendUpdate(21);
                sendUpdate(10);
                sendUpdate(8);
                sendUpdate(5);
                sendUpdate(6);
                sendUpdate(7);
                sendUpdate(16);
                sendUpdate(12);
                sendUpdate(17);
                sendUpdate(9);
                sendUpdate(15);
                sendUpdate(18);
            }
            this.mUpdateCounter++;
        }
        Handler handler = this.mHandler;
        handler.sendMessageDelayed(Message.obtain(handler, 0), 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendUpdate(int i2) {
        if (this.mSupportedSensors.contains(Integer.valueOf(i2))) {
            Iterator<SensorCollectorBase> it = this.mSensorFeeds.iterator();
            while (it.hasNext() && !it.next().sendUpdate(this.mSensorsInterceptor, i2)) {
            }
        }
    }

    public List<Integer> getSupportedSensors() {
        return new ArrayList(this.mSupportedSensors);
    }

    public void init(SensorCollectorBase... sensorCollectorBaseArr) {
        for (SensorCollectorBase sensorCollectorBase : sensorCollectorBaseArr) {
            this.mSensorFeeds.add(sensorCollectorBase);
        }
        for (SensorCollectorBase sensorCollectorBase2 : this.mSensorFeeds) {
            Set<Integer> setDiscoverSensors = sensorCollectorBase2.discoverSensors();
            setDiscoverSensors.removeAll(this.mSupportedSensors);
            sensorCollectorBase2.registerSensors(setDiscoverSensors, this.mHandler);
            this.mSupportedSensors.addAll(setDiscoverSensors);
        }
        Handler handler = this.mHandler;
        handler.sendMessage(Message.obtain(handler, 0));
    }

    public boolean isReady() {
        boolean z2;
        synchronized (this.mGalLock) {
            z2 = this.mGal != null;
        }
        return z2;
    }

    public void registerCompassListener(CompassListener compassListener) {
        this.mCompassListeners.add(compassListener);
    }

    public void registerLocationListener(LocationListener locationListener) {
        this.mLocationListeners.add(locationListener);
    }

    public void reportAvailable(int i2) {
        Handler handler = this.mHandler;
        handler.sendMessage(Message.obtain(handler, i2));
    }

    public void setGalIntegration(GalIntegration galIntegration) {
        synchronized (this.mGalLock) {
            this.mGal = galIntegration;
            if (galIntegration != null) {
                this.mSensorsInterceptor = new SensorsInterceptor(galIntegration.sensors);
            } else {
                this.mSensorsInterceptor = null;
            }
        }
    }

    public void shutdown() {
        this.mHandler.removeCallbacksAndMessages(null);
        Iterator<SensorCollectorBase> it = this.mSensorFeeds.iterator();
        while (it.hasNext()) {
            it.next().unregisterSensors();
        }
        synchronized (this.mGalLock) {
            this.mGal = null;
        }
        Iterator<SensorCollectorBase> it2 = this.mSensorFeeds.iterator();
        while (it2.hasNext()) {
            it2.next().shutdown();
        }
    }

    public void unregisterCompassListener(CompassListener compassListener) {
        this.mCompassListeners.remove(compassListener);
    }

    public void unregisterLocationListener(LocationListener locationListener) {
        this.mLocationListeners.remove(locationListener);
    }
}

package android.hardware;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.MessageQueue;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import dalvik.system.CloseGuard;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class SystemSensorManager extends SensorManager {
    private static boolean sSensorModuleInitialized = false;
    private final Looper mMainLooper;
    private final int mTargetSdkLevel;
    private static final Object sSensorModuleLock = new Object();
    private static final ArrayList<Sensor> sFullSensorsList = new ArrayList<>();
    private static final SparseArray<Sensor> sHandleToSensor = new SparseArray<>();
    private final HashMap<SensorEventListener, SensorEventQueue> mSensorListeners = new HashMap<>();
    private final HashMap<TriggerEventListener, TriggerEventQueue> mTriggerListeners = new HashMap<>();

    public static abstract class BaseEventQueue {
        private final CloseGuard mCloseGuard;
        public final SystemSensorManager mManager;
        private final float[] mScratch;
        private int nSensorEventQueue;
        private final SparseBooleanArray mActiveSensors = new SparseBooleanArray();
        public final SparseIntArray mSensorAccuracies = new SparseIntArray();
        public final SparseBooleanArray mFirstEvent = new SparseBooleanArray();

        public BaseEventQueue(Looper looper, SystemSensorManager systemSensorManager) {
            CloseGuard closeGuard = CloseGuard.get();
            this.mCloseGuard = closeGuard;
            float[] fArr = new float[16];
            this.mScratch = fArr;
            this.nSensorEventQueue = nativeInitBaseEventQueue(this, looper.getQueue(), fArr);
            closeGuard.open("dispose");
            this.mManager = systemSensorManager;
        }

        private int disableSensor(Sensor sensor) {
            int i2 = this.nSensorEventQueue;
            if (i2 == 0) {
                throw null;
            }
            Objects.requireNonNull(sensor);
            return nativeDisableSensor(i2, sensor.getHandle());
        }

        private int enableSensor(Sensor sensor, int i2, int i3, int i4) {
            int i5 = this.nSensorEventQueue;
            if (i5 == 0) {
                throw null;
            }
            Objects.requireNonNull(sensor);
            return nativeEnableSensor(i5, sensor.getHandle(), i2, i3, i4);
        }

        private static native void nativeDestroySensorEventQueue(int i2);

        private static native int nativeDisableSensor(int i2, int i3);

        private static native int nativeEnableSensor(int i2, int i3, int i4, int i5, int i6);

        private static native int nativeFlushSensor(int i2);

        private native int nativeInitBaseEventQueue(BaseEventQueue baseEventQueue, MessageQueue messageQueue, float[] fArr);

        public boolean addSensor(Sensor sensor, int i2, int i3, int i4) {
            int handle = sensor.getHandle();
            if (this.mActiveSensors.get(handle)) {
                return false;
            }
            this.mActiveSensors.put(handle, true);
            addSensorEvent(sensor);
            if (enableSensor(sensor, i2, i3, i4) == 0 || (i3 != 0 && (i3 <= 0 || enableSensor(sensor, i2, 0, 0) == 0))) {
                return true;
            }
            removeSensor(sensor, false);
            return false;
        }

        public abstract void addSensorEvent(Sensor sensor);

        public abstract void dispatchFlushCompleteEvent(int i2);

        public abstract void dispatchSensorEvent(int i2, float[] fArr, int i3, long j2);

        public void dispose() {
            dispose(false);
        }

        public void finalize() throws Throwable {
            try {
                dispose(true);
            } finally {
                super.finalize();
            }
        }

        public int flush() {
            int i2 = this.nSensorEventQueue;
            if (i2 != 0) {
                return nativeFlushSensor(i2);
            }
            throw null;
        }

        public boolean hasSensors() {
            return this.mActiveSensors.indexOfValue(true) >= 0;
        }

        public boolean removeAllSensors() {
            for (int i2 = 0; i2 < this.mActiveSensors.size(); i2++) {
                if (this.mActiveSensors.valueAt(i2)) {
                    int iKeyAt = this.mActiveSensors.keyAt(i2);
                    Sensor sensor = (Sensor) SystemSensorManager.sHandleToSensor.get(iKeyAt);
                    if (sensor != null) {
                        disableSensor(sensor);
                        this.mActiveSensors.put(iKeyAt, false);
                        removeSensorEvent(sensor);
                    }
                }
            }
            return true;
        }

        public boolean removeSensor(Sensor sensor, boolean z2) {
            if (!this.mActiveSensors.get(sensor.getHandle())) {
                return false;
            }
            if (z2) {
                disableSensor(sensor);
            }
            this.mActiveSensors.put(sensor.getHandle(), false);
            removeSensorEvent(sensor);
            return true;
        }

        public abstract void removeSensorEvent(Sensor sensor);

        private void dispose(boolean z2) {
            CloseGuard closeGuard = this.mCloseGuard;
            if (closeGuard != null) {
                if (z2) {
                    closeGuard.warnIfOpen();
                }
                this.mCloseGuard.close();
            }
            int i2 = this.nSensorEventQueue;
            if (i2 != 0) {
                nativeDestroySensorEventQueue(i2);
                this.nSensorEventQueue = 0;
            }
        }
    }

    public static final class SensorEventQueue extends BaseEventQueue {
        private final SensorEventListener mListener;
        private final SparseArray<SensorEvent> mSensorsEvents;

        public SensorEventQueue(SensorEventListener sensorEventListener, Looper looper, SystemSensorManager systemSensorManager) {
            super(looper, systemSensorManager);
            this.mSensorsEvents = new SparseArray<>();
            this.mListener = sensorEventListener;
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void addSensorEvent(Sensor sensor) {
            SensorEvent sensorEvent = new SensorEvent(Sensor.getMaxLengthValuesArray(sensor, this.mManager.mTargetSdkLevel));
            synchronized (this.mSensorsEvents) {
                this.mSensorsEvents.put(sensor.getHandle(), sensorEvent);
            }
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void dispatchFlushCompleteEvent(int i2) {
            if (this.mListener instanceof SensorEventListener2) {
                ((SensorEventListener2) this.mListener).onFlushCompleted((Sensor) SystemSensorManager.sHandleToSensor.get(i2));
            }
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void dispatchSensorEvent(int i2, float[] fArr, int i3, long j2) {
            SensorEvent sensorEvent;
            Sensor sensor = (Sensor) SystemSensorManager.sHandleToSensor.get(i2);
            synchronized (this.mSensorsEvents) {
                sensorEvent = this.mSensorsEvents.get(i2);
            }
            if (sensorEvent == null) {
                return;
            }
            float[] fArr2 = sensorEvent.values;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            sensorEvent.timestamp = j2;
            sensorEvent.accuracy = i3;
            sensorEvent.sensor = sensor;
            int type = sensor.getType();
            if (type == 2 || type == 3) {
                int i4 = this.mSensorAccuracies.get(i2);
                int i5 = sensorEvent.accuracy;
                if (i5 >= 0 && i4 != i5) {
                    this.mSensorAccuracies.put(i2, i5);
                    this.mListener.onAccuracyChanged(sensorEvent.sensor, sensorEvent.accuracy);
                }
            } else if (!this.mFirstEvent.get(i2)) {
                this.mFirstEvent.put(i2, true);
                this.mListener.onAccuracyChanged(sensorEvent.sensor, 3);
            }
            this.mListener.onSensorChanged(sensorEvent);
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void removeSensorEvent(Sensor sensor) {
            synchronized (this.mSensorsEvents) {
                this.mSensorsEvents.delete(sensor.getHandle());
            }
        }
    }

    public static final class TriggerEventQueue extends BaseEventQueue {
        private final TriggerEventListener mListener;
        private final SparseArray<TriggerEvent> mTriggerEvents;

        public TriggerEventQueue(TriggerEventListener triggerEventListener, Looper looper, SystemSensorManager systemSensorManager) {
            super(looper, systemSensorManager);
            this.mTriggerEvents = new SparseArray<>();
            this.mListener = triggerEventListener;
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void addSensorEvent(Sensor sensor) {
            TriggerEvent triggerEvent = new TriggerEvent(Sensor.getMaxLengthValuesArray(sensor, this.mManager.mTargetSdkLevel));
            synchronized (this.mTriggerEvents) {
                this.mTriggerEvents.put(sensor.getHandle(), triggerEvent);
            }
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void dispatchFlushCompleteEvent(int i2) {
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void dispatchSensorEvent(int i2, float[] fArr, int i3, long j2) {
            TriggerEvent triggerEvent;
            Sensor sensor = (Sensor) SystemSensorManager.sHandleToSensor.get(i2);
            synchronized (this.mTriggerEvents) {
                triggerEvent = this.mTriggerEvents.get(i2);
            }
            if (triggerEvent == null) {
                Log.e(SensorManager.TAG, "Error: Trigger Event is null for Sensor: " + sensor);
                return;
            }
            float[] fArr2 = triggerEvent.values;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            triggerEvent.timestamp = j2;
            triggerEvent.sensor = sensor;
            this.mManager.cancelTriggerSensorImpl(this.mListener, sensor, false);
            this.mListener.onTrigger(triggerEvent);
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void removeSensorEvent(Sensor sensor) {
            synchronized (this.mTriggerEvents) {
                this.mTriggerEvents.delete(sensor.getHandle());
            }
        }
    }

    public SystemSensorManager(Context context, Looper looper) {
        this.mMainLooper = looper;
        this.mTargetSdkLevel = context.getApplicationInfo().targetSdkVersion;
        synchronized (sSensorModuleLock) {
            if (!sSensorModuleInitialized) {
                sSensorModuleInitialized = true;
                nativeClassInit();
                ArrayList<Sensor> arrayList = sFullSensorsList;
                int iNativeGetNextSensor = 0;
                do {
                    Sensor sensor = new Sensor();
                    iNativeGetNextSensor = nativeGetNextSensor(sensor, iNativeGetNextSensor);
                    if (iNativeGetNextSensor >= 0) {
                        arrayList.add(sensor);
                        sHandleToSensor.append(sensor.getHandle(), sensor);
                    }
                } while (iNativeGetNextSensor > 0);
            }
        }
    }

    private static native void nativeClassInit();

    private static native int nativeGetNextSensor(Sensor sensor, int i2);

    @Override // android.hardware.SensorManager
    public boolean cancelTriggerSensorImpl(TriggerEventListener triggerEventListener, Sensor sensor, boolean z2) {
        if (sensor != null && Sensor.getReportingMode(sensor) != Sensor.REPORTING_MODE_ONE_SHOT) {
            return false;
        }
        synchronized (this.mTriggerListeners) {
            TriggerEventQueue triggerEventQueue = this.mTriggerListeners.get(triggerEventListener);
            if (triggerEventQueue == null) {
                return false;
            }
            boolean zRemoveAllSensors = sensor == null ? triggerEventQueue.removeAllSensors() : triggerEventQueue.removeSensor(sensor, z2);
            if (zRemoveAllSensors && !triggerEventQueue.hasSensors()) {
                this.mTriggerListeners.remove(triggerEventListener);
                triggerEventQueue.dispose();
            }
            return zRemoveAllSensors;
        }
    }

    @Override // android.hardware.SensorManager
    public boolean flushImpl(SensorEventListener sensorEventListener) {
        if (sensorEventListener == null) {
            throw new IllegalArgumentException("listener cannot be null");
        }
        synchronized (this.mSensorListeners) {
            SensorEventQueue sensorEventQueue = this.mSensorListeners.get(sensorEventListener);
            if (sensorEventQueue == null) {
                return false;
            }
            return sensorEventQueue.flush() == 0;
        }
    }

    @Override // android.hardware.SensorManager
    public List<Sensor> getFullSensorList() {
        return sFullSensorsList;
    }

    @Override // android.hardware.SensorManager
    public boolean registerListenerImpl(SensorEventListener sensorEventListener, Sensor sensor, int i2, Handler handler, int i3, int i4) {
        if (sensorEventListener == null || sensor == null) {
            Log.e(SensorManager.TAG, "sensor or listener is null");
            return false;
        }
        if (Sensor.getReportingMode(sensor) == Sensor.REPORTING_MODE_ONE_SHOT) {
            Log.e(SensorManager.TAG, "Trigger Sensors should use the requestTriggerSensor.");
            return false;
        }
        if (i3 < 0 || i2 < 0) {
            Log.e(SensorManager.TAG, "maxBatchReportLatencyUs and delayUs should be non-negative");
            return false;
        }
        synchronized (this.mSensorListeners) {
            SensorEventQueue sensorEventQueue = this.mSensorListeners.get(sensorEventListener);
            if (sensorEventQueue != null) {
                return sensorEventQueue.addSensor(sensor, i2, i3, i4);
            }
            SensorEventQueue sensorEventQueue2 = new SensorEventQueue(sensorEventListener, handler != null ? handler.getLooper() : this.mMainLooper, this);
            if (sensorEventQueue2.addSensor(sensor, i2, i3, i4)) {
                this.mSensorListeners.put(sensorEventListener, sensorEventQueue2);
                return true;
            }
            sensorEventQueue2.dispose();
            return false;
        }
    }

    @Override // android.hardware.SensorManager
    public boolean requestTriggerSensorImpl(TriggerEventListener triggerEventListener, Sensor sensor) {
        if (sensor == null) {
            throw new IllegalArgumentException("sensor cannot be null");
        }
        if (Sensor.getReportingMode(sensor) != Sensor.REPORTING_MODE_ONE_SHOT) {
            return false;
        }
        synchronized (this.mTriggerListeners) {
            TriggerEventQueue triggerEventQueue = this.mTriggerListeners.get(triggerEventListener);
            if (triggerEventQueue != null) {
                return triggerEventQueue.addSensor(sensor, 0, 0, 0);
            }
            TriggerEventQueue triggerEventQueue2 = new TriggerEventQueue(triggerEventListener, this.mMainLooper, this);
            if (triggerEventQueue2.addSensor(sensor, 0, 0, 0)) {
                this.mTriggerListeners.put(triggerEventListener, triggerEventQueue2);
                return true;
            }
            triggerEventQueue2.dispose();
            return false;
        }
    }

    @Override // android.hardware.SensorManager
    public void unregisterListenerImpl(SensorEventListener sensorEventListener, Sensor sensor) {
        if (sensor == null || Sensor.getReportingMode(sensor) != Sensor.REPORTING_MODE_ONE_SHOT) {
            synchronized (this.mSensorListeners) {
                SensorEventQueue sensorEventQueue = this.mSensorListeners.get(sensorEventListener);
                if (sensorEventQueue != null) {
                    if ((sensor == null ? sensorEventQueue.removeAllSensors() : sensorEventQueue.removeSensor(sensor, true)) && !sensorEventQueue.hasSensors()) {
                        this.mSensorListeners.remove(sensorEventListener);
                        sensorEventQueue.dispose();
                    }
                }
            }
        }
    }
}

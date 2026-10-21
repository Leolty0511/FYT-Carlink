package com.google.android.projection.sink.sensors;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import com.google.android.projection.sink.debug.DebugContext;
import com.google.android.projection.sink.debug.SimulatedLocationProvider;
import com.google.android.projection.sink.settings.Settings;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class SimulatedLocationSensors extends SensorCollectorBase {
    private static final int GPS_UPDATE_INTERVAL = 1000;
    private final DebugContext mDebugContext;
    private final boolean mEnabled;
    private Location mLocation;
    private final SimulatedLocationProvider mLocationProvider;
    private final boolean mSimulateMissingAccuracy;
    private final boolean mSimulateMissingBearing;
    private final boolean mSimulateMissingSpeed;
    private final Runnable mGpsStatusUpdate = new Runnable() { // from class: com.google.android.projection.sink.sensors.SimulatedLocationSensors.1
        @Override // java.lang.Runnable
        public void run() {
            SimulatedLocationSensors.this.reportAvailable(21);
            SimulatedLocationSensors.this.postDelayed(this, 1000L);
        }
    };
    private final LocationListener mLocationListener = new LocationListener() { // from class: com.google.android.projection.sink.sensors.SimulatedLocationSensors.2
        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            if (location != null) {
                if (SimulatedLocationSensors.this.mSimulateMissingAccuracy) {
                    location.removeAccuracy();
                }
                if (SimulatedLocationSensors.this.mSimulateMissingBearing) {
                    location.removeBearing();
                }
                if (SimulatedLocationSensors.this.mSimulateMissingSpeed) {
                    location.removeSpeed();
                }
                SimulatedLocationSensors.this.mLocation = location;
                SimulatedLocationSensors.this.reportAvailable(1);
            }
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i2, Bundle bundle) {
        }
    };

    public SimulatedLocationSensors(Context context, DebugContext debugContext) {
        this.mDebugContext = debugContext;
        if (context == null) {
            this.mLocationProvider = null;
            this.mEnabled = true;
            this.mSimulateMissingAccuracy = false;
            this.mSimulateMissingBearing = false;
            this.mSimulateMissingSpeed = false;
            return;
        }
        this.mLocationProvider = debugContext.getSimulatedLocationProvider();
        Settings settings = new Settings(context);
        this.mEnabled = settings.isGpsSimulationEnabled();
        this.mSimulateMissingAccuracy = settings.isSimulateMissingAccuracyEnabled();
        this.mSimulateMissingBearing = settings.isSimulateMissingBearingEnabled();
        this.mSimulateMissingSpeed = settings.isSimulateMissingSpeedEnabled();
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public void discoverSensorsImpl(Set<Integer> set) {
        if (this.mEnabled) {
            set.add(1);
            set.add(21);
            set.add(13);
        }
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public void registerSensorsImpl() {
        if (isHandled(21)) {
            post(this.mGpsStatusUpdate);
        }
        if (isHandled(1)) {
            this.mLocationProvider.requestUpdates(this.mLocationListener);
        }
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public boolean sendUpdateImpl(SensorSinkWrapper sensorSinkWrapper, int i2) {
        if (i2 == 21) {
            sensorSinkWrapper.reportGpsSatelliteData(6, true, 8, null, null, null, null, null);
            return true;
        }
        if (i2 == 1) {
            sensorSinkWrapper.reportLocation(this.mLocation);
            LocationSensors.reportKeyboardLockout(this.mDebugContext, sensorSinkWrapper, this.mLocation);
            return true;
        }
        if (i2 != 13) {
            throw new RuntimeException();
        }
        LocationSensors.reportKeyboardLockout(this.mDebugContext, sensorSinkWrapper, this.mLocation);
        return true;
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public void unregisterSensorsImpl() {
        SimulatedLocationProvider simulatedLocationProvider = this.mLocationProvider;
        if (simulatedLocationProvider != null) {
            simulatedLocationProvider.removeUpdates(this.mLocationListener);
        }
        removeCallbacks(this.mGpsStatusUpdate);
    }
}

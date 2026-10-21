package com.google.android.projection.sink.sensors;

import android.content.Context;
import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.google.android.projection.proto.Protos;
import com.google.android.projection.sink.debug.DebugContext;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class LocationSensors extends SensorCollectorBase {
    private final DebugContext mDebugContext;
    private GpsStatus mGpsStatus;
    private Location mLocation;
    private final LocationManager mLocationManager;
    private final GpsStatus.Listener mGpsStatusListener = new GpsStatus.Listener() { // from class: com.google.android.projection.sink.sensors.LocationSensors.1
        @Override // android.location.GpsStatus.Listener
        public void onGpsStatusChanged(int i2) {
            if (i2 == 4) {
                LocationSensors locationSensors = LocationSensors.this;
                locationSensors.mGpsStatus = locationSensors.mLocationManager.getGpsStatus(LocationSensors.this.mGpsStatus);
                LocationSensors.this.reportAvailable(21);
            }
        }
    };
    private final LocationListener mLocationListener = new LocationListener() { // from class: com.google.android.projection.sink.sensors.LocationSensors.2
        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            LocationSensors.this.mLocation = location;
            LocationSensors.this.reportAvailable(1);
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

    public LocationSensors(Context context, DebugContext debugContext) {
        this.mDebugContext = debugContext;
        this.mLocationManager = (LocationManager) context.getSystemService("location");
    }

    public static void reportKeyboardLockout(DebugContext debugContext, SensorSinkWrapper sensorSinkWrapper, Location location) {
        int keyboardLockoutMode = debugContext.getKeyboardLockoutMode();
        if (keyboardLockoutMode != 0) {
            if (keyboardLockoutMode == 1) {
                sensorSinkWrapper.reportDrivingStatusData(Protos.DrivingStatus.DRIVE_STATUS_NO_KEYBOARD_INPUT.getNumber());
                return;
            } else {
                if (keyboardLockoutMode != 2) {
                    return;
                }
                sensorSinkWrapper.reportDrivingStatusData(Protos.DrivingStatus.DRIVE_STATUS_UNRESTRICTED.getNumber());
                return;
            }
        }
        if (location == null || !location.hasSpeed() || (location.hasSpeed() && location.getSpeed() < 1.3d)) {
            sensorSinkWrapper.reportDrivingStatusData(Protos.DrivingStatus.DRIVE_STATUS_UNRESTRICTED.getNumber());
        } else {
            sensorSinkWrapper.reportDrivingStatusData(Protos.DrivingStatus.DRIVE_STATUS_NO_KEYBOARD_INPUT.getNumber());
        }
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public void discoverSensorsImpl(Set<Integer> set) {
        if (this.mLocationManager.isProviderEnabled("gps")) {
            set.add(1);
            set.add(21);
            set.add(13);
        }
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public void registerSensorsImpl() {
        if (isHandled(21)) {
            this.mLocationManager.addGpsStatusListener(this.mGpsStatusListener);
        }
        if (isHandled(1)) {
            this.mLocationManager.requestLocationUpdates("gps", 0L, 0.0f, this.mLocationListener);
        }
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public boolean sendUpdateImpl(SensorSinkWrapper sensorSinkWrapper, int i2) {
        if (i2 != 21) {
            if (i2 != 1) {
                if (i2 != 13) {
                    throw new RuntimeException();
                }
                reportKeyboardLockout(this.mDebugContext, sensorSinkWrapper, this.mLocation);
                return true;
            }
            Location location = this.mLocation;
            if (location == null) {
                return false;
            }
            sensorSinkWrapper.reportLocation(location);
            reportKeyboardLockout(this.mDebugContext, sensorSinkWrapper, this.mLocation);
            return true;
        }
        GpsStatus gpsStatus = this.mGpsStatus;
        if (gpsStatus == null) {
            return false;
        }
        Iterator<GpsSatellite> it = gpsStatus.getSatellites().iterator();
        int i3 = 0;
        int i4 = 0;
        while (it.hasNext()) {
            i4++;
            if (it.next().usedInFix()) {
                i3++;
            }
        }
        int[] iArr = new int[i4];
        float[] fArr = new float[i4];
        boolean[] zArr = new boolean[i4];
        float[] fArr2 = new float[i4];
        float[] fArr3 = new float[i4];
        for (GpsSatellite gpsSatellite : this.mGpsStatus.getSatellites()) {
            iArr[0] = gpsSatellite.getPrn();
            fArr[0] = gpsSatellite.getSnr();
            zArr[0] = gpsSatellite.usedInFix();
            fArr2[0] = gpsSatellite.getAzimuth();
            fArr3[0] = gpsSatellite.getElevation();
        }
        sensorSinkWrapper.reportGpsSatelliteData(i3, true, i4, iArr, fArr, zArr, fArr2, fArr3);
        return true;
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public void unregisterSensorsImpl() {
        this.mLocationManager.removeUpdates(this.mLocationListener);
        this.mLocationManager.removeGpsStatusListener(this.mGpsStatusListener);
    }
}

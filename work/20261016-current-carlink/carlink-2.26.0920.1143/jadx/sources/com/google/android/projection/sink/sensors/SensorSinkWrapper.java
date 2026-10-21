package com.google.android.projection.sink.sensors;

import android.app.m;
import android.location.Location;
import android.util.Log;
import com.google.android.projection.protocol.SensorSource;

/* JADX INFO: loaded from: classes3.dex */
public class SensorSinkWrapper {
    private final SensorSource mSensors;

    public SensorSinkWrapper(SensorSource sensorSource) {
        this.mSensors = sensorSource;
    }

    public void reportAccelerometerData(boolean z2, float f2, boolean z3, float f3, boolean z4, float f4) {
        this.mSensors.reportAccelerometerData(z2, f2, z3, f3, z4, f4);
    }

    public void reportCompassData(int i2, boolean z2, int i3, boolean z3, int i4) {
        this.mSensors.reportCompassData(i2, z2, i3, z3, i4);
    }

    public void reportDiagnosticsData(byte[] bArr) {
        this.mSensors.reportDiagnosticsData(bArr);
    }

    public void reportDrivingStatusData(int i2) {
        m.p("===========>> reportDrivingStatusData :", i2, "Auto");
        this.mSensors.reportDrivingStatusData(i2);
    }

    public void reportEnvironmentData(float f2, float f3) {
        this.mSensors.reportEnvironmentData(true, f2, true, f3, false, 0);
    }

    public void reportFuelData(int i2, int i3, boolean z2) {
        this.mSensors.reportFuelData(true, i2, true, i3, true, z2);
    }

    public void reportGearData(int i2) {
        m.p("===========>> reportGearData :", i2, "Auto");
        this.mSensors.reportGearData(i2);
    }

    public void reportGpsSatelliteData(int i2, boolean z2, int i3, int[] iArr, float[] fArr, boolean[] zArr, float[] fArr2, float[] fArr3) {
        this.mSensors.reportGpsSatelliteData(i2, z2, i3, iArr, fArr, zArr, fArr2, fArr3);
    }

    public void reportGyroscopeData(boolean z2, float f2, boolean z3, float f3, boolean z4, float f4) {
        this.mSensors.reportGyroscopeData(z2, f2, z3, f3, z4, f4);
    }

    public void reportHvacData(float f2, float f3) {
        this.mSensors.reportHvacData(true, f2, true, f3);
    }

    public void reportLocation(Location location) {
        this.mSensors.reportLocation(location);
    }

    public void reportNightModeData(boolean z2) {
        this.mSensors.reportNightModeData(z2);
    }

    public void reportOdometerData(double d2) {
        Log.e("Auto", "===========>> reportOdometerData :" + d2);
        this.mSensors.reportOdometerData(d2, false, 0.0d);
    }

    public void reportParkingBrakeData(boolean z2) {
        Log.e("Auto", "===========>> reportParkingBrakeData :" + z2);
        this.mSensors.reportParkingBrakeData(z2);
    }

    public void reportRpmData(double d2) {
        Log.e("Auto", "===========>> reportRpmData :" + d2);
        this.mSensors.reportRpmData(d2);
    }

    public void reportSpeedData(float f2) {
        Log.e("Auto", "===========>> reportSpeedData :" + f2);
        this.mSensors.reportSpeedData(f2, false, false, false, 0);
    }
}

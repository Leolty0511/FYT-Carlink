package android.hardware.location;

import android.location.Location;

/* JADX INFO: loaded from: classes.dex */
public abstract class GeofenceHardwareMonitorCallback {
    @Deprecated
    public void onMonitoringSystemChange(int i2, boolean z2, Location location) {
    }

    public void onMonitoringSystemChange(GeofenceHardwareMonitorEvent geofenceHardwareMonitorEvent) {
    }
}

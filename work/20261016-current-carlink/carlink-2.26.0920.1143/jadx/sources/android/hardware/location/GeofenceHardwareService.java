package android.hardware.location;

import android.Manifest;
import android.accessibilityservice.c;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.location.IFusedGeofenceHardware;
import android.location.IGpsGeofenceHardware;
import android.os.Binder;
import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public class GeofenceHardwareService extends Service {
    private IBinder mBinder = new IGeofenceHardware.Stub() { // from class: android.hardware.location.GeofenceHardwareService.1
        @Override // android.hardware.location.IGeofenceHardware
        public boolean addCircularFence(int i2, GeofenceHardwareRequestParcelable geofenceHardwareRequestParcelable, IGeofenceHardwareCallback iGeofenceHardwareCallback) {
            GeofenceHardwareService.this.mContext.enforceCallingPermission(Manifest.permission.LOCATION_HARDWARE, "Location Hardware permission not granted to access hardware geofence");
            GeofenceHardwareService.this.checkPermission(Binder.getCallingPid(), Binder.getCallingUid(), i2);
            return GeofenceHardwareService.this.mGeofenceHardwareImpl.addCircularFence(i2, geofenceHardwareRequestParcelable, iGeofenceHardwareCallback);
        }

        @Override // android.hardware.location.IGeofenceHardware
        public int[] getMonitoringTypes() {
            GeofenceHardwareService.this.mContext.enforceCallingPermission(Manifest.permission.LOCATION_HARDWARE, "Location Hardware permission not granted to access hardware geofence");
            return GeofenceHardwareService.this.mGeofenceHardwareImpl.getMonitoringTypes();
        }

        @Override // android.hardware.location.IGeofenceHardware
        public int getStatusOfMonitoringType(int i2) {
            GeofenceHardwareService.this.mContext.enforceCallingPermission(Manifest.permission.LOCATION_HARDWARE, "Location Hardware permission not granted to access hardware geofence");
            return GeofenceHardwareService.this.mGeofenceHardwareImpl.getStatusOfMonitoringType(i2);
        }

        @Override // android.hardware.location.IGeofenceHardware
        public boolean pauseGeofence(int i2, int i3) {
            GeofenceHardwareService.this.mContext.enforceCallingPermission(Manifest.permission.LOCATION_HARDWARE, "Location Hardware permission not granted to access hardware geofence");
            GeofenceHardwareService.this.checkPermission(Binder.getCallingPid(), Binder.getCallingUid(), i3);
            return GeofenceHardwareService.this.mGeofenceHardwareImpl.pauseGeofence(i2, i3);
        }

        @Override // android.hardware.location.IGeofenceHardware
        public boolean registerForMonitorStateChangeCallback(int i2, IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback) {
            GeofenceHardwareService.this.mContext.enforceCallingPermission(Manifest.permission.LOCATION_HARDWARE, "Location Hardware permission not granted to access hardware geofence");
            GeofenceHardwareService.this.checkPermission(Binder.getCallingPid(), Binder.getCallingUid(), i2);
            return GeofenceHardwareService.this.mGeofenceHardwareImpl.registerForMonitorStateChangeCallback(i2, iGeofenceHardwareMonitorCallback);
        }

        @Override // android.hardware.location.IGeofenceHardware
        public boolean removeGeofence(int i2, int i3) {
            GeofenceHardwareService.this.mContext.enforceCallingPermission(Manifest.permission.LOCATION_HARDWARE, "Location Hardware permission not granted to access hardware geofence");
            GeofenceHardwareService.this.checkPermission(Binder.getCallingPid(), Binder.getCallingUid(), i3);
            return GeofenceHardwareService.this.mGeofenceHardwareImpl.removeGeofence(i2, i3);
        }

        @Override // android.hardware.location.IGeofenceHardware
        public boolean resumeGeofence(int i2, int i3, int i4) {
            GeofenceHardwareService.this.mContext.enforceCallingPermission(Manifest.permission.LOCATION_HARDWARE, "Location Hardware permission not granted to access hardware geofence");
            GeofenceHardwareService.this.checkPermission(Binder.getCallingPid(), Binder.getCallingUid(), i3);
            return GeofenceHardwareService.this.mGeofenceHardwareImpl.resumeGeofence(i2, i3, i4);
        }

        @Override // android.hardware.location.IGeofenceHardware
        public void setFusedGeofenceHardware(IFusedGeofenceHardware iFusedGeofenceHardware) {
            GeofenceHardwareService.this.mGeofenceHardwareImpl.setFusedGeofenceHardware(iFusedGeofenceHardware);
        }

        @Override // android.hardware.location.IGeofenceHardware
        public void setGpsGeofenceHardware(IGpsGeofenceHardware iGpsGeofenceHardware) {
            GeofenceHardwareService.this.mGeofenceHardwareImpl.setGpsHardwareGeofence(iGpsGeofenceHardware);
        }

        @Override // android.hardware.location.IGeofenceHardware
        public boolean unregisterForMonitorStateChangeCallback(int i2, IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback) {
            GeofenceHardwareService.this.mContext.enforceCallingPermission(Manifest.permission.LOCATION_HARDWARE, "Location Hardware permission not granted to access hardware geofence");
            GeofenceHardwareService.this.checkPermission(Binder.getCallingPid(), Binder.getCallingUid(), i2);
            return GeofenceHardwareService.this.mGeofenceHardwareImpl.unregisterForMonitorStateChangeCallback(i2, iGeofenceHardwareMonitorCallback);
        }
    };
    private Context mContext;
    private GeofenceHardwareImpl mGeofenceHardwareImpl;

    /* JADX INFO: Access modifiers changed from: private */
    public void checkPermission(int i2, int i3, int i4) {
        if (this.mGeofenceHardwareImpl.getAllowedResolutionLevel(i2, i3) < this.mGeofenceHardwareImpl.getMonitoringResolutionLevel(i4)) {
            throw new SecurityException(c.d("Insufficient permissions to access hardware geofence for type: ", i4));
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.mContext = this;
        this.mGeofenceHardwareImpl = GeofenceHardwareImpl.getInstance(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.mGeofenceHardwareImpl = null;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return false;
    }
}

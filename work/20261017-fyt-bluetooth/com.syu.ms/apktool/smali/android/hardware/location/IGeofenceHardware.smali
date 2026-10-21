.class public interface abstract Landroid/hardware/location/IGeofenceHardware;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IGeofenceHardware$Stub;
    }
.end annotation


# virtual methods
.method public abstract addCircularFence(IIDDDIIIILandroid/hardware/location/IGeofenceHardwareCallback;)Z
.end method

.method public abstract getMonitoringTypes()[I
.end method

.method public abstract getStatusOfMonitoringType(I)I
.end method

.method public abstract pauseGeofence(II)Z
.end method

.method public abstract registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
.end method

.method public abstract removeGeofence(II)Z
.end method

.method public abstract resumeGeofence(III)Z
.end method

.method public abstract setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V
.end method

.method public abstract setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V
.end method

.method public abstract unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
.end method

.class public interface abstract Landroid/location/IFusedGeofenceHardware;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IFusedGeofenceHardware$Stub;
    }
.end annotation


# virtual methods
.method public abstract addGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
.end method

.method public abstract isSupported()Z
.end method

.method public abstract modifyGeofenceOptions(IIIIII)V
.end method

.method public abstract pauseMonitoringGeofence(I)V
.end method

.method public abstract removeGeofences([I)V
.end method

.method public abstract resumeMonitoringGeofence(II)V
.end method

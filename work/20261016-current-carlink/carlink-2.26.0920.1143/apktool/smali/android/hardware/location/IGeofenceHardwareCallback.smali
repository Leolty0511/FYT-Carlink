.class public interface abstract Landroid/hardware/location/IGeofenceHardwareCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IGeofenceHardwareCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGeofenceAdd(II)V
.end method

.method public abstract onGeofencePause(II)V
.end method

.method public abstract onGeofenceRemove(II)V
.end method

.method public abstract onGeofenceResume(II)V
.end method

.method public abstract onGeofenceTransition(IILandroid/location/Location;JI)V
.end method

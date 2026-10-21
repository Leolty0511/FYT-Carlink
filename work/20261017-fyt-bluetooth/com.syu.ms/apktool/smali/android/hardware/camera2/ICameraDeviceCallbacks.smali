.class public interface abstract Landroid/hardware/camera2/ICameraDeviceCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCameraError(I)V
.end method

.method public abstract onCameraIdle()V
.end method

.method public abstract onCaptureStarted(IJ)V
.end method

.method public abstract onResultReceived(ILandroid/hardware/camera2/impl/CameraMetadataNative;)V
.end method

.class public interface abstract Landroid/hardware/camera2/ICameraDeviceUser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceUser$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelRequest(I)I
.end method

.method public abstract createDefaultRequest(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I
.end method

.method public abstract createStream(IIILandroid/view/Surface;)I
.end method

.method public abstract deleteStream(I)I
.end method

.method public abstract disconnect()V
.end method

.method public abstract flush()I
.end method

.method public abstract getCameraInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;)I
.end method

.method public abstract submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)I
.end method

.method public abstract waitUntilIdle()I
.end method

.class public interface abstract Landroid/hardware/ICameraService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addListener(Landroid/hardware/ICameraServiceListener;)I
.end method

.method public abstract connect(Landroid/hardware/ICameraClient;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I
.end method

.method public abstract connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I
.end method

.method public abstract connectPro(Landroid/hardware/IProCameraCallbacks;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I
.end method

.method public abstract getCameraCharacteristics(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I
.end method

.method public abstract getCameraInfo(ILandroid/hardware/CameraInfo;)I
.end method

.method public abstract getNumberOfCameras()I
.end method

.method public abstract removeListener(Landroid/hardware/ICameraServiceListener;)I
.end method

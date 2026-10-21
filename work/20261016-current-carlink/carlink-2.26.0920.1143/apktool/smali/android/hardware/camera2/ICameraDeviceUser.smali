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


# static fields
.field public static final CONSTRAINED_HIGH_SPEED_MODE:I = 0x1

.field public static final NORMAL_MODE:I = 0x0

.field public static final NO_IN_FLIGHT_REPEATING_FRAMES:I = -0x1

.field public static final TEMPLATE_MANUAL:I = 0x6

.field public static final TEMPLATE_PREVIEW:I = 0x1

.field public static final TEMPLATE_RECORD:I = 0x3

.field public static final TEMPLATE_STILL_CAPTURE:I = 0x2

.field public static final TEMPLATE_VIDEO_SNAPSHOT:I = 0x4

.field public static final TEMPLATE_ZERO_SHUTTER_LAG:I = 0x5

.field public static final VENDOR_MODE_START:I = 0x8000


# virtual methods
.method public abstract beginConfigure()V
.end method

.method public abstract cancelRequest(I)J
.end method

.method public abstract createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;
.end method

.method public abstract createInputStream(III)I
.end method

.method public abstract createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I
.end method

.method public abstract deleteStream(I)V
.end method

.method public abstract disconnect()V
.end method

.method public abstract endConfigure(I)V
.end method

.method public abstract finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V
.end method

.method public abstract flush()J
.end method

.method public abstract getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;
.end method

.method public abstract getInputSurface()Landroid/view/Surface;
.end method

.method public abstract prepare(I)V
.end method

.method public abstract prepare2(II)V
.end method

.method public abstract submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
.end method

.method public abstract submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
.end method

.method public abstract tearDown(I)V
.end method

.method public abstract waitUntilIdle()V
.end method

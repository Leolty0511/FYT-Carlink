.class public Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CallbackProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceCaptureCallbackProxy"
.end annotation


# instance fields
.field private final mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/dispatch/MethodNameInvoker<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/dispatch/Dispatchable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/dispatch/Dispatchable<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "dispatchTarget must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/hardware/camera2/dispatch/Dispatchable;

    .line 11
    .line 12
    new-instance v0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    .line 13
    .line 14
    const-class v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const-string/jumbo p1, "onCaptureBufferLost"

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const-string/jumbo p1, "onCaptureCompleted"

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const-string/jumbo p1, "onCaptureFailed"

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCapturePartial(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const-string/jumbo p1, "onCapturePartial"

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const-string/jumbo p1, "onCaptureProgressed"

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string/jumbo p1, "onCaptureSequenceAborted"

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraDevice;IJ)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const-string/jumbo p1, "onCaptureSequenceCompleted"

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const-string/jumbo p1, "onCaptureStarted"

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.class Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

.field final synthetic val$failure:Landroid/hardware/camera2/CaptureFailure;

.field final synthetic val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

.field final synthetic val$request:Landroid/hardware/camera2/CaptureRequest;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$6;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$6;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$6;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$6;->val$failure:Landroid/hardware/camera2/CaptureFailure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$6;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$200(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$6;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$6;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    .line 18
    .line 19
    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 20
    .line 21
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$6;->val$request:Landroid/hardware/camera2/CaptureRequest;

    .line 22
    .line 23
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$6;->val$failure:Landroid/hardware/camera2/CaptureFailure;

    .line 24
    .line 25
    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

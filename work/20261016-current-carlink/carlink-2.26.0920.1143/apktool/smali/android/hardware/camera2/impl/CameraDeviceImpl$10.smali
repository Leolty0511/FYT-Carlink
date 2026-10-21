.class Landroid/hardware/camera2/impl/CameraDeviceImpl$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field final synthetic val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

.field final synthetic val$requestId:I

.field final synthetic val$requestLastFrameNumbers:Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iput p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->val$requestId:I

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->val$requestLastFrameNumbers:Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$200(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 16
    .line 17
    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->val$requestId:I

    .line 18
    .line 19
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->val$requestLastFrameNumbers:Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getLastFrameNumber()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraDevice;IJ)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

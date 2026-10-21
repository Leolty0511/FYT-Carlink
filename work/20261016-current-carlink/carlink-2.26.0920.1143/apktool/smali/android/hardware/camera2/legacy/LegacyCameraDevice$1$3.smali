.class Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->onCaptureStarted(Landroid/hardware/camera2/legacy/RequestHolder;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

.field final synthetic val$extras:Landroid/hardware/camera2/impl/CaptureResultExtras;

.field final synthetic val$holder:Landroid/hardware/camera2/legacy/RequestHolder;

.field final synthetic val$timestamp:J


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$3;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    iput-object p2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$3;->val$holder:Landroid/hardware/camera2/legacy/RequestHolder;

    iput-object p3, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$3;->val$extras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    iput-wide p4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$3;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$3;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$200(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$3;->val$extras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 10
    .line 11
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$3;->val$timestamp:J

    .line 12
    .line 13
    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v2, "Received remote exception during onCameraError callback: "

    .line 21
    .line 22
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v1
.end method

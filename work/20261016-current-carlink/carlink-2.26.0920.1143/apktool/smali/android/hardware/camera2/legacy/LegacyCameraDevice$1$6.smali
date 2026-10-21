.class Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->onRepeatingRequestError(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

.field final synthetic val$lastFrameNumber:J

.field final synthetic val$repeatingRequestId:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;JI)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$6;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    iput-wide p2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$6;->val$lastFrameNumber:J

    iput p4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$6;->val$repeatingRequestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$6;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

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
    iget-wide v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$6;->val$lastFrameNumber:J

    .line 10
    .line 11
    iget v3, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$6;->val$repeatingRequestId:I

    .line 12
    .line 13
    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onRepeatingRequestError(JI)V
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
    const-string v2, "Received remote exception during onRepeatingRequestError callback: "

    .line 21
    .line 22
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v1
.end method

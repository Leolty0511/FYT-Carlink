.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;
.super Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mActive:Z

.field private mBusy:Z

.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

.field final synthetic val$interfaceLock:Ljava/lang/Object;

.field final synthetic val$session:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 2
    .line 3
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    .line 4
    .line 5
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$interfaceLock:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    .line 12
    .line 13
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$500(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskStarted()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    .line 12
    .line 13
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$600(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onActive(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onBusy(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$400(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Got device error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraCaptureSession"

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onIdle(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$interfaceLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$700(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    iget-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$800(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$interfaceLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter p1

    .line 30
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$702(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Z)Z

    .line 33
    .line 34
    .line 35
    monitor-exit p1

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw v0

    .line 40
    :cond_0
    :goto_0
    iget-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 45
    .line 46
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$500(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    .line 51
    .line 52
    .line 53
    :cond_1
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    .line 56
    .line 57
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 58
    .line 59
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$600(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catchall_1
    move-exception v0

    .line 70
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    throw v0
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Camera must already be open before creating a session"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public onRequestQueueEmpty()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$600(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public onSurfacePrepared(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$600(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    return-void
.end method

.method public onUnconfigured(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    return-void
.end method

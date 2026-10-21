.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AbortDrainListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V

    return-void
.end method


# virtual methods
.method public onDrained()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$1000(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 11
    .line 12
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$900(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 21
    .line 22
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$500(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->beginDrain()V

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1
.end method

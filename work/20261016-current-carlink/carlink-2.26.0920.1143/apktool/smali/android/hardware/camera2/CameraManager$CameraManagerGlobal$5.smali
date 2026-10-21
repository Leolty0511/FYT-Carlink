.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->access$100(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 17
    .line 18
    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->access$200(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_0
    :goto_0
    return-void
.end method

.class Lcom/lsec/core/frame/camera4/MyCamera4$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "MyCamera4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/camera4/MyCamera4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/frame/camera4/MyCamera4;


# direct methods
.method constructor <init>(Lcom/lsec/core/frame/camera4/MyCamera4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lsec/core/frame/camera4/MyCamera4$1;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    .line 84
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 99
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera4  onDisconnected(CameraDevice cameraDevice)  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lsec/core/frame/camera4/MyCamera4$1;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    invoke-static {v2}, Lcom/lsec/core/frame/camera4/MyCamera4;->access$0(Lcom/lsec/core/frame/camera4/MyCamera4;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4$1;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    invoke-static {v0}, Lcom/lsec/core/frame/camera4/MyCamera4;->access$1(Lcom/lsec/core/frame/camera4/MyCamera4;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 102
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 103
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4$1;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lsec/core/frame/camera4/MyCamera4;->access$2(Lcom/lsec/core/frame/camera4/MyCamera4;Landroid/hardware/camera2/CameraDevice;)V

    .line 104
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .prologue
    .line 108
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera4  onError(CameraDevice cameraDevice, error)  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lsec/core/frame/camera4/MyCamera4$1;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    invoke-static {v2}, Lcom/lsec/core/frame/camera4/MyCamera4;->access$0(Lcom/lsec/core/frame/camera4/MyCamera4;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4$1;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    invoke-static {v0}, Lcom/lsec/core/frame/camera4/MyCamera4;->access$1(Lcom/lsec/core/frame/camera4/MyCamera4;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 112
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 113
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4$1;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lsec/core/frame/camera4/MyCamera4;->access$2(Lcom/lsec/core/frame/camera4/MyCamera4;Landroid/hardware/camera2/CameraDevice;)V

    .line 114
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 88
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera4  onOpened(CameraDevice cameraDevice)  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lsec/core/frame/camera4/MyCamera4$1;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    invoke-static {v2}, Lcom/lsec/core/frame/camera4/MyCamera4;->access$0(Lcom/lsec/core/frame/camera4/MyCamera4;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4$1;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    invoke-static {v0}, Lcom/lsec/core/frame/camera4/MyCamera4;->access$1(Lcom/lsec/core/frame/camera4/MyCamera4;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 90
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4$1;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    invoke-static {v0, p1}, Lcom/lsec/core/frame/camera4/MyCamera4;->access$2(Lcom/lsec/core/frame/camera4/MyCamera4;Landroid/hardware/camera2/CameraDevice;)V

    .line 91
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4$1;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    invoke-virtual {v0}, Lcom/lsec/core/frame/camera4/MyCamera4;->configure()V

    .line 93
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4$1;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    iget-object v0, v0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCamera4Interface:Lcom/lsec/core/frame/camera4/MyCamera4Interface;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4$1;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    iget-object v0, v0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCamera4Interface:Lcom/lsec/core/frame/camera4/MyCamera4Interface;

    invoke-interface {v0}, Lcom/lsec/core/frame/camera4/MyCamera4Interface;->onOpened4()V

    .line 95
    :cond_0
    return-void
.end method

.class Lcom/lsec/core/frame/camera4/MyCamera4$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
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
    iput-object p1, p0, Lcom/lsec/core/frame/camera4/MyCamera4$2;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    .line 117
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 146
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 7
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 121
    :try_start_0
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4$2;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    invoke-static {v3}, Lcom/lsec/core/frame/camera4/MyCamera4;->access$3(Lcom/lsec/core/frame/camera4/MyCamera4;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v3

    if-nez v3, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4$2;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    invoke-static {v3, p1}, Lcom/lsec/core/frame/camera4/MyCamera4;->access$4(Lcom/lsec/core/frame/camera4/MyCamera4;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 125
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4$2;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    invoke-static {v3}, Lcom/lsec/core/frame/camera4/MyCamera4;->access$5(Lcom/lsec/core/frame/camera4/MyCamera4;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4$2;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/camera4/MyCamera4;->getRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 128
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4$2;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    iget-object v3, v3, Lcom/lsec/core/frame/camera4/MyCamera4;->mTargetSurfaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 135
    const-string v3, "HJT"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mTargetSurfaces:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lsec/core/frame/camera4/MyCamera4$2;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    iget-object v5, v5, Lcom/lsec/core/frame/camera4/MyCamera4;->mTargetSurfaces:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4$2;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    invoke-static {v3}, Lcom/lsec/core/frame/camera4/MyCamera4;->access$5(Lcom/lsec/core/frame/camera4/MyCamera4;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lsec/core/frame/camera4/MyCamera4$2;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    invoke-static {v6}, Lcom/lsec/core/frame/camera4/MyCamera4;->access$6(Lcom/lsec/core/frame/camera4/MyCamera4;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HJT"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "e:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 129
    .local v2, "targetSurface":Landroid/view/Surface;
    if-eqz v2, :cond_0

    .line 132
    const-string v4, "HJT"

    const-string v5, "!=null:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

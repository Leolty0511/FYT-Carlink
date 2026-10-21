.class public Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;
.super Ljava/lang/Object;
.source "Runnable_setPreviewSurfTexture3.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public bRunning:Z

.field surface:Landroid/view/Surface;

.field surfaceTexture:Landroid/graphics/SurfaceTexture;

.field texture:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;->bRunning:Z

    .line 17
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 18
    return-void
.end method

.method constructor <init>(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;->bRunning:Z

    .line 25
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;->surface:Landroid/view/Surface;

    .line 26
    return-void
.end method

.method constructor <init>(Landroid/view/TextureView;)V
    .locals 1
    .param p1, "texture"    # Landroid/view/TextureView;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;->bRunning:Z

    .line 21
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;->texture:Landroid/view/TextureView;

    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 33
    const-string v0, "camera2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Runnable_setPreviewSurfTexture3  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getDoubleCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lsec/core/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/lsec/core/frame/camera3/MyCamera3;->getInstance()Lcom/lsec/core/frame/camera3/MyCamera3;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lsec/core/frame/camera3/MyCamera3;->bShutDown:Z

    if-eqz v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;->texture:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 38
    invoke-static {}, Lcom/lsec/core/frame/camera3/MyCamera3;->getInstance()Lcom/lsec/core/frame/camera3/MyCamera3;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getDoubleCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;->texture:Landroid/view/TextureView;

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/camera3/MyCamera3;->start(Ljava/lang/String;Landroid/view/TextureView;)V

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 40
    invoke-static {}, Lcom/lsec/core/frame/camera3/MyCamera3;->getInstance()Lcom/lsec/core/frame/camera3/MyCamera3;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getDoubleCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/camera3/MyCamera3;->start(Ljava/lang/String;Landroid/view/Surface;)V

    goto :goto_0

    .line 42
    :cond_2
    invoke-static {}, Lcom/lsec/core/frame/camera3/MyCamera3;->getInstance()Lcom/lsec/core/frame/camera3/MyCamera3;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getDoubleCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/camera3/MyCamera3;->start(Ljava/lang/String;Landroid/graphics/SurfaceTexture;)V

    goto :goto_0
.end method

.method public stopRun()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;->bRunning:Z

    .line 29
    return-void
.end method

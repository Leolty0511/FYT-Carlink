.class public Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;
.super Ljava/lang/Object;
.source "Runnable_setPreviewSurfTexture5.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public bRunning:Z

.field surface:Landroid/graphics/SurfaceTexture;

.field texture:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;->bRunning:Z

    .line 15
    iput-object p1, p0, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;->surface:Landroid/graphics/SurfaceTexture;

    .line 16
    return-void
.end method

.method constructor <init>(Landroid/view/TextureView;)V
    .locals 1
    .param p1, "texture"    # Landroid/view/TextureView;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;->bRunning:Z

    .line 19
    iput-object p1, p0, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;->texture:Landroid/view/TextureView;

    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 28
    const-string v0, "camera2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Runnable_setPreviewSurfTexture5  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getCamera5Id()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lsec/core/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/lsec/core/frame/camera5/MyCamera5;->getInstance()Lcom/lsec/core/frame/camera5/MyCamera5;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lsec/core/frame/camera5/MyCamera5;->bShutDown:Z

    if-eqz v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;->texture:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 33
    invoke-static {}, Lcom/lsec/core/frame/camera5/MyCamera5;->getInstance()Lcom/lsec/core/frame/camera5/MyCamera5;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getCamera5Id()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;->texture:Landroid/view/TextureView;

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/camera5/MyCamera5;->start(Ljava/lang/String;Landroid/view/TextureView;)V

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lcom/lsec/core/frame/camera5/MyCamera5;->getInstance()Lcom/lsec/core/frame/camera5/MyCamera5;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getCamera5Id()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;->surface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/camera5/MyCamera5;->start(Ljava/lang/String;Landroid/graphics/SurfaceTexture;)V

    goto :goto_0
.end method

.method public stopRun()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;->bRunning:Z

    .line 24
    return-void
.end method

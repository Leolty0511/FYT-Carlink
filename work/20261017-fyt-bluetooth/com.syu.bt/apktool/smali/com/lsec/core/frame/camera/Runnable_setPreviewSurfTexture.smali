.class public Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;
.super Ljava/lang/Object;
.source "Runnable_setPreviewSurfTexture.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public bRunning:Z

.field surface:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;->bRunning:Z

    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const v1, 0x8d65

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;->surface:Landroid/graphics/SurfaceTexture;

    .line 22
    :goto_0
    return-void

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;->surface:Landroid/graphics/SurfaceTexture;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 32
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->getInstance()Lcom/lsec/core/frame/camera/MyCamera;

    move-result-object v6

    iget-boolean v6, v6, Lcom/lsec/core/frame/camera/MyCamera;->bShutDown:Z

    if-eqz v6, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->getInstance()Lcom/lsec/core/frame/camera/MyCamera;

    move-result-object v6

    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getCameraId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/camera/MyCamera;->open(I)V

    .line 36
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->getInstance()Lcom/lsec/core/frame/camera/MyCamera;

    move-result-object v6

    iget-object v6, v6, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v6, :cond_2

    .line 37
    iget-boolean v5, p0, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;->bRunning:Z

    if-eqz v5, :cond_0

    .line 38
    const-wide/16 v6, 0x3e8

    invoke-static {v1, p0, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto :goto_0

    .line 40
    :cond_2
    sget v6, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    if-eqz v6, :cond_9

    .line 41
    .local v1, "bNeedSetDisplayOrientation":Z
    :goto_1
    if-nez v1, :cond_5

    .line 42
    const-string v6, "sys.fyt.platform"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, "plat":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 44
    const-string v6, "ro.fyt.platform"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    :cond_3
    const-string v6, "6315"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "6316"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 47
    :cond_4
    const/4 v1, 0x1

    .line 50
    .end local v4    # "plat":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_6

    .line 51
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->getInstance()Lcom/lsec/core/frame/camera/MyCamera;

    move-result-object v6

    iget-object v6, v6, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;

    sget v7, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 54
    :cond_6
    :try_start_0
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->getInstance()Lcom/lsec/core/frame/camera/MyCamera;

    move-result-object v6

    iget-object v6, v6, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;->surface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_2
    const/4 v0, 0x0

    .line 74
    .local v0, "bInitCamera":Z
    const/4 v2, 0x0

    .line 75
    .local v2, "bStartPreview":Z
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->getInstance()Lcom/lsec/core/frame/camera/MyCamera;

    move-result-object v6

    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getCameraId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/camera/MyCamera;->initCamera(I)Z

    move-result v0

    .line 76
    if-eqz v0, :cond_7

    .line 77
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->getInstance()Lcom/lsec/core/frame/camera/MyCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lsec/core/frame/camera/MyCamera;->startPreView()Z

    move-result v2

    .line 79
    :cond_7
    if-eqz v0, :cond_8

    if-nez v2, :cond_0

    .line 80
    :cond_8
    new-instance v6, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture$1;

    invoke-direct {v6, p0}, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture$1;-><init>(Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;)V

    .line 86
    const-wide/16 v8, 0x1f4

    .line 80
    invoke-static {v5, v6, v8, v9}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_0

    .end local v0    # "bInitCamera":Z
    .end local v1    # "bNeedSetDisplayOrientation":Z
    .end local v2    # "bStartPreview":Z
    :cond_9
    move v1, v5

    .line 40
    goto :goto_1

    .line 55
    .restart local v1    # "bNeedSetDisplayOrientation":Z
    :catch_0
    move-exception v3

    .line 56
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public stopRun()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;->bRunning:Z

    .line 26
    return-void
.end method

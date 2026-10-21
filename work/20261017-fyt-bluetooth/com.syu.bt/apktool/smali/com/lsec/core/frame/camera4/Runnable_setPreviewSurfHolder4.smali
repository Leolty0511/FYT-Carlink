.class public Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfHolder4;
.super Ljava/lang/Object;
.source "Runnable_setPreviewSurfHolder4.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public bRunning:Z

.field holder:Landroid/view/SurfaceHolder;


# direct methods
.method constructor <init>(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfHolder4;->bRunning:Z

    .line 12
    iput-object p1, p0, Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfHolder4;->holder:Landroid/view/SurfaceHolder;

    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 21
    invoke-static {}, Lcom/lsec/core/frame/camera4/MyCamera4;->getInstance()Lcom/lsec/core/frame/camera4/MyCamera4;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lsec/core/frame/camera4/MyCamera4;->bShutDown:Z

    if-eqz v0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-static {}, Lcom/lsec/core/frame/camera4/MyCamera4;->getInstance()Lcom/lsec/core/frame/camera4/MyCamera4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getCamera4Id()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfHolder4;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/camera4/MyCamera4;->start(Ljava/lang/String;Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method public stopRun()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfHolder4;->bRunning:Z

    .line 17
    return-void
.end method

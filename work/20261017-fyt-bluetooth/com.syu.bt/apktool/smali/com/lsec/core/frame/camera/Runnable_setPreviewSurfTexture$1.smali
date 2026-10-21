.class Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture$1;
.super Ljava/lang/Object;
.source "Runnable_setPreviewSurfTexture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;


# direct methods
.method constructor <init>(Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture$1;->this$0:Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 83
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->getInstance()Lcom/lsec/core/frame/camera/MyCamera;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lsec/core/frame/camera/MyCamera;->bShutDown:Z

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->getInstance()Lcom/lsec/core/frame/camera/MyCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture$1;->this$0:Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;

    iget-object v1, v1, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;->surface:Landroid/graphics/SurfaceTexture;

    sget v2, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    sget v3, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/camera/MyCamera;->setPreview(Landroid/graphics/SurfaceTexture;II)V

    .line 85
    :cond_0
    return-void
.end method

.class Lcom/lsec/core/frame/camera4/MyCamera4$OnImageAvailableListenerImplExtra;
.super Ljava/lang/Object;
.source "MyCamera4.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/camera4/MyCamera4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnImageAvailableListenerImplExtra"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/frame/camera4/MyCamera4;


# direct methods
.method private constructor <init>(Lcom/lsec/core/frame/camera4/MyCamera4;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/lsec/core/frame/camera4/MyCamera4$OnImageAvailableListenerImplExtra;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lsec/core/frame/camera4/MyCamera4;Lcom/lsec/core/frame/camera4/MyCamera4$OnImageAvailableListenerImplExtra;)V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/lsec/core/frame/camera4/MyCamera4$OnImageAvailableListenerImplExtra;-><init>(Lcom/lsec/core/frame/camera4/MyCamera4;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4$OnImageAvailableListenerImplExtra;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    iget-object v0, v0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCamera4Interface:Lcom/lsec/core/frame/camera4/MyCamera4Interface;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4$OnImageAvailableListenerImplExtra;->this$0:Lcom/lsec/core/frame/camera4/MyCamera4;

    iget-object v0, v0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCamera4Interface:Lcom/lsec/core/frame/camera4/MyCamera4Interface;

    invoke-interface {v0, p1}, Lcom/lsec/core/frame/camera4/MyCamera4Interface;->onImage4AvailableExtra(Landroid/media/ImageReader;)V

    .line 376
    :cond_0
    return-void
.end method

.class Lcom/lsec/core/frame/camera3/MyCamera3$OnImageAvailableListenerImpl;
.super Ljava/lang/Object;
.source "MyCamera3.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/camera3/MyCamera3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnImageAvailableListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/frame/camera3/MyCamera3;


# direct methods
.method private constructor <init>(Lcom/lsec/core/frame/camera3/MyCamera3;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/MyCamera3$OnImageAvailableListenerImpl;->this$0:Lcom/lsec/core/frame/camera3/MyCamera3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lsec/core/frame/camera3/MyCamera3;Lcom/lsec/core/frame/camera3/MyCamera3$OnImageAvailableListenerImpl;)V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/lsec/core/frame/camera3/MyCamera3$OnImageAvailableListenerImpl;-><init>(Lcom/lsec/core/frame/camera3/MyCamera3;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3$OnImageAvailableListenerImpl;->this$0:Lcom/lsec/core/frame/camera3/MyCamera3;

    iget-object v0, v0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCamera3Interface:Lcom/lsec/core/frame/camera3/MyCamera3Interface;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3$OnImageAvailableListenerImpl;->this$0:Lcom/lsec/core/frame/camera3/MyCamera3;

    iget-object v0, v0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCamera3Interface:Lcom/lsec/core/frame/camera3/MyCamera3Interface;

    invoke-interface {v0, p1}, Lcom/lsec/core/frame/camera3/MyCamera3Interface;->onImageDoubleCameraAvailable(Landroid/media/ImageReader;)V

    .line 421
    :cond_0
    return-void
.end method

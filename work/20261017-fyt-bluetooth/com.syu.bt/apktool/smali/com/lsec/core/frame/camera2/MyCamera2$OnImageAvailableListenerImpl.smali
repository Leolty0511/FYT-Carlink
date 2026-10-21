.class Lcom/lsec/core/frame/camera2/MyCamera2$OnImageAvailableListenerImpl;
.super Ljava/lang/Object;
.source "MyCamera2.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/camera2/MyCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnImageAvailableListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/frame/camera2/MyCamera2;


# direct methods
.method private constructor <init>(Lcom/lsec/core/frame/camera2/MyCamera2;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/lsec/core/frame/camera2/MyCamera2$OnImageAvailableListenerImpl;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lsec/core/frame/camera2/MyCamera2;Lcom/lsec/core/frame/camera2/MyCamera2$OnImageAvailableListenerImpl;)V
    .locals 0

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/lsec/core/frame/camera2/MyCamera2$OnImageAvailableListenerImpl;-><init>(Lcom/lsec/core/frame/camera2/MyCamera2;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 555
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$OnImageAvailableListenerImpl;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    iget-object v0, v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCamera2Interface:Lcom/lsec/core/frame/camera2/MyCamera2Interface;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$OnImageAvailableListenerImpl;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    iget-object v0, v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCamera2Interface:Lcom/lsec/core/frame/camera2/MyCamera2Interface;

    invoke-interface {v0, p1}, Lcom/lsec/core/frame/camera2/MyCamera2Interface;->onImageAvailable(Landroid/media/ImageReader;)V

    .line 568
    :cond_0
    return-void
.end method

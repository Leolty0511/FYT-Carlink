.class Lcom/lsec/core/frame/camera5/MyCamera5$OnImageAvailableListenerImplExtra;
.super Ljava/lang/Object;
.source "MyCamera5.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/camera5/MyCamera5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnImageAvailableListenerImplExtra"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/frame/camera5/MyCamera5;


# direct methods
.method private constructor <init>(Lcom/lsec/core/frame/camera5/MyCamera5;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/lsec/core/frame/camera5/MyCamera5$OnImageAvailableListenerImplExtra;->this$0:Lcom/lsec/core/frame/camera5/MyCamera5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lsec/core/frame/camera5/MyCamera5;Lcom/lsec/core/frame/camera5/MyCamera5$OnImageAvailableListenerImplExtra;)V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/lsec/core/frame/camera5/MyCamera5$OnImageAvailableListenerImplExtra;-><init>(Lcom/lsec/core/frame/camera5/MyCamera5;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5$OnImageAvailableListenerImplExtra;->this$0:Lcom/lsec/core/frame/camera5/MyCamera5;

    iget-object v0, v0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCamera5Interface:Lcom/lsec/core/frame/camera5/MyCamera5Interface;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5$OnImageAvailableListenerImplExtra;->this$0:Lcom/lsec/core/frame/camera5/MyCamera5;

    iget-object v0, v0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCamera5Interface:Lcom/lsec/core/frame/camera5/MyCamera5Interface;

    invoke-interface {v0, p1}, Lcom/lsec/core/frame/camera5/MyCamera5Interface;->onImage5AvailableExtra(Landroid/media/ImageReader;)V

    .line 380
    :cond_0
    return-void
.end method

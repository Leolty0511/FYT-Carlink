.class Lcom/syu/bt/page/Page_Menu$1;
.super Ljava/lang/Object;
.source "Page_Menu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Menu;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Menu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Menu$1;->this$0:Lcom/syu/bt/page/Page_Menu;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 360
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu$1;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Menu;->mScroll:Lcom/lsec/core/frame/ctrl/JScrollView;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu$1;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Menu;->mScroll:Lcom/lsec/core/frame/ctrl/JScrollView;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu$1;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Menu;->mScroll:Lcom/lsec/core/frame/ctrl/JScrollView;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JScrollView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu$1;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Menu;->vLine_one:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu$1;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Menu;->vLine_one:Lcom/lsec/core/frame/ctrl/JView;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu$1;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Menu;->mScroll:Lcom/lsec/core/frame/ctrl/JScrollView;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Menu$1;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Menu;->endAni:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 366
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu$1;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Menu;->vLine_one:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu$1;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Menu;->vLine_one:Lcom/lsec/core/frame/ctrl/JView;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Menu$1;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Menu;->endAni:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 370
    :cond_1
    return-void
.end method

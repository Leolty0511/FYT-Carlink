.class Lcom/syu/bt/page/Page_Menu$2;
.super Ljava/lang/Object;
.source "Page_Menu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_Menu;->setAnimation()V
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
    iput-object p1, p0, Lcom/syu/bt/page/Page_Menu$2;->this$0:Lcom/syu/bt/page/Page_Menu;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 319
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu$2;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Menu;->mScroll:Lcom/lsec/core/frame/ctrl/JScrollView;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu$2;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Menu;->mScroll:Lcom/lsec/core/frame/ctrl/JScrollView;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JScrollView;->setVisibility(I)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu$2;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Menu;->vLine_one:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu$2;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Menu;->vLine_one:Lcom/lsec/core/frame/ctrl/JView;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu$2;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Menu;->bShowScroll:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu$2;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Menu;->bShowScroll:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu$2;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Menu;->vLine_three:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu$2;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Menu;->vLine_three:Lcom/lsec/core/frame/ctrl/JView;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu$2;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Menu;->vLine_two:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v0, :cond_4

    .line 333
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu$2;->this$0:Lcom/syu/bt/page/Page_Menu;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Menu;->vLine_two:Lcom/lsec/core/frame/ctrl/JView;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 335
    :cond_4
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 340
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 314
    return-void
.end method

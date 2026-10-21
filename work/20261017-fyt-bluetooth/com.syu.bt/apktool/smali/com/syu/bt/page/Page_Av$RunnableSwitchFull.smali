.class public Lcom/syu/bt/page/Page_Av$RunnableSwitchFull;
.super Ljava/lang/Object;
.source "Page_Av.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunnableSwitchFull"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Av;


# direct methods
.method public constructor <init>(Lcom/syu/bt/page/Page_Av;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/syu/bt/page/Page_Av$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 511
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Av;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Av;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Av$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Av;

    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 512
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Av;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Av;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0}, Lcom/syu/bt/Act_Bt;->isHalf()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Av;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Av;->mViewBtAvFullScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Av;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Av;->mViewBtAvFullScreen:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Av;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Av;->mViewBtAvHalfScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Av;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Av;->mViewBtAvHalfScreen:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 526
    :cond_1
    :goto_0
    return-void

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Av;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Av;->mViewBtAvHalfScreen:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 520
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Av;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Av;->mViewBtAvHalfScreen:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 522
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Av;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Av;->mViewBtAvFullScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Av;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Av;->mViewBtAvFullScreen:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

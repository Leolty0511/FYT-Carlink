.class public Lcom/syu/bt/page/Page_Callin_ShowCall$RunnableSwitchFull;
.super Ljava/lang/Object;
.source "Page_Callin_ShowCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Callin_ShowCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunnableSwitchFull"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Callin_ShowCall;


# direct methods
.method public constructor <init>(Lcom/syu/bt/page/Page_Callin_ShowCall;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/syu/bt/page/Page_Callin_ShowCall$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 302
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowCall;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowCall;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowCall$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowCall;

    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Callin_ShowCall;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 303
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowCall;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowCall;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0}, Lcom/syu/bt/Act_Bt;->isHalf()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowCall;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mViewCallinFullScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowCall;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mViewCallinFullScreen:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowCall;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mViewCallinHalfScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowCall;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mViewCallinHalfScreen:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    :cond_1
    :goto_0
    return-void

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowCall;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mViewCallinHalfScreen:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowCall;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mViewCallinHalfScreen:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowCall;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mViewCallinFullScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowCall;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mViewCallinFullScreen:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

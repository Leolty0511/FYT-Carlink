.class public Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;
.super Ljava/lang/Object;
.source "Page_Dial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Dial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunnableSwitchFull"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Dial;


# direct methods
.method public constructor <init>(Lcom/syu/bt/page/Page_Dial;)V
    .locals 0

    .prologue
    .line 2379
    iput-object p1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2381
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 2385
    const/4 v0, 0x1

    .line 2387
    .local v0, "isHalf":Z
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2388
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/App_Bt;->getFullScreenMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2390
    const/4 v0, 0x0

    .line 2392
    :cond_0
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-virtual {v2}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 2393
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v1}, Lcom/syu/bt/Act_Bt;->isHalf()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 2394
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialFullScreen:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2395
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialFullScreen:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2397
    :cond_1
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialHalfScreen:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2398
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialHalfScreen:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2426
    :cond_2
    :goto_0
    return-void

    .line 2400
    :cond_3
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialHalfScreen:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 2401
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialHalfScreen:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2403
    :cond_4
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialFullScreen:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2404
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialFullScreen:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2407
    :cond_5
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v1}, Lcom/syu/bt/Act_Bt;->isHalf()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 2408
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialHalfScreen:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 2409
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialHalfScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    .line 2410
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialHalfScreen:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2412
    :cond_6
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialFullScreen:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2413
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialFullScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 2414
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialFullScreen:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2417
    :cond_7
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialHalfScreen:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 2418
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialHalfScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_8

    .line 2419
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialHalfScreen:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2421
    :cond_8
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialFullScreen:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2422
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialFullScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2423
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewDialFullScreen:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

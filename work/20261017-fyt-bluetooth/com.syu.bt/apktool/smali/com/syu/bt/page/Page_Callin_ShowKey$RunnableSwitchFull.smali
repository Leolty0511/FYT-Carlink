.class public Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;
.super Ljava/lang/Object;
.source "Page_Callin_ShowKey.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Callin_ShowKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunnableSwitchFull"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;


# direct methods
.method public constructor <init>(Lcom/syu/bt/page/Page_Callin_ShowKey;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 357
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Callin_ShowKey;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 360
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0}, Lcom/syu/bt/Act_Bt;->isHalf()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mViewCallinFullScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mViewCallinFullScreen:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mViewCallinHalfScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mViewCallinHalfScreen:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 398
    :cond_1
    :goto_0
    return-void

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mViewCallinHalfScreen:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 368
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mViewCallinHalfScreen:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 370
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mViewCallinFullScreen:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 371
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mViewCallinFullScreen:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 373
    :cond_4
    iget-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Callin;

    iput-object v0, v1, Lcom/syu/bt/page/Page_Callin_ShowKey;->page_Callin:Lcom/syu/bt/page/Page_Callin;

    .line 374
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 391
    :cond_5
    :goto_1
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bShowKeyFlag:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->page_Callin:Lcom/syu/bt/page/Page_Callin;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->page_Callin:Lcom/syu/bt/page/Page_Callin;

    .line 393
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Callin;->Switch2Keyboard(I)V

    goto :goto_0

    .line 376
    :pswitch_0
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bShowKeyFlag:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->page_Callin:Lcom/syu/bt/page/Page_Callin;

    if-eqz v0, :cond_5

    .line 377
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->page_Callin:Lcom/syu/bt/page/Page_Callin;

    .line 378
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Callin;->Switch2Keyboard(I)V

    goto :goto_1

    .line 381
    :pswitch_1
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bShowKeyFlag:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->page_Callin:Lcom/syu/bt/page/Page_Callin;

    if-eqz v0, :cond_5

    .line 382
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->page_Callin:Lcom/syu/bt/page/Page_Callin;

    .line 383
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Callin;->Switch2Keyboard(I)V

    goto :goto_1

    .line 386
    :pswitch_2
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bShowKeyFlag:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->page_Callin:Lcom/syu/bt/page/Page_Callin;

    if-eqz v0, :cond_5

    .line 387
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin_ShowKey;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowKey;->page_Callin:Lcom/syu/bt/page/Page_Callin;

    .line 388
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Callin;->Switch2Keyboard(I)V

    goto :goto_1

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

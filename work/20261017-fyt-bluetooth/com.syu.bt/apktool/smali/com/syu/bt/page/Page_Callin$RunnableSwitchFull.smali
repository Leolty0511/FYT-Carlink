.class public Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;
.super Ljava/lang/Object;
.source "Page_Callin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Callin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunnableSwitchFull"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Callin;


# direct methods
.method public constructor <init>(Lcom/syu/bt/page/Page_Callin;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 366
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin;

    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Callin;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 367
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0}, Lcom/syu/bt/Act_Bt;->isHalf()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 368
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin;->mViewCallinFullScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin;->mViewCallinFullScreen:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin;->mViewCallinHalfScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin;->mViewCallinHalfScreen:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :cond_1
    :goto_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 399
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bShowKeyFlag:Z

    if-eqz v0, :cond_3

    .line 400
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Callin;->Switch2Keyboard(I)V

    .line 402
    :cond_3
    return-void

    .line 374
    :cond_4
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin;->mViewCallinHalfScreen:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 375
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin;->mViewCallinHalfScreen:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 377
    :cond_5
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin;->mViewCallinFullScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin;->mViewCallinFullScreen:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 383
    :pswitch_0
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bShowKeyFlag:Z

    if-nez v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Callin;->Switch2Keyboard(I)V

    goto :goto_1

    .line 388
    :pswitch_1
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bShowKeyFlag:Z

    if-nez v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Callin;->Switch2Keyboard(I)V

    goto :goto_1

    .line 393
    :pswitch_2
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bShowKeyFlag:Z

    if-nez v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;->this$0:Lcom/syu/bt/page/Page_Callin;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Callin;->Switch2Keyboard(I)V

    goto :goto_1

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

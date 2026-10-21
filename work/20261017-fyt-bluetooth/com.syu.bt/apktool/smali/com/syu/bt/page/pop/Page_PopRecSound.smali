.class public Lcom/syu/bt/page/pop/Page_PopRecSound;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopRecSound.java"


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;

.field private mBtnStopRec:Lcom/lsec/core/frame/ctrl/JButton;

.field private mTxtTip:Lcom/lsec/core/frame/ctrl/JText;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 20
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 21
    iput-object p2, p0, Lcom/syu/bt/page/pop/Page_PopRecSound;->actBt:Lcom/syu/bt/Act_Bt;

    .line 22
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 52
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopRecSound;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->mRecSound:Lcom/syu/bt/recsound/RecSound;

    invoke-virtual {v1}, Lcom/syu/bt/recsound/RecSound;->stopRecord()V

    .line 55
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopRecSound;->mTxtTip:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopRecSound;->mTxtTip:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "str_playing"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopRecSound;->mBtnStopRec:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopRecSound;->mBtnStopRec:Lcom/lsec/core/frame/ctrl/JButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopRecSound;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->mRecSound:Lcom/syu/bt/recsound/RecSound;

    invoke-virtual {v1}, Lcom/syu/bt/recsound/RecSound;->playRecord()V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x2907
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopRecSound;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 27
    const/16 v1, 0x2906

    .line 26
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopRecSound;->mTxtTip:Lcom/lsec/core/frame/ctrl/JText;

    .line 28
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopRecSound;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 29
    const/16 v1, 0x2907

    .line 28
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopRecSound;->mBtnStopRec:Lcom/lsec/core/frame/ctrl/JButton;

    .line 30
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopRecSound;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->mRecSound:Lcom/syu/bt/recsound/RecSound;

    invoke-virtual {v0}, Lcom/syu/bt/recsound/RecSound;->stopRecord()V

    .line 46
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->onDismiss()V

    .line 47
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopRecSound;->mTxtTip:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopRecSound;->mTxtTip:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "str_speak"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopRecSound;->mBtnStopRec:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopRecSound;->mBtnStopRec:Lcom/lsec/core/frame/ctrl/JButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopRecSound;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->mRecSound:Lcom/syu/bt/recsound/RecSound;

    invoke-virtual {v0}, Lcom/syu/bt/recsound/RecSound;->startRecord()V

    .line 41
    return-void
.end method

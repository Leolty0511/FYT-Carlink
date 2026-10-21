.class public Lcom/syu/bt/page/pop/Page_PopBtAvMicSet;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopBtAvMicSet.java"


# instance fields
.field public mSB_BtMusic:Lcom/lsec/core/frame/ctrl/JSeekBar;

.field public strBtAvMicSet:Ljava/lang/String;

.field public tvBtAvMicSet:Lcom/lsec/core/frame/ctrl/JText;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    .line 20
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 21
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    const/4 v0, 0x5

    sput v0, Lcom/syu/bt/App_Bt;->iTimerCnt:I

    .line 57
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtAvMicSet;->mSB_BtMusic:Lcom/lsec/core/frame/ctrl/JSeekBar;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JSeekBar;->getValue()I

    move-result v0

    sput v0, Lcom/syu/bt/App_Bt;->iBtAvMicSet:I

    .line 58
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    const/4 v1, 0x3

    sget v2, Lcom/syu/bt/App_Bt;->iBtAvMicSet:I

    invoke-virtual {v0, v1, v2}, Lcom/syu/app/ipc/Bt_IpcObj;->sendCmdVolBal(II)V

    .line 60
    sget v0, Lcom/syu/bt/App_Bt;->iBtAvMicSet:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtAvMicSet;->strBtAvMicSet:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtAvMicSet;->tvBtAvMicSet:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtAvMicSet;->tvBtAvMicSet:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopBtAvMicSet;->strBtAvMicSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBtAvMicSet;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 26
    const/16 v1, 0x4a

    .line 25
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JSeekBar;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtAvMicSet;->mSB_BtMusic:Lcom/lsec/core/frame/ctrl/JSeekBar;

    .line 27
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtAvMicSet;->mSB_BtMusic:Lcom/lsec/core/frame/ctrl/JSeekBar;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtAvMicSet;->mSB_BtMusic:Lcom/lsec/core/frame/ctrl/JSeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setProgressMax(I)V

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBtAvMicSet;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 31
    const/16 v1, 0x4b

    .line 30
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtAvMicSet;->tvBtAvMicSet:Lcom/lsec/core/frame/ctrl/JText;

    .line 32
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-boolean v0, v0, Lcom/syu/bt/App_Bt;->bPopBtAvMicSet:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/syu/bt/App_Bt;->popBtAvMicSet(Z)V

    .line 51
    :cond_0
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->pause()V

    .line 52
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->resume()V

    .line 37
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->getSB()[I

    move-result-object v0

    sput-object v0, Lcom/syu/bt/App_Bt;->SB:[I

    .line 38
    sget-object v0, Lcom/syu/bt/App_Bt;->SB:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    sput v0, Lcom/syu/bt/App_Bt;->iBtAvMicSet:I

    .line 40
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtAvMicSet;->mSB_BtMusic:Lcom/lsec/core/frame/ctrl/JSeekBar;

    sget v1, Lcom/syu/bt/App_Bt;->iBtAvMicSet:I

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setProgress(I)V

    .line 41
    sget v0, Lcom/syu/bt/App_Bt;->iBtAvMicSet:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtAvMicSet;->strBtAvMicSet:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtAvMicSet;->tvBtAvMicSet:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtAvMicSet;->tvBtAvMicSet:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopBtAvMicSet;->strBtAvMicSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_0
    return-void
.end method

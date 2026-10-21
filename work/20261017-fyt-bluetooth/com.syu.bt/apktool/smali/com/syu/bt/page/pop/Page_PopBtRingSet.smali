.class public Lcom/syu/bt/page/pop/Page_PopBtRingSet;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopBtRingSet.java"


# instance fields
.field public BtSet:Lcom/syu/bt/page/Page_Set;

.field public mSeekBar:Lcom/lsec/core/frame/ctrl/JSeekBar;

.field public strRingSet:Ljava/lang/String;

.field public tvRingLevel:Lcom/lsec/core/frame/ctrl/JText;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    .line 22
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 23
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    const/4 v0, 0x5

    sput v0, Lcom/syu/bt/App_Bt;->iTimerCnt:I

    .line 53
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRingSet;->mSeekBar:Lcom/lsec/core/frame/ctrl/JSeekBar;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JSeekBar;->getValue()I

    move-result v0

    sput v0, Lcom/syu/bt/App_Bt;->iRingLevel:I

    .line 54
    sget v0, Lcom/syu/bt/App_Bt;->iRingLevel:I

    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->SetRingLevel(I)V

    .line 55
    sget v0, Lcom/syu/bt/App_Bt;->iRingLevel:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRingSet;->strRingSet:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRingSet;->tvRingLevel:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRingSet;->tvRingLevel:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopBtRingSet;->strRingSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBtRingSet;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 28
    const/16 v1, 0x46

    .line 27
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JSeekBar;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRingSet;->mSeekBar:Lcom/lsec/core/frame/ctrl/JSeekBar;

    .line 29
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRingSet;->mSeekBar:Lcom/lsec/core/frame/ctrl/JSeekBar;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRingSet;->mSeekBar:Lcom/lsec/core/frame/ctrl/JSeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setProgressMax(I)V

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBtRingSet;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 33
    const/16 v1, 0x47

    .line 32
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRingSet;->tvRingLevel:Lcom/lsec/core/frame/ctrl/JText;

    .line 34
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->pause()V

    .line 48
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->resume()V

    .line 39
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRingSet;->mSeekBar:Lcom/lsec/core/frame/ctrl/JSeekBar;

    sget v1, Lcom/syu/bt/App_Bt;->iRingLevel:I

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setProgress(I)V

    .line 40
    sget v0, Lcom/syu/bt/App_Bt;->iRingLevel:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRingSet;->strRingSet:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRingSet;->tvRingLevel:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRingSet;->tvRingLevel:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopBtRingSet;->strRingSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_0
    return-void
.end method

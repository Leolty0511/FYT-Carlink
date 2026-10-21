.class public Lcom/syu/bt/page/pop/Page_PopMSBC;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopMSBC.java"


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;

.field btn_msbc0:Lcom/lsec/core/frame/ctrl/JButton;

.field btn_msbc1:Lcom/lsec/core/frame/ctrl/JButton;

.field public iMsbc:I

.field private mRunDismiss:Ljava/lang/Runnable;

.field private mRunSetMsbc:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 6
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v1}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 44
    iput v3, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->iMsbc:I

    .line 117
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopMSBC$1;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/pop/Page_PopMSBC$1;-><init>(Lcom/syu/bt/page/pop/Page_PopMSBC;)V

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->mRunSetMsbc:Ljava/lang/Runnable;

    .line 125
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopMSBC$2;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/pop/Page_PopMSBC$2;-><init>(Lcom/syu/bt/page/pop/Page_PopMSBC;)V

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->mRunDismiss:Ljava/lang/Runnable;

    .line 47
    iput-object p2, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->actBt:Lcom/syu/bt/Act_Bt;

    .line 48
    iget-object v1, p2, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x272e

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 49
    .local v0, "pageDlg":Lcom/lsec/core/frame/ctrl/JPage;
    const-string v1, "persist.blinkbt.msbc"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->iMsbc:I

    .line 50
    const-string v1, "pop"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 00 Page_PopMSBC init iMsbc = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->iMsbc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/16 v1, 0x28c3

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->btn_msbc0:Lcom/lsec/core/frame/ctrl/JButton;

    .line 52
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->btn_msbc0:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->btn_msbc0:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v2, Lcom/syu/bt/page/pop/Page_PopMSBC$3;

    invoke-direct {v2, p0}, Lcom/syu/bt/page/pop/Page_PopMSBC$3;-><init>(Lcom/syu/bt/page/pop/Page_PopMSBC;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    :cond_0
    const/16 v1, 0x28c4

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->btn_msbc1:Lcom/lsec/core/frame/ctrl/JButton;

    .line 74
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->btn_msbc1:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->btn_msbc1:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v2, Lcom/syu/bt/page/pop/Page_PopMSBC$4;

    invoke-direct {v2, p0}, Lcom/syu/bt/page/pop/Page_PopMSBC$4;-><init>(Lcom/syu/bt/page/pop/Page_PopMSBC;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopMSBC;->showMsbcSet()V

    .line 96
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->btn_msbc0:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->btn_msbc0:Lcom/lsec/core/frame/ctrl/JButton;

    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->mRunDismiss:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Lcom/lsec/core/frame/ctrl/JButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    :cond_2
    return-void
.end method


# virtual methods
.method public showMsbcSet()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    const-string v0, "pop"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 11 showMsbcSet iMsbc = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->iMsbc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->btn_msbc0:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_0

    .line 105
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->btn_msbc0:Lcom/lsec/core/frame/ctrl/JButton;

    iget v0, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->iMsbc:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->btn_msbc1:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->btn_msbc1:Lcom/lsec/core/frame/ctrl/JButton;

    iget v3, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->iMsbc:I

    if-ne v3, v1, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 109
    const-string v0, "pop"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 22 showMsbcSet iMsbc = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->iMsbc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->btn_msbc0:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->btn_msbc0:Lcom/lsec/core/frame/ctrl/JButton;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->mRunSetMsbc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 113
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->btn_msbc0:Lcom/lsec/core/frame/ctrl/JButton;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopMSBC;->mRunSetMsbc:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 105
    goto :goto_0

    :cond_4
    move v1, v2

    .line 107
    goto :goto_1
.end method

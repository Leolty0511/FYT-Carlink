.class public Lcom/syu/bt/page/pop/Page_PopSwitchPhone;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopSwitchPhone.java"


# instance fields
.field iPhone_id:I

.field mBtnAccept:Lcom/lsec/core/frame/ctrl/JButton;

.field mIconTitle:Lcom/lsec/core/frame/ctrl/JView;

.field public mRunnable_mIconTitle:Ljava/lang/Runnable;

.field mTxtName:Lcom/lsec/core/frame/ctrl/JText;

.field mTxtTitle:Lcom/lsec/core/frame/ctrl/JText;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    .line 28
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->iPhone_id:I

    .line 81
    new-instance v0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone$1;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/pop/Page_PopSwitchPhone$1;-><init>(Lcom/syu/bt/page/pop/Page_PopSwitchPhone;)V

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->mRunnable_mIconTitle:Ljava/lang/Runnable;

    .line 29
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 99
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 101
    :pswitch_0
    const-string v1, "sfth2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 000 PagePopSwitch  KEY_HANG sPhone2_MAC"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    iget v6, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->iPhone_id:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    new-array v4, v2, [I

    aput v2, v4, v3

    new-array v2, v2, [Ljava/lang/String;

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    iget v6, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->iPhone_id:I

    aget-object v5, v5, v6

    aput-object v5, v2, v3

    invoke-virtual {v1, v7, v4, v8, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/syu/bt/App_Bt;->popSwitchPhone(Z)V

    goto :goto_0

    .line 106
    :pswitch_1
    sget v1, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->iPhone_id:I

    .line 107
    const-string v1, "pop3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 000 PagePopSwitch  KEY_DIAL bPhone2_HFP"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v1, "pop3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 000 PagePopSwitch  KEY_DIAL sPhone2_MAC"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iPhone_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->iPhone_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v1, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    iget v4, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->iPhone_id:I

    aget v1, v1, v4

    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    .line 110
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    new-array v4, v2, [I

    new-array v2, v2, [Ljava/lang/String;

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    iget v6, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->iPhone_id:I

    aget-object v5, v5, v6

    aput-object v5, v2, v3

    invoke-virtual {v1, v7, v4, v8, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 111
    :cond_0
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    .line 117
    const-string v1, "sfth"

    const-string v2, " 111 PagePop3  Pop3rdPhone_Btn_Accept "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 106
    goto/16 :goto_1

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->init()V

    .line 34
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->mTxtTitle:Lcom/lsec/core/frame/ctrl/JText;

    .line 35
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JView;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->mIconTitle:Lcom/lsec/core/frame/ctrl/JView;

    .line 37
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->mTxtName:Lcom/lsec/core/frame/ctrl/JText;

    .line 38
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->mBtnAccept:Lcom/lsec/core/frame/ctrl/JButton;

    .line 39
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->resume()V

    .line 92
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->updatePhoneName()V

    .line 93
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->updateBtnAccept()V

    .line 94
    return-void
.end method

.method public updateBtnAccept()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 41
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isMerger()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->mBtnAccept:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->mBtnAccept:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 45
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "str":Ljava/lang/String;
    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    sget v2, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    aget v2, v5, v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_4

    .line 48
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    .line 52
    :goto_2
    const-string v2, "sfth"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 1-1 PagePopSwitch  bPhone2_HFP ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    sget v7, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-nez v7, :cond_2

    move v4, v3

    :cond_2
    aget v4, v6, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " str"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->mBtnAccept:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JButton;->getStrDrawable()Ljava/lang/String;

    move-result-object v2

    if-eq v2, v1, :cond_0

    .line 54
    if-eqz v1, :cond_0

    .line 55
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->mBtnAccept:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v1, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    move v2, v4

    .line 47
    goto :goto_1

    .line 50
    :cond_4
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v4

    goto :goto_2
.end method

.method public updatePhoneName()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isMerger()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->mTxtName:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_0

    .line 66
    sget v1, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput v1, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->iPhone_id:I

    .line 67
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->mRunnable_mIconTitle:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 68
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->mRunnable_mIconTitle:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-static {v2, v1, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 70
    sget-object v1, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    iget v2, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->iPhone_id:I

    aget-object v0, v1, v2

    .line 72
    .local v0, "strPhone":Ljava/lang/String;
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->mTxtName:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->mTxtTitle:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->mTxtTitle:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v2, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    iget v3, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->iPhone_id:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_2
    const-string v1, "pop333"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 000 PagePopSwitch  updatePhoneNamestrPhone ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iPhone_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->iPhone_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  App_Bt.sPhone_callin_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "strPhone":Ljava/lang/String;
    :cond_3
    move v1, v2

    .line 66
    goto :goto_1
.end method

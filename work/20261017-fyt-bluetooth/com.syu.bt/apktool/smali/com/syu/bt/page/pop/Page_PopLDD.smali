.class public Lcom/syu/bt/page/pop/Page_PopLDD;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopLDD.java"


# instance fields
.field lastCalledTime:J

.field public mBtnAccept:Lcom/lsec/core/frame/ctrl/JButton;

.field public mBtnSound:Lcom/lsec/core/frame/ctrl/JButton;

.field public mTxtPhoneTime:Lcom/lsec/core/frame/ctrl/JText;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    .line 31
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/syu/bt/page/pop/Page_PopLDD;->lastCalledTime:J

    .line 32
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 85
    .local v0, "id":I
    const-string v1, "ldd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 00 Page PopLDD  ResponseClick PopLDD_Txt_Time id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    packed-switch v0, :pswitch_data_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 88
    :pswitch_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    :cond_1
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncDial()V

    goto :goto_0

    .line 94
    :pswitch_1
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isTalk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hfp()V

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    goto :goto_0

    .line 106
    :pswitch_3
    const-string v1, "ldd"

    const-string v2, " 11 Page PopLDD  ResponseClick PopLDD_Txt_Time  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/syu/bt/App_Bt;->popShowLLD(Z)V

    .line 108
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopLDD;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopLDD;->mTxtPhoneTime:Lcom/lsec/core/frame/ctrl/JText;

    .line 37
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopLDD;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopLDD;->mBtnAccept:Lcom/lsec/core/frame/ctrl/JButton;

    .line 38
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopLDD;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopLDD;->mBtnSound:Lcom/lsec/core/frame/ctrl/JButton;

    .line 39
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopLDD;->updatePDDinfo()V

    .line 41
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->pause()V

    .line 78
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->resume()V

    .line 71
    return-void
.end method

.method public updatePDDinfo()V
    .locals 9

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 44
    const-string v3, "lddd"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 11 updatePDDinfo mTxtPhoneTime!=null U_PHONE_STATE = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v8, 0x9

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  sPhoneNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isTalk()Z

    move-result v0

    .line 46
    .local v0, "isTalk":Z
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopLDD;->mBtnAccept:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v3, :cond_0

    .line 47
    iget-object v6, p0, Lcom/syu/bt/page/pop/Page_PopLDD;->mBtnAccept:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 49
    :cond_0
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopLDD;->mBtnSound:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v3, :cond_2

    .line 50
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopLDD;->mBtnSound:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 52
    :cond_2
    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopLDD;->mTxtPhoneTime:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_3

    .line 53
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 54
    .local v2, "strPhone":Ljava/lang/String;
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v3, v2}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "strName":Ljava/lang/String;
    const-string v3, "lddd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, " 33 updatePDDinfo  strPhone = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 57
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopLDD;->mTxtPhoneTime:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v3, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .end local v1    # "strName":Ljava/lang/String;
    .end local v2    # "strPhone":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v3

    if-nez v3, :cond_4

    .line 62
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/syu/bt/App_Bt;->popShowLLD(Z)V

    .line 63
    :cond_4
    return-void

    :cond_5
    move v3, v5

    .line 47
    goto :goto_0

    .line 59
    .restart local v1    # "strName":Ljava/lang/String;
    .restart local v2    # "strPhone":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopLDD;->mTxtPhoneTime:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v3, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

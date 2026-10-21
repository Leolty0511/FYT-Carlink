.class public Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_Callin_ShowKey_HalfScreen.java"


# instance fields
.field public actBt:Lcom/syu/bt/Act_Bt;

.field mCallin_Half_ShowCall:Landroid/view/View;

.field mCallin_Half_ShowDial:Landroid/view/View;

.field mCallin_Half_ShowKey:Landroid/view/View;

.field public tvTxtName:Landroid/widget/TextView;

.field public tvTxtNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 22
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;->mCallin_Half_ShowKey:Landroid/view/View;

    .line 23
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;->mCallin_Half_ShowDial:Landroid/view/View;

    .line 24
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;->mCallin_Half_ShowCall:Landroid/view/View;

    .line 31
    iput-object p2, p0, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;->actBt:Lcom/syu/bt/Act_Bt;

    .line 32
    return-void
.end method

.method private btnClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 88
    const/4 v0, 0x1

    .line 90
    .local v0, "bRet":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 91
    .local v3, "id":I
    sparse-switch v3, :sswitch_data_0

    .line 121
    const/4 v0, 0x0

    :cond_0
    :goto_0
    move v1, v0

    .end local v0    # "bRet":Z
    .local v1, "bRet":Z
    move v2, v0

    .line 124
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_1
    return v2

    .line 93
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :sswitch_0
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 94
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 96
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncDial()V

    goto :goto_0

    .line 100
    :sswitch_1
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 101
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 103
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_2
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    goto :goto_0

    .line 108
    :sswitch_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->setFullScreenMode(I)V

    .line 109
    sput-boolean v5, Lcom/syu/bt/App_Bt;->bShowKeyFlag:Z

    goto :goto_0

    .line 112
    :sswitch_3
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 113
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 115
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_3
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->VoiceSwitch()V

    goto :goto_0

    .line 118
    :sswitch_4
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->setFullScreenMode(I)V

    goto :goto_0

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x278d -> :sswitch_2
        0x2790 -> :sswitch_4
        0x2793 -> :sswitch_0
        0x2794 -> :sswitch_1
        0x27b1 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-direct {p0, p1}, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;->btnClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_state_using"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0, p1}, Lcom/syu/bt/Act_Bt;->MenuClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public ResponseLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 130
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 132
    :pswitch_0
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->LongClick0()V

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x27a2
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 61
    const/16 v1, 0x2788

    .line 60
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;->mCallin_Half_ShowKey:Landroid/view/View;

    .line 62
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 63
    const/16 v1, 0x2787

    .line 62
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;->mCallin_Half_ShowDial:Landroid/view/View;

    .line 64
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 65
    const/16 v1, 0x2786

    .line 64
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;->mCallin_Half_ShowCall:Landroid/view/View;

    .line 67
    return-void
.end method

.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;I[I[F[Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    .line 55
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->pause()V

    .line 56
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v0, v0, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    if-nez v0, :cond_2

    .line 44
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdRight(I)V

    .line 46
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->updateNotify_Callin_HalfScreen()V

    .line 48
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-boolean v0, v0, Lcom/syu/bt/App_Bt;->bPopBtRingSet:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/syu/bt/App_Bt;->popBtRingSet(Z)V

    goto :goto_0
.end method

.method public updatePhoneName()V
    .locals 5

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 167
    const/16 v4, 0x2763

    .line 166
    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 168
    .local v1, "text":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 169
    const/16 v4, 0x276d

    .line 168
    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 170
    .local v2, "text2":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_1

    .line 171
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 182
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_1
    return-void

    .line 174
    :cond_2
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "strName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 176
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 177
    :cond_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

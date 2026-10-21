.class public Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_Callin_ShowCall_HalfScreen.java"


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
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;->mCallin_Half_ShowKey:Landroid/view/View;

    .line 23
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;->mCallin_Half_ShowDial:Landroid/view/View;

    .line 24
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;->mCallin_Half_ShowCall:Landroid/view/View;

    .line 31
    iput-object p2, p0, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;->actBt:Lcom/syu/bt/Act_Bt;

    .line 32
    return-void
.end method

.method private btnClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 92
    const/4 v0, 0x1

    .line 94
    .local v0, "bRet":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 95
    .local v3, "id":I
    sparse-switch v3, :sswitch_data_0

    .line 125
    const/4 v0, 0x0

    :cond_0
    :goto_0
    move v1, v0

    .end local v0    # "bRet":Z
    .local v1, "bRet":Z
    move v2, v0

    .line 128
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_1
    return v2

    .line 97
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

    .line 98
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 100
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncDial()V

    goto :goto_0

    .line 104
    :sswitch_1
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 105
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 107
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_2
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    goto :goto_0

    .line 112
    :sswitch_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->setFullScreenMode(I)V

    .line 113
    sput-boolean v5, Lcom/syu/bt/App_Bt;->bShowKeyFlag:Z

    goto :goto_0

    .line 116
    :sswitch_3
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 117
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 119
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_3
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->VoiceSwitch()V

    goto :goto_0

    .line 122
    :sswitch_4
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->setFullScreenMode(I)V

    goto :goto_0

    .line 95
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
    .line 75
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-direct {p0, p1}, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;->btnClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    .line 83
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_state_using"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0, p1}, Lcom/syu/bt/Act_Bt;->MenuClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public ResponseLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 134
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 136
    :pswitch_0
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->LongClick0()V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x27a2
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 65
    const/16 v1, 0x2788

    .line 64
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;->mCallin_Half_ShowKey:Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 67
    const/16 v1, 0x2787

    .line 66
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;->mCallin_Half_ShowDial:Landroid/view/View;

    .line 68
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 69
    const/16 v1, 0x2786

    .line 68
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;->mCallin_Half_ShowCall:Landroid/view/View;

    .line 71
    return-void
.end method

.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;I[I[F[Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    .line 59
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->pause()V

    .line 60
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v0, v0, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    if-nez v0, :cond_2

    .line 41
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdRight(I)V

    .line 43
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->updateNotify_Callin_HalfScreen()V

    .line 45
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-boolean v0, v0, Lcom/syu/bt/App_Bt;->bPopBtRingSet:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/syu/bt/App_Bt;->popBtRingSet(Z)V

    goto :goto_0
.end method

.method public updatePhoneName()V
    .locals 5

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 171
    const/16 v4, 0x2763

    .line 170
    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 172
    .local v1, "text":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 173
    const/16 v4, 0x276d

    .line 172
    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 174
    .local v2, "text2":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_1

    .line 175
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 186
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_1
    return-void

    .line 178
    :cond_2
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "strName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 180
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 181
    :cond_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

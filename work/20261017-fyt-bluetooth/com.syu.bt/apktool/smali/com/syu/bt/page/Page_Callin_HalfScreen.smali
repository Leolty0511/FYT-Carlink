.class public Lcom/syu/bt/page/Page_Callin_HalfScreen;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_Callin_HalfScreen.java"


# static fields
.field public static final Mode_Dial:I = 0x1

.field public static final Mode_InCall:I = 0x2

.field public static final Mode_Talking:I = 0x3


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

    .line 40
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 32
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowKey:Landroid/view/View;

    .line 33
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowDial:Landroid/view/View;

    .line 34
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowCall:Landroid/view/View;

    .line 41
    iput-object p2, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->actBt:Lcom/syu/bt/Act_Bt;

    .line 42
    return-void
.end method

.method private btnClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 95
    const/4 v0, 0x1

    .line 97
    .local v0, "bRet":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 98
    .local v3, "id":I
    sparse-switch v3, :sswitch_data_0

    .line 127
    const/4 v0, 0x0

    :cond_0
    :goto_0
    move v1, v0

    .end local v0    # "bRet":Z
    .local v1, "bRet":Z
    move v2, v0

    .line 130
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_1
    return v2

    .line 100
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

    .line 101
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 103
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncDial()V

    goto :goto_0

    .line 106
    :sswitch_1
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 107
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 109
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_2
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    goto :goto_0

    .line 114
    :sswitch_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->setFullScreenMode(I)V

    .line 115
    sput-boolean v5, Lcom/syu/bt/App_Bt;->bShowKeyFlag:Z

    goto :goto_0

    .line 118
    :sswitch_3
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 119
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 121
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_3
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->VoiceSwitch()V

    goto :goto_0

    .line 124
    :sswitch_4
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->setFullScreenMode(I)V

    goto :goto_0

    .line 98
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
    .line 78
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-direct {p0, p1}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->btnClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_state_using"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0, p1}, Lcom/syu/bt/Act_Bt;->MenuClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public ResponseLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 136
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 142
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 138
    :pswitch_0
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->LongClick0()V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x27a2
        :pswitch_0
    .end packed-switch
.end method

.method public Switch2Key(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 146
    packed-switch p1, :pswitch_data_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowDial:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowDial:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowCall:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowCall:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowKey:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowKey:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowDial:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowDial:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowCall:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowCall:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowKey:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowKey:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowDial:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 171
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowDial:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowCall:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 174
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowCall:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_6
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowKey:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowKey:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 68
    const/16 v1, 0x273a

    .line 67
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowKey:Landroid/view/View;

    .line 69
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 70
    const/16 v1, 0x2738

    .line 69
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowDial:Landroid/view/View;

    .line 71
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 72
    const/16 v1, 0x2739

    .line 71
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->mCallin_Half_ShowCall:Landroid/view/View;

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->Switch2Key(I)V

    .line 74
    return-void
.end method

.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 204
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_Callin_HalfScreen;I[I[F[Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    .line 62
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->pause()V

    .line 63
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_HalfScreen;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v0, v0, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-nez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    if-nez v0, :cond_2

    .line 52
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdRight(I)V

    .line 54
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->updateNotify_Callin_HalfScreen()V

    .line 55
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-boolean v0, v0, Lcom/syu/bt/App_Bt;->bPopBtRingSet:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/syu/bt/App_Bt;->popBtRingSet(Z)V

    goto :goto_0
.end method

.method public updatePhoneName()V
    .locals 8

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 185
    const/16 v4, 0x2763

    .line 184
    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 186
    .local v1, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_0

    .line 187
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v4, 0x276d

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 198
    .local v2, "text2":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .end local v2    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    :cond_0
    return-void

    .line 190
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v4, "Thread-GetNameByNumber"

    .line 193
    new-instance v5, Lcom/syu/bt/runnable/Runnable_getNameByNumber;

    const-string v6, ""

    const/4 v7, 0x1

    invoke-direct {v5, v0, v1, v6, v7}, Lcom/syu/bt/runnable/Runnable_getNameByNumber;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Z)V

    .line 194
    const/4 v6, 0x0

    const/4 v7, 0x5

    .line 192
    invoke-static {v3, v4, v5, v6, v7}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto :goto_0
.end method

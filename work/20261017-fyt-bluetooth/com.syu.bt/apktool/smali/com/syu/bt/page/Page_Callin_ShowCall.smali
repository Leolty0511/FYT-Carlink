.class public Lcom/syu/bt/page/Page_Callin_ShowCall;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_Callin_ShowCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/page/Page_Callin_ShowCall$RunnableSwitchFull;
    }
.end annotation


# instance fields
.field public actBt:Lcom/syu/bt/Act_Bt;

.field mBtnVoice:Lcom/lsec/core/frame/ctrl/JButton;

.field mCallin_HideKeyboard:Landroid/view/View;

.field mCallin_ShowCall:Landroid/view/View;

.field mCallin_ShowDial:Landroid/view/View;

.field mCallin_ShowKeyboard:Landroid/view/View;

.field public mFullSwitch:I

.field public mSwipeCalling2:Lcom/syu/bt/ctrl/SwipeCallingView;

.field mViewCallinFullScreen:Landroid/view/View;

.field mViewCallinHalfScreen:Landroid/view/View;

.field mViewShowGps:Landroid/view/View;

.field public tvTxtName:Landroid/widget/TextView;

.field public tvTxtNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 27
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mCallin_ShowKeyboard:Landroid/view/View;

    .line 28
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mCallin_HideKeyboard:Landroid/view/View;

    .line 29
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mCallin_ShowDial:Landroid/view/View;

    .line 30
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mCallin_ShowCall:Landroid/view/View;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mFullSwitch:I

    .line 41
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mBtnVoice:Lcom/lsec/core/frame/ctrl/JButton;

    .line 45
    iput-object p2, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->actBt:Lcom/syu/bt/Act_Bt;

    .line 46
    return-void
.end method

.method private btnClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x5

    const/4 v7, 0x6

    const/4 v5, 0x0

    .line 140
    const/4 v0, 0x1

    .line 142
    .local v0, "bRet":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 143
    .local v3, "id":I
    packed-switch v3, :pswitch_data_0

    .line 233
    :pswitch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    :pswitch_1
    move v1, v0

    .end local v0    # "bRet":Z
    .local v1, "bRet":Z
    move v2, v0

    .line 236
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_1
    return v2

    .line 156
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :pswitch_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    add-int/lit16 v5, v3, -0x27a2

    invoke-virtual {v4, v5}, Lcom/syu/app/ipc/Bt_IpcObj;->cmdNum(I)V

    goto :goto_0

    .line 159
    :pswitch_3
    invoke-static {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    goto :goto_0

    .line 162
    :pswitch_4
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 163
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 165
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncDial()V

    goto :goto_0

    .line 169
    :pswitch_5
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 170
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 172
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_2
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    goto :goto_0

    .line 177
    :pswitch_6
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 178
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 180
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_3
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    if-eqz v4, :cond_5

    .line 181
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    if-eq v4, v6, :cond_4

    .line 182
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    if-eq v4, v7, :cond_4

    .line 183
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_4

    .line 184
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    .line 185
    :cond_4
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 186
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bHFP:Z

    if-eqz v4, :cond_0

    .line 187
    iget-object v4, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "str_note_swith2htp"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_5
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->linkCut()V

    goto :goto_0

    .line 196
    :pswitch_7
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 197
    .restart local v2    # "bRet":I
    goto/16 :goto_1

    .line 199
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_6
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->link()V

    goto/16 :goto_0

    .line 202
    :pswitch_8
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_7

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 203
    .restart local v2    # "bRet":I
    goto/16 :goto_1

    .line 205
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_7
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    if-ne v4, v6, :cond_8

    .line 206
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 207
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bHFP:Z

    if-eqz v4, :cond_0

    .line 208
    iget-object v4, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->actBt:Lcom/syu/bt/Act_Bt;

    .line 209
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "str_note_swith2htp"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-virtual {v4, v7, v5}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 215
    :cond_8
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    goto/16 :goto_0

    .line 218
    :pswitch_9
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_9

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 219
    .restart local v2    # "bRet":I
    goto/16 :goto_1

    .line 221
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_9
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->VoiceSwitch()V

    goto/16 :goto_0

    .line 226
    :pswitch_a
    sput-boolean v5, Lcom/syu/bt/App_Bt;->bShowKeyFlag:Z

    goto/16 :goto_0

    .line 229
    :pswitch_b
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/syu/bt/App_Bt;->isHalfScreenAble()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->setFullScreenMode(I)V

    goto/16 :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x278d
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bPop3rdPhone:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0, p1}, Lcom/syu/bt/page/Page_Callin_ShowCall;->btnClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    .line 131
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_state_using"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0, p1}, Lcom/syu/bt/Act_Bt;->MenuClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public ResponseLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 242
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 250
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 244
    :sswitch_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    goto :goto_0

    .line 247
    :sswitch_1
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->LongClick0()V

    goto :goto_0

    .line 242
    :sswitch_data_0
    .sparse-switch
        0x27a2 -> :sswitch_1
        0x27b3 -> :sswitch_0
    .end sparse-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowCall;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 80
    const/16 v1, 0x278b

    .line 79
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mCallin_ShowKeyboard:Landroid/view/View;

    .line 81
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowCall;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 82
    const/16 v1, 0x278c

    .line 81
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mCallin_HideKeyboard:Landroid/view/View;

    .line 83
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowCall;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 84
    const/16 v1, 0x278a

    .line 83
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mCallin_ShowDial:Landroid/view/View;

    .line 85
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowCall;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 86
    const/16 v1, 0x2789

    .line 85
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mCallin_ShowCall:Landroid/view/View;

    .line 89
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowCall;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 90
    const/16 v1, 0x2785

    .line 89
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mViewCallinFullScreen:Landroid/view/View;

    .line 91
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowCall;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 92
    const/16 v1, 0x2784

    .line 91
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mViewCallinHalfScreen:Landroid/view/View;

    .line 93
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowCall;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 94
    const/16 v1, 0x278f

    .line 93
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mViewShowGps:Landroid/view/View;

    .line 95
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowCall;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 96
    const/16 v1, 0x27b1

    .line 95
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mBtnVoice:Lcom/lsec/core/frame/ctrl/JButton;

    .line 97
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowCall;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 98
    const/16 v1, 0x2933

    .line 97
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/ctrl/SwipeCallingView;

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mSwipeCalling2:Lcom/syu/bt/ctrl/SwipeCallingView;

    .line 99
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mSwipeCalling2:Lcom/syu/bt/ctrl/SwipeCallingView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mSwipeCalling2:Lcom/syu/bt/ctrl/SwipeCallingView;

    new-instance v1, Lcom/syu/bt/page/Page_Callin_ShowCall$1;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/Page_Callin_ShowCall$1;-><init>(Lcom/syu/bt/page/Page_Callin_ShowCall;)V

    invoke-virtual {v0, v1}, Lcom/syu/bt/ctrl/SwipeCallingView;->setOnSwipeEventListner(Lcom/syu/bt/ctrl/SwipeCallingView$setEvent;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 275
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_Callin_ShowCall;I[I[F[Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    .line 74
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->pause()V

    .line 75
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v0, v0, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    if-nez v0, :cond_2

    .line 56
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdRight(I)V

    .line 58
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->updateNotify_Callin()V

    .line 60
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bEnableHalfScreen:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowCall;->switchFull()V

    .line 62
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mViewShowGps:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/App_Bt;->isHalfScreenAble()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mViewShowGps:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mViewShowGps:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public switchFull()V
    .locals 2

    .prologue
    .line 289
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->fytGetState:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/syu/bt/page/Page_Callin_ShowCall$RunnableSwitchFull;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/Page_Callin_ShowCall$RunnableSwitchFull;-><init>(Lcom/syu/bt/page/Page_Callin_ShowCall;)V

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updatePhoneName()V
    .locals 5

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowCall;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 255
    const/16 v4, 0x2763

    .line 254
    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 256
    .local v1, "text":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowCall;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 257
    const/16 v4, 0x276d

    .line 256
    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 258
    .local v2, "text2":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_1

    .line 259
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 260
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 270
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_1
    return-void

    .line 262
    :cond_2
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "strName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 264
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :cond_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v3

    if-nez v3, :cond_0

    .line 266
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateSwipeCallingBtns()V
    .locals 2

    .prologue
    .line 279
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isRing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mSwipeCalling2:Lcom/syu/bt/ctrl/SwipeCallingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/syu/bt/ctrl/SwipeCallingView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mSwipeCalling2:Lcom/syu/bt/ctrl/SwipeCallingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/syu/bt/ctrl/SwipeCallingView;->startCalling(Z)V

    .line 285
    :cond_0
    return-void
.end method

.class public Lcom/syu/bt/page/Page_Callin_ShowDial;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_Callin_ShowDial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/page/Page_Callin_ShowDial$RunnableSwitchFull;
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

    .line 45
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 29
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->mCallin_ShowKeyboard:Landroid/view/View;

    .line 30
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->mCallin_HideKeyboard:Landroid/view/View;

    .line 31
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->mCallin_ShowDial:Landroid/view/View;

    .line 32
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->mCallin_ShowCall:Landroid/view/View;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->mFullSwitch:I

    .line 42
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->mBtnVoice:Lcom/lsec/core/frame/ctrl/JButton;

    .line 46
    iput-object p2, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->actBt:Lcom/syu/bt/Act_Bt;

    .line 47
    return-void
.end method

.method private btnClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x5

    const/4 v7, 0x6

    const/4 v5, 0x0

    .line 122
    const/4 v0, 0x1

    .line 124
    .local v0, "bRet":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 125
    .local v3, "id":I
    packed-switch v3, :pswitch_data_0

    .line 225
    :pswitch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    :pswitch_1
    move v1, v0

    .end local v0    # "bRet":Z
    .local v1, "bRet":Z
    move v2, v0

    .line 228
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_1
    return v2

    .line 138
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :pswitch_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    add-int/lit16 v5, v3, -0x27a2

    invoke-virtual {v4, v5}, Lcom/syu/app/ipc/Bt_IpcObj;->cmdNum(I)V

    goto :goto_0

    .line 141
    :pswitch_3
    invoke-static {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    goto :goto_0

    .line 144
    :pswitch_4
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 145
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 147
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncDial()V

    goto :goto_0

    .line 151
    :pswitch_5
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 152
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 154
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_2
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    goto :goto_0

    .line 159
    :pswitch_6
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 160
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 162
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_3
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    if-eqz v4, :cond_5

    .line 163
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    if-eq v4, v6, :cond_4

    .line 164
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    if-eq v4, v7, :cond_4

    .line 165
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_4

    .line 166
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    .line 167
    :cond_4
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 168
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bHFP:Z

    if-eqz v4, :cond_0

    .line 169
    iget-object v4, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->actBt:Lcom/syu/bt/Act_Bt;

    .line 170
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    .line 171
    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "str_note_swith2htp"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-virtual {v4, v7, v5}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_5
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->linkCut()V

    goto :goto_0

    .line 180
    :pswitch_7
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 181
    .restart local v2    # "bRet":I
    goto/16 :goto_1

    .line 183
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_6
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->link()V

    goto/16 :goto_0

    .line 186
    :pswitch_8
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_7

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 187
    .restart local v2    # "bRet":I
    goto/16 :goto_1

    .line 189
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_7
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    if-ne v4, v6, :cond_8

    .line 190
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 191
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bHFP:Z

    if-eqz v4, :cond_0

    .line 192
    iget-object v4, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->actBt:Lcom/syu/bt/Act_Bt;

    .line 193
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "str_note_swith2htp"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-virtual {v4, v7, v5}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 199
    :cond_8
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    goto/16 :goto_0

    .line 202
    :pswitch_9
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_9

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
    :cond_9
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->VoiceSwitch()V

    goto/16 :goto_0

    .line 217
    :pswitch_a
    sput-boolean v5, Lcom/syu/bt/App_Bt;->bShowKeyFlag:Z

    goto/16 :goto_0

    .line 221
    :pswitch_b
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/syu/bt/App_Bt;->isHalfScreenAble()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->setFullScreenMode(I)V

    goto/16 :goto_0

    .line 125
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
    .line 102
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bPop3rdPhone:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    if-nez v0, :cond_0

    .line 108
    invoke-direct {p0, p1}, Lcom/syu/bt/page/Page_Callin_ShowDial;->btnClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    .line 113
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_state_using"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0, p1}, Lcom/syu/bt/Act_Bt;->MenuClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public ResponseLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 234
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 242
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 236
    :sswitch_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    goto :goto_0

    .line 239
    :sswitch_1
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->LongClick0()V

    goto :goto_0

    .line 234
    :sswitch_data_0
    .sparse-switch
        0x27a2 -> :sswitch_1
        0x27b3 -> :sswitch_0
    .end sparse-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowDial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 82
    const/16 v1, 0x278b

    .line 81
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->mCallin_ShowKeyboard:Landroid/view/View;

    .line 83
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowDial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 84
    const/16 v1, 0x278c

    .line 83
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->mCallin_HideKeyboard:Landroid/view/View;

    .line 85
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowDial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 86
    const/16 v1, 0x278a

    .line 85
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->mCallin_ShowDial:Landroid/view/View;

    .line 87
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowDial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 88
    const/16 v1, 0x2789

    .line 87
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->mCallin_ShowCall:Landroid/view/View;

    .line 90
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowDial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 91
    const/16 v1, 0x2785

    .line 90
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->mViewCallinFullScreen:Landroid/view/View;

    .line 92
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowDial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 93
    const/16 v1, 0x2784

    .line 92
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->mViewCallinHalfScreen:Landroid/view/View;

    .line 94
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowDial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 95
    const/16 v1, 0x278f

    .line 94
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->mViewShowGps:Landroid/view/View;

    .line 96
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowDial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 97
    const/16 v1, 0x27b1

    .line 96
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->mBtnVoice:Lcom/lsec/core/frame/ctrl/JButton;

    .line 98
    return-void
.end method

.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_Callin_ShowDial;I[I[F[Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->pause()V

    .line 77
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v0, v0, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->updateNotify_Callin()V

    .line 61
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bEnableHalfScreen:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowDial;->switchFull()V

    .line 64
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->mViewShowGps:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/App_Bt;->isHalfScreenAble()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->mViewShowGps:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowDial;->mViewShowGps:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public switchFull()V
    .locals 2

    .prologue
    .line 272
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->fytGetState:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/syu/bt/page/Page_Callin_ShowDial$RunnableSwitchFull;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/Page_Callin_ShowDial$RunnableSwitchFull;-><init>(Lcom/syu/bt/page/Page_Callin_ShowDial;)V

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updatePhoneName()V
    .locals 5

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowDial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 247
    const/16 v4, 0x2763

    .line 246
    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 248
    .local v1, "text":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowDial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 249
    const/16 v4, 0x276d

    .line 248
    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 250
    .local v2, "text2":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_1

    .line 251
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 263
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_1
    return-void

    .line 254
    :cond_2
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "strName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 257
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 258
    :cond_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v3

    if-nez v3, :cond_0

    .line 259
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.class public Lcom/syu/bt/page/Page_Callin_ShowKey;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_Callin_ShowKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;
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

.field page_Callin:Lcom/syu/bt/page/Page_Callin;

.field public tvTxtName:Landroid/widget/TextView;

.field public tvTxtNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 29
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mCallin_ShowKeyboard:Landroid/view/View;

    .line 30
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mCallin_HideKeyboard:Landroid/view/View;

    .line 31
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mCallin_ShowDial:Landroid/view/View;

    .line 32
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mCallin_ShowCall:Landroid/view/View;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mFullSwitch:I

    .line 42
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mBtnVoice:Lcom/lsec/core/frame/ctrl/JButton;

    .line 47
    iput-object p2, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->actBt:Lcom/syu/bt/Act_Bt;

    .line 48
    return-void
.end method

.method private btnClick(Landroid/view/View;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v9, 0x6

    .line 149
    const/4 v0, 0x1

    .line 151
    .local v0, "bRet":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 152
    .local v3, "id":I
    packed-switch v3, :pswitch_data_0

    .line 251
    :pswitch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    move v1, v0

    .end local v0    # "bRet":Z
    .local v1, "bRet":Z
    move v2, v0

    .line 254
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_1
    return v2

    .line 165
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :pswitch_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    add-int/lit16 v7, v3, -0x27a2

    invoke-virtual {v6, v7}, Lcom/syu/app/ipc/Bt_IpcObj;->cmdNum(I)V

    goto :goto_0

    .line 168
    :pswitch_2
    invoke-static {v7}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    goto :goto_0

    .line 171
    :pswitch_3
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 172
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 174
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v6}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncDial()V

    goto :goto_0

    .line 178
    :pswitch_4
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 179
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 181
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_2
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 182
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    goto :goto_0

    .line 186
    :pswitch_5
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-eqz v6, :cond_3

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 187
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 189
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_3
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x9

    aget v6, v6, v7

    if-eqz v6, :cond_5

    .line 190
    sget v6, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    if-eq v6, v8, :cond_4

    .line 191
    sget v6, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    if-eq v6, v9, :cond_4

    .line 192
    sget v6, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v7, 0x7

    if-eq v6, v7, :cond_4

    .line 193
    sget v6, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_5

    .line 194
    :cond_4
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 195
    sget-boolean v6, Lcom/syu/bt/App_Bt;->bHFP:Z

    if-eqz v6, :cond_0

    .line 196
    iget-object v6, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->actBt:Lcom/syu/bt/Act_Bt;

    .line 197
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    .line 198
    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "str_note_swith2htp"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 196
    invoke-virtual {v6, v9, v7}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_5
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->linkCut()V

    goto :goto_0

    .line 207
    :pswitch_6
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-eqz v6, :cond_6

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 208
    .restart local v2    # "bRet":I
    goto/16 :goto_1

    .line 210
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_6
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->link()V

    goto/16 :goto_0

    .line 213
    :pswitch_7
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-eqz v6, :cond_7

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 214
    .restart local v2    # "bRet":I
    goto/16 :goto_1

    .line 216
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_7
    sget v6, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    if-ne v6, v8, :cond_8

    .line 217
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 218
    sget-boolean v6, Lcom/syu/bt/App_Bt;->bHFP:Z

    if-eqz v6, :cond_0

    .line 219
    iget-object v6, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->actBt:Lcom/syu/bt/Act_Bt;

    .line 220
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "str_note_swith2htp"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 219
    invoke-virtual {v6, v9, v7}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :cond_8
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    goto/16 :goto_0

    .line 229
    :pswitch_8
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-eqz v6, :cond_9

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 230
    .restart local v2    # "bRet":I
    goto/16 :goto_1

    .line 232
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_9
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->VoiceSwitch()V

    goto/16 :goto_0

    .line 235
    :pswitch_9
    iget-object v6, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v6, v6, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v6, v6, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v6}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v4

    .line 236
    .local v4, "idPage":I
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 238
    :pswitch_a
    iget-object v6, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v6, v6, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v6, v6, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    .line 239
    invoke-virtual {v6}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v5

    .line 238
    check-cast v5, Lcom/syu/bt/page/Page_Callin;

    .line 240
    .local v5, "page_Callin":Lcom/syu/bt/page/Page_Callin;
    if-eqz v5, :cond_0

    .line 241
    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/syu/bt/page/Page_Callin;->Switch2Keyboard(I)V

    goto/16 :goto_0

    .line 247
    .end local v4    # "idPage":I
    .end local v5    # "page_Callin":Lcom/syu/bt/page/Page_Callin;
    :pswitch_b
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    invoke-virtual {v6}, Lcom/syu/bt/App_Bt;->isHalfScreenAble()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 248
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/syu/bt/App_Bt;->setFullScreenMode(I)V

    goto/16 :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x278e
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 236
    :pswitch_data_1
    .packed-switch 0x2730
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bPop3rdPhone:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lcom/syu/bt/page/Page_Callin_ShowKey;->btnClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    .line 140
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_state_using"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0, p1}, Lcom/syu/bt/Act_Bt;->MenuClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public ResponseLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 260
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 268
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 262
    :sswitch_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    goto :goto_0

    .line 265
    :sswitch_1
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->LongClick0()V

    goto :goto_0

    .line 260
    :sswitch_data_0
    .sparse-switch
        0x27a2 -> :sswitch_1
        0x27b3 -> :sswitch_0
    .end sparse-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowKey;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 114
    const/16 v1, 0x2785

    .line 113
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mViewCallinFullScreen:Landroid/view/View;

    .line 115
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowKey;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 116
    const/16 v1, 0x2784

    .line 115
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mViewCallinHalfScreen:Landroid/view/View;

    .line 117
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowKey;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 118
    const/16 v1, 0x278f

    .line 117
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mViewShowGps:Landroid/view/View;

    .line 119
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowKey;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 120
    const/16 v1, 0x27b1

    .line 119
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mBtnVoice:Lcom/lsec/core/frame/ctrl/JButton;

    .line 125
    return-void
.end method

.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 335
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_Callin_ShowKey;I[I[F[Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    .line 96
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->pause()V

    .line 97
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v0, v0, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    if-nez v0, :cond_2

    .line 60
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdRight(I)V

    .line 62
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->updateNotify_Callin()V

    .line 64
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-boolean v0, v0, Lcom/syu/bt/App_Bt;->bPopBtRingSet:Z

    if-eqz v0, :cond_3

    .line 65
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/syu/bt/App_Bt;->popBtRingSet(Z)V

    .line 67
    :cond_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bEnableHalfScreen:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowKey;->switchFull()V

    .line 71
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mViewShowGps:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/App_Bt;->isHalfScreenAble()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mViewShowGps:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowKey;->mViewShowGps:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public switchFull()V
    .locals 2

    .prologue
    .line 342
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->fytGetState:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 345
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/Page_Callin_ShowKey$RunnableSwitchFull;-><init>(Lcom/syu/bt/page/Page_Callin_ShowKey;)V

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updatePhoneName()V
    .locals 5

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowKey;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 315
    const/16 v4, 0x2763

    .line 314
    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 316
    .local v1, "text":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin_ShowKey;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 317
    const/16 v4, 0x276d

    .line 316
    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 318
    .local v2, "text2":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_1

    .line 319
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 330
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :cond_1
    return-void

    .line 322
    :cond_2
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "strName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 324
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 325
    :cond_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v3

    if-nez v3, :cond_0

    .line 326
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

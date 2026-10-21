.class public Lcom/syu/bt/page/Page_Callin;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_Callin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;
    }
.end annotation


# static fields
.field public static final KEYBOARD_InCall:I = 0x2

.field public static final KEYBOARD_SmallKeyBoard:I = 0x4

.field public static final KEYBOARD_Talking:I = 0x3

.field public static final KEYBORAD_Dial:I = 0x1


# instance fields
.field public actBt:Lcom/syu/bt/Act_Bt;

.field mBtnVoice:Lcom/lsec/core/frame/ctrl/JButton;

.field mCallin_HideKeyboard:Landroid/view/View;

.field mCallin_ShowCall:Landroid/view/View;

.field mCallin_ShowDial:Landroid/view/View;

.field mCallin_ShowKeyboard:Landroid/view/View;

.field public mSwipeCalling:Lcom/syu/bt/ctrl/SwipeCallingView;

.field mViewCallinFullScreen:Landroid/view/View;

.field mViewCallinHalfScreen:Landroid/view/View;

.field mViewShowGps:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 38
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowKeyboard:Landroid/view/View;

    .line 39
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_HideKeyboard:Landroid/view/View;

    .line 40
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowDial:Landroid/view/View;

    .line 41
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowCall:Landroid/view/View;

    .line 47
    iput-object v1, p0, Lcom/syu/bt/page/Page_Callin;->mBtnVoice:Lcom/lsec/core/frame/ctrl/JButton;

    .line 52
    iput-object p2, p0, Lcom/syu/bt/page/Page_Callin;->actBt:Lcom/syu/bt/Act_Bt;

    .line 53
    return-void
.end method

.method private btnClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x9

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/4 v5, 0x0

    .line 134
    const/4 v0, 0x1

    .line 136
    .local v0, "bRet":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 137
    .local v3, "id":I
    sparse-switch v3, :sswitch_data_0

    .line 243
    const/4 v0, 0x0

    :cond_0
    :goto_0
    move v1, v0

    .end local v0    # "bRet":Z
    .local v1, "bRet":Z
    move v2, v0

    .line 246
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_1
    return v2

    .line 150
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :sswitch_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    add-int/lit16 v5, v3, -0x27a2

    invoke-virtual {v4, v5}, Lcom/syu/app/ipc/Bt_IpcObj;->cmdNum(I)V

    goto :goto_0

    .line 153
    :sswitch_1
    invoke-static {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    goto :goto_0

    .line 156
    :sswitch_2
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 157
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 159
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncDial()V

    goto :goto_0

    .line 163
    :sswitch_3
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 164
    .restart local v2    # "bRet":I
    goto :goto_1

    .line 166
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_2
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    goto :goto_0

    .line 171
    :sswitch_4
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_3

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
    :cond_3
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v4, v4, v8

    if-eqz v4, :cond_5

    .line 175
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    if-eq v4, v6, :cond_4

    .line 176
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    if-eq v4, v7, :cond_4

    .line 177
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_4

    .line 178
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    .line 179
    :cond_4
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 180
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bHFP:Z

    if-eqz v4, :cond_0

    .line 181
    iget-object v4, p0, Lcom/syu/bt/page/Page_Callin;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "str_note_swith2htp"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_5
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->linkCut()V

    goto :goto_0

    .line 190
    :sswitch_5
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 191
    .restart local v2    # "bRet":I
    goto/16 :goto_1

    .line 193
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_6
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->link()V

    goto/16 :goto_0

    .line 196
    :sswitch_6
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_7

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
    :cond_7
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    if-ne v4, v6, :cond_8

    .line 200
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 201
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bHFP:Z

    if-eqz v4, :cond_0

    .line 202
    iget-object v4, p0, Lcom/syu/bt/page/Page_Callin;->actBt:Lcom/syu/bt/Act_Bt;

    .line 203
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "str_note_swith2htp"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-virtual {v4, v7, v5}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 209
    :cond_8
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    goto/16 :goto_0

    .line 212
    :sswitch_7
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_9

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 213
    .restart local v2    # "bRet":I
    goto/16 :goto_1

    .line 215
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_9
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->VoiceSwitch()V

    goto/16 :goto_0

    .line 218
    :sswitch_8
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/syu/bt/page/Page_Callin;->Switch2Keyboard(I)V

    goto/16 :goto_0

    .line 221
    :sswitch_9
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v4, v4, v8

    packed-switch v4, :pswitch_data_0

    .line 232
    :goto_2
    sput-boolean v5, Lcom/syu/bt/App_Bt;->bShowKeyFlag:Z

    goto/16 :goto_0

    .line 223
    :pswitch_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/syu/bt/page/Page_Callin;->Switch2Keyboard(I)V

    goto :goto_2

    .line 226
    :pswitch_1
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/syu/bt/page/Page_Callin;->Switch2Keyboard(I)V

    goto :goto_2

    .line 229
    :pswitch_2
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/syu/bt/page/Page_Callin;->Switch2Keyboard(I)V

    goto :goto_2

    .line 235
    :sswitch_a
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/syu/bt/App_Bt;->isHalfScreenAble()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->setFullScreenMode(I)V

    goto/16 :goto_0

    .line 240
    :sswitch_b
    iget-object v4, p0, Lcom/syu/bt/page/Page_Callin;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v4}, Lcom/syu/bt/Act_Bt;->Func_Back()Z

    goto/16 :goto_0

    .line 137
    nop

    :sswitch_data_0
    .sparse-switch
        0x278d -> :sswitch_8
        0x278e -> :sswitch_9
        0x278f -> :sswitch_a
        0x2793 -> :sswitch_2
        0x2794 -> :sswitch_3
        0x27a2 -> :sswitch_0
        0x27a3 -> :sswitch_0
        0x27a4 -> :sswitch_0
        0x27a5 -> :sswitch_0
        0x27a6 -> :sswitch_0
        0x27a7 -> :sswitch_0
        0x27a8 -> :sswitch_0
        0x27a9 -> :sswitch_0
        0x27aa -> :sswitch_0
        0x27ab -> :sswitch_0
        0x27ac -> :sswitch_0
        0x27ad -> :sswitch_0
        0x27ae -> :sswitch_4
        0x27af -> :sswitch_5
        0x27b0 -> :sswitch_6
        0x27b1 -> :sswitch_7
        0x27b3 -> :sswitch_1
        0x2937 -> :sswitch_b
    .end sparse-switch

    .line 221
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bPop3rdPhone:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lcom/syu/bt/page/Page_Callin;->btnClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_state_using"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0, p1}, Lcom/syu/bt/Act_Bt;->MenuClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public ResponseLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 252
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 260
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 254
    :sswitch_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    goto :goto_0

    .line 257
    :sswitch_1
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->LongClick0()V

    goto :goto_0

    .line 252
    :sswitch_data_0
    .sparse-switch
        0x27a2 -> :sswitch_1
        0x27b3 -> :sswitch_0
    .end sparse-switch
.end method

.method public Switch2Keyboard(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 264
    packed-switch p1, :pswitch_data_0

    .line 323
    :cond_0
    :goto_0
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v1, 0x37

    if-ne v0, v1, :cond_1

    .line 324
    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    .line 325
    const/4 v0, 0x1

    sput-boolean v0, Lcom/syu/bt/App_Bt;->bCallinHideKeyTextFlag:Z

    .line 329
    :cond_1
    :goto_1
    return-void

    .line 266
    :pswitch_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowDial:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowDial:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowCall:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowCall:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowKeyboard:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowKeyboard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    :cond_4
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_HideKeyboard:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_HideKeyboard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 280
    :pswitch_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowDial:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 281
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowDial:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :cond_5
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowCall:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 284
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowCall:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 286
    :cond_6
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowKeyboard:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 287
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowKeyboard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    :cond_7
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_HideKeyboard:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_HideKeyboard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 294
    :pswitch_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowDial:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 295
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowDial:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    :cond_8
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowCall:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 298
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowCall:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    :cond_9
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowKeyboard:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 301
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowKeyboard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :cond_a
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_HideKeyboard:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_HideKeyboard:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 308
    :pswitch_3
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowDial:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 309
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowDial:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :cond_b
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowCall:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 312
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowCall:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    :cond_c
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowKeyboard:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 315
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowKeyboard:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    :cond_d
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_HideKeyboard:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_HideKeyboard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 327
    :cond_e
    sput-boolean v2, Lcom/syu/bt/App_Bt;->bCallinHideKeyTextFlag:Z

    goto/16 :goto_1

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 97
    const/16 v1, 0x2736

    .line 96
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowKeyboard:Landroid/view/View;

    .line 98
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 99
    const/16 v1, 0x2737

    .line 98
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_HideKeyboard:Landroid/view/View;

    .line 100
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 101
    const/16 v1, 0x2734

    .line 100
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowDial:Landroid/view/View;

    .line 102
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 103
    const/16 v1, 0x2735

    .line 102
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mCallin_ShowCall:Landroid/view/View;

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/syu/bt/page/Page_Callin;->Switch2Keyboard(I)V

    .line 105
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 106
    const/16 v1, 0x2785

    .line 105
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mViewCallinFullScreen:Landroid/view/View;

    .line 107
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 108
    const/16 v1, 0x2784

    .line 107
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mViewCallinHalfScreen:Landroid/view/View;

    .line 109
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 110
    const/16 v1, 0x278f

    .line 109
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Callin;->mViewShowGps:Landroid/view/View;

    .line 111
    return-void
.end method

.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 349
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_Callin;I[I[F[Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    .line 91
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->pause()V

    .line 92
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    iget-object v1, p0, Lcom/syu/bt/page/Page_Callin;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v1, v1, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-nez v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    if-nez v1, :cond_2

    .line 63
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    const/16 v2, 0x2713

    invoke-virtual {v1, v2}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdRight(I)V

    .line 65
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->updateNotify_Callin()V

    .line 66
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-boolean v1, v1, Lcom/syu/bt/App_Bt;->bPopBtRingSet:Z

    if-eqz v1, :cond_3

    .line 67
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/syu/bt/App_Bt;->popBtRingSet(Z)V

    .line 69
    :cond_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-boolean v1, Lcom/syu/bt/App_Bt;->bEnableHalfScreen:Z

    if-eqz v1, :cond_4

    .line 70
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin;->switchFull()V

    .line 71
    iget-object v1, p0, Lcom/syu/bt/page/Page_Callin;->mViewShowGps:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 72
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/App_Bt;->isHalfScreenAble()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 73
    iget-object v1, p0, Lcom/syu/bt/page/Page_Callin;->mViewShowGps:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_4
    :goto_1
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bDelMenuFromBtAv:Z

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/syu/bt/page/Page_Callin;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JPage;

    .line 81
    .local v0, "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JPage;->setVisibility(I)V

    goto :goto_0

    .line 75
    .end local v0    # "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_5
    iget-object v1, p0, Lcom/syu/bt/page/Page_Callin;->mViewShowGps:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public switchFull()V
    .locals 2

    .prologue
    .line 353
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->fytGetState:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 356
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/Page_Callin$RunnableSwitchFull;-><init>(Lcom/syu/bt/page/Page_Callin;)V

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updatePhoneName()V
    .locals 8

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v4, 0x2763

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 333
    .local v1, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_0

    .line 334
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :goto_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Callin;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v4, 0x276d

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 343
    .local v2, "text2":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v2, :cond_0

    .line 344
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 346
    .end local v2    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    :cond_0
    return-void

    .line 337
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v4, "Thread-GetNameByNumber"

    new-instance v5, Lcom/syu/bt/runnable/Runnable_getNameByNumber;

    const-string v6, ""

    const/4 v7, 0x1

    invoke-direct {v5, v0, v1, v6, v7}, Lcom/syu/bt/runnable/Runnable_getNameByNumber;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Z)V

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-static {v3, v4, v5, v6, v7}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto :goto_0
.end method

.class public Lcom/syu/bt/page/Page_Menu;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_Menu.java"


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;

.field bHideScroll:Z

.field public bShowScroll:Lcom/lsec/core/frame/ctrl/JButton;

.field color_day:[I

.field color_night:[I

.field endAni:Landroid/view/animation/Animation;

.field public mRunnable_HideMenuButton:Ljava/lang/Runnable;

.field public mScroll:Lcom/lsec/core/frame/ctrl/JScrollView;

.field private nightBtn:[I

.field private nightText:[I

.field private nightView:[I

.field startAni:Landroid/view/animation/Animation;

.field public tvTxtName:Lcom/lsec/core/frame/ctrl/JText;

.field public tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

.field public vLine_one:Lcom/lsec/core/frame/ctrl/JView;

.field public vLine_three:Lcom/lsec/core/frame/ctrl/JView;

.field public vLine_two:Lcom/lsec/core/frame/ctrl/JView;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 7
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    const/16 v6, 0x27

    const/4 v1, 0x7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 49
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Menu;->nightBtn:[I

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 51
    iput-object v0, p0, Lcom/syu/bt/page/Page_Menu;->nightText:[I

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    .line 53
    iput-object v0, p0, Lcom/syu/bt/page/Page_Menu;->nightView:[I

    .line 357
    new-instance v0, Lcom/syu/bt/page/Page_Menu$1;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Menu$1;-><init>(Lcom/syu/bt/page/Page_Menu;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Menu;->mRunnable_HideMenuButton:Ljava/lang/Runnable;

    .line 427
    new-array v0, v5, [I

    const/high16 v1, -0x1000000

    aput v1, v0, v3

    const/16 v1, 0xf9

    const/16 v2, 0xd3

    invoke-static {v6, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v4

    iput-object v0, p0, Lcom/syu/bt/page/Page_Menu;->color_day:[I

    .line 428
    new-array v0, v5, [I

    const/4 v1, -0x1

    aput v1, v0, v3

    const/16 v1, 0xf9

    const/16 v2, 0xd3

    invoke-static {v6, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v4

    iput-object v0, p0, Lcom/syu/bt/page/Page_Menu;->color_night:[I

    .line 161
    iput-object p2, p0, Lcom/syu/bt/page/Page_Menu;->actBt:Lcom/syu/bt/Act_Bt;

    .line 162
    return-void

    .line 49
    :array_0
    .array-data 4
        0x2744
        0x2746
        0x274c
        0x2745
        0x274e
        0x274d
        0x274c
    .end array-data

    .line 50
    :array_1
    .array-data 4
        0x2747
        0x2749
        0x2748
        0x274a
        0x274b
    .end array-data

    .line 52
    :array_2
    .array-data 4
        0x273d
        0x273e
        0x273f
        0x2740
        0x2741
        0x2742
        0x2743
    .end array-data
.end method

.method private btnClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 229
    const/4 v0, 0x1

    .line 230
    .local v0, "bRet":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 231
    .local v1, "id":I
    sparse-switch v1, :sswitch_data_0

    .line 282
    const/4 v0, 0x0

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 233
    :sswitch_0
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->filterDemand_DZSJ()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    invoke-static {v6}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    goto :goto_0

    .line 237
    :sswitch_1
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v3

    if-nez v3, :cond_0

    .line 240
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncDial()V

    goto :goto_0

    .line 244
    :sswitch_2
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    goto :goto_0

    .line 252
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 253
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v3, p0, Lcom/syu/bt/page/Page_Menu;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v3, v3, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v3, v2}, Lcom/lsec/core/frame/app/MyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 260
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_4
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v3

    .line 262
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v5, "bt_state_using"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-virtual {v3, v4}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 266
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "com.syu.music.btav"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v3, "com.syu.music"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v3, p0, Lcom/syu/bt/page/Page_Menu;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v3, v3, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v3, v2}, Lcom/lsec/core/frame/app/MyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 272
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_5
    iget-object v3, p0, Lcom/syu/bt/page/Page_Menu;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v3, v3, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    new-instance v4, Landroid/view/KeyEvent;

    .line 273
    const/4 v5, 0x4

    invoke-direct {v4, v6, v5}, Landroid/view/KeyEvent;-><init>(II)V

    .line 272
    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 276
    :sswitch_6
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->setStandBy()V

    goto/16 :goto_0

    .line 279
    :sswitch_7
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Menu;->ShowMenuButton()V

    goto/16 :goto_0

    .line 231
    :sswitch_data_0
    .sparse-switch
        0x2750 -> :sswitch_3
        0x2751 -> :sswitch_4
        0x2752 -> :sswitch_5
        0x2756 -> :sswitch_6
        0x2759 -> :sswitch_7
        0x2793 -> :sswitch_1
        0x2794 -> :sswitch_2
        0x27b3 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZHTDConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->mRunnable_HideMenuButton:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 196
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/syu/bt/page/Page_Menu;->mRunnable_HideMenuButton:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 199
    :cond_0
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 202
    :cond_2
    invoke-direct {p0, p1}, Lcom/syu/bt/page/Page_Menu;->btnClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
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

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0, p1}, Lcom/syu/bt/Act_Bt;->MenuClick(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public ResponseLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 219
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 225
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 221
    :pswitch_0
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->filterDemand_DZSJ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x27b3
        :pswitch_0
    .end packed-switch
.end method

.method public ShowMenuButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->bShowScroll:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->bShowScroll:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->vLine_three:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->vLine_three:Lcom/lsec/core/frame/ctrl/JView;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->vLine_two:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->vLine_two:Lcom/lsec/core/frame/ctrl/JView;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->mScroll:Lcom/lsec/core/frame/ctrl/JScrollView;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JScrollView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 386
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->mScroll:Lcom/lsec/core/frame/ctrl/JScrollView;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JScrollView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->vLine_one:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v0, :cond_3

    .line 388
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->vLine_one:Lcom/lsec/core/frame/ctrl/JView;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 390
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->mScroll:Lcom/lsec/core/frame/ctrl/JScrollView;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Menu;->startAni:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 391
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->vLine_one:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v0, :cond_4

    .line 392
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->vLine_one:Lcom/lsec/core/frame/ctrl/JView;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Menu;->startAni:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 394
    :cond_4
    return-void
.end method

.method public getBtnId()I
    .locals 3

    .prologue
    .line 488
    const-string v0, "gdyy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " getBtnId sPage_Current = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    packed-switch v0, :pswitch_data_0

    .line 504
    :pswitch_0
    const/16 v0, 0x2713

    :goto_0
    return v0

    .line 491
    :pswitch_1
    const/16 v0, 0x2744

    goto :goto_0

    .line 493
    :pswitch_2
    const/16 v0, 0x2745

    goto :goto_0

    .line 495
    :pswitch_3
    const/16 v0, 0x2746

    goto :goto_0

    .line 497
    :pswitch_4
    const/16 v0, 0x274c

    goto :goto_0

    .line 499
    :pswitch_5
    const/16 v0, 0x274d

    goto :goto_0

    .line 501
    :pswitch_6
    const/16 v0, 0x274e

    goto :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x2713
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public init()V
    .locals 17

    .prologue
    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    const/16 v14, 0x275e

    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v11

    .line 58
    .local v11, "view_40":Landroid/view/View;
    if-eqz v11, :cond_0

    .line 59
    sget v13, Lcom/syu/bt/App_Bt;->iDensity:I

    const/16 v14, 0xf0

    if-lt v13, v14, :cond_b

    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    .line 62
    const/16 v14, 0x2758

    .line 61
    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lsec/core/frame/ctrl/JScrollView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/syu/bt/page/Page_Menu;->mScroll:Lcom/lsec/core/frame/ctrl/JScrollView;

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    .line 64
    const/16 v14, 0x2759

    .line 63
    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lsec/core/frame/ctrl/JButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/syu/bt/page/Page_Menu;->bShowScroll:Lcom/lsec/core/frame/ctrl/JButton;

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    .line 67
    const/16 v14, 0x275a

    .line 66
    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lsec/core/frame/ctrl/JView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/syu/bt/page/Page_Menu;->vLine_one:Lcom/lsec/core/frame/ctrl/JView;

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    .line 69
    const/16 v14, 0x275b

    .line 68
    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lsec/core/frame/ctrl/JView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/syu/bt/page/Page_Menu;->vLine_two:Lcom/lsec/core/frame/ctrl/JView;

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    .line 71
    const/16 v14, 0x275c

    .line 70
    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lsec/core/frame/ctrl/JView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/syu/bt/page/Page_Menu;->vLine_three:Lcom/lsec/core/frame/ctrl/JView;

    .line 74
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/page/Page_Menu;->vLine_two:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v13, :cond_1

    .line 77
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/page/Page_Menu;->vLine_two:Lcom/lsec/core/frame/ctrl/JView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 80
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/page/Page_Menu;->mScroll:Lcom/lsec/core/frame/ctrl/JScrollView;

    if-eqz v13, :cond_2

    .line 81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/page/Page_Menu;->mScroll:Lcom/lsec/core/frame/ctrl/JScrollView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JScrollView;->setVisibility(I)V

    .line 82
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/page/Page_Menu;->bShowScroll:Lcom/lsec/core/frame/ctrl/JButton;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 85
    :cond_2
    sget-object v13, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v14, "yl_dn1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    const/16 v14, 0x275d

    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v12

    .line 87
    .local v12, "view_av":Landroid/view/View;
    if-eqz v12, :cond_3

    sget v13, Lcom/lsec/core/frame/app/MyApplication;->mIdPlatForm:I

    const/16 v14, 0x3e

    if-ne v13, v14, :cond_3

    .line 88
    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_3
    sget v13, Lcom/syu/bt/App_Bt;->mColorType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/syu/bt/page/Page_Menu;->setDayOrNight(I)V

    .line 91
    .end local v12    # "view_av":Landroid/view/View;
    :cond_4
    sget-object v13, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v14, "SYU-XN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 92
    sget v13, Lcom/syu/bt/App_Bt;->mColorType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/syu/bt/page/Page_Menu;->setDayOrNight(I)V

    .line 94
    :cond_5
    sget-object v13, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v14, "BT_23NEW"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 95
    const-string v13, "gdy3"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Page_Menu init  U_PHONE_STATE = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v16, 0x9

    aget v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mIdPlatForm = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/lsec/core/frame/app/MyApplication;->mIdPlatForm:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    const/16 v14, 0x2746

    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lsec/core/frame/ctrl/JButton;

    .line 97
    .local v7, "history":Lcom/lsec/core/frame/ctrl/JButton;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    const/16 v14, 0x2745

    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JButton;

    .line 98
    .local v3, "contact":Lcom/lsec/core/frame/ctrl/JButton;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    const/16 v14, 0x2744

    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JButton;

    .line 99
    .local v5, "dial":Lcom/lsec/core/frame/ctrl/JButton;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    const/16 v14, 0x274c

    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 101
    .local v1, "btav":Lcom/lsec/core/frame/ctrl/JButton;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    const/16 v14, 0x2749

    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JText;

    .line 102
    .local v8, "history_Txt":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    const/16 v14, 0x2748

    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    .line 103
    .local v4, "contact_Txt":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    const/16 v14, 0x2747

    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JText;

    .line 104
    .local v6, "dial_Txt":Lcom/lsec/core/frame/ctrl/JText;
    sget-object v13, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    const/4 v14, 0x1

    if-eq v13, v14, :cond_c

    sget-object v13, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    if-eqz v13, :cond_c

    .line 105
    sget-object v13, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    const/4 v14, 0x6

    if-eq v13, v14, :cond_c

    .line 104
    const/4 v13, 0x1

    :goto_1
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 106
    .local v9, "isConnect":Ljava/lang/Boolean;
    const-string v13, "gdy16"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, " 00 Page_Menu isConnect = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  ** U_PHONE_STATE = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v16, 0x9

    aget v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v13, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v14, "yl_dn1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 109
    sget v13, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v13, :cond_d

    const/4 v2, -0x1

    .line 110
    .local v2, "color":I
    :goto_2
    if-eqz v7, :cond_6

    .line 111
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v7, v13}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 112
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_e

    move v13, v2

    :goto_3
    invoke-virtual {v7, v13}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 114
    :cond_6
    if-eqz v3, :cond_7

    .line 115
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v3, v13}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 116
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_f

    move v13, v2

    :goto_4
    invoke-virtual {v3, v13}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 118
    :cond_7
    if-eqz v5, :cond_8

    .line 119
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v5, v13}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 120
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_10

    move v13, v2

    :goto_5
    invoke-virtual {v5, v13}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 123
    :cond_8
    if-eqz v1, :cond_9

    .line 124
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v1, v13}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 125
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_11

    .end local v2    # "color":I
    :goto_6
    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 149
    .end local v1    # "btav":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v3    # "contact":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v4    # "contact_Txt":Lcom/lsec/core/frame/ctrl/JText;
    .end local v5    # "dial":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v6    # "dial_Txt":Lcom/lsec/core/frame/ctrl/JText;
    .end local v7    # "history":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v8    # "history_Txt":Lcom/lsec/core/frame/ctrl/JText;
    .end local v9    # "isConnect":Ljava/lang/Boolean;
    :cond_9
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    const/16 v14, 0x274c

    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v10

    .line 150
    .local v10, "viewMenuAv":Landroid/view/View;
    if-nez v10, :cond_a

    .line 151
    const/4 v13, 0x1

    sput-boolean v13, Lcom/syu/bt/App_Bt;->bDelMenuFromBtAv:Z

    .line 153
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Menu;->setAnimation()V

    .line 155
    sget v13, Lcom/syu/bt/App_Bt;->color:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/syu/bt/page/Page_Menu;->setButtonColor(I)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Menu;->initTypeface()V

    .line 157
    return-void

    .line 59
    .end local v10    # "viewMenuAv":Landroid/view/View;
    :cond_b
    const/16 v13, 0x8

    goto/16 :goto_0

    .line 104
    .restart local v1    # "btav":Lcom/lsec/core/frame/ctrl/JButton;
    .restart local v3    # "contact":Lcom/lsec/core/frame/ctrl/JButton;
    .restart local v4    # "contact_Txt":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v5    # "dial":Lcom/lsec/core/frame/ctrl/JButton;
    .restart local v6    # "dial_Txt":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v7    # "history":Lcom/lsec/core/frame/ctrl/JButton;
    .restart local v8    # "history_Txt":Lcom/lsec/core/frame/ctrl/JText;
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 109
    .restart local v9    # "isConnect":Ljava/lang/Boolean;
    :cond_d
    const/high16 v2, -0x1000000

    goto :goto_2

    .line 112
    .restart local v2    # "color":I
    :cond_e
    const v13, -0x777778

    goto :goto_3

    .line 116
    :cond_f
    const v13, -0x777778

    goto :goto_4

    .line 120
    :cond_10
    const v13, -0x777778

    goto :goto_5

    .line 125
    :cond_11
    const v2, -0x777778

    goto :goto_6

    .line 130
    .end local v2    # "color":I
    :cond_12
    const/4 v2, -0x1

    .line 131
    .restart local v2    # "color":I
    if-eqz v8, :cond_13

    .line 132
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_18

    move v13, v2

    :goto_8
    invoke-virtual {v8, v13}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 134
    :cond_13
    if-eqz v4, :cond_14

    .line 135
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_19

    move v13, v2

    :goto_9
    invoke-virtual {v4, v13}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 137
    :cond_14
    if-eqz v6, :cond_15

    .line 138
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_1a

    .end local v2    # "color":I
    :goto_a
    invoke-virtual {v6, v2}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 140
    :cond_15
    if-eqz v7, :cond_16

    .line 141
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v7, v13}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 142
    :cond_16
    if-eqz v3, :cond_17

    .line 143
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v3, v13}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 144
    :cond_17
    if-eqz v5, :cond_9

    .line 145
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v5, v13}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    goto :goto_7

    .line 132
    .restart local v2    # "color":I
    :cond_18
    const v13, -0x777778

    goto :goto_8

    .line 135
    :cond_19
    const v13, -0x777778

    goto :goto_9

    .line 138
    :cond_1a
    const v2, -0x777778

    goto :goto_a
.end method

.method public initTypeface()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method public resetMenuButton()V
    .locals 4

    .prologue
    .line 350
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZHTDConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Menu;->ShowMenuButton()V

    .line 352
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->mRunnable_HideMenuButton:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 353
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/syu/bt/page/Page_Menu;->mRunnable_HideMenuButton:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 355
    :cond_0
    return-void
.end method

.method public setAnimation()V
    .locals 9

    .prologue
    .line 297
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZHTDConfig()Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const v2, -0x40dc28f6    # -0.64f

    .line 302
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 303
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 301
    iput-object v0, p0, Lcom/syu/bt/page/Page_Menu;->startAni:Landroid/view/animation/Animation;

    .line 304
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->startAni:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 306
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 307
    const/4 v3, 0x1

    const v4, -0x40dc28f6    # -0.64f

    const/4 v5, 0x1

    .line 308
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 306
    iput-object v0, p0, Lcom/syu/bt/page/Page_Menu;->endAni:Landroid/view/animation/Animation;

    .line 309
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->endAni:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 310
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->endAni:Landroid/view/animation/Animation;

    new-instance v1, Lcom/syu/bt/page/Page_Menu$2;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/Page_Menu$2;-><init>(Lcom/syu/bt/page/Page_Menu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 343
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZHTDConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->mRunnable_HideMenuButton:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 345
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/syu/bt/page/Page_Menu;->mRunnable_HideMenuButton:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public setButtonColor(I)V
    .locals 14
    .param p1, "color"    # I

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 508
    sget-object v9, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v10, "changecolor"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    new-array v1, v13, [I

    .line 518
    aput p1, v1, v11

    .line 519
    aput p1, v1, v12

    .line 521
    .local v1, "colors":[I
    new-array v7, v13, [[I

    .line 522
    new-array v9, v12, [I

    const v10, 0x10100a7

    aput v10, v9, v11

    aput-object v9, v7, v11

    .line 523
    new-array v9, v12, [I

    const v10, 0x101009c

    aput v10, v9, v11

    aput-object v9, v7, v12

    .line 525
    .local v7, "states":[[I
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x2744

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JButton;

    .line 526
    .local v3, "dial":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v3, :cond_2

    .line 527
    new-instance v9, Landroid/content/res/ColorStateList;

    invoke-direct {v9, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v3, v9}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 528
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v9}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 532
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x2746

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JButton;

    .line 533
    .local v4, "history":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v4, :cond_3

    .line 534
    new-instance v9, Landroid/content/res/ColorStateList;

    invoke-direct {v9, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v4, v9}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 535
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v9}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 538
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x2745

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    .line 539
    .local v2, "contact":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v2, :cond_4

    .line 540
    new-instance v9, Landroid/content/res/ColorStateList;

    invoke-direct {v9, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 541
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 544
    :cond_4
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x274c

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 545
    .local v0, "av":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_5

    .line 546
    new-instance v9, Landroid/content/res/ColorStateList;

    invoke-direct {v9, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v9}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 547
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v9}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 550
    :cond_5
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x274e

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JButton;

    .line 551
    .local v5, "pair":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v5, :cond_6

    .line 552
    new-instance v9, Landroid/content/res/ColorStateList;

    invoke-direct {v9, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 553
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 556
    :cond_6
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x274d

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JButton;

    .line 557
    .local v6, "set":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v6, :cond_7

    .line 558
    new-instance v9, Landroid/content/res/ColorStateList;

    invoke-direct {v9, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v6, v9}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 559
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v9}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 563
    :cond_7
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x2757

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 564
    .local v8, "view":Landroid/widget/ImageView;
    if-eqz v8, :cond_0

    .line 565
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, p1, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 566
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const-string v10, "bt_menu_bk"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v11

    iget-object v11, v11, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    iget-object v12, v12, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public setDayOrNight(I)V
    .locals 13
    .param p1, "value"    # I

    .prologue
    const/16 v12, 0x2746

    const/16 v11, 0x2745

    const/16 v10, 0x2744

    const/16 v9, 0x9

    const/4 v8, 0x1

    .line 430
    sget-boolean v7, Lcom/syu/bt/App_Bt;->bUI_NightColour:Z

    if-eqz v7, :cond_1

    .line 431
    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v7, v7, v9

    if-eq v7, v8, :cond_2

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v7, v7, v9

    if-eqz v7, :cond_2

    .line 432
    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v7, v7, v9

    const/4 v9, 0x6

    if-eq v7, v9, :cond_2

    move v7, v8

    .line 431
    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 433
    .local v3, "isConnect":Ljava/lang/Boolean;
    if-lez p1, :cond_3

    const-string v5, "night_"

    .line 434
    .local v5, "str":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v7, p0, Lcom/syu/bt/page/Page_Menu;->nightBtn:[I

    array-length v7, v7

    if-lt v2, v7, :cond_4

    .line 463
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Menu;->getBtnId()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 464
    .local v0, "button":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_0

    .line 465
    const/16 v7, 0x27

    const/16 v9, 0xf9

    const/16 v10, 0xd3

    invoke-static {v7, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 467
    :cond_0
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    iget-object v7, p0, Lcom/syu/bt/page/Page_Menu;->nightView:[I

    array-length v7, v7

    if-lt v4, v7, :cond_c

    .line 485
    .end local v0    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v2    # "i":I
    .end local v3    # "isConnect":Ljava/lang/Boolean;
    .end local v4    # "j":I
    .end local v5    # "str":Ljava/lang/String;
    :cond_1
    return-void

    .line 431
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 433
    .restart local v3    # "isConnect":Ljava/lang/Boolean;
    :cond_3
    const-string v5, ""

    goto :goto_1

    .line 435
    .restart local v2    # "i":I
    .restart local v5    # "str":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    iget-object v9, p0, Lcom/syu/bt/page/Page_Menu;->nightBtn:[I

    aget v9, v9, v2

    invoke-virtual {v7, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 436
    .restart local v0    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_8

    .line 437
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JButton;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "drawableName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 439
    const-string v7, "night_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 440
    const-string v7, "night_"

    const-string v9, ""

    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v8}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 448
    :cond_5
    :goto_4
    iget-object v7, p0, Lcom/syu/bt/page/Page_Menu;->nightBtn:[I

    aget v7, v7, v2

    if-eq v7, v10, :cond_6

    iget-object v7, p0, Lcom/syu/bt/page/Page_Menu;->nightBtn:[I

    aget v7, v7, v2

    if-eq v7, v12, :cond_6

    iget-object v7, p0, Lcom/syu/bt/page/Page_Menu;->nightBtn:[I

    aget v7, v7, v2

    if-eq v7, v11, :cond_6

    .line 449
    iget-object v7, p0, Lcom/syu/bt/page/Page_Menu;->nightBtn:[I

    aget v7, v7, v2

    const/16 v9, 0x274e

    if-eq v7, v9, :cond_6

    iget-object v7, p0, Lcom/syu/bt/page/Page_Menu;->nightBtn:[I

    aget v7, v7, v2

    const/16 v9, 0x274d

    if-eq v7, v9, :cond_6

    iget-object v7, p0, Lcom/syu/bt/page/Page_Menu;->nightBtn:[I

    aget v7, v7, v2

    const/16 v9, 0x274c

    if-ne v7, v9, :cond_8

    .line 451
    :cond_6
    if-lez p1, :cond_a

    const/4 v7, -0x1

    :goto_5
    invoke-virtual {v0, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 452
    if-lez p1, :cond_b

    iget-object v7, p0, Lcom/syu/bt/page/Page_Menu;->color_night:[I

    :goto_6
    invoke-virtual {v0, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setColor([I)V

    .line 453
    sget-object v7, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v9, "yl_dn1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 454
    iget-object v7, p0, Lcom/syu/bt/page/Page_Menu;->nightBtn:[I

    aget v7, v7, v2

    if-eq v7, v10, :cond_7

    iget-object v7, p0, Lcom/syu/bt/page/Page_Menu;->nightBtn:[I

    aget v7, v7, v2

    if-eq v7, v12, :cond_7

    iget-object v7, p0, Lcom/syu/bt/page/Page_Menu;->nightBtn:[I

    aget v7, v7, v2

    if-eq v7, v11, :cond_7

    .line 455
    iget-object v7, p0, Lcom/syu/bt/page/Page_Menu;->nightBtn:[I

    aget v7, v7, v2

    const/16 v9, 0x274c

    if-ne v7, v9, :cond_8

    .line 456
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_8

    .line 457
    const v7, -0x777778

    invoke-virtual {v0, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 434
    .end local v1    # "drawableName":Ljava/lang/String;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 443
    .restart local v1    # "drawableName":Ljava/lang/String;
    :cond_9
    const-string v7, "night_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 444
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "night_"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v8}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 451
    :cond_a
    const/high16 v7, -0x1000000

    goto :goto_5

    .line 452
    :cond_b
    iget-object v7, p0, Lcom/syu/bt/page/Page_Menu;->color_day:[I

    goto :goto_6

    .line 468
    .end local v1    # "drawableName":Ljava/lang/String;
    .restart local v4    # "j":I
    :cond_c
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    iget-object v9, p0, Lcom/syu/bt/page/Page_Menu;->nightView:[I

    aget v9, v9, v4

    invoke-virtual {v7, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JView;

    .line 469
    .local v6, "view":Lcom/lsec/core/frame/ctrl/JView;
    if-eqz v6, :cond_d

    .line 470
    invoke-virtual {v6}, Lcom/lsec/core/frame/ctrl/JView;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    .line 471
    .restart local v1    # "drawableName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 472
    const-string v7, "night_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 473
    const-string v7, "night_"

    const-string v9, ""

    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    .line 467
    .end local v1    # "drawableName":Ljava/lang/String;
    :cond_d
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 476
    .restart local v1    # "drawableName":Ljava/lang/String;
    :cond_e
    const-string v7, "night_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 477
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "night_"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_7
.end method

.method public setPressed(Lcom/lsec/core/frame/ctrl/JButton;Z)V
    .locals 2
    .param p1, "jButton"    # Lcom/lsec/core/frame/ctrl/JButton;
    .param p2, "pressed"    # Z

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JButton;->getId()I

    move-result v0

    .line 293
    .local v0, "id":I
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/syu/bt/page/Page_Menu;->updateSelected(IZ)Z

    .line 294
    return-void

    .line 293
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateSelected(IZ)Z
    .locals 7
    .param p1, "id"    # I
    .param p2, "bSelected"    # Z

    .prologue
    const/16 v1, 0x2712

    const/4 v4, 0x0

    .line 167
    const-string v0, "gdy9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " Page_Menu id = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bSelected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "BT_23NEW"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0, p1}, Lcom/syu/bt/Act_Bt;->getFixPage(I)I

    move-result v3

    .line 173
    .local v3, "idPageTo":I
    const/4 v0, -0x1

    if-eq v3, v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v2

    .line 177
    .local v2, "idCur":I
    if-eq v2, v3, :cond_0

    .line 178
    if-eqz p2, :cond_2

    .line 179
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0, v1, v2, v4, p2}, Lcom/syu/bt/Act_Bt;->updateMenuSelected(IIIZ)V

    .line 186
    .end local v2    # "idCur":I
    :cond_0
    :goto_0
    const/4 v4, 0x1

    .line 189
    .end local v3    # "idPageTo":I
    :cond_1
    return v4

    .line 181
    .restart local v2    # "idCur":I
    .restart local v3    # "idPageTo":I
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Menu;->actBt:Lcom/syu/bt/Act_Bt;

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/syu/bt/Act_Bt;->updateMenuSelected_New(IIIIZ)V

    goto :goto_0
.end method

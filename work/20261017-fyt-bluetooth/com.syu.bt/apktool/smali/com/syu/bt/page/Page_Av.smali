.class public Lcom/syu/bt/page/Page_Av;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_Av.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/page/Page_Av$RunnableSwitchFull;
    }
.end annotation


# instance fields
.field public actBt:Lcom/syu/bt/Act_Bt;

.field animMin:Landroid/animation/ValueAnimator;

.field animMin2:Landroid/animation/ValueAnimator;

.field currentTime:Lcom/lsec/core/frame/ctrl/JText;

.field currentTime1:Lcom/lsec/core/frame/ctrl/JText;

.field frameAnim:Landroid/graphics/drawable/AnimationDrawable;

.field i:I

.field public iAvFocusSel:I

.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field public mBtnBtConnectTip:Lcom/lsec/core/frame/ctrl/JButton;

.field public mBtnPlayPause:Lcom/lsec/core/frame/ctrl/JButton;

.field public mBtnSoundAmp:Lcom/lsec/core/frame/ctrl/JButton;

.field public mBtnSoundLoud:Lcom/lsec/core/frame/ctrl/JButton;

.field mDynamicView1:Landroid/view/View;

.field mDynamicView2:Landroid/view/View;

.field public mFullSwitch:I

.field public mImgViewBtavAnim:Landroid/widget/ImageView;

.field public mProgBtAv:Landroid/view/View;

.field private mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

.field mViewAPIC:Lcom/lsec/core/frame/ctrl/JView;

.field mViewBtAvCtrl:Landroid/view/View;

.field mViewBtAvFullScreen:Landroid/view/View;

.field mViewBtAvHalfScreen:Landroid/view/View;

.field mViewBtConnectTip:Landroid/view/View;

.field mViewShowGps:Landroid/view/View;

.field public misAvStop:Z

.field private nightBtn:[I

.field private nightText:[I

.field private nightView:[I

.field seekBar:Lcom/lsec/core/frame/ctrl/JSeekBar;

.field seekBarBk:Lcom/lsec/core/frame/ctrl/JView;

.field totalTime:Lcom/lsec/core/frame/ctrl/JText;

.field public tvTitle:Lcom/lsec/core/frame/ctrl/JText;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 51
    iput-boolean v1, p0, Lcom/syu/bt/page/Page_Av;->misAvStop:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Av;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    .line 79
    iput v1, p0, Lcom/syu/bt/page/Page_Av;->mFullSwitch:I

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/syu/bt/page/Page_Av;->iAvFocusSel:I

    .line 83
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 85
    iput-object v0, p0, Lcom/syu/bt/page/Page_Av;->nightBtn:[I

    .line 87
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/syu/bt/page/Page_Av;->nightView:[I

    .line 89
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    .line 90
    iput-object v0, p0, Lcom/syu/bt/page/Page_Av;->nightText:[I

    .line 328
    iput v1, p0, Lcom/syu/bt/page/Page_Av;->i:I

    .line 95
    iput-object p2, p0, Lcom/syu/bt/page/Page_Av;->actBt:Lcom/syu/bt/Act_Bt;

    .line 97
    return-void

    .line 83
    :array_0
    .array-data 4
        0x2847
        0x2750
        0x2844
        0x2744
        0x2745
        0x274e
        0x2746
        0x274c
        0x274d
        0x284b
        0x2846
    .end array-data

    .line 87
    :array_1
    .array-data 4
        0x2989
        0x285e
        0x2988
        0x273d
    .end array-data

    .line 89
    :array_2
    .array-data 4
        0x2994
        0x2860
        0x2861
        0x297d
        0x297f
        0x284f
        0x2851
    .end array-data
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v8, 0x10200000

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 331
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 335
    .local v1, "id":I
    sparse-switch v1, :sswitch_data_0

    .line 493
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/syu/bt/page/Page_Av;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v6, p1}, Lcom/syu/bt/Act_Bt;->MenuClick(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 338
    :sswitch_0
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-nez v6, :cond_2

    .line 339
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avPrev()V

    .line 340
    iput-boolean v9, p0, Lcom/syu/bt/page/Page_Av;->misAvStop:Z

    goto :goto_1

    .line 345
    :sswitch_1
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-nez v6, :cond_2

    .line 346
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avPlayPause()V

    .line 347
    iput-boolean v9, p0, Lcom/syu/bt/page/Page_Av;->misAvStop:Z

    goto :goto_1

    .line 352
    :sswitch_2
    const-string v6, "gdy3"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 01 ResponseClick Av_ShowTip id = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-nez v6, :cond_2

    .line 354
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "YL_3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 355
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x9

    aget v6, v6, v7

    if-nez v6, :cond_2

    .line 356
    iget-object v6, p0, Lcom/syu/bt/page/Page_Av;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v6, v6, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/16 v7, 0x271c

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_1

    .line 361
    :sswitch_3
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-nez v6, :cond_2

    .line 362
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avPlay()V

    .line 363
    iput-boolean v9, p0, Lcom/syu/bt/page/Page_Av;->misAvStop:Z

    goto :goto_1

    .line 367
    :sswitch_4
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-nez v6, :cond_2

    .line 368
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avPause()V

    .line 369
    iput-boolean v9, p0, Lcom/syu/bt/page/Page_Av;->misAvStop:Z

    goto :goto_1

    .line 373
    :sswitch_5
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-nez v6, :cond_2

    .line 374
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avStop()V

    .line 375
    iput-boolean v7, p0, Lcom/syu/bt/page/Page_Av;->misAvStop:Z

    goto :goto_1

    .line 380
    :sswitch_6
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-nez v6, :cond_2

    .line 381
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avNext()V

    .line 382
    iput-boolean v9, p0, Lcom/syu/bt/page/Page_Av;->misAvStop:Z

    goto/16 :goto_1

    .line 386
    :sswitch_7
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-nez v6, :cond_2

    .line 387
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avLink()V

    goto/16 :goto_1

    .line 391
    :sswitch_8
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-nez v6, :cond_2

    .line 392
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avCut()V

    goto/16 :goto_1

    .line 396
    :sswitch_9
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    invoke-virtual {v6}, Lcom/syu/bt/App_Bt;->isHalfScreenAble()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 397
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/syu/bt/App_Bt;->setFullScreenMode(I)V

    goto/16 :goto_1

    .line 401
    :sswitch_a
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-nez v6, :cond_2

    .line 402
    sget v6, Lcom/syu/bt/App_Bt;->bSoundAMP:I

    if-nez v6, :cond_3

    .line 403
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v6, v7}, Lcom/syu/app/ipc/Bt_IpcObj;->sendCmdAmp(I)V

    goto/16 :goto_1

    .line 405
    :cond_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v6, v9}, Lcom/syu/app/ipc/Bt_IpcObj;->sendCmdAmp(I)V

    goto/16 :goto_1

    .line 409
    :sswitch_b
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-nez v6, :cond_2

    .line 410
    sget v6, Lcom/syu/bt/App_Bt;->bSoundLoud:I

    if-nez v6, :cond_4

    .line 411
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v6, v7}, Lcom/syu/app/ipc/Bt_IpcObj;->sendCmdLoud(I)V

    goto/16 :goto_1

    .line 413
    :cond_4
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v6, v9}, Lcom/syu/app/ipc/Bt_IpcObj;->sendCmdLoud(I)V

    goto/16 :goto_1

    .line 417
    :sswitch_c
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 418
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "com.syu.eq"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 421
    iget-object v6, p0, Lcom/syu/bt/page/Page_Av;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v6, v6, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v6, v2}, Lcom/lsec/core/frame/app/MyActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 424
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_d
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/syu/bt/App_Bt;->popBtAvMicSet(Z)V

    goto/16 :goto_1

    .line 427
    :sswitch_e
    iget-object v6, p0, Lcom/syu/bt/page/Page_Av;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v6}, Lcom/syu/bt/Act_Bt;->Func_Back()Z

    goto/16 :goto_1

    .line 430
    :sswitch_f
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-nez v6, :cond_2

    .line 433
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_BT_1920"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 434
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v3, "intent1":Landroid/content/Intent;
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 436
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.syu.music"

    const-string v8, "com.syu.music.MAct"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 438
    iget-object v6, p0, Lcom/syu/bt/page/Page_Av;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v6, v6, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v6, v3}, Lcom/lsec/core/frame/app/MyActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 445
    .end local v3    # "intent1":Landroid/content/Intent;
    :sswitch_10
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_1

    .line 453
    :sswitch_11
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-nez v6, :cond_2

    .line 456
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_BT_1920"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 457
    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-string v7, "com.syu.radio"

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/app/MyApplication;->startAct(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 463
    :sswitch_12
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-nez v6, :cond_2

    .line 468
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v4, "intentm":Landroid/content/Intent;
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 470
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.syu.onlineradio"

    const-string v8, "com.syu.onlineradio.MainActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 473
    :try_start_0
    iget-object v6, p0, Lcom/syu/bt/page/Page_Av;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v6, v6, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v6, v4}, Lcom/lsec/core/frame/app/MyActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v6, v6, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    const-string v7, "\u5e94\u7528\u672a\u5b89\u88c5"

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 481
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intentm":Landroid/content/Intent;
    :sswitch_13
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_BT_1920"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 482
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .local v5, "intentn":Landroid/content/Intent;
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 484
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.spotify.music"

    const-string v8, "com.spotify.music.MainActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 486
    iget-object v6, p0, Lcom/syu/bt/page/Page_Av;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v6, v6, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v6, v5}, Lcom/lsec/core/frame/app/MyActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 335
    :sswitch_data_0
    .sparse-switch
        0x278f -> :sswitch_9
        0x2844 -> :sswitch_0
        0x2845 -> :sswitch_0
        0x2846 -> :sswitch_1
        0x2847 -> :sswitch_1
        0x2848 -> :sswitch_3
        0x2849 -> :sswitch_4
        0x284a -> :sswitch_5
        0x284b -> :sswitch_6
        0x284c -> :sswitch_6
        0x284d -> :sswitch_7
        0x284e -> :sswitch_8
        0x285c -> :sswitch_2
        0x28b2 -> :sswitch_d
        0x28b3 -> :sswitch_f
        0x28b4 -> :sswitch_10
        0x28b5 -> :sswitch_11
        0x28b6 -> :sswitch_12
        0x28b7 -> :sswitch_13
        0x2934 -> :sswitch_b
        0x2935 -> :sswitch_a
        0x2936 -> :sswitch_c
        0x2937 -> :sswitch_e
    .end sparse-switch
.end method

.method public dispAlmup(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 932
    iget-object v1, p0, Lcom/syu/bt/page/Page_Av;->mViewAPIC:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v1, :cond_1

    .line 934
    const/4 v0, 0x0

    .line 935
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 936
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 939
    :cond_0
    if-eqz v0, :cond_2

    .line 940
    iget-object v1, p0, Lcom/syu/bt/page/Page_Av;->mViewAPIC:Lcom/lsec/core/frame/ctrl/JView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 945
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 942
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p0, Lcom/syu/bt/page/Page_Av;->mViewAPIC:Lcom/lsec/core/frame/ctrl/JView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public handleSeekPos(I)V
    .locals 5
    .param p1, "pos"    # I

    .prologue
    .line 678
    div-int/lit16 p1, p1, 0x3e8

    .line 679
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->seekBar:Lcom/lsec/core/frame/ctrl/JSeekBar;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->seekBar:Lcom/lsec/core/frame/ctrl/JSeekBar;

    invoke-virtual {v0, p1}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setProgress(I)V

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->currentTime:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->currentTime:Lcom/lsec/core/frame/ctrl/JText;

    const-string v1, "%02d:%02d:%02d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    div-int/lit16 v4, p1, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    div-int/lit8 v4, p1, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    rem-int/lit8 v4, p1, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 686
    :cond_1
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x275e

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .line 160
    .local v1, "view_40":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 161
    sget v2, Lcom/syu/bt/App_Bt;->iDensity:I

    const/16 v4, 0xf0

    if-lt v2, v4, :cond_5

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x2858

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->mProgBtAv:Landroid/view/View;

    .line 164
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x2865

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->mViewBtAvFullScreen:Landroid/view/View;

    .line 165
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x2864

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->mViewBtAvHalfScreen:Landroid/view/View;

    .line 166
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x278f

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->mViewShowGps:Landroid/view/View;

    .line 167
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x2847

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->mBtnPlayPause:Lcom/lsec/core/frame/ctrl/JButton;

    .line 168
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x2934

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->mBtnSoundLoud:Lcom/lsec/core/frame/ctrl/JButton;

    .line 169
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x2935

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->mBtnSoundAmp:Lcom/lsec/core/frame/ctrl/JButton;

    .line 170
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x2859

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->mViewBtAvCtrl:Landroid/view/View;

    .line 171
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x285a

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->mViewBtConnectTip:Landroid/view/View;

    .line 172
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x285c

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->mBtnBtConnectTip:Lcom/lsec/core/frame/ctrl/JButton;

    .line 174
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x285b

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->mImgViewBtavAnim:Landroid/widget/ImageView;

    .line 175
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->mImgViewBtavAnim:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "Anim":Landroid/graphics/drawable/AnimationDrawable;
    if-nez v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const-string v4, "freq_anim_list"

    invoke-virtual {v2, v4, v5, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "Anim":Landroid/graphics/drawable/AnimationDrawable;
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 180
    .restart local v0    # "Anim":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->mImgViewBtavAnim:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->mImgViewBtavAnim:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 182
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->mImgViewBtavAnim:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->frameAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 184
    .end local v0    # "Anim":Landroid/graphics/drawable/AnimationDrawable;
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x2842

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JView;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->mViewAPIC:Lcom/lsec/core/frame/ctrl/JView;

    .line 185
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x297c

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JSeekBar;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->seekBar:Lcom/lsec/core/frame/ctrl/JSeekBar;

    .line 186
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x297d

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->currentTime:Lcom/lsec/core/frame/ctrl/JText;

    .line 187
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x297e

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->currentTime1:Lcom/lsec/core/frame/ctrl/JText;

    .line 188
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x297f

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->totalTime:Lcom/lsec/core/frame/ctrl/JText;

    .line 189
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x2980

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JView;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->seekBarBk:Lcom/lsec/core/frame/ctrl/JView;

    .line 191
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x285d

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->mDynamicView1:Landroid/view/View;

    .line 192
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v4, 0x285e

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->mDynamicView2:Landroid/view/View;

    .line 194
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->mDynamicView2:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 195
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->mDynamicView2:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 197
    :cond_3
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->seekBar:Lcom/lsec/core/frame/ctrl/JSeekBar;

    if-eqz v2, :cond_4

    .line 198
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->seekBar:Lcom/lsec/core/frame/ctrl/JSeekBar;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setClickable(Z)V

    .line 199
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->seekBar:Lcom/lsec/core/frame/ctrl/JSeekBar;

    new-instance v3, Lcom/syu/bt/page/Page_Av$1;

    invoke-direct {v3, p0}, Lcom/syu/bt/page/Page_Av$1;-><init>(Lcom/syu/bt/page/Page_Av;)V

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 208
    :cond_4
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->initViewData()V

    .line 209
    sget v2, Lcom/syu/bt/App_Bt;->color:I

    invoke-virtual {p0, v2}, Lcom/syu/bt/page/Page_Av;->setButtonColor(I)V

    .line 210
    sget v2, Lcom/syu/bt/App_Bt;->mPhoneBatterty:I

    invoke-virtual {p0, v2}, Lcom/syu/bt/page/Page_Av;->updatePhoneBattery(I)V

    .line 211
    sget v2, Lcom/syu/bt/App_Bt;->mPhoneCoding:I

    invoke-virtual {p0, v2}, Lcom/syu/bt/page/Page_Av;->updatePhoneAptx(I)V

    .line 213
    sget v2, Lcom/syu/bt/App_Bt;->mColorType:I

    invoke-virtual {p0, v2}, Lcom/syu/bt/page/Page_Av;->setDayOrNight(I)V

    .line 214
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/syu/bt/page/Page_Av;->dispAlmup(Ljava/lang/String;)V

    .line 215
    return-void

    .line 161
    :cond_5
    const/16 v2, 0x8

    goto/16 :goto_0
.end method

.method public initViewData()V
    .locals 6

    .prologue
    .line 218
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->mProgBtAv:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->mProgBtAv:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 220
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "str":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Av;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->mProgBtAv:Landroid/view/View;

    iget-object v3, p0, Lcom/syu/bt/page/Page_Av;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 230
    .end local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v1    # "str":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_Av;I[I[F[Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/App_Bt;->DisableGainSpec()V

    .line 153
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    .line 154
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    const/16 v5, 0x271a

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 106
    iget-object v3, p0, Lcom/syu/bt/page/Page_Av;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v3, v3, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v3, v3, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-nez v3, :cond_0

    .line 148
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v3, "gdy1"

    const-string v4, "  05 Page_Av  resume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/syu/bt/page/Page_Av;->dispAlmup(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->updateNotify_BtAv()V

    .line 112
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 113
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3, v5}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdRight(I)V

    .line 118
    :cond_1
    :goto_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/App_Bt;->EnableGainSpec()V

    .line 120
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bDelMenuFromBtAv:Z

    if-eqz v3, :cond_2

    .line 121
    iget-object v3, p0, Lcom/syu/bt/page/Page_Av;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v3, v3, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v3, v3, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/16 v4, 0x2712

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JPage;

    .line 122
    .local v0, "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setVisibility(I)V

    .line 126
    .end local v0    # "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-boolean v3, v3, Lcom/syu/bt/App_Bt;->bPopBtRingSet:Z

    if-eqz v3, :cond_3

    .line 127
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/syu/bt/App_Bt;->popBtRingSet(Z)V

    .line 130
    :cond_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-boolean v3, Lcom/syu/bt/App_Bt;->bEnableHalfScreen:Z

    if-eqz v3, :cond_5

    .line 131
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->switchFull()V

    .line 132
    iget-object v3, p0, Lcom/syu/bt/page/Page_Av;->mViewShowGps:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 133
    iget-object v3, p0, Lcom/syu/bt/page/Page_Av;->mViewShowGps:Landroid/view/View;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/syu/bt/App_Bt;->isHalfScreenAble()Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_5
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->updateBtConnectTip()V

    .line 138
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->updateSoundMode()V

    .line 139
    sget v1, Lcom/syu/bt/App_Bt;->iBtAv_CurTime:I

    invoke-virtual {p0, v1}, Lcom/syu/bt/page/Page_Av;->handleSeekPos(I)V

    .line 140
    sget v1, Lcom/syu/bt/App_Bt;->iBtAv_TotalTime:I

    invoke-virtual {p0, v1, v2}, Lcom/syu/bt/page/Page_Av;->updateSeekbar(IZ)V

    .line 141
    invoke-static {}, Lcom/syu/bt/util/MyMediaPlayer;->getIntances()Lcom/syu/bt/util/MyMediaPlayer;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/util/MyMediaPlayer;->audioManager:Landroid/media/AudioManager;

    sget-object v2, Lcom/syu/bt/util/MyMediaPlayer;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto/16 :goto_0

    .line 114
    :cond_6
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isAppIdBtAv()Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3, v5}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdRight(I)V

    goto :goto_1
.end method

.method public setButtonColor(I)V
    .locals 14
    .param p1, "color"    # I

    .prologue
    .line 771
    sget-object v10, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v11, "changecolor"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    const/4 v10, 0x2

    new-array v1, v10, [I

    const/4 v10, 0x0

    .line 780
    aput p1, v1, v10

    const/4 v10, 0x1

    .line 781
    aput p1, v1, v10

    .line 783
    .local v1, "colors":[I
    const/4 v10, 0x2

    new-array v7, v10, [[I

    const/4 v10, 0x0

    .line 784
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const v13, 0x10100a7

    aput v13, v11, v12

    aput-object v11, v7, v10

    const/4 v10, 0x1

    .line 785
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const v13, 0x101009c

    aput v13, v11, v12

    aput-object v11, v7, v10

    .line 789
    .local v7, "states":[[I
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v10

    const/16 v11, 0x297b

    invoke-virtual {v10, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 790
    .local v0, "bk":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 791
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v10}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 792
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v10

    const-string v11, "bk0"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    iget-object v12, v12, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    iget-object v13, v13, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v10, v11, v12, v13}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 796
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v10

    const/16 v11, 0x2863

    invoke-virtual {v10, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 797
    .local v9, "view":Landroid/widget/ImageView;
    if-eqz v9, :cond_3

    .line 798
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, p1, v10}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 799
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v10

    const-string v11, "btav_icopinpu"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    iget-object v12, v12, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    iget-object v13, v13, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v10, v11, v12, v13}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 803
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v10

    const/16 v11, 0x2844

    invoke-virtual {v10, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JButton;

    .line 804
    .local v5, "prev":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v5, :cond_4

    .line 805
    new-instance v10, Landroid/content/res/ColorStateList;

    invoke-direct {v10, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v10}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 806
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v10}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 808
    :cond_4
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v10

    const/16 v11, 0x2845

    invoke-virtual {v10, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JButton;

    .line 809
    .local v6, "prev1":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v6, :cond_5

    .line 810
    new-instance v10, Landroid/content/res/ColorStateList;

    invoke-direct {v10, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v6, v10}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 811
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v10}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 813
    :cond_5
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v10

    const/16 v11, 0x2846

    invoke-virtual {v10, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JButton;

    .line 814
    .local v4, "playpause":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v4, :cond_6

    .line 815
    new-instance v10, Landroid/content/res/ColorStateList;

    invoke-direct {v10, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v4, v10}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 816
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v10}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 819
    :cond_6
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v10

    const/16 v11, 0x284a

    invoke-virtual {v10, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JButton;

    .line 820
    .local v8, "stop":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v8, :cond_7

    .line 821
    new-instance v10, Landroid/content/res/ColorStateList;

    invoke-direct {v10, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v8, v10}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 822
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v10}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 825
    :cond_7
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v10

    const/16 v11, 0x284b

    invoke-virtual {v10, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    .line 826
    .local v2, "next":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v2, :cond_8

    .line 827
    new-instance v10, Landroid/content/res/ColorStateList;

    invoke-direct {v10, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v10}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 828
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v10}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 830
    :cond_8
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v10

    const/16 v11, 0x284c

    invoke-virtual {v10, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JButton;

    .line 831
    .local v3, "next1":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v3, :cond_0

    .line 832
    new-instance v10, Landroid/content/res/ColorStateList;

    invoke-direct {v10, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v3, v10}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 833
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v10}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0
.end method

.method public setDayOrNight(I)V
    .locals 13
    .param p1, "value"    # I

    .prologue
    const/4 v9, -0x1

    const/high16 v10, -0x1000000

    const/4 v12, 0x1

    .line 840
    sget-object v8, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v11, "BT_NEW"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 843
    if-lez p1, :cond_1

    .line 844
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const-string v10, "bt_night"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v11

    iget-object v11, v11, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    iget-object v12, v12, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const-string v10, "bk_day"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v11

    iget-object v11, v11, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    iget-object v12, v12, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 850
    :cond_2
    sget-boolean v8, Lcom/syu/bt/App_Bt;->bUI_NightColour:Z

    if-eqz v8, :cond_0

    .line 851
    if-lez p1, :cond_3

    const-string v5, "night_"

    .line 882
    .local v5, "str":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    iget-object v8, p0, Lcom/syu/bt/page/Page_Av;->nightView:[I

    array-length v8, v8

    if-lt v3, v8, :cond_4

    .line 900
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_3
    iget-object v8, p0, Lcom/syu/bt/page/Page_Av;->nightText:[I

    array-length v8, v8

    if-lt v4, v8, :cond_7

    .line 907
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget-object v8, p0, Lcom/syu/bt/page/Page_Av;->nightBtn:[I

    array-length v8, v8

    if-lt v2, v8, :cond_a

    .line 925
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->updateBtnPlayPause()V

    goto :goto_0

    .line 851
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    .end local v5    # "str":Ljava/lang/String;
    :cond_3
    const-string v5, ""

    goto :goto_1

    .line 883
    .restart local v3    # "j":I
    .restart local v5    # "str":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v11, p0, Lcom/syu/bt/page/Page_Av;->nightView:[I

    aget v11, v11, v3

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lsec/core/frame/ctrl/JView;

    .line 884
    .local v7, "view":Lcom/lsec/core/frame/ctrl/JView;
    if-eqz v7, :cond_5

    .line 885
    invoke-virtual {v7}, Lcom/lsec/core/frame/ctrl/JView;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    .line 886
    .local v1, "drawableName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 887
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 888
    const-string v8, "night_"

    const-string v11, ""

    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v12}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    .line 882
    .end local v1    # "drawableName":Ljava/lang/String;
    :cond_5
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 891
    .restart local v1    # "drawableName":Ljava/lang/String;
    :cond_6
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 892
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "night_"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v12}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_5

    .line 901
    .end local v1    # "drawableName":Ljava/lang/String;
    .end local v7    # "view":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v4    # "k":I
    :cond_7
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v11, p0, Lcom/syu/bt/page/Page_Av;->nightText:[I

    aget v11, v11, v4

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JText;

    .line 902
    .local v6, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v6, :cond_8

    .line 903
    if-lez p1, :cond_9

    move v8, v9

    :goto_6
    invoke-virtual {v6, v8}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 900
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    move v8, v10

    .line 903
    goto :goto_6

    .line 908
    .end local v6    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v2    # "i":I
    :cond_a
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v11, p0, Lcom/syu/bt/page/Page_Av;->nightBtn:[I

    aget v11, v11, v2

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 909
    .local v0, "button":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_d

    .line 910
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JButton;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    .line 911
    .restart local v1    # "drawableName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 912
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 913
    const-string v8, "night_"

    const-string v11, ""

    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v12}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 920
    :cond_b
    :goto_7
    iget-object v8, p0, Lcom/syu/bt/page/Page_Av;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x2744

    if-eq v8, v11, :cond_c

    iget-object v8, p0, Lcom/syu/bt/page/Page_Av;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x2746

    if-eq v8, v11, :cond_c

    iget-object v8, p0, Lcom/syu/bt/page/Page_Av;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x2745

    if-eq v8, v11, :cond_c

    .line 921
    iget-object v8, p0, Lcom/syu/bt/page/Page_Av;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x274e

    if-eq v8, v11, :cond_c

    iget-object v8, p0, Lcom/syu/bt/page/Page_Av;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x274d

    if-ne v8, v11, :cond_d

    .line 922
    :cond_c
    if-lez p1, :cond_f

    move v8, v9

    :goto_8
    invoke-virtual {v0, v8}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 907
    .end local v1    # "drawableName":Ljava/lang/String;
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 916
    .restart local v1    # "drawableName":Ljava/lang/String;
    :cond_e
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 917
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "night_"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v12}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_7

    :cond_f
    move v8, v10

    .line 922
    goto :goto_8
.end method

.method public startAnim()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x2

    .line 235
    const-string v0, "gdy4"

    const-string v1, " 01 Page_Av startAnim = "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->mDynamicView1:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 238
    const-string v0, "gdy4"

    const-string v1, " 02 Page_Av startAnim animMin==null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin:Landroid/animation/ValueAnimator;

    .line 240
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 242
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 243
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/syu/bt/page/Page_Av$2;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/Page_Av$2;-><init>(Lcom/syu/bt/page/Page_Av;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 251
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/syu/bt/page/Page_Av$3;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/Page_Av$3;-><init>(Lcom/syu/bt/page/Page_Av;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 260
    :cond_0
    const-string v0, "gdy4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 03 Page_Av startAnim isPaused = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->animMin:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isRunning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->animMin:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 262
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    .line 268
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->mDynamicView2:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 269
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin2:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    .line 270
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin2:Landroid/animation/ValueAnimator;

    .line 271
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin2:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 272
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 273
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 274
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin2:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/syu/bt/page/Page_Av$4;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/Page_Av$4;-><init>(Lcom/syu/bt/page/Page_Av;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin2:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/syu/bt/page/Page_Av$5;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/Page_Av$5;-><init>(Lcom/syu/bt/page/Page_Av;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 292
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    .line 298
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->mDynamicView2:Landroid/view/View;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->mDynamicView1:Landroid/view/View;

    if-nez v0, :cond_4

    .line 299
    const-string v0, "gdy4"

    const-string v1, " 04 stopAnim "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->stopAnim()V

    .line 301
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->mProgBtAv:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 302
    new-instance v0, Lcom/lsec/core/util/Runnable_AnimDrawable;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Av;->mProgBtAv:Landroid/view/View;

    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v3, 0x12c

    invoke-direct {v0, v1, v2, v3}, Lcom/lsec/core/util/Runnable_AnimDrawable;-><init>(Landroid/view/View;Landroid/graphics/drawable/AnimationDrawable;I)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Av;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    .line 303
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/syu/bt/page/Page_Av;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 306
    :cond_4
    return-void

    .line 263
    :cond_5
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 293
    :cond_6
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 239
    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    .line 270
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public stopAnim()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->animMin2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 323
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    invoke-virtual {v0}, Lcom/lsec/core/util/Runnable_AnimDrawable;->stopRun()V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Av;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    .line 326
    :cond_2
    return-void
.end method

.method public switchFull()V
    .locals 2

    .prologue
    .line 498
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->fytGetState:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 501
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/syu/bt/page/Page_Av$RunnableSwitchFull;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/Page_Av$RunnableSwitchFull;-><init>(Lcom/syu/bt/page/Page_Av;)V

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateAvSelected(IZ)V
    .locals 3
    .param p1, "idFocusItem"    # I
    .param p2, "bSelected"    # Z

    .prologue
    .line 530
    if-eqz p2, :cond_0

    .line 531
    iget v1, p0, Lcom/syu/bt/page/Page_Av;->iAvFocusSel:I

    if-eq v1, p1, :cond_0

    .line 532
    iget v1, p0, Lcom/syu/bt/page/Page_Av;->iAvFocusSel:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/syu/bt/page/Page_Av;->updateAvSelected(IZ)V

    .line 533
    iput p1, p0, Lcom/syu/bt/page/Page_Av;->iAvFocusSel:I

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 538
    .local v0, "btn":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_1

    .line 539
    invoke-virtual {v0, p2}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 540
    :cond_1
    return-void
.end method

.method public updateBtConnectTip()V
    .locals 7

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 592
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->is7731()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "TZY_UI5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 594
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const-string v4, "btav_bk_disconnect2"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 600
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->mViewBtAvCtrl:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 601
    iget-object v3, p0, Lcom/syu/bt/page/Page_Av;->mViewBtAvCtrl:Landroid/view/View;

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->mViewBtConnectTip:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 605
    iget-object v3, p0, Lcom/syu/bt/page/Page_Av;->mViewBtConnectTip:Landroid/view/View;

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 607
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->mBtnBtConnectTip:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_3

    .line 608
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->mBtnBtConnectTip:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 611
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->updateBtNameAndPinTip()V

    .line 612
    return-void

    .line 596
    :cond_4
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const-string v4, "btav_bk_connect2"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 601
    goto :goto_1

    :cond_6
    move v0, v1

    .line 605
    goto :goto_2

    :cond_7
    move v2, v1

    .line 608
    goto :goto_3
.end method

.method public updateBtNameAndPinTip()V
    .locals 5

    .prologue
    .line 617
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v3, 0x2860

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 619
    .local v1, "name":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_0

    .line 620
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_connetc_name"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Teyes"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getDiyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 623
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v3, 0x2861

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 624
    .local v0, "Pin":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_1

    .line 625
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_connetc_pin"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0000"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getDiyPin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 628
    .end local v0    # "Pin":Lcom/lsec/core/frame/ctrl/JText;
    .end local v1    # "name":Lcom/lsec/core/frame/ctrl/JText;
    :cond_1
    return-void
.end method

.method public updateBtnPlayPause()V
    .locals 4

    .prologue
    .line 564
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->mBtnPlayPause:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v2, :cond_2

    .line 565
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->mBtnPlayPause:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 566
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 567
    const/4 v1, 0x0

    .line 568
    .local v1, "str":Ljava/lang/String;
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bBtAvPlayState:Z

    if-eqz v2, :cond_4

    .line 569
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    .line 572
    :cond_0
    :goto_0
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "YL_3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    sget v2, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v2, :cond_5

    const-string v2, "night_"

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 575
    :cond_1
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->mBtnPlayPause:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JButton;->getStrDrawable()Ljava/lang/String;

    move-result-object v2

    if-eq v2, v1, :cond_2

    .line 576
    if-eqz v1, :cond_2

    .line 577
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->mBtnPlayPause:Lcom/lsec/core/frame/ctrl/JButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 582
    .end local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->mImgViewBtavAnim:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->frameAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_3

    .line 583
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bBtAvPlayState:Z

    if-eqz v2, :cond_6

    .line 584
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->frameAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 588
    :cond_3
    :goto_2
    return-void

    .line 570
    .restart local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v1    # "str":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 571
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    goto :goto_0

    .line 573
    :cond_5
    const-string v2, ""

    goto :goto_1

    .line 586
    .end local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v1    # "str":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/syu/bt/page/Page_Av;->frameAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_2
.end method

.method public updatePhoneAptx(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v5, 0x2862

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JView;

    .line 658
    .local v3, "view":Lcom/lsec/core/frame/ctrl/JView;
    if-eqz v3, :cond_2

    .line 659
    const/4 v0, 0x1

    .line 660
    .local v0, "flag":Z
    if-lez p1, :cond_0

    const/16 v4, 0x9

    if-le p1, v4, :cond_1

    .line 661
    :cond_0
    const/4 v0, 0x0

    .line 663
    :cond_1
    if-eqz v0, :cond_3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 664
    if-nez v0, :cond_4

    .line 675
    .end local v0    # "flag":Z
    :cond_2
    :goto_1
    return-void

    .line 663
    .restart local v0    # "flag":Z
    :cond_3
    const/16 v4, 0x8

    goto :goto_0

    .line 667
    :cond_4
    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/app/MyUiItem;

    .line 668
    .local v1, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v1}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 669
    invoke-virtual {v1}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, p1, -0x1

    aget-object v2, v4, v5

    .line 671
    .local v2, "strDrawable":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JView;->getStrDrawable()Ljava/lang/String;

    move-result-object v4

    if-eq v4, v2, :cond_2

    if-eqz v2, :cond_2

    .line 672
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public updatePhoneBattery(I)V
    .locals 6
    .param p1, "level"    # I

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v5, 0x285f

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    .line 633
    .local v3, "vShowBattery":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 635
    if-lez p1, :cond_2

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 638
    :cond_0
    if-lez p1, :cond_1

    .line 639
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v5, 0x297a

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JView;

    .line 640
    .local v2, "vBattery":Lcom/lsec/core/frame/ctrl/JView;
    if-eqz v2, :cond_1

    .line 641
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 642
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 643
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, p1, -0x1

    aget-object v1, v4, v5

    .line 645
    .local v1, "strDrawable":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JView;->getStrDrawable()Ljava/lang/String;

    move-result-object v4

    if-eq v4, v1, :cond_1

    if-eqz v1, :cond_1

    .line 648
    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    .line 653
    .end local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v1    # "strDrawable":Ljava/lang/String;
    .end local v2    # "vBattery":Lcom/lsec/core/frame/ctrl/JView;
    :cond_1
    return-void

    .line 635
    :cond_2
    const/16 v4, 0x8

    goto :goto_0
.end method

.method public updateSeekbar(IZ)V
    .locals 7
    .param p1, "total"    # I
    .param p2, "flag"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 690
    div-int/lit16 p1, p1, 0x3e8

    .line 691
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->seekBar:Lcom/lsec/core/frame/ctrl/JSeekBar;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->seekBar:Lcom/lsec/core/frame/ctrl/JSeekBar;

    invoke-virtual {v0, p1}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setProgressMax(I)V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->totalTime:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->totalTime:Lcom/lsec/core/frame/ctrl/JText;

    const-string v3, "%02d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit16 v5, p1, 0xe10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    div-int/lit8 v6, p1, 0x3c

    rem-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    rem-int/lit8 v6, p1, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->seekBar:Lcom/lsec/core/frame/ctrl/JSeekBar;

    if-eqz v0, :cond_4

    .line 701
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->seekBar:Lcom/lsec/core/frame/ctrl/JSeekBar;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JSeekBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 720
    :cond_2
    :goto_0
    return-void

    .line 704
    :cond_3
    iget-object v3, p0, Lcom/syu/bt/page/Page_Av;->seekBar:Lcom/lsec/core/frame/ctrl/JSeekBar;

    if-gtz p1, :cond_8

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setVisibility(I)V

    .line 707
    :cond_4
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->currentTime:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_5

    .line 708
    iget-object v3, p0, Lcom/syu/bt/page/Page_Av;->currentTime:Lcom/lsec/core/frame/ctrl/JText;

    if-gtz p1, :cond_9

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 710
    :cond_5
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->currentTime1:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_6

    .line 711
    iget-object v3, p0, Lcom/syu/bt/page/Page_Av;->currentTime1:Lcom/lsec/core/frame/ctrl/JText;

    if-gtz p1, :cond_a

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 713
    :cond_6
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->totalTime:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_7

    .line 714
    iget-object v3, p0, Lcom/syu/bt/page/Page_Av;->totalTime:Lcom/lsec/core/frame/ctrl/JText;

    if-gtz p1, :cond_b

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 717
    :cond_7
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->seekBarBk:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v0, :cond_2

    .line 718
    iget-object v0, p0, Lcom/syu/bt/page/Page_Av;->seekBarBk:Lcom/lsec/core/frame/ctrl/JView;

    if-gtz p1, :cond_c

    :goto_5
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    goto :goto_0

    :cond_8
    move v0, v2

    .line 704
    goto :goto_1

    :cond_9
    move v0, v2

    .line 708
    goto :goto_2

    :cond_a
    move v0, v2

    .line 711
    goto :goto_3

    :cond_b
    move v0, v2

    .line 714
    goto :goto_4

    :cond_c
    move v1, v2

    .line 718
    goto :goto_5
.end method

.method public updateSelected(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "bSelected"    # Z

    .prologue
    .line 543
    const/4 v0, -0x1

    .line 544
    .local v0, "iAvFocusBtn":I
    packed-switch p1, :pswitch_data_0

    .line 555
    :goto_0
    :pswitch_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 556
    iget v1, p0, Lcom/syu/bt/page/Page_Av;->iAvFocusSel:I

    if-eq v1, v0, :cond_0

    .line 557
    iget v1, p0, Lcom/syu/bt/page/Page_Av;->iAvFocusSel:I

    if-lez v1, :cond_0

    .line 558
    iget v1, p0, Lcom/syu/bt/page/Page_Av;->iAvFocusSel:I

    invoke-virtual {p0, v1, p2}, Lcom/syu/bt/page/Page_Av;->updateAvSelected(IZ)V

    .line 561
    :cond_0
    return-void

    .line 551
    :pswitch_1
    move v0, p1

    goto :goto_0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x2844
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public updateSoundAmp()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 764
    iget-object v1, p0, Lcom/syu/bt/page/Page_Av;->mBtnSoundAmp:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/syu/bt/page/Page_Av;->mBtnSoundAmp:Lcom/lsec/core/frame/ctrl/JButton;

    sget v2, Lcom/syu/bt/App_Bt;->bSoundAMP:I

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 766
    :cond_0
    return-void

    .line 765
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSoundLoud()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 723
    iget-object v1, p0, Lcom/syu/bt/page/Page_Av;->mBtnSoundLoud:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/syu/bt/page/Page_Av;->mBtnSoundLoud:Lcom/lsec/core/frame/ctrl/JButton;

    sget v2, Lcom/syu/bt/App_Bt;->bSoundLoud:I

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 725
    :cond_0
    return-void

    .line 724
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSoundMode()V
    .locals 3

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    const/16 v2, 0x2853

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 729
    .local v0, "soundModeJText":Lcom/lsec/core/frame/ctrl/JText;
    if-nez v0, :cond_0

    .line 761
    :goto_0
    return-void

    .line 732
    :cond_0
    sget v1, Lcom/syu/bt/App_Bt;->bSoundMode:I

    packed-switch v1, :pswitch_data_0

    .line 758
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 734
    :pswitch_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "standard"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 737
    :pswitch_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "rock"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 740
    :pswitch_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "soft"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 743
    :pswitch_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "classic"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 746
    :pswitch_4
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "pop"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 749
    :pswitch_5
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "hall"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 752
    :pswitch_6
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "jazz"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 755
    :pswitch_7
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "cinema"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 732
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

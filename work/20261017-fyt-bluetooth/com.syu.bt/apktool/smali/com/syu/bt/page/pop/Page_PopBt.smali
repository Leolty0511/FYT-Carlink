.class public Lcom/syu/bt/page/pop/Page_PopBt;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopBt.java"


# static fields
.field private static instance:Lcom/syu/bt/App_Bt;

.field public static lld_y:F


# instance fields
.field public btnKeyBoradShow:Lcom/lsec/core/frame/ctrl/JButton;

.field public mBtn_ShowLDD:Lcom/lsec/core/frame/ctrl/JButton;

.field public mBtn_ShowLDD1:Lcom/lsec/core/frame/ctrl/JButton;

.field private nightBtn:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput v0, Lcom/syu/bt/page/pop/Page_PopBt;->lld_y:F

    return-void
.end method

.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    .line 58
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 48
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 54
    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt;->nightBtn:[I

    .line 59
    return-void

    .line 48
    nop

    :array_0
    .array-data 4
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x1a
        0x24
        0x25
        0x2d
        0x29
        0x26
        0x27
        0x45
    .end array-data
.end method

.method private btnClick_Third(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 524
    const/4 v0, 0x1

    .line 526
    .local v0, "bRet":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 527
    .local v1, "id":I
    const-string v5, "pop"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 11 btnClick_Third id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    sparse-switch v1, :sswitch_data_0

    .line 634
    const/4 v0, 0x0

    .line 638
    :cond_0
    :goto_0
    return v0

    .line 533
    :sswitch_0
    const-string v3, "ldd"

    const-string v4, " btnClick_Third PopBt_Btn_ShowHideKeyBoard 11 "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "BT_23NEW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 535
    const-string v3, "gdy7"

    const-string v4, " btnClick_Third PopBt_Btn_ShowHideKeyBoard 11 "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    .local v2, "intent2":Landroid/content/Intent;
    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 539
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.syu.bt"

    const-string v5, "com.syu.bt.BtAct"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 541
    :try_start_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v3, v3, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 542
    :catch_0
    move-exception v3

    goto :goto_0

    .line 545
    .end local v2    # "intent2":Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    .line 547
    goto :goto_0

    .line 550
    :sswitch_1
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    if-eqz v3, :cond_2

    .line 551
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->switch3rdPhone()V

    goto :goto_0

    .line 553
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 554
    :cond_3
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v3

    if-nez v3, :cond_0

    .line 555
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncDial()V

    goto :goto_0

    .line 562
    :sswitch_2
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    if-eqz v4, :cond_5

    .line 563
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isRing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 564
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->hang3rdPhoneHold()V

    goto :goto_0

    .line 566
    :cond_4
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->hang3rdPhoneCurrent()V

    goto :goto_0

    .line 568
    :cond_5
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-nez v4, :cond_6

    .line 569
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    .line 571
    :cond_6
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v4

    if-nez v4, :cond_0

    .line 572
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    goto/16 :goto_0

    .line 576
    :sswitch_3
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-nez v4, :cond_7

    .line 577
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    .line 579
    :cond_7
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v4

    if-nez v4, :cond_0

    .line 580
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    goto/16 :goto_0

    .line 583
    :sswitch_4
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isRing()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 584
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->hang3rdPhoneHold()V

    goto/16 :goto_0

    .line 586
    :cond_8
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->hang3rdPhoneCurrent()V

    goto/16 :goto_0

    .line 589
    :sswitch_5
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->switch3rdPhone()V

    goto/16 :goto_0

    .line 592
    :sswitch_6
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v5

    if-nez v5, :cond_0

    .line 593
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bSoundMute:Z

    if-eqz v5, :cond_9

    :goto_1
    invoke-static {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->MuteSwitch(I)V

    goto/16 :goto_0

    :cond_9
    move v3, v4

    goto :goto_1

    .line 598
    :sswitch_7
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v3

    if-nez v3, :cond_0

    .line 599
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isTalk()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 601
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hfp()V

    goto/16 :goto_0

    .line 609
    :sswitch_8
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 611
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    if-eqz v5, :cond_a

    .line 613
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/syu/bt/App_Bt;->pop3rdPhone(Z)V

    .line 616
    :cond_a
    const-string v5, "gdy666"

    const-string v6, " 01 Page PopBt  showFloatBtn "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isTalk()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 618
    sput-boolean v4, Lcom/syu/bt/App_Bt;->bShowFloatBtn_p:Z

    .line 619
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    invoke-virtual {v5, v3, v3}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    .line 620
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/syu/bt/App_Bt;->showFloatBtn(Z)V

    goto/16 :goto_0

    .line 626
    :sswitch_9
    const-string v5, "lld"

    const-string v6, " 00 Page PopBt  PopBt_Btn_ShowLDD "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    invoke-virtual {v5, v3, v3}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    .line 629
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/syu/bt/App_Bt;->popShowLLD(Z)V

    goto/16 :goto_0

    .line 529
    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_1
        0x27 -> :sswitch_2
        0x28 -> :sswitch_3
        0x29 -> :sswitch_7
        0x2a -> :sswitch_7
        0x2d -> :sswitch_0
        0x2f -> :sswitch_0
        0x30 -> :sswitch_9
        0x36 -> :sswitch_1
        0x37 -> :sswitch_2
        0x38 -> :sswitch_7
        0x39 -> :sswitch_0
        0x41 -> :sswitch_8
        0x45 -> :sswitch_6
        0x50 -> :sswitch_5
        0x51 -> :sswitch_4
    .end sparse-switch
.end method

.method private initView()V
    .locals 36

    .prologue
    .line 81
    const-string v2, "lddd"

    const-string v7, " 33 Page_PopBt initView = "

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x9

    aget v35, v2, v7

    .line 83
    .local v35, "value":I
    if-ltz v35, :cond_3

    const/4 v2, 0x6

    move/from16 v0, v35

    if-gt v0, v2, :cond_3

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v7, 0x12

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/lsec/core/frame/ctrl/JText;

    .line 85
    .local v27, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v27, :cond_1

    .line 86
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_12

    sget v2, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-eqz v2, :cond_0

    sget v2, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_12

    .line 87
    :cond_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    sget-object v8, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    sget v9, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget v8, v8, v9

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v7, 0x32

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/lsec/core/frame/ctrl/JText;

    .line 93
    .local v28, "text_Num":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v28, :cond_3

    .line 94
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_13

    sget v2, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-eqz v2, :cond_2

    sget v2, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_13

    .line 95
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    sget-object v8, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    sget v9, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget v8, v8, v9

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .end local v27    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v28    # "text_Num":Lcom/lsec/core/frame/ctrl/JText;
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v7, 0x3f

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Lcom/lsec/core/frame/ctrl/JView;

    .line 103
    .local v33, "vDial_AIU":Lcom/lsec/core/frame/ctrl/JView;
    const-string v2, "ai11"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 00 Page_Dial  showAI isAiuvoice = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v8, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  isAIOnOff = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-eqz v33, :cond_4

    .line 105
    const-string v2, "ai11"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 11 Page_Dial  showAI isAiuvoice = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v8, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  isAIOnOff = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-boolean v2, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    if-eqz v2, :cond_14

    sget-boolean v2, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 109
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v7, 0x40

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Lcom/lsec/core/frame/ctrl/JView;

    .line 111
    .local v34, "vDial_AIU2":Lcom/lsec/core/frame/ctrl/JView;
    const-string v2, "aigt"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 00 Page_PopBt App_Bt.bAI_JZ2 = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v8, Lcom/syu/bt/App_Bt;->bAI_JZ2:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " App_Bt.isAIGT_Aiuvoice = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " App_Bt.isAIGT_OnOff = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eqz v34, :cond_7

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAI_JZ2:Z

    if-eqz v2, :cond_7

    .line 114
    const-string v2, "aigt"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 11 Page_PopBt App_Bt.bAI_JZ2 = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v8, Lcom/syu/bt/App_Bt;->bAI_JZ2:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " App_Bt.isAIGT_Aiuvoice = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " App_Bt.isAIGT_OnOff = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget v2, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    if-eqz v2, :cond_5

    .line 117
    const-string v2, "sys.blinkbt.ai.noise.code"

    const v7, 0xffff

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    .line 118
    :cond_5
    sget-boolean v2, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    if-nez v2, :cond_6

    .line 119
    const-string v2, "persist.lsec.aecdelay"

    const/4 v7, -0x1

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_15

    const/4 v2, 0x1

    :goto_3
    sput-boolean v2, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    .line 120
    :cond_6
    const-string v2, "aigt"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 22 Page_PopBt App_Bt.bAI_JZ2 = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v8, Lcom/syu/bt/App_Bt;->bAI_JZ2:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " App_Bt.isAIGT_Aiuvoice = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " App_Bt.isAIGT_OnOff = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget v2, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    if-nez v2, :cond_16

    sget-boolean v2, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 124
    :cond_7
    if-nez v34, :cond_8

    .line 125
    const-string v2, "aigt"

    const-string v7, " 33 Page_PopBt vDial_AIU2 == null "

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v7, 0x13

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Lcom/lsec/core/frame/ctrl/JText;

    .line 129
    .local v30, "txtNum":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v30, :cond_9

    .line 130
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v7, 0x33

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/lsec/core/frame/ctrl/JText;

    .line 133
    .local v32, "txtNum_Num":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v32, :cond_a

    .line 134
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v7, 0x14

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Lcom/lsec/core/frame/ctrl/JText;

    .line 137
    .local v31, "txtNum2":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v31, :cond_b

    .line 138
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v7, 0x17

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    .line 144
    .local v4, "txtContact":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v7, 0x35

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/lsec/core/frame/ctrl/JText;

    .line 145
    .local v29, "txtContact_Num":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v7, 0x18

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    .line 146
    .local v5, "txtContact2":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v7, 0x19

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/lsec/core/frame/ctrl/JView;

    .line 148
    .local v12, "headView":Lcom/lsec/core/frame/ctrl/JView;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v7, 0x2f

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/syu/bt/page/pop/Page_PopBt;->mBtn_ShowLDD:Lcom/lsec/core/frame/ctrl/JButton;

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/page/pop/Page_PopBt;->mBtn_ShowLDD:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v2, :cond_c

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/page/pop/Page_PopBt;->mBtn_ShowLDD:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v7, Lcom/syu/bt/page/pop/Page_PopBt$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/syu/bt/page/pop/Page_PopBt$1;-><init>(Lcom/syu/bt/page/pop/Page_PopBt;)V

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v7, 0x30

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/syu/bt/page/pop/Page_PopBt;->mBtn_ShowLDD1:Lcom/lsec/core/frame/ctrl/JButton;

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/page/pop/Page_PopBt;->mBtn_ShowLDD1:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v2, :cond_d

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/page/pop/Page_PopBt;->mBtn_ShowLDD1:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v7, Lcom/syu/bt/page/pop/Page_PopBt$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/syu/bt/page/pop/Page_PopBt$2;-><init>(Lcom/syu/bt/page/pop/Page_PopBt;)V

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v7, 0x2d

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/syu/bt/page/pop/Page_PopBt;->btnKeyBoradShow:Lcom/lsec/core/frame/ctrl/JButton;

    .line 219
    if-eqz v29, :cond_e

    .line 220
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 221
    const-string v2, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_e
    :goto_5
    if-eqz v4, :cond_f

    .line 231
    const-string v2, "pop33"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 00 Page  Runnable sPhone2_id = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Bt.sPhoneNumber = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 233
    const-string v2, ""

    invoke-virtual {v4, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 234
    if-eqz v5, :cond_f

    .line 235
    const-string v2, ""

    invoke-virtual {v5, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :cond_f
    :goto_6
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isTalk()Z

    move-result v2

    if-nez v2, :cond_11

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v7, 0x16

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/lsec/core/frame/ctrl/JText;

    .line 281
    .restart local v27    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v27, :cond_10

    .line 282
    const-string v2, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_10
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_NEW"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v7, 0x17

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/lsec/core/frame/ctrl/JText;

    .line 287
    .local v24, "name":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v24, :cond_11

    .line 288
    invoke-virtual/range {v24 .. v24}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_11

    .line 290
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 305
    .end local v24    # "name":Lcom/lsec/core/frame/ctrl/JText;
    .end local v27    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_11
    :goto_7
    sget v2, Lcom/syu/bt/App_Bt;->mColorType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/syu/bt/page/pop/Page_PopBt;->setDayOrNight(I)V

    .line 306
    return-void

    .line 90
    .end local v4    # "txtContact":Lcom/lsec/core/frame/ctrl/JText;
    .end local v5    # "txtContact2":Lcom/lsec/core/frame/ctrl/JText;
    .end local v12    # "headView":Lcom/lsec/core/frame/ctrl/JView;
    .end local v29    # "txtContact_Num":Lcom/lsec/core/frame/ctrl/JText;
    .end local v30    # "txtNum":Lcom/lsec/core/frame/ctrl/JText;
    .end local v31    # "txtNum2":Lcom/lsec/core/frame/ctrl/JText;
    .end local v32    # "txtNum_Num":Lcom/lsec/core/frame/ctrl/JText;
    .end local v33    # "vDial_AIU":Lcom/lsec/core/frame/ctrl/JView;
    .end local v34    # "vDial_AIU2":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v27    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_12
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    aget-object v7, v7, v35

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 98
    .restart local v28    # "text_Num":Lcom/lsec/core/frame/ctrl/JText;
    :cond_13
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    aget-object v7, v7, v35

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 106
    .end local v27    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v28    # "text_Num":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v33    # "vDial_AIU":Lcom/lsec/core/frame/ctrl/JView;
    :cond_14
    const/16 v2, 0x8

    goto/16 :goto_2

    .line 119
    .restart local v34    # "vDial_AIU2":Lcom/lsec/core/frame/ctrl/JView;
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 122
    :cond_16
    const/16 v2, 0x8

    goto/16 :goto_4

    .line 223
    .restart local v4    # "txtContact":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v5    # "txtContact2":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v12    # "headView":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v29    # "txtContact_Num":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v30    # "txtNum":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v31    # "txtNum2":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v32    # "txtNum_Num":Lcom/lsec/core/frame/ctrl/JText;
    :cond_17
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 224
    .local v26, "strName":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 225
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 227
    :cond_18
    const-string v2, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 237
    .end local v26    # "strName":Ljava/lang/String;
    :cond_19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_1b

    .line 239
    const-string v2, "talk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 00 U_PHONE_NUMBER  sPhone_callin_id = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget v2, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-nez v2, :cond_1a

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    :goto_8
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    :goto_9
    if-eqz v5, :cond_1c

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 246
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 251
    .local v6, "strPhone":Ljava/lang/String;
    sget-object v9, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v11, "Thread-GetNameByNumber"

    new-instance v2, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;

    const/4 v8, 0x1

    move-object v7, v6

    invoke-direct/range {v2 .. v8}, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-static {v9, v11, v2, v7, v8}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_6

    .line 240
    .end local v6    # "strPhone":Ljava/lang/String;
    :cond_1a
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    goto :goto_8

    .line 243
    :cond_1b
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    .line 255
    :cond_1c
    if-eqz v12, :cond_1f

    .line 257
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_OEM"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 258
    sget-object v14, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 259
    .local v14, "defaultPhone":Ljava/lang/String;
    const-string v2, "HUT"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "defaultPhone A:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v16, "Thread-GetNameByNumber"

    new-instance v7, Lcom/syu/bt/runnable/Runnable_getNameByNumber;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    move-object v8, v3

    move-object v9, v4

    invoke-direct/range {v7 .. v15}, Lcom/syu/bt/runnable/Runnable_getNameByNumber;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JView;Lcom/lsec/core/frame/ctrl/JView;Ljava/lang/String;Z)V

    const/4 v8, 0x0

    const/4 v9, 0x5

    move-object/from16 v0, v16

    invoke-static {v2, v0, v7, v8, v9}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_6

    .line 261
    .end local v14    # "defaultPhone":Ljava/lang/String;
    :cond_1d
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "BT_23NEW"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 262
    sget-object v14, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 263
    .restart local v14    # "defaultPhone":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v7, 0x13

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/lsec/core/frame/ctrl/JText;

    .line 264
    .local v10, "txtNumber":Lcom/lsec/core/frame/ctrl/JText;
    const-string v2, "pop33"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 01 Page_PopBt defaultPhone defaultPhone = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v16, "Thread-GetNameByNumber"

    new-instance v7, Lcom/syu/bt/runnable/Runnable_getNameByNumber;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    move-object v8, v3

    move-object v9, v4

    invoke-direct/range {v7 .. v15}, Lcom/syu/bt/runnable/Runnable_getNameByNumber;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JView;Lcom/lsec/core/frame/ctrl/JView;Ljava/lang/String;Z)V

    const/4 v8, 0x0

    const/4 v9, 0x5

    move-object/from16 v0, v16

    invoke-static {v2, v0, v7, v8, v9}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_6

    .line 267
    .end local v10    # "txtNumber":Lcom/lsec/core/frame/ctrl/JText;
    .end local v14    # "defaultPhone":Ljava/lang/String;
    :cond_1e
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v7, "Thread-GetNameByNumber"

    new-instance v15, Lcom/syu/bt/runnable/Runnable_getNameByNumber;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const-string v22, ""

    const/16 v23, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v23}, Lcom/syu/bt/runnable/Runnable_getNameByNumber;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JView;Lcom/lsec/core/frame/ctrl/JView;Ljava/lang/String;Z)V

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-static {v2, v7, v15, v8, v9}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_6

    .line 272
    :cond_1f
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v7, "Thread-GetNameByNumber"

    new-instance v8, Lcom/syu/bt/runnable/Runnable_getNameByNumber;

    const-string v9, ""

    const/4 v11, 0x0

    invoke-direct {v8, v3, v4, v9, v11}, Lcom/syu/bt/runnable/Runnable_getNameByNumber;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Z)V

    const/4 v9, 0x0

    const/4 v11, 0x5

    invoke-static {v2, v7, v8, v9, v11}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_6

    .line 294
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .restart local v27    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_20
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_OEM"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v7, 0x12

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/lsec/core/frame/ctrl/JText;

    .line 296
    .local v25, "state":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v25, :cond_11

    .line 297
    invoke-virtual/range {v25 .. v25}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_11

    .line 298
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_7
.end method


# virtual methods
.method public ResponseClick(I)V
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 420
    packed-switch p1, :pswitch_data_0

    .line 508
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 422
    :pswitch_1
    invoke-static {v9}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    .line 423
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_OEM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    .line 425
    .local v4, "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v4, :cond_0

    sget-object v6, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 426
    sget-object v6, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    .line 427
    .local v0, "end":I
    sget-object v6, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    .line 428
    sget-object v6, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 445
    .end local v0    # "end":I
    .end local v4    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    :pswitch_2
    const-string v6, "popname"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " ResponseClick id =  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, p1, -0x1a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    add-int/lit8 v7, p1, -0x1a

    invoke-virtual {v6, v7}, Lcom/syu/app/ipc/Bt_IpcObj;->cmdNum(I)V

    .line 447
    const/16 v6, 0x24

    if-ne p1, v6, :cond_1

    .line 448
    const-string v6, "*"

    invoke-virtual {p0, v6, v9}, Lcom/syu/bt/page/pop/Page_PopBt;->setInputNumber(Ljava/lang/String;Z)V

    goto :goto_0

    .line 449
    :cond_1
    const/16 v6, 0x25

    if-ne p1, v6, :cond_2

    .line 450
    const-string v6, "#"

    invoke-virtual {p0, v6, v9}, Lcom/syu/bt/page/pop/Page_PopBt;->setInputNumber(Ljava/lang/String;Z)V

    goto :goto_0

    .line 452
    :cond_2
    add-int/lit8 v6, p1, -0x1a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v9}, Lcom/syu/bt/page/pop/Page_PopBt;->setInputNumber(Ljava/lang/String;Z)V

    goto :goto_0

    .line 455
    :pswitch_3
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->downloadBook()V

    goto :goto_0

    .line 460
    :pswitch_4
    const-string v6, "ldd"

    const-string v7, " ResponseClick PopBt_Btn_ShowHideKeyBoard 00 "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "BT_23NEW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 462
    const-string v6, "gdy7"

    const-string v7, " ResponseClick PopBt_Btn_ShowHideKeyBoard 11 "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v1, "intent2":Landroid/content/Intent;
    const/high16 v6, 0x10200000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 466
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.syu.bt"

    const-string v8, "com.syu.bt.BtAct"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 468
    :try_start_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v6, v6, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 469
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 474
    .end local v1    # "intent2":Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/syu/bt/page/pop/Page_PopBt;->btnKeyBoradShow:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v6, :cond_4

    .line 475
    iget-object v6, p0, Lcom/syu/bt/page/pop/Page_PopBt;->btnKeyBoradShow:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v6}, Lcom/lsec/core/frame/ctrl/JButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/app/MyUiItem;

    .line 476
    .local v2, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 477
    invoke-virtual {v2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "strDrawable":Ljava/lang/String;
    iget-object v6, p0, Lcom/syu/bt/page/pop/Page_PopBt;->btnKeyBoradShow:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v6}, Lcom/lsec/core/frame/ctrl/JButton;->getStrDrawable()Ljava/lang/String;

    move-result-object v6

    if-eq v6, v3, :cond_4

    .line 480
    iget-object v6, p0, Lcom/syu/bt/page/pop/Page_PopBt;->btnKeyBoradShow:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v6, v3, v8}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 484
    .end local v2    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v3    # "strDrawable":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x31

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    .line 485
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_6

    .line 486
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    .line 487
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 501
    :goto_1
    invoke-virtual {p0, v8}, Lcom/syu/bt/page/pop/Page_PopBt;->updateKeyBoardShow(Z)V

    goto/16 :goto_0

    .line 489
    :cond_5
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 491
    :cond_6
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-boolean v6, v6, Lcom/syu/bt/App_Bt;->bPopBtShow_Num:Z

    if-eqz v6, :cond_7

    .line 492
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/syu/bt/App_Bt;->popBtNum(Z)V

    .line 493
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iput-boolean v9, v6, Lcom/syu/bt/App_Bt;->bPopBtShowBak_Num:Z

    goto :goto_1

    .line 495
    :cond_7
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/syu/bt/App_Bt;->popBtNum(Z)V

    .line 496
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iput-boolean v8, v6, Lcom/syu/bt/App_Bt;->bPopBtShowBak_Num:Z

    goto :goto_1

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x1a
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
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
        :pswitch_4
    .end packed-switch
.end method

.method public ResponseClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 512
    const-string v1, "pop"

    const-string v2, " 00 ResponseClick "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-direct {p0, p1}, Lcom/syu/bt/page/pop/Page_PopBt;->btnClick_Third(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bPop3rdPhone:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    if-nez v1, :cond_0

    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 520
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/syu/bt/page/pop/Page_PopBt;->ResponseClick(I)V

    goto :goto_0
.end method

.method public ResponseLongClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x1

    .line 642
    sparse-switch p1, :sswitch_data_0

    .line 653
    :goto_0
    return-void

    .line 644
    :sswitch_0
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->LongClick0()V

    goto :goto_0

    .line 647
    :sswitch_1
    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    .line 648
    invoke-virtual {p0, v0}, Lcom/syu/bt/page/pop/Page_PopBt;->showKeyBorad(Z)V

    goto :goto_0

    .line 642
    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0x2c -> :sswitch_1
    .end sparse-switch
.end method

.method public ResponseLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 657
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bPop3rdPhone:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    if-eqz v1, :cond_1

    .line 662
    :cond_0
    :goto_0
    return v2

    .line 660
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 661
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/syu/bt/page/pop/Page_PopBt;->ResponseLongClick(I)V

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->resume()V

    .line 65
    const-string v2, "lddd"

    const-string v3, " 44 Page_PopBt resume  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v3, 0x31

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 68
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :cond_0
    invoke-virtual {p0, v1}, Lcom/syu/bt/page/pop/Page_PopBt;->updateKeyBoardShow(Z)V

    .line 71
    invoke-direct {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->initView()V

    .line 72
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v3, 0x9

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/syu/bt/page/pop/Page_PopBt;->updateView(I)V

    .line 74
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    :cond_1
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bHFP:Z

    invoke-virtual {p0, v2}, Lcom/syu/bt/page/pop/Page_PopBt;->updateBtnVoiceSwitch(Z)V

    .line 77
    :cond_2
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isTalk()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/syu/bt/page/pop/Page_PopBt;->updateBtnMute(Z)V

    .line 78
    return-void
.end method

.method public setDayOrNight(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 818
    return-void
.end method

.method public setInputNumber(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "num"    # Ljava/lang/String;
    .param p2, "bReset"    # Z

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 409
    .local v0, "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_0

    .line 410
    if-eqz p2, :cond_1

    .line 411
    const-string v1, ""

    sput-object v1, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    .line 415
    :goto_0
    sget-object v1, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 417
    :cond_0
    return-void

    .line 413
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    goto :goto_0
.end method

.method public showKeyBorad(Z)V
    .locals 4
    .param p1, "bShow"    # Z

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 397
    .local v0, "bIsShow":Z
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v3, 0x31

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .line 398
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 399
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 403
    :goto_0
    if-eq p1, v0, :cond_0

    .line 404
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Lcom/syu/bt/page/pop/Page_PopBt;->ResponseClick(I)V

    .line 405
    :cond_0
    return-void

    .line 399
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 401
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-boolean v0, v2, Lcom/syu/bt/App_Bt;->bPopBtShowBak_Num:Z

    goto :goto_0
.end method

.method public updateBtnMute(Z)V
    .locals 11
    .param p1, "flag"    # Z

    .prologue
    .line 666
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "TZY_NEW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "TZY_UI5"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "TZY_BT_1920"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "TZY_OEM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 668
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 669
    .local v1, "button":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v1, :cond_1

    .line 670
    if-eqz p1, :cond_5

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v1, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 673
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x45

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    .line 674
    .local v2, "button2":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v2, :cond_2

    .line 675
    if-eqz p1, :cond_6

    const/16 v7, 0x8

    :goto_1
    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 681
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JButton;

    .line 682
    .local v3, "button3":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v3, :cond_3

    .line 683
    if-eqz p1, :cond_7

    const/16 v7, 0x8

    :goto_2
    invoke-virtual {v3, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 687
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x41

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JButton;

    .line 688
    .local v4, "button4":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v4, :cond_4

    .line 689
    if-eqz p1, :cond_8

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v4, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 752
    .end local v1    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v2    # "button2":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v3    # "button3":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v4    # "button4":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_4
    :goto_4
    return-void

    .line 670
    .restart local v1    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_5
    const/16 v7, 0x8

    goto :goto_0

    .line 675
    .restart local v2    # "button2":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 683
    .restart local v3    # "button3":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 689
    .restart local v4    # "button4":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_8
    const/16 v7, 0x8

    goto :goto_3

    .line 693
    .end local v1    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v2    # "button2":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v3    # "button3":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v4    # "button4":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_9
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "TZY4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "BT_NEW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 694
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "BT_8581"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    sget-boolean v7, Lcom/syu/bt/App_Bt;->bShowFloat:Z

    if-nez v7, :cond_a

    .line 695
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "BT_NEW_YX"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 697
    :cond_a
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JButton;

    .line 698
    .restart local v3    # "button3":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v3, :cond_b

    .line 699
    if-eqz p1, :cond_c

    const/16 v7, 0x8

    :goto_5
    invoke-virtual {v3, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 702
    :cond_b
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x41

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JButton;

    .line 703
    .restart local v4    # "button4":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v4, :cond_4

    .line 704
    if-eqz p1, :cond_d

    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v4, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    goto :goto_4

    .line 699
    .end local v4    # "button4":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_c
    const/4 v7, 0x0

    goto :goto_5

    .line 704
    .restart local v4    # "button4":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_d
    const/16 v7, 0x8

    goto :goto_6

    .line 707
    .end local v3    # "button3":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v4    # "button4":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_e
    sget-boolean v7, Lcom/syu/bt/App_Bt;->bPop_hideKeyBoard:Z

    if-nez v7, :cond_f

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "YL_3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "YL_BT_1920"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "SYU-XN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 709
    :cond_f
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JButton;

    .line 710
    .restart local v3    # "button3":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v3, :cond_10

    .line 711
    if-eqz p1, :cond_11

    const/16 v7, 0x8

    :goto_7
    invoke-virtual {v3, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 714
    :cond_10
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JButton;

    .line 715
    .restart local v4    # "button4":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v4, :cond_4

    .line 716
    if-eqz p1, :cond_12

    const/4 v7, 0x0

    :goto_8
    invoke-virtual {v4, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 711
    .end local v4    # "button4":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_11
    const/4 v7, 0x0

    goto :goto_7

    .line 716
    .restart local v4    # "button4":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_12
    const/16 v7, 0x8

    goto :goto_8

    .line 719
    .end local v3    # "button3":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v4    # "button4":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_13
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "BT_23NEW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 720
    move v5, p1

    .line 721
    .local v5, "isTalk":Z
    const-string v7, "gdy1280"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " updateBtnMute sPhoneNumberHoldOn = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isTalk = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Bt.DATA[FinalBt.U_PHONE_STATE] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v10, 0x9

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v8, 0x9

    aget v7, v7, v8

    const/4 v8, 0x4

    if-ne v7, v8, :cond_14

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 726
    :cond_14
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x16

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JText;

    .line 727
    .local v6, "txtTime":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v6, :cond_15

    .line 728
    if-nez v5, :cond_18

    const/16 v7, 0x8

    :goto_9
    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 730
    :cond_15
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 731
    .local v0, "Pop_Btn":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_16

    .line 732
    if-nez v5, :cond_19

    const/16 v7, 0x8

    :goto_a
    invoke-virtual {v0, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 733
    :cond_16
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "Pop_Btn":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 734
    .restart local v0    # "Pop_Btn":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_17

    .line 735
    if-nez v5, :cond_1a

    const/16 v7, 0x8

    :goto_b
    invoke-virtual {v0, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 737
    :cond_17
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "Pop_Btn":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 738
    .restart local v0    # "Pop_Btn":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_4

    .line 739
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isRing()Z

    move-result v7

    if-eqz v7, :cond_1b

    const/4 v7, 0x0

    :goto_c
    invoke-virtual {v0, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 728
    .end local v0    # "Pop_Btn":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_18
    const/4 v7, 0x0

    goto :goto_9

    .line 732
    .restart local v0    # "Pop_Btn":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_19
    const/4 v7, 0x0

    goto :goto_a

    .line 735
    :cond_1a
    const/4 v7, 0x0

    goto :goto_b

    .line 739
    :cond_1b
    const/16 v7, 0x8

    goto :goto_c

    .line 741
    .end local v0    # "Pop_Btn":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v5    # "isTalk":Z
    .end local v6    # "txtTime":Lcom/lsec/core/frame/ctrl/JText;
    :cond_1c
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "BT_YX1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 742
    const-string v7, "gdy1280"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " updateBtnMute Ipc_New.isRing() = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isRing()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Bt.DATA[FinalBt.U_PHONE_STATE] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v10, 0x9

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x41

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 745
    .restart local v0    # "Pop_Btn":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_1d

    .line 746
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isRing()Z

    move-result v7

    if-eqz v7, :cond_1e

    const/16 v7, 0x8

    :goto_d
    invoke-virtual {v0, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 747
    :cond_1d
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "Pop_Btn":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 748
    .restart local v0    # "Pop_Btn":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_4

    .line 749
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isRing()Z

    move-result v7

    if-eqz v7, :cond_1f

    const/4 v7, 0x0

    :goto_e
    invoke-virtual {v0, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 746
    :cond_1e
    const/4 v7, 0x0

    goto :goto_d

    .line 749
    :cond_1f
    const/16 v7, 0x8

    goto :goto_e
.end method

.method public updateBtnVoiceSwitch(Z)V
    .locals 9
    .param p1, "flag"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 755
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 756
    .local v0, "button":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/app/MyUiItem;

    .line 758
    .local v2, "item":Lcom/lsec/core/frame/app/MyUiItem;
    sget-object v4, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "BT_23NEW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 759
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bHFP:Z

    if-eqz v4, :cond_3

    const-string v4, "bt_dialsound"

    :goto_0
    invoke-virtual {v0, v4, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 761
    const-string v4, "hfp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 22 Page_Dial updateBtnVoiceSwitch App_Bt.bHFP = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/syu/bt/App_Bt;->bHFP:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    .end local v2    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v5, 0x2a

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 781
    .local v1, "button2":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v1, :cond_2

    .line 782
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/app/MyUiItem;

    .line 783
    .restart local v2    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 784
    const/4 v3, 0x0

    .line 785
    .local v3, "str":Ljava/lang/String;
    if-nez p1, :cond_8

    .line 786
    invoke-virtual {v2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v3

    .line 791
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JButton;->getStrDrawable()Ljava/lang/String;

    move-result-object v4

    if-eq v4, v3, :cond_2

    .line 792
    if-eqz v3, :cond_2

    .line 793
    invoke-virtual {v1, v3, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 797
    .end local v2    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    return-void

    .line 759
    .end local v1    # "button2":Lcom/lsec/core/frame/ctrl/JButton;
    .restart local v2    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_3
    const-string v4, "bt_dialsound1"

    goto :goto_0

    .line 762
    :cond_4
    invoke-virtual {v2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 763
    const/4 v3, 0x0

    .line 764
    .restart local v3    # "str":Ljava/lang/String;
    if-nez p1, :cond_6

    .line 765
    invoke-virtual {v2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v3

    .line 770
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JButton;->getStrDrawable()Ljava/lang/String;

    move-result-object v4

    if-eq v4, v3, :cond_0

    .line 771
    if-eqz v3, :cond_0

    .line 772
    invoke-virtual {v0, v3, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_1

    .line 766
    :cond_6
    invoke-virtual {v2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 767
    invoke-virtual {v2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v8

    goto :goto_3

    .line 775
    .end local v3    # "str":Ljava/lang/String;
    :cond_7
    const-string v4, "hfp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 44 Page_Dial updateBtnVoiceSwitch App_Bt.bHFP = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/syu/bt/App_Bt;->bHFP:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bHFP:Z

    invoke-virtual {v0, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto :goto_1

    .line 787
    .restart local v1    # "button2":Lcom/lsec/core/frame/ctrl/JButton;
    .restart local v3    # "str":Ljava/lang/String;
    :cond_8
    invoke-virtual {v2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 788
    invoke-virtual {v2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v8

    goto :goto_2
.end method

.method public updateKeyBoardShow(Z)V
    .locals 9
    .param p1, "bUpdateBtBook"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 357
    const/4 v0, 0x0

    .line 359
    .local v0, "bIsNumShow":Z
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x31

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    .line 360
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 361
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    move v0, v4

    .line 367
    :goto_0
    const-string v6, "ldd"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " updateKeyBoardShow bIsNumShow = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v6, p0, Lcom/syu/bt/page/pop/Page_PopBt;->btnKeyBoradShow:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v6, :cond_0

    .line 370
    iget-object v6, p0, Lcom/syu/bt/page/pop/Page_PopBt;->btnKeyBoradShow:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v6}, Lcom/lsec/core/frame/ctrl/JButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/app/MyUiItem;

    .line 371
    .local v1, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v1}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 372
    const/4 v2, 0x0

    .line 373
    .local v2, "strDrawable":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 374
    invoke-virtual {v1}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v6

    aget-object v2, v6, v5

    .line 378
    :goto_1
    iget-object v5, p0, Lcom/syu/bt/page/pop/Page_PopBt;->btnKeyBoradShow:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JButton;->getStrDrawable()Ljava/lang/String;

    move-result-object v5

    if-eq v5, v2, :cond_0

    .line 379
    iget-object v5, p0, Lcom/syu/bt/page/pop/Page_PopBt;->btnKeyBoradShow:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v5, v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 390
    .end local v1    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v2    # "strDrawable":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 391
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/syu/bt/App_Bt;->popBtBook(Z)V

    .line 392
    :cond_1
    return-void

    :cond_2
    move v0, v5

    .line 361
    goto :goto_0

    .line 363
    :cond_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-boolean v0, v6, Lcom/syu/bt/App_Bt;->bPopBtShowBak_Num:Z

    goto :goto_0

    .line 376
    .restart local v1    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v2    # "strDrawable":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public updateView(I)V
    .locals 10
    .param p1, "state"    # I

    .prologue
    const/4 v9, 0x3

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 310
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v4

    if-nez v4, :cond_0

    .line 354
    :goto_0
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x0

    .line 314
    .local v0, "phoneState":I
    packed-switch p1, :pswitch_data_0

    .line 326
    :goto_1
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x5

    if-ne p1, v4, :cond_1

    .line 327
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->popBtNum(Z)V

    .line 328
    const/4 v0, 0x3

    .line 332
    :cond_1
    const-string v4, "gdy66"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 00 updateView phoneState = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  iPhoneState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/syu/bt/App_Bt;->iPhoneState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    sget v4, Lcom/syu/bt/App_Bt;->iPhoneState:I

    if-eq v0, v4, :cond_2

    .line 335
    sput v0, Lcom/syu/bt/App_Bt;->iPhoneState:I

    .line 336
    sget v4, Lcom/syu/bt/App_Bt;->iPhoneState:I

    if-ne v4, v9, :cond_2

    .line 337
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/syu/bt/App_Bt;->show_PopBt()V

    .line 339
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v7, 0x42

    invoke-virtual {v4, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .line 340
    .local v1, "viewR":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 341
    const/4 v4, 0x1

    if-ne v0, v4, :cond_6

    move v4, v5

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 344
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v7, 0x43

    invoke-virtual {v4, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .line 345
    .local v2, "viewT":Landroid/view/View;
    if-eqz v2, :cond_4

    .line 346
    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    move v4, v5

    :goto_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 349
    :cond_4
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v7, 0x44

    invoke-virtual {v4, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    .line 350
    .local v3, "viewT2":Landroid/view/View;
    if-eqz v3, :cond_5

    .line 351
    if-ne v0, v9, :cond_8

    :goto_4
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 353
    :cond_5
    const-string v4, "btpop"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 00 popBt_bk updateView bPopBtShow_Num = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-boolean v6, v6, Lcom/syu/bt/App_Bt;->bPopBtShow_Num:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 317
    .end local v1    # "viewR":Landroid/view/View;
    .end local v2    # "viewT":Landroid/view/View;
    .end local v3    # "viewT2":Landroid/view/View;
    :pswitch_0
    const/4 v0, 0x1

    .line 318
    goto/16 :goto_1

    .line 320
    :pswitch_1
    const/4 v0, 0x2

    goto/16 :goto_1

    .restart local v1    # "viewR":Landroid/view/View;
    :cond_6
    move v4, v6

    .line 341
    goto :goto_2

    .restart local v2    # "viewT":Landroid/view/View;
    :cond_7
    move v4, v6

    .line 346
    goto :goto_3

    .restart local v3    # "viewT2":Landroid/view/View;
    :cond_8
    move v5, v6

    .line 351
    goto :goto_4

    .line 314
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

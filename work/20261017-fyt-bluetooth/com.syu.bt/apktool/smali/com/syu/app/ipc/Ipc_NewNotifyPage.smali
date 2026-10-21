.class public Lcom/syu/app/ipc/Ipc_NewNotifyPage;
.super Ljava/lang/Object;
.source "Ipc_NewNotifyPage.java"


# static fields
.field public static HFP_state:[I

.field public static artist_p:Ljava/lang/String;

.field public static sPhoneNumber_p:Ljava/lang/String;

.field public static title_p:Ljava/lang/String;


# instance fields
.field public Page_Contact_p:Lcom/syu/bt/page/Page_Contact;

.field public iPhoneState_p:I

.field listContact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field listContactDownload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mRunnableDownOver:Ljava/lang/Runnable;

.field public mRunnable_EndLoad:Ljava/lang/Runnable;

.field public mRunnable_showLoading:Ljava/lang/Runnable;

.field public mRunnable_updateHistoryList:Ljava/lang/Runnable;

.field zzz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    const-string v0, ""

    sput-object v0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->sPhoneNumber_p:Ljava/lang/String;

    .line 440
    const-string v0, ""

    sput-object v0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->artist_p:Ljava/lang/String;

    .line 441
    const-string v0, ""

    sput-object v0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->title_p:Ljava/lang/String;

    .line 914
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->HFP_state:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->listContactDownload:Ljava/util/List;

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->listContact:Ljava/util/List;

    .line 714
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->zzz:Z

    .line 715
    new-instance v0, Lcom/syu/app/ipc/Ipc_NewNotifyPage$1;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Ipc_NewNotifyPage$1;-><init>(Lcom/syu/app/ipc/Ipc_NewNotifyPage;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->mRunnableDownOver:Ljava/lang/Runnable;

    .line 730
    new-instance v0, Lcom/syu/app/ipc/Ipc_NewNotifyPage$2;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Ipc_NewNotifyPage$2;-><init>(Lcom/syu/app/ipc/Ipc_NewNotifyPage;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->mRunnable_showLoading:Ljava/lang/Runnable;

    .line 915
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->iPhoneState_p:I

    .line 1187
    new-instance v0, Lcom/syu/app/ipc/Ipc_NewNotifyPage$3;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Ipc_NewNotifyPage$3;-><init>(Lcom/syu/app/ipc/Ipc_NewNotifyPage;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->mRunnable_EndLoad:Ljava/lang/Runnable;

    .line 1197
    new-instance v0, Lcom/syu/app/ipc/Ipc_NewNotifyPage$4;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Ipc_NewNotifyPage$4;-><init>(Lcom/syu/app/ipc/Ipc_NewNotifyPage;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->mRunnable_updateHistoryList:Ljava/lang/Runnable;

    .line 73
    return-void
.end method


# virtual methods
.method public getStrList([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1350
    const-string v1, ""

    .line 1351
    .local v1, "str":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 1359
    .end local v0    # "i":I
    :cond_0
    return-object v1

    .line 1353
    .restart local v0    # "i":I
    :cond_1
    aget-object v2, p1, v0

    if-eqz v2, :cond_2

    .line 1354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1352
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1356
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public isStateValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 106
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 116
    :goto_0
    :pswitch_0
    return v0

    .line 108
    :pswitch_1
    sget v1, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    packed-switch v1, :pswitch_data_1

    .line 113
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
    .end packed-switch

    .line 108
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Av;I[I[F[Ljava/lang/String;)V
    .locals 24
    .param p1, "page_Av"    # Lcom/syu/bt/page/Page_Av;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 445
    sparse-switch p2, :sswitch_data_0

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 448
    :sswitch_0
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v17, v19, p2

    .line 449
    .local v17, "value":I
    const-string v19, "id3"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " 00 U_BTAV_PLAY_STATE value = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v6, 0x0

    .line 451
    .local v6, "bRun":Z
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v19

    if-nez v19, :cond_9

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 452
    const/4 v6, 0x1

    .line 453
    const/16 v19, 0x1

    sput-boolean v19, Lcom/syu/bt/App_Bt;->bBtAvPlayState:Z

    .line 457
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syu/bt/page/Page_Av;->mBtnPlayPause:Lcom/lsec/core/frame/ctrl/JButton;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syu/bt/page/Page_Av;->mImgViewBtavAnim:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 458
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->updateBtnPlayPause()V

    .line 460
    :cond_2
    const-string v19, "gdy4"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " 00 U_BTAV_PLAY_STATE bRun = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-object v19, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v20, "TZY_NEW"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    sget-object v19, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v20, "TZY_OEM"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 462
    :cond_3
    if-eqz v6, :cond_a

    .line 463
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->startAnim()V

    .line 476
    :cond_4
    :goto_2
    sget-boolean v19, Lcom/syu/bt/App_Bt;->bMediaManager:Z

    if-eqz v19, :cond_5

    sget-object v19, Lcom/syu/bt/MediaManager;->mInstance:Lcom/syu/bt/MediaManager;

    if-eqz v19, :cond_5

    .line 477
    sget-object v19, Lcom/syu/bt/MediaManager;->mInstance:Lcom/syu/bt/MediaManager;

    invoke-virtual/range {v19 .. v19}, Lcom/syu/bt/MediaManager;->setPlaybackState()V

    .line 478
    :cond_5
    sget v19, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    packed-switch v19, :pswitch_data_0

    .line 499
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    .line 500
    const/16 v20, 0x2841

    .line 499
    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/syu/bt/ctrl/JRotView;

    .line 501
    .local v11, "rotCd":Lcom/syu/bt/ctrl/JRotView;
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    .line 502
    const/16 v20, 0x2843

    .line 501
    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/syu/bt/ctrl/JPinBar;

    .line 503
    .local v10, "pinBar":Lcom/syu/bt/ctrl/JPinBar;
    if-eqz v11, :cond_6

    .line 504
    invoke-virtual {v11, v6}, Lcom/syu/bt/ctrl/JRotView;->setRun(Z)V

    .line 506
    :cond_6
    if-eqz v10, :cond_7

    .line 507
    invoke-virtual {v10, v6}, Lcom/syu/bt/ctrl/JPinBar;->setRun(Z)V

    .line 509
    :cond_7
    const/4 v5, 0x0

    .line 510
    .local v5, "bId3InfoGone":Z
    if-nez v17, :cond_8

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/syu/bt/page/Page_Av;->misAvStop:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 511
    const/4 v5, 0x1

    .line 513
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    .line 514
    const/16 v20, 0x2857

    .line 513
    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v18

    .line 515
    .local v18, "viewId3Info":Landroid/view/View;
    if-eqz v18, :cond_0

    .line 516
    if-eqz v5, :cond_d

    .line 517
    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 455
    .end local v5    # "bId3InfoGone":Z
    .end local v10    # "pinBar":Lcom/syu/bt/ctrl/JPinBar;
    .end local v11    # "rotCd":Lcom/syu/bt/ctrl/JRotView;
    .end local v18    # "viewId3Info":Landroid/view/View;
    :cond_9
    const/16 v19, 0x0

    sput-boolean v19, Lcom/syu/bt/App_Bt;->bBtAvPlayState:Z

    goto/16 :goto_1

    .line 465
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->stopAnim()V

    goto :goto_2

    .line 467
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    const/16 v20, 0x285d

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    .line 468
    .local v9, "mDynamicView1":Landroid/view/View;
    if-eqz v9, :cond_4

    .line 469
    if-eqz v6, :cond_c

    .line 470
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->startAnim()V

    goto :goto_2

    .line 472
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->stopAnim()V

    goto :goto_2

    .line 480
    .end local v9    # "mDynamicView1":Landroid/view/View;
    :pswitch_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 481
    .local v7, "data":Landroid/os/Bundle;
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 482
    .local v12, "str":Ljava/lang/String;
    const-string v19, "btav_playpause"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 485
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 486
    const-string v19, "com.syu.widget.BtavService"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string v19, "com.android.launcher3"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    sget-object v19, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/lsec/core/frame/app/MyApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3

    .line 519
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v12    # "str":Ljava/lang/String;
    .restart local v5    # "bId3InfoGone":Z
    .restart local v10    # "pinBar":Lcom/syu/bt/ctrl/JPinBar;
    .restart local v11    # "rotCd":Lcom/syu/bt/ctrl/JRotView;
    .restart local v18    # "viewId3Info":Landroid/view/View;
    :cond_d
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 524
    .end local v5    # "bId3InfoGone":Z
    .end local v6    # "bRun":Z
    .end local v10    # "pinBar":Lcom/syu/bt/ctrl/JPinBar;
    .end local v11    # "rotCd":Lcom/syu/bt/ctrl/JRotView;
    .end local v17    # "value":I
    .end local v18    # "viewId3Info":Landroid/view/View;
    :sswitch_1
    sget-object v16, Lcom/lsec/core/ipc/module/main/Bt;->sId3Title:Ljava/lang/String;

    .line 525
    .local v16, "title":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    const/16 v20, 0x284f

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lsec/core/frame/ctrl/JText;

    .line 526
    .local v13, "text":Lcom/lsec/core/frame/ctrl/JText;
    sput-object v16, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->title_p:Ljava/lang/String;

    .line 527
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    const/16 v20, 0x2850

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/lsec/core/frame/ctrl/JText;

    .line 528
    .local v15, "textName":Lcom/lsec/core/frame/ctrl/JText;
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 529
    if-eqz v13, :cond_e

    .line 530
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v19, v0

    const-string v20, "bt_disconnected"

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 531
    :cond_e
    if-eqz v15, :cond_f

    .line 532
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 542
    :cond_f
    :goto_4
    const-string v19, "id3"

    const-string v20, " 11  IpcNew FinalBt.U_BTAV_ID3_TITLE Bt.sId3Title "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    sget-boolean v19, Lcom/syu/bt/App_Bt;->bMediaManager:Z

    if-eqz v19, :cond_0

    .line 544
    sget-object v19, Lcom/syu/bt/MediaManager;->mInstance:Lcom/syu/bt/MediaManager;

    if-eqz v19, :cond_0

    .line 545
    sget-object v19, Lcom/syu/bt/MediaManager;->mInstance:Lcom/syu/bt/MediaManager;

    invoke-virtual/range {v19 .. v19}, Lcom/syu/bt/MediaManager;->dispFileInfo()V

    goto/16 :goto_0

    .line 534
    :cond_10
    if-eqz v13, :cond_f

    .line 535
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    const/16 v20, 0x2855

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/lsec/core/frame/ctrl/JText;

    .line 537
    .local v14, "text2":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v14, :cond_f

    .line 538
    invoke-virtual {v13}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 549
    .end local v13    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v14    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    .end local v15    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    .end local v16    # "title":Ljava/lang/String;
    :sswitch_2
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sId3Artist:Ljava/lang/String;

    .line 550
    .local v4, "artist":Ljava/lang/String;
    const-string v19, "gdy2"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " 22 U_BTAV_ID3_ARTIST artist = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " artist_p = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->artist_p:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    const/16 v20, 0x2851

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lsec/core/frame/ctrl/JText;

    .line 554
    .restart local v13    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v13, :cond_11

    .line 555
    invoke-virtual {v13, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 557
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    const/16 v20, 0x2850

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/lsec/core/frame/ctrl/JText;

    .line 558
    .restart local v15    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    sget-object v19, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->artist_p:Ljava/lang/String;

    if-eqz v19, :cond_0

    if-eqz v4, :cond_0

    .line 559
    sget-object v19, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->artist_p:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 560
    sput-object v4, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->artist_p:Ljava/lang/String;

    .line 561
    if-eqz v15, :cond_0

    .line 562
    sget-object v19, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->title_p:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 567
    .end local v4    # "artist":Ljava/lang/String;
    .end local v13    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v15    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_3
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sID3Album:Ljava/lang/String;

    .line 568
    .restart local v4    # "artist":Ljava/lang/String;
    const-string v19, "gdy2"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " 33 U_BTAV_ID3_ARTIST artist = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    .line 570
    const/16 v20, 0x2852

    .line 569
    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lsec/core/frame/ctrl/JText;

    .line 571
    .restart local v13    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v13, :cond_0

    .line 572
    invoke-virtual {v13, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 576
    .end local v4    # "artist":Ljava/lang/String;
    .end local v13    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_4
    if-eqz p5, :cond_0

    .line 577
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_0

    .line 578
    const/16 v19, 0x0

    aget-object v19, p5, v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Av;->dispAlmup(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 584
    :sswitch_5
    const-string v19, "steer"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " **Ipc1 BLE_STEER_DEV_STATE *  Bt.DATA[updateCode] = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v21, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v21, v21, p2

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " * iSteer = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/syu/bt/App_Bt;->iSteer:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " iSteer_p = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/syu/bt/App_Bt;->iSteer_p:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v19, v19, p2

    sget v20, Lcom/syu/bt/App_Bt;->iSteer:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 586
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v19, v19, p2

    if-nez v19, :cond_13

    .line 587
    sget v19, Lcom/syu/bt/App_Bt;->iSteer:I

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 589
    sget v19, Lcom/syu/bt/App_Bt;->iSteer:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 590
    const/16 v19, 0x1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mRunnable_SteerDisCon:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x1388

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 600
    :cond_12
    :goto_5
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v19, v19, p2

    sput v19, Lcom/syu/bt/App_Bt;->iSteer:I

    goto/16 :goto_0

    .line 591
    :cond_13
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v19, v19, p2

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 592
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mRunnable_SteerDisCon:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 593
    sget v19, Lcom/syu/bt/App_Bt;->iSteer_p:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    .line 594
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v19

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v20, v0

    const-string v21, "bt_steer_1"

    invoke-virtual/range {v20 .. v21}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 595
    const/16 v19, 0x1

    sput v19, Lcom/syu/bt/App_Bt;->iSteer_p:I

    goto :goto_5

    .line 606
    :sswitch_6
    const-string v19, "hfp11"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " ** 11   updateCode = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v19

    if-nez v19, :cond_0

    .line 608
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v19, v19, p2

    sput v19, Lcom/syu/bt/App_Bt;->iBtAv_CurTime:I

    .line 610
    if-eqz p1, :cond_0

    .line 611
    sget v19, Lcom/syu/bt/App_Bt;->iBtAv_CurTime:I

    sget v20, Lcom/syu/bt/App_Bt;->iBtAv_TotalTime:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    .line 612
    sget v19, Lcom/syu/bt/App_Bt;->iBtAv_CurTime:I

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Av;->handleSeekPos(I)V

    goto/16 :goto_0

    .line 619
    :sswitch_7
    const-string v19, "id3"

    const-string v20, " 11  IpcNew FinalBt.U_BTAV_TOTAL_TIME "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v19

    if-nez v19, :cond_0

    .line 621
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v19, v19, p2

    sput v19, Lcom/syu/bt/App_Bt;->iBtAv_TotalTime:I

    .line 622
    const-string v19, "id3"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " 11  IpcNew U_BTAV_TOTAL_TIME = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v21, Lcom/syu/bt/App_Bt;->iBtAv_TotalTime:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    if-eqz p1, :cond_0

    .line 624
    sget v19, Lcom/syu/bt/App_Bt;->iBtAv_TotalTime:I

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/page/Page_Av;->updateSeekbar(IZ)V

    goto/16 :goto_0

    .line 630
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    .line 631
    const/16 v20, 0x2854

    .line 630
    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lsec/core/frame/ctrl/JText;

    .line 633
    .restart local v13    # "text":Lcom/lsec/core/frame/ctrl/JText;
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v19, v19, p2

    packed-switch v19, :pswitch_data_1

    goto/16 :goto_0

    .line 635
    :pswitch_1
    if-eqz v13, :cond_0

    .line 636
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v19, v0

    sget-object v20, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 640
    :pswitch_2
    if-eqz v13, :cond_0

    .line 641
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v19, v0

    sget-object v20, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    const/16 v21, 0x1

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 645
    :pswitch_3
    if-eqz v13, :cond_0

    .line 646
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v19, v0

    sget-object v20, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    const/16 v21, 0x2

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 650
    :pswitch_4
    if-eqz v13, :cond_0

    .line 651
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v19, v0

    const-string v20, "bt_cuting"

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 659
    .end local v13    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_9
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v19

    if-eqz v19, :cond_17

    .line 661
    sget v19, Lcom/syu/bt/App_Bt;->iBtAv_CurTime:I

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Av;->handleSeekPos(I)V

    .line 662
    sget v19, Lcom/syu/bt/App_Bt;->iBtAv_TotalTime:I

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/page/Page_Av;->updateSeekbar(IZ)V

    .line 664
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    const/16 v20, 0x284f

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lsec/core/frame/ctrl/JText;

    .line 665
    .restart local v13    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v13, :cond_14

    .line 666
    sget-object v19, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v20, "YL_3"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 667
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v19, v0

    const-string v20, "bt_state_disconnected"

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 673
    :cond_14
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    const/16 v20, 0x2851

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "text":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v13, Lcom/lsec/core/frame/ctrl/JText;

    .line 674
    .restart local v13    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v13, :cond_15

    .line 675
    sget-object v19, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v20, "YL_3"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 676
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v19, v0

    const-string v20, "bt_state_disconnected"

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 682
    :cond_15
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    const/16 v20, 0x2857

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v18

    .line 683
    .restart local v18    # "viewId3Info":Landroid/view/View;
    if-eqz v18, :cond_16

    .line 684
    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 686
    :cond_16
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/syu/bt/page/Page_Av;->misAvStop:Z

    .line 687
    const-string v19, "id3"

    const-string v20, " 22  IpcNew FinalBt.U_PHONE_STATE  "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    sget-boolean v19, Lcom/syu/bt/App_Bt;->bMediaManager:Z

    if-eqz v19, :cond_17

    sget-object v19, Lcom/syu/bt/MediaManager;->mInstance:Lcom/syu/bt/MediaManager;

    if-eqz v19, :cond_17

    .line 689
    sget-object v19, Lcom/syu/bt/MediaManager;->mInstance:Lcom/syu/bt/MediaManager;

    invoke-virtual/range {v19 .. v19}, Lcom/syu/bt/MediaManager;->dispFileInfo()V

    .line 692
    .end local v13    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v18    # "viewId3Info":Landroid/view/View;
    :cond_17
    if-eqz p1, :cond_0

    .line 693
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Av;->updateBtConnectTip()V

    goto/16 :goto_0

    .line 670
    .restart local v13    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_18
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 679
    :cond_19
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 698
    .end local v13    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_a
    if-eqz p1, :cond_0

    .line 699
    sget v19, Lcom/syu/bt/App_Bt;->mPhoneBatterty:I

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Av;->updatePhoneBattery(I)V

    goto/16 :goto_0

    .line 703
    :sswitch_b
    if-eqz p1, :cond_0

    .line 704
    sget v19, Lcom/syu/bt/App_Bt;->mPhoneCoding:I

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Av;->updatePhoneAptx(I)V

    goto/16 :goto_0

    .line 445
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_7
        0x9 -> :sswitch_9
        0xd -> :sswitch_0
        0x1a -> :sswitch_3
        0x1c -> :sswitch_6
        0x22 -> :sswitch_8
        0x2c -> :sswitch_a
        0x2f -> :sswitch_b
        0x33 -> :sswitch_4
        0x3a -> :sswitch_5
        0x3d -> :sswitch_9
    .end sparse-switch

    .line 478
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch

    .line 633
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Av_HalfScreen;I[I[F[Ljava/lang/String;)V
    .locals 4
    .param p1, "page_Av_HalfScreen"    # Lcom/syu/bt/page/Page_Av_HalfScreen;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    const/16 v3, 0x2856

    const/16 v2, 0x2855

    .line 2114
    sparse-switch p2, :sswitch_data_0

    .line 2149
    :cond_0
    :goto_0
    return-void

    .line 2116
    :sswitch_0
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Av_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 2118
    .local v0, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_0

    .line 2119
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2120
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 2121
    const-string v2, "bt_disconnected"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2120
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2123
    :cond_1
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sId3Title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2128
    .end local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_1
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Av_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 2130
    .restart local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_0

    .line 2131
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sId3Artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2136
    .end local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_2
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2137
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Av_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 2138
    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 2137
    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 2139
    .restart local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_2

    .line 2140
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2142
    :cond_2
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Av_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 2144
    .restart local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_0

    .line 2145
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2114
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x9 -> :sswitch_2
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Callin;I[I[F[Ljava/lang/String;)V
    .locals 11
    .param p1, "page_Callin"    # Lcom/syu/bt/page/Page_Callin;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1721
    sparse-switch p2, :sswitch_data_0

    .line 1848
    :cond_0
    :goto_0
    return-void

    .line 1724
    :sswitch_0
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    .line 1725
    const/16 v7, 0x277f

    .line 1724
    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    .line 1726
    .local v3, "text":Lcom/lsec/core/frame/ctrl/JText;
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x9

    aget v5, v6, v7

    .line 1727
    .local v5, "value":I
    if-eqz v3, :cond_1

    .line 1728
    sget-boolean v6, Lcom/syu/bt/App_Bt;->bCallinHideKeyTextFlag:Z

    if-eqz v6, :cond_4

    .line 1729
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 1733
    :goto_1
    if-ltz v5, :cond_1

    const/4 v6, 0x6

    if-gt v5, v6, :cond_1

    .line 1734
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 1735
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1734
    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1738
    :cond_1
    sget-boolean v6, Lcom/syu/bt/App_Bt;->bShowKeyFlag:Z

    if-nez v6, :cond_2

    .line 1739
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x9

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1752
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    .line 1753
    const/16 v7, 0x277e

    .line 1752
    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "text":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    .line 1754
    .restart local v3    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v3, :cond_0

    .line 1755
    const/4 v6, 0x5

    if-eq v5, v6, :cond_3

    .line 1756
    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x14

    aget v6, v6, v7

    if-lez v6, :cond_5

    .line 1757
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_0

    .line 1731
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_1

    .line 1741
    :pswitch_0
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/syu/bt/page/Page_Callin;->Switch2Keyboard(I)V

    goto :goto_2

    .line 1744
    :pswitch_1
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/syu/bt/page/Page_Callin;->Switch2Keyboard(I)V

    goto :goto_2

    .line 1747
    :pswitch_2
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Lcom/syu/bt/page/Page_Callin;->Switch2Keyboard(I)V

    goto :goto_2

    .line 1759
    :cond_5
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_0

    .line 1764
    .end local v3    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v5    # "value":I
    :sswitch_1
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    .line 1765
    const/16 v7, 0x277c

    .line 1764
    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    .line 1766
    .restart local v3    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v3, :cond_6

    .line 1767
    sget-boolean v6, Lcom/syu/bt/App_Bt;->bCallinHideKeyTextFlag:Z

    if-eqz v6, :cond_7

    .line 1768
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 1775
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    .line 1776
    const/16 v7, 0x277d

    .line 1775
    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "text":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    .line 1777
    .restart local v3    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v3, :cond_0

    .line 1778
    sget-boolean v6, Lcom/syu/bt/App_Bt;->bCallinHideKeyTextFlag:Z

    if-eqz v6, :cond_8

    .line 1779
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 1783
    :goto_4
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1784
    const-string v6, ""

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1770
    :cond_7
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 1771
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1781
    :cond_8
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_4

    .line 1786
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1787
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1788
    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v7, "Thread-GetNameByNumber"

    new-instance v8, Lcom/syu/bt/runnable/Runnable_getNameByNumber;

    const-string v9, ""

    const/4 v10, 0x1

    invoke-direct {v8, v1, v3, v9, v10}, Lcom/syu/bt/runnable/Runnable_getNameByNumber;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Z)V

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-static {v6, v7, v8, v9, v10}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_0

    .line 1794
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .end local v3    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_2
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    .line 1795
    const/16 v7, 0x277e

    .line 1794
    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    .line 1796
    .restart local v3    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v3, :cond_0

    .line 1797
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x9

    aget v2, v6, v7

    .line 1798
    .local v2, "state":I
    const/4 v6, 0x5

    if-eq v2, v6, :cond_a

    .line 1799
    const/4 v6, 0x4

    if-ne v2, v6, :cond_b

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x14

    aget v6, v6, v7

    if-lez v6, :cond_b

    .line 1800
    :cond_a
    sget-boolean v6, Lcom/syu/bt/App_Bt;->bCallinHideKeyTextFlag:Z

    if-eqz v6, :cond_d

    .line 1801
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 1805
    :cond_b
    :goto_5
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v6, v6, p2

    add-int/lit8 v6, v6, 0x64

    div-int/lit16 v4, v6, 0x3e8

    .line 1806
    .local v4, "time":I
    sget-boolean v6, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v6, :cond_c

    .line 1807
    sget v4, Lcom/syu/bt/App_Bt;->sPhone2_talktime:I

    .line 1808
    :cond_c
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%02d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    div-int/lit8 v10, v4, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 1809
    rem-int/lit8 v10, v4, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1808
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1803
    .end local v4    # "time":I
    :cond_d
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_5

    .line 1814
    .end local v2    # "state":I
    .end local v3    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_3
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x15

    aget v6, v6, v7

    if-lez v6, :cond_0

    .line 1815
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x9

    aget v6, v6, v7

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 1816
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    .line 1817
    const/16 v7, 0x277e

    .line 1816
    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    .line 1818
    .restart local v3    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v3, :cond_0

    .line 1819
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x15

    aget v6, v6, v7

    add-int/lit16 v6, v6, 0xc8

    div-int/lit16 v5, v6, 0x3e8

    .line 1820
    .restart local v5    # "value":I
    if-lez v5, :cond_e

    .line 1821
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 1822
    const-string v8, "bt_auto_suspend"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1821
    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1824
    :cond_e
    const-string v6, ""

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1830
    .end local v3    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v5    # "value":I
    :sswitch_4
    const/4 v6, 0x1

    invoke-static {p3, v6}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1833
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    .line 1834
    const/16 v7, 0x27b1

    .line 1833
    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1835
    .local v0, "btn":Lcom/lsec/core/frame/ctrl/JButton;
    sget v6, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v7, 0x29

    if-ne v6, v7, :cond_0

    .line 1836
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x9

    aget v6, v6, v7

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 1837
    if-eqz v0, :cond_0

    .line 1838
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v6, v6, p2

    if-nez v6, :cond_f

    .line 1839
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto/16 :goto_0

    .line 1841
    :cond_f
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto/16 :goto_0

    .line 1721
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
        0xc -> :sswitch_2
        0x12 -> :sswitch_4
        0x15 -> :sswitch_3
        0x3d -> :sswitch_0
    .end sparse-switch

    .line 1739
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Callin_HalfScreen;I[I[F[Ljava/lang/String;)V
    .locals 10
    .param p1, "page_Callin_HalfScreen"    # Lcom/syu/bt/page/Page_Callin_HalfScreen;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1943
    sparse-switch p2, :sswitch_data_0

    .line 2044
    :cond_0
    :goto_0
    return-void

    .line 1946
    :sswitch_0
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 1947
    const/16 v6, 0x2783

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .line 1946
    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 1948
    .local v2, "text":Lcom/lsec/core/frame/ctrl/JText;
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v6, 0x9

    aget v4, v5, v6

    .line 1949
    .local v4, "value":I
    if-eqz v2, :cond_1

    .line 1950
    if-ltz v4, :cond_1

    const/4 v5, 0x6

    if-gt v4, v5, :cond_1

    .line 1951
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 1952
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1951
    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1955
    :cond_1
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v6, 0x9

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1970
    :goto_1
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 1971
    const/16 v6, 0x2782

    .line 1970
    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 1972
    .restart local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v2, :cond_0

    .line 1973
    const/4 v5, 0x5

    if-eq v4, v5, :cond_2

    .line 1974
    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v6, 0x14

    aget v5, v5, v6

    if-lez v5, :cond_3

    .line 1975
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_0

    .line 1958
    :pswitch_0
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->Switch2Key(I)V

    goto :goto_1

    .line 1962
    :pswitch_1
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->Switch2Key(I)V

    goto :goto_1

    .line 1966
    :pswitch_2
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->Switch2Key(I)V

    goto :goto_1

    .line 1977
    :cond_3
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_0

    .line 1982
    .end local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v4    # "value":I
    :sswitch_1
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 1983
    const/16 v6, 0x2780

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .line 1982
    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 1984
    .restart local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v2, :cond_4

    .line 1985
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1987
    :cond_4
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 1988
    const/16 v6, 0x2781

    .line 1987
    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 1989
    .restart local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v2, :cond_0

    .line 1990
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1991
    const-string v5, ""

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1993
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1994
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1995
    sget-object v5, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v6, "Thread-GetNameByNumber"

    new-instance v7, Lcom/syu/bt/runnable/Runnable_getNameByNumber;

    const-string v8, ""

    const/4 v9, 0x1

    invoke-direct {v7, v1, v2, v8, v9}, Lcom/syu/bt/runnable/Runnable_getNameByNumber;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Z)V

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-static {v5, v6, v7, v8, v9}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_0

    .line 2001
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .end local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_2
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 2002
    const/16 v6, 0x2782

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .line 2001
    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 2003
    .restart local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v2, :cond_0

    .line 2005
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v5, v5, p2

    add-int/lit8 v5, v5, 0x64

    div-int/lit16 v3, v5, 0x3e8

    .line 2006
    .local v3, "time":I
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v5, :cond_6

    .line 2007
    sget v3, Lcom/syu/bt/App_Bt;->sPhone2_talktime:I

    .line 2008
    :cond_6
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    div-int/lit8 v9, v3, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 2009
    rem-int/lit8 v9, v3, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 2008
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2014
    .end local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v3    # "time":I
    :sswitch_3
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v6, 0x15

    aget v5, v5, v6

    if-lez v5, :cond_0

    .line 2015
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v6, 0x9

    aget v5, v5, v6

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 2016
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 2017
    const/16 v6, 0x2782

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .line 2016
    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 2018
    .restart local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v2, :cond_0

    .line 2019
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v6, 0x15

    aget v5, v5, v6

    add-int/lit16 v5, v5, 0xc8

    div-int/lit16 v4, v5, 0x3e8

    .line 2020
    .restart local v4    # "value":I
    if-lez v4, :cond_7

    .line 2021
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 2022
    const-string v7, "bt_auto_suspend"

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2021
    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2024
    :cond_7
    const-string v5, ""

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2029
    .end local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v4    # "value":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 2030
    const/16 v6, 0x27b1

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 2029
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 2031
    .local v0, "btn":Lcom/lsec/core/frame/ctrl/JButton;
    sget v5, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v6, 0x29

    if-eq v5, v6, :cond_8

    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "BT_23NEW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2032
    :cond_8
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v6, 0x9

    aget v5, v5, v6

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 2033
    if-eqz v0, :cond_0

    .line 2034
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v5, v5, p2

    if-nez v5, :cond_9

    .line 2035
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto/16 :goto_0

    .line 2037
    :cond_9
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto/16 :goto_0

    .line 1943
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
        0xc -> :sswitch_2
        0x12 -> :sswitch_4
        0x15 -> :sswitch_3
        0x3d -> :sswitch_0
    .end sparse-switch

    .line 1955
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Callin_HideKey;I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p1, "page_Callin_HideKey"    # Lcom/syu/bt/page/Page_Callin_HideKey;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1922
    packed-switch p2, :pswitch_data_0

    .line 1939
    :cond_0
    :goto_0
    return-void

    .line 1924
    :pswitch_0
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin_HideKey;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 1925
    const/16 v2, 0x27b1

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 1924
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1926
    .local v0, "btn":Lcom/lsec/core/frame/ctrl/JButton;
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v2, 0x29

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_23NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1927
    :cond_1
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1928
    if-eqz v0, :cond_0

    .line 1929
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, p2

    if-nez v1, :cond_2

    .line 1930
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto :goto_0

    .line 1932
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto :goto_0

    .line 1922
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Callin_ShowCall;I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p1, "page_Callin_ShowCall"    # Lcom/syu/bt/page/Page_Callin_ShowCall;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1874
    sparse-switch p2, :sswitch_data_0

    .line 1897
    :cond_0
    :goto_0
    return-void

    .line 1877
    :sswitch_0
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v2, 0x37

    if-ne v1, v2, :cond_0

    .line 1878
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin_ShowCall;->updateSwipeCallingBtns()V

    goto :goto_0

    .line 1882
    :sswitch_1
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin_ShowCall;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 1883
    const/16 v2, 0x27b1

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 1882
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1884
    .local v0, "btn":Lcom/lsec/core/frame/ctrl/JButton;
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v2, 0x29

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_23NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1885
    :cond_1
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1886
    if-eqz v0, :cond_0

    .line 1887
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, p2

    if-nez v1, :cond_2

    .line 1888
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto :goto_0

    .line 1890
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto :goto_0

    .line 1874
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x12 -> :sswitch_1
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p1, "page_Callin_ShowCall_HalfScreen"    # Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 2071
    packed-switch p2, :pswitch_data_0

    .line 2088
    :cond_0
    :goto_0
    return-void

    .line 2073
    :pswitch_0
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 2074
    const/16 v2, 0x27b1

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 2073
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 2075
    .local v0, "btn":Lcom/lsec/core/frame/ctrl/JButton;
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v2, 0x29

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_23NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2076
    :cond_1
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 2077
    if-eqz v0, :cond_0

    .line 2078
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, p2

    if-nez v1, :cond_2

    .line 2079
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto :goto_0

    .line 2081
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto :goto_0

    .line 2071
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Callin_ShowDial;I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p1, "page_Callin_ShowDial"    # Lcom/syu/bt/page/Page_Callin_ShowDial;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1852
    packed-switch p2, :pswitch_data_0

    .line 1870
    :cond_0
    :goto_0
    return-void

    .line 1854
    :pswitch_0
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin_ShowDial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 1855
    const/16 v2, 0x27b1

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 1854
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1856
    .local v0, "btn":Lcom/lsec/core/frame/ctrl/JButton;
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v2, 0x29

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_23NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1858
    :cond_1
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1859
    if-eqz v0, :cond_0

    .line 1860
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, p2

    if-nez v1, :cond_2

    .line 1861
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto :goto_0

    .line 1863
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto :goto_0

    .line 1852
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Callin_ShowDial_HalfScreen;I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p1, "page_Callin_ShowDial_HalfScreen"    # Lcom/syu/bt/page/Page_Callin_ShowDial_HalfScreen;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 2049
    packed-switch p2, :pswitch_data_0

    .line 2066
    :cond_0
    :goto_0
    return-void

    .line 2051
    :pswitch_0
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin_ShowDial_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 2052
    const/16 v2, 0x27b1

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 2051
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 2053
    .local v0, "btn":Lcom/lsec/core/frame/ctrl/JButton;
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v2, 0x29

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_23NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2054
    :cond_1
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 2055
    if-eqz v0, :cond_0

    .line 2056
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, p2

    if-nez v1, :cond_2

    .line 2057
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto :goto_0

    .line 2059
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto :goto_0

    .line 2049
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Callin_ShowKey;I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p1, "page_Callin_ShowKey"    # Lcom/syu/bt/page/Page_Callin_ShowKey;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1901
    packed-switch p2, :pswitch_data_0

    .line 1918
    :cond_0
    :goto_0
    return-void

    .line 1903
    :pswitch_0
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin_ShowKey;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 1904
    const/16 v2, 0x27b1

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 1903
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1905
    .local v0, "btn":Lcom/lsec/core/frame/ctrl/JButton;
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v2, 0x29

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_23NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1906
    :cond_1
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1907
    if-eqz v0, :cond_0

    .line 1908
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, p2

    if-nez v1, :cond_2

    .line 1909
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto :goto_0

    .line 1911
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto :goto_0

    .line 1901
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p1, "page_Callin_ShowKey_HalfScreen"    # Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 2093
    packed-switch p2, :pswitch_data_0

    .line 2110
    :cond_0
    :goto_0
    return-void

    .line 2095
    :pswitch_0
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 2096
    const/16 v2, 0x27b1

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 2095
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 2097
    .local v0, "btn":Lcom/lsec/core/frame/ctrl/JButton;
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v2, 0x29

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_23NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2098
    :cond_1
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 2099
    if-eqz v0, :cond_0

    .line 2100
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, p2

    if-nez v1, :cond_2

    .line 2101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto :goto_0

    .line 2103
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto :goto_0

    .line 2093
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Contact;I[I[F[Ljava/lang/String;)V
    .locals 14
    .param p1, "page_Contact"    # Lcom/syu/bt/page/Page_Contact;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 743
    sparse-switch p2, :sswitch_data_0

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 745
    :sswitch_0
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 746
    const/4 v2, 0x3

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 747
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_0

    .line 748
    const-string v2, "hfp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 000 U_BOOK strs.length = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "strs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->getStrList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-eqz v2, :cond_0

    .line 750
    const/4 v2, 0x1

    sput-boolean v2, Lcom/syu/bt/App_Bt;->bHasDownBook:Z

    .line 751
    const/4 v2, 0x1

    aget-object v3, p5, v2

    .line 752
    .local v3, "name":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v4, p5, v2

    .line 753
    .local v4, "number":Ljava/lang/String;
    const-string v2, "ggg"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " --- U_BOOK number = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->Page_Contact_p:Lcom/syu/bt/page/Page_Contact;

    .line 756
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->mRunnableDownOver:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 757
    const/4 v2, 0x1

    iget-object v5, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->mRunnableDownOver:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-static {v2, v5, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 759
    const/4 v8, 0x0

    .line 760
    .local v8, "bRepaceOk":Z
    const-string v2, "+"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 761
    .local v9, "pos":I
    if-nez v9, :cond_1

    .line 762
    const/4 v8, 0x1

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\D"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 766
    :cond_1
    if-nez v8, :cond_2

    .line 767
    const-string v2, "[\\D]"

    const-string v5, ""

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 769
    :cond_2
    const-string v2, "/H"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 770
    const/4 v2, 0x0

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 774
    :cond_3
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 775
    move-object v3, v4

    .line 777
    :cond_4
    sget-object v12, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v13, "Thread-DownContact"

    new-instance v2, Lcom/syu/bt/runnable/Runnable_UBook;

    iget-object v5, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->listContact:Ljava/util/List;

    iget-object v6, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->listContactDownload:Ljava/util/List;

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/syu/bt/runnable/Runnable_UBook;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/syu/bt/page/Page_Contact;)V

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-static {v12, v13, v2, v5, v6}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_0

    .line 771
    :cond_5
    const-string v2, "/M"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 772
    const/4 v2, 0x0

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 781
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v8    # "bRepaceOk":Z
    .end local v9    # "pos":I
    :cond_6
    const/4 v2, 0x2

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 783
    const-string v2, "hfp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 000 U_BOOK strs.length = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "strs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->getStrList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-nez v2, :cond_9

    .line 786
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->listContactDownload:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 787
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContactDownload:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 788
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->listContactDownload:Ljava/util/List;

    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContactDownload:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 790
    :cond_7
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->listContact:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 791
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 792
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->listContact:Ljava/util/List;

    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 794
    :cond_8
    const/4 v2, 0x0

    sput v2, Lcom/syu/bt/App_Bt;->iDownloadCnt:I

    .line 795
    const/4 v2, 0x1

    sput-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    .line 797
    const-string v2, "down11"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  11 U_BOOK \u7535\u8bdd\u672c\u4e0b\u8f7d\u5f00\u59cb---   App_Bt.bDownloading = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/syu/bt/App_Bt;->bDownloading:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAutoDownPhoneBook:Z

    if-nez v2, :cond_9

    .line 799
    if-eqz p1, :cond_9

    .line 800
    const-string v2, "down"

    const-string v5, " --- 00 showLoading bt_download "

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->Page_Contact_p:Lcom/syu/bt/page/Page_Contact;

    .line 802
    const/4 v2, 0x1

    iget-object v5, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->mRunnable_showLoading:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-static {v2, v5, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 807
    :cond_9
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-eqz v2, :cond_0

    .line 808
    const/4 v2, 0x1

    sput-boolean v2, Lcom/syu/bt/App_Bt;->bHasDownBook:Z

    .line 809
    const/4 v2, 0x0

    aget-object v3, p5, v2

    .line 810
    .restart local v3    # "name":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v4, p5, v2

    .line 813
    .restart local v4    # "number":Ljava/lang/String;
    const-string v2, "down11"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 000 U_BOOK strs.length = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  *strs[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, p5, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  *strs[1]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, p5, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->Page_Contact_p:Lcom/syu/bt/page/Page_Contact;

    .line 816
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->mRunnableDownOver:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 817
    const/4 v2, 0x1

    iget-object v5, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->mRunnableDownOver:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-static {v2, v5, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 819
    const/4 v8, 0x0

    .line 820
    .restart local v8    # "bRepaceOk":Z
    const-string v2, "+"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 821
    .restart local v9    # "pos":I
    if-nez v9, :cond_a

    .line 822
    const/4 v8, 0x1

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\D"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 826
    :cond_a
    if-nez v8, :cond_b

    .line 827
    const-string v2, "[\\D]"

    const-string v5, ""

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 829
    :cond_b
    const-string v2, "/H"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 830
    const/4 v2, 0x0

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 834
    :cond_c
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 835
    move-object v3, v4

    .line 837
    :cond_d
    sget-object v12, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v13, "Thread-DownContact"

    new-instance v2, Lcom/syu/bt/runnable/Runnable_UBook;

    iget-object v5, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->listContact:Ljava/util/List;

    iget-object v6, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->listContactDownload:Ljava/util/List;

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/syu/bt/runnable/Runnable_UBook;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/syu/bt/page/Page_Contact;)V

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-static {v12, v13, v2, v5, v6}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_0

    .line 831
    :cond_e
    const-string v2, "/M"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 832
    const/4 v2, 0x0

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 844
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v8    # "bRepaceOk":Z
    .end local v9    # "pos":I
    :sswitch_1
    const-string v2, "down11"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " --- PBAP_ERROR updateCode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v6, v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->mRunnable_showLoading:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 846
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, p2

    if-lez v2, :cond_0

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, p2

    const/16 v5, 0xff

    if-gt v2, v5, :cond_0

    .line 847
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v2

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "bt_download_permission"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 851
    :sswitch_2
    const-string v2, "down11"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " -- \u7535\u8bdd\u672c\u4e0b\u8f7d\u72b6\u6001 - U_PBAP_STATE updateCode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v6, v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, p2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_14

    .line 853
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-nez v2, :cond_0

    .line 855
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-nez v2, :cond_10

    .line 856
    sget v2, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v2, :cond_13

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_13

    .line 857
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->listContactDownload:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 858
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContactDownload2:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 859
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->listContactDownload:Ljava/util/List;

    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContactDownload2:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 867
    :cond_f
    :goto_3
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->listContact:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 868
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 869
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->listContact:Ljava/util/List;

    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 871
    :cond_10
    const/4 v2, 0x0

    sput v2, Lcom/syu/bt/App_Bt;->iDownloadCnt:I

    .line 872
    const/4 v2, 0x1

    sput-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    .line 874
    const-string v2, "down11"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  11 \u7535\u8bdd\u672c\u4e0b\u8f7d\u5f00\u59cb---   App_Bt.bDownloading = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/syu/bt/App_Bt;->bDownloading:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAutoDownPhoneBook:Z

    if-nez v2, :cond_11

    .line 876
    if-eqz p1, :cond_11

    .line 877
    const-string v2, "down"

    const-string v5, " --- 00 showLoading bt_download "

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->Page_Contact_p:Lcom/syu/bt/page/Page_Contact;

    .line 879
    const/4 v2, 0x1

    iget-object v5, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->mRunnable_showLoading:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-static {v2, v5, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 900
    :cond_11
    :goto_4
    if-eqz p1, :cond_0

    .line 901
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v5, 0x27e7

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/lsec/core/frame/ctrl/JText;

    .line 902
    .local v11, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v11, :cond_0

    .line 903
    const-string v10, ""

    .line 904
    .local v10, "str_Num":Ljava/lang/String;
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    if-eqz v2, :cond_12

    .line 905
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 906
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 907
    :cond_12
    invoke-virtual {v11, v10}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 862
    .end local v10    # "str_Num":Ljava/lang/String;
    .end local v11    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_13
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->listContactDownload:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 863
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContactDownload:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 864
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->listContactDownload:Ljava/util/List;

    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContactDownload:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 884
    :cond_14
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-eqz v2, :cond_11

    .line 885
    const/4 v2, 0x0

    sput-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    .line 888
    const-string v2, "down11"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  22 \u7535\u8bdd\u672c\u4e0b\u8f7d\u7ed3\u675f---   App_Bt.bDownloading = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/syu/bt/App_Bt;->bDownloading:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->mRunnable_showLoading:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 891
    const-string v2, "down"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " --- 222 bDownloading over = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/syu/bt/App_Bt;->bDownloading:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 893
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v2, v2, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnable_scanDB:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 894
    const/4 v2, 0x1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v5, v5, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnable_scanDB:Ljava/lang/Runnable;

    const-wide/16 v6, 0xc8

    invoke-static {v2, v5, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 897
    :cond_15
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v5, "Thread-DownContact"

    new-instance v6, Lcom/syu/bt/runnable/Runnable_DownOver1st;

    invoke-direct {v6, p1}, Lcom/syu/bt/runnable/Runnable_DownOver1st;-><init>(Lcom/syu/bt/page/Page_Contact;)V

    const/4 v7, 0x1

    const/16 v12, 0xa

    invoke-static {v2, v5, v6, v7, v12}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_4

    .line 743
    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_0
        0x1d -> :sswitch_2
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Dial;I[I[F[Ljava/lang/String;)V
    .locals 32
    .param p1, "page_Dial"    # Lcom/syu/bt/page/Page_Dial;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 159
    sparse-switch p2, :sswitch_data_0

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 174
    :sswitch_0
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v9, 0x9

    aget v2, v2, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/syu/bt/page/Page_Dial;->controlDialInfo(I)V

    .line 177
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->phoneState(Lcom/syu/bt/page/Page_Dial;)V

    goto :goto_0

    .line 182
    :sswitch_1
    const-string v2, "sfth3"

    const-string v9, " 00 notify_BtPage_Dial ANSWERING_DEVICE  "

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    const/16 v26, 0x0

    .line 185
    .local v26, "is3rd":Z
    const/4 v2, 0x2

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    const/16 v26, 0x1

    .line 188
    :cond_2
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bPop3rdPhone:Z

    move/from16 v0, v26

    if-eq v2, v0, :cond_3

    .line 189
    sput-boolean v26, Lcom/syu/bt/App_Bt;->bPop3rdPhone:Z

    .line 190
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mRunnable_updatePhoneView:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 191
    const/4 v2, 0x0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mRunnable_updatePhoneView:Ljava/lang/Runnable;

    const-wide/16 v10, 0x64

    invoke-static {v2, v9, v10, v11}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 195
    .end local v26    # "is3rd":Z
    :cond_3
    const/16 v2, 0x41

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->showPhone()V

    .line 198
    :cond_4
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 199
    const-string v2, "sfth2"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " 00 notify_BtPage_Dial U_PHONE_NUMBER s sPhoneNumber = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->updateThirdPhoneName()V

    .line 203
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v2

    sget-object v9, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/syu/bt/util/BTUtil;->needSplice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 204
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 205
    const-string v2, "pop33"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " 666 U_PHONE_NUMBER Bt.sPhoneNumber = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x2761

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/lsec/core/frame/ctrl/JText;

    .line 207
    .local v14, "text_num":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x2769

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lsec/core/frame/ctrl/JText;

    .line 208
    .local v13, "text_num2":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x276c

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    .line 209
    .local v16, "text_big":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x2762

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/lsec/core/frame/ctrl/JText;

    .line 210
    .local v15, "text_mini":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x2760

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/lsec/core/frame/ctrl/JText;

    .line 211
    .local v28, "textState":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x2768

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/lsec/core/frame/ctrl/JText;

    .line 213
    .local v29, "textState2":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x276b

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v25

    .line 216
    .local v25, "headIco":Landroid/view/View;
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bShowHeadIco:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v25, :cond_6

    .line 217
    sget-object v2, Lcom/syu/bt/App_Bt;->myAlbum:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 219
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_12

    .line 221
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v2

    sget-object v9, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/syu/bt/util/BTUtil;->getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 222
    .local v24, "bmp":Landroid/graphics/Bitmap;
    if-eqz v24, :cond_11

    .line 223
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v9, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    const/16 v10, 0xf

    move-object/from16 v0, v24

    invoke-static {v0, v10}, Lcom/syu/bt/util/BTUtil;->outputCircleLittle(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 245
    .end local v24    # "bmp":Landroid/graphics/Bitmap;
    :cond_6
    :goto_1
    if-eqz v14, :cond_7

    .line 246
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_7
    if-eqz v15, :cond_8

    .line 250
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v15, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_8
    if-eqz v13, :cond_a

    .line 253
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x276a

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JText;

    .line 255
    .local v6, "text3":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v6, :cond_9

    .line 256
    sget-object v2, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_9
    sget-object v2, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 260
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    sget-object v9, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v27

    .line 261
    .local v27, "pos":I
    if-lez v27, :cond_a

    .line 262
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    const/4 v9, 0x0

    move/from16 v0, v27

    invoke-virtual {v2, v9, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    .end local v6    # "text3":Lcom/lsec/core/frame/ctrl/JText;
    .end local v27    # "pos":I
    :cond_a
    :goto_2
    if-eqz v16, :cond_b

    .line 269
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_b
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bHistoryLogAllFlag:Z

    if-eqz v2, :cond_c

    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->HideOrShowNumberPad()V

    .line 273
    :cond_c
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_e

    sget v2, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-eqz v2, :cond_d

    sget v2, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_e

    .line 274
    :cond_d
    const-string v2, "pop3"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " Page_dial sPhone_callin_id = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v10, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " * bPhone2_HFP = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    sget v11, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-object v9, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    sget-object v10, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    sget v11, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget v10, v10, v11

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-object v9, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    sget-object v10, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    sget v11, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget v10, v10, v11

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x2763

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    .line 279
    .local v4, "text":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x276d

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    .line 280
    .local v5, "text2":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x276e

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JText;

    .line 281
    .restart local v6    # "text3":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x27c7

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lsec/core/frame/ctrl/JView;

    .line 282
    .local v7, "view":Lcom/lsec/core/frame/ctrl/JView;
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x27c8

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JView;

    .line 283
    .local v8, "view2":Lcom/lsec/core/frame/ctrl/JView;
    if-nez v4, :cond_f

    if-nez v5, :cond_f

    if-eqz v6, :cond_0

    .line 285
    :cond_f
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v9, "TZY_OEM"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x2765

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    .line 292
    .restart local v5    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    :cond_10
    :goto_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_18

    .line 294
    const-string v2, "talk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " 00 U_PHONE_NUMBER  sPhone2_id = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v10, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget v2, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v2, :cond_17

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    :goto_4
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 299
    :goto_5
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v9, "XINGKE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 300
    sget-object v9, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v10, "Thread-GetNameByNumber"

    new-instance v2, Lcom/syu/bt/runnable/Runnable_getNameByNumber;

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .end local v7    # "view":Lcom/lsec/core/frame/ctrl/JView;
    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/syu/bt/runnable/Runnable_getNameByNumber;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Z)V

    .end local v8    # "view2":Lcom/lsec/core/frame/ctrl/JView;
    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-static {v9, v10, v2, v11, v12}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_0

    .line 225
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .end local v4    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v5    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    .end local v6    # "text3":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v24    # "bmp":Landroid/graphics/Bitmap;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const-string v9, "bt_user_icon"

    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v10

    iget-object v10, v10, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v11

    iget-object v11, v11, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v9, v10, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 232
    .end local v24    # "bmp":Landroid/graphics/Bitmap;
    :cond_12
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v2

    sget-object v9, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/syu/bt/util/BTUtil;->getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 233
    .restart local v24    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v24, :cond_13

    .line 236
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v9, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    const/16 v10, 0xf

    move-object/from16 v0, v24

    invoke-static {v0, v10}, Lcom/syu/bt/util/BTUtil;->outputCircleLittle(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 240
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const-string v9, "bt_user_icon"

    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v10

    iget-object v10, v10, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v11

    iget-object v11, v11, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v9, v10, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 264
    .end local v24    # "bmp":Landroid/graphics/Bitmap;
    .restart local v6    # "text3":Lcom/lsec/core/frame/ctrl/JText;
    :cond_14
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 266
    .end local v6    # "text3":Lcom/lsec/core/frame/ctrl/JText;
    :cond_15
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 287
    .restart local v4    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v5    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v6    # "text3":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v7    # "view":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v8    # "view2":Lcom/lsec/core/frame/ctrl/JView;
    :cond_16
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v9, "BT_23NEW"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 289
    if-eqz v5, :cond_10

    .line 290
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 295
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :cond_17
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    goto/16 :goto_4

    .line 298
    :cond_18
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 301
    :cond_19
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v9, "TZY_NEW"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 302
    sget-object v11, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v12, "Thread-GetNameByNumber"

    new-instance v2, Lcom/syu/bt/runnable/Runnable_getNameByNumber;

    sget-object v9, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v10}, Lcom/syu/bt/runnable/Runnable_getNameByNumber;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JView;Lcom/lsec/core/frame/ctrl/JView;Ljava/lang/String;Z)V

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-static {v11, v12, v2, v9, v10}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_0

    .line 303
    :cond_1a
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v9, "BT_23NEW"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 304
    const-string v2, "gdy6"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " 01  Page_Dial onNotify Bt.sPhoneNumber ="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-sPhoneNumber_p ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->sPhoneNumber_p:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    sget-object v9, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->sPhoneNumber_p:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    sput-object v2, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->sPhoneNumber_p:Ljava/lang/String;

    .line 307
    const-string v2, "name"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " 02  Page_Dial onNotify Bt.sPhoneNumber ="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-sPhoneNumber_p ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->sPhoneNumber_p:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v19, "Thread-GetNameByNumber"

    new-instance v9, Lcom/syu/bt/runnable/Runnable_getNameByNumber;

    sget-object v17, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    const/16 v18, 0x1

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-direct/range {v9 .. v18}, Lcom/syu/bt/runnable/Runnable_getNameByNumber;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Z)V

    const/4 v10, 0x0

    const/4 v11, 0x5

    move-object/from16 v0, v19

    invoke-static {v2, v0, v9, v10, v11}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_0

    .line 311
    :cond_1b
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v9, "Thread-GetNameByNumber"

    new-instance v17, Lcom/syu/bt/runnable/Runnable_getNameByNumber;

    const-string v22, ""

    const/16 v23, 0x1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    invoke-direct/range {v17 .. v23}, Lcom/syu/bt/runnable/Runnable_getNameByNumber;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Z)V

    const/4 v10, 0x0

    const/4 v11, 0x5

    move-object/from16 v0, v17

    invoke-static {v2, v9, v0, v10, v11}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_0

    .line 318
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .end local v4    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v5    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    .end local v6    # "text3":Lcom/lsec/core/frame/ctrl/JText;
    .end local v7    # "view":Lcom/lsec/core/frame/ctrl/JView;
    .end local v8    # "view2":Lcom/lsec/core/frame/ctrl/JView;
    .end local v13    # "text_num2":Lcom/lsec/core/frame/ctrl/JText;
    .end local v14    # "text_num":Lcom/lsec/core/frame/ctrl/JText;
    .end local v15    # "text_mini":Lcom/lsec/core/frame/ctrl/JText;
    .end local v16    # "text_big":Lcom/lsec/core/frame/ctrl/JText;
    .end local v25    # "headIco":Landroid/view/View;
    .end local v28    # "textState":Lcom/lsec/core/frame/ctrl/JText;
    .end local v29    # "textState2":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x2765

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    .line 319
    .restart local v4    # "text":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x2772

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    .line 321
    .restart local v5    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v4, :cond_0

    .line 323
    sget-object v31, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneName:Ljava/lang/String;

    .line 325
    .local v31, "value":Ljava/lang/String;
    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 328
    if-eqz v5, :cond_0

    .line 329
    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 335
    .end local v4    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v5    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    .end local v31    # "value":Ljava/lang/String;
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x2767

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    .line 336
    .restart local v4    # "text":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x2773

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    .line 337
    .restart local v5    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v4, :cond_0

    .line 338
    sget-object v31, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    .line 339
    .restart local v31    # "value":Ljava/lang/String;
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 340
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v9, 0xc

    if-ne v2, v9, :cond_20

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 342
    const/4 v9, 0x2

    const/4 v10, 0x4

    move-object/from16 v0, v31

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 343
    const/4 v9, 0x4

    const/4 v10, 0x6

    move-object/from16 v0, v31

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 344
    const/4 v9, 0x6

    const/16 v10, 0x8

    move-object/from16 v0, v31

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 345
    const/16 v9, 0x8

    const/16 v10, 0xa

    move-object/from16 v0, v31

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 346
    const/16 v9, 0xa

    const/16 v10, 0xc

    move-object/from16 v0, v31

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-virtual {v4, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :cond_1c
    :goto_6
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v9, 0x9

    aget v2, v2, v9

    const/4 v9, 0x2

    if-eq v2, v9, :cond_1d

    sget v2, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v9, 0x6f

    if-ne v2, v9, :cond_21

    .line 352
    :cond_1d
    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 355
    :cond_1e
    :goto_7
    sget v2, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v9, 0x8b

    if-ne v2, v9, :cond_1f

    .line 356
    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 357
    :cond_1f
    if-eqz v5, :cond_0

    .line 358
    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 359
    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_0

    .line 348
    :cond_20
    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 353
    :cond_21
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v9, 0x9

    aget v2, v2, v9

    if-nez v2, :cond_1e

    .line 354
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_7

    .line 365
    .end local v4    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v5    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    .end local v31    # "value":Ljava/lang/String;
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x2764

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    .line 366
    .restart local v4    # "text":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x2771

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    .line 368
    .restart local v5    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, p2

    add-int/lit8 v2, v2, 0x64

    div-int/lit16 v0, v2, 0x3e8

    move/from16 v30, v0

    .line 369
    .local v30, "time":I
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_22

    .line 370
    sget v30, Lcom/syu/bt/App_Bt;->sPhone2_talktime:I

    .line 372
    :cond_22
    const-string v2, "talk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " 55 notify_Page U_TALK_TIME sPhone2_talktime = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v10, Lcom/syu/bt/App_Bt;->sPhone2_talktime:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-eqz v4, :cond_23

    .line 374
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%02d:%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    div-int/lit8 v12, v30, 0x3c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    rem-int/lit8 v12, v30, 0x3c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v2, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :cond_23
    if-eqz v5, :cond_0

    .line 377
    const-string v2, "talk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " 66 notify_Page U_TALK_TIME value = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%02d:%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    div-int/lit8 v12, v30, 0x3c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    rem-int/lit8 v12, v30, 0x3c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v2, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 383
    .end local v4    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v5    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    .end local v30    # "time":I
    :sswitch_5
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v9, 0x15

    aget v2, v2, v9

    if-gtz v2, :cond_24

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v9, 0x9

    aget v2, v2, v9

    const/4 v9, 0x4

    if-eq v2, v9, :cond_0

    .line 385
    :cond_24
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v9, 0x15

    aget v2, v2, v9

    if-lez v2, :cond_0

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v9, 0x9

    aget v2, v2, v9

    const/4 v9, 0x4

    if-ne v2, v9, :cond_0

    .line 386
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x2764

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    .line 387
    .restart local v4    # "text":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v9, 0x2771

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    .line 389
    .restart local v5    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v9, 0x15

    aget v2, v2, v9

    add-int/lit16 v2, v2, 0xc8

    div-int/lit16 v0, v2, 0x3e8

    move/from16 v31, v0

    .line 391
    .local v31, "value":I
    const-string v2, "talk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " 88 notify_Page U_AUTOPICK_REMAIN value = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    if-lez v31, :cond_0

    .line 395
    if-eqz v4, :cond_25

    .line 396
    if-lez v31, :cond_26

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v10, "bt_auto_suspend"

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :cond_25
    :goto_8
    if-eqz v5, :cond_0

    .line 402
    if-lez v31, :cond_27

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v10, "bt_auto_suspend"

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 399
    :cond_26
    const-string v2, ""

    invoke-virtual {v4, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 405
    :cond_27
    const-string v2, ""

    invoke-virtual {v5, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 411
    .end local v4    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v5    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    .end local v31    # "value":I
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->updateBtNameAndPin()V

    goto/16 :goto_0

    .line 415
    :sswitch_7
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, p2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_28

    const/4 v2, 0x1

    :goto_9
    sput-boolean v2, Lcom/syu/bt/App_Bt;->bHFP:Z

    .line 416
    const-string v2, "hfppp"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " ***************** IpcNewPage U_HFP   App_Bt.bHFP = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v10, Lcom/syu/bt/App_Bt;->bHFP:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bHFP:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/syu/bt/page/Page_Dial;->updateBtnVoiceSwitch(Z)V

    goto/16 :goto_0

    .line 415
    :cond_28
    const/4 v2, 0x0

    goto :goto_9

    .line 420
    :sswitch_8
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bEnableHalfScreen:Z

    if-eqz v2, :cond_0

    .line 421
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->HideOrShowNumberPad()V

    goto/16 :goto_0

    .line 425
    :sswitch_9
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, p2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_29

    const/4 v2, 0x1

    :goto_a
    sput-boolean v2, Lcom/syu/bt/App_Bt;->bPhoneMIC:Z

    .line 427
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bPhoneMIC:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/syu/bt/page/Page_Dial;->updateMicSwitch(Z)V

    goto/16 :goto_0

    .line 425
    :cond_29
    const/4 v2, 0x0

    goto :goto_a

    .line 432
    :sswitch_a
    const-string v2, "hfp"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " 444 Ipcpage ints SUPPORT_MULTI   bLinkTwoPhone = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v10, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Dial;->showPhone()V

    goto/16 :goto_0

    .line 159
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
        0xc -> :sswitch_4
        0xe -> :sswitch_3
        0xf -> :sswitch_6
        0x12 -> :sswitch_7
        0x15 -> :sswitch_5
        0x2a -> :sswitch_9
        0x3d -> :sswitch_0
        0x3e -> :sswitch_a
        0x40 -> :sswitch_a
        0x41 -> :sswitch_1
        0x95 -> :sswitch_8
    .end sparse-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Dial_HalfScreen;I[I[F[Ljava/lang/String;)V
    .locals 9
    .param p1, "page_Dial_HalfScreen"    # Lcom/syu/bt/page/Page_Dial_HalfScreen;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 1624
    sparse-switch p2, :sswitch_data_0

    .line 1717
    :cond_0
    :goto_0
    return-void

    .line 1627
    :sswitch_0
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v3, 0x9

    aget v1, v2, v3

    .line 1629
    .local v1, "value":I
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v3, 0x2776

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 1630
    .local v0, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_1

    .line 1631
    if-ltz v1, :cond_1

    if-gt v1, v7, :cond_1

    .line 1632
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-object v3, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1635
    :cond_1
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 1636
    const/16 v3, 0x2764

    .line 1635
    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 1637
    .restart local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_3

    .line 1638
    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    if-ne v1, v4, :cond_6

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v3, 0x14

    aget v2, v2, v3

    if-lez v2, :cond_6

    .line 1639
    :cond_2
    invoke-virtual {v0, v5}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 1643
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 1644
    const/16 v3, 0x2771

    .line 1643
    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 1645
    .restart local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_5

    .line 1646
    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    if-ne v1, v4, :cond_7

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v3, 0x14

    aget v2, v2, v3

    if-lez v2, :cond_7

    .line 1647
    :cond_4
    invoke-virtual {v0, v5}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 1652
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 1653
    const/16 v3, 0x2777

    .line 1652
    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 1654
    .restart local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_0

    .line 1655
    if-ne v1, v6, :cond_8

    .line 1656
    invoke-virtual {v0, v5}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_0

    .line 1641
    :cond_6
    invoke-virtual {v0, v4}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_1

    .line 1649
    :cond_7
    invoke-virtual {v0, v4}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_2

    .line 1657
    :cond_8
    if-nez v1, :cond_0

    .line 1658
    invoke-virtual {v0, v8}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_0

    .line 1665
    .end local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v1    # "value":I
    :sswitch_1
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 1666
    const/16 v3, 0x2777

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 1665
    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 1667
    .restart local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_0

    .line 1668
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1672
    .end local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_2
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 1673
    const/16 v3, 0x2778

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 1672
    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 1674
    .restart local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_0

    .line 1675
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1676
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1677
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_9

    .line 1678
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1679
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1680
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1681
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1682
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1683
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    const/16 v4, 0xa

    const/16 v5, 0xc

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1678
    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1685
    :cond_9
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1691
    .end local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_3
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v3, 0x15

    aget v2, v2, v3

    if-lez v2, :cond_0

    .line 1692
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v3, 0x9

    aget v2, v2, v3

    if-ne v2, v4, :cond_0

    .line 1693
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 1694
    const/16 v3, 0x2764

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 1693
    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 1695
    .restart local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_a

    .line 1696
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v3, 0x15

    aget v2, v2, v3

    add-int/lit16 v2, v2, 0xc8

    div-int/lit16 v1, v2, 0x3e8

    .line 1697
    .restart local v1    # "value":I
    if-lez v1, :cond_b

    .line 1698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 1699
    const-string v4, "bt_auto_suspend"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1698
    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1704
    .end local v1    # "value":I
    :cond_a
    :goto_3
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 1705
    const/16 v3, 0x2771

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 1704
    .end local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 1706
    .restart local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_0

    .line 1707
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v3, 0x15

    aget v2, v2, v3

    add-int/lit16 v2, v2, 0xc8

    div-int/lit16 v1, v2, 0x3e8

    .line 1708
    .restart local v1    # "value":I
    if-lez v1, :cond_c

    .line 1709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 1710
    const-string v4, "bt_auto_suspend"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1709
    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1701
    :cond_b
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1712
    :cond_c
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1624
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
        0xe -> :sswitch_2
        0x15 -> :sswitch_3
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_History;I[I[F[Ljava/lang/String;)V
    .locals 10
    .param p1, "page_History"    # Lcom/syu/bt/page/Page_History;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x4

    const/4 v5, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1207
    sparse-switch p2, :sswitch_data_0

    .line 1348
    :cond_0
    :goto_0
    return-void

    .line 1211
    :sswitch_0
    const-string v2, "his16"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 000 FinalBt.U_PBAP_STATE ***Bt.DATA[updateCode]"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " App_Bt.iDownRecordState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/syu/bt/App_Bt;->iDownRecordState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " App_Bt.bDownloadingRecord = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bDownloadingRecord:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, p2

    if-ne v2, v9, :cond_2

    .line 1213
    sput-boolean v8, Lcom/syu/bt/App_Bt;->bDownloadingRecord:Z

    .line 1214
    sget v2, Lcom/syu/bt/App_Bt;->iDownRecordState:I

    sparse-switch v2, :sswitch_data_1

    goto :goto_0

    .line 1222
    :sswitch_1
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v2, v8}, Lcom/syu/bt/db/Bt_Info;->clearCallLog(I)V

    goto :goto_0

    .line 1216
    :sswitch_2
    if-eqz p1, :cond_1

    .line 1217
    iget-object v2, p1, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, v2, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "bt_download"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    .line 1219
    :cond_1
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v2, v7}, Lcom/syu/bt/db/Bt_Info;->clearCallLog(I)V

    goto :goto_0

    .line 1225
    :sswitch_3
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v2, v5}, Lcom/syu/bt/db/Bt_Info;->clearCallLog(I)V

    goto :goto_0

    .line 1230
    :cond_2
    const-string v2, "his6"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 11 FinalBt.U_PBAP_STATE *** App_Bt.iDownRecordState = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/syu/bt/App_Bt;->iDownRecordState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bDownloadingRecord:Z

    if-eqz v2, :cond_0

    .line 1232
    invoke-static {}, Lcom/syu/bt/App_Bt;->queryCallLog()V

    .line 1233
    sget v2, Lcom/syu/bt/App_Bt;->iDownRecordState:I

    sparse-switch v2, :sswitch_data_2

    .line 1254
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->mRunnable_EndLoad:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 1255
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->mRunnable_EndLoad:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-static {v6, v2, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 1258
    const-string v2, "his6"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 33 FinalBt.U_PBAP_STATE *** App_Bt.iDownRecordState = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/syu/bt/App_Bt;->iDownRecordState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " App_Bt.bDownloadingRecord = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bDownloadingRecord:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1235
    :sswitch_4
    sput v7, Lcom/syu/bt/App_Bt;->iDownRecordState:I

    .line 1236
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    goto :goto_1

    .line 1240
    :sswitch_5
    sput v5, Lcom/syu/bt/App_Bt;->iDownRecordState:I

    .line 1241
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    goto :goto_1

    .line 1247
    :sswitch_6
    const-string v2, "his6"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 22 FinalBt.U_PBAP_STATE *** App_Bt.iDownRecordState = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/syu/bt/App_Bt;->iDownRecordState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    if-eqz p1, :cond_3

    .line 1249
    iget-object v2, p1, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, v2, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-virtual {v2}, Lcom/syu/bt/util/UIUtil;->disLoading()V

    goto :goto_1

    .line 1265
    :sswitch_7
    const-string v2, "his6"

    const-string v3, " 000 U_RECORD ***"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-static {p3, v8}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1267
    const-string v2, "his66"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 111 U_RECORD  ints[0] = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, p3, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    invoke-static {p5, v9}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_5

    .line 1269
    const-string v2, "his66"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 222 U_RECORD  strs.length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "strs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->getStrList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const/4 v1, 0x0

    .line 1271
    .local v1, "values":Landroid/content/ContentValues;
    aget v2, p3, v6

    packed-switch v2, :pswitch_data_0

    .line 1292
    :goto_2
    if-eqz v1, :cond_4

    .line 1293
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v2, v1, v6}, Lcom/syu/bt/db/Bt_Info;->insertCallLog(Landroid/content/ContentValues;Z)V

    .line 1296
    :cond_4
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->mRunnable_updateHistoryList:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 1297
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->mRunnable_updateHistoryList:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-static {v6, v2, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 1273
    :pswitch_0
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "values":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1274
    .restart local v1    # "values":Landroid/content/ContentValues;
    const-string v2, "type"

    sget v3, Lcom/syu/bt/App_Bt;->iPhone2HisStep:I

    aget-object v4, p5, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1275
    const-string v2, "date"

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v3

    aget-object v4, p5, v5

    invoke-virtual {v3, v4}, Lcom/syu/bt/util/BTUtil;->replaceFormatTime(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1276
    const-string v2, "number"

    aget-object v3, p5, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1279
    :pswitch_1
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "values":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1280
    .restart local v1    # "values":Landroid/content/ContentValues;
    const-string v2, "type"

    sget v3, Lcom/syu/bt/App_Bt;->iPhone2HisStep:I

    aget-object v4, p5, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1281
    const-string v2, "date"

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v3

    aget-object v4, p5, v5

    invoke-virtual {v3, v4}, Lcom/syu/bt/util/BTUtil;->replaceFormatTime(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1282
    const-string v2, "number"

    aget-object v3, p5, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1285
    :pswitch_2
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "values":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1286
    .restart local v1    # "values":Landroid/content/ContentValues;
    const-string v2, "type"

    sget v3, Lcom/syu/bt/App_Bt;->iPhone2HisStep:I

    aget-object v4, p5, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1287
    const-string v2, "date"

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v3

    aget-object v4, p5, v5

    invoke-virtual {v3, v4}, Lcom/syu/bt/util/BTUtil;->replaceFormatTime(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1288
    const-string v2, "number"

    aget-object v3, p5, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1299
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_5
    invoke-static {p5, v5}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1300
    const-string v2, "his66"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 333 U_RECORD ints[0] ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, p3, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   strs.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "strs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->getStrList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const/4 v1, 0x0

    .line 1302
    .restart local v1    # "values":Landroid/content/ContentValues;
    aget v2, p3, v6

    packed-switch v2, :pswitch_data_1

    .line 1323
    :goto_3
    if-eqz v1, :cond_0

    .line 1324
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v2, v1, v6}, Lcom/syu/bt/db/Bt_Info;->insertCallLog(Landroid/content/ContentValues;Z)V

    goto/16 :goto_0

    .line 1304
    :pswitch_3
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "values":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1305
    .restart local v1    # "values":Landroid/content/ContentValues;
    const-string v2, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1306
    const-string v2, "date"

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v3

    aget-object v4, p5, v7

    invoke-virtual {v3, v4}, Lcom/syu/bt/util/BTUtil;->replaceFormatTime(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1307
    const-string v2, "number"

    aget-object v3, p5, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1310
    :pswitch_4
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "values":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1311
    .restart local v1    # "values":Landroid/content/ContentValues;
    const-string v2, "type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1312
    const-string v2, "date"

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v3

    aget-object v4, p5, v7

    invoke-virtual {v3, v4}, Lcom/syu/bt/util/BTUtil;->replaceFormatTime(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1313
    const-string v2, "number"

    aget-object v3, p5, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1316
    :pswitch_5
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "values":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1317
    .restart local v1    # "values":Landroid/content/ContentValues;
    const-string v2, "type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1318
    const-string v2, "date"

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v3

    aget-object v4, p5, v7

    invoke-virtual {v3, v4}, Lcom/syu/bt/util/BTUtil;->replaceFormatTime(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1319
    const-string v2, "number"

    aget-object v3, p5, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1331
    .end local v1    # "values":Landroid/content/ContentValues;
    :sswitch_8
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1332
    sget-boolean v2, Lcom/syu/bt/App_Bt;->needSplice:Z

    if-eqz v2, :cond_6

    .line 1333
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1334
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1335
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 1336
    const-string v2, "pop33"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 777 U_PHONE_NUMBER Bt.sPhoneNumber = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_6
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v3, 0x276a

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 1342
    .local v0, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_0

    .line 1343
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1207
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_8
        0x1d -> :sswitch_0
        0x23 -> :sswitch_7
    .end sparse-switch

    .line 1214
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0xff -> :sswitch_2
    .end sparse-switch

    .line 1233
    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_6
        0xff -> :sswitch_4
    .end sparse-switch

    .line 1271
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1302
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Menu;I[I[F[Ljava/lang/String;)V
    .locals 9
    .param p1, "page_Menu"    # Lcom/syu/bt/page/Page_Menu;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 121
    const-string v4, "name"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 00  Page_Menu onNotify updateCode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    packed-switch p2, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 124
    :pswitch_0
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v5, 0x2769

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    .line 125
    .local v3, "textNum":Lcom/lsec/core/frame/ctrl/JText;
    sget-boolean v4, Lcom/syu/bt/App_Bt;->needSplice:Z

    if-eqz v4, :cond_1

    .line 126
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 127
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 129
    const-string v4, "pop33"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 555 U_PHONE_NUMBER Bt.sPhoneNumber = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_1
    if-eqz v3, :cond_2

    .line 135
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_2
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v5, 0x276c

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 138
    .local v1, "textBigNum":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_3

    .line 139
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_3
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Menu;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v5, 0x276d

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 143
    .local v2, "textName":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v2, :cond_0

    .line 144
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 145
    const-string v4, ""

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 147
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    sget-object v4, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v5, "Thread-GetNameByNumber"

    new-instance v6, Lcom/syu/bt/runnable/Runnable_getNameByNumber;

    const-string v7, ""

    const/4 v8, 0x1

    invoke-direct {v6, v0, v2, v7, v8}, Lcom/syu/bt/runnable/Runnable_getNameByNumber;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-static {v4, v5, v6, v7, v8}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Pair;I[I[F[Ljava/lang/String;)V
    .locals 23
    .param p1, "page_Pair"    # Lcom/syu/bt/page/Page_Pair;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 919
    const-string v19, "hfp11"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " 00 page_Pair updateCode =  "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    sparse-switch p2, :sswitch_data_0

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 923
    :sswitch_0
    const-string v19, "gdy6"

    const-string v20, " ** U_SEARCH_LIST 00   "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    if-nez p5, :cond_1

    .line 926
    if-eqz p1, :cond_0

    .line 927
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/syu/bt/page/Page_Pair;->isStartDiscovey:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 928
    const/16 v19, 0x0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v20, v0

    const-string v21, "bt_discover_end"

    invoke-virtual/range {v20 .. v21}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/page/Page_Pair;->showDiscover(ZLjava/lang/String;)V

    goto :goto_0

    .line 933
    :cond_1
    const-string v19, "gdy6"

    const-string v20, " ** U_SEARCH_LIST 22   "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 935
    const-string v19, "gdy6"

    const-string v20, " ** U_SEARCH_LIST 33  ints != null "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 938
    :cond_2
    const-string v19, "gdy6"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " ** U_SEARCH_LIST 11   Name = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x1

    aget-object v21, p5, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Addr = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v21, p5, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v11, 0x0

    .line 943
    .local v11, "isExists":Z
    :try_start_0
    sget-object v19, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_3
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_8

    .line 948
    sget-boolean v19, Lcom/syu/bt/App_Bt;->bShowPairedBt:Z

    if-eqz v19, :cond_5

    sget-object v19, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_5

    .line 949
    sget-object v19, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_4
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_9

    .line 962
    :cond_5
    if-nez v11, :cond_0

    .line 963
    const/16 v19, 0x1

    aget-object v19, p5, v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 966
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 967
    const/16 v19, 0x1

    aget-object v19, p5, v19

    const-string v20, "OBD"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 970
    :cond_6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v13

    .line 971
    .local v13, "strBt":Ljava/lang/String;
    const-string v19, "gdy6"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " U_SEARCH_LIST 22 mListPair.add name = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x1

    aget-object v21, p5, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " strBt = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    if-eqz v13, :cond_7

    .line 973
    const/16 v19, 0x1

    aget-object v19, p5, v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 976
    :cond_7
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 977
    .local v4, "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v19, 0x28da

    const/16 v20, 0x0

    aget-object v20, p5, v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 978
    const/16 v19, 0x28db

    const/16 v20, 0x1

    aget-object v20, p5, v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 979
    const/16 v19, 0x28d9

    const/16 v20, 0x0

    aget v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 981
    const-string v19, "gdy6"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " U_SEARCH_LIST 22 mListPair.add name = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x1

    aget-object v21, p5, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mListHasPaired.size = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    sget-object v19, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    if-eqz p1, :cond_0

    .line 984
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Pair;->refreshList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 986
    .end local v4    # "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v13    # "strBt":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 987
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 943
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 944
    .restart local v4    # "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v19, 0x28da

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v21, p5, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 945
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 949
    .end local v4    # "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 950
    .restart local v4    # "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v20, 0x28e4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 951
    .local v3, "addr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 952
    const/16 v20, 0x0

    aget-object v20, p5, v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v20

    if-eqz v20, :cond_4

    .line 956
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 992
    .end local v3    # "addr":Ljava/lang/String;
    .end local v4    # "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v11    # "isExists":Z
    :sswitch_1
    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 996
    if-eqz p1, :cond_0

    .line 997
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Pair;->getChoiceName(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    .line 998
    .local v7, "entity":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    .line 1001
    const/16 v19, 0x28d9

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1002
    .local v14, "strIndex":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 1005
    invoke-static {v14}, Lcom/lsec/core/util/FuncUtils;->myParseInt(Ljava/lang/String;)I

    move-result v10

    .line 1006
    .local v10, "iIndex":I
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/syu/bt/page/Page_Pair;->isSelfLink:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v10, v0, :cond_0

    .line 1009
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/syu/bt/page/Page_Pair;->isSelfLink:Z

    .line 1010
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v19, v19, p2

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 1011
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v19

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v20, v0

    const-string v21, "bt_obd_connected"

    invoke-virtual/range {v20 .. v21}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1012
    :cond_a
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v19, v19, p2

    if-nez v19, :cond_0

    .line 1013
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v19

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v20, v0

    const-string v21, "bt_obd_disconnected"

    invoke-virtual/range {v20 .. v21}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1018
    .end local v7    # "entity":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v10    # "iIndex":I
    .end local v14    # "strIndex":Ljava/lang/String;
    :sswitch_2
    const-string v19, "hfp10"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " ** U_PAIR_LIST 00   bShowPairedBt = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v21, Lcom/syu/bt/App_Bt;->bShowPairedBt:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    .line 1021
    const-string v19, "hfp10"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " ** U_PAIR_LIST 11   strs.length = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 1025
    const/16 v19, 0x1

    aget-object v19, p5, v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 1027
    const-string v19, "hfp11"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " ** U_PAIR_LIST 00   Name = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x0

    aget-object v21, p5, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " , "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v21, p5, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    sget-object v19, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_b

    .line 1030
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    sget-object v19, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v9, v0, :cond_f

    .line 1040
    .end local v9    # "i":I
    :cond_b
    :goto_4
    const/4 v12, 0x0

    .line 1041
    .local v12, "pairlist_has":Z
    sget-object v19, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_c

    .line 1042
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    sget-object v19, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v9, v0, :cond_11

    .line 1056
    .end local v9    # "i":I
    :cond_c
    :goto_6
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1057
    const-string v19, "hfp4"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " ** U_PAIR_LIST 11   Name = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x0

    aget-object v21, p5, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " , "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v21, p5, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/16 v19, 0x1

    aget-object v19, p5, v19

    const-string v20, "OBD"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 1061
    :cond_d
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 1062
    .restart local v4    # "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v19, 0x28e4

    const/16 v20, 0x0

    aget-object v20, p5, v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1063
    const/16 v19, 0x28e5

    const/16 v20, 0x1

    aget-object v20, p5, v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1064
    const/16 v19, 0x28e3

    const/16 v20, 0x0

    aget v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1066
    sget-object v19, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1067
    sget-boolean v19, Lcom/syu/bt/App_Bt;->bShowPairedBt:Z

    if-nez v19, :cond_e

    .line 1068
    const-string v19, "gdy6"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " U_PAIR_LIST add mListPair strs[0] = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x0

    aget-object v21, p5, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Bt.sPhoneAddr = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " pairlist_has = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    const/16 v20, 0x0

    aget-object v20, p5, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    if-nez v12, :cond_e

    .line 1070
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 1071
    .local v5, "dev1":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v19, 0x28da

    const/16 v20, 0x0

    aget-object v20, p5, v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1072
    const/16 v19, 0x28db

    const/16 v20, 0x1

    aget-object v20, p5, v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1073
    const/16 v19, 0x28d9

    const/16 v20, 0x0

    aget v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1074
    sget-object v19, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1077
    .end local v5    # "dev1":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_e
    if-eqz p1, :cond_0

    .line 1079
    const-string v19, "hfp4"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " ** U_PAIR_LIST 22   Name = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x0

    aget-object v21, p5, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " , "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v21, p5, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const-string v19, "hfp11"

    const-string v20, " ** 11   refreshPairedList "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Pair;->refreshPairedList()V

    .line 1083
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Pair;->refreshList()V

    goto/16 :goto_0

    .line 1031
    .end local v4    # "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v12    # "pairlist_has":Z
    .restart local v9    # "i":I
    :cond_f
    sget-object v19, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 1032
    .restart local v4    # "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v19, 0x28e4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_10

    .line 1033
    const/16 v19, 0x28e4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const/16 v20, 0x0

    aget-object v20, p5, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 1034
    sget-object v19, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 1030
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 1043
    .end local v4    # "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v12    # "pairlist_has":Z
    :cond_11
    sget-object v19, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 1044
    .restart local v4    # "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v19, 0x28da

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_13

    .line 1045
    const/16 v19, 0x28da

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const/16 v20, 0x0

    aget-object v20, p5, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 1046
    sget-boolean v19, Lcom/syu/bt/App_Bt;->bShowPairedBt:Z

    if-nez v19, :cond_12

    .line 1047
    const/4 v12, 0x1

    goto/16 :goto_6

    .line 1049
    :cond_12
    sget-object v19, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_6

    .line 1042
    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 1089
    .end local v4    # "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v9    # "i":I
    .end local v12    # "pairlist_has":Z
    :sswitch_3
    if-eqz p1, :cond_0

    .line 1090
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isPhoneConnect()Z

    move-result v19

    if-eqz v19, :cond_14

    .line 1091
    const/16 v19, 0x0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v20, v0

    const-string v21, "bt_connected"

    invoke-virtual/range {v20 .. v21}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/page/Page_Pair;->showConnectTip(ZLjava/lang/String;)V

    .line 1092
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Pair;->resetBtnEnable()V

    .line 1095
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    .line 1096
    const/16 v20, 0x28d3

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    .line 1095
    check-cast v8, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 1097
    .local v8, "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v8, :cond_15

    .line 1098
    const-string v19, "gdy6666"

    const-string v20, " *****001 Ipc_New notifyDataSetChanged    "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-virtual {v8}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    .line 1102
    :cond_15
    const-string v19, "hfp10"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " 222 HFP_STATUS page_Pair  U_PHONE_STATE = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v21, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v22, 0x9

    aget v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " iPhoneState_p = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->iPhoneState_p:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v20, 0x9

    aget v19, v19, v20

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 1104
    sget-boolean v19, Lcom/syu/bt/App_Bt;->bShowPairedBt:Z

    if-eqz v19, :cond_16

    .line 1105
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/syu/app/ipc/Bt_IpcObj;->queryPairList()V

    .line 1107
    :cond_16
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v20, 0x9

    aget v19, v19, v20

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->iPhoneState_p:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 1108
    :cond_17
    const/16 v19, 0x0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v20, v0

    const-string v21, "bt_linking"

    invoke-virtual/range {v20 .. v21}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/page/Page_Pair;->showConnectTip(ZLjava/lang/String;)V

    .line 1109
    :cond_18
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v20, 0x9

    aget v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->iPhoneState_p:I

    goto/16 :goto_0

    .line 1116
    .end local v8    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    :sswitch_4
    const-string v19, "hfp10"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " 111 Ipc Page updateCode = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bPhone2_HFP[0] = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/16 v22, 0x0

    aget v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bPhone2_HFP[1] = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/16 v22, 0x1

    aget v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    if-eqz p1, :cond_0

    sget-boolean v19, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v19, :cond_0

    .line 1120
    const/16 v19, 0x3d

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_1b

    .line 1121
    if-eqz p5, :cond_1b

    if-eqz p3, :cond_1b

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_1b

    .line 1122
    const/16 v19, 0x0

    aget-object v19, p5, v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1b

    .line 1123
    const/16 v19, 0x0

    aget-object v19, p5, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1124
    .restart local v9    # "i":I
    const-string v19, "hfp13"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " 44 HFP_STATUS HFP_state[i]="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v21, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->HFP_state:[I

    aget v21, v21, v9

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  App_Bt.bPhone2_HFP[i] = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v21, v21, v9

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    sget-object v19, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->HFP_state:[I

    aget v19, v19, v9

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    sget-object v19, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v19, v19, v9

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 1126
    const/16 v19, 0x0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v20, v0

    const-string v21, "bt_connected"

    invoke-virtual/range {v20 .. v21}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/page/Page_Pair;->showConnectTip(ZLjava/lang/String;)V

    .line 1127
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Pair;->resetBtnEnable()V

    .line 1129
    :cond_19
    sget-object v19, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v19, v19, v9

    sget-object v20, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->HFP_state:[I

    aget v20, v20, v9

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1a

    .line 1130
    sget-object v19, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->HFP_state:[I

    sget-object v20, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v20, v20, v9

    aput v20, v19, v9

    .line 1132
    :cond_1a
    sget-object v19, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v19, v19, v9

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1b

    .line 1133
    sget-boolean v19, Lcom/syu/bt/App_Bt;->bShowPairedBt:Z

    if-eqz v19, :cond_1b

    .line 1134
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/syu/app/ipc/Bt_IpcObj;->queryPairList()V

    .line 1139
    .end local v9    # "i":I
    :cond_1b
    const-string v19, "hfp11"

    const-string v20, " ** 22   refreshPairedList "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Pair;->refreshPairedList()V

    .line 1141
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Pair;->refreshList()V

    goto/16 :goto_0

    .line 1148
    :sswitch_5
    if-eqz p1, :cond_0

    .line 1149
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    const/16 v20, 0x28d6

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/lsec/core/frame/ctrl/JText;

    .line 1150
    .local v15, "text_Addr":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v15, :cond_1c

    .line 1151
    sget-object v18, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    .line 1152
    .local v18, "value":Ljava/lang/String;
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1c

    .line 1153
    const-string v19, "gdy3"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " U_LOCAL_MAC_ADDR value = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " length = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1d

    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1d

    .line 1155
    new-instance v19, Ljava/lang/StringBuilder;

    const/16 v20, 0x0

    const/16 v21, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1156
    const/16 v20, 0x2

    const/16 v21, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1157
    const/16 v20, 0x4

    const/16 v21, 0x6

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1158
    const/16 v20, 0x6

    const/16 v21, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1159
    const/16 v20, 0x8

    const/16 v21, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1160
    const/16 v20, 0xa

    const/16 v21, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1155
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    .end local v18    # "value":Ljava/lang/String;
    :cond_1c
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    const/16 v20, 0x28d7

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    .line 1167
    .local v16, "text_Err":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v16, :cond_0

    .line 1168
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1e

    .line 1169
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1162
    .end local v16    # "text_Err":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v18    # "value":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1171
    .end local v18    # "value":Ljava/lang/String;
    .restart local v16    # "text_Err":Lcom/lsec/core/frame/ctrl/JText;
    :cond_1e
    const-string v19, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1177
    .end local v15    # "text_Addr":Lcom/lsec/core/frame/ctrl/JText;
    .end local v16    # "text_Err":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_6
    if-eqz p1, :cond_0

    .line 1178
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    const/16 v20, 0x28d5

    invoke-virtual/range {v19 .. v20}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/lsec/core/frame/ctrl/JText;

    .line 1179
    .local v17, "text_Name":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v17, :cond_0

    .line 1180
    sget-object v19, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 921
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x9 -> :sswitch_3
        0xe -> :sswitch_5
        0xf -> :sswitch_6
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0x3d -> :sswitch_4
        0x3e -> :sswitch_4
    .end sparse-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Set;I[I[F[Ljava/lang/String;)V
    .locals 27
    .param p1, "page_Set"    # Lcom/syu/bt/page/Page_Set;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1363
    sparse-switch p2, :sswitch_data_0

    .line 1598
    :cond_0
    :goto_0
    return-void

    .line 1365
    :sswitch_0
    const-string v24, "name"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, " 22 Set_Edit_U_LOCAL_NAME DevName U_LOCAL_NAME Bt.sDevName"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v26, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v24

    const/16 v25, 0x288d

    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 1367
    .local v11, "editDevName":Landroid/widget/EditText;
    if-eqz v11, :cond_1

    .line 1368
    sget-object v24, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1370
    :cond_1
    if-eqz p1, :cond_2

    .line 1371
    sget-object v24, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->setBtName(Ljava/lang/String;)V

    .line 1383
    :cond_2
    sget-object v24, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/syu/bt/InterfaceBt;

    .line 1384
    .local v17, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface/range {v17 .. v17}, Lcom/syu/bt/InterfaceBt;->updateBtNameAndPinTip()V

    goto :goto_1

    .line 1389
    .end local v11    # "editDevName":Landroid/widget/EditText;
    .end local v17    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :sswitch_1
    sget-object v24, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 1390
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v24

    const/16 v25, 0x288f

    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 1392
    .local v12, "editPin":Landroid/widget/EditText;
    if-eqz v12, :cond_3

    .line 1393
    sget-object v24, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1395
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mTvPin:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    .line 1396
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mTvPin:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v24, v0

    sget-object v25, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1398
    :cond_4
    if-eqz p1, :cond_5

    .line 1399
    sget-object v24, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->setBtPin(Ljava/lang/String;)V

    .line 1401
    .end local v12    # "editPin":Landroid/widget/EditText;
    :cond_5
    sget-object v24, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/syu/bt/InterfaceBt;

    .line 1402
    .restart local v17    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface/range {v17 .. v17}, Lcom/syu/bt/InterfaceBt;->updateBtNameAndPinTip()V

    goto :goto_2

    .line 1406
    .end local v17    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :sswitch_2
    const/4 v3, 0x0

    .line 1407
    .local v3, "bAutoPick":Z
    const/16 v19, 0x0

    .line 1408
    .local v19, "str":Ljava/lang/String;
    sget-object v24, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v24, v24, p2

    if-lez v24, :cond_8

    .line 1409
    const/4 v3, 0x1

    .line 1410
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v24, v0

    const-string v25, "bt_opened"

    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1414
    :goto_3
    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/syu/bt/page/Page_Set;->isAutoAnswer:Z

    .line 1416
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v24

    .line 1417
    const/16 v25, 0x2890

    .line 1416
    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/lsec/core/frame/ctrl/JText;

    .line 1418
    .local v22, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v22, :cond_6

    .line 1419
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1421
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v24

    .line 1422
    const/16 v25, 0x288c

    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    .line 1421
    check-cast v6, Lcom/lsec/core/frame/ctrl/JSwitchButton;

    .line 1423
    .local v6, "check":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    if-eqz v6, :cond_7

    .line 1424
    invoke-virtual {v6, v3}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setChecked(Z)V

    .line 1426
    :cond_7
    const/16 v24, 0x2873

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Lcom/syu/bt/page/Page_Set;->updateAutoSelected(IZ)V

    .line 1428
    const/16 v25, 0x2874

    .line 1429
    if-eqz v3, :cond_9

    const/16 v24, 0x0

    .line 1428
    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/page/Page_Set;->updateAutoSelected(IZ)V

    .line 1431
    const/16 v24, 0x2875

    .line 1430
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Lcom/syu/bt/page/Page_Set;->updateAutoSelected(IZ)V

    .line 1433
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v24

    .line 1434
    const/16 v25, 0x292c

    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    .line 1433
    check-cast v8, Lcom/syu/bt/ctrl/JSwitchButon2;

    .line 1435
    .local v8, "check2":Lcom/syu/bt/ctrl/JSwitchButon2;
    if-eqz v8, :cond_0

    .line 1436
    invoke-virtual {v8, v3}, Lcom/syu/bt/ctrl/JSwitchButon2;->setSwitch(Z)V

    goto/16 :goto_0

    .line 1412
    .end local v6    # "check":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    .end local v8    # "check2":Lcom/syu/bt/ctrl/JSwitchButon2;
    .end local v22    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_8
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v24, v0

    const-string v25, "bt_closed"

    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto :goto_3

    .line 1429
    .restart local v6    # "check":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    .restart local v22    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_9
    const/16 v24, 0x1

    goto :goto_4

    .line 1440
    .end local v3    # "bAutoPick":Z
    .end local v6    # "check":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    .end local v19    # "str":Ljava/lang/String;
    .end local v22    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_3
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/syu/bt/page/Page_Set;->isClickReSet:Z

    move/from16 v24, v0

    if-eqz v24, :cond_c

    .line 1441
    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->updateResetEnable(Z)V

    .line 1442
    sget-object v24, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/syu/bt/util/UIUtil;->disLoading()V

    .line 1443
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v24

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v25, v0

    const-string v26, "bt_reset_success"

    invoke-virtual/range {v25 .. v26}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 1445
    sget-object v24, Lcom/syu/bt/App_Bt;->strDefaultName:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_a

    sget-object v24, Lcom/syu/bt/App_Bt;->strDefaultName:Ljava/lang/String;

    sget-object v25, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_a

    .line 1446
    sget-object v24, Lcom/syu/bt/App_Bt;->strDefaultName:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/syu/app/ipc/Bt_IpcObj;->setDevName(Ljava/lang/String;)V

    .line 1449
    :cond_a
    sget-object v24, Lcom/syu/bt/App_Bt;->strDefaultPin:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_b

    sget-object v24, Lcom/syu/bt/App_Bt;->strDefaultPin:Ljava/lang/String;

    sget-object v25, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 1450
    sget-object v24, Lcom/syu/bt/App_Bt;->strDefaultPin:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/syu/app/ipc/Bt_IpcObj;->setDevPin(Ljava/lang/String;)V

    .line 1452
    :cond_b
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v24

    sget-object v25, Lcom/syu/bt/App_Bt;->strDefaultName:Ljava/lang/String;

    sget-object v26, Lcom/syu/bt/App_Bt;->strDefaultPin:Ljava/lang/String;

    invoke-virtual/range {v24 .. v26}, Lcom/syu/bt/App_Bt;->SaveConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    move-object/from16 v24, v0

    const-string v25, "name_ring"

    const-string v26, ""

    invoke-virtual/range {v24 .. v26}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    const-string v24, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->updateRingName(Ljava/lang/String;)V

    .line 1457
    :cond_c
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/syu/bt/page/Page_Set;->isClickReSet:Z

    goto/16 :goto_0

    .line 1460
    :sswitch_4
    const/4 v4, 0x0

    .line 1461
    .local v4, "bAutoPick1":Z
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v24

    const/16 v25, 0x28ec

    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 1463
    .local v15, "gridView_set":Lcom/lsec/core/frame/ctrl/JGridView;
    sget-object v24, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v24, v24, p2

    if-lez v24, :cond_11

    .line 1465
    const/16 v24, 0x1

    sput-boolean v24, Lcom/syu/bt/App_Bt;->bBtInitFlag:Z

    .line 1466
    if-eqz v15, :cond_d

    .line 1467
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JGridView;->setVisibility(I)V

    .line 1474
    :cond_d
    :goto_5
    sget-object v24, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v24, v24, p2

    if-lez v24, :cond_e

    .line 1475
    const/4 v4, 0x1

    .line 1477
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v24

    const/16 v25, 0x2891

    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lsec/core/frame/ctrl/JSwitchButton;

    .line 1478
    .local v7, "check1":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    if-eqz v7, :cond_f

    .line 1479
    invoke-virtual {v7, v4}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setChecked(Z)V

    .line 1481
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mBTOnOff:Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    .line 1482
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mBTOnOff:Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v24, v0

    sget-boolean v25, Lcom/syu/bt/App_Bt;->bBtPowerOnOff:Z

    invoke-virtual/range {v24 .. v25}, Lcom/syu/bt/ctrl/JSwitchButon2;->setSwitch(Z)V

    .line 1484
    :cond_10
    sget v24, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    .line 1485
    sget-object v24, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/syu/bt/InterfaceBt;

    .line 1487
    .restart local v17    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    const/16 v25, 0xbb8

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/syu/bt/InterfaceBt;->disPostLoading(I)V

    goto :goto_6

    .line 1470
    .end local v7    # "check1":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    .end local v17    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :cond_11
    if-eqz v15, :cond_d

    .line 1471
    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JGridView;->setVisibility(I)V

    goto :goto_5

    .line 1490
    .restart local v7    # "check1":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    :cond_12
    sget-object v24, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/syu/bt/util/UIUtil;->disLoading()V

    goto/16 :goto_0

    .line 1494
    .end local v4    # "bAutoPick1":Z
    .end local v7    # "check1":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    .end local v15    # "gridView_set":Lcom/lsec/core/frame/ctrl/JGridView;
    :sswitch_5
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_0

    .line 1495
    const/16 v24, 0x0

    aget v5, p3, v24

    .line 1496
    .local v5, "btring":I
    const/16 v24, 0x0

    aget v24, p3, v24

    sput v24, Lcom/syu/bt/App_Bt;->iRingLevel:I

    .line 1497
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    .line 1498
    .local v21, "strRing":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tvRingSet:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1499
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tvRingSet:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1504
    .end local v5    # "btring":I
    .end local v21    # "strRing":Ljava/lang/String;
    :sswitch_6
    sget-object v24, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v25, 0x9

    aget v23, v24, v25

    .line 1505
    .local v23, "value":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tvPhoneState:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v24, v0

    if-eqz v24, :cond_13

    .line 1506
    if-ltz v23, :cond_13

    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_13

    .line 1507
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tvPhoneState:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v24, v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v25, v0

    sget-object v26, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    aget-object v26, v26, v23

    invoke-virtual/range {v25 .. v26}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1510
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tvLinkName:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v24, v0

    if-eqz v24, :cond_14

    .line 1511
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tvLinkName:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v24, v0

    sget-object v25, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneName:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1513
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v24

    .line 1514
    const/16 v25, 0x28ec

    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v14

    .line 1513
    check-cast v14, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 1515
    .local v14, "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v14, :cond_0

    .line 1516
    const-string v24, "gdy6666"

    const-string v25, " *****002 Ipc_New notifyDataSetChanged    "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    invoke-virtual {v14}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1523
    .end local v14    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    .end local v23    # "value":I
    :sswitch_7
    if-nez p5, :cond_15

    .line 1524
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->showSetDiscover(Z)V

    goto/16 :goto_0

    .line 1528
    :cond_15
    if-eqz p3, :cond_16

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_16

    if-eqz p5, :cond_16

    .line 1529
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_0

    .line 1533
    :cond_16
    const/16 v18, 0x0

    .line 1534
    .local v18, "isExists":Z
    :try_start_0
    sget-object v24, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListSetPair:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_17
    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_18

    .line 1540
    if-nez v18, :cond_0

    .line 1541
    const/16 v24, 0x1

    aget-object v24, p5, v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 1544
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 1545
    .local v9, "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v24, 0x28ef

    const/16 v25, 0x0

    aget-object v25, p5, v25

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1546
    const/16 v24, 0x28f0

    const/16 v25, 0x1

    aget-object v25, p5, v25

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1547
    const/16 v24, 0x28ee

    .line 1548
    const/16 v25, 0x0

    aget v25, p3, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    .line 1547
    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1549
    sget-object v24, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListSetPair:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1550
    sget-object v24, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListSetPair:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->resetList_BtSet(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1552
    .end local v9    # "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 1553
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1534
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_18
    :try_start_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 1535
    .restart local v9    # "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v24, 0x28ef

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 1536
    const/16 v26, 0x0

    aget-object v26, p5, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v24

    if-eqz v24, :cond_17

    .line 1537
    const/16 v18, 0x1

    goto/16 :goto_7

    .line 1558
    .end local v9    # "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v18    # "isExists":Z
    :sswitch_8
    const/16 v24, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 1562
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v24

    .line 1561
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->getChoiceName(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v13

    .line 1563
    .local v13, "entity":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v13, :cond_0

    .line 1566
    const/16 v24, 0x28ee

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1567
    .local v20, "strIndex":Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 1570
    invoke-static/range {v20 .. v20}, Lcom/lsec/core/util/FuncUtils;->myParseInt(Ljava/lang/String;)I

    move-result v16

    .line 1571
    .local v16, "iIndex":I
    sget-boolean v24, Lcom/syu/bt/App_Bt;->bSelfLink:Z

    if-eqz v24, :cond_0

    const/16 v24, 0x2

    move/from16 v0, v16

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 1574
    const/16 v24, 0x0

    sput-boolean v24, Lcom/syu/bt/App_Bt;->bSelfLink:Z

    .line 1575
    sget-object v24, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v24, v24, p2

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_19

    .line 1576
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v24

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v25, v0

    const-string v26, "bt_obd_connected"

    invoke-virtual/range {v25 .. v26}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1577
    :cond_19
    sget-object v24, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v24, v24, p2

    if-nez v24, :cond_0

    .line 1578
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v24

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v25, v0

    const-string v26, "bt_obd_disconnected"

    invoke-virtual/range {v25 .. v26}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1583
    .end local v13    # "entity":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v16    # "iIndex":I
    .end local v20    # "strIndex":Ljava/lang/String;
    :sswitch_9
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_0

    .line 1584
    const/16 v24, 0x0

    aget v24, p3, v24

    add-int/lit8 v5, v24, 0x1

    .line 1585
    .restart local v5    # "btring":I
    const/16 v24, 0x64

    move/from16 v0, v24

    if-gt v5, v0, :cond_1a

    if-ltz v5, :cond_1a

    .line 1586
    const/16 v24, 0x1

    sput-boolean v24, Lcom/syu/bt/App_Bt;->mBtUpdating:Z

    .line 1587
    if-eqz p1, :cond_0

    .line 1588
    sget-object v24, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "%"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1590
    :cond_1a
    const/16 v24, 0x0

    sput-boolean v24, Lcom/syu/bt/App_Bt;->mBtUpdating:Z

    .line 1591
    if-eqz p1, :cond_0

    .line 1592
    sget-object v24, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/syu/bt/util/UIUtil;->disLoading()V

    goto/16 :goto_0

    .line 1363
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_6
        0xf -> :sswitch_0
        0x10 -> :sswitch_1
        0x13 -> :sswitch_3
        0x14 -> :sswitch_2
        0x18 -> :sswitch_7
        0x19 -> :sswitch_8
        0x1f -> :sswitch_4
        0x21 -> :sswitch_5
        0x24 -> :sswitch_9
        0x3d -> :sswitch_6
    .end sparse-switch
.end method

.method public onNotify_Sound(Lcom/syu/bt/page/Page_Set;I[I[F[Ljava/lang/String;)V
    .locals 4
    .param p1, "page_Set"    # Lcom/syu/bt/page/Page_Set;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1604
    packed-switch p2, :pswitch_data_0

    .line 1620
    :cond_0
    :goto_0
    return-void

    .line 1606
    :pswitch_0
    if-eqz p3, :cond_0

    array-length v2, p3

    if-lez v2, :cond_0

    .line 1607
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v2}, Lcom/syu/app/ipc/Bt_IpcObj;->getSB()[I

    move-result-object v2

    sput-object v2, Lcom/syu/bt/App_Bt;->SB:[I

    .line 1608
    sget-object v2, Lcom/syu/bt/App_Bt;->SB:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    sput v2, Lcom/syu/bt/App_Bt;->iPhoneMicSet:I

    .line 1609
    sget-object v2, Lcom/syu/bt/App_Bt;->SB:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    sput v2, Lcom/syu/bt/App_Bt;->iBtAvMicSet:I

    .line 1610
    sget v2, Lcom/syu/bt/App_Bt;->iPhoneMicSet:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1611
    .local v1, "strPhoneMicSet":Ljava/lang/String;
    sget v2, Lcom/syu/bt/App_Bt;->iBtAvMicSet:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1612
    .local v0, "strBtAvMicSet":Ljava/lang/String;
    iget-object v2, p1, Lcom/syu/bt/page/Page_Set;->tvPhoneMicSet:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_1

    .line 1613
    iget-object v2, p1, Lcom/syu/bt/page/Page_Set;->tvPhoneMicSet:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v2, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1615
    :cond_1
    iget-object v2, p1, Lcom/syu/bt/page/Page_Set;->tvBtAvMicSet:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_0

    .line 1616
    iget-object v2, p1, Lcom/syu/bt/page/Page_Set;->tvBtAvMicSet:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1604
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public onNotify_UniCar(Lcom/syu/bt/page/Page_Dial;I[I[F[Ljava/lang/String;)V
    .locals 5
    .param p1, "page_Dial"    # Lcom/syu/bt/page/Page_Dial;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 2153
    packed-switch p2, :pswitch_data_0

    .line 2222
    :cond_0
    :goto_0
    return-void

    .line 2155
    :pswitch_0
    sget-object v1, Lcom/lsec/core/ipc/module/unicar/UniCar;->DATA:[I

    aget v1, v1, p2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 2157
    :pswitch_1
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isConnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2158
    sput-boolean v4, Lcom/syu/bt/App_Bt;->bCutBtByIpPhone:Z

    .line 2159
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->cut()V

    goto :goto_0

    .line 2163
    :pswitch_2
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bCutBtByIpPhone:Z

    if-eqz v1, :cond_1

    .line 2164
    sput-boolean v2, Lcom/syu/bt/App_Bt;->bCutBtByIpPhone:Z

    .line 2165
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->link()V

    .line 2169
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    .line 2170
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 2171
    const-string v3, "ipphone_dailwait"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2168
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 2172
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2173
    iget-object v1, p1, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v1}, Lcom/syu/bt/Act_Bt;->dismissProgressIpPhoneDlg()V

    goto :goto_0

    .line 2177
    :pswitch_3
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bCutBtByIpPhone:Z

    if-eqz v1, :cond_2

    .line 2178
    sput-boolean v2, Lcom/syu/bt/App_Bt;->bCutBtByIpPhone:Z

    .line 2179
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->link()V

    .line 2183
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    .line 2184
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 2185
    const-string v3, "ipphone_simstatus"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2182
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 2186
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2187
    iget-object v1, p1, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v1}, Lcom/syu/bt/Act_Bt;->dismissProgressIpPhoneDlg()V

    goto :goto_0

    .line 2194
    :pswitch_4
    sget-object v1, Lcom/lsec/core/ipc/module/unicar/UniCar;->DATA:[I

    aget v1, v1, p2

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    .line 2200
    :pswitch_5
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bCutBtByIpPhone:Z

    if-eqz v1, :cond_3

    .line 2201
    sput-boolean v2, Lcom/syu/bt/App_Bt;->bCutBtByIpPhone:Z

    .line 2202
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->link()V

    .line 2205
    :cond_3
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial;->stopIpPhoneTimer()V

    goto :goto_0

    .line 2196
    :pswitch_6
    iget-object v1, p1, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v1}, Lcom/syu/bt/Act_Bt;->dismissProgressIpPhoneDlg()V

    .line 2197
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial;->startIpPhoneTimer()V

    goto/16 :goto_0

    .line 2211
    :pswitch_7
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/App_Bt;->initIpPhoneTip()V

    goto/16 :goto_0

    .line 2214
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->phoneState(Lcom/syu/bt/page/Page_Dial;)V

    .line 2215
    const/4 v1, 0x2

    invoke-static {p3, v1}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2216
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 2217
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    aget v2, p3, v4

    invoke-interface {v0, v2}, Lcom/syu/bt/InterfaceBt;->updateSimLayout(I)V

    goto :goto_1

    .line 2153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2155
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2194
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public phoneState(Lcom/syu/bt/page/Page_Dial;)V
    .locals 6
    .param p1, "page_Dial"    # Lcom/syu/bt/page/Page_Dial;

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 78
    :cond_0
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v2, 0x9

    aget v0, v1, v2

    .line 79
    .local v0, "mBtState":I
    const-string v1, "gdy3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 22  Page_Dial  Ipc_NewNotifyPage mBtState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p1, v0}, Lcom/syu/bt/page/Page_Dial;->updateDeviceInfo(I)V

    .line 81
    invoke-virtual {p1, v0}, Lcom/syu/bt/page/Page_Dial;->resetThridDial(I)V

    .line 82
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial;->resetBtnEnable()V

    .line 83
    const/4 v1, 0x1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mRunnable_updatePhoneView:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-static {v1, v2, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 85
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial;->showInCallAnim()V

    .line 90
    :goto_1
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    packed-switch v0, :pswitch_data_0

    .line 101
    :cond_1
    :goto_2
    :pswitch_0
    const-string v1, "hfp"

    const-string v2, " 555 Ipc_NewNotifyPage ints phoneState   "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial;->showPhone()V

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial;->hideInCallAnim()V

    goto :goto_1

    .line 96
    :pswitch_1
    const-string v1, ""

    sput-object v1, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    goto :goto_2

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

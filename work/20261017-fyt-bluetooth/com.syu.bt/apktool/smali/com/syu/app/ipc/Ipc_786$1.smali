.class Lcom/syu/app/ipc/Ipc_786$1;
.super Ljava/lang/Object;
.source "Ipc_786.java"

# interfaces
.implements Lcom/lsec/core/util/IUiNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/app/ipc/Ipc_786;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/app/ipc/Ipc_786;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Ipc_786;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_786$1;->this$0:Lcom/syu/app/ipc/Ipc_786;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 13
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 483
    const-string v8, "gdy"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " 00 Ipc_786 notify_PopBt updateCode = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v8

    iget-object v8, v8, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 485
    .local v2, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-nez v2, :cond_0

    .line 486
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v8

    iget-object v8, v8, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 488
    :cond_0
    if-eqz v2, :cond_1

    .line 489
    sparse-switch p1, :sswitch_data_0

    .line 569
    :cond_1
    :goto_0
    return-void

    .line 491
    :sswitch_0
    sget-object v8, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v7, v8, p1

    .line 492
    .local v7, "value":I
    const/4 v0, -0x1

    .line 493
    .local v0, "iState":I
    packed-switch v7, :pswitch_data_0

    .line 517
    :goto_1
    if-ltz v0, :cond_2

    .line 518
    const/16 v8, 0x12

    invoke-virtual {v2, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    .line 519
    .local v4, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v4, :cond_2

    .line 520
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v8

    iget-object v8, v8, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-object v9, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 523
    .end local v4    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_2
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isTalk()Z

    move-result v8

    if-nez v8, :cond_3

    .line 524
    const/16 v8, 0x16

    invoke-virtual {v2, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    .line 525
    .restart local v4    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v4, :cond_3

    .line 526
    const-string v8, ""

    invoke-virtual {v4, v8}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 529
    .end local v4    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_3
    iget-object v8, p0, Lcom/syu/app/ipc/Ipc_786$1;->this$0:Lcom/syu/app/ipc/Ipc_786;

    sget v9, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    invoke-virtual {v8, v9}, Lcom/syu/app/ipc/Ipc_786;->isCalling(I)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    .line 530
    if-nez v7, :cond_1

    .line 531
    :cond_4
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    goto :goto_0

    .line 495
    :pswitch_0
    const/4 v0, 0x0

    .line 496
    goto :goto_1

    .line 498
    :pswitch_1
    const/4 v0, 0x1

    .line 499
    goto :goto_1

    .line 501
    :pswitch_2
    const/4 v0, 0x2

    .line 502
    goto :goto_1

    .line 504
    :pswitch_3
    const/4 v0, 0x3

    .line 505
    goto :goto_1

    .line 507
    :pswitch_4
    const/4 v0, 0x4

    .line 508
    goto :goto_1

    .line 510
    :pswitch_5
    const/4 v0, 0x5

    .line 511
    goto :goto_1

    .line 513
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_1

    .line 535
    .end local v0    # "iState":I
    .end local v7    # "value":I
    :sswitch_1
    const-string v8, "pop33"

    const-string v9, " 00 Ipc768  Runnable"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    const/16 v8, 0x13

    invoke-virtual {v2, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JText;

    .line 537
    .local v6, "txtNum":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v6, :cond_5

    .line 538
    sget-object v8, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 540
    :cond_5
    const/16 v8, 0x17

    invoke-virtual {v2, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    .line 541
    .local v5, "txtContact":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v5, :cond_1

    .line 542
    sget-object v8, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 543
    const-string v8, ""

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 545
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-object v8, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v8, v8, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 547
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v8

    iget-object v8, v8, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v9, "unknown"

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 548
    .local v3, "strUnKnown":Ljava/lang/String;
    sget-object v8, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v9, "Thread-GetNameByNumber"

    .line 549
    new-instance v10, Lcom/syu/bt/runnable/Runnable_getNameByNumber;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v5, v3, v11}, Lcom/syu/bt/runnable/Runnable_getNameByNumber;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Z)V

    const/4 v11, 0x0

    .line 550
    const/4 v12, 0x5

    .line 548
    invoke-static {v8, v9, v10, v11, v12}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_0

    .line 557
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .end local v3    # "strUnKnown":Ljava/lang/String;
    .end local v5    # "txtContact":Lcom/lsec/core/frame/ctrl/JText;
    .end local v6    # "txtNum":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_2
    const/16 v8, 0x16

    invoke-virtual {v2, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    .line 558
    .restart local v4    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v4, :cond_1

    .line 559
    sget-object v8, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v8, v8, p1

    add-int/lit8 v8, v8, 0x64

    div-int/lit16 v7, v8, 0x3e8

    .line 560
    .restart local v7    # "value":I
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isTalk()Z

    move-result v8

    if-nez v8, :cond_7

    .line 561
    const-string v8, ""

    invoke-virtual {v4, v8}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 563
    :cond_7
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%02d:%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    div-int/lit8 v12, v7, 0x3c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    rem-int/lit8 v12, v7, 0x3c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 489
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch

    .line 493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.class public Lcom/syu/bt/BtAct;
.super Landroid/app/Activity;
.source "BtAct.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x271c

    const/16 v9, 0x271a

    const/16 v8, 0x2718

    const/16 v7, 0x2715

    const/16 v6, 0x2713

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget v3, Lcom/syu/bt/App_Bt;->sPage:I

    invoke-static {v3}, Lcom/syu/bt/App_Bt;->includePage(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 23
    sput v6, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 28
    :goto_0
    const-string v3, "gdy6"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "00 onCreate:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bFirstBtAvPage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/syu/bt/App_Bt;->bFirstBtAvPage:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v4, "page_id"

    invoke-virtual {v3, v4, v6}, Lcom/lsec/core/util/MySharePreference2;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 32
    const-string v3, "gdy6"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "11 onCreate:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bFirstPairPage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/syu/bt/App_Bt;->bFirstPairPage:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isInCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isInCall()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bIsLauncher_2Ico:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    if-ne v3, v9, :cond_0

    .line 35
    sput v6, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 36
    :cond_0
    const-string v3, "gdy6"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "22 onCreate:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bFirstPairPage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/syu/bt/App_Bt;->bFirstPairPage:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isInCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isInCall()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    sput v6, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 44
    :cond_1
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-eqz v3, :cond_2

    .line 45
    sput v7, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 46
    :cond_2
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bFirstPairPage:Z

    if-eqz v3, :cond_5

    .line 47
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bFirstPairPage2:Z

    if-eqz v3, :cond_9

    .line 49
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v4, "phoneState"

    sget v5, Lcom/syu/bt/App_Bt;->phoneState:I

    invoke-virtual {v3, v4, v5}, Lcom/lsec/core/util/MySharePreference2;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/syu/bt/App_Bt;->phoneState:I

    .line 53
    const-string v3, "gdy6"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "22 onCreate: sPage_WillBe = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phoneState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/syu/bt/App_Bt;->phoneState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget v3, Lcom/syu/bt/App_Bt;->phoneState:I

    if-nez v3, :cond_8

    .line 55
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    const/16 v4, 0x271b

    if-eq v3, v4, :cond_3

    .line 56
    sput v10, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 60
    :cond_3
    :goto_1
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-eqz v3, :cond_4

    .line 61
    sput v7, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 63
    :cond_4
    const-string v3, "gdy6"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "33 onCreate:sPage_WillBe = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phoneState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/syu/bt/App_Bt;->phoneState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_5
    :goto_2
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bFirstBtAvPage:Z

    if-eqz v3, :cond_6

    .line 72
    sput v9, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 77
    :cond_6
    invoke-virtual {p0}, Lcom/syu/bt/BtAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_b

    .line 79
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "strAction":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 81
    const-string v3, "btav"

    const-string v4, "launcher"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 82
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-string v4, "com.syu.btav"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyApplication;->startAct(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/syu/bt/BtAct;->finish()V

    .line 114
    .end local v1    # "strAction":Ljava/lang/String;
    :goto_3
    return-void

    .line 25
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    sget v3, Lcom/syu/bt/App_Bt;->sPage:I

    sput v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    goto/16 :goto_0

    .line 58
    :cond_8
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 59
    sput v6, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    goto :goto_1

    .line 66
    :cond_9
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v3

    if-nez v3, :cond_5

    .line 67
    sput v10, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    goto :goto_2

    .line 87
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "strAction":Ljava/lang/String;
    :cond_a
    const-string v3, "com.syu.bt"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 88
    const-string v3, "com.syu.bt"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "strExtra":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 90
    const-string v3, "contact"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 91
    sput v7, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 102
    .end local v1    # "strAction":Ljava/lang/String;
    .end local v2    # "strExtra":Ljava/lang/String;
    :cond_b
    :goto_4
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bHideBtDial:Z

    if-eqz v3, :cond_c

    .line 103
    sput v9, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 104
    :cond_c
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bNo_Pair:Z

    if-eqz v3, :cond_d

    .line 105
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    if-ne v3, v10, :cond_d

    .line 106
    const/16 v3, 0x271b

    sput v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 108
    :cond_d
    const-string v3, "gdy6"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 44 onCreate: sPage_WillBe = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bHideBtDial = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/syu/bt/App_Bt;->bHideBtDial:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-class v4, Lcom/syu/bt/act/ActBt;

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyApplication;->startAct(Ljava/lang/Class;)V

    .line 113
    invoke-virtual {p0}, Lcom/syu/bt/BtAct;->finish()V

    goto/16 :goto_3

    .line 92
    .restart local v1    # "strAction":Ljava/lang/String;
    .restart local v2    # "strExtra":Ljava/lang/String;
    :cond_e
    const-string v3, "history"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 93
    sput v8, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    goto :goto_4

    .line 94
    :cond_f
    const-string v3, "historyAccept"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 95
    sput v8, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    goto :goto_4

    .line 96
    :cond_10
    const-string v3, "historyDismiss"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 97
    sput v8, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    goto :goto_4
.end method

.class public Lcom/syu/broadcast/DiDiHuReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DiDiHuReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    const-string v2, "com.bt.ACTION_BT_CONNECTION_REQUEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 21
    .local v1, "intent2":Landroid/content/Intent;
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v3, 0x9

    aget v2, v2, v3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 22
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v3, 0x9

    aget v2, v2, v3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 23
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v3, 0x9

    aget v2, v2, v3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 24
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v3, 0x9

    aget v2, v2, v3

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 25
    :cond_0
    const-string v2, "extra_bt_connection_event"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    :goto_0
    const-string v2, "com.bt.ACTION_BT_CONNECTION_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    .end local v1    # "intent2":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 27
    .restart local v1    # "intent2":Landroid/content/Intent;
    :cond_2
    const-string v2, "extra_bt_connection_event"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 54
    .end local v1    # "intent2":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 31
    :cond_3
    const-string v2, "com.bt.ACTION_BT_NAME_AND_PINCODE_REQUEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 33
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 34
    .restart local v1    # "intent2":Landroid/content/Intent;
    const-string v2, "extra_bt_name"

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v2, "extra_bt_pincode"

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v2, "com.bt.ACTION_BT_NAME_AND_PINCODE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 38
    .end local v1    # "intent2":Landroid/content/Intent;
    :cond_4
    const-string v2, "com.bt.ACTION_BT_SYNC_CONTACT_REQUEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 41
    .restart local v1    # "intent2":Landroid/content/Intent;
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    if-eqz v2, :cond_6

    .line 42
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 43
    const-string v2, "extra_bt_ddhu_sync_contact_state"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    :goto_2
    const-string v2, "extra_bt_connected_mac"

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v2, "com.nwd.bt.ddhu.ACTION_DDHU_SYNC_CONTACT_FINISH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 45
    :cond_5
    const-string v2, "extra_bt_ddhu_sync_contact_state"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 47
    :cond_6
    const-string v2, "extra_bt_ddhu_sync_contact_state"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

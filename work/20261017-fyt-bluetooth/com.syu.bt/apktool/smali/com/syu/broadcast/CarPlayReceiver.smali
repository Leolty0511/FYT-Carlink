.class public Lcom/syu/broadcast/CarPlayReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarPlayReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    const-string v2, "status"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "status":Ljava/lang/String;
    const-string v2, "phoneType"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "phoneType":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    sget v2, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    .line 26
    sget v2, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 30
    :cond_2
    const-string v2, "CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ios_carplay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 32
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    goto :goto_0

    .line 35
    :cond_3
    const-string v2, "DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ios_carplay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto :goto_0
.end method

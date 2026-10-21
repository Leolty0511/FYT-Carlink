.class public Lcom/syu/broadcast/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 14
    const-string v3, "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 17
    .local v2, "value":I
    if-le v2, v4, :cond_0

    .line 18
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 20
    .local v0, "battery":I
    sget v3, Lcom/syu/bt/App_Bt;->mPhoneBatterty:I

    if-eq v3, v0, :cond_0

    .line 21
    sput v0, Lcom/syu/bt/App_Bt;->mPhoneBatterty:I

    .line 22
    sget-object v3, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 27
    .end local v0    # "battery":I
    :cond_0
    return-void

    .line 22
    .restart local v0    # "battery":I
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syu/bt/InterfaceBt;

    .line 23
    .local v1, "interfaceBv":Lcom/syu/bt/InterfaceBt;
    sget v4, Lcom/syu/bt/App_Bt;->mPhoneBatterty:I

    invoke-interface {v1, v4}, Lcom/syu/bt/InterfaceBt;->updatePhoneBattery(I)V

    goto :goto_0
.end method

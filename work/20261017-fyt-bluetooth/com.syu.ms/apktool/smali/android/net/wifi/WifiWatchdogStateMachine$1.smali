.class Landroid/net/wifi/WifiWatchdogStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.RSSI_CHANGED"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v0, 0x21003

    const/16 v1, -0xc8

    const-string v2, "newRssi"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lu/m;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v0, 0x21004

    invoke-virtual {p1, v0, p2}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v0, 0x21002

    invoke-virtual {p1, v0, p2}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const p2, 0x21008

    invoke-virtual {p1, p2}, Lu/m;->sendMessage(I)V

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const p2, 0x21009

    invoke-virtual {p1, p2}, Lu/m;->sendMessage(I)V

    goto :goto_0

    :cond_4
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v0, 0x21005

    const/4 v1, 0x4

    const-string/jumbo v2, "wifi_state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lu/m;->sendMessage(II)V

    :cond_5
    :goto_0
    return-void
.end method

.class Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WatchdogEnabledState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 2
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_6

    .line 3
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V

    goto/16 :goto_2

    .line 4
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    const-string v0, "newState"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SupplicantState;

    .line 6
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne p1, v0, :cond_6

    .line 7
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1202(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 8
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 9
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    const-string v0, "networkInfo"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 11
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v3, "wifiInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiInfo;

    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1202(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 12
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 13
    sget-object v2, Landroid/net/wifi/WifiWatchdogStateMachine$4;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    .line 14
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2200(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V

    goto/16 :goto_2

    .line 15
    :cond_1
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2100(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V

    goto/16 :goto_2

    .line 16
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v2, "linkProperties"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/LinkProperties;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1402(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 17
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V

    goto :goto_2

    .line 20
    :cond_4
    :goto_1
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore, wifiinfo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " bssid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$900(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    goto :goto_2

    .line 22
    :cond_5
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$900(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    goto :goto_2

    .line 23
    :pswitch_4
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 24
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1100(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V

    :cond_6
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x21001
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

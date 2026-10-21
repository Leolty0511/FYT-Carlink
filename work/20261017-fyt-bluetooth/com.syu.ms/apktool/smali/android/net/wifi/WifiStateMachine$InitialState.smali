.class Landroid/net/wifi/WifiStateMachine$InitialState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitialState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    invoke-static {}, Landroid/net/wifi/WifiNative;->unloadDriver()Z

    .line 2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Lu/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Lu/b;

    invoke-direct {v1}, Lu/b;-><init>()V

    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$802(Landroid/net/wifi/WifiStateMachine;Lu/b;)Lu/b;

    .line 4
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Lu/b;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lu/m;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lu/b;->b(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Lu/b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Lu/b;

    invoke-direct {v1}, Lu/b;-><init>()V

    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$3302(Landroid/net/wifi/WifiStateMachine;Lu/b;)Lu/b;

    .line 7
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lu/m;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiApConfigStore;->makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/wifi/WifiApConfigStore;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/net/wifi/WifiApConfigStore;->loadApConfiguration()V

    .line 9
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Lu/b;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lu/m;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiApConfigStore;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lu/b;->c(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    const-string v0, "Unable to change interface settings: "

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const v1, 0x2000b

    if-eq p1, v1, :cond_2

    const v0, 0x20015

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v0, 0xc

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;I)V

    .line 3
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    invoke-static {}, Landroid/net/wifi/WifiNative;->loadDriver()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$4600(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$4700(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v0, "Failed to load driver for softap"

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$4800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$4900(Landroid/net/wifi/WifiStateMachine;)V

    :goto_0
    const/4 p1, 0x0

    return p1

    .line 7
    :cond_2
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object p1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 8
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/net/wifi/WifiStateMachine;->access$3600(Landroid/net/wifi/WifiStateMachine;I)V

    .line 9
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    invoke-static {}, Landroid/net/wifi/WifiNative;->loadDriver()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 10
    :try_start_0
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object p1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "STA"

    invoke-interface {p1, v2, v3}, Landroid/os/INetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to reload STA firmware "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/net/wifi/WifiStateMachine;->access$3700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 12
    :goto_1
    :try_start_1
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object p1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object p1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Landroid/os/INetworkManagementService;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 14
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object p1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 15
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception p1

    .line 16
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 17
    :goto_2
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result p1

    invoke-static {p1}, Landroid/net/wifi/WifiNative;->startSupplicant(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiMonitor;->startMonitoring()V

    .line 19
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$4000(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    goto :goto_3

    .line 20
    :cond_3
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v0, "Failed to start supplicant!"

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)V

    goto :goto_3

    .line 22
    :cond_4
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v0, "Failed to load driver"

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$4400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$InitialState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)V

    :goto_3
    return v1
.end method

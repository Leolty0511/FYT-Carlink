.class Landroid/net/EthernetDataTracker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/EthernetDataTracker;->runDhcp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/EthernetDataTracker;


# direct methods
.method public constructor <init>(Landroid/net/EthernetDataTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "Static IP configuration failed: "

    .line 1
    new-instance v1, Landroid/net/DhcpResults;

    invoke-direct {v1}, Landroid/net/DhcpResults;-><init>()V

    .line 2
    iget-object v2, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v2}, Landroid/net/EthernetDataTracker;->access$900(Landroid/net/EthernetDataTracker;)Z

    move-result v2

    const-string v3, "Ethernet"

    if-nez v2, :cond_2

    .line 3
    invoke-static {}, Landroid/net/EthernetDataTracker;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    iget v1, v0, Landroid/net/EthernetDataTracker;->ethCurrentState:I

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/net/EthernetDataTracker;->access$1000(Landroid/net/EthernetDataTracker;I)V

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DHCP request error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    iget-object v1, v1, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-static {v0, v1}, Landroid/net/EthernetDataTracker;->access$1102(Landroid/net/EthernetDataTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    goto :goto_1

    .line 8
    :cond_2
    iget-object v1, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v1}, Landroid/net/EthernetDataTracker;->access$1200(Landroid/net/EthernetDataTracker;)V

    .line 9
    new-instance v1, Landroid/net/InterfaceConfiguration;

    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 10
    iget-object v2, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v2}, Landroid/net/EthernetDataTracker;->access$1300(Landroid/net/EthernetDataTracker;)Landroid/net/LinkAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 11
    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 12
    :try_start_0
    iget-object v2, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v2}, Landroid/net/EthernetDataTracker;->access$1400(Landroid/net/EthernetDataTracker;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-static {}, Landroid/net/EthernetDataTracker;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    const-string v1, "Static IP configuration succeeded"

    .line 13
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :goto_0
    iget-object v0, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v0}, Landroid/net/EthernetDataTracker;->access$1500(Landroid/net/EthernetDataTracker;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/EthernetDataTracker;->access$1102(Landroid/net/EthernetDataTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 17
    :goto_1
    iget-object v0, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v0}, Landroid/net/EthernetDataTracker;->access$1100(Landroid/net/EthernetDataTracker;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-static {}, Landroid/net/EthernetDataTracker;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v0}, Landroid/net/EthernetDataTracker;->access$1600(Landroid/net/EthernetDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 19
    iget-object v0, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v0}, Landroid/net/EthernetDataTracker;->access$1600(Landroid/net/EthernetDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v4}, Landroid/net/EthernetDataTracker;->access$1700(Landroid/net/EthernetDataTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v0}, Landroid/net/EthernetDataTracker;->access$1800(Landroid/net/EthernetDataTracker;)Landroid/os/Handler;

    move-result-object v0

    const v2, 0x70001

    iget-object v3, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v3}, Landroid/net/EthernetDataTracker;->access$1600(Landroid/net/EthernetDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 22
    iget-object v0, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v0}, Landroid/net/EthernetDataTracker;->access$1800(Landroid/net/EthernetDataTracker;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v2, 0x70000

    iget-object v3, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v3}, Landroid/net/EthernetDataTracker;->access$1600(Landroid/net/EthernetDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 24
    iget-object v0, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v0}, Landroid/net/EthernetDataTracker;->access$1900(Landroid/net/EthernetDataTracker;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 25
    iget-object v0, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/net/EthernetDataTracker;->access$1000(Landroid/net/EthernetDataTracker;I)V

    .line 26
    :cond_3
    iget-object v0, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v0}, Landroid/net/EthernetDataTracker;->access$500(Landroid/net/EthernetDataTracker;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/EthernetDataTracker;->access$2000(Landroid/net/EthernetDataTracker;Landroid/content/Context;)V

    .line 27
    iget-object v0, p0, Landroid/net/EthernetDataTracker$2;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v0, v1}, Landroid/net/EthernetDataTracker;->access$2102(Landroid/net/EthernetDataTracker;Z)Z

    return-void
.end method

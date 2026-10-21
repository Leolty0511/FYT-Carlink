.class Landroid/net/wifi/WifiStateMachine$ObtainingIpState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObtainingIpState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    const-string v0, "Static IP configuration failed: "

    .line 1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startDhcp()V

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->stopDhcp()V

    .line 4
    new-instance v1, Landroid/net/DhcpResults;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/DhcpResults;-><init>(Landroid/net/LinkProperties;)V

    .line 5
    new-instance v2, Landroid/net/InterfaceConfiguration;

    invoke-direct {v2}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 6
    iget-object v3, v1, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const v5, 0x20010

    if-nez v4, :cond_1

    .line 8
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v1, "Static IP lacks address"

    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$18300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v5}, Lu/m;->sendMessage(I)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    invoke-virtual {v2, v3}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 11
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 12
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 13
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x2000f

    invoke-virtual {v2, v3, v1}, Lu/m;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 14
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/wifi/WifiStateMachine;->access$18500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v5}, Lu/m;->sendMessage(I)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 16
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/wifi/WifiStateMachine;->access$18400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v5}, Lu/m;->sendMessage(I)V

    :goto_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 2
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$18800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 3
    :sswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$18900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 4
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$19000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 5
    :sswitch_3
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$17100(Landroid/net/wifi/WifiStateMachine;)V

    .line 6
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$15400(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$18700(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    goto :goto_0

    .line 7
    :sswitch_4
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/DhcpResults;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$16800(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpResults;)V

    .line 8
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$16900(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$18600(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x2000f -> :sswitch_4
        0x20010 -> :sswitch_3
        0x20047 -> :sswitch_2
        0x2004d -> :sswitch_1
        0x25007 -> :sswitch_0
    .end sparse-switch
.end method

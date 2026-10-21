.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "P2pEnablingState"
.end annotation


# instance fields
.field public final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

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
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v0, "P2p socket connection failed"

    invoke-virtual {p1, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lu/g;)V

    goto :goto_0

    .line 4
    :sswitch_1
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lu/g;)V

    goto :goto_0

    .line 5
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x20083 -> :sswitch_2
        0x20084 -> :sswitch_2
        0x24001 -> :sswitch_1
        0x24002 -> :sswitch_0
    .end sparse-switch
.end method

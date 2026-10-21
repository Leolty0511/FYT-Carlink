.class Landroid/net/wifi/WifiStateMachine$TetheredState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TetheredState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x20018

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x2001d

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object p1, p1, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$23600(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v0, "Tethering reports wifi as untethered!, shut down soft Ap"

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$24300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 6
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {p1, v0, v2}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    :cond_1
    return v2

    .line 7
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;I)V

    .line 8
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$24400(Landroid/net/wifi/WifiStateMachine;)V

    .line 9
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$24500(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$24600(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    .line 10
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$24700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    return v2
.end method

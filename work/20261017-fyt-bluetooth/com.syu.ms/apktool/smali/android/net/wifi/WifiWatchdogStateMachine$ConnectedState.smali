.class Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectedState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

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
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x21006

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 3
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3100(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

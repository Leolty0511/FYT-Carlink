.class Landroid/net/wifi/WifiStateMachine$DisconnectingState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisconnectingState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x20048

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x24006

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$20800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 3
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$8200(Landroid/net/wifi/WifiStateMachine;)V

    .line 4
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$11600(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$20900(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_2

    .line 6
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$20700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    :cond_2
    :goto_0
    return v2
.end method

.class Landroid/net/wifi/WifiStateMachine$TetheringState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TetheringState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$23504(Landroid/net/wifi/WifiStateMachine;)I

    move-result v1

    const v2, 0x2001e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lu/m;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lu/m;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 2
    :sswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$23500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v0, "Failed to get tether update, shutdown soft access point"

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$23900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$22600(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$24000(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    .line 5
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v0, 0x20018

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$24100(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_0

    .line 6
    :sswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 7
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object p1, p1, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$23600(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$23700(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$23800(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    :cond_0
    return v1

    .line 9
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$24200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    :cond_1
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x2000c -> :sswitch_2
        0x2000d -> :sswitch_2
        0x2000e -> :sswitch_2
        0x20015 -> :sswitch_2
        0x20018 -> :sswitch_2
        0x2001d -> :sswitch_1
        0x2001e -> :sswitch_0
        0x20048 -> :sswitch_2
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_2
        0x20055 -> :sswitch_2
        0x2005a -> :sswitch_2
    .end sparse-switch
.end method

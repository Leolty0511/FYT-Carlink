.class Landroid/net/wifi/WifiStateMachine$SoftApStartedState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoftApStartedState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 2
    :sswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object p1, p1, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->available:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$23200(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$23300(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$23400(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    goto :goto_1

    .line 5
    :sswitch_1
    :try_start_0
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object p1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v0, "Exception in stopAccessPoint()"

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$22900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v0, 0xb

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;I)V

    .line 8
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$23000(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    goto :goto_1

    .line 9
    :sswitch_2
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v0, "Cannot start supplicant with a running soft AP"

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$23100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$3600(Landroid/net/wifi/WifiStateMachine;I)V

    :cond_0
    :goto_1
    :sswitch_3
    const/4 p1, 0x1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x20015 -> :sswitch_3
        0x20018 -> :sswitch_1
        0x2001d -> :sswitch_0
    .end sparse-switch
.end method

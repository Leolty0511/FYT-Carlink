.class Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SupplicantStoppingState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$8200(Landroid/net/wifi/WifiStateMachine;)V

    .line 2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->doQuit()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiMonitor;->stopSupplicant()V

    .line 5
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x20011

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$9004(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lu/m;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v1, v4, v5}, Lu/m;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 6
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, v3}, Landroid/net/wifi/WifiStateMachine;->access$3600(Landroid/net/wifi/WifiStateMachine;I)V

    .line 7
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$5900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v0

    const v1, 0x2006f

    invoke-virtual {v0, v1}, Lu/m;->sendMessage(I)V

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
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$8100(Landroid/net/wifi/WifiStateMachine;)V

    .line 3
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$9200(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    goto :goto_0

    .line 4
    :sswitch_1
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v0, "Supplicant connection received while stopping"

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$9100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :sswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$9000(Landroid/net/wifi/WifiStateMachine;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v0, "Timed out on a supplicant stop, kill and proceed"

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$9300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$8100(Landroid/net/wifi/WifiStateMachine;)V

    .line 8
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$9400(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    goto :goto_0

    .line 9
    :sswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$9500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_3
        0x2000c -> :sswitch_3
        0x2000d -> :sswitch_3
        0x2000e -> :sswitch_3
        0x20011 -> :sswitch_2
        0x20015 -> :sswitch_3
        0x20018 -> :sswitch_3
        0x20048 -> :sswitch_3
        0x20050 -> :sswitch_3
        0x20054 -> :sswitch_3
        0x20055 -> :sswitch_3
        0x2005a -> :sswitch_3
        0x24001 -> :sswitch_1
        0x24002 -> :sswitch_0
    .end sparse-switch
.end method

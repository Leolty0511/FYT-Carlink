.class Landroid/net/wifi/WifiStateMachine$DriverStartingState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DriverStartingState"
.end annotation


# instance fields
.field private mTries:I

.field public final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    .line 2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$9604(Landroid/net/wifi/WifiStateMachine;)I

    move-result v1

    const v2, 0x20013

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lu/m;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lu/m;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    return v2

    .line 2
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$9700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$9800(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    goto :goto_0

    .line 5
    :sswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$9600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 6
    iget p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 7
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start driver after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$9900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$10000(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$10100(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v0, "Driver start failed, retrying"

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$10200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$10300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 11
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiNative;->startDriver()Z

    .line 12
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$10300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 13
    iget p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    .line 14
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v0, 0x20013

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$9604(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {p1, v0, v3, v2}, Lu/m;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v0, v2, v3}, Lu/m;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 15
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$10400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    :cond_1
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_2
        0x2000e -> :sswitch_2
        0x20013 -> :sswitch_1
        0x20047 -> :sswitch_2
        0x20049 -> :sswitch_2
        0x2004a -> :sswitch_2
        0x2004b -> :sswitch_2
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_2
        0x20055 -> :sswitch_2
        0x2005a -> :sswitch_2
        0x24003 -> :sswitch_2
        0x24004 -> :sswitch_2
        0x24006 -> :sswitch_0
        0x24007 -> :sswitch_2
        0x2400a -> :sswitch_2
        0x2402b -> :sswitch_2
    .end sparse-switch
.end method

.class Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerifyingLinkState"
.end annotation


# instance fields
.field private mSampleCount:I

.field public final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    .line 2
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    .line 3
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2504(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const v3, 0x2100b

    invoke-virtual {v1, v3, v2, v0}, Lu/m;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lu/m;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    return v1

    .line 2
    :sswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/RssiPacketCountInfo;

    .line 3
    iget p1, p1, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 4
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_0

    .line 5
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$900(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    goto/16 :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 7
    iget p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$3000(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 8
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object p1

    invoke-static {p1, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$2802(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 9
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$900(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    goto :goto_0

    .line 10
    :cond_1
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    goto :goto_0

    .line 11
    :sswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 12
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;)Lu/b;

    move-result-object p1

    const v0, 0x25014

    invoke-virtual {p1, v0}, Lu/b;->k(I)V

    .line 13
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v0, 0x2100b

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2504(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    invoke-virtual {p1, v0, v3, v1}, Lu/m;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v0, v3, v4}, Lu/m;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 14
    :sswitch_2
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2600(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V

    goto :goto_0

    .line 15
    :sswitch_3
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 16
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 17
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$900(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    :cond_2
    :goto_0
    :sswitch_4
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_3
        0x21007 -> :sswitch_2
        0x2100b -> :sswitch_1
        0x25015 -> :sswitch_0
        0x25016 -> :sswitch_4
    .end sparse-switch
.end method

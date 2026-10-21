.class Landroid/net/DhcpStateMachine$RunningState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunningState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

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

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto/16 :goto_1

    .line 2
    :pswitch_0
    iget-object p1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {p1}, Landroid/net/DhcpStateMachine;->access$400(Landroid/net/DhcpStateMachine;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {p1}, Landroid/net/DhcpStateMachine;->access$500(Landroid/net/DhcpStateMachine;)Lu/m;

    move-result-object p1

    const v0, 0x30004

    invoke-virtual {p1, v0}, Lu/m;->sendMessage(I)V

    .line 4
    iget-object p1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {p1}, Landroid/net/DhcpStateMachine;->access$1800(Landroid/net/DhcpStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/DhcpStateMachine;->access$1900(Landroid/net/DhcpStateMachine;Lu/g;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    sget-object v0, Landroid/net/DhcpStateMachine$DhcpAction;->RENEW:Landroid/net/DhcpStateMachine$DhcpAction;

    invoke-static {p1, v0}, Landroid/net/DhcpStateMachine;->access$800(Landroid/net/DhcpStateMachine;Landroid/net/DhcpStateMachine$DhcpAction;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {p1}, Landroid/net/DhcpStateMachine;->access$1200(Landroid/net/DhcpStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/DhcpStateMachine;->access$2000(Landroid/net/DhcpStateMachine;Lu/g;)V

    .line 7
    :cond_1
    iget-object p1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {p1}, Landroid/net/DhcpStateMachine;->access$000(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 8
    :pswitch_1
    iget-object p1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {p1}, Landroid/net/DhcpStateMachine;->access$1600(Landroid/net/DhcpStateMachine;)Landroid/app/AlarmManager;

    move-result-object p1

    iget-object v0, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v0}, Landroid/net/DhcpStateMachine;->access$1500(Landroid/net/DhcpStateMachine;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 9
    iget-object p1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {p1}, Landroid/net/DhcpStateMachine;->access$300(Landroid/net/DhcpStateMachine;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to stop Dhcp on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v0}, Landroid/net/DhcpStateMachine;->access$300(Landroid/net/DhcpStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DhcpStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_2
    iget-object p1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {p1}, Landroid/net/DhcpStateMachine;->access$1200(Landroid/net/DhcpStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/DhcpStateMachine;->access$1700(Landroid/net/DhcpStateMachine;Lu/g;)V

    :goto_0
    :pswitch_2
    const/4 p1, 0x1

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x30001
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

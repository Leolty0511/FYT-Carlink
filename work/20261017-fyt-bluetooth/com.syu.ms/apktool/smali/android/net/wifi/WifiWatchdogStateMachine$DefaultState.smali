.class Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2100b

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 2
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in state "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)Lu/g;

    move-result-object p1

    invoke-interface {p1}, Lu/g;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    goto :goto_0

    .line 6
    :pswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    move-result p1

    invoke-static {v0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    :cond_0
    :goto_0
    :pswitch_4
    return v2

    :pswitch_data_0
    .packed-switch 0x21002
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25015
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

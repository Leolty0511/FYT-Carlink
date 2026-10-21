.class Landroid/net/DhcpStateMachine$StoppedState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoppedState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

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

    goto :goto_1

    .line 2
    :pswitch_0
    iget-object p1, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {p1}, Landroid/net/DhcpStateMachine;->access$400(Landroid/net/DhcpStateMachine;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {p1}, Landroid/net/DhcpStateMachine;->access$500(Landroid/net/DhcpStateMachine;)Lu/m;

    move-result-object p1

    const v0, 0x30004

    invoke-virtual {p1, v0}, Lu/m;->sendMessage(I)V

    .line 4
    iget-object p1, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {p1}, Landroid/net/DhcpStateMachine;->access$600(Landroid/net/DhcpStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/DhcpStateMachine;->access$700(Landroid/net/DhcpStateMachine;Lu/g;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    sget-object v0, Landroid/net/DhcpStateMachine$DhcpAction;->START:Landroid/net/DhcpStateMachine$DhcpAction;

    invoke-static {p1, v0}, Landroid/net/DhcpStateMachine;->access$800(Landroid/net/DhcpStateMachine;Landroid/net/DhcpStateMachine$DhcpAction;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {p1}, Landroid/net/DhcpStateMachine;->access$900(Landroid/net/DhcpStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/DhcpStateMachine;->access$1000(Landroid/net/DhcpStateMachine;Lu/g;)V

    :cond_1
    :goto_0
    :pswitch_1
    const/4 p1, 0x1

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x30001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

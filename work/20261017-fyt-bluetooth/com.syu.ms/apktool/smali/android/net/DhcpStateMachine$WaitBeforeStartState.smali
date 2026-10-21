.class Landroid/net/DhcpStateMachine$WaitBeforeStartState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WaitBeforeStartState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

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

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    .line 2
    :sswitch_0
    iget-object p1, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    sget-object v0, Landroid/net/DhcpStateMachine$DhcpAction;->START:Landroid/net/DhcpStateMachine$DhcpAction;

    invoke-static {p1, v0}, Landroid/net/DhcpStateMachine;->access$800(Landroid/net/DhcpStateMachine;Landroid/net/DhcpStateMachine$DhcpAction;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {p1}, Landroid/net/DhcpStateMachine;->access$900(Landroid/net/DhcpStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/DhcpStateMachine;->access$1100(Landroid/net/DhcpStateMachine;Lu/g;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {p1}, Landroid/net/DhcpStateMachine;->access$1200(Landroid/net/DhcpStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/DhcpStateMachine;->access$1300(Landroid/net/DhcpStateMachine;Lu/g;)V

    goto :goto_0

    .line 5
    :sswitch_1
    iget-object p1, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {p1}, Landroid/net/DhcpStateMachine;->access$1200(Landroid/net/DhcpStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/DhcpStateMachine;->access$1400(Landroid/net/DhcpStateMachine;Lu/g;)V

    :goto_0
    :sswitch_2
    const/4 p1, 0x1

    :goto_1
    return p1

    :sswitch_data_0
    .sparse-switch
        0x30001 -> :sswitch_2
        0x30002 -> :sswitch_1
        0x30007 -> :sswitch_0
    .end sparse-switch
.end method

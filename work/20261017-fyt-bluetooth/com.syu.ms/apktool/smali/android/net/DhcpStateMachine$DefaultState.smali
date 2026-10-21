.class Landroid/net/DhcpStateMachine$DefaultState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v0}, Landroid/net/DhcpStateMachine;->access$200(Landroid/net/DhcpStateMachine;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v1}, Landroid/net/DhcpStateMachine;->access$100(Landroid/net/DhcpStateMachine;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "DhcpStateMachine"

    const v2, 0x30003

    if-eq v0, v2, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! unhandled message  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error! Failed to handle a DHCP renewal on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v0}, Landroid/net/DhcpStateMachine;->access$300(Landroid/net/DhcpStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {p1}, Landroid/net/DhcpStateMachine;->access$000(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

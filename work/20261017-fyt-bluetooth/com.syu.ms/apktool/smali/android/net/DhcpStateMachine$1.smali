.class Landroid/net/DhcpStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/DhcpStateMachine;-><init>(Landroid/content/Context;Lu/m;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/DhcpStateMachine$1;->this$0:Landroid/net/DhcpStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/net/DhcpStateMachine$1;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {p1}, Landroid/net/DhcpStateMachine;->access$000(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const-wide/32 v0, 0x9c40

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2
    iget-object p1, p0, Landroid/net/DhcpStateMachine$1;->this$0:Landroid/net/DhcpStateMachine;

    const p2, 0x30003

    invoke-virtual {p1, p2}, Lu/m;->sendMessage(I)V

    return-void
.end method

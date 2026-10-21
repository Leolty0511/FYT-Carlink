.class Landroid/net/CaptivePortalTracker$ActiveNetworkState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortalTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActiveNetworkState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/CaptivePortalTracker;


# direct methods
.method private constructor <init>(Landroid/net/CaptivePortalTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker$ActiveNetworkState;-><init>(Landroid/net/CaptivePortalTracker;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    iget-object v3, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v3}, Landroid/net/CaptivePortalTracker;->access$1000(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 4
    iget-object p1, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected from active network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/CaptivePortalTracker;->access$1600(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {p1}, Landroid/net/CaptivePortalTracker;->access$1700(Landroid/net/CaptivePortalTracker;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/CaptivePortalTracker;->access$1800(Landroid/net/CaptivePortalTracker;Lu/g;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    iget-object v3, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v3}, Landroid/net/CaptivePortalTracker;->access$1000(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v2, v0}, Landroid/net/CaptivePortalTracker;->access$1200(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active network switched "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/CaptivePortalTracker;->access$1900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v0, p1}, Landroid/net/CaptivePortalTracker;->access$2000(Landroid/net/CaptivePortalTracker;Landroid/os/Message;)V

    .line 9
    iget-object p1, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {p1}, Landroid/net/CaptivePortalTracker;->access$1700(Landroid/net/CaptivePortalTracker;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/CaptivePortalTracker;->access$2100(Landroid/net/CaptivePortalTracker;Lu/g;)V

    :cond_2
    :goto_0
    return v1
.end method

.class Landroid/net/CaptivePortalTracker$NoActiveNetworkState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortalTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoActiveNetworkState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/CaptivePortalTracker;


# direct methods
.method private constructor <init>(Landroid/net/CaptivePortalTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;-><init>(Landroid/net/CaptivePortalTracker;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v0}, Landroid/net/CaptivePortalTracker;->access$900(Landroid/net/CaptivePortalTracker;)V

    .line 2
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/CaptivePortalTracker;->access$1002(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lu/l;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/CaptivePortalTracker;->access$1100(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkInfo;

    .line 4
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v0, p1}, Landroid/net/CaptivePortalTracker;->access$1200(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v0, p1}, Landroid/net/CaptivePortalTracker;->access$1002(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 7
    iget-object p1, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {p1}, Landroid/net/CaptivePortalTracker;->access$1300(Landroid/net/CaptivePortalTracker;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/CaptivePortalTracker;->access$1400(Landroid/net/CaptivePortalTracker;Lu/g;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lu/l;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not a wifi connectivity change, ignore"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/CaptivePortalTracker;->access$1500(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1
.end method

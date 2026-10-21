.class Landroid/net/CaptivePortalTracker$DefaultState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortalTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/CaptivePortalTracker;


# direct methods
.method private constructor <init>(Landroid/net/CaptivePortalTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker$DefaultState;-><init>(Landroid/net/CaptivePortalTracker;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

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

    invoke-static {v0, v1}, Landroid/net/CaptivePortalTracker;->access$600(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/net/CaptivePortalTracker;->access$800(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkInfo;

    .line 5
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v0, p1}, Landroid/net/CaptivePortalTracker;->access$700(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)V

    :cond_1
    :goto_0
    return v1
.end method

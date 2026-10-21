.class Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisconnectedState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/wifi/SupplicantStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/SupplicantStateTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v0}, Landroid/net/wifi/SupplicantStateTracker;->access$800(Landroid/net/wifi/SupplicantStateTracker;)Landroid/os/Message;

    move-result-object v0

    .line 2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/StateChangeResult;

    .line 3
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v1}, Landroid/net/wifi/SupplicantStateTracker;->access$000(Landroid/net/wifi/SupplicantStateTracker;)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "SupplicantStateTracker"

    const/4 v4, 0x2

    if-lt v1, v4, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to authenticate, disabling network "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget v0, v0, Landroid/net/wifi/StateChangeResult;->networkId:I

    const/4 v3, 0x3

    invoke-static {v1, v0, v3}, Landroid/net/wifi/SupplicantStateTracker;->access$900(Landroid/net/wifi/SupplicantStateTracker;II)V

    .line 6
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v0, v2}, Landroid/net/wifi/SupplicantStateTracker;->access$002(Landroid/net/wifi/SupplicantStateTracker;I)I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v1}, Landroid/net/wifi/SupplicantStateTracker;->access$700(Landroid/net/wifi/SupplicantStateTracker;)I

    move-result v1

    const/16 v4, 0x10

    if-lt v1, v4, :cond_1

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Association getting rejected, disabling network "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget v0, v0, Landroid/net/wifi/StateChangeResult;->networkId:I

    const/4 v3, 0x4

    invoke-static {v1, v0, v3}, Landroid/net/wifi/SupplicantStateTracker;->access$900(Landroid/net/wifi/SupplicantStateTracker;II)V

    .line 10
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v0, v2}, Landroid/net/wifi/SupplicantStateTracker;->access$702(Landroid/net/wifi/SupplicantStateTracker;I)I

    :cond_1
    :goto_0
    return-void
.end method

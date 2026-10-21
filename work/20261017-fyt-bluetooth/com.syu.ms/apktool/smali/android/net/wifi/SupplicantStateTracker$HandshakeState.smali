.class Landroid/net/wifi/SupplicantStateTracker$HandshakeState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandshakeState"
.end annotation


# static fields
.field private static final MAX_SUPPLICANT_LOOP_ITERATIONS:I = 0x4


# instance fields
.field private mLoopDetectCount:I

.field private mLoopDetectIndex:I

.field public final synthetic this$0:Landroid/net/wifi/SupplicantStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/SupplicantStateTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    .line 2
    iput v0, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const v2, 0x24006

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/StateChangeResult;

    .line 3
    iget-object v0, p1, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 4
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    iget v1, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-le v1, v2, :cond_1

    .line 6
    iget v1, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    .line 7
    :cond_1
    iget v1, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplicant loop detected, disabling network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SupplicantStateTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget p1, p1, Landroid/net/wifi/StateChangeResult;->networkId:I

    const/4 v2, 0x3

    invoke-static {v1, p1, v2}, Landroid/net/wifi/SupplicantStateTracker;->access$900(Landroid/net/wifi/SupplicantStateTracker;II)V

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    .line 11
    iget-object p1, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {p1}, Landroid/net/wifi/SupplicantStateTracker;->access$100(Landroid/net/wifi/SupplicantStateTracker;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->access$200(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    return v3

    :cond_3
    return v1
.end method

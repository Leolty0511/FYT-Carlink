.class public final Lf/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;


# instance fields
.field public final synthetic a:Lcom/syu/carlink/auto/AutoFragment;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/auto/AutoFragment;)V
    .locals 0

    iput-object p1, p0, Lf/c0;->a:Lcom/syu/carlink/auto/AutoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onByeByeRequest(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "received ByeByeRequest with reason "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lf/c0;->a:Lcom/syu/carlink/auto/AutoFragment;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/google/android/projection/protocol/GalReceiver;->sendByeByeResponse()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p1, p1, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    sget-object v0, Lcom/google/android/projection/protocol/Transport$StopReason;->MD_BYEBYE:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/google/android/projection/sink/GalIntegration;->stop(Lcom/google/android/projection/protocol/Transport$StopReason;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    sget-object p1, Lf/k;->y:Lf/k;

    .line 43
    .line 44
    const-wide/16 v0, 0x0

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Lf/k;->e(J)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final onByeByeResponse()V
    .locals 2

    .line 1
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 2
    .line 3
    const-string v1, "received ByeByeResponse"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lf/c0;->a:Lcom/syu/carlink/auto/AutoFragment;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v1, Lcom/google/android/projection/protocol/Transport$StopReason;->HU_BYEBYE:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/GalIntegration;->stop(Lcom/google/android/projection/protocol/Transport$StopReason;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

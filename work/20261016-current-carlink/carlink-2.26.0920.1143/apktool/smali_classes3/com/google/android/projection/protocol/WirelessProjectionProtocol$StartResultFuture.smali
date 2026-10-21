.class final Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation build Lcom/google/android/projection/common/UsedByNative;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/WirelessProjectionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StartResultFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;",
        ">;"
    }
.end annotation


# instance fields
.field volatile nativeFutureInstance:J
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field volatile startResult:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/projection/protocol/WirelessProjectionProtocol;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/WirelessProjectionProtocol;J)V
    .locals 0
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;->this$0:Lcom/google/android/projection/protocol/WirelessProjectionProtocol;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_UNKNOWN:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;->startResult:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 9
    .line 10
    iput-wide p2, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;->nativeFutureInstance:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "StartResultFuture cannot be cancelled"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get()Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;
    .locals 4

    .line 3
    iget-wide v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;->nativeFutureInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;->startResult:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;->this$0:Lcom/google/android/projection/protocol/WirelessProjectionProtocol;

    invoke-static {v0, p0}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->access$000(Lcom/google/android/projection/protocol/WirelessProjectionProtocol;Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;)Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;->startResult:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 6
    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;->startResult:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;
    .locals 4

    .line 7
    iget-wide v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;->nativeFutureInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 8
    iget-object p1, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;->startResult:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;->this$0:Lcom/google/android/projection/protocol/WirelessProjectionProtocol;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->access$100(Lcom/google/android/projection/protocol/WirelessProjectionProtocol;Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;JLjava/util/concurrent/TimeUnit;)Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;->startResult:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 10
    iget-object p1, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;->startResult:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    return-object p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;->get()Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;->get(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;->nativeFutureInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

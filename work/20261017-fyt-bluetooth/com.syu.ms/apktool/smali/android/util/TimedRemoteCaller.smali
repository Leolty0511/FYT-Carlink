.class public abstract Landroid/util/TimedRemoteCaller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CALL_TIMEOUT_MILLIS:J = 0x1388L

.field private static final UNDEFINED_SEQUENCE:I = -0x1


# instance fields
.field private mAwaitedSequence:I

.field private final mCallTimeoutMillis:J

.field private final mLock:Ljava/lang/Object;

.field private mReceivedSequence:I

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mSequenceCounter:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/util/TimedRemoteCaller;->mReceivedSequence:I

    .line 4
    iput v0, p0, Landroid/util/TimedRemoteCaller;->mAwaitedSequence:I

    .line 5
    iput-wide p1, p0, Landroid/util/TimedRemoteCaller;->mCallTimeoutMillis:J

    return-void
.end method

.method private waitForResultTimedLocked(I)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    :catch_0
    :goto_0
    :try_start_0
    iget v2, p0, Landroid/util/TimedRemoteCaller;->mReceivedSequence:I

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 4
    iget-wide v4, p0, Landroid/util/TimedRemoteCaller;->mCallTimeoutMillis:J

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gtz v2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1
    iget-object v2, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public final getResultTimed(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Landroid/util/TimedRemoteCaller;->waitForResultTimedLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/util/TimedRemoteCaller;->mResult:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Landroid/util/TimedRemoteCaller;->mResult:Ljava/lang/Object;

    .line 5
    monitor-exit v0

    return-object p1

    .line 6
    :cond_0
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No reponse for sequence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onBeforeRemoteCall()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/util/TimedRemoteCaller;->mSequenceCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/TimedRemoteCaller;->mSequenceCounter:I

    iput v1, p0, Landroid/util/TimedRemoteCaller;->mAwaitedSequence:I

    .line 3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onRemoteMethodResult(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/util/TimedRemoteCaller;->mAwaitedSequence:I

    if-ne p2, v1, :cond_0

    .line 3
    iput p2, p0, Landroid/util/TimedRemoteCaller;->mReceivedSequence:I

    .line 4
    iput-object p1, p0, Landroid/util/TimedRemoteCaller;->mResult:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.class Lcom/google/android/projection/protocol/InputOutputThreads;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;,
        Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;,
        Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;,
        Lcom/google/android/projection/protocol/InputOutputThreads$WriterThread;
    }
.end annotation


# static fields
.field private static final DBG_TRACE:Z = true

.field private static final INPUT_OUTPUT_THREAD_PRIORITY:I = -0x13

.field private static final MAX_FRAME_SIZE:I = 0x10008

.field private static final TAG:Ljava/lang/String; = "AHU.GAL_RECEIVER"

.field private static final THREAD_INTERRUPT_AWAIT_TIMEOUT_MS:I = 0xfa

.field private static final THREAD_TEAR_DOWN_TIMEOUT_MS:I = 0x9c4

.field private static final VERBOSE_LOGGING_ENABLED:Z = false


# instance fields
.field private final mFlushingMessages:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFrameParser:Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mReaderThread:Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;

.field private final mStopProgress:Ljava/util/concurrent/CountDownLatch;

.field private final mStopRequested:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/projection/protocol/Transport$StopReason;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadsTerminatedCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mWriterThread:Lcom/google/android/projection/protocol/InputOutputThreads$WriterThread;

.field private final stopRequestAndFlushLock:Ljava/lang/Object;

.field private stopTimeout:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mStopRequested:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mFlushingMessages:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mThreadsTerminatedCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mStopProgress:Ljava/util/concurrent/CountDownLatch;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/Object;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->stopRequestAndFlushLock:Ljava/lang/Object;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mHandler:Landroid/os/Handler;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mFrameParser:Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;

    .line 44
    .line 45
    return-void
.end method

.method public static synthetic a(Lcom/google/android/projection/protocol/InputOutputThreads;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/InputOutputThreads;->lambda$getStopTimeout$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/protocol/InputOutputThreads;)Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mReaderThread:Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/projection/protocol/InputOutputThreads;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mFlushingMessages:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/projection/protocol/InputOutputThreads;Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/InputOutputThreads;->threadStopped(Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/android/projection/protocol/InputOutputThreads;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/InputOutputThreads;->isStopRequestedAndNoMessageFlushRequested()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/google/android/projection/protocol/InputOutputThreads;)Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mFrameParser:Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;

    return-object p0
.end method

.method private getStopTimeout()Ljava/lang/Runnable;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->stopTimeout:Ljava/lang/Runnable;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/google/android/projection/protocol/b;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/google/android/projection/protocol/b;-><init>(Lcom/google/android/projection/protocol/InputOutputThreads;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->stopTimeout:Ljava/lang/Runnable;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->stopTimeout:Ljava/lang/Runnable;

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0
.end method

.method private hexdumpBuffer([BI)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, p2, :cond_1

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    .line 13
    aget-byte v4, p1, v2

    .line 14
    .line 15
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    aput-object v4, v3, v1

    .line 20
    .line 21
    const-string v4, " %02x"

    .line 22
    .line 23
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v3, 0x20

    .line 31
    .line 32
    if-ne v2, v3, :cond_0

    .line 33
    .line 34
    const-string p1, "..."

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method private isStopRequestedAndNoMessageFlushRequested()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->stopRequestAndFlushLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mStopRequested:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mFlushingMessages:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    monitor-exit v0

    .line 24
    return v1

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method

.method private synthetic lambda$getStopTimeout$0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mStopProgress:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "Threads did not stop in 2500 ms"

    .line 16
    .line 17
    const-string v3, "AHU.GAL_RECEIVER"

    .line 18
    .line 19
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mFlushingMessages:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mReaderThread:Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mWriterThread:Lcom/google/android/projection/protocol/InputOutputThreads$WriterThread;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 35
    .line 36
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mStopProgress:Ljava/util/concurrent/CountDownLatch;

    .line 38
    .line 39
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 40
    .line 41
    const-wide/16 v5, 0xfa

    .line 42
    .line 43
    invoke-virtual {v0, v5, v6, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 44
    .line 45
    .line 46
    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    xor-int/2addr v0, v2

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move v0, v2

    .line 50
    :goto_0
    if-eqz v0, :cond_0

    .line 51
    .line 52
    const-string v0, "Threads unresponsive to interrupt; notifying of termination anyway"

    .line 53
    .line 54
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mThreadsTerminatedCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mFrameParser:Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mStopRequested:Ljava/util/concurrent/atomic/AtomicReference;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 74
    .line 75
    invoke-interface {v0, v1}, Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;->onThreadsTerminated(Lcom/google/android/projection/protocol/Transport$StopReason;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method private tearDownIfAllThreadsStopped()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mStopProgress:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/projection/protocol/InputOutputThreads;->getStopTimeout()Ljava/lang/Runnable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private threadStopped(Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " is stopping"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "AHU.GAL_RECEIVER"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/google/android/projection/protocol/Transport$StopReason;->CONNECTION_TERMINATED:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/google/android/projection/protocol/InputOutputThreads;->stop(Lcom/google/android/projection/protocol/Transport$StopReason;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, " exiting without stop requested; stop triggered"

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object p1, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mStopProgress:Ljava/util/concurrent/CountDownLatch;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/google/android/projection/protocol/InputOutputThreads;->tearDownIfAllThreadsStopped()V

    .line 65
    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public start(Lcom/google/android/projection/protocol/Transport;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;-><init>(Lcom/google/android/projection/protocol/InputOutputThreads;Lcom/google/android/projection/protocol/Transport;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mReaderThread:Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/protocol/InputOutputThreads$WriterThread;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/google/android/projection/protocol/InputOutputThreads$WriterThread;-><init>(Lcom/google/android/projection/protocol/InputOutputThreads;Lcom/google/android/projection/protocol/Transport;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mWriterThread:Lcom/google/android/projection/protocol/InputOutputThreads$WriterThread;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mReaderThread:Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mWriterThread:Lcom/google/android/projection/protocol/InputOutputThreads$WriterThread;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public stop(Lcom/google/android/projection/protocol/Transport$StopReason;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mReaderThread:Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mWriterThread:Lcom/google/android/projection/protocol/InputOutputThreads$WriterThread;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->stopRequestAndFlushLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mStopRequested:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    :cond_1
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x1

    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    move v2, v5

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    move v2, v1

    .line 33
    :goto_0
    if-nez v2, :cond_3

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return v1

    .line 37
    :cond_3
    sget-object v1, Lcom/google/android/projection/protocol/Transport$StopReason;->MD_BYEBYE:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mFlushingMessages:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 48
    .line 49
    .line 50
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mHandler:Landroid/os/Handler;

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/google/android/projection/protocol/InputOutputThreads;->getStopTimeout()Ljava/lang/Runnable;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-wide/16 v6, 0x9c4

    .line 58
    .line 59
    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mFrameParser:Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;

    .line 69
    .line 70
    new-instance v1, Lcom/google/android/projection/protocol/InputOutputThreads$1;

    .line 71
    .line 72
    invoke-direct {v1, p0, p1}, Lcom/google/android/projection/protocol/InputOutputThreads$1;-><init>(Lcom/google/android/projection/protocol/InputOutputThreads;Lcom/google/android/projection/protocol/Transport$StopReason;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v1}, Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;->onTerminating(Ljava/lang/Runnable;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mReaderThread:Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;->mTransport:Lcom/google/android/projection/protocol/Transport;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/Transport;->stopTransport(Lcom/google/android/projection/protocol/Transport$StopReason;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/google/android/projection/protocol/InputOutputThreads;->mFrameParser:Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;

    .line 87
    .line 88
    invoke-interface {p1, v3}, Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;->onTerminating(Ljava/lang/Runnable;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    return v5

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    throw p1

    .line 95
    :cond_6
    :goto_2
    const-string p1, "AHU.GAL_RECEIVER"

    .line 96
    .line 97
    const-string v0, "Asked to stop before started"

    .line 98
    .line 99
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    return v1
.end method

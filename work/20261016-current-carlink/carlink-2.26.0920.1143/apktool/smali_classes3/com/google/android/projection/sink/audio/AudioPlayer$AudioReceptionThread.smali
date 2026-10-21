.class Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioReceptionThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;
    }
.end annotation


# static fields
.field private static final BUFFER_ADD_TIMEOUT_MS:J = 0x7d0L

.field private static final INIT_WAIT_TIME_MS:J = 0x1388L


# instance fields
.field private mHandler:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;

.field private final mInitSemaphore:Ljava/util/concurrent/Semaphore;

.field private mLooper:Landroid/os/Looper;

.field private mPacketsReceivedSinceStart:I

.field private volatile mReleased:Z

.field private final mThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;


# direct methods
.method private constructor <init>(Lcom/google/android/projection/sink/audio/AudioPlayer;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mInitSemaphore:Ljava/util/concurrent/Semaphore;

    .line 3
    iput v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mPacketsReceivedSinceStart:I

    .line 4
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mReleased:Z

    .line 5
    new-instance p1, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$1;

    invoke-direct {p1, p0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$1;-><init>(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;)V

    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mThread:Ljava/lang/Thread;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/sink/audio/AudioPlayer;Lcom/google/android/projection/sink/audio/AudioPlayer$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;-><init>(Lcom/google/android/projection/sink/audio/AudioPlayer;)V

    return-void
.end method

.method public static synthetic access$1102(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mLooper:Landroid/os/Looper;

    return-object p1
.end method

.method public static synthetic access$1202(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;)Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mHandler:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;

    return-object p1
.end method

.method public static synthetic access$1400(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mInitSemaphore:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;ILcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->doReceive(ILcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;)I
    .locals 0

    iget p0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mPacketsReceivedSinceStart:I

    return p0
.end method

.method public static synthetic access$2102(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mPacketsReceivedSinceStart:I

    return p1
.end method

.method private doReceive(ILcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;)V
    .locals 4

    .line 1
    const-string v0, "Dropping audio data "

    .line 2
    .line 3
    iget-object v1, p2, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;->payload:[B

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$1900(Lcom/google/android/projection/sink/audio/AudioPlayer;I)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 14
    .line 15
    .line 16
    iget p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mPacketsReceivedSinceStart:I

    .line 17
    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    iput p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mPacketsReceivedSinceStart:I

    .line 21
    .line 22
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$300(Lcom/google/android/projection/sink/audio/AudioPlayer;)Ljava/util/concurrent/ArrayBlockingQueue;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    const-wide/16 v2, 0x7d0

    .line 31
    .line 32
    invoke-virtual {p1, p2, v2, v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    const-string p1, "AHU.AUDIO"

    .line 39
    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$200(Lcom/google/android/projection/sink/audio/AudioPlayer;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mThread:Ljava/lang/Thread;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mInitSemaphore:Ljava/util/concurrent/Semaphore;

    .line 7
    .line 8
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    const-wide/16 v2, 0x1388

    .line 11
    .line 12
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw v1
.end method

.method public receiveAudio(ILcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mReleased:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$800(Lcom/google/android/projection/sink/audio/AudioPlayer;)Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$800(Lcom/google/android/projection/sink/audio/AudioPlayer;)Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-wide v1, p2, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;->presentationTimeUs:J

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->onReceived(J)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mHandler:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public release()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mReleased:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mLooper:Landroid/os/Looper;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$1500(Lcom/google/android/projection/sink/audio/AudioPlayer;Z)V

    .line 13
    .line 14
    .line 15
    const-string v0, "--------------------------------->> 0"

    .line 16
    .line 17
    const-string v1, "AHU.AUDIO"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "release stream stopped, received:"

    .line 25
    .line 26
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget v2, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mPacketsReceivedSinceStart:I

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, " type:"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$200(Lcom/google/android/projection/sink/audio/AudioPlayer;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$1600(Lcom/google/android/projection/sink/audio/AudioPlayer;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iget v2, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mPacketsReceivedSinceStart:I

    .line 66
    .line 67
    if-eq v0, v2, :cond_0

    .line 68
    .line 69
    const-string v2, "release Total received "

    .line 70
    .line 71
    const-string v3, " while played only "

    .line 72
    .line 73
    invoke-static {v2, v0, v3}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget v2, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mPacketsReceivedSinceStart:I

    .line 78
    .line 79
    invoke-static {v0, v2, v1}, Landroid/accessibilityservice/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$1700(Lcom/google/android/projection/sink/audio/AudioPlayer;)Landroid/util/Pair;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    .line 90
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 103
    .line 104
    invoke-static {v2, v1, v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$1800(Lcom/google/android/projection/sink/audio/AudioPlayer;ILjava/util/concurrent/atomic/AtomicInteger;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    const-string v0, "no first session"

    .line 109
    .line 110
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :goto_0
    return-void
.end method

.method public startAudio()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mReleased:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mHandler:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public stopAudio()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "--------------------------------->>   stopAudio() "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$200(Lcom/google/android/projection/sink/audio/AudioPlayer;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "  mReleased: "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mReleased:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "AHU.AUDIO"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mReleased:Z

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->mHandler:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

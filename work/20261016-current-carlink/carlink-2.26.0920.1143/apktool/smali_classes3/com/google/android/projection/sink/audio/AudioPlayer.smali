.class public Lcom/google/android/projection/sink/audio/AudioPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/AudioSink$AudioListener;
.implements Lcom/google/android/projection/sink/audio/AudioFocusManager$FocusChangeListener;
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/audio/AudioPlayer$Callback;,
        Lcom/google/android/projection/sink/audio/AudioPlayer$PcmPlayThread;,
        Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;,
        Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;,
        Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;,
        Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;,
        Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_TRACE:Z = true

.field private static final DECODED_BUFFER_SIZE:I = 0x2000

.field private static final DEQUEUE_INPUT_BUFFER_TIMEOUT_US:J = 0x493e0L

.field private static final DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US:J = 0x493e0L

.field private static final MAX_STOP_WAIT_MS:J = 0x1388L

.field private static final NUM_AUDIO_BUFFERS_TO_START_PLAY_48KHZ:I = 0x3

.field private static final NUM_AUDIO_BUFFERS_TO_START_PLAY_DEFAULT:I = 0x2

.field private static final POLLING_INTERVAL_MS:J = 0xc8L

.field private static final SAMPLING_RATE_48KHZ:I = 0xbb80

.field private static final TAG:Ljava/lang/String; = "AHU.AUDIO"


# instance fields
.field private mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

.field private final mAudioFormat:I

.field private mAudioPlayThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;

.field private mAudioSink:Lcom/google/android/projection/protocol/AudioSink;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field mCallback:Lcom/google/android/projection/sink/audio/AudioPlayer$Callback;

.field private final mChannelConfig:I

.field private mCodecConfig:[B

.field private final mFramesReceived:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mFramesToAckForSession:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsEncoded:Z

.field private final mLatencyChecker:Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mNumAudioByffersToStartPlay:I

.field private final mQ:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mReceptionThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

.field private final mSamplingRate:I

.field private final mStreamType:I


# direct methods
.method public constructor <init>(IIIILcom/google/android/projection/sink/audio/AudioLatencyChecker;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 5
    .line 6
    const/16 v1, 0x20

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mQ:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 12
    .line 13
    new-instance v0, Ljava/util/LinkedList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mFramesToAckForSession:Ljava/util/LinkedList;

    .line 19
    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mFramesReceived:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mCallback:Lcom/google/android/projection/sink/audio/AudioPlayer$Callback;

    .line 30
    .line 31
    iput p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mStreamType:I

    .line 32
    .line 33
    iput p2, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mSamplingRate:I

    .line 34
    .line 35
    iput p3, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mChannelConfig:I

    .line 36
    .line 37
    iput p4, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioFormat:I

    .line 38
    .line 39
    iput-object p5, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mLatencyChecker:Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    .line 40
    .line 41
    new-instance p1, Landroid/os/Handler;

    .line 42
    .line 43
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mMainThreadHandler:Landroid/os/Handler;

    .line 51
    .line 52
    return-void
.end method

.method public static synthetic access$1000(Lcom/google/android/projection/sink/audio/AudioPlayer;)I
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->getFrameSizeInBytes()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1500(Lcom/google/android/projection/sink/audio/AudioPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->safeStop(Z)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/google/android/projection/sink/audio/AudioPlayer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mFramesReceived:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/google/android/projection/sink/audio/AudioPlayer;)Landroid/util/Pair;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->removeFirstSession()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/google/android/projection/sink/audio/AudioPlayer;ILjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/sink/audio/AudioPlayer;->ackAllFrames(ILjava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/google/android/projection/sink/audio/AudioPlayer;I)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->getFramesToAck(I)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/projection/sink/audio/AudioPlayer;)I
    .locals 0

    iget p0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mStreamType:I

    return p0
.end method

.method public static synthetic access$2200(Lcom/google/android/projection/sink/audio/AudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->safePlay()V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/android/projection/sink/audio/AudioPlayer;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mQ:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/google/android/projection/sink/audio/AudioPlayer;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/google/android/projection/sink/audio/AudioPlayer;)I
    .locals 0

    iget p0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mNumAudioByffersToStartPlay:I

    return p0
.end method

.method public static synthetic access$600(Lcom/google/android/projection/sink/audio/AudioPlayer;)I
    .locals 0

    iget p0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mSamplingRate:I

    return p0
.end method

.method public static synthetic access$700(Lcom/google/android/projection/sink/audio/AudioPlayer;)I
    .locals 0

    iget p0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mChannelConfig:I

    return p0
.end method

.method public static synthetic access$800(Lcom/google/android/projection/sink/audio/AudioPlayer;)Lcom/google/android/projection/sink/audio/AudioLatencyChecker;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mLatencyChecker:Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/google/android/projection/sink/audio/AudioPlayer;)[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mCodecConfig:[B

    return-object p0
.end method

.method private ackAFrame()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->getSessionPairForFirstSession()Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lez v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioSink:Lcom/google/android/projection/protocol/AudioSink;

    .line 19
    .line 20
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v1, v0, v2}, Lcom/google/android/projection/protocol/AudioSink;->ackFrames(II)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v0, "AHU.AUDIO"

    .line 34
    .line 35
    const-string v1, "try to ack frame while ack <= 0"

    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method private ackAllFrames(ILjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-lez v0, :cond_1

    .line 18
    .line 19
    iget-object p2, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioSink:Lcom/google/android/projection/protocol/AudioSink;

    .line 20
    .line 21
    invoke-virtual {p2, p1, v0}, Lcom/google/android/projection/protocol/AudioSink;->ackFrames(II)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method private createAudioTrack()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->getFrameSizeInSamples()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mSamplingRate:I

    .line 6
    .line 7
    iget v2, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mChannelConfig:I

    .line 8
    .line 9
    iget v3, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioFormat:I

    .line 10
    .line 11
    invoke-static {v1, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x2

    .line 16
    mul-int/2addr v0, v2

    .line 17
    iget v3, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mChannelConfig:I

    .line 18
    .line 19
    const/16 v4, 0xc

    .line 20
    .line 21
    if-ne v3, v4, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x1

    .line 25
    :goto_0
    mul-int/2addr v0, v2

    .line 26
    iget v2, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mNumAudioByffersToStartPlay:I

    .line 27
    .line 28
    mul-int/2addr v0, v2

    .line 29
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    new-instance v1, Landroid/media/AudioTrack;

    .line 34
    .line 35
    iget v3, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mStreamType:I

    .line 36
    .line 37
    iget v4, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mSamplingRate:I

    .line 38
    .line 39
    iget v5, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mChannelConfig:I

    .line 40
    .line 41
    iget v6, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioFormat:I

    .line 42
    .line 43
    const/4 v8, 0x1

    .line 44
    move-object v2, v1

    .line 45
    move v7, v0

    .line 46
    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "AudioTrack minbuffer "

    .line 54
    .line 55
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "AHU.AUDIO"

    .line 66
    .line 67
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mMainThreadHandler:Landroid/os/Handler;

    .line 73
    .line 74
    invoke-virtual {v0, p0, v1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 78
    .line 79
    invoke-direct {p0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->getFrameSizeInSamples()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPositionNotificationPeriod(I)I

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private getFrameSizeInBytes()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mStreamType:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    :goto_0
    invoke-direct {p0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->getFrameSizeInSamples()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    mul-int/2addr v0, v1

    .line 14
    return v0
.end method

.method private getFrameSizeInSamples()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mIsEncoded:Z

    .line 2
    .line 3
    const/16 v1, 0x400

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mStreamType:I

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x800

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    return v1
.end method

.method private getFramesToAck(I)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mFramesToAckForSession:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mFramesToAckForSession:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/util/Pair;

    .line 21
    .line 22
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v3, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ne v3, p1, :cond_0

    .line 31
    .line 32
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    :goto_0
    if-nez v1, :cond_2

    .line 39
    .line 40
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mFramesToAckForSession:Ljava/util/LinkedList;

    .line 47
    .line 48
    new-instance v3, Landroid/util/Pair;

    .line 49
    .line 50
    new-instance v4, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    monitor-exit v0

    .line 62
    return-object v1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p1
.end method

.method private getSessionPairForFirstSession()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mFramesToAckForSession:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mFramesToAckForSession:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/util/Pair;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method private removeFirstSession()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mFramesToAckForSession:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mFramesToAckForSession:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/util/Pair;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method private declared-synchronized safePlay()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioPlayThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->isPlaying()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioPlayThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->startPlaying()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    :cond_0
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0

    .line 21
    throw v0
.end method

.method private declared-synchronized safeStop(Z)V
    .locals 3

    .line 1
    const-string v0, "stop for stream "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioPlayThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->isPlaying()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "AHU.AUDIO"

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mStreamType:I

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioPlayThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->stopPlaying()V

    .line 36
    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mQ:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :cond_0
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    monitor-exit p0

    .line 49
    throw p1
.end method


# virtual methods
.method public declared-synchronized onAudioData(IJ[B)V
    .locals 3

    .line 1
    const-string v0, "onAudioData, payload:"

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "AHU.AUDIO"

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v1, "AHU.AUDIO"

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    array-length v0, p4

    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 32
    .line 33
    iget v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mStreamType:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->canPhonePlay(I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-string p2, "AHU.AUDIO"

    .line 42
    .line 43
    const-string p3, "audio data from phone without focus"

    .line 44
    .line 45
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioSink:Lcom/google/android/projection/protocol/AudioSink;

    .line 49
    .line 50
    const/4 p3, 0x1

    .line 51
    invoke-virtual {p2, p1, p3}, Lcom/google/android/projection/protocol/AudioSink;->ackFrames(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mFramesReceived:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;-><init>(Lcom/google/android/projection/sink/audio/AudioPlayer;Lcom/google/android/projection/sink/audio/AudioPlayer$1;)V

    .line 65
    .line 66
    .line 67
    iput-wide p2, v0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;->presentationTimeUs:J

    .line 68
    .line 69
    iput-object p4, v0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;->payload:[B

    .line 70
    .line 71
    iget-object p2, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mReceptionThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 72
    .line 73
    invoke-virtual {p2, p1, v0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->receiveAudio(ILcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    monitor-exit p0

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    monitor-exit p0

    .line 80
    throw p1
.end method

.method public onCodecConfig([B)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onCodecConfig "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    array-length v1, p1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, " "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aget-byte v3, p1, v2

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    aget-byte v1, p1, v1

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "AHU.AUDIO"

    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;-><init>(Lcom/google/android/projection/sink/audio/AudioPlayer;Lcom/google/android/projection/sink/audio/AudioPlayer$1;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mCodecConfig:[B

    .line 48
    .line 49
    const-wide/16 v3, 0x0

    .line 50
    .line 51
    iput-wide v3, v0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;->presentationTimeUs:J

    .line 52
    .line 53
    iput-object v1, v0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;->payload:[B

    .line 54
    .line 55
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mReceptionThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 56
    .line 57
    invoke-virtual {p1, v2, v0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->receiveAudio(ILcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 0

    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->ackAFrame()V

    return-void
.end method

.method public declared-synchronized onPhoneFocusChange(IZ)V
    .locals 2

    .line 1
    const-string p2, "onPhoneFocusChange, state:"

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v0, "AHU.AUDIO"

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 22
    .line 23
    iget p2, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mStreamType:I

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->canPhonePlay(I)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mReceptionThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->stopAudio()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    :cond_0
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p0

    .line 42
    throw p1
.end method

.method public declared-synchronized onSetUp(I)V
    .locals 4

    .line 1
    const-string v0, "Unsupported media codec type: "

    .line 2
    .line 3
    const-string v1, "audio onSetUp "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v2, "AHU.AUDIO"

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mStreamType:I

    .line 14
    .line 15
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    sget-object v1, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_AUDIO_PCM:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$MediaCodecType;->getNumber()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ne p1, v1, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mIsEncoded:Z

    .line 35
    .line 36
    new-instance p1, Lcom/google/android/projection/sink/audio/AudioPlayer$PcmPlayThread;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Lcom/google/android/projection/sink/audio/AudioPlayer$PcmPlayThread;-><init>(Lcom/google/android/projection/sink/audio/AudioPlayer;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioPlayThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_AUDIO_AAC_LC:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$MediaCodecType;->getNumber()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-ne p1, v1, :cond_2

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mIsEncoded:Z

    .line 54
    .line 55
    new-instance p1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;

    .line 56
    .line 57
    invoke-direct {p1, p0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;-><init>(Lcom/google/android/projection/sink/audio/AudioPlayer;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioPlayThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;

    .line 61
    .line 62
    :goto_0
    const/4 p1, 0x2

    .line 63
    iput p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mNumAudioByffersToStartPlay:I

    .line 64
    .line 65
    iget-boolean p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mIsEncoded:Z

    .line 66
    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    iget p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mSamplingRate:I

    .line 70
    .line 71
    const v0, 0xbb80

    .line 72
    .line 73
    .line 74
    if-ne p1, v0, :cond_1

    .line 75
    .line 76
    const/4 p1, 0x3

    .line 77
    iput p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mNumAudioByffersToStartPlay:I

    .line 78
    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->createAudioTrack()V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioPlayThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 85
    .line 86
    .line 87
    new-instance p1, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    invoke-direct {p1, p0, v0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;-><init>(Lcom/google/android/projection/sink/audio/AudioPlayer;Lcom/google/android/projection/sink/audio/AudioPlayer$1;)V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mReceptionThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    monitor-exit p0

    .line 99
    return-void

    .line 100
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 101
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :catchall_0
    move-exception p1

    .line 119
    monitor-exit p0

    .line 120
    throw p1
.end method

.method public declared-synchronized onShutdown()V
    .locals 3

    .line 1
    const-string v0, "--------------------------------->>   onShutdown "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "AHU.AUDIO"

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mStreamType:I

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mReceptionThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->stopAudio()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mReceptionThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :cond_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    monitor-exit p0

    .line 39
    throw v0
.end method

.method public declared-synchronized onStart(I)V
    .locals 3

    .line 1
    const-string p1, "audio start while no focus "

    .line 2
    .line 3
    const-string v0, "audio onStart "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v1, "AHU.AUDIO"

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mStreamType:I

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 26
    .line 27
    iget v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mStreamType:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->canPhonePlay(I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    const-string v0, "AHU.AUDIO"

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mStreamType:I

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mCallback:Lcom/google/android/projection/sink/audio/AudioPlayer$Callback;

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    invoke-interface {p1}, Lcom/google/android/projection/sink/audio/AudioPlayer$Callback;->onStart()V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mFramesReceived:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mReceptionThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->startAudio()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    monitor-exit p0

    .line 78
    throw p1
.end method

.method public declared-synchronized onStop(I)V
    .locals 2

    .line 1
    const-string p1, "audio onStop "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v0, "AHU.AUDIO"

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mStreamType:I

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mReceptionThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->stopAudio()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mCallback:Lcom/google/android/projection/sink/audio/AudioPlayer$Callback;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/google/android/projection/sink/audio/AudioPlayer$Callback;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :cond_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p0

    .line 39
    throw p1
.end method

.method public declared-synchronized registerAudioFocusManager(Lcom/google/android/projection/sink/audio/AudioFocusManager;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public declared-synchronized registerAudioSink(Lcom/google/android/projection/protocol/AudioSink;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioSink:Lcom/google/android/projection/protocol/AudioSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public setCallback(Lcom/google/android/projection/sink/audio/AudioPlayer$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mCallback:Lcom/google/android/projection/sink/audio/AudioPlayer$Callback;

    return-void
.end method

.method public declared-synchronized tearDown()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->safeStop(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->onShutdown()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mQ:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioPlayThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->release()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    :cond_1
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    monitor-exit p0

    .line 35
    throw v0
.end method

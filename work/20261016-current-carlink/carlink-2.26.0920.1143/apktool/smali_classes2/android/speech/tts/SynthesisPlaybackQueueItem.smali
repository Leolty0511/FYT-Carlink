.class final Landroid/speech/tts/SynthesisPlaybackQueueItem;
.super Landroid/speech/tts/PlaybackQueueItem;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;,
        Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAX_UNCONSUMED_AUDIO_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "TTS.SynthQueueItem"


# instance fields
.field private final mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

.field private final mDataBufferList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDone:Z

.field private final mListLock:Ljava/util/concurrent/locks/Lock;

.field private final mLogger:Landroid/speech/tts/AbstractEventLogger;

.field private final mNotFull:Ljava/util/concurrent/locks/Condition;

.field private final mReadReady:Ljava/util/concurrent/locks/Condition;

.field private volatile mStatusCode:I

.field private volatile mStopped:Z

.field private mUnconsumedBytes:I

.field private markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;IIILandroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p5, p6}, Landroid/speech/tts/PlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    new-instance p5, Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-direct {p5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p5, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    .line 10
    .line 11
    invoke-interface {p5}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 12
    .line 13
    .line 14
    move-result-object p6

    .line 15
    iput-object p6, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    .line 16
    .line 17
    invoke-interface {p5}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 18
    .line 19
    .line 20
    move-result-object p5

    .line 21
    iput-object p5, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    .line 22
    .line 23
    new-instance p5, Ljava/util/LinkedList;

    .line 24
    .line 25
    invoke-direct {p5}, Ljava/util/LinkedList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p5, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    .line 29
    .line 30
    new-instance p5, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 31
    .line 32
    invoke-direct {p5}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p5, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 36
    .line 37
    const/4 p5, 0x0

    .line 38
    iput p5, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    .line 39
    .line 40
    iput-boolean p5, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    .line 41
    .line 42
    iput-boolean p5, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDone:Z

    .line 43
    .line 44
    iput p5, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    .line 45
    .line 46
    new-instance p5, Landroid/speech/tts/BlockingAudioTrack;

    .line 47
    .line 48
    invoke-direct {p5, p1, p2, p3, p4}, Landroid/speech/tts/BlockingAudioTrack;-><init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;III)V

    .line 49
    .line 50
    .line 51
    iput-object p5, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    .line 52
    .line 53
    iput-object p7, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    .line 54
    .line 55
    return-void
.end method

.method private take()[B
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDone:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    :goto_1
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    .line 51
    .line 52
    iget-object v2, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;->mBytes:[B

    .line 53
    .line 54
    array-length v2, v2

    .line 55
    sub-int/2addr v1, v2

    .line 56
    iput v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    .line 57
    .line 58
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 61
    .line 62
    .line 63
    iget-object v0, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;->mBytes:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 75
    .line 76
    .line 77
    throw v0
.end method


# virtual methods
.method public done()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDone:Z

    .line 8
    .line 9
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "TTS.SynthQueueItem"

    .line 12
    .line 13
    const-string v0, "onMarkerReached reached called but no marker in queue"

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, p1, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->start:I

    .line 24
    .line 25
    iget v2, p1, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->end:I

    .line 26
    .line 27
    iget p1, p1, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->frames:I

    .line 28
    .line 29
    invoke-interface {v0, v1, v2, p1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnRangeStart(III)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->updateMarker()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 0

    return-void
.end method

.method public put([B)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    .line 7
    .line 8
    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/speech/tts/BlockingAudioTrack;->getAudioLengthMs(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x1f4

    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    iget-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    .line 41
    .line 42
    new-instance v1, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;

    .line 43
    .line 44
    invoke-direct {v1, p1}, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;-><init>([B)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    .line 51
    .line 52
    array-length p1, p1

    .line 53
    add-int/2addr v0, p1

    .line 54
    iput v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    .line 55
    .line 56
    iget-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method public rangeStart(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    new-instance v1, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;-><init>(Landroid/speech/tts/SynthesisPlaybackQueueItem;III)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->updateMarker()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/speech/tts/BlockingAudioTrack;->init()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/4 v1, -0x5

    .line 17
    invoke-interface {v0, v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Landroid/speech/tts/BlockingAudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->updateMarker()V

    .line 27
    .line 28
    .line 29
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->take()[B

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Landroid/speech/tts/BlockingAudioTrack;->write([B)I

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/speech/tts/AbstractEventLogger;->onAudioDataWritten()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    :cond_1
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/speech/tts/BlockingAudioTrack;->waitAndRelease()V

    .line 49
    .line 50
    .line 51
    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    .line 60
    .line 61
    const/4 v2, -0x2

    .line 62
    if-ne v1, v2, :cond_3

    .line 63
    .line 64
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    .line 69
    .line 70
    invoke-interface {v0, v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 71
    .line 72
    .line 73
    :goto_1
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    .line 74
    .line 75
    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/speech/tts/AbstractEventLogger;->onCompleted(I)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public stop(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    .line 8
    .line 9
    iput p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    .line 10
    .line 11
    iget-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/speech/tts/BlockingAudioTrack;->stop()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public updateMarker()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v0, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->frames:I

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/speech/tts/BlockingAudioTrack;->setNotificationMarkerPosition(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

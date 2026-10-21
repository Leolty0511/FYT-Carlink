.class Landroid/speech/tts/AudioPlaybackQueueItem;
.super Landroid/speech/tts/PlaybackQueueItem;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TTS.AudioQueueItem"


# instance fields
.field private final mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

.field private final mContext:Landroid/content/Context;

.field private final mDone:Landroid/os/ConditionVariable;

.field private volatile mFinished:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Landroid/speech/tts/TextToSpeechService$AudioOutputParams;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/speech/tts/PlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p4, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mUri:Landroid/net/Uri;

    .line 7
    .line 8
    iput-object p5, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 9
    .line 10
    new-instance p1, Landroid/os/ConditionVariable;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic access$000(Landroid/speech/tts/AudioPlaybackQueueItem;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/speech/tts/AudioPlaybackQueueItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    return p1
.end method

.method private static final clip(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpg-float p1, p0, p2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move p0, p2

    :goto_0
    return p0
.end method

.method private finish()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static setupVolume(Landroid/media/MediaPlayer;FF)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    invoke-static {p1, v0, v1}, Landroid/speech/tts/AudioPlaybackQueueItem;->clip(FFF)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/high16 v2, -0x40800000    # -1.0f

    .line 9
    .line 10
    invoke-static {p2, v2, v1}, Landroid/speech/tts/AudioPlaybackQueueItem;->clip(FFF)F

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    cmpl-float v2, p2, v0

    .line 15
    .line 16
    if-lez v2, :cond_0

    .line 17
    .line 18
    sub-float/2addr v1, p2

    .line 19
    mul-float/2addr v1, p1

    .line 20
    move p2, p1

    .line 21
    move p1, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    cmpg-float v0, p2, v0

    .line 24
    .line 25
    if-gez v0, :cond_1

    .line 26
    .line 27
    add-float/2addr p2, v1

    .line 28
    mul-float/2addr p2, p1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move p2, p1

    .line 31
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

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
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 9
    .line 10
    iget v2, v1, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    .line 11
    .line 12
    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v4, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mUri:Landroid/net/Uri;

    .line 15
    .line 16
    iget-object v1, v1, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 17
    .line 18
    if-lez v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_0
    const/4 v5, 0x0

    .line 23
    invoke-static {v3, v4, v5, v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    const/4 v1, -0x5

    .line 32
    invoke-interface {v0, v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    :try_start_0
    new-instance v2, Landroid/speech/tts/AudioPlaybackQueueItem$1;

    .line 37
    .line 38
    invoke-direct {v2, p0}, Landroid/speech/tts/AudioPlaybackQueueItem$1;-><init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    .line 45
    .line 46
    new-instance v2, Landroid/speech/tts/AudioPlaybackQueueItem$2;

    .line 47
    .line 48
    invoke-direct {v2, p0}, Landroid/speech/tts/AudioPlaybackQueueItem$2;-><init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    .line 55
    .line 56
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 57
    .line 58
    iget v3, v2, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    .line 59
    .line 60
    iget v2, v2, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    .line 61
    .line 62
    invoke-static {v1, v3, v2}, Landroid/speech/tts/AudioPlaybackQueueItem;->setupVolume(Landroid/media/MediaPlayer;FF)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackQueueItem;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception v1

    .line 80
    const-string v2, "TTS.AudioQueueItem"

    .line 81
    .line 82
    const-string v3, "MediaPlayer failed"

    .line 83
    .line 84
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 90
    .line 91
    .line 92
    :goto_1
    iget-boolean v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    .line 93
    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    .line 101
    .line 102
    .line 103
    :goto_2
    return-void
.end method

.method public stop(I)V
    .locals 0

    iget-object p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

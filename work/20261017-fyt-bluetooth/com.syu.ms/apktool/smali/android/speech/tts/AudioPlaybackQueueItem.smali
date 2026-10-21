.class Landroid/speech/tts/AudioPlaybackQueueItem;
.super Landroid/speech/tts/PlaybackQueueItem;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TTS.AudioQueueItem"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDone:Landroid/os/ConditionVariable;

.field private volatile mFinished:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private final mStreamType:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/speech/tts/PlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V

    .line 2
    iput-object p3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mContext:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mUri:Landroid/net/Uri;

    .line 4
    iput p5, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mStreamType:I

    .line 5
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    return-void
.end method

.method public static synthetic access$000(Landroid/speech/tts/AudioPlaybackQueueItem;)Landroid/os/ConditionVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/speech/tts/AudioPlaybackQueueItem;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    return p1
.end method

.method private finish()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 3
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 4
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError()V

    return-void

    .line 5
    :cond_0
    :try_start_0
    new-instance v2, Landroid/speech/tts/AudioPlaybackQueueItem$1;

    invoke-direct {v2, p0}, Landroid/speech/tts/AudioPlaybackQueueItem$1;-><init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 6
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Landroid/speech/tts/AudioPlaybackQueueItem$2;

    invoke-direct {v2, p0}, Landroid/speech/tts/AudioPlaybackQueueItem$2;-><init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 7
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 8
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 9
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 10
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackQueueItem;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TTS.AudioQueueItem"

    const-string v3, "MediaPlayer failed"

    .line 11
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 13
    :goto_0
    iget-boolean v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    if-eqz v1, :cond_1

    .line 14
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnDone()V

    goto :goto_1

    .line 15
    :cond_1
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError()V

    :goto_1
    return-void
.end method

.method public stop(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

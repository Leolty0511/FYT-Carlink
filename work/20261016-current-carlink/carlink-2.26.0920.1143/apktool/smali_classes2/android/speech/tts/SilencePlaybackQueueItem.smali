.class Landroid/speech/tts/SilencePlaybackQueueItem;
.super Landroid/speech/tts/PlaybackQueueItem;
.source "SourceFile"


# instance fields
.field private final mCondVar:Landroid/os/ConditionVariable;

.field private final mSilenceDurationMs:J


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/speech/tts/PlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/ConditionVariable;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroid/speech/tts/SilencePlaybackQueueItem;->mCondVar:Landroid/os/ConditionVariable;

    .line 10
    .line 11
    iput-wide p3, p0, Landroid/speech/tts/SilencePlaybackQueueItem;->mSilenceDurationMs:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

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
    iget-wide v0, p0, Landroid/speech/tts/SilencePlaybackQueueItem;->mSilenceDurationMs:J

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v2, v0, v2

    .line 13
    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Landroid/speech/tts/SilencePlaybackQueueItem;->mCondVar:Landroid/os/ConditionVariable;

    .line 17
    .line 18
    invoke-virtual {v2, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    .line 39
    .line 40
    .line 41
    :goto_1
    return-void
.end method

.method public stop(I)V
    .locals 0

    iget-object p1, p0, Landroid/speech/tts/SilencePlaybackQueueItem;->mCondVar:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.class abstract Landroid/speech/tts/AbstractEventLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final mCallerPid:I

.field protected final mCallerUid:I

.field private volatile mEngineCompleteTime:J

.field private volatile mEngineStartTime:J

.field private mLogWritten:Z

.field protected mPlaybackStartTime:J

.field protected final mReceivedTime:J

.field private volatile mRequestProcessingStartTime:J

.field protected final mServiceApp:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    .line 9
    .line 10
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    .line 11
    .line 12
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroid/speech/tts/AbstractEventLogger;->mLogWritten:Z

    .line 16
    .line 17
    iput p1, p0, Landroid/speech/tts/AbstractEventLogger;->mCallerUid:I

    .line 18
    .line 19
    iput p2, p0, Landroid/speech/tts/AbstractEventLogger;->mCallerPid:I

    .line 20
    .line 21
    iput-object p3, p0, Landroid/speech/tts/AbstractEventLogger;->mServiceApp:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    iput-wide p1, p0, Landroid/speech/tts/AbstractEventLogger;->mReceivedTime:J

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public abstract logFailure(I)V
.end method

.method public abstract logSuccess(JJJ)V
.end method

.method public onAudioDataWritten()V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onCompleted(I)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Landroid/speech/tts/AbstractEventLogger;->mLogWritten:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/speech/tts/AbstractEventLogger;->mLogWritten:Z

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_2

    .line 13
    .line 14
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    .line 15
    .line 16
    const-wide/16 v2, -0x1

    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    .line 23
    .line 24
    cmp-long v0, v0, v2

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    .line 30
    .line 31
    iget-wide v2, p0, Landroid/speech/tts/AbstractEventLogger;->mReceivedTime:J

    .line 32
    .line 33
    sub-long v5, v0, v2

    .line 34
    .line 35
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    .line 36
    .line 37
    iget-wide v2, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    .line 38
    .line 39
    sub-long v7, v0, v2

    .line 40
    .line 41
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    .line 42
    .line 43
    iget-wide v2, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    .line 44
    .line 45
    sub-long v9, v0, v2

    .line 46
    .line 47
    move-object v4, p0

    .line 48
    invoke-virtual/range {v4 .. v10}, Landroid/speech/tts/AbstractEventLogger;->logSuccess(JJJ)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Landroid/speech/tts/AbstractEventLogger;->logFailure(I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public onEngineComplete()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    return-void
.end method

.method public onEngineDataReceived()V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onRequestProcessingStart()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    return-void
.end method

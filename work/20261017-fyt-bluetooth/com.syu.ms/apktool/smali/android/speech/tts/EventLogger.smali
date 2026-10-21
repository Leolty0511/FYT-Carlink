.class Landroid/speech/tts/EventLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCallerPid:I

.field private final mCallerUid:I

.field private volatile mEngineCompleteTime:J

.field private volatile mEngineStartTime:J

.field private volatile mError:Z

.field private mLogWritten:Z

.field private mPlaybackStartTime:J

.field private final mReceivedTime:J

.field private final mRequest:Landroid/speech/tts/SynthesisRequest;

.field private volatile mRequestProcessingStartTime:J

.field private final mServiceApp:Ljava/lang/String;

.field private volatile mStopped:Z


# direct methods
.method public constructor <init>(Landroid/speech/tts/SynthesisRequest;IILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mPlaybackStartTime:J

    .line 3
    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mRequestProcessingStartTime:J

    .line 4
    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineStartTime:J

    .line 5
    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineCompleteTime:J

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/speech/tts/EventLogger;->mError:Z

    .line 7
    iput-boolean v0, p0, Landroid/speech/tts/EventLogger;->mStopped:Z

    .line 8
    iput-boolean v0, p0, Landroid/speech/tts/EventLogger;->mLogWritten:Z

    .line 9
    iput-object p1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    .line 10
    iput p2, p0, Landroid/speech/tts/EventLogger;->mCallerUid:I

    .line 11
    iput p3, p0, Landroid/speech/tts/EventLogger;->mCallerPid:I

    .line 12
    iput-object p4, p0, Landroid/speech/tts/EventLogger;->mServiceApp:Ljava/lang/String;

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/speech/tts/EventLogger;->mReceivedTime:J

    return-void
.end method

.method private getLocaleString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2d

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v2}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v2}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUtteranceLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v0}, Landroid/speech/tts/SynthesisRequest;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public onAudioDataWritten()V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/speech/tts/EventLogger;->mPlaybackStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mPlaybackStartTime:J

    :cond_0
    return-void
.end method

.method public onEngineComplete()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineCompleteTime:J

    return-void
.end method

.method public onEngineDataReceived()V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineStartTime:J

    :cond_0
    return-void
.end method

.method public onError()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/speech/tts/EventLogger;->mError:Z

    return-void
.end method

.method public onRequestProcessingStart()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mRequestProcessingStartTime:J

    return-void
.end method

.method public onStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/speech/tts/EventLogger;->mStopped:Z

    return-void
.end method

.method public onWriteData()V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Landroid/speech/tts/EventLogger;->mLogWritten:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/speech/tts/EventLogger;->mLogWritten:Z

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    iget-boolean v1, v0, Landroid/speech/tts/EventLogger;->mError:Z

    if-nez v1, :cond_3

    iget-wide v1, v0, Landroid/speech/tts/EventLogger;->mPlaybackStartTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-wide v1, v0, Landroid/speech/tts/EventLogger;->mEngineCompleteTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v1, v0, Landroid/speech/tts/EventLogger;->mStopped:Z

    if-eqz v1, :cond_2

    return-void

    .line 6
    :cond_2
    iget-wide v1, v0, Landroid/speech/tts/EventLogger;->mPlaybackStartTime:J

    iget-wide v3, v0, Landroid/speech/tts/EventLogger;->mReceivedTime:J

    sub-long v16, v1, v3

    .line 7
    iget-wide v1, v0, Landroid/speech/tts/EventLogger;->mEngineStartTime:J

    iget-wide v3, v0, Landroid/speech/tts/EventLogger;->mRequestProcessingStartTime:J

    sub-long v12, v1, v3

    .line 8
    iget-wide v1, v0, Landroid/speech/tts/EventLogger;->mEngineCompleteTime:J

    iget-wide v3, v0, Landroid/speech/tts/EventLogger;->mRequestProcessingStartTime:J

    sub-long v14, v1, v3

    .line 9
    iget-object v5, v0, Landroid/speech/tts/EventLogger;->mServiceApp:Ljava/lang/String;

    iget v6, v0, Landroid/speech/tts/EventLogger;->mCallerUid:I

    iget v7, v0, Landroid/speech/tts/EventLogger;->mCallerPid:I

    invoke-direct/range {p0 .. p0}, Landroid/speech/tts/EventLogger;->getUtteranceLength()I

    move-result v8

    invoke-direct/range {p0 .. p0}, Landroid/speech/tts/EventLogger;->getLocaleString()Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v10

    iget-object v1, v0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v11

    invoke-static/range {v5 .. v17}, Landroid/speech/tts/EventLogTags;->writeTtsSpeakSuccess(Ljava/lang/String;IIILjava/lang/String;IIJJJ)V

    return-void

    .line 10
    :cond_3
    :goto_0
    iget-object v1, v0, Landroid/speech/tts/EventLogger;->mServiceApp:Ljava/lang/String;

    iget v2, v0, Landroid/speech/tts/EventLogger;->mCallerUid:I

    iget v3, v0, Landroid/speech/tts/EventLogger;->mCallerPid:I

    invoke-direct/range {p0 .. p0}, Landroid/speech/tts/EventLogger;->getUtteranceLength()I

    move-result v21

    invoke-direct/range {p0 .. p0}, Landroid/speech/tts/EventLogger;->getLocaleString()Ljava/lang/String;

    move-result-object v22

    iget-object v4, v0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v4}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v23

    iget-object v4, v0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v4}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v24

    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-static/range {v18 .. v24}, Landroid/speech/tts/EventLogTags;->writeTtsSpeakFailure(Ljava/lang/String;IIILjava/lang/String;II)V

    return-void
.end method

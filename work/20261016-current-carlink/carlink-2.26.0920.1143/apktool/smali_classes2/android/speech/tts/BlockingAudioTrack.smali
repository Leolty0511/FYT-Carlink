.class Landroid/speech/tts/BlockingAudioTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DBG:Z = false

.field private static final MAX_PROGRESS_WAIT_MS:J = 0x9c4L

.field private static final MAX_SLEEP_TIME_MS:J = 0x9c4L

.field private static final MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final MIN_SLEEP_TIME_MS:J = 0x14L

.field private static final TAG:Ljava/lang/String; = "TTS.BlockingAudioTrack"


# instance fields
.field private mAudioBufferSize:I

.field private final mAudioFormat:I

.field private final mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mAudioTrackLock:Ljava/lang/Object;

.field private final mBytesPerFrame:I

.field private mBytesWritten:I

.field private final mChannelCount:I

.field private mIsShortUtterance:Z

.field private final mSampleRateInHz:I

.field private mSessionId:I

.field private volatile mStopped:Z


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 6
    .line 7
    new-instance v1, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 15
    .line 16
    iput p2, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    .line 17
    .line 18
    iput p3, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    .line 19
    .line 20
    iput p4, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    .line 21
    .line 22
    invoke-static {p3}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    mul-int/2addr p1, p4

    .line 27
    iput p1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    .line 28
    .line 29
    iput-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    .line 30
    .line 31
    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    .line 32
    .line 33
    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 37
    .line 38
    iput-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    .line 39
    .line 40
    return-void
.end method

.method private blockUntilCompletion(Landroid/media/AudioTrack;)V
    .locals 14

    .line 1
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 2
    .line 3
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    .line 4
    .line 5
    div-int/2addr v0, v1

    .line 6
    const/4 v1, -0x1

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    move-wide v4, v2

    .line 10
    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    .line 11
    .line 12
    .line 13
    move-result v6

    .line 14
    if-ge v6, v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    const/4 v8, 0x3

    .line 21
    if-ne v7, v8, :cond_2

    .line 22
    .line 23
    iget-boolean v7, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    .line 24
    .line 25
    if-nez v7, :cond_2

    .line 26
    .line 27
    sub-int v7, v0, v6

    .line 28
    .line 29
    mul-int/lit16 v7, v7, 0x3e8

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    div-int/2addr v7, v8

    .line 36
    int-to-long v8, v7

    .line 37
    const-wide/16 v10, 0x14

    .line 38
    .line 39
    const-wide/16 v12, 0x9c4

    .line 40
    .line 41
    invoke-static/range {v8 .. v13}, Landroid/speech/tts/BlockingAudioTrack;->clip(JJJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    if-ne v6, v1, :cond_0

    .line 46
    .line 47
    add-long/2addr v4, v7

    .line 48
    const-wide/16 v9, 0x9c4

    .line 49
    .line 50
    cmp-long v1, v4, v9

    .line 51
    .line 52
    if-lez v1, :cond_1

    .line 53
    .line 54
    const-string p1, "TTS.BlockingAudioTrack"

    .line 55
    .line 56
    const-string v0, "Waited unsuccessfully for 2500ms for AudioTrack to make progress, Aborting"

    .line 57
    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    move-wide v4, v2

    .line 63
    :cond_1
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    move v1, v6

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method private blockUntilDone(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilEstimatedCompletion()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-direct {p0, p1}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilCompletion(Landroid/media/AudioTrack;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private blockUntilEstimatedCompletion()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 2
    .line 3
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    .line 4
    .line 5
    div-int/2addr v0, v1

    .line 6
    mul-int/lit16 v0, v0, 0x3e8

    .line 7
    .line 8
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    .line 9
    .line 10
    div-int/2addr v0, v1

    .line 11
    int-to-long v0, v0

    .line 12
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    return-void
.end method

.method private static final clip(FFF)F
    .locals 1

    .line 1
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

.method private static final clip(JJJ)J
    .locals 1

    .line 2
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    move-wide p0, p2

    goto :goto_0

    :cond_0
    cmp-long p2, p0, p4

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    move-wide p0, p4

    :goto_0
    return-wide p0
.end method

.method private createStreamingAudioTrack()Landroid/media/AudioTrack;
    .locals 9

    .line 1
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/speech/tts/BlockingAudioTrack;->getChannelConfig(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    .line 8
    .line 9
    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    .line 10
    .line 11
    invoke-static {v1, v0, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x2000

    .line 16
    .line 17
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    new-instance v2, Landroid/media/AudioFormat$Builder;

    .line 22
    .line 23
    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    new-instance v0, Landroid/media/AudioTrack;

    .line 47
    .line 48
    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 49
    .line 50
    iget-object v4, v2, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 51
    .line 52
    const/4 v7, 0x1

    .line 53
    iget v8, v2, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    .line 54
    .line 55
    move-object v3, v0

    .line 56
    move v6, v1

    .line 57
    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/4 v3, 0x1

    .line 65
    if-eq v2, v3, :cond_0

    .line 66
    .line 67
    const-string v1, "TTS.BlockingAudioTrack"

    .line 68
    .line 69
    const-string v2, "Unable to create audio track."

    .line 70
    .line 71
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 75
    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    return-object v0

    .line 79
    :cond_0
    iput v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    .line 80
    .line 81
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 82
    .line 83
    iget v2, v1, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    .line 84
    .line 85
    iget v1, v1, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    .line 86
    .line 87
    invoke-static {v0, v2, v1}, Landroid/speech/tts/BlockingAudioTrack;->setupVolume(Landroid/media/AudioTrack;FF)V

    .line 88
    .line 89
    .line 90
    return-object v0
.end method

.method public static getChannelConfig(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/16 p0, 0xc

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static setupVolume(Landroid/media/AudioTrack;FF)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    invoke-static {p1, v0, v1}, Landroid/speech/tts/BlockingAudioTrack;->clip(FFF)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/high16 v2, -0x40800000    # -1.0f

    .line 9
    .line 10
    invoke-static {p2, v2, v1}, Landroid/speech/tts/BlockingAudioTrack;->clip(FFF)F

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
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    const-string p0, "TTS.BlockingAudioTrack"

    .line 38
    .line 39
    const-string p1, "Failed to set volume"

    .line 40
    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method private static writeToAudioTrack(Landroid/media/AudioTrack;[B)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    array-length v1, p1

    .line 13
    if-ge v0, v1, :cond_2

    .line 14
    .line 15
    array-length v1, p1

    .line 16
    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AudioTrack;->write([BII)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-gtz v1, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    add-int/2addr v0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public getAudioLengthMs(I)J
    .locals 2

    .line 1
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    .line 2
    .line 3
    div-int/2addr p1, v0

    .line 4
    mul-int/lit16 p1, p1, 0x3e8

    .line 5
    .line 6
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    .line 7
    .line 8
    div-int/2addr p1, v0

    .line 9
    int-to-long v0, p1

    .line 10
    return-wide v0
.end method

.method public init()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/speech/tts/BlockingAudioTrack;->createStreamingAudioTrack()Landroid/media/AudioTrack;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iput-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 9
    .line 10
    monitor-exit v1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0
.end method

.method public setNotificationMarkerPosition(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    .line 9
    .line 10
    .line 11
    :cond_0
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v1
.end method

.method public waitAndRelease()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 11
    .line 12
    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    .line 13
    .line 14
    if-ge v0, v2, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 31
    .line 32
    invoke-direct {p0, v0}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilDone(Landroid/media/AudioTrack;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v2

    .line 38
    const/4 v0, 0x0

    .line 39
    :try_start_1
    iput-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 40
    .line 41
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    throw v0

    .line 49
    :catchall_1
    move-exception v1

    .line 50
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 51
    throw v1
.end method

.method public write([B)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v1, p1}, Landroid/speech/tts/BlockingAudioTrack;->writeToAudioTrack(Landroid/media/AudioTrack;[B)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 19
    .line 20
    add-int/2addr v0, p1

    .line 21
    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 22
    .line 23
    return p1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 25
    return p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method

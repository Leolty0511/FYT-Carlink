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

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mAudioTrackLock:Ljava/lang/Object;

.field private final mBytesPerFrame:I

.field private mBytesWritten:I

.field private final mChannelCount:I

.field private mIsShortUtterance:Z

.field private final mPan:F

.field private final mSampleRateInHz:I

.field private volatile mStopped:Z

.field private final mStreamType:I

.field private final mVolume:F


# direct methods
.method public constructor <init>(IIIIFF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    .line 4
    iput p1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStreamType:I

    .line 5
    iput p2, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    .line 6
    iput p3, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    .line 7
    iput p4, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    .line 8
    iput p5, p0, Landroid/speech/tts/BlockingAudioTrack;->mVolume:F

    .line 9
    iput p6, p0, Landroid/speech/tts/BlockingAudioTrack;->mPan:F

    .line 10
    invoke-static {p3}, Landroid/speech/tts/BlockingAudioTrack;->getBytesPerFrame(I)I

    move-result p1

    mul-int/2addr p1, p4

    iput p1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    .line 11
    iput-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    .line 12
    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    .line 13
    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 15
    iput-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    return-void
.end method

.method private blockUntilCompletion(Landroid/media/AudioTrack;)V
    .locals 14

    .line 1
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    div-int/2addr v0, v1

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    move-wide v4, v1

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v6

    if-ge v6, v0, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    iget-boolean v7, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-nez v7, :cond_2

    sub-int v7, v0, v6

    mul-int/lit16 v7, v7, 0x3e8

    .line 3
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v8

    div-int/2addr v7, v8

    int-to-long v8, v7

    const-wide/16 v10, 0x14

    const-wide/16 v12, 0x9c4

    .line 4
    invoke-static/range {v8 .. v13}, Landroid/speech/tts/BlockingAudioTrack;->clip(JJJ)J

    move-result-wide v7

    if-ne v6, v3, :cond_0

    add-long/2addr v4, v7

    const-wide/16 v9, 0x9c4

    cmp-long v3, v4, v9

    if-lez v3, :cond_1

    const-string p1, "TTS.BlockingAudioTrack"

    const-string v0, "Waited unsuccessfully for 2500ms for AudioTrack to make progress, Aborting"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move-wide v4, v1

    .line 6
    :cond_1
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method private blockUntilDone(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilEstimatedCompletion()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilCompletion(Landroid/media/AudioTrack;)V

    :goto_0
    return-void
.end method

.method private blockUntilEstimatedCompletion()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    div-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    .line 2
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static clip(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    move p0, p2

    goto :goto_0

    :cond_0
    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    move p0, p1

    :cond_1
    :goto_0
    return p0
.end method

.method private static final clip(JJJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    :cond_0
    cmp-long p2, p0, p4

    if-lez p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0
.end method

.method private createStreamingAudioTrack()Landroid/media/AudioTrack;
    .locals 9

    .line 1
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    invoke-static {v0}, Landroid/speech/tts/BlockingAudioTrack;->getChannelConfig(I)I

    move-result v4

    .line 2
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    invoke-static {v0, v4, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/16 v1, 0x2000

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4
    new-instance v8, Landroid/media/AudioTrack;

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mStreamType:I

    iget v3, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    iget v5, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    const/4 v7, 0x1

    move-object v1, v8

    move v6, v0

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 5
    invoke-virtual {v8}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v0, "TTS.BlockingAudioTrack"

    const-string v1, "Unable to create audio track."

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v8}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    return-object v0

    .line 8
    :cond_0
    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    .line 9
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mVolume:F

    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mPan:F

    invoke-static {v8, v0, v1}, Landroid/speech/tts/BlockingAudioTrack;->setupVolume(Landroid/media/AudioTrack;FF)V

    return-object v8
.end method

.method private static getBytesPerFrame(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, -0x1

    return p0
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

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p1, v0, v1}, Landroid/speech/tts/BlockingAudioTrack;->clip(FFF)F

    move-result p1

    const/high16 v2, -0x40800000    # -1.0f

    .line 2
    invoke-static {p2, v2, v1}, Landroid/speech/tts/BlockingAudioTrack;->clip(FFF)F

    move-result p2

    cmpl-float v2, p2, v0

    if-lez v2, :cond_0

    sub-float/2addr v1, p2

    mul-float/2addr v1, p1

    move p2, p1

    move p1, v1

    goto :goto_0

    :cond_0
    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    add-float/2addr p2, v1

    mul-float/2addr p2, p1

    goto :goto_0

    :cond_1
    move p2, p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "TTS.BlockingAudioTrack"

    const-string p1, "Failed to set volume"

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static writeToAudioTrack(Landroid/media/AudioTrack;[B)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 4
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public getAudioLengthMs(I)J
    .locals 2

    .line 1
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    div-int/2addr p1, v0

    mul-int/lit16 p1, p1, 0x3e8

    .line 2
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public init()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/speech/tts/BlockingAudioTrack;->createStreamingAudioTrack()Landroid/media/AudioTrack;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iput-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 4
    monitor-exit v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitAndRelease()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    if-ge v0, v2, :cond_1

    iget-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    .line 6
    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 7
    :cond_1
    iget-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0, v0}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilDone(Landroid/media/AudioTrack;)V

    .line 9
    :cond_2
    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    .line 10
    :try_start_1
    iput-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 11
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    return-void

    :catchall_0
    move-exception v0

    .line 13
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 14
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public write([B)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 4
    iget-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1, p1}, Landroid/speech/tts/BlockingAudioTrack;->writeToAudioTrack(Landroid/media/AudioTrack;[B)I

    move-result p1

    .line 6
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

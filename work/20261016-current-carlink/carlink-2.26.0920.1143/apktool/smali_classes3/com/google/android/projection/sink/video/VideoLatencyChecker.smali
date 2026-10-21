.class public Lcom/google/android/projection/sink/video/VideoLatencyChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DBG:Z = false

.field private static final FRAME_SIZE_MULTIPLIER:I = 0x4

.field private static final FRAME_SIZE_THRESHOLD:I = 0x1000

.field private static final LATENCY_IGNORE_ABOVE_THIS:J = 0x1f4L

.field private static final NO_LATENCY_CHECK_PERIOD:I = 0x2

.field private static final NUM_FRAMES_FOR_AVERAGE_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AHU.VIDEO"


# instance fields
.field private mAverageFrameSize:I

.field private mCurrentFrameLocation:I

.field private mDecodingStartTimeMs:J

.field private mFrameSize:I

.field private final mFrameSizes:[I

.field private mInputEventTimeMsVideo:J

.field private mLatestVideoLatency:J

.field private mNoLatencyCheckCounter:I

.field private mPresentationTimeUs:J

.field private mVideoLatencyCheckOngoing:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mFrameSizes:[I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mCurrentFrameLocation:I

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mAverageFrameSize:I

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mFrameSize:I

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mNoLatencyCheckCounter:I

    .line 17
    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    iput-wide v1, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mInputEventTimeMsVideo:J

    .line 21
    .line 22
    iput-wide v1, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mPresentationTimeUs:J

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mVideoLatencyCheckOngoing:Z

    .line 25
    .line 26
    iput-wide v1, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mLatestVideoLatency:J

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public getLatestLatency()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mLatestVideoLatency:J

    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public declared-synchronized onDecodingFinish(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mPresentationTimeUs:J

    .line 3
    .line 4
    cmp-long p1, p1, v0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    iget-wide v0, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mInputEventTimeMsVideo:J

    .line 13
    .line 14
    sub-long/2addr p1, v0

    .line 15
    iput-wide p1, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mLatestVideoLatency:J

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mVideoLatencyCheckOngoing:Z

    .line 19
    .line 20
    const-wide/16 p1, 0x0

    .line 21
    .line 22
    iput-wide p1, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mInputEventTimeMsVideo:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit p0

    .line 28
    throw p1
.end method

.method public declared-synchronized onDecodingStart(IJ)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mNoLatencyCheckCounter:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mNoLatencyCheckCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mAverageFrameSize:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mVideoLatencyCheckOngoing:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    mul-int/lit8 v2, v0, 0x4

    .line 22
    .line 23
    if-le p1, v2, :cond_1

    .line 24
    .line 25
    const/16 v2, 0x1000

    .line 26
    .line 27
    if-le p1, v2, :cond_1

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    iput-wide v2, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mDecodingStartTimeMs:J

    .line 34
    .line 35
    iput-wide p2, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mPresentationTimeUs:J

    .line 36
    .line 37
    iput v1, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mNoLatencyCheckCounter:I

    .line 38
    .line 39
    iput p1, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mFrameSize:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p2, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mFrameSizes:[I

    .line 43
    .line 44
    iget p3, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mCurrentFrameLocation:I

    .line 45
    .line 46
    aget v2, p2, p3

    .line 47
    .line 48
    sub-int v2, p1, v2

    .line 49
    .line 50
    div-int/2addr v2, v1

    .line 51
    add-int/2addr v0, v2

    .line 52
    iput v0, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mAverageFrameSize:I

    .line 53
    .line 54
    aput p1, p2, p3

    .line 55
    .line 56
    add-int/lit8 p3, p3, 0x1

    .line 57
    .line 58
    iput p3, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mCurrentFrameLocation:I

    .line 59
    .line 60
    if-lt p3, v1, :cond_2

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mCurrentFrameLocation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    :cond_2
    :goto_0
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    monitor-exit p0

    .line 69
    throw p1
.end method

.method public declared-synchronized onInputEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mVideoLatencyCheckOngoing:Z

    .line 10
    .line 11
    iput p1, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mNoLatencyCheckCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-boolean p1, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mVideoLatencyCheckOngoing:Z

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mInputEventTimeMsVideo:J

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->mVideoLatencyCheckOngoing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    :cond_1
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1
.end method

.class public Lcom/google/android/projection/sink/audio/AudioLatencyChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MIN_AUDIO_LATENCY:I = 0x64


# instance fields
.field private mInputEventTimeMs:J

.field private mLastPresentationTimeUs:J

.field private mLatencyCheckOngoing:Z

.field private mLatestLatency:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->mInputEventTimeMs:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->mLatencyCheckOngoing:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getLatestLatency()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->mLatestLatency:J

    return-wide v0
.end method

.method public onDecoded(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->mLastPresentationTimeUs:J

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->mLatencyCheckOngoing:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    cmp-long p1, p1, v0

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->mLatencyCheckOngoing:Z

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    iget-wide v2, p0, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->mInputEventTimeMs:J

    .line 25
    .line 26
    sub-long/2addr p1, v2

    .line 27
    const-wide/16 v2, 0x64

    .line 28
    .line 29
    cmp-long v2, p1, v2

    .line 30
    .line 31
    if-lez v2, :cond_0

    .line 32
    .line 33
    iput-wide p1, p0, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->mLatestLatency:J

    .line 34
    .line 35
    :cond_0
    iput-wide v0, p0, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->mLastPresentationTimeUs:J

    .line 36
    .line 37
    :cond_1
    return-void
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
    iput-boolean p1, p0, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->mLatencyCheckOngoing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->mInputEventTimeMs:J

    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->mLastPresentationTimeUs:J

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->mLatencyCheckOngoing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1
.end method

.method public onReceived(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->mLastPresentationTimeUs:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-wide p1, p0, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->mLastPresentationTimeUs:J

    .line 10
    .line 11
    :cond_0
    return-void
.end method

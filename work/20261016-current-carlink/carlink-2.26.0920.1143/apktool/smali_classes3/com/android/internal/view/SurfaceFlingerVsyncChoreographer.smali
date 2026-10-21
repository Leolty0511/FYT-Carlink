.class public Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ONE_MS_IN_NS:J = 0xf4240L

.field private static final ONE_S_IN_NS:J = 0x3b9aca00L


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mHandler:Landroid/os/Handler;

.field private mSurfaceFlingerOffsetMs:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/view/Display;Landroid/view/Choreographer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->mChoreographer:Landroid/view/Choreographer;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->calculateAppSurfaceFlingerVsyncOffsetMs(Landroid/view/Display;)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    iput-wide p1, p0, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->mSurfaceFlingerOffsetMs:J

    .line 13
    .line 14
    return-void
.end method

.method private calculateAppSurfaceFlingerVsyncOffsetMs(Landroid/view/Display;)J
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x4e6e6b28    # 1.0E9f

    .line 6
    .line 7
    .line 8
    div-float/2addr v1, v0

    .line 9
    float-to-long v0, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/Display;->getPresentationDeadlineNanos()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const-wide/32 v4, 0xf4240

    .line 15
    .line 16
    .line 17
    sub-long/2addr v2, v4

    .line 18
    sub-long/2addr v0, v2

    .line 19
    invoke-virtual {p1}, Landroid/view/Display;->getAppVsyncOffsetNanos()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    sub-long/2addr v0, v2

    .line 24
    div-long/2addr v0, v4

    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    return-wide v0
.end method

.method private calculateDelay()J
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->mChoreographer:Landroid/view/Choreographer;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/Choreographer;->getLastFrameTimeNanos()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sub-long/2addr v0, v2

    .line 12
    iget-wide v2, p0, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->mSurfaceFlingerOffsetMs:J

    .line 13
    .line 14
    const-wide/32 v4, 0xf4240

    .line 15
    .line 16
    .line 17
    div-long/2addr v0, v4

    .line 18
    sub-long/2addr v2, v0

    .line 19
    return-wide v2
.end method


# virtual methods
.method public getSurfaceFlingerOffsetMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->mSurfaceFlingerOffsetMs:J

    return-wide v0
.end method

.method public scheduleAtSfVsync(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->calculateDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 6
    invoke-virtual {p2, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public scheduleAtSfVsync(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->calculateDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

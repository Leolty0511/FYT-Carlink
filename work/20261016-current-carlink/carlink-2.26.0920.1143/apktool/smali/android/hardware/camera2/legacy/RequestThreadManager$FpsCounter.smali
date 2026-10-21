.class public Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FpsCounter"
.end annotation


# static fields
.field private static final NANO_PER_SECOND:J = 0x3b9aca00L

.field private static final TAG:Ljava/lang/String; = "FpsCounter"


# instance fields
.field private mFrameCount:I

.field private mLastFps:D

.field private mLastPrintTime:J

.field private mLastTime:J

.field private final mStreamType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mFrameCount:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    .line 10
    .line 11
    iput-wide v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastPrintTime:J

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastFps:D

    .line 16
    .line 17
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mStreamType:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public declared-synchronized checkFps()D
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastFps:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized countAndLog()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->countFrame()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->staggeredLog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public declared-synchronized countFrame()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mFrameCount:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mFrameCount:I

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    cmp-long v2, v2, v4

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    iput-wide v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    .line 21
    .line 22
    :cond_0
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    .line 23
    .line 24
    const-wide/32 v4, 0x3b9aca00

    .line 25
    .line 26
    .line 27
    add-long/2addr v4, v2

    .line 28
    cmp-long v4, v0, v4

    .line 29
    .line 30
    if-lez v4, :cond_1

    .line 31
    .line 32
    sub-long v2, v0, v2

    .line 33
    .line 34
    iget v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mFrameCount:I

    .line 35
    .line 36
    int-to-double v4, v4

    .line 37
    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    long-to-double v2, v2

    .line 43
    div-double/2addr v6, v2

    .line 44
    mul-double/2addr v6, v4

    .line 45
    iput-wide v6, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastFps:D

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    iput v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mFrameCount:I

    .line 49
    .line 50
    iput-wide v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    :cond_1
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    monitor-exit p0

    .line 56
    throw v0
.end method

.method public declared-synchronized staggeredLog()V
    .locals 7

    .line 1
    const-string v0, "FPS for "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    .line 5
    .line 6
    iget-wide v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastPrintTime:J

    .line 7
    .line 8
    const-wide v5, 0x12a05f200L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    add-long/2addr v3, v5

    .line 14
    cmp-long v3, v1, v3

    .line 15
    .line 16
    if-lez v3, :cond_0

    .line 17
    .line 18
    iput-wide v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastPrintTime:J

    .line 19
    .line 20
    const-string v1, "FpsCounter"

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mStreamType:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, " stream: "

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-wide v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastFps:D

    .line 38
    .line 39
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :cond_0
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    monitor-exit p0

    .line 53
    throw v0
.end method

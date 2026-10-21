.class Landroid/hardware/camera2/legacy/PerfMeasurement;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_MAX_QUERIES:I = 0x3

.field private static final FAILED_TIMING:J = -0x2L

.field private static final NO_DURATION_YET:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "PerfMeasurement"


# instance fields
.field private mCollectedCpuDurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCollectedGpuDurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCollectedTimestamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCompletedQueryCount:I

.field private mCpuDurationsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeContext:J

.field private mStartTimeNs:J

.field private mTimestampQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    const/4 v0, 0x3

    .line 8
    invoke-static {v0}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeCreateContext(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 16
    invoke-static {p1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeCreateContext(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "maxQueries is less than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getNextGlDuration()J
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeGetNextGlDuration(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    iget v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    iput v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    .line 18
    .line 19
    :cond_0
    return-wide v0
.end method

.method public static isGlTimingSupported()Z
    .locals 1

    invoke-static {}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeQuerySupport()Z

    move-result v0

    return v0
.end method

.method private static native nativeCreateContext(I)J
.end method

.method private static native nativeDeleteContext(J)V
.end method

.method public static native nativeGetNextGlDuration(J)J
.end method

.method private static native nativeQuerySupport()Z
.end method

.method public static native nativeStartGlTimer(J)V
.end method

.method public static native nativeStopGlTimer(J)V
.end method


# virtual methods
.method public addTimestamp(J)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dumpPerformanceData(Ljava/lang/String;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    .line 2
    .line 3
    new-instance v1, Ljava/io/FileWriter;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    const-string/jumbo v1, "timestamp gpu_duration cpu_duration\n"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ge v2, v3, :cond_0

    .line 26
    .line 27
    const-string v3, "%d %d %d\n"

    .line 28
    .line 29
    const/4 v4, 0x3

    .line 30
    new-array v4, v4, [Ljava/lang/Object;

    .line 31
    .line 32
    iget-object v5, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    aput-object v5, v4, v1

    .line 39
    .line 40
    iget-object v5, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const/4 v6, 0x1

    .line 47
    aput-object v5, v4, v6

    .line 48
    .line 49
    iget-object v5, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const/4 v6, 0x2

    .line 56
    aput-object v5, v4, v6

    .line 57
    .line 58
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catchall_0
    move-exception v1

    .line 88
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    :catchall_1
    move-exception v2

    .line 90
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_2
    move-exception v0

    .line 95
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v2, "Error writing data dump to "

    .line 103
    .line 104
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p1, ":"

    .line 111
    .line 112
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const-string v0, "PerfMeasurement"

    .line 123
    .line 124
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    :goto_2
    return-void
.end method

.method public finalize()V
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeDeleteContext(J)V

    return-void
.end method

.method public getCompletedQueryCount()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    return v0
.end method

.method public startTimer()V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeStartGlTimer(J)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mStartTimeNs:J

    .line 11
    .line 12
    return-void
.end method

.method public stopTimer()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    .line 6
    .line 7
    iget-wide v3, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mStartTimeNs:J

    .line 8
    .line 9
    sub-long/2addr v0, v3

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeStopGlTimer(J)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/PerfMeasurement;->getNextGlDuration()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    cmp-long v2, v0, v2

    .line 29
    .line 30
    if-lez v2, :cond_2

    .line 31
    .line 32
    iget-object v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    .line 42
    .line 43
    iget-object v3, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const-wide/16 v4, -0x1

    .line 50
    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    .line 59
    .line 60
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Ljava/lang/Long;

    .line 65
    .line 66
    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    .line 70
    .line 71
    iget-object v3, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    iget-object v3, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    .line 85
    .line 86
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Ljava/lang/Long;

    .line 91
    .line 92
    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_2
    const-wide/16 v2, -0x2

    .line 96
    .line 97
    cmp-long v0, v0, v2

    .line 98
    .line 99
    if-nez v0, :cond_4

    .line 100
    .line 101
    iget-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_3

    .line 108
    .line 109
    iget-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_3
    iget-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_4

    .line 121
    .line 122
    iget-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :cond_4
    return-void
.end method

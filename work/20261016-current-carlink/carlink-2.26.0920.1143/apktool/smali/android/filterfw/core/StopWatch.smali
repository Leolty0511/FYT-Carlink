.class Landroid/filterfw/core/StopWatch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private STOP_WATCH_LOGGING_PERIOD:I

.field private TAG:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNumCalls:I

.field private mStartTime:J

.field private mTotalTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xc8

    .line 5
    .line 6
    iput v0, p0, Landroid/filterfw/core/StopWatch;->STOP_WATCH_LOGGING_PERIOD:I

    .line 7
    .line 8
    const-string v0, "MFF"

    .line 9
    .line 10
    iput-object v0, p0, Landroid/filterfw/core/StopWatch;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Landroid/filterfw/core/StopWatch;->mName:Ljava/lang/String;

    .line 13
    .line 14
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    iput-wide v0, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

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
    iput-wide v0, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    const-string v1, "Calling start with StopWatch already running"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public stop()V
    .locals 8

    .line 1
    iget-wide v0, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v4, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    .line 14
    .line 15
    iget-wide v6, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    .line 16
    .line 17
    sub-long/2addr v0, v6

    .line 18
    add-long/2addr v0, v4

    .line 19
    iput-wide v0, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    .line 20
    .line 21
    iget v0, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    add-int/2addr v0, v1

    .line 25
    iput v0, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    .line 26
    .line 27
    iput-wide v2, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    .line 28
    .line 29
    iget v2, p0, Landroid/filterfw/core/StopWatch;->STOP_WATCH_LOGGING_PERIOD:I

    .line 30
    .line 31
    rem-int/2addr v0, v2

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Landroid/filterfw/core/StopWatch;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v3, "AVG ms/call "

    .line 39
    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Landroid/filterfw/core/StopWatch;->mName:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, ": "

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    iget-wide v3, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    .line 56
    .line 57
    long-to-float v3, v3

    .line 58
    const/high16 v4, 0x3f800000    # 1.0f

    .line 59
    .line 60
    mul-float/2addr v3, v4

    .line 61
    iget v4, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    .line 62
    .line 63
    int-to-float v4, v4

    .line 64
    div-float/2addr v3, v4

    .line 65
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const/4 v4, 0x0

    .line 70
    aput-object v3, v1, v4

    .line 71
    .line 72
    const-string v3, "%.1f"

    .line 73
    .line 74
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    const-wide/16 v0, 0x0

    .line 89
    .line 90
    iput-wide v0, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    .line 91
    .line 92
    iput v4, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    .line 93
    .line 94
    :cond_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 96
    .line 97
    const-string v1, "Calling stop with StopWatch already stopped"

    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0
.end method

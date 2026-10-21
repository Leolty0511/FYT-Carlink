.class public Landroid/filterpacks/performance/ThroughputFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mLastTime:J

.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;

.field private mPeriod:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "period"
    .end annotation
.end field

.field private mPeriodFrameCount:I

.field private mTotalFrameCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x5

    .line 5
    iput p1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriod:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    .line 13
    .line 14
    iput p1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    .line 3
    .line 4
    iput p1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 9
    .line 10
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 8

    .line 1
    const-string v0, "frame"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iput v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    .line 15
    .line 16
    iget v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 21
    .line 22
    iget-wide v2, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 23
    .line 24
    const-wide/16 v4, 0x0

    .line 25
    .line 26
    cmp-long v0, v2, v4

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    iput-wide v2, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 35
    .line 36
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iget-wide v4, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 41
    .line 42
    sub-long v4, v2, v4

    .line 43
    .line 44
    iget v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriod:I

    .line 45
    .line 46
    mul-int/lit16 v0, v0, 0x3e8

    .line 47
    .line 48
    int-to-long v6, v0

    .line 49
    cmp-long v0, v4, v6

    .line 50
    .line 51
    if-ltz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    mul-int/2addr v0, v1

    .line 66
    new-instance v1, Landroid/filterpacks/performance/Throughput;

    .line 67
    .line 68
    iget v4, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    .line 69
    .line 70
    iget v5, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 71
    .line 72
    iget v6, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriod:I

    .line 73
    .line 74
    invoke-direct {v1, v4, v5, v6, v0}, Landroid/filterpacks/performance/Throughput;-><init>(IIII)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1, v1}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    const-string/jumbo v0, "throughput"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 94
    .line 95
    .line 96
    iput-wide v2, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 97
    .line 98
    const/4 p1, 0x0

    .line 99
    iput p1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 100
    .line 101
    :cond_1
    return-void
.end method

.method public setupPorts()V
    .locals 3

    .line 1
    const-string v0, "frame"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->addInputPort(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Landroid/filterpacks/performance/Throughput;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 14
    .line 15
    invoke-virtual {p0, v0, v0}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "throughput"

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Landroid/filterfw/core/Filter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

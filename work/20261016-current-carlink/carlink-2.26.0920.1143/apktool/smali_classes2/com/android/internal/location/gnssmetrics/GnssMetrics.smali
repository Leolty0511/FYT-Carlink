.class public Lcom/android/internal/location/gnssmetrics/GnssMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_BETWEEN_FIXES_MILLISECS:I = 0x3e8


# instance fields
.field private locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private logStartInElapsedRealTime:Ljava/lang/String;

.field private positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 11
    .line 12
    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 18
    .line 19
    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 25
    .line 26
    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 27
    .line 28
    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->reset()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private reset()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/32 v3, 0xf4240

    .line 11
    .line 12
    .line 13
    div-long/2addr v1, v3

    .line 14
    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logStartInElapsedRealTime:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public dumpGnssMetricsAsProtoString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-lez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numLocationReportProcessed:I

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 29
    .line 30
    mul-double/2addr v1, v3

    .line 31
    double-to-int v1, v1

    .line 32
    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->percentageLocationFailure:I

    .line 33
    .line 34
    :cond_0
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-lez v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTimeToFirstFixProcessed:I

    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    double-to-int v1, v1

    .line 57
    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTimeToFirstFixSecs:I

    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    double-to-int v1, v1

    .line 66
    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTimeToFirstFixSecs:I

    .line 67
    .line 68
    :cond_1
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-lez v1, :cond_2

    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numPositionAccuracyProcessed:I

    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    double-to-int v1, v1

    .line 91
    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanPositionAccuracyMeters:I

    .line 92
    .line 93
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    double-to-int v1, v1

    .line 100
    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationPositionAccuracyMeters:I

    .line 101
    .line 102
    :cond_2
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-lez v1, :cond_3

    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTopFourAverageCn0Processed:I

    .line 117
    .line 118
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    .line 121
    .line 122
    .line 123
    move-result-wide v1

    .line 124
    iput-wide v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTopFourAverageCn0DbHz:D

    .line 125
    .line 126
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    .line 129
    .line 130
    .line 131
    move-result-wide v1

    .line 132
    iput-wide v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTopFourAverageCn0DbHz:D

    .line 133
    .line 134
    :cond_3
    invoke-static {v0}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const/4 v1, 0x0

    .line 139
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-direct {p0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->reset()V

    .line 144
    .line 145
    .line 146
    return-object v0
.end method

.method public dumpGnssMetricsAsText()Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "GNSS_KPI_START\n  KPI logging start time: "

    .line 2
    .line 3
    invoke-static {v0}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logStartInElapsedRealTime:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, "\n  KPI logging end time: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    const-wide/32 v3, 0xf4240

    .line 22
    .line 23
    .line 24
    div-long/2addr v1, v3

    .line 25
    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "\n"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, "  Number of location reports: "

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-lez v2, :cond_0

    .line 57
    .line 58
    const-string v2, "  Percentage location failure: "

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 70
    .line 71
    mul-double/2addr v2, v4

    .line 72
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    :cond_0
    const-string v2, "  Number of TTFF reports: "

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-lez v2, :cond_1

    .line 102
    .line 103
    const-string v2, "  TTFF mean (sec): "

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    .line 111
    .line 112
    .line 113
    move-result-wide v2

    .line 114
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, "  TTFF standard deviation (sec): "

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    .line 128
    .line 129
    .line 130
    move-result-wide v2

    .line 131
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    :cond_1
    const-string v2, "  Number of position accuracy reports: "

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 155
    .line 156
    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-lez v2, :cond_2

    .line 161
    .line 162
    const-string v2, "  Position accuracy mean (m): "

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 168
    .line 169
    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    .line 170
    .line 171
    .line 172
    move-result-wide v2

    .line 173
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v2, "  Position accuracy standard deviation (m): "

    .line 180
    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    .line 187
    .line 188
    .line 189
    move-result-wide v2

    .line 190
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    :cond_2
    const-string v2, "  Number of CN0 reports: "

    .line 197
    .line 198
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 202
    .line 203
    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 214
    .line 215
    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-lez v2, :cond_3

    .line 220
    .line 221
    const-string v2, "  Top 4 Avg CN0 mean (dB-Hz): "

    .line 222
    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 227
    .line 228
    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    .line 229
    .line 230
    .line 231
    move-result-wide v2

    .line 232
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v2, "  Top 4 Avg CN0 standard deviation (dB-Hz): "

    .line 239
    .line 240
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 244
    .line 245
    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    .line 246
    .line 247
    .line 248
    move-result-wide v2

    .line 249
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    :cond_3
    const-string v2, "GNSS_KPI_END"

    .line 256
    .line 257
    invoke-static {v0, v2, v1}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    return-object v0
.end method

.method public logCn0([FI)V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ge p2, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Ljava/util/Arrays;->sort([F)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v0, p2, -0x4

    .line 13
    .line 14
    aget v1, p1, v0

    .line 15
    .line 16
    float-to-double v1, v1

    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    cmpl-double v1, v1, v3

    .line 20
    .line 21
    if-lez v1, :cond_2

    .line 22
    .line 23
    :goto_0
    if-ge v0, p2, :cond_1

    .line 24
    .line 25
    aget v1, p1, v0

    .line 26
    .line 27
    float-to-double v1, v1

    .line 28
    add-double/2addr v3, v1

    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-wide/high16 p1, 0x4010000000000000L    # 4.0

    .line 33
    .line 34
    div-double/2addr v3, p1

    .line 35
    iget-object p1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 36
    .line 37
    invoke-virtual {p1, v3, v4}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public logMissedReports(II)V
    .locals 3

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    div-int/2addr p2, p1

    .line 8
    add-int/lit8 p2, p2, -0x1

    .line 9
    .line 10
    if-lez p2, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-ge p1, p2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 16
    .line 17
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public logPositionAccuracyMeters(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    return-void
.end method

.method public logReceivedLocationStatus(Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 4
    .line 5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public logTimeToFirstFixMilliSecs(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    div-int/lit16 p1, p1, 0x3e8

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    return-void
.end method

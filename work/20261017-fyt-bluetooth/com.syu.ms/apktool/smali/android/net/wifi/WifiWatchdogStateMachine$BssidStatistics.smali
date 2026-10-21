.class Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BssidStatistics"
.end annotation


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private mBssidAvoidTimeMax:J

.field private mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

.field private mEntriesSize:I

.field private mGoodLinkTargetCount:I

.field private mGoodLinkTargetIndex:I

.field private mGoodLinkTargetRssi:I

.field private mLastTimeGood:J

.field private mLastTimePoor:J

.field private mLastTimeSample:J

.field private mRssiBase:I

.field public final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    const/16 p2, -0x69

    .line 3
    iput p2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    const/16 p2, 0x3d

    .line 4
    iput p2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    new-array p2, p2, [Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 5
    iput-object p2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    const/4 p2, 0x0

    .line 6
    :goto_0
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge p2, v0, :cond_0

    .line 7
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-direct {v1, p1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;D)V

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic access$2800(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide v0
.end method

.method public static synthetic access$2802(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide p1
.end method

.method public static synthetic access$2900(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    return p0
.end method

.method public static synthetic access$3000(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    return p0
.end method

.method public static synthetic access$4100(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide v0
.end method

.method public static synthetic access$4102(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide p1
.end method

.method public static synthetic access$4500(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$4602(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    return-wide p1
.end method

.method public static synthetic access$4702(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    return-wide p1
.end method


# virtual methods
.method public findRssiTarget(IID)I
    .locals 8

    .line 1
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    const/4 v0, 0x1

    if-ge p1, p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-eq p1, p2, :cond_4

    if-ltz p1, :cond_2

    .line 2
    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge p1, v4, :cond_2

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v4, v4, p1

    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$4300(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 3
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v3, v3, p1

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$4200(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v3

    cmpg-double v3, v3, p3

    if-gez v3, :cond_1

    .line 4
    iget p2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int/2addr p2, p1

    return p2

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    add-int/2addr v3, v0

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    .line 5
    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int/2addr v4, p1

    .line 6
    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->presetLoss(I)D

    move-result-wide v5

    cmpg-double v5, v5, p3

    if-gez v5, :cond_3

    return v4

    :cond_3
    :goto_2
    add-int/2addr p1, v1

    goto :goto_1

    .line 7
    :cond_4
    iget p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int/2addr p1, p2

    return p1
.end method

.method public newLinkDetected()V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, -0x69

    const/16 v1, -0x2d

    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 2
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-void
.end method

.method public poorLinkDetected(I)Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    sub-long v2, v0, v2

    .line 3
    :goto_0
    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    if-lez v4, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v6, v5, -0x1

    aget-object v4, v4, v6

    iget v4, v4, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->REDUCE_TIME_MS:I

    int-to-long v6, v4

    cmp-long v4, v2, v6

    if-ltz v4, :cond_0

    add-int/lit8 v5, v5, -0x1

    .line 4
    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    aget-object v2, v2, v3

    iget v2, v2, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->SAMPLE_COUNT:I

    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    add-int/lit8 v2, p1, 0x3

    add-int/lit8 v3, p1, 0x14

    const-wide v4, 0x3fb999999999999aL    # 0.1

    .line 6
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 7
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    aget-object v3, v3, v4

    iget v3, v3, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->RSSI_ADJ_DBM:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 8
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v4, v2, :cond_1

    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    .line 9
    :cond_1
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_2

    .line 10
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    aget-object v6, v6, v7

    iget v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->MIN_RSSI_DBM:I

    if-lt p1, v6, :cond_2

    move v5, v7

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object p1

    aget-object p1, p1, v5

    iget p1, p1, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    int-to-long v5, p1

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-gtz p1, :cond_3

    return v4

    :cond_3
    add-long/2addr v0, v5

    .line 12
    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return v3
.end method

.method public presetLoss(I)D
    .locals 9

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/16 v2, -0x5a

    if-gt p1, v2, :cond_0

    return-wide v0

    :cond_0
    if-lez p1, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1
    :cond_1
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800()[D

    move-result-object v2

    if-nez v2, :cond_2

    const/16 v2, 0x5a

    new-array v3, v2, [D

    .line 2
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4802([D)[D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 3
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800()[D

    move-result-object v4

    rsub-int/lit8 v5, v3, 0x5a

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double v5, v0, v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800()[D

    move-result-object v0

    neg-int p1, p1

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public updateLoss(IDI)V
    .locals 1

    if-gtz p4, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_2

    .line 2
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2, p3, p4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    :cond_2
    :goto_0
    return-void
.end method

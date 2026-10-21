.class Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/gnssmetrics/GnssMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Statistics"
.end annotation


# instance fields
.field private count:I

.field private sum:D

.field private sumSquare:D

.field final synthetic this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;


# direct methods
.method private constructor <init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)V

    return-void
.end method


# virtual methods
.method public addItem(D)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sum:D

    .line 8
    .line 9
    add-double/2addr v0, p1

    .line 10
    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sum:D

    .line 11
    .line 12
    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sumSquare:D

    .line 13
    .line 14
    mul-double/2addr p1, p1

    .line 15
    add-double/2addr p1, v0

    .line 16
    iput-wide p1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sumSquare:D

    .line 17
    .line 18
    return-void
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    return v0
.end method

.method public getMean()D
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sum:D

    iget v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getStandardDeviation()D
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sum:D

    .line 2
    .line 3
    iget v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    .line 4
    .line 5
    int-to-double v3, v2

    .line 6
    div-double/2addr v0, v3

    .line 7
    mul-double/2addr v0, v0

    .line 8
    iget-wide v3, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sumSquare:D

    .line 9
    .line 10
    int-to-double v5, v2

    .line 11
    div-double/2addr v3, v5

    .line 12
    cmpl-double v2, v3, v0

    .line 13
    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    sub-double/2addr v3, v0

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    :cond_0
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    return-wide v0
.end method

.method public reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sum:D

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sumSquare:D

    .line 9
    .line 10
    return-void
.end method

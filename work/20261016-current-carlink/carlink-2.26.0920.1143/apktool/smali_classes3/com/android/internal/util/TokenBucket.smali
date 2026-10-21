.class public Lcom/android/internal/util/TokenBucket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAvailable:I

.field private final mCapacity:I

.field private final mFillDelta:I

.field private mLastFill:J


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p2}, Lcom/android/internal/util/TokenBucket;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "deltaMs must be strictly positive"

    .line 2
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/util/TokenBucket;->mFillDelta:I

    const-string p1, "capacity must be strictly positive"

    .line 3
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    .line 4
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 5
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    return-void
.end method

.method private fill()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    long-to-int v2, v2

    .line 10
    iget v3, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    .line 11
    .line 12
    iget v4, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 13
    .line 14
    add-int/2addr v4, v2

    .line 15
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iput v2, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    .line 22
    .line 23
    return-void
.end method

.method private scaledTime()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/util/TokenBucket;->mFillDelta:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 5
    .line 6
    return v0
.end method

.method public capacity()I
    .locals 1

    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    return v0
.end method

.method public get(I)I
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    if-le p1, v1, :cond_1

    .line 4
    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    return v1

    :cond_1
    sub-int/2addr v1, p1

    .line 5
    iput v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    return p1
.end method

.method public get()Z
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/internal/util/TokenBucket;->get(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public has()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public reset(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    .line 17
    .line 18
    return-void
.end method

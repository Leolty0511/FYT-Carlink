.class public Lcom/android/internal/telephony/ExponentialBackoff;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCurrentDelayMs:J

.field private mHandler:Landroid/os/Handler;

.field private mMaximumDelayMs:J

.field private mMultiplier:I

.field private mRetryCounter:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mStartDelayMs:J


# direct methods
.method public constructor <init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    .line 4
    iput-wide p1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mStartDelayMs:J

    .line 5
    iput-wide p3, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMaximumDelayMs:J

    .line 6
    iput p5, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMultiplier:I

    .line 7
    iput-object p6, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    .line 8
    iput-object p7, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(JJILandroid/os/Looper;Ljava/lang/Runnable;)V
    .locals 8

    .line 1
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getCurrentDelay()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    return-wide v0
.end method

.method public notifyFailed()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMaximumDelayMs:J

    .line 8
    .line 9
    iget-wide v3, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mStartDelayMs:J

    .line 10
    .line 11
    long-to-double v3, v3

    .line 12
    iget v5, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMultiplier:I

    .line 13
    .line 14
    int-to-double v5, v5

    .line 15
    int-to-double v7, v0

    .line 16
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 17
    .line 18
    .line 19
    move-result-wide v5

    .line 20
    mul-double/2addr v5, v3

    .line 21
    double-to-long v3, v5

    .line 22
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    add-double/2addr v4, v2

    .line 33
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 34
    .line 35
    div-double/2addr v4, v2

    .line 36
    long-to-double v0, v0

    .line 37
    mul-double/2addr v4, v0

    .line 38
    double-to-long v0, v4

    .line 39
    iput-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    .line 51
    .line 52
    iget-wide v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    .line 3
    .line 4
    iget-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mStartDelayMs:J

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    .line 18
    .line 19
    iget-wide v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

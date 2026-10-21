.class public Landroid/net/SamplingDataTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SamplingDataTracker$SamplingSnapshot;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SamplingDataTracker"


# instance fields
.field private final MINIMUM_SAMPLED_PACKETS:I

.field private final MINIMUM_SAMPLING_INTERVAL:I

.field private mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

.field private mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

.field private mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

.field public final mSamplingDataLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    const/16 v0, 0x3a98

    .line 3
    iput v0, p0, Landroid/net/SamplingDataTracker;->MINIMUM_SAMPLING_INTERVAL:I

    const/16 v0, 0x1e

    .line 4
    iput v0, p0, Landroid/net/SamplingDataTracker;->MINIMUM_SAMPLED_PACKETS:I

    return-void
.end method

.method public static getSamplingSnapshots(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/SamplingDataTracker$SamplingSnapshot;",
            ">;)V"
        }
    .end annotation

    const-string v0, "could not close /proc/net/dev"

    const-string v1, "SamplingDataTracker"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/net/dev"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 4
    :catch_0
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[ ]+"

    .line 6
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 7
    array-length v4, v2

    const/16 v5, 0x11

    if-ge v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 8
    aget-object v5, v2, v4

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v4, v5, v4

    .line 9
    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_0

    .line 10
    :try_start_2
    new-instance v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;

    invoke-direct {v5}, Landroid/net/SamplingDataTracker$SamplingSnapshot;-><init>()V

    const/4 v6, 0x1

    .line 11
    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxByteCount:J

    const/4 v6, 0x2

    .line 12
    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketCount:J

    const/4 v6, 0x3

    .line 13
    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketErrorCount:J

    const/16 v6, 0x9

    .line 14
    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxByteCount:J

    const/16 v6, 0xa

    .line 15
    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketCount:J

    const/16 v6, 0xb

    .line 16
    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketErrorCount:J

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTimestamp:J

    .line 18
    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 19
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_5

    :catch_1
    move-object v2, v3

    goto :goto_1

    :catch_2
    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_3
    :goto_1
    :try_start_4
    const-string p0, "could not read /proc/net/dev"

    .line 20
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    goto :goto_3

    :catch_4
    :goto_2
    const-string p0, "could not find /proc/net/dev"

    .line 21
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_3

    .line 22
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    .line 23
    :catch_5
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    return-void

    :goto_5
    if-eqz v2, :cond_4

    .line 24
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    .line 25
    :catch_6
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_4
    :goto_6
    throw p0
.end method


# virtual methods
.method public getSampleDuration()I
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v2, :cond_0

    .line 3
    iget-wide v2, v2, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTimestamp:J

    iget-wide v4, v1, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTimestamp:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    monitor-exit v0

    return v1

    :cond_0
    const v1, 0x7fffffff

    .line 4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSampleTimestamp()J
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v1, :cond_0

    .line 3
    iget-wide v1, v1, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTimestamp:J

    monitor-exit v0

    return-wide v1

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    .line 4
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSampledPacketCount()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    invoke-virtual {p0, v0, v1}, Landroid/net/SamplingDataTracker;->getSampledPacketCount(Landroid/net/SamplingDataTracker$SamplingSnapshot;Landroid/net/SamplingDataTracker$SamplingSnapshot;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSampledPacketCount(Landroid/net/SamplingDataTracker$SamplingSnapshot;Landroid/net/SamplingDataTracker$SamplingSnapshot;)J
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iget-wide v0, p2, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketCount:J

    iget-wide v2, p1, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketCount:J

    sub-long/2addr v0, v2

    .line 3
    iget-wide v2, p2, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketCount:J

    iget-wide p1, p1, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketCount:J

    sub-long/2addr v2, p1

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    return-wide p1
.end method

.method public getSampledPacketErrorCount()J
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/SamplingDataTracker;->getSampledRxPacketErrorCount()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Landroid/net/SamplingDataTracker;->getSampledTxPacketErrorCount()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getSampledRxByteCount()J
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v2, :cond_0

    .line 3
    iget-wide v2, v2, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxByteCount:J

    iget-wide v4, v1, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxByteCount:J

    sub-long/2addr v2, v4

    monitor-exit v0

    return-wide v2

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    .line 4
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSampledRxPacketCount()J
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v2, :cond_0

    .line 3
    iget-wide v2, v2, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketCount:J

    iget-wide v4, v1, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketCount:J

    sub-long/2addr v2, v4

    monitor-exit v0

    return-wide v2

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    .line 4
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSampledRxPacketErrorCount()J
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v2, :cond_0

    .line 3
    iget-wide v2, v2, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketErrorCount:J

    iget-wide v4, v1, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketErrorCount:J

    sub-long/2addr v2, v4

    monitor-exit v0

    return-wide v2

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    .line 4
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSampledTxByteCount()J
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v2, :cond_0

    .line 3
    iget-wide v2, v2, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxByteCount:J

    iget-wide v4, v1, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxByteCount:J

    sub-long/2addr v2, v4

    monitor-exit v0

    return-wide v2

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    .line 4
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSampledTxPacketCount()J
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v2, :cond_0

    .line 3
    iget-wide v2, v2, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketCount:J

    iget-wide v4, v1, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketCount:J

    sub-long/2addr v2, v4

    monitor-exit v0

    return-wide v2

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    .line 4
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSampledTxPacketErrorCount()J
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v2, :cond_0

    .line 3
    iget-wide v2, v2, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketErrorCount:J

    iget-wide v4, v1, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketErrorCount:J

    sub-long/2addr v2, v4

    monitor-exit v0

    return-wide v2

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    .line 4
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetSamplingData()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-object v1, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCommonLinkQualityInfoFields(Landroid/net/LinkQualityInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/net/SamplingDataTracker;->getSampleTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/net/LinkQualityInfo;->setLastDataSampleTime(J)V

    .line 3
    invoke-virtual {p0}, Landroid/net/SamplingDataTracker;->getSampleDuration()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/net/LinkQualityInfo;->setDataSampleDuration(I)V

    .line 4
    invoke-virtual {p0}, Landroid/net/SamplingDataTracker;->getSampledPacketCount()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/net/LinkQualityInfo;->setPacketCount(J)V

    .line 5
    invoke-virtual {p0}, Landroid/net/SamplingDataTracker;->getSampledPacketErrorCount()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/net/LinkQualityInfo;->setPacketErrorCount(J)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v1, :cond_0

    .line 3
    iget-wide v2, p1, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTimestamp:J

    iget-wide v4, v1, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTimestamp:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {p0, v1, p1}, Landroid/net/SamplingDataTracker;->getSampledPacketCount(Landroid/net/SamplingDataTracker$SamplingSnapshot;Landroid/net/SamplingDataTracker$SamplingSnapshot;)J

    move-result-wide v1

    const-wide/16 v3, 0x1e

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 4
    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iput-object v1, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .line 5
    iput-object p1, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

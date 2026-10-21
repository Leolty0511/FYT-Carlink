.class public final Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mInfos:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xf

    .line 5
    .line 6
    new-array v0, v0, [J

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getCachedSize()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getCachedSizeKb()J
    .locals 5

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x2

    aget-wide v1, v0, v1

    const/4 v3, 0x6

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    const/4 v3, 0x3

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    const/16 v3, 0xb

    aget-wide v3, v0, v3

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public getFreeSize()J
    .locals 5

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x400

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public getFreeSizeKb()J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getKernelUsedSize()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getKernelUsedSizeKb()J
    .locals 5

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x4

    aget-wide v1, v0, v1

    const/4 v3, 0x7

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    const/16 v3, 0xc

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    const/16 v3, 0xd

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    const/16 v3, 0xe

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public getRawInfo()[J
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    return-object v0
.end method

.method public getSwapFreeSizeKb()J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x9

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getSwapTotalSizeKb()J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x8

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getTotalSize()J
    .locals 5

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x400

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public getTotalSizeKb()J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getZramTotalSizeKb()J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0xa

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public readMemInfo()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    .line 6
    .line 7
    invoke-static {v1}, Landroid/os/Debug;->getMemInfo([J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 16
    .line 17
    .line 18
    throw v1
.end method

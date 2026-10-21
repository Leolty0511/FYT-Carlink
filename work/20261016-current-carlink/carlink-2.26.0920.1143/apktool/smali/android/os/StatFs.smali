.class public Landroid/os/StatFs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mStat:Landroid/system/StructStatVfs;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/os/StatFs;->doStat(Ljava/lang/String;)Landroid/system/StructStatVfs;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    .line 9
    .line 10
    return-void
.end method

.method private static doStat(Ljava/lang/String;)Landroid/system/StructStatVfs;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v2, "Invalid path: "

    .line 10
    .line 11
    invoke-static {v2, p0}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v1
.end method


# virtual methods
.method public getAvailableBlocks()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bavail:J

    long-to-int v0, v0

    return v0
.end method

.method public getAvailableBlocksLong()J
    .locals 2

    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bavail:J

    return-wide v0
.end method

.method public getAvailableBytes()J
    .locals 5

    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v1, v0, Landroid/system/StructStatVfs;->f_bavail:J

    iget-wide v3, v0, Landroid/system/StructStatVfs;->f_frsize:J

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public getBlockCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_blocks:J

    long-to-int v0, v0

    return v0
.end method

.method public getBlockCountLong()J
    .locals 2

    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_blocks:J

    return-wide v0
.end method

.method public getBlockSize()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_frsize:J

    long-to-int v0, v0

    return v0
.end method

.method public getBlockSizeLong()J
    .locals 2

    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_frsize:J

    return-wide v0
.end method

.method public getFreeBlocks()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bfree:J

    long-to-int v0, v0

    return v0
.end method

.method public getFreeBlocksLong()J
    .locals 2

    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bfree:J

    return-wide v0
.end method

.method public getFreeBytes()J
    .locals 5

    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v1, v0, Landroid/system/StructStatVfs;->f_bfree:J

    iget-wide v3, v0, Landroid/system/StructStatVfs;->f_frsize:J

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public getTotalBytes()J
    .locals 5

    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v1, v0, Landroid/system/StructStatVfs;->f_blocks:J

    iget-wide v3, v0, Landroid/system/StructStatVfs;->f_frsize:J

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public restat(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/os/StatFs;->doStat(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object p1

    iput-object p1, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    return-void
.end method

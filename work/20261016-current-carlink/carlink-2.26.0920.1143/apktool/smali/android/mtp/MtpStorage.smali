.class public Landroid/mtp/MtpStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mMaxFileSize:J

.field private final mPath:Ljava/lang/String;

.field private final mRemovable:Z

.field private final mReserveSpace:J

.field private final mStorageId:I


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageVolume;Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getStorageId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Landroid/mtp/MtpStorage;->mStorageId:I

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMtpReserveSpace()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    int-to-long v0, p2

    .line 27
    const-wide/16 v2, 0x400

    .line 28
    .line 29
    mul-long/2addr v0, v2

    .line 30
    mul-long/2addr v0, v2

    .line 31
    iput-wide v0, p0, Landroid/mtp/MtpStorage;->mReserveSpace:J

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iput-boolean p2, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    iput-wide p1, p0, Landroid/mtp/MtpStorage;->mMaxFileSize:J

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFileSize()J
    .locals 2

    iget-wide v0, p0, Landroid/mtp/MtpStorage;->mMaxFileSize:J

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getReserveSpace()J
    .locals 2

    iget-wide v0, p0, Landroid/mtp/MtpStorage;->mReserveSpace:J

    return-wide v0
.end method

.method public final getStorageId()I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpStorage;->mStorageId:I

    return v0
.end method

.method public final isRemovable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    return v0
.end method

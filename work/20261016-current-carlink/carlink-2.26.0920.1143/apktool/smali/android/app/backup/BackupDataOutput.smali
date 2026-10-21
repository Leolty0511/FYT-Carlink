.class public Landroid/app/backup/BackupDataOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mBackupWriter:J

.field final mQuota:J


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;J)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-wide p2, p0, Landroid/app/backup/BackupDataOutput;->mQuota:J

    .line 5
    invoke-static {p1}, Landroid/app/backup/BackupDataOutput;->ctor(Ljava/io/FileDescriptor;)J

    move-result-wide p2

    iput-wide p2, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Native initialization failed with fd="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static native ctor(Ljava/io/FileDescriptor;)J
.end method

.method private static native dtor(J)V
.end method

.method private static native setKeyPrefix_native(JLjava/lang/String;)V
.end method

.method private static native writeEntityData_native(J[BI)I
.end method

.method private static native writeEntityHeader_native(JLjava/lang/String;I)I
.end method


# virtual methods
.method public finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/app/backup/BackupDataOutput;->dtor(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public getQuota()J
    .locals 2

    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mQuota:J

    return-wide v0
.end method

.method public setKeyPrefix(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    invoke-static {v0, v1, p1}, Landroid/app/backup/BackupDataOutput;->setKeyPrefix_native(JLjava/lang/String;)V

    return-void
.end method

.method public writeEntityData([BI)I
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Landroid/app/backup/BackupDataOutput;->writeEntityData_native(J[BI)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    new-instance p2, Ljava/io/IOException;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v1, "result=0x"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p2
.end method

.method public writeEntityHeader(Ljava/lang/String;I)I
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader_native(JLjava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    new-instance p2, Ljava/io/IOException;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v1, "result=0x"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p2
.end method

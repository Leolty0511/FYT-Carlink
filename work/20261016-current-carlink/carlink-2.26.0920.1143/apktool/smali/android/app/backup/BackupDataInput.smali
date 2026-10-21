.class public Landroid/app/backup/BackupDataInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupDataInput$EntityHeader;
    }
.end annotation


# instance fields
.field mBackupReader:J

.field private mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

.field private mHeaderReady:Z


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/app/backup/BackupDataInput$EntityHeader;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Landroid/app/backup/BackupDataInput$EntityHeader;-><init>(Landroid/app/backup/BackupDataInput$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroid/app/backup/BackupDataInput;->ctor(Ljava/io/FileDescriptor;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    cmp-long v0, v0, v2

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Native initialization failed with fd="

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method private static native ctor(Ljava/io/FileDescriptor;)J
.end method

.method private static native dtor(J)V
.end method

.method private native readEntityData_native(J[BII)I
.end method

.method private native readNextHeader_native(JLandroid/app/backup/BackupDataInput$EntityHeader;)I
.end method

.method private native skipEntityData_native(J)I
.end method


# virtual methods
.method public finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-wide v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/app/backup/BackupDataInput;->dtor(J)V
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

.method public getDataSize()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    .line 6
    .line 7
    iget v0, v0, Landroid/app/backup/BackupDataInput$EntityHeader;->dataSize:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "Entity header not read"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    .line 6
    .line 7
    iget-object v0, v0, Landroid/app/backup/BackupDataInput$EntityHeader;->key:Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "Entity header not read"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public readEntityData([BII)I
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-wide v2, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    .line 6
    .line 7
    move-object v1, p0

    .line 8
    move-object v4, p1

    .line 9
    move v5, p2

    .line 10
    move v6, p3

    .line 11
    invoke-direct/range {v1 .. v6}, Landroid/app/backup/BackupDataInput;->readEntityData_native(J[BII)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-ltz p1, :cond_0

    .line 16
    .line 17
    return p1

    .line 18
    :cond_0
    new-instance p2, Ljava/io/IOException;

    .line 19
    .line 20
    new-instance p3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v0, "result=0x"

    .line 23
    .line 24
    .line 25
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p3}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p2

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string p2, "Entity header not read"

    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public readNextHeader()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    .line 2
    .line 3
    iget-object v2, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, v2}, Landroid/app/backup/BackupDataInput;->readNextHeader_native(JLandroid/app/backup/BackupDataInput$EntityHeader;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    iput-boolean v1, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    iput-boolean v1, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    .line 22
    .line 23
    new-instance v1, Ljava/io/IOException;

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v3, "failed: 0x"

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v2}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1
.end method

.method public skipEntityData()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Landroid/app/backup/BackupDataInput;->skipEntityData_native(J)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v1, "Entity header not read"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

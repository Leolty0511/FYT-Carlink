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
.field public mBackupReader:I

.field private mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

.field private mHeaderReady:Z


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/app/backup/BackupDataInput$EntityHeader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/backup/BackupDataInput$EntityHeader;-><init>(Landroid/app/backup/BackupDataInput$1;)V

    iput-object v0, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Landroid/app/backup/BackupDataInput;->ctor(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:I

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native initialization failed with fd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native ctor(Ljava/io/FileDescriptor;)I
.end method

.method private static native dtor(I)V
.end method

.method private native readEntityData_native(I[BII)I
.end method

.method private native readNextHeader_native(ILandroid/app/backup/BackupDataInput$EntityHeader;)I
.end method

.method private native skipEntityData_native(I)I
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:I

    invoke-static {v0}, Landroid/app/backup/BackupDataInput;->dtor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDataSize()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    iget v0, v0, Landroid/app/backup/BackupDataInput$EntityHeader;->dataSize:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity header not read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    iget-object v0, v0, Landroid/app/backup/BackupDataInput$EntityHeader;->key:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity header not read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readEntityData([BII)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/app/backup/BackupDataInput;->readEntityData_native(I[BII)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 3
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "result=0x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Entity header not read"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readNextHeader()Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:I

    iget-object v1, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    invoke-direct {p0, v0, v1}, Landroid/app/backup/BackupDataInput;->readNextHeader_native(ILandroid/app/backup/BackupDataInput$EntityHeader;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    return v0

    :cond_0
    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 3
    iput-boolean v1, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    return v1

    .line 4
    :cond_1
    iput-boolean v1, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    .line 5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public skipEntityData()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:I

    invoke-direct {p0, v0}, Landroid/app/backup/BackupDataInput;->skipEntityData_native(I)I

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity header not read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

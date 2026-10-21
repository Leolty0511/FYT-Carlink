.class public Landroid/app/backup/BackupDataOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBackupWriter:I


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Landroid/app/backup/BackupDataOutput;->ctor(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:I

    if-eqz v0, :cond_0

    return-void

    .line 4
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

.method private static native setKeyPrefix_native(ILjava/lang/String;)V
.end method

.method private static native writeEntityData_native(I[BI)I
.end method

.method private static native writeEntityHeader_native(ILjava/lang/String;I)I
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:I

    invoke-static {v0}, Landroid/app/backup/BackupDataOutput;->dtor(I)V
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

.method public setKeyPrefix(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:I

    invoke-static {v0, p1}, Landroid/app/backup/BackupDataOutput;->setKeyPrefix_native(ILjava/lang/String;)V

    return-void
.end method

.method public writeEntityData([BI)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:I

    invoke-static {v0, p1, p2}, Landroid/app/backup/BackupDataOutput;->writeEntityData_native(I[BI)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 2
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "result=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public writeEntityHeader(Ljava/lang/String;I)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:I

    invoke-static {v0, p1, p2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader_native(ILjava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 2
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "result=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

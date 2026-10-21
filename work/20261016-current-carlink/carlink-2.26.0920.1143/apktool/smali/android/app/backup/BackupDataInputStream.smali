.class public Landroid/app/backup/BackupDataInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field dataSize:I

.field key:Ljava/lang/String;

.field mData:Landroid/app/backup/BackupDataInput;

.field mOneByte:[B


# direct methods
.method public constructor <init>(Landroid/app/backup/BackupDataInput;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->key:Ljava/lang/String;

    return-object v0
.end method

.method public read()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mOneByte:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [B

    .line 2
    iput-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mOneByte:[B

    .line 3
    :cond_0
    iget-object v2, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 4
    aget-byte v0, v0, v3

    return v0
.end method

.method public read([B)I
    .locals 3

    .line 6
    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    .line 5
    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/app/backup/BackupDataInputStream;->dataSize:I

    return v0
.end method

.class public Lnet/lingala/zip4j/io/ZipFileHeader;
.super Ljava/lang/Object;
.source "ZipFileHeader.java"


# instance fields
.field private compressedSize:J

.field private compressionMethod:I

.field private fileName:Ljava/lang/String;

.field private isEncrypted:Z

.field public final keys:[I

.field private offset:J

.field private uncompressedSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/lingala/zip4j/io/ZipFileHeader;->keys:[I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lingala/zip4j/io/ZipFileHeader;->uncompressedSize:J

    .line 46
    return-void
.end method


# virtual methods
.method public decryptData([BII)V
    .locals 2
    .param p1, "buff"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 37
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/ZipFileHeader;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-static {}, Lnet/lingala/zip4j/io/ZipJni;->getInstance()Lnet/lingala/zip4j/io/ZipJni;

    move-result-object v0

    .line 39
    .local v0, "zipJni":Lnet/lingala/zip4j/io/ZipJni;
    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lnet/lingala/zip4j/io/ZipFileHeader;->keys:[I

    invoke-virtual {v0, v1, p1, p2, p3}, Lnet/lingala/zip4j/io/ZipJni;->decryptData([I[BII)V

    .line 42
    .end local v0    # "zipJni":Lnet/lingala/zip4j/io/ZipJni;
    :cond_0
    return-void
.end method

.method public getCompressedSize()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lnet/lingala/zip4j/io/ZipFileHeader;->compressedSize:J

    return-wide v0
.end method

.method public getCompressionMethod()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lnet/lingala/zip4j/io/ZipFileHeader;->compressionMethod:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipFileHeader;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lnet/lingala/zip4j/io/ZipFileHeader;->offset:J

    return-wide v0
.end method

.method public getUncompressedSize()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lnet/lingala/zip4j/io/ZipFileHeader;->uncompressedSize:J

    return-wide v0
.end method

.method public initKeys([BLjava/lang/String;I)V
    .locals 2
    .param p1, "headerBytes"    # [B
    .param p2, "strName"    # Ljava/lang/String;
    .param p3, "iExtra"    # I

    .prologue
    .line 31
    invoke-static {}, Lnet/lingala/zip4j/io/ZipJni;->getInstance()Lnet/lingala/zip4j/io/ZipJni;

    move-result-object v0

    .line 32
    .local v0, "zipJni":Lnet/lingala/zip4j/io/ZipJni;
    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lnet/lingala/zip4j/io/ZipFileHeader;->keys:[I

    invoke-virtual {v0, v1, p1, p2, p3}, Lnet/lingala/zip4j/io/ZipJni;->initKeys([I[BLjava/lang/String;I)V

    .line 34
    :cond_0
    return-void
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/ZipFileHeader;->isEncrypted:Z

    return v0
.end method

.method public setCompressedSize(J)V
    .locals 1
    .param p1, "compressedSize"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lnet/lingala/zip4j/io/ZipFileHeader;->compressedSize:J

    .line 62
    return-void
.end method

.method public setCompressionMethod(I)V
    .locals 0
    .param p1, "compressionMethod"    # I

    .prologue
    .line 53
    iput p1, p0, Lnet/lingala/zip4j/io/ZipFileHeader;->compressionMethod:I

    .line 54
    return-void
.end method

.method public setEncrypted(Z)V
    .locals 0
    .param p1, "isEncrypted"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lnet/lingala/zip4j/io/ZipFileHeader;->isEncrypted:Z

    .line 94
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lnet/lingala/zip4j/io/ZipFileHeader;->fileName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setOffset(J)V
    .locals 1
    .param p1, "offset"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lnet/lingala/zip4j/io/ZipFileHeader;->offset:J

    .line 78
    return-void
.end method

.method public setUncompressedSize(J)V
    .locals 1
    .param p1, "uncompressedSize"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lnet/lingala/zip4j/io/ZipFileHeader;->uncompressedSize:J

    .line 70
    return-void
.end method

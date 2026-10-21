.class public Lnet/lingala/zip4j/io/ZipInputStream;
.super Ljava/io/InputStream;
.source "ZipInputStream.java"


# instance fields
.field private buff:[B

.field protected bytesRead:J

.field private bytesWritten:J

.field private inflater:Ljava/util/zip/Inflater;

.field private length:J

.field localFileHeader:Lnet/lingala/zip4j/io/ZipFileHeader;

.field private oneByteBuff:[B

.field private uncompressedSize:J

.field private zipIn:Lnet/lingala/zip4j/io/ZipIn;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/ZipIn;Lnet/lingala/zip4j/io/ZipFileHeader;JJJZ)V
    .locals 5
    .param p1, "zipIn"    # Lnet/lingala/zip4j/io/ZipIn;
    .param p2, "localFileHeader"    # Lnet/lingala/zip4j/io/ZipFileHeader;
    .param p3, "start"    # J
    .param p5, "len"    # J
    .param p7, "uncompressedSize"    # J
    .param p9, "bInflate"    # Z

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    .line 37
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 29
    new-array v0, v1, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/ZipInputStream;->oneByteBuff:[B

    .line 39
    iput-object p1, p0, Lnet/lingala/zip4j/io/ZipInputStream;->zipIn:Lnet/lingala/zip4j/io/ZipIn;

    .line 40
    iput-wide v2, p0, Lnet/lingala/zip4j/io/ZipInputStream;->bytesRead:J

    .line 41
    iput-wide p5, p0, Lnet/lingala/zip4j/io/ZipInputStream;->length:J

    .line 42
    iput-object p2, p0, Lnet/lingala/zip4j/io/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/io/ZipFileHeader;

    .line 43
    if-eqz p9, :cond_0

    .line 44
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/ZipInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 45
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/ZipInputStream;->buff:[B

    .line 46
    iput-wide p7, p0, Lnet/lingala/zip4j/io/ZipInputStream;->uncompressedSize:J

    .line 47
    iput-wide v2, p0, Lnet/lingala/zip4j/io/ZipInputStream;->bytesWritten:J

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipInputStream;->inflater:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/io/ZipInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 121
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipInputStream;->zipIn:Lnet/lingala/zip4j/io/ZipIn;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/ZipIn;->close()V

    .line 122
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 53
    iget-object v1, p0, Lnet/lingala/zip4j/io/ZipInputStream;->oneByteBuff:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lnet/lingala/zip4j/io/ZipInputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipInputStream;->oneByteBuff:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 58
    iget-object v5, p0, Lnet/lingala/zip4j/io/ZipInputStream;->inflater:Ljava/util/zip/Inflater;

    if-eqz v5, :cond_7

    .line 61
    :try_start_0
    iget-wide v6, p0, Lnet/lingala/zip4j/io/ZipInputStream;->bytesWritten:J

    iget-wide v8, p0, Lnet/lingala/zip4j/io/ZipInputStream;->uncompressedSize:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_6

    move v2, v4

    .line 91
    :goto_0
    return v2

    .line 65
    .local v2, "n":I
    :cond_0
    iget-object v5, p0, Lnet/lingala/zip4j/io/ZipInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->finished()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lnet/lingala/zip4j/io/ZipInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v2, v4

    .line 66
    goto :goto_0

    .line 68
    :cond_2
    iget-object v5, p0, Lnet/lingala/zip4j/io/ZipInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 69
    iget-object v5, p0, Lnet/lingala/zip4j/io/ZipInputStream;->buff:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lnet/lingala/zip4j/io/ZipInputStream;->buff:[B

    array-length v7, v7

    invoke-virtual {p0, v5, v6, v7}, Lnet/lingala/zip4j/io/ZipInputStream;->readNormal([BII)I

    move-result v1

    .line 70
    .local v1, "lenTmp":I
    if-ne v1, v4, :cond_5

    .line 71
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "Unexpected end of ZLIB input stream"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1    # "lenTmp":I
    .end local v2    # "n":I
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/util/zip/DataFormatException;
    const-string v3, "Invalid ZLIB data format"

    .line 80
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 81
    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 83
    :cond_3
    iget-object v4, p0, Lnet/lingala/zip4j/io/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/io/ZipFileHeader;

    if-eqz v4, :cond_4

    .line 84
    iget-object v4, p0, Lnet/lingala/zip4j/io/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/io/ZipFileHeader;

    invoke-virtual {v4}, Lnet/lingala/zip4j/io/ZipFileHeader;->isEncrypted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " - Wrong Password?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    :cond_4
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    .end local v0    # "e":Ljava/util/zip/DataFormatException;
    .end local v3    # "s":Ljava/lang/String;
    .restart local v1    # "lenTmp":I
    .restart local v2    # "n":I
    :cond_5
    :try_start_1
    iget-object v5, p0, Lnet/lingala/zip4j/io/ZipInputStream;->inflater:Ljava/util/zip/Inflater;

    iget-object v6, p0, Lnet/lingala/zip4j/io/ZipInputStream;->buff:[B

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v1}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 64
    .end local v1    # "lenTmp":I
    .end local v2    # "n":I
    :cond_6
    iget-object v5, p0, Lnet/lingala/zip4j/io/ZipInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v5, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    .restart local v2    # "n":I
    if-eqz v2, :cond_0

    .line 76
    iget-wide v4, p0, Lnet/lingala/zip4j/io/ZipInputStream;->bytesWritten:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lnet/lingala/zip4j/io/ZipInputStream;->bytesWritten:J
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 91
    .end local v2    # "n":I
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/ZipInputStream;->readNormal([BII)I

    move-result v2

    goto :goto_0
.end method

.method public readNormal([BII)I
    .locals 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, -0x1

    .line 96
    .local v0, "count":I
    int-to-long v2, p3

    iget-wide v4, p0, Lnet/lingala/zip4j/io/ZipInputStream;->length:J

    iget-wide v6, p0, Lnet/lingala/zip4j/io/ZipInputStream;->bytesRead:J

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 97
    iget-wide v2, p0, Lnet/lingala/zip4j/io/ZipInputStream;->length:J

    iget-wide v4, p0, Lnet/lingala/zip4j/io/ZipInputStream;->bytesRead:J

    sub-long/2addr v2, v4

    long-to-int p3, v2

    .line 98
    if-gtz p3, :cond_0

    .line 99
    const/4 v2, -0x1

    move v1, v0

    .line 111
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    return v2

    .line 102
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_0
    iget-object v3, p0, Lnet/lingala/zip4j/io/ZipInputStream;->zipIn:Lnet/lingala/zip4j/io/ZipIn;

    monitor-enter v3

    .line 103
    :try_start_0
    iget-object v2, p0, Lnet/lingala/zip4j/io/ZipInputStream;->zipIn:Lnet/lingala/zip4j/io/ZipIn;

    invoke-virtual {v2, p1, p2, p3}, Lnet/lingala/zip4j/io/ZipIn;->read([BII)I

    move-result v0

    .line 102
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    if-lez v0, :cond_1

    .line 107
    iget-object v2, p0, Lnet/lingala/zip4j/io/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/io/ZipFileHeader;

    invoke-virtual {v2, p1, p2, v0}, Lnet/lingala/zip4j/io/ZipFileHeader;->decryptData([BII)V

    .line 108
    iget-wide v2, p0, Lnet/lingala/zip4j/io/ZipInputStream;->bytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnet/lingala/zip4j/io/ZipInputStream;->bytesRead:J

    :cond_1
    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    move v2, v0

    .line 111
    goto :goto_0

    .line 102
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public seek(J)V
    .locals 1
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipInputStream;->zipIn:Lnet/lingala/zip4j/io/ZipIn;

    invoke-virtual {v0, p1, p2}, Lnet/lingala/zip4j/io/ZipIn;->seek(J)V

    .line 126
    return-void
.end method

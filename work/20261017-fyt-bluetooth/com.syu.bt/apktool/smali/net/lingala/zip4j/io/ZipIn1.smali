.class public Lnet/lingala/zip4j/io/ZipIn1;
.super Lnet/lingala/zip4j/io/ZipIn;
.source "ZipIn1.java"


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0
    .param p1, "randomAccessFile"    # Ljava/io/RandomAccessFile;

    .prologue
    .line 24
    invoke-direct {p0}, Lnet/lingala/zip4j/io/ZipIn;-><init>()V

    .line 25
    iput-object p1, p0, Lnet/lingala/zip4j/io/ZipIn1;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 26
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
    .line 56
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipIn1;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 57
    return-void
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipIn1;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipIn1;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public readLeInt([B)J
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipIn1;->randomAccessFile:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 51
    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/io/ZipIn1;->readLongLittleEndian([B)J

    move-result-wide v0

    return-wide v0
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
    .line 35
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipIn1;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 36
    return-void
.end method

.method public skip(J)V
    .locals 3
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipIn1;->randomAccessFile:Ljava/io/RandomAccessFile;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 31
    return-void
.end method

.class public Lcom/android/internal/util/SizedInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private mLength:J

.field private final mWrapped:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/util/SizedInputStream;->mWrapped:Ljava/io/InputStream;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/util/SizedInputStream;->mWrapped:Ljava/io/InputStream;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public read()I
    .locals 1

    .line 1
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8

    .line 2
    iget-wide v0, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    if-gtz v4, :cond_0

    return v5

    :cond_0
    int-to-long v6, p3

    cmp-long v4, v6, v0

    if-lez v4, :cond_1

    long-to-int p3, v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/internal/util/SizedInputStream;->mWrapped:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_3

    .line 4
    iget-wide p2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    cmp-long p2, p2, v2

    if-gtz p2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected EOF; expected "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    const-string p3, " more bytes"

    .line 6
    invoke-static {p2, v0, v1, p3}, Landroid/app/m;->k(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    iget-wide p2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    :goto_0
    return p1
.end method

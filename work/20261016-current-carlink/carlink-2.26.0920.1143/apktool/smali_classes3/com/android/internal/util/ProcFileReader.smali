.class public Lcom/android/internal/util/ProcFileReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final mBuffer:[B

.field private mLineFinished:Z

.field private final mStream:Ljava/io/InputStream;

.field private mTail:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    .line 4
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    .line 5
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    return-void
.end method

.method private consumeBuf(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 4
    .line 5
    sub-int/2addr v1, p1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 11
    .line 12
    sub-int/2addr v0, p1

    .line 13
    iput v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private fillBuf()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 5
    .line 6
    sub-int/2addr v1, v2

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    .line 10
    .line 11
    invoke-virtual {v3, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    iget v1, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 19
    .line 20
    add-int/2addr v1, v0

    .line 21
    iput v1, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 22
    .line 23
    :cond_0
    return v0

    .line 24
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 25
    .line 26
    const-string v1, "attempting to fill already-full buffer"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method private invalidLong(I)Ljava/lang/NumberFormatException;
    .locals 5

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    const/4 v3, 0x0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string p1, "invalid long: "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private nextTokenIndex()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget v1, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 9
    .line 10
    if-ge v0, v1, :cond_3

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    .line 13
    .line 14
    aget-byte v1, v1, v0

    .line 15
    .line 16
    const/16 v2, 0xa

    .line 17
    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    const/16 v2, 0x20

    .line 25
    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    return v0

    .line 29
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-lez v1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    new-instance v0, Ljava/net/ProtocolException;

    .line 40
    .line 41
    const-string v1, "End of stream while looking for token boundary"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method

.method private parseAndConsumeLong(I)J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-byte v0, v0, v1

    .line 5
    .line 6
    const/16 v2, 0x2d

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    move v1, v3

    .line 12
    :cond_0
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    move v0, v1

    .line 15
    :goto_0
    if-ge v0, p1, :cond_3

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    .line 18
    .line 19
    aget-byte v2, v2, v0

    .line 20
    .line 21
    add-int/lit8 v2, v2, -0x30

    .line 22
    .line 23
    if-ltz v2, :cond_2

    .line 24
    .line 25
    const/16 v6, 0x9

    .line 26
    .line 27
    if-gt v2, v6, :cond_2

    .line 28
    .line 29
    const-wide/16 v6, 0xa

    .line 30
    .line 31
    mul-long/2addr v6, v4

    .line 32
    int-to-long v8, v2

    .line 33
    sub-long/2addr v6, v8

    .line 34
    cmp-long v2, v6, v4

    .line 35
    .line 36
    if-gtz v2, :cond_1

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    move-wide v4, v6

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/util/ProcFileReader;->invalidLong(I)Ljava/lang/NumberFormatException;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    throw p1

    .line 47
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/util/ProcFileReader;->invalidLong(I)Ljava/lang/NumberFormatException;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    throw p1

    .line 52
    :cond_3
    add-int/2addr p1, v3

    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 54
    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    neg-long v4, v4

    .line 60
    :goto_1
    return-wide v4
.end method

.method private parseAndConsumeString(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public finishLine()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 10
    .line 11
    if-ge v1, v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    .line 14
    .line 15
    aget-byte v0, v0, v1

    .line 16
    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-lez v0, :cond_3

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    .line 38
    .line 39
    const-string v1, "End of stream while looking for line boundary"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public hasMoreData()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextInt()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-gtz v2, :cond_0

    .line 11
    .line 12
    const-wide/32 v2, -0x80000000

    .line 13
    .line 14
    .line 15
    cmp-long v2, v0, v2

    .line 16
    .line 17
    if-ltz v2, :cond_0

    .line 18
    .line 19
    long-to-int v0, v0

    .line 20
    return v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 22
    .line 23
    const-string v1, "parsed value larger than integer"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public nextLong()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeLong(I)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0

    .line 13
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    .line 14
    .line 15
    const-string v1, "Missing required long"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public nextOptionalLong(J)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return-wide p1

    .line 9
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeLong(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method

.method public nextString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    .line 14
    .line 15
    const-string v1, "Missing required string"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

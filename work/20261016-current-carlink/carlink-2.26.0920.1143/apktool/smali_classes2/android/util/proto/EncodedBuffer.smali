.class public final Landroid/util/proto/EncodedBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "EncodedBuffer"


# instance fields
.field private mBufferCount:I

.field private final mBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mChunkSize:I

.field private mReadBufIndex:I

.field private mReadBuffer:[B

.field private mReadIndex:I

.field private mReadLimit:I

.field private mReadableSize:I

.field private mWriteBufIndex:I

.field private mWriteBuffer:[B

.field private mWriteIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/util/proto/EncodedBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    .line 5
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    if-gtz p1, :cond_0

    const/16 p1, 0x2000

    .line 6
    :cond_0
    iput p1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 7
    new-array p1, p1, [B

    iput-object p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    return-void
.end method

.method private static dumpByteString(Ljava/lang/String;Ljava/lang/String;I[B)I
    .locals 6

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 4
    rem-int/lit8 v3, v2, 0x10

    const/16 v4, 0x20

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x5b

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int v3, p2, v2

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v3, 0x5d

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 13
    :goto_1
    aget-byte v3, p3, v2

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_2

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    .line 14
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x57

    int-to-char v4, v4

    .line 15
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    if-ge v3, v5, :cond_3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x57

    int-to-char v3, v3

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static dumpByteString(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Landroid/util/proto/EncodedBuffer;->dumpByteString(Ljava/lang/String;Ljava/lang/String;I[B)I

    return-void
.end method

.method public static getRawVarint32Size(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static getRawVarint64Size(J)I
    .locals 4

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method public static getRawZigZag32Size(I)I
    .locals 0

    invoke-static {p0}, Landroid/util/proto/EncodedBuffer;->zigZag32(I)I

    move-result p0

    invoke-static {p0}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static getRawZigZag64Size(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/proto/EncodedBuffer;->zigZag64(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result p0

    return p0
.end method

.method private nextWriteBuffer()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 6
    .line 7
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 16
    .line 17
    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, [B

    .line 36
    .line 37
    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 38
    .line 39
    :goto_0
    const/4 v0, 0x0

    .line 40
    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 41
    .line 42
    return-void
.end method

.method private static zigZag32(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method private static zigZag64(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public dumpBuffers(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo v3, "{"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v4, "} "

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v1, v4}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, [B

    .line 28
    .line 29
    invoke-static {p1, v3, v2, v4}, Landroid/util/proto/EncodedBuffer;->dumpByteString(Ljava/lang/String;Ljava/lang/String;I[B)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    add-int/2addr v2, v3

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public editRawFixed32(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 4
    .line 5
    div-int v1, p1, v1

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [B

    .line 12
    .line 13
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 14
    .line 15
    rem-int v2, p1, v1

    .line 16
    .line 17
    int-to-byte v3, p2

    .line 18
    aput-byte v3, v0, v2

    .line 19
    .line 20
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 21
    .line 22
    add-int/lit8 v2, p1, 0x1

    .line 23
    .line 24
    div-int v1, v2, v1

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, [B

    .line 31
    .line 32
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 33
    .line 34
    rem-int/2addr v2, v1

    .line 35
    shr-int/lit8 v3, p2, 0x8

    .line 36
    .line 37
    int-to-byte v3, v3

    .line 38
    aput-byte v3, v0, v2

    .line 39
    .line 40
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 41
    .line 42
    add-int/lit8 v2, p1, 0x2

    .line 43
    .line 44
    div-int v1, v2, v1

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, [B

    .line 51
    .line 52
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 53
    .line 54
    rem-int/2addr v2, v1

    .line 55
    shr-int/lit8 v3, p2, 0x10

    .line 56
    .line 57
    int-to-byte v3, v3

    .line 58
    aput-byte v3, v0, v2

    .line 59
    .line 60
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 61
    .line 62
    add-int/lit8 p1, p1, 0x3

    .line 63
    .line 64
    div-int v1, p1, v1

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, [B

    .line 71
    .line 72
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 73
    .line 74
    rem-int/2addr p1, v1

    .line 75
    shr-int/lit8 p2, p2, 0x18

    .line 76
    .line 77
    int-to-byte p2, p2

    .line 78
    aput-byte p2, v0, p1

    .line 79
    .line 80
    return-void
.end method

.method public getBytes(I)[B
    .locals 7

    .line 1
    new-array v0, p1, [B

    .line 2
    .line 3
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 4
    .line 5
    div-int v1, p1, v1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_0
    if-ge v3, v1, :cond_0

    .line 11
    .line 12
    iget-object v5, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    check-cast v5, [B

    .line 19
    .line 20
    iget v6, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 21
    .line 22
    invoke-static {v5, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 23
    .line 24
    .line 25
    iget v5, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 26
    .line 27
    add-int/2addr v4, v5

    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v5, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 32
    .line 33
    mul-int/2addr v1, v5

    .line 34
    sub-int/2addr p1, v1

    .line 35
    if-lez p1, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, [B

    .line 44
    .line 45
    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-object v0
.end method

.method public getChunkCount()I
    .locals 1

    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDebugString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "EncodedBuffer( mChunkSize="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " mBuffers.size="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " mBufferCount="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, " mWriteIndex="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, " mWriteBufIndex="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, " mReadBufIndex="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, " mReadIndex="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, " mReadableSize="

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, " mReadLimit="

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    .line 93
    .line 94
    const-string v2, " )"

    .line 95
    .line 96
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    return-object v0
.end method

.method public getRawFixed32At(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 4
    .line 5
    div-int v1, p1, v1

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [B

    .line 12
    .line 13
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 14
    .line 15
    rem-int v2, p1, v1

    .line 16
    .line 17
    aget-byte v0, v0, v2

    .line 18
    .line 19
    and-int/lit16 v0, v0, 0xff

    .line 20
    .line 21
    iget-object v2, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 22
    .line 23
    add-int/lit8 v3, p1, 0x1

    .line 24
    .line 25
    div-int v1, v3, v1

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, [B

    .line 32
    .line 33
    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 34
    .line 35
    rem-int/2addr v3, v2

    .line 36
    aget-byte v1, v1, v3

    .line 37
    .line 38
    and-int/lit16 v1, v1, 0xff

    .line 39
    .line 40
    shl-int/lit8 v1, v1, 0x8

    .line 41
    .line 42
    or-int/2addr v0, v1

    .line 43
    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 44
    .line 45
    add-int/lit8 v3, p1, 0x2

    .line 46
    .line 47
    div-int v2, v3, v2

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, [B

    .line 54
    .line 55
    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 56
    .line 57
    rem-int/2addr v3, v2

    .line 58
    aget-byte v1, v1, v3

    .line 59
    .line 60
    and-int/lit16 v1, v1, 0xff

    .line 61
    .line 62
    shl-int/lit8 v1, v1, 0x10

    .line 63
    .line 64
    or-int/2addr v0, v1

    .line 65
    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x3

    .line 68
    .line 69
    div-int v2, p1, v2

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, [B

    .line 76
    .line 77
    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 78
    .line 79
    rem-int/2addr p1, v2

    .line 80
    aget-byte p1, v1, p1

    .line 81
    .line 82
    and-int/lit16 p1, p1, 0xff

    .line 83
    .line 84
    shl-int/lit8 p1, p1, 0x18

    .line 85
    .line 86
    or-int/2addr p1, v0

    .line 87
    return p1
.end method

.method public getReadPos()I
    .locals 2

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getReadableSize()I
    .locals 1

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    return v0
.end method

.method public getWriteBufIndex()I
    .locals 1

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    return v0
.end method

.method public getWriteIndex()I
    .locals 1

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    return v0
.end method

.method public getWritePos()I
    .locals 2

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readRawByte()B
    .locals 3

    .line 1
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 2
    .line 3
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_2

    .line 6
    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 12
    .line 13
    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    .line 14
    .line 15
    if-ge v1, v2, :cond_2

    .line 16
    .line 17
    :cond_0
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 18
    .line 19
    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 20
    .line 21
    if-lt v1, v2, :cond_1

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 26
    .line 27
    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, [B

    .line 34
    .line 35
    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    .line 41
    .line 42
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 43
    .line 44
    add-int/lit8 v2, v1, 0x1

    .line 45
    .line 46
    iput v2, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 47
    .line 48
    aget-byte v0, v0, v1

    .line 49
    .line 50
    return v0

    .line 51
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "Trying to read too much data mReadBufIndex="

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, " mBufferCount="

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v2, " mReadIndex="

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, " mReadLimit="

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0
.end method

.method public readRawFixed32()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 12
    .line 13
    shl-int/lit8 v1, v1, 0x8

    .line 14
    .line 15
    or-int/2addr v0, v1

    .line 16
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 21
    .line 22
    shl-int/lit8 v1, v1, 0x10

    .line 23
    .line 24
    or-int/2addr v0, v1

    .line 25
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    and-int/lit16 v1, v1, 0xff

    .line 30
    .line 31
    shl-int/lit8 v1, v1, 0x18

    .line 32
    .line 33
    or-int/2addr v0, v1

    .line 34
    return v0
.end method

.method public readRawUnsigned()J
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    and-int/lit8 v4, v3, 0x7f

    .line 9
    .line 10
    int-to-long v4, v4

    .line 11
    shl-long/2addr v4, v0

    .line 12
    or-long/2addr v1, v4

    .line 13
    and-int/lit16 v3, v3, 0x80

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    return-wide v1

    .line 18
    :cond_0
    add-int/lit8 v0, v0, 0x7

    .line 19
    .line 20
    const/16 v3, 0x40

    .line 21
    .line 22
    if-gt v0, v3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Landroid/util/proto/ProtoParseException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "Varint too long -- "

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public rewindRead()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, [B

    .line 9
    .line 10
    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    .line 11
    .line 12
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 13
    .line 14
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 15
    .line 16
    return-void
.end method

.method public rewindWriteTo(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gt p1, v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 8
    .line 9
    div-int v1, p1, v0

    .line 10
    .line 11
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 12
    .line 13
    rem-int/2addr p1, v0

    .line 14
    iput p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, [B

    .line 35
    .line 36
    iput-object p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    const-string v1, "rewindWriteTo only can go backwards"

    .line 42
    .line 43
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public skipRead(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 7
    .line 8
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 9
    .line 10
    sub-int v2, v0, v1

    .line 11
    .line 12
    if-gt p1, v2, :cond_1

    .line 13
    .line 14
    add-int/2addr v1, p1

    .line 15
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    sub-int v1, v0, v1

    .line 19
    .line 20
    sub-int/2addr p1, v1

    .line 21
    rem-int v1, p1, v0

    .line 22
    .line 23
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 28
    .line 29
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 30
    .line 31
    div-int/2addr p1, v0

    .line 32
    add-int/2addr p1, v1

    .line 33
    iput p1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 37
    .line 38
    div-int/2addr p1, v0

    .line 39
    add-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    add-int/2addr p1, v1

    .line 42
    iput p1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 43
    .line 44
    :goto_0
    iget-object p1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 45
    .line 46
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, [B

    .line 53
    .line 54
    iput-object p1, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    .line 55
    .line 56
    :goto_1
    return-void

    .line 57
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 58
    .line 59
    const-string/jumbo v1, "skipRead with negative amount="

    .line 60
    .line 61
    .line 62
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0
.end method

.method public startEditing()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 2
    .line 3
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    .line 10
    .line 11
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    .line 12
    .line 13
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, [B

    .line 21
    .line 22
    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 23
    .line 24
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 25
    .line 26
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 27
    .line 28
    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    .line 29
    .line 30
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 31
    .line 32
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 33
    .line 34
    return-void
.end method

.method public writeFromThisBuffer(II)V
    .locals 6

    .line 1
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    .line 2
    .line 3
    if-ltz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, " "

    .line 10
    .line 11
    const-string v2, " size="

    .line 12
    .line 13
    if-lt p1, v0, :cond_8

    .line 14
    .line 15
    add-int v0, p1, p2

    .line 16
    .line 17
    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    .line 18
    .line 19
    if-gt v0, v3, :cond_7

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 25
    .line 26
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 27
    .line 28
    mul-int v2, v0, v1

    .line 29
    .line 30
    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 31
    .line 32
    add-int/2addr v2, v3

    .line 33
    if-ne p1, v2, :cond_3

    .line 34
    .line 35
    sub-int p1, v1, v3

    .line 36
    .line 37
    if-gt p2, p1, :cond_1

    .line 38
    .line 39
    add-int/2addr v3, p2

    .line 40
    iput v3, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    sub-int p1, v1, v3

    .line 44
    .line 45
    sub-int/2addr p2, p1

    .line 46
    rem-int p1, p2, v1

    .line 47
    .line 48
    iput p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 49
    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 53
    .line 54
    div-int/2addr p2, v1

    .line 55
    add-int/2addr p2, v0

    .line 56
    iput p2, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    div-int/2addr p2, v1

    .line 60
    add-int/lit8 p2, p2, 0x1

    .line 61
    .line 62
    add-int/2addr p2, v0

    .line 63
    iput p2, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 64
    .line 65
    :goto_0
    iget-object p1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 66
    .line 67
    iget p2, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, [B

    .line 74
    .line 75
    iput-object p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    div-int v0, p1, v1

    .line 79
    .line 80
    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, [B

    .line 87
    .line 88
    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 89
    .line 90
    rem-int/2addr p1, v2

    .line 91
    :goto_1
    if-lez p2, :cond_6

    .line 92
    .line 93
    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 94
    .line 95
    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 96
    .line 97
    if-lt v2, v3, :cond_4

    .line 98
    .line 99
    invoke-direct {p0}, Landroid/util/proto/EncodedBuffer;->nextWriteBuffer()V

    .line 100
    .line 101
    .line 102
    :cond_4
    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 103
    .line 104
    if-lt p1, v2, :cond_5

    .line 105
    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 107
    .line 108
    iget-object p1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, [B

    .line 115
    .line 116
    const/4 v1, 0x0

    .line 117
    move v5, v1

    .line 118
    move-object v1, p1

    .line 119
    move p1, v5

    .line 120
    :cond_5
    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 121
    .line 122
    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 123
    .line 124
    sub-int v3, v2, v3

    .line 125
    .line 126
    sub-int/2addr v2, p1

    .line 127
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    iget-object v3, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 136
    .line 137
    iget v4, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 138
    .line 139
    invoke-static {v1, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 140
    .line 141
    .line 142
    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 143
    .line 144
    add-int/2addr v3, v2

    .line 145
    iput v3, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 146
    .line 147
    add-int/2addr p1, v2

    .line 148
    sub-int/2addr p2, v2

    .line 149
    goto :goto_1

    .line 150
    :cond_6
    :goto_2
    return-void

    .line 151
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 152
    .line 153
    const-string v3, "Trying to move more data than there is -- srcOffset="

    .line 154
    .line 155
    invoke-static {v3, p1, v2, p2, v1}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v0

    .line 174
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 175
    .line 176
    const-string v3, "Can only move forward in the buffer -- srcOffset="

    .line 177
    .line 178
    invoke-static {v3, p1, v2, p2, v1}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw v0

    .line 197
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 198
    .line 199
    const-string/jumbo p2, "writeFromThisBuffer before startEditing"

    .line 200
    .line 201
    .line 202
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p1
.end method

.method public writeRawBuffer([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([BII)V

    :cond_0
    return-void
.end method

.method public writeRawBuffer([BII)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int v2, v0, v1

    if-ge p3, v2, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_2

    .line 4
    iget-object v2, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 5
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    :goto_1
    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    :cond_2
    if-lez p3, :cond_4

    .line 6
    invoke-direct {p0}, Landroid/util/proto/EncodedBuffer;->nextWriteBuffer()V

    .line 7
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    if-ge p3, v0, :cond_3

    move v0, p3

    .line 8
    :cond_3
    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 9
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public writeRawByte(B)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 2
    .line 3
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/util/proto/EncodedBuffer;->nextWriteBuffer()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 11
    .line 12
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 13
    .line 14
    add-int/lit8 v2, v1, 0x1

    .line 15
    .line 16
    iput v2, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 17
    .line 18
    aput-byte p1, v0, v1

    .line 19
    .line 20
    return-void
.end method

.method public writeRawFixed32(I)V
    .locals 1

    .line 1
    int-to-byte v0, p1

    .line 2
    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 3
    .line 4
    .line 5
    shr-int/lit8 v0, p1, 0x8

    .line 6
    .line 7
    int-to-byte v0, v0

    .line 8
    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 9
    .line 10
    .line 11
    shr-int/lit8 v0, p1, 0x10

    .line 12
    .line 13
    int-to-byte v0, v0

    .line 14
    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 15
    .line 16
    .line 17
    shr-int/lit8 p1, p1, 0x18

    .line 18
    .line 19
    int-to-byte p1, p1

    .line 20
    invoke-virtual {p0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public writeRawFixed64(J)V
    .locals 2

    .line 1
    long-to-int v0, p1

    .line 2
    int-to-byte v0, v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    shr-long v0, p1, v0

    .line 9
    .line 10
    long-to-int v0, v0

    .line 11
    int-to-byte v0, v0

    .line 12
    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0x10

    .line 16
    .line 17
    shr-long v0, p1, v0

    .line 18
    .line 19
    long-to-int v0, v0

    .line 20
    int-to-byte v0, v0

    .line 21
    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x18

    .line 25
    .line 26
    shr-long v0, p1, v0

    .line 27
    .line 28
    long-to-int v0, v0

    .line 29
    int-to-byte v0, v0

    .line 30
    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 31
    .line 32
    .line 33
    const/16 v0, 0x20

    .line 34
    .line 35
    shr-long v0, p1, v0

    .line 36
    .line 37
    long-to-int v0, v0

    .line 38
    int-to-byte v0, v0

    .line 39
    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 40
    .line 41
    .line 42
    const/16 v0, 0x28

    .line 43
    .line 44
    shr-long v0, p1, v0

    .line 45
    .line 46
    long-to-int v0, v0

    .line 47
    int-to-byte v0, v0

    .line 48
    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 49
    .line 50
    .line 51
    const/16 v0, 0x30

    .line 52
    .line 53
    shr-long v0, p1, v0

    .line 54
    .line 55
    long-to-int v0, v0

    .line 56
    int-to-byte v0, v0

    .line 57
    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 58
    .line 59
    .line 60
    const/16 v0, 0x38

    .line 61
    .line 62
    shr-long/2addr p1, v0

    .line 63
    long-to-int p1, p1

    .line 64
    int-to-byte p1, p1

    .line 65
    invoke-virtual {p0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public writeRawVarint32(I)V
    .locals 1

    .line 1
    :goto_0
    and-int/lit8 v0, p1, -0x80

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    int-to-byte p1, p1

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    .line 11
    .line 12
    or-int/lit16 v0, v0, 0x80

    .line 13
    .line 14
    int-to-byte v0, v0

    .line 15
    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 16
    .line 17
    .line 18
    ushr-int/lit8 p1, p1, 0x7

    .line 19
    .line 20
    goto :goto_0
.end method

.method public writeRawVarint64(J)V
    .locals 4

    .line 1
    :goto_0
    const-wide/16 v0, -0x80

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    long-to-int p1, p1

    .line 11
    int-to-byte p1, p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-wide/16 v0, 0x7f

    .line 17
    .line 18
    and-long/2addr v0, p1

    .line 19
    const-wide/16 v2, 0x80

    .line 20
    .line 21
    or-long/2addr v0, v2

    .line 22
    long-to-int v0, v0

    .line 23
    int-to-byte v0, v0

    .line 24
    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x7

    .line 28
    ushr-long/2addr p1, v0

    .line 29
    goto :goto_0
.end method

.method public writeRawZigZag32(I)V
    .locals 0

    invoke-static {p1}, Landroid/util/proto/EncodedBuffer;->zigZag32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    return-void
.end method

.method public writeRawZigZag64(J)V
    .locals 0

    invoke-static {p1, p2}, Landroid/util/proto/EncodedBuffer;->zigZag64(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    return-void
.end method

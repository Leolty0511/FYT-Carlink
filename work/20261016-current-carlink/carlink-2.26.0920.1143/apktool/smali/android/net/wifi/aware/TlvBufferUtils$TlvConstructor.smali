.class public Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/TlvBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlvConstructor"
.end annotation


# instance fields
.field private mArray:[B

.field private mArrayLength:I

.field private mLengthSize:I

.field private mPosition:I

.field private mTypeSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-gt p1, v0, :cond_0

    .line 8
    .line 9
    if-lez p2, :cond_0

    .line 10
    .line 11
    if-gt p2, v0, :cond_0

    .line 12
    .line 13
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    .line 14
    .line 15
    iput p2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v1, "Invalid sizes - typeSize="

    .line 21
    .line 22
    const-string v2, ", lengthSize="

    .line 23
    .line 24
    invoke-static {v1, p1, v2, p2}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method private addHeader(II)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    .line 8
    .line 9
    iget v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 10
    .line 11
    int-to-byte p1, p1

    .line 12
    aput-byte p1, v0, v3

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    .line 18
    .line 19
    iget v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 20
    .line 21
    int-to-short p1, p1

    .line 22
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 23
    .line 24
    invoke-static {v0, v3, p1, v4}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    iget p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 28
    .line 29
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    .line 30
    .line 31
    add-int/2addr p1, v0

    .line 32
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 33
    .line 34
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    .line 35
    .line 36
    if-ne v0, v2, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    .line 39
    .line 40
    int-to-byte p2, p2

    .line 41
    aput-byte p2, v0, p1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    if-ne v0, v1, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    .line 47
    .line 48
    int-to-short p2, p2

    .line 49
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 50
    .line 51
    invoke-static {v0, p1, p2, v1}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_1
    iget p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 55
    .line 56
    iget p2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    .line 57
    .line 58
    add-int/2addr p1, p2

    .line 59
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 60
    .line 61
    return-void
.end method

.method private checkLength(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 2
    .line 3
    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    add-int/2addr v0, p1

    .line 10
    iget p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArrayLength:I

    .line 11
    .line 12
    if-gt v0, p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method private getActualLength()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    return v0
.end method


# virtual methods
.method public allocate(I)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 1

    .line 1
    new-array v0, p1, [B

    .line 2
    .line 3
    iput-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    .line 4
    .line 5
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArrayLength:I

    .line 6
    .line 7
    return-object p0
.end method

.method public allocateAndPut(Ljava/util/List;)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, [B

    .line 20
    .line 21
    iget v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    .line 22
    .line 23
    iget v5, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    .line 24
    .line 25
    add-int/2addr v4, v5

    .line 26
    add-int/2addr v4, v2

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    array-length v2, v3

    .line 30
    add-int/2addr v4, v2

    .line 31
    :cond_0
    move v2, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0, v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->allocate(I)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, [B

    .line 51
    .line 52
    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->putByteArray(I[B)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    return-object p0
.end method

.method public getArray()[B
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    invoke-direct {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->getActualLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public putByte(IB)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    .line 9
    .line 10
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 11
    .line 12
    add-int/lit8 v1, v0, 0x1

    .line 13
    .line 14
    iput v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 15
    .line 16
    aput-byte p2, p1, v0

    .line 17
    .line 18
    return-object p0
.end method

.method public putByteArray(I[B)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    .line 5
    :cond_0
    array-length v1, p2

    :goto_0
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->putByteArray(I[BII)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    move-result-object p1

    return-object p1
.end method

.method public putByteArray(I[BII)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 1

    .line 1
    invoke-direct {p0, p4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    .line 2
    invoke-direct {p0, p1, p4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    if-eqz p4, :cond_0

    .line 3
    iget-object p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 4
    :cond_0
    iget p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    add-int/2addr p1, p4

    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    return-object p0
.end method

.method public putInt(II)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    .line 9
    .line 10
    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 11
    .line 12
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 13
    .line 14
    invoke-static {p1, v1, p2, v2}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 15
    .line 16
    .line 17
    iget p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 18
    .line 19
    add-int/2addr p1, v0

    .line 20
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 21
    .line 22
    return-object p0
.end method

.method public putShort(IS)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    .line 9
    .line 10
    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 11
    .line 12
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 13
    .line 14
    invoke-static {p1, v1, p2, v2}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 15
    .line 16
    .line 17
    iget p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 18
    .line 19
    add-int/2addr p1, v0

    .line 20
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 21
    .line 22
    return-object p0
.end method

.method public putString(ILjava/lang/String;)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    array-length v1, p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    move v1, v0

    .line 12
    :goto_0
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->putByteArray(I[BII)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public putZeroLengthElement(I)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public wrap([B)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    array-length p1, p1

    .line 8
    :goto_0
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArrayLength:I

    .line 9
    .line 10
    return-object p0
.end method

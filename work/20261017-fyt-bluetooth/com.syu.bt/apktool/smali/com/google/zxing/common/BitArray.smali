.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final EMPTY_BITS:[I

.field private static final LOAD_FACTOR:F = 0.75f


# instance fields
.field private bits:[I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/zxing/common/BitArray;->EMPTY_BITS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 36
    sget-object v0, Lcom/google/zxing/common/BitArray;->EMPTY_BITS:[I

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 41
    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 42
    return-void
.end method

.method constructor <init>([II)V
    .locals 0
    .param p1, "bits"    # [I
    .param p2, "size"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 47
    iput p2, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 48
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 5
    .param p1, "newSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 59
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x20

    if-le p1, v1, :cond_0

    .line 60
    int-to-float v1, p1

    const/high16 v2, 0x3f400000    # 0.75f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    .line 61
    .local v0, "newBits":[I
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 64
    .end local v0    # "newBits":[I
    :cond_0
    return-void
.end method

.method private static makeArray(I)[I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 325
    add-int/lit8 v0, p0, 0x1f

    div-int/lit8 v0, v0, 0x20

    new-array v0, v0, [I

    return-object v0
.end method


# virtual methods
.method public appendBit(Z)V
    .locals 5
    .param p1, "bit"    # Z

    .prologue
    .line 220
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 221
    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    div-int/lit8 v1, v1, 0x20

    aget v2, v0, v1

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/zxing/common/BitArray;->size:I

    and-int/lit8 v4, v4, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 224
    :cond_0
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 225
    return-void
.end method

.method public appendBitArray(Lcom/google/zxing/common/BitArray;)V
    .locals 3
    .param p1, "other"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 251
    iget v1, p1, Lcom/google/zxing/common/BitArray;->size:I

    .line 252
    .local v1, "otherSize":I
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 254
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_0
    return-void
.end method

.method public appendBits(II)V
    .locals 7
    .param p1, "value"    # I
    .param p2, "numBits"    # I

    .prologue
    const/4 v6, 0x1

    .line 236
    if-ltz p2, :cond_0

    const/16 v2, 0x20

    if-le p2, v2, :cond_1

    .line 237
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Num bits must be between 0 and 32"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :cond_1
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 240
    .local v0, "nextSize":I
    add-int v2, v0, p2

    invoke-direct {p0, v2}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 241
    add-int/lit8 v1, p2, -0x1

    .local v1, "numBitsLeft":I
    :goto_0
    if-ltz v1, :cond_3

    .line 242
    shl-int v2, v6, v1

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    .line 243
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v3, v0, 0x20

    aget v4, v2, v3

    and-int/lit8 v5, v0, 0x1f

    shl-int v5, v6, v5

    or-int/2addr v4, v5

    aput v4, v2, v3

    .line 245
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 241
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 247
    :cond_3
    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 248
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 179
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v2

    .line 180
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 181
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method public clone()Lcom/google/zxing/common/BitArray;
    .locals 3

    .prologue
    .line 356
    new-instance v1, Lcom/google/zxing/common/BitArray;

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/common/BitArray;-><init>([II)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->clone()Lcom/google/zxing/common/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 330
    instance-of v2, p1, Lcom/google/zxing/common/BitArray;

    if-nez v2, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 333
    check-cast v0, Lcom/google/zxing/common/BitArray;

    .line 334
    .local v0, "other":Lcom/google/zxing/common/BitArray;
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    iget v3, v0, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget-object v3, v0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public flip(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 90
    return-void
.end method

.method public get(I)Z
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x1

    .line 71
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v2, p1, 0x20

    aget v1, v1, v2

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitArray()[I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-object v0
.end method

.method public getNextSet(I)I
    .locals 5
    .param p1, "from"    # I

    .prologue
    .line 99
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-lt p1, v3, :cond_0

    .line 100
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 113
    :goto_0
    return v3

    .line 102
    :cond_0
    div-int/lit8 v0, p1, 0x20

    .line 103
    .local v0, "bitsOffset":I
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v3, v0

    .line 105
    .local v1, "currentBits":I
    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    neg-int v3, v3

    and-int/2addr v1, v3

    .line 106
    :goto_1
    if-nez v1, :cond_2

    .line 107
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v3, v3

    if-ne v0, v3, :cond_1

    .line 108
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    goto :goto_0

    .line 110
    :cond_1
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v3, v0

    goto :goto_1

    .line 112
    :cond_2
    mul-int/lit8 v3, v0, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    add-int v2, v3, v4

    .line 113
    .local v2, "result":I
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0
.end method

.method public getNextUnset(I)I
    .locals 5
    .param p1, "from"    # I

    .prologue
    .line 122
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-lt p1, v3, :cond_0

    .line 123
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 136
    :goto_0
    return v3

    .line 125
    :cond_0
    div-int/lit8 v0, p1, 0x20

    .line 126
    .local v0, "bitsOffset":I
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/lit8 v1, v3, -0x1

    .line 128
    .local v1, "currentBits":I
    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    neg-int v3, v3

    and-int/2addr v1, v3

    .line 129
    :goto_1
    if-nez v1, :cond_2

    .line 130
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v3, v3

    if-ne v0, v3, :cond_1

    .line 131
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    goto :goto_0

    .line 133
    :cond_1
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/lit8 v1, v3, -0x1

    goto :goto_1

    .line 135
    :cond_2
    mul-int/lit8 v3, v0, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    add-int v2, v3, v4

    .line 136
    .local v2, "result":I
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v0
.end method

.method public getSizeInBytes()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 339
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isRange(IIZ)Z
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 195
    if-lt p2, p1, :cond_0

    if-ltz p1, :cond_0

    iget v8, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-le p2, v8, :cond_1

    .line 196
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 198
    :cond_1
    if-ne p2, p1, :cond_3

    .line 216
    :cond_2
    :goto_0
    return v6

    .line 201
    :cond_3
    add-int/lit8 p2, p2, -0x1

    .line 202
    div-int/lit8 v1, p1, 0x20

    .line 203
    .local v1, "firstInt":I
    div-int/lit8 v4, p2, 0x20

    .line 204
    .local v4, "lastInt":I
    move v2, v1

    .local v2, "i":I
    :goto_1
    if-gt v2, v4, :cond_2

    .line 205
    if-le v2, v1, :cond_4

    move v0, v7

    .line 206
    .local v0, "firstBit":I
    :goto_2
    if-ge v2, v4, :cond_5

    const/16 v3, 0x1f

    .line 208
    .local v3, "lastBit":I
    :goto_3
    const/4 v8, 0x2

    shl-int/2addr v8, v3

    shl-int v9, v6, v0

    sub-int v5, v8, v9

    .line 212
    .local v5, "mask":I
    iget-object v8, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v8, v8, v2

    and-int/2addr v8, v5

    if-eqz p3, :cond_6

    .end local v5    # "mask":I
    :goto_4
    if-eq v8, v5, :cond_7

    move v6, v7

    .line 213
    goto :goto_0

    .line 205
    .end local v0    # "firstBit":I
    .end local v3    # "lastBit":I
    :cond_4
    and-int/lit8 v0, p1, 0x1f

    goto :goto_2

    .line 206
    .restart local v0    # "firstBit":I
    :cond_5
    and-int/lit8 v3, p2, 0x1f

    goto :goto_3

    .restart local v3    # "lastBit":I
    .restart local v5    # "mask":I
    :cond_6
    move v5, v7

    .line 212
    goto :goto_4

    .line 204
    .end local v5    # "mask":I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public reverse()V
    .locals 9

    .prologue
    .line 302
    iget-object v7, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v7, v7

    new-array v4, v7, [I

    .line 304
    .local v4, "newBits":[I
    iget v7, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v7, v7, -0x1

    div-int/lit8 v3, v7, 0x20

    .line 305
    .local v3, "len":I
    add-int/lit8 v6, v3, 0x1

    .line 306
    .local v6, "oldBitsLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 307
    sub-int v7, v3, v1

    iget-object v8, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v8, v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->reverse(I)I

    move-result v8

    aput v8, v4, v7

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_0
    iget v7, p0, Lcom/google/zxing/common/BitArray;->size:I

    mul-int/lit8 v8, v6, 0x20

    if-eq v7, v8, :cond_2

    .line 311
    mul-int/lit8 v7, v6, 0x20

    iget v8, p0, Lcom/google/zxing/common/BitArray;->size:I

    sub-int v2, v7, v8

    .line 312
    .local v2, "leftOffset":I
    const/4 v7, 0x0

    aget v7, v4, v7

    ushr-int v0, v7, v2

    .line 313
    .local v0, "currentInt":I
    const/4 v1, 0x1

    :goto_1
    if-ge v1, v6, :cond_1

    .line 314
    aget v5, v4, v1

    .line 315
    .local v5, "nextInt":I
    rsub-int/lit8 v7, v2, 0x20

    shl-int v7, v5, v7

    or-int/2addr v0, v7

    .line 316
    add-int/lit8 v7, v1, -0x1

    aput v0, v4, v7

    .line 317
    ushr-int v0, v5, v2

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 319
    .end local v5    # "nextInt":I
    :cond_1
    add-int/lit8 v7, v6, -0x1

    aput v0, v4, v7

    .line 321
    .end local v0    # "currentInt":I
    .end local v2    # "leftOffset":I
    :cond_2
    iput-object v4, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 322
    return-void
.end method

.method public set(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 81
    return-void
.end method

.method public setBulk(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "newBits"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aput p2, v0, v1

    .line 148
    return-void
.end method

.method public setRange(II)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 157
    if-lt p2, p1, :cond_0

    if-ltz p1, :cond_0

    iget v6, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-le p2, v6, :cond_1

    .line 158
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 160
    :cond_1
    if-ne p2, p1, :cond_3

    .line 173
    :cond_2
    return-void

    .line 163
    :cond_3
    add-int/lit8 p2, p2, -0x1

    .line 164
    div-int/lit8 v1, p1, 0x20

    .line 165
    .local v1, "firstInt":I
    div-int/lit8 v4, p2, 0x20

    .line 166
    .local v4, "lastInt":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-gt v2, v4, :cond_2

    .line 167
    if-le v2, v1, :cond_4

    const/4 v0, 0x0

    .line 168
    .local v0, "firstBit":I
    :goto_1
    if-ge v2, v4, :cond_5

    const/16 v3, 0x1f

    .line 170
    .local v3, "lastBit":I
    :goto_2
    const/4 v6, 0x2

    shl-int/2addr v6, v3

    const/4 v7, 0x1

    shl-int/2addr v7, v0

    sub-int v5, v6, v7

    .line 171
    .local v5, "mask":I
    iget-object v6, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v7, v6, v2

    or-int/2addr v7, v5

    aput v7, v6, v2

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "firstBit":I
    .end local v3    # "lastBit":I
    .end local v5    # "mask":I
    :cond_4
    and-int/lit8 v0, p1, 0x1f

    goto :goto_1

    .line 168
    .restart local v0    # "firstBit":I
    :cond_5
    and-int/lit8 v3, p2, 0x1f

    goto :goto_2
.end method

.method public toBytes(I[BII)V
    .locals 5
    .param p1, "bitOffset"    # I
    .param p2, "array"    # [B
    .param p3, "offset"    # I
    .param p4, "numBytes"    # I

    .prologue
    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_2

    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, "theByte":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    .line 281
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    const/4 v3, 0x1

    rsub-int/lit8 v4, v1, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 284
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 286
    :cond_1
    add-int v3, p3, v0

    int-to-byte v4, v2

    aput-byte v4, p2, v3

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "j":I
    .end local v2    # "theByte":I
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 345
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v0, v2, :cond_2

    .line 346
    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_0

    .line 347
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x58

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_1
    const/16 v2, 0x2e

    goto :goto_1

    .line 351
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public xor(Lcom/google/zxing/common/BitArray;)V
    .locals 4
    .param p1, "other"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 259
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    iget v2, p1, Lcom/google/zxing/common/BitArray;->size:I

    if-eq v1, v2, :cond_0

    .line 260
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Sizes don\'t match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v2, v1, v0

    iget-object v3, p1, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_1
    return-void
.end method

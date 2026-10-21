.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "CodaBarReader.java"


# static fields
.field static final ALPHABET:[C

.field private static final ALPHABET_STRING:Ljava/lang/String; = "0123456789-$:/.+ABCD"

.field static final CHARACTER_ENCODINGS:[I

.field private static final MAX_ACCEPTABLE:F = 2.0f

.field private static final MIN_CHARACTER_LENGTH:I = 0x3

.field private static final PADDING:F = 1.5f

.field private static final STARTEND_ENCODING:[C


# instance fields
.field private counterLength:I

.field private counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 51
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    return-void

    .line 51
    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    .line 62
    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 76
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 78
    return-void
.end method

.method static arrayContains([CC)Z
    .locals 4
    .param p0, "array"    # [C
    .param p1, "key"    # C

    .prologue
    const/4 v1, 0x0

    .line 280
    if-eqz p0, :cond_0

    .line 281
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v0, p0, v2

    .line 282
    .local v0, "c":C
    if-ne v0, p1, :cond_1

    .line 283
    const/4 v1, 0x1

    .line 287
    .end local v0    # "c":C
    :cond_0
    return v1

    .line 281
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private counterAppend(I)V
    .locals 4
    .param p1, "e"    # I

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    aput p1, v1, v2

    .line 253
    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 254
    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 255
    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 256
    .local v0, "temp":[I
    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 259
    .end local v0    # "temp":[I
    :cond_0
    return-void
.end method

.method private findStartPattern()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 262
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-ge v1, v4, :cond_3

    .line 263
    invoke-direct {p0, v1}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v0

    .line 264
    .local v0, "charOffset":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v5, v5, v0

    invoke-static {v4, v5}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 267
    const/4 v3, 0x0

    .line 268
    .local v3, "patternSize":I
    move v2, v1

    .local v2, "j":I
    :goto_1
    add-int/lit8 v4, v1, 0x7

    if-ge v2, v4, :cond_0

    .line 269
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 271
    :cond_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    div-int/lit8 v5, v3, 0x2

    if-lt v4, v5, :cond_2

    .line 272
    :cond_1
    return v1

    .line 262
    .end local v2    # "j":I
    .end local v3    # "patternSize":I
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 276
    .end local v0    # "charOffset":I
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4
.end method

.method private setCounters(Lcom/google/zxing/common/BitArray;)V
    .locals 6
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 229
    iput v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 231
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v2

    .line 232
    .local v2, "i":I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 233
    .local v1, "end":I
    if-lt v2, v1, :cond_0

    .line 234
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 236
    :cond_0
    const/4 v3, 0x1

    .line 237
    .local v3, "isWhite":Z
    const/4 v0, 0x0

    .line 238
    .local v0, "count":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 239
    invoke-virtual {p1, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eq v5, v3, :cond_1

    .line 240
    add-int/lit8 v0, v0, 0x1

    .line 246
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    .line 243
    const/4 v0, 0x1

    .line 244
    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    .line 248
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    .line 249
    return-void
.end method

.method private toNarrowWidePattern(I)I
    .locals 15
    .param p1, "position"    # I

    .prologue
    .line 292
    add-int/lit8 v2, p1, 0x7

    .line 293
    .local v2, "end":I
    iget v14, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-lt v2, v14, :cond_1

    .line 294
    const/4 v3, -0x1

    .line 340
    :cond_0
    :goto_0
    return v3

    .line 297
    :cond_1
    iget-object v10, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 299
    .local v10, "theCounters":[I
    const/4 v5, 0x0

    .line 300
    .local v5, "maxBar":I
    const v7, 0x7fffffff

    .line 301
    .local v7, "minBar":I
    move/from16 v4, p1

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 302
    aget v1, v10, v4

    .line 303
    .local v1, "currentCounter":I
    if-ge v1, v7, :cond_2

    .line 304
    move v7, v1

    .line 306
    :cond_2
    if-le v1, v5, :cond_3

    .line 307
    move v5, v1

    .line 301
    :cond_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 310
    .end local v1    # "currentCounter":I
    :cond_4
    add-int v14, v7, v5

    div-int/lit8 v12, v14, 0x2

    .line 312
    .local v12, "thresholdBar":I
    const/4 v6, 0x0

    .line 313
    .local v6, "maxSpace":I
    const v8, 0x7fffffff

    .line 314
    .local v8, "minSpace":I
    add-int/lit8 v4, p1, 0x1

    :goto_2
    if-ge v4, v2, :cond_7

    .line 315
    aget v1, v10, v4

    .line 316
    .restart local v1    # "currentCounter":I
    if-ge v1, v8, :cond_5

    .line 317
    move v8, v1

    .line 319
    :cond_5
    if-le v1, v6, :cond_6

    .line 320
    move v6, v1

    .line 314
    :cond_6
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 323
    .end local v1    # "currentCounter":I
    :cond_7
    add-int v14, v8, v6

    div-int/lit8 v13, v14, 0x2

    .line 325
    .local v13, "thresholdSpace":I
    const/16 v0, 0x80

    .line 326
    .local v0, "bitmask":I
    const/4 v9, 0x0

    .line 327
    .local v9, "pattern":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    const/4 v14, 0x7

    if-ge v3, v14, :cond_a

    .line 328
    and-int/lit8 v14, v3, 0x1

    if-nez v14, :cond_9

    move v11, v12

    .line 329
    .local v11, "threshold":I
    :goto_4
    shr-int/lit8 v0, v0, 0x1

    .line 330
    add-int v14, p1, v3

    aget v14, v10, v14

    if-le v14, v11, :cond_8

    .line 331
    or-int/2addr v9, v0

    .line 327
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v11    # "threshold":I
    :cond_9
    move v11, v13

    .line 328
    goto :goto_4

    .line 335
    :cond_a
    const/4 v3, 0x0

    :goto_5
    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    array-length v14, v14

    if-ge v3, v14, :cond_b

    .line 336
    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v14, v14, v3

    if-eq v14, v9, :cond_0

    .line 335
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 340
    :cond_b
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private validatePattern(I)V
    .locals 15
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v11, 0x4

    new-array v10, v11, [I

    fill-array-data v10, :array_0

    .line 171
    .local v10, "sizes":[I
    const/4 v11, 0x4

    new-array v1, v11, [I

    fill-array-data v1, :array_1

    .line 172
    .local v1, "counts":[I
    iget-object v11, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .line 176
    .local v2, "end":I
    move/from16 v8, p1

    .line 177
    .local v8, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-gt v3, v2, :cond_1

    .line 178
    sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v12, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    aget v7, v11, v12

    .line 179
    .local v7, "pattern":I
    const/4 v4, 0x6

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_0

    .line 182
    and-int/lit8 v11, v4, 0x1

    and-int/lit8 v12, v7, 0x1

    mul-int/lit8 v12, v12, 0x2

    add-int v0, v11, v12

    .line 183
    .local v0, "category":I
    aget v11, v10, v0

    iget-object v12, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v13, v8, v4

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v10, v0

    .line 184
    aget v11, v1, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v1, v0

    .line 185
    shr-int/lit8 v7, v7, 0x1

    .line 179
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 188
    .end local v0    # "category":I
    :cond_0
    add-int/lit8 v8, v8, 0x8

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    .end local v4    # "j":I
    .end local v7    # "pattern":I
    :cond_1
    const/4 v11, 0x4

    new-array v5, v11, [F

    .line 193
    .local v5, "maxes":[F
    const/4 v11, 0x4

    new-array v6, v11, [F

    .line 197
    .local v6, "mins":[F
    const/4 v3, 0x0

    :goto_2
    const/4 v11, 0x2

    if-ge v3, v11, :cond_2

    .line 198
    const/4 v11, 0x0

    aput v11, v6, v3

    .line 199
    add-int/lit8 v11, v3, 0x2

    aget v12, v10, v3

    int-to-float v12, v12

    aget v13, v1, v3

    int-to-float v13, v13

    div-float/2addr v12, v13

    add-int/lit8 v13, v3, 0x2

    aget v13, v10, v13

    int-to-float v13, v13

    add-int/lit8 v14, v3, 0x2

    aget v14, v1, v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    aput v12, v6, v11

    .line 200
    add-int/lit8 v11, v3, 0x2

    aget v11, v6, v11

    aput v11, v5, v3

    .line 201
    add-int/lit8 v11, v3, 0x2

    add-int/lit8 v12, v3, 0x2

    aget v12, v10, v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v12, v13

    const/high16 v13, 0x3fc00000    # 1.5f

    add-float/2addr v12, v13

    add-int/lit8 v13, v3, 0x2

    aget v13, v1, v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    aput v12, v5, v11

    .line 197
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 205
    :cond_2
    move/from16 v8, p1

    .line 206
    const/4 v3, 0x0

    :goto_3
    if-gt v3, v2, :cond_6

    .line 207
    sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v12, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    aget v7, v11, v12

    .line 208
    .restart local v7    # "pattern":I
    const/4 v4, 0x6

    .restart local v4    # "j":I
    :goto_4
    if-ltz v4, :cond_5

    .line 211
    and-int/lit8 v11, v4, 0x1

    and-int/lit8 v12, v7, 0x1

    mul-int/lit8 v12, v12, 0x2

    add-int v0, v11, v12

    .line 212
    .restart local v0    # "category":I
    iget-object v11, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v12, v8, v4

    aget v9, v11, v12

    .line 213
    .local v9, "size":I
    int-to-float v11, v9

    aget v12, v6, v0

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_3

    int-to-float v11, v9

    aget v12, v5, v0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    .line 214
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 216
    :cond_4
    shr-int/lit8 v7, v7, 0x1

    .line 208
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 218
    .end local v0    # "category":I
    .end local v9    # "size":I
    :cond_5
    add-int/lit8 v8, v8, 0x8

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 220
    .end local v4    # "j":I
    .end local v7    # "pattern":I
    :cond_6
    return-void

    .line 170
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 171
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 20
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 83
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/util/Arrays;->fill([II)V

    .line 84
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/CodaBarReader;->setCounters(Lcom/google/zxing/common/BitArray;)V

    .line 85
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/oned/CodaBarReader;->findStartPattern()I

    move-result v11

    .line 86
    .local v11, "startOffset":I
    move v7, v11

    .line 88
    .local v7, "nextStart":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 90
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v2

    .line 91
    .local v2, "charOffset":I
    const/4 v14, -0x1

    if-ne v2, v14, :cond_1

    .line 92
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 97
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    int-to-char v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v7, v7, 0x8

    .line 100
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_2

    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v15, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v15, v15, v2

    .line 101
    invoke-static {v14, v15}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 107
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v15, v7, -0x1

    aget v13, v14, v15

    .line 108
    .local v13, "trailingWhitespace":I
    const/4 v5, 0x0

    .line 109
    .local v5, "lastPatternSize":I
    const/4 v4, -0x8

    .local v4, "i":I
    :goto_1
    const/4 v14, -0x1

    if-ge v4, v14, :cond_3

    .line 110
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v15, v7, v4

    aget v14, v14, v15

    add-int/2addr v5, v14

    .line 109
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 104
    .end local v4    # "i":I
    .end local v5    # "lastPatternSize":I
    .end local v13    # "trailingWhitespace":I
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-lt v7, v14, :cond_0

    goto :goto_0

    .line 116
    .restart local v4    # "i":I
    .restart local v5    # "lastPatternSize":I
    .restart local v13    # "trailingWhitespace":I
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-ge v7, v14, :cond_4

    div-int/lit8 v14, v5, 0x2

    if-ge v13, v14, :cond_4

    .line 117
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 120
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/zxing/oned/CodaBarReader;->validatePattern(I)V

    .line 123
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-ge v4, v14, :cond_5

    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    sget-object v15, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v16

    aget-char v15, v15, v16

    invoke-virtual {v14, v4, v15}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 123
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 127
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    .line 128
    .local v12, "startchar":C
    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v14, v12}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v14

    if-nez v14, :cond_6

    .line 129
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 131
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 132
    .local v3, "endchar":C
    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v14, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v14

    if-nez v14, :cond_7

    .line 133
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 137
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    const/4 v15, 0x3

    if-gt v14, v15, :cond_8

    .line 139
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 142
    :cond_8
    if-eqz p3, :cond_9

    sget-object v14, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 143
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 147
    :cond_a
    const/4 v10, 0x0

    .line 148
    .local v10, "runningCount":I
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v11, :cond_b

    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v14, v14, v4

    add-int/2addr v10, v14

    .line 148
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 151
    :cond_b
    int-to-float v6, v10

    .line 152
    .local v6, "left":F
    move v4, v11

    :goto_4
    add-int/lit8 v14, v7, -0x1

    if-ge v4, v14, :cond_c

    .line 153
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v14, v14, v4

    add-int/2addr v10, v14

    .line 152
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 155
    :cond_c
    int-to-float v9, v10

    .line 157
    .local v9, "right":F
    new-instance v8, Lcom/google/zxing/Result;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v18, v16, v17

    const/16 v17, 0x1

    new-instance v18, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v9, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v18, v16, v17

    sget-object v17, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v14, v15, v0, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 164
    .local v8, "result":Lcom/google/zxing/Result;
    sget-object v14, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    const-string v15, "]F0"

    invoke-virtual {v8, v14, v15}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 165
    return-object v8
.end method

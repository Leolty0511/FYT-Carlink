.class public final Lcom/google/zxing/oned/Code93Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code93Reader.java"


# static fields
.field private static final ALPHABET:[C

.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

.field static final ASTERISK_ENCODING:I

.field static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    .line 48
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    .line 56
    sget-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x2f

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    return-void

    .line 48
    :array_0
    .array-data 4
        0x114
        0x148
        0x144
        0x142
        0x128
        0x124
        0x122
        0x150
        0x112
        0x10a
        0x1a8
        0x1a4
        0x1a2
        0x194
        0x192
        0x18a
        0x168
        0x164
        0x162
        0x134
        0x11a
        0x158
        0x14c
        0x146
        0x12c
        0x116
        0x1b4
        0x1b2
        0x1ac
        0x1a6
        0x196
        0x19a
        0x16c
        0x166
        0x136
        0x13a
        0x12e
        0x1d4
        0x1d2
        0x1ca
        0x16e
        0x176
        0x1ae
        0x126
        0x1da
        0x1d6
        0x132
        0x15e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    .line 64
    return-void
.end method

.method private static checkChecksums(Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "result"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 280
    .local v0, "length":I
    add-int/lit8 v1, v0, -0x2

    const/16 v2, 0x14

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    .line 281
    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0xf

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    .line 282
    return-void
.end method

.method private static checkOneChecksum(Ljava/lang/CharSequence;II)V
    .locals 6
    .param p0, "result"    # Ljava/lang/CharSequence;
    .param p1, "checkPosition"    # I
    .param p2, "weightMax"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 286
    const/4 v2, 0x1

    .line 287
    .local v2, "weight":I
    const/4 v1, 0x0

    .line 288
    .local v1, "total":I
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 289
    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 290
    add-int/lit8 v2, v2, 0x1

    if-le v2, p2, :cond_0

    .line 291
    const/4 v2, 0x1

    .line 288
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 294
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sget-object v4, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    rem-int/lit8 v5, v1, 0x2f

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_2

    .line 295
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v3

    throw v3

    .line 297
    :cond_2
    return-void
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 10
    .param p0, "encoded"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x4f

    const/16 v8, 0x5a

    const/16 v7, 0x41

    .line 201
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 202
    .local v4, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 203
    .local v1, "decoded":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_e

    .line 204
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 205
    .local v0, "c":C
    const/16 v6, 0x61

    if-lt v0, v6, :cond_d

    const/16 v6, 0x64

    if-gt v0, v6, :cond_d

    .line 206
    add-int/lit8 v6, v4, -0x1

    if-lt v3, v6, :cond_0

    .line 207
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 209
    :cond_0
    add-int/lit8 v6, v3, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 210
    .local v5, "next":C
    const/4 v2, 0x0

    .line 211
    .local v2, "decodedChar":C
    packed-switch v0, :pswitch_data_0

    .line 268
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    add-int/lit8 v3, v3, 0x1

    .line 203
    .end local v2    # "decodedChar":C
    .end local v5    # "next":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    .restart local v2    # "decodedChar":C
    .restart local v5    # "next":C
    :pswitch_0
    if-lt v5, v7, :cond_1

    if-gt v5, v8, :cond_1

    .line 215
    add-int/lit8 v6, v5, 0x20

    int-to-char v2, v6

    goto :goto_1

    .line 217
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 222
    :pswitch_1
    if-lt v5, v7, :cond_2

    if-gt v5, v8, :cond_2

    .line 223
    add-int/lit8 v6, v5, -0x40

    int-to-char v2, v6

    goto :goto_1

    .line 225
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 229
    :pswitch_2
    if-lt v5, v7, :cond_3

    const/16 v6, 0x45

    if-gt v5, v6, :cond_3

    .line 231
    add-int/lit8 v6, v5, -0x26

    int-to-char v2, v6

    goto :goto_1

    .line 232
    :cond_3
    const/16 v6, 0x46

    if-lt v5, v6, :cond_4

    const/16 v6, 0x4a

    if-gt v5, v6, :cond_4

    .line 234
    add-int/lit8 v6, v5, -0xb

    int-to-char v2, v6

    goto :goto_1

    .line 235
    :cond_4
    const/16 v6, 0x4b

    if-lt v5, v6, :cond_5

    if-gt v5, v9, :cond_5

    .line 237
    add-int/lit8 v6, v5, 0x10

    int-to-char v2, v6

    goto :goto_1

    .line 238
    :cond_5
    const/16 v6, 0x50

    if-lt v5, v6, :cond_6

    const/16 v6, 0x54

    if-gt v5, v6, :cond_6

    .line 240
    add-int/lit8 v6, v5, 0x2b

    int-to-char v2, v6

    goto :goto_1

    .line 241
    :cond_6
    const/16 v6, 0x55

    if-ne v5, v6, :cond_7

    .line 243
    const/4 v2, 0x0

    goto :goto_1

    .line 244
    :cond_7
    const/16 v6, 0x56

    if-ne v5, v6, :cond_8

    .line 246
    const/16 v2, 0x40

    goto :goto_1

    .line 247
    :cond_8
    const/16 v6, 0x57

    if-ne v5, v6, :cond_9

    .line 249
    const/16 v2, 0x60

    goto :goto_1

    .line 250
    :cond_9
    const/16 v6, 0x58

    if-lt v5, v6, :cond_a

    if-gt v5, v8, :cond_a

    .line 252
    const/16 v2, 0x7f

    goto :goto_1

    .line 254
    :cond_a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 259
    :pswitch_3
    if-lt v5, v7, :cond_b

    if-gt v5, v9, :cond_b

    .line 260
    add-int/lit8 v6, v5, -0x20

    int-to-char v2, v6

    goto :goto_1

    .line 261
    :cond_b
    if-ne v5, v8, :cond_c

    .line 262
    const/16 v2, 0x3a

    goto :goto_1

    .line 264
    :cond_c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 272
    .end local v2    # "decodedChar":C
    .end local v5    # "next":C
    :cond_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 275
    .end local v0    # "c":C
    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 211
    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 13
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 135
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    .line 136
    .local v7, "width":I
    invoke-virtual {p1, v9}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v5

    .line 138
    .local v5, "rowOffset":I
    iget-object v10, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    invoke-static {v10, v9}, Ljava/util/Arrays;->fill([II)V

    .line 139
    iget-object v6, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    .line 140
    .local v6, "theCounters":[I
    move v4, v5

    .line 141
    .local v4, "patternStart":I
    const/4 v2, 0x0

    .line 142
    .local v2, "isWhite":Z
    array-length v3, v6

    .line 144
    .local v3, "patternLength":I
    const/4 v0, 0x0

    .line 145
    .local v0, "counterPosition":I
    move v1, v5

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_4

    .line 146
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    if-eq v10, v2, :cond_0

    .line 147
    aget v10, v6, v0

    add-int/lit8 v10, v10, 0x1

    aput v10, v6, v0

    .line 145
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_0
    add-int/lit8 v10, v3, -0x1

    if-ne v0, v10, :cond_2

    .line 150
    invoke-static {v6}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v10

    sget v11, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    if-ne v10, v11, :cond_1

    .line 151
    new-array v10, v12, [I

    aput v4, v10, v9

    aput v1, v10, v8

    return-object v10

    .line 153
    :cond_1
    aget v10, v6, v9

    aget v11, v6, v8

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 154
    add-int/lit8 v10, v0, -0x1

    invoke-static {v6, v12, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    add-int/lit8 v10, v0, -0x1

    aput v9, v6, v10

    .line 156
    aput v9, v6, v0

    .line 157
    add-int/lit8 v0, v0, -0x1

    .line 161
    :goto_2
    aput v8, v6, v0

    .line 162
    if-nez v2, :cond_3

    move v2, v8

    :goto_3
    goto :goto_1

    .line 159
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v2, v9

    .line 162
    goto :goto_3

    .line 165
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8
.end method

.method private static patternToChar(I)C
    .locals 2
    .param p0, "pattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 193
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 194
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    aget-char v1, v1, v0

    return v1

    .line 192
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static toPattern([I)I
    .locals 9
    .param p0, "counters"    # [I

    .prologue
    .line 169
    const/4 v6, 0x0

    .line 170
    .local v6, "sum":I
    array-length v8, p0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget v0, p0, v7

    .line 171
    .local v0, "counter":I
    add-int/2addr v6, v0

    .line 170
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "counter":I
    :cond_0
    const/4 v4, 0x0

    .line 174
    .local v4, "pattern":I
    array-length v3, p0

    .line 175
    .local v3, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 176
    aget v7, p0, v1

    int-to-float v7, v7

    const/high16 v8, 0x41100000    # 9.0f

    mul-float/2addr v7, v8

    int-to-float v8, v6

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 177
    .local v5, "scaled":I
    const/4 v7, 0x1

    if-lt v5, v7, :cond_1

    const/4 v7, 0x4

    if-le v5, v7, :cond_3

    .line 178
    :cond_1
    const/4 v4, -0x1

    .line 188
    .end local v4    # "pattern":I
    .end local v5    # "scaled":I
    :cond_2
    return v4

    .line 180
    .restart local v4    # "pattern":I
    .restart local v5    # "scaled":I
    :cond_3
    and-int/lit8 v7, v1, 0x1

    if-nez v7, :cond_4

    .line 181
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v5, :cond_5

    .line 182
    shl-int/lit8 v7, v4, 0x1

    or-int/lit8 v4, v7, 0x1

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 185
    .end local v2    # "j":I
    :cond_4
    shl-int/2addr v4, v5

    .line 175
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 22
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
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 70
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/Code93Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v15

    .line 72
    .local v15, "start":[I
    const/16 v17, 0x1

    aget v17, v15, v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v9

    .line 73
    .local v9, "nextStart":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 75
    .local v5, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    move-object/from16 v16, v0

    .line 76
    .local v16, "theCounters":[I
    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Ljava/util/Arrays;->fill([II)V

    .line 77
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 78
    .local v11, "result":Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 83
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v9, v1}, Lcom/google/zxing/oned/Code93Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 84
    invoke-static/range {v16 .. v16}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v10

    .line 85
    .local v10, "pattern":I
    if-gez v10, :cond_1

    .line 86
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17

    .line 88
    :cond_1
    invoke-static {v10}, Lcom/google/zxing/oned/Code93Reader;->patternToChar(I)C

    move-result v4

    .line 89
    .local v4, "decodedChar":C
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    move v7, v9

    .line 91
    .local v7, "lastStart":I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget v3, v16, v17

    .line 92
    .local v3, "counter":I
    add-int/2addr v9, v3

    .line 91
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 95
    .end local v3    # "counter":I
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v9

    .line 96
    const/16 v17, 0x2a

    move/from16 v0, v17

    if-ne v4, v0, :cond_0

    .line 97
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 99
    const/4 v6, 0x0

    .line 100
    .local v6, "lastPatternSize":I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget v3, v16, v17

    .line 101
    .restart local v3    # "counter":I
    add-int/2addr v6, v3

    .line 100
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 105
    .end local v3    # "counter":I
    :cond_3
    if-eq v9, v5, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v17

    if-nez v17, :cond_5

    .line 106
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17

    .line 109
    :cond_5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 111
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17

    .line 114
    :cond_6
    invoke-static {v11}, Lcom/google/zxing/oned/Code93Reader;->checkChecksums(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x2

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 118
    invoke-static {v11}, Lcom/google/zxing/oned/Code93Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 120
    .local v13, "resultString":Ljava/lang/String;
    const/16 v17, 0x1

    aget v17, v15, v17

    const/16 v18, 0x0

    aget v18, v15, v18

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v8, v17, v18

    .line 121
    .local v8, "left":F
    int-to-float v0, v7

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v14, v17, v18

    .line 123
    .local v14, "right":F
    new-instance v12, Lcom/google/zxing/Result;

    const/16 v17, 0x0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v8, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v20, v18, v19

    const/16 v19, 0x1

    new-instance v20, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v14, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v20, v18, v19

    sget-object v19, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v12, v13, v0, v1, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 130
    .local v12, "resultObject":Lcom/google/zxing/Result;
    sget-object v17, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    const-string v18, "]G0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 131
    return-object v12
.end method

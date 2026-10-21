.class public final Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field static final ASCII_ENCODATION:I = 0x0

.field static final BASE256_ENCODATION:I = 0x5

.field static final C40_ENCODATION:I = 0x1

.field static final C40_UNLATCH:C = '\u00fe'

.field static final EDIFACT_ENCODATION:I = 0x4

.field static final LATCH_TO_ANSIX12:C = '\u00ee'

.field static final LATCH_TO_BASE256:C = '\u00e7'

.field static final LATCH_TO_C40:C = '\u00e6'

.field static final LATCH_TO_EDIFACT:C = '\u00f0'

.field static final LATCH_TO_TEXT:C = '\u00ef'

.field private static final MACRO_05:C = '\u00ec'

.field static final MACRO_05_HEADER:Ljava/lang/String; = "[)>\u001e05\u001d"

.field private static final MACRO_06:C = '\u00ed'

.field static final MACRO_06_HEADER:Ljava/lang/String; = "[)>\u001e06\u001d"

.field static final MACRO_TRAILER:Ljava/lang/String; = "\u001e\u0004"

.field private static final PAD:C = '\u0081'

.field static final TEXT_ENCODATION:I = 0x2

.field static final UPPER_SHIFT:C = '\u00eb'

.field static final X12_ENCODATION:I = 0x3

.field static final X12_UNLATCH:C = '\u00fe'


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I

    .prologue
    .line 470
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 471
    .local v1, "len":I
    move v0, p1

    .line 472
    .local v0, "idx":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_0
    sub-int v2, v0, p1

    return v2
.end method

.method public static encodeHighLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 128
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v2, v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "shape"    # Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .param p2, "minSize"    # Lcom/google/zxing/Dimension;
    .param p3, "maxSize"    # Lcom/google/zxing/Dimension;

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Ljava/lang/String;
    .locals 9
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "shape"    # Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .param p2, "minSize"    # Lcom/google/zxing/Dimension;
    .param p3, "maxSize"    # Lcom/google/zxing/Dimension;
    .param p4, "forceC40"    # Z

    .prologue
    .line 166
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/C40Encoder;

    invoke-direct {v0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    .line 167
    .local v0, "c40Encoder":Lcom/google/zxing/datamatrix/encoder/C40Encoder;
    const/4 v7, 0x6

    new-array v4, v7, [Lcom/google/zxing/datamatrix/encoder/Encoder;

    const/4 v7, 0x0

    new-instance v8, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;

    invoke-direct {v8}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;-><init>()V

    aput-object v8, v4, v7

    const/4 v7, 0x1

    aput-object v0, v4, v7

    const/4 v7, 0x2

    new-instance v8, Lcom/google/zxing/datamatrix/encoder/TextEncoder;

    invoke-direct {v8}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;-><init>()V

    aput-object v8, v4, v7

    const/4 v7, 0x3

    new-instance v8, Lcom/google/zxing/datamatrix/encoder/X12Encoder;

    invoke-direct {v8}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;-><init>()V

    aput-object v8, v4, v7

    const/4 v7, 0x4

    new-instance v8, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;

    invoke-direct {v8}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;-><init>()V

    aput-object v8, v4, v7

    const/4 v7, 0x5

    new-instance v8, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;

    invoke-direct {v8}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;-><init>()V

    aput-object v8, v4, v7

    .line 172
    .local v4, "encoders":[Lcom/google/zxing/datamatrix/encoder/Encoder;
    new-instance v3, Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    invoke-direct {v3, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;-><init>(Ljava/lang/String;)V

    .line 173
    .local v3, "context":Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    invoke-virtual {v3, p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSymbolShape(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V

    .line 174
    invoke-virtual {v3, p2, p3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSizeConstraints(Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)V

    .line 176
    const-string v7, "[)>\u001e05\u001d"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "\u001e\u0004"

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 177
    const/16 v7, 0xec

    invoke-virtual {v3, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 178
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    .line 179
    iget v7, v3, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const-string v8, "[)>\u001e05\u001d"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v3, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 186
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 188
    .local v5, "encodingMode":I
    if-eqz p4, :cond_1

    .line 189
    invoke-virtual {v0, v3}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeMaximal(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V

    .line 190
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v5

    .line 191
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetEncoderSignal()V

    .line 194
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 195
    aget-object v7, v4, v5

    invoke-interface {v7, v3}, Lcom/google/zxing/datamatrix/encoder/Encoder;->encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V

    .line 196
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v7

    if-ltz v7, :cond_1

    .line 197
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v5

    .line 198
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetEncoderSignal()V

    goto :goto_1

    .line 180
    .end local v5    # "encodingMode":I
    :cond_2
    const-string v7, "[)>\u001e06\u001d"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "\u001e\u0004"

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 181
    const/16 v7, 0xed

    invoke-virtual {v3, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 182
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    .line 183
    iget v7, v3, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const-string v8, "[)>\u001e06\u001d"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v3, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_0

    .line 201
    .restart local v5    # "encodingMode":I
    :cond_3
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v6

    .line 202
    .local v6, "len":I
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    .line 203
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v1

    .line 204
    .local v1, "capacity":I
    if-ge v6, v1, :cond_4

    if-eqz v5, :cond_4

    const/4 v7, 0x5

    if-eq v5, v7, :cond_4

    const/4 v7, 0x4

    if-eq v5, v7, :cond_4

    .line 208
    const/16 v7, 0xfe

    invoke-virtual {v3, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 211
    :cond_4
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 212
    .local v2, "codewords":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v7, v1, :cond_5

    .line 213
    const/16 v7, 0x81

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v7, v1, :cond_6

    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->randomize253State(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 219
    :cond_6
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static findMinimums([F[II[B)I
    .locals 4
    .param p0, "charCounts"    # [F
    .param p1, "intCharCounts"    # [I
    .param p2, "min"    # I
    .param p3, "mins"    # [B

    .prologue
    .line 407
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 408
    aget v2, p0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    aput v0, p1, v1

    .line 409
    .local v0, "current":I
    if-le p2, v0, :cond_0

    .line 410
    move p2, v0

    .line 411
    const/4 v2, 0x0

    invoke-static {p3, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 413
    :cond_0
    if-ne p2, v0, :cond_1

    .line 414
    aget-byte v2, p3, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 407
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v0    # "current":I
    :cond_2
    return p2
.end method

.method private static getMinimumCount([B)I
    .locals 3
    .param p0, "mins"    # [B

    .prologue
    .line 421
    const/4 v1, 0x0

    .line 422
    .local v1, "minCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 423
    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    :cond_0
    return v1
.end method

.method static illegalCharacter(C)V
    .locals 5
    .param p0, "c"    # C

    .prologue
    .line 479
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "hex":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0000"

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 429
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isExtendedASCII(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 433
    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isNativeC40(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 437
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isNativeEDIFACT(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 455
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isNativeText(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 441
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isNativeX12(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 445
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSpecialB256(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method private static isX12TermSep(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 449
    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static lookAheadTest(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I
    .param p2, "currentMode"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 223
    invoke-static {p0, p1, p2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTestIntern(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 224
    .local v2, "newMode":I
    if-ne p2, v4, :cond_2

    if-ne v2, v4, :cond_2

    .line 225
    add-int/lit8 v4, p1, 0x3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 226
    .local v0, "endpos":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 227
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 239
    .end local v0    # "endpos":I
    .end local v1    # "i":I
    .end local v2    # "newMode":I
    :cond_0
    :goto_1
    return v2

    .line 226
    .restart local v0    # "endpos":I
    .restart local v1    # "i":I
    .restart local v2    # "newMode":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "endpos":I
    .end local v1    # "i":I
    :cond_2
    if-ne p2, v5, :cond_0

    if-ne v2, v5, :cond_0

    .line 232
    add-int/lit8 v4, p1, 0x4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 233
    .restart local v0    # "endpos":I
    move v1, p1

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_0

    .line 234
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v4

    if-nez v4, :cond_3

    move v2, v3

    .line 235
    goto :goto_1

    .line 233
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method static lookAheadTestIntern(Ljava/lang/CharSequence;II)I
    .locals 17
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I
    .param p2, "currentMode"    # I

    .prologue
    .line 243
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move/from16 v0, p1

    if-lt v0, v11, :cond_0

    .line 391
    .end local p2    # "currentMode":I
    :goto_0
    return p2

    .line 248
    .restart local p2    # "currentMode":I
    :cond_0
    if-nez p2, :cond_2

    .line 249
    const/4 v11, 0x6

    new-array v3, v11, [F

    fill-array-data v3, :array_0

    .line 255
    .local v3, "charCounts":[F
    :goto_1
    const/4 v4, 0x0

    .line 256
    .local v4, "charsProcessed":I
    const/4 v11, 0x6

    new-array v8, v11, [B

    .line 257
    .local v8, "mins":[B
    const/4 v11, 0x6

    new-array v5, v11, [I

    .line 260
    .local v5, "intCharCounts":[I
    :cond_1
    add-int v11, p1, v4

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-ne v11, v12, :cond_8

    .line 261
    const/4 v11, 0x0

    invoke-static {v8, v11}, Ljava/util/Arrays;->fill([BB)V

    .line 262
    const/4 v11, 0x0

    invoke-static {v5, v11}, Ljava/util/Arrays;->fill([II)V

    .line 263
    const v11, 0x7fffffff

    invoke-static {v3, v5, v11, v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    move-result v6

    .line 264
    .local v6, "min":I
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v7

    .line 266
    .local v7, "minCount":I
    const/4 v11, 0x0

    aget v11, v5, v11

    if-ne v11, v6, :cond_3

    .line 267
    const/16 p2, 0x0

    goto :goto_0

    .line 251
    .end local v3    # "charCounts":[F
    .end local v4    # "charsProcessed":I
    .end local v5    # "intCharCounts":[I
    .end local v6    # "min":I
    .end local v7    # "minCount":I
    .end local v8    # "mins":[B
    :cond_2
    const/4 v11, 0x6

    new-array v3, v11, [F

    fill-array-data v3, :array_1

    .line 252
    .restart local v3    # "charCounts":[F
    const/4 v11, 0x0

    aput v11, v3, p2

    goto :goto_1

    .line 269
    .restart local v4    # "charsProcessed":I
    .restart local v5    # "intCharCounts":[I
    .restart local v6    # "min":I
    .restart local v7    # "minCount":I
    .restart local v8    # "mins":[B
    :cond_3
    const/4 v11, 0x1

    if-ne v7, v11, :cond_7

    .line 270
    const/4 v11, 0x5

    aget-byte v11, v8, v11

    if-lez v11, :cond_4

    .line 271
    const/16 p2, 0x5

    goto :goto_0

    .line 273
    :cond_4
    const/4 v11, 0x4

    aget-byte v11, v8, v11

    if-lez v11, :cond_5

    .line 274
    const/16 p2, 0x4

    goto :goto_0

    .line 276
    :cond_5
    const/4 v11, 0x2

    aget-byte v11, v8, v11

    if-lez v11, :cond_6

    .line 277
    const/16 p2, 0x2

    goto :goto_0

    .line 279
    :cond_6
    const/4 v11, 0x3

    aget-byte v11, v8, v11

    if-lez v11, :cond_7

    .line 280
    const/16 p2, 0x3

    goto :goto_0

    .line 283
    :cond_7
    const/16 p2, 0x1

    goto :goto_0

    .line 286
    .end local v6    # "min":I
    .end local v7    # "minCount":I
    :cond_8
    add-int v11, p1, v4

    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 287
    .local v2, "c":C
    add-int/lit8 v4, v4, 0x1

    .line 290
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 291
    const/4 v11, 0x0

    aget v12, v3, v11

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    aput v12, v3, v11

    .line 301
    :goto_2
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 302
    const/4 v11, 0x1

    aget v12, v3, v11

    const v13, 0x3f2aaaab

    add-float/2addr v12, v13

    aput v12, v3, v11

    .line 310
    :goto_3
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 311
    const/4 v11, 0x2

    aget v12, v3, v11

    const v13, 0x3f2aaaab

    add-float/2addr v12, v13

    aput v12, v3, v11

    .line 319
    :goto_4
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 320
    const/4 v11, 0x3

    aget v12, v3, v11

    const v13, 0x3f2aaaab

    add-float/2addr v12, v13

    aput v12, v3, v11

    .line 328
    :goto_5
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 329
    const/4 v11, 0x4

    aget v12, v3, v11

    const/high16 v13, 0x3f400000    # 0.75f

    add-float/2addr v12, v13

    aput v12, v3, v11

    .line 337
    :goto_6
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isSpecialB256(C)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 338
    const/4 v11, 0x5

    aget v12, v3, v11

    const/high16 v13, 0x40800000    # 4.0f

    add-float/2addr v12, v13

    aput v12, v3, v11

    .line 344
    :goto_7
    const/4 v11, 0x4

    if-lt v4, v11, :cond_1

    .line 345
    const/4 v11, 0x0

    invoke-static {v8, v11}, Ljava/util/Arrays;->fill([BB)V

    .line 346
    const/4 v11, 0x0

    invoke-static {v5, v11}, Ljava/util/Arrays;->fill([II)V

    .line 347
    const v11, 0x7fffffff

    invoke-static {v3, v5, v11, v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    .line 349
    const/4 v11, 0x0

    aget v11, v5, v11

    const/4 v12, 0x5

    aget v12, v5, v12

    const/4 v13, 0x1

    aget v13, v5, v13

    const/4 v14, 0x2

    aget v14, v5, v14

    const/4 v15, 0x3

    aget v15, v5, v15

    const/16 v16, 0x4

    aget v16, v5, v16

    invoke-static/range {v12 .. v16}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->min(IIIII)I

    move-result v12

    if-ge v11, v12, :cond_14

    .line 352
    const/16 p2, 0x0

    goto/16 :goto_0

    .line 292
    :cond_9
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 293
    const/4 v11, 0x0

    const/4 v12, 0x0

    aget v12, v3, v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-float v12, v12

    aput v12, v3, v11

    .line 294
    const/4 v11, 0x0

    aget v12, v3, v11

    const/high16 v13, 0x40000000    # 2.0f

    add-float/2addr v12, v13

    aput v12, v3, v11

    goto/16 :goto_2

    .line 296
    :cond_a
    const/4 v11, 0x0

    const/4 v12, 0x0

    aget v12, v3, v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-float v12, v12

    aput v12, v3, v11

    .line 297
    const/4 v11, 0x0

    aget v12, v3, v11

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v12, v13

    aput v12, v3, v11

    goto/16 :goto_2

    .line 303
    :cond_b
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 304
    const/4 v11, 0x1

    aget v12, v3, v11

    const v13, 0x402aaaab

    add-float/2addr v12, v13

    aput v12, v3, v11

    goto/16 :goto_3

    .line 306
    :cond_c
    const/4 v11, 0x1

    aget v12, v3, v11

    const v13, 0x3faaaaab

    add-float/2addr v12, v13

    aput v12, v3, v11

    goto/16 :goto_3

    .line 312
    :cond_d
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 313
    const/4 v11, 0x2

    aget v12, v3, v11

    const v13, 0x402aaaab

    add-float/2addr v12, v13

    aput v12, v3, v11

    goto/16 :goto_4

    .line 315
    :cond_e
    const/4 v11, 0x2

    aget v12, v3, v11

    const v13, 0x3faaaaab

    add-float/2addr v12, v13

    aput v12, v3, v11

    goto/16 :goto_4

    .line 321
    :cond_f
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 322
    const/4 v11, 0x3

    aget v12, v3, v11

    const v13, 0x408aaaab

    add-float/2addr v12, v13

    aput v12, v3, v11

    goto/16 :goto_5

    .line 324
    :cond_10
    const/4 v11, 0x3

    aget v12, v3, v11

    const v13, 0x40555555

    add-float/2addr v12, v13

    aput v12, v3, v11

    goto/16 :goto_5

    .line 330
    :cond_11
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 331
    const/4 v11, 0x4

    aget v12, v3, v11

    const/high16 v13, 0x40880000    # 4.25f

    add-float/2addr v12, v13

    aput v12, v3, v11

    goto/16 :goto_6

    .line 333
    :cond_12
    const/4 v11, 0x4

    aget v12, v3, v11

    const/high16 v13, 0x40500000    # 3.25f

    add-float/2addr v12, v13

    aput v12, v3, v11

    goto/16 :goto_6

    .line 340
    :cond_13
    const/4 v11, 0x5

    aget v12, v3, v11

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v12, v13

    aput v12, v3, v11

    goto/16 :goto_7

    .line 354
    :cond_14
    const/4 v11, 0x5

    aget v11, v5, v11

    const/4 v12, 0x0

    aget v12, v5, v12

    if-lt v11, v12, :cond_15

    const/4 v11, 0x5

    aget v11, v5, v11

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    aget v12, v5, v12

    const/4 v13, 0x2

    aget v13, v5, v13

    const/4 v14, 0x3

    aget v14, v5, v14

    const/4 v15, 0x4

    aget v15, v5, v15

    .line 355
    invoke-static {v12, v13, v14, v15}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->min(IIII)I

    move-result v12

    if-ge v11, v12, :cond_16

    .line 357
    :cond_15
    const/16 p2, 0x5

    goto/16 :goto_0

    .line 359
    :cond_16
    const/4 v11, 0x4

    aget v11, v5, v11

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x5

    aget v12, v5, v12

    const/4 v13, 0x1

    aget v13, v5, v13

    const/4 v14, 0x2

    aget v14, v5, v14

    const/4 v15, 0x3

    aget v15, v5, v15

    const/16 v16, 0x0

    aget v16, v5, v16

    invoke-static/range {v12 .. v16}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->min(IIIII)I

    move-result v12

    if-ge v11, v12, :cond_17

    .line 362
    const/16 p2, 0x4

    goto/16 :goto_0

    .line 364
    :cond_17
    const/4 v11, 0x2

    aget v11, v5, v11

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x5

    aget v12, v5, v12

    const/4 v13, 0x1

    aget v13, v5, v13

    const/4 v14, 0x4

    aget v14, v5, v14

    const/4 v15, 0x3

    aget v15, v5, v15

    const/16 v16, 0x0

    aget v16, v5, v16

    invoke-static/range {v12 .. v16}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->min(IIIII)I

    move-result v12

    if-ge v11, v12, :cond_18

    .line 367
    const/16 p2, 0x2

    goto/16 :goto_0

    .line 369
    :cond_18
    const/4 v11, 0x3

    aget v11, v5, v11

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x5

    aget v12, v5, v12

    const/4 v13, 0x1

    aget v13, v5, v13

    const/4 v14, 0x4

    aget v14, v5, v14

    const/4 v15, 0x2

    aget v15, v5, v15

    const/16 v16, 0x0

    aget v16, v5, v16

    invoke-static/range {v12 .. v16}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->min(IIIII)I

    move-result v12

    if-ge v11, v12, :cond_19

    .line 372
    const/16 p2, 0x3

    goto/16 :goto_0

    .line 374
    :cond_19
    const/4 v11, 0x1

    aget v11, v5, v11

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x0

    aget v12, v5, v12

    const/4 v13, 0x5

    aget v13, v5, v13

    const/4 v14, 0x4

    aget v14, v5, v14

    const/4 v15, 0x2

    aget v15, v5, v15

    invoke-static {v12, v13, v14, v15}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->min(IIII)I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 376
    const/4 v11, 0x1

    aget v11, v5, v11

    const/4 v12, 0x3

    aget v12, v5, v12

    if-ge v11, v12, :cond_1a

    .line 377
    const/16 p2, 0x1

    goto/16 :goto_0

    .line 379
    :cond_1a
    const/4 v11, 0x1

    aget v11, v5, v11

    const/4 v12, 0x3

    aget v12, v5, v12

    if-ne v11, v12, :cond_1

    .line 380
    add-int v11, p1, v4

    add-int/lit8 v9, v11, 0x1

    .line 381
    .local v9, "p":I
    :goto_8
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v9, v11, :cond_1c

    .line 382
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 383
    .local v10, "tc":C
    invoke-static {v10}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 384
    const/16 p2, 0x3

    goto/16 :goto_0

    .line 386
    :cond_1b
    invoke-static {v10}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v11

    if-nez v11, :cond_1d

    .line 391
    .end local v10    # "tc":C
    :cond_1c
    const/16 p2, 0x1

    goto/16 :goto_0

    .line 389
    .restart local v10    # "tc":C
    :cond_1d
    add-int/lit8 v9, v9, 0x1

    .line 390
    goto :goto_8

    .line 249
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    .line 251
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40100000    # 2.25f
    .end array-data
.end method

.method private static min(IIII)I
    .locals 1
    .param p0, "f1"    # I
    .param p1, "f2"    # I
    .param p2, "f3"    # I
    .param p3, "f4"    # I

    .prologue
    .line 403
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private static min(IIIII)I
    .locals 1
    .param p0, "f1"    # I
    .param p1, "f2"    # I
    .param p2, "f3"    # I
    .param p3, "f4"    # I
    .param p4, "f5"    # I

    .prologue
    .line 399
    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->min(IIII)I

    move-result v0

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private static randomize253State(I)C
    .locals 3
    .param p0, "codewordPosition"    # I

    .prologue
    .line 115
    mul-int/lit16 v2, p0, 0x95

    rem-int/lit16 v2, v2, 0xfd

    add-int/lit8 v0, v2, 0x1

    .line 116
    .local v0, "pseudoRandom":I
    add-int/lit16 v1, v0, 0x81

    .line 117
    .local v1, "tempVariable":I
    const/16 v2, 0xfe

    if-gt v1, v2, :cond_0

    .end local v1    # "tempVariable":I
    :goto_0
    int-to-char v2, v1

    return v2

    .restart local v1    # "tempVariable":I
    :cond_0
    add-int/lit16 v1, v1, -0xfe

    goto :goto_0
.end method

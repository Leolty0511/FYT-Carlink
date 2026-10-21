.class public final Lcom/google/zxing/pdf417/PDF417Writer;
.super Ljava/lang/Object;
.source "PDF417Writer.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# static fields
.field private static final DEFAULT_ERROR_CORRECTION_LEVEL:I = 0x2

.field private static final WHITE_SPACE:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bitMatrixFromBitArray([[BI)Lcom/google/zxing/common/BitMatrix;
    .locals 9
    .param p0, "input"    # [[B
    .param p1, "margin"    # I

    .prologue
    const/4 v8, 0x0

    .line 145
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    aget-object v5, p0, v8

    array-length v5, v5

    mul-int/lit8 v6, p1, 0x2

    add-int/2addr v5, v6

    array-length v6, p0

    mul-int/lit8 v7, p1, 0x2

    add-int/2addr v6, v7

    invoke-direct {v1, v5, v6}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 146
    .local v1, "output":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->clear()V

    .line 147
    const/4 v3, 0x0

    .local v3, "y":I
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v5

    sub-int/2addr v5, p1

    add-int/lit8 v4, v5, -0x1

    .local v4, "yOutput":I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_2

    .line 148
    aget-object v0, p0, v3

    .line 149
    .local v0, "inputY":[B
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    aget-object v5, p0, v8

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 151
    aget-byte v5, v0, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 152
    add-int v5, v2, p1

    invoke-virtual {v1, v5, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 149
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 156
    .end local v0    # "inputY":[B
    .end local v2    # "x":I
    :cond_2
    return-object v1
.end method

.method private static bitMatrixFromEncoder(Lcom/google/zxing/pdf417/encoder/PDF417;Ljava/lang/String;IIIIZ)Lcom/google/zxing/common/BitMatrix;
    .locals 11
    .param p0, "encoder"    # Lcom/google/zxing/pdf417/encoder/PDF417;
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "errorCorrectionLevel"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "margin"    # I
    .param p6, "autoECI"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 111
    move/from16 v0, p6

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/zxing/pdf417/encoder/PDF417;->generateBarcodeLogic(Ljava/lang/String;IZ)V

    .line 113
    const/4 v1, 0x4

    .line 114
    .local v1, "aspectRatio":I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/encoder/PDF417;->getBarcodeMatrix()Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v1}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v2

    .line 115
    .local v2, "originalScale":[[B
    const/4 v3, 0x0

    .line 116
    .local v3, "rotated":Z
    if-le p4, p3, :cond_2

    const/4 v8, 0x1

    :goto_0
    const/4 v9, 0x0

    aget-object v9, v2, v9

    array-length v9, v9

    array-length v10, v2

    if-ge v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_1
    if-eq v8, v9, :cond_0

    .line 117
    invoke-static {v2}, Lcom/google/zxing/pdf417/PDF417Writer;->rotateArray([[B)[[B

    move-result-object v2

    .line 118
    const/4 v3, 0x1

    .line 121
    :cond_0
    const/4 v8, 0x0

    aget-object v8, v2, v8

    array-length v8, v8

    div-int v5, p3, v8

    .line 122
    .local v5, "scaleX":I
    array-length v8, v2

    div-int v6, p4, v8

    .line 123
    .local v6, "scaleY":I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 125
    .local v4, "scale":I
    const/4 v8, 0x1

    if-le v4, v8, :cond_4

    .line 127
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/encoder/PDF417;->getBarcodeMatrix()Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    move-result-object v8

    mul-int v9, v4, v1

    invoke-virtual {v8, v4, v9}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v7

    .line 128
    .local v7, "scaledMatrix":[[B
    if-eqz v3, :cond_1

    .line 129
    invoke-static {v7}, Lcom/google/zxing/pdf417/PDF417Writer;->rotateArray([[B)[[B

    move-result-object v7

    .line 131
    :cond_1
    move/from16 v0, p5

    invoke-static {v7, v0}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFromBitArray([[BI)Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    .line 133
    .end local v7    # "scaledMatrix":[[B
    :goto_2
    return-object v8

    .line 116
    .end local v4    # "scale":I
    .end local v5    # "scaleX":I
    .end local v6    # "scaleY":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 133
    .restart local v4    # "scale":I
    .restart local v5    # "scaleX":I
    .restart local v6    # "scaleY":I
    :cond_4
    move/from16 v0, p5

    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFromBitArray([[BI)Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    goto :goto_2
.end method

.method private static rotateArray([[B)[[B
    .locals 7
    .param p0, "bitarray"    # [[B

    .prologue
    const/4 v6, 0x0

    .line 163
    aget-object v4, p0, v6

    array-length v4, v4

    array-length v5, p0

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    .line 164
    .local v3, "temp":[[B
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 167
    array-length v4, p0

    sub-int/2addr v4, v0

    add-int/lit8 v1, v4, -0x1

    .line 168
    .local v1, "inverseii":I
    const/4 v2, 0x0

    .local v2, "jj":I
    :goto_1
    aget-object v4, p0, v6

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 169
    aget-object v4, v3, v2

    aget-object v5, p0, v0

    aget-byte v5, v5, v2

    aput-byte v5, v4, v1

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 164
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "inverseii":I
    .end local v2    # "jj":I
    :cond_1
    return-object v3
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/pdf417/PDF417Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 10
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 53
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can only encode PDF_417, but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_0
    new-instance v0, Lcom/google/zxing/pdf417/encoder/PDF417;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/encoder/PDF417;-><init>()V

    .line 58
    .local v0, "encoder":Lcom/google/zxing/pdf417/encoder/PDF417;
    const/16 v5, 0x1e

    .line 59
    .local v5, "margin":I
    const/4 v2, 0x2

    .line 60
    .local v2, "errorCorrectionLevel":I
    const/4 v6, 0x0

    .line 62
    .local v6, "autoECI":Z
    if-eqz p5, :cond_7

    .line 63
    sget-object v1, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    sget-object v1, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/encoder/PDF417;->setCompact(Z)V

    .line 66
    :cond_1
    sget-object v1, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    sget-object v1, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/pdf417/encoder/Compaction;->valueOf(Ljava/lang/String;)Lcom/google/zxing/pdf417/encoder/Compaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/encoder/PDF417;->setCompaction(Lcom/google/zxing/pdf417/encoder/Compaction;)V

    .line 69
    :cond_2
    sget-object v1, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    sget-object v1, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/pdf417/encoder/Dimensions;

    .line 71
    .local v7, "dimensions":Lcom/google/zxing/pdf417/encoder/Dimensions;
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMaxCols()I

    move-result v1

    .line 72
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMinCols()I

    move-result v3

    .line 73
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMaxRows()I

    move-result v4

    .line 74
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMinRows()I

    move-result v9

    .line 71
    invoke-virtual {v0, v1, v3, v4, v9}, Lcom/google/zxing/pdf417/encoder/PDF417;->setDimensions(IIII)V

    .line 76
    .end local v7    # "dimensions":Lcom/google/zxing/pdf417/encoder/Dimensions;
    :cond_3
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 79
    :cond_4
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 82
    :cond_5
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 83
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    .line 84
    .local v8, "encoding":Ljava/nio/charset/Charset;
    invoke-virtual {v0, v8}, Lcom/google/zxing/pdf417/encoder/PDF417;->setEncoding(Ljava/nio/charset/Charset;)V

    .line 86
    .end local v8    # "encoding":Ljava/nio/charset/Charset;
    :cond_6
    sget-object v1, Lcom/google/zxing/EncodeHintType;->PDF417_AUTO_ECI:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/google/zxing/EncodeHintType;->PDF417_AUTO_ECI:Lcom/google/zxing/EncodeHintType;

    .line 87
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v6, 0x1

    :cond_7
    :goto_0
    move-object v1, p1

    move v3, p3

    move v4, p4

    .line 90
    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFromEncoder(Lcom/google/zxing/pdf417/encoder/PDF417;Ljava/lang/String;IIIIZ)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1

    .line 87
    :cond_8
    const/4 v6, 0x0

    goto :goto_0
.end method

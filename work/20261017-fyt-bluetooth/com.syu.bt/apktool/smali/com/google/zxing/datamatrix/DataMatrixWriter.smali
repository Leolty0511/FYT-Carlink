.class public final Lcom/google/zxing/datamatrix/DataMatrixWriter;
.super Ljava/lang/Object;
.source "DataMatrixWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertByteMatrixToBitMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;II)Lcom/google/zxing/common/BitMatrix;
    .locals 16
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v6

    .line 187
    .local v6, "matrixWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    .line 188
    .local v5, "matrixHeight":I
    move/from16 v0, p1

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 189
    .local v10, "outputWidth":I
    move/from16 v0, p2

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 191
    .local v9, "outputHeight":I
    div-int v14, v10, v6

    div-int v15, v9, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 193
    .local v7, "multiple":I
    mul-int v14, v6, v7

    sub-int v14, v10, v14

    div-int/lit8 v4, v14, 0x2

    .line 194
    .local v4, "leftPadding":I
    mul-int v14, v5, v7

    sub-int v14, v9, v14

    div-int/lit8 v13, v14, 0x2

    .line 199
    .local v13, "topPadding":I
    move/from16 v0, p2

    if-lt v0, v5, :cond_0

    move/from16 v0, p1

    if-ge v0, v6, :cond_2

    .line 200
    :cond_0
    const/4 v4, 0x0

    .line 201
    const/4 v13, 0x0

    .line 202
    new-instance v8, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v8, v6, v5}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 207
    .local v8, "output":Lcom/google/zxing/common/BitMatrix;
    :goto_0
    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->clear()V

    .line 208
    const/4 v3, 0x0

    .local v3, "inputY":I
    move v12, v13

    .local v12, "outputY":I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 210
    const/4 v2, 0x0

    .local v2, "inputX":I
    move v11, v4

    .local v11, "outputX":I
    :goto_2
    if-ge v2, v6, :cond_3

    .line 211
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 212
    invoke-virtual {v8, v11, v12, v7, v7}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 210
    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v11, v7

    goto :goto_2

    .line 204
    .end local v2    # "inputX":I
    .end local v3    # "inputY":I
    .end local v8    # "output":Lcom/google/zxing/common/BitMatrix;
    .end local v11    # "outputX":I
    .end local v12    # "outputY":I
    :cond_2
    new-instance v8, Lcom/google/zxing/common/BitMatrix;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v8, v0, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .restart local v8    # "output":Lcom/google/zxing/common/BitMatrix;
    goto :goto_0

    .line 208
    .restart local v2    # "inputX":I
    .restart local v3    # "inputY":I
    .restart local v11    # "outputX":I
    .restart local v12    # "outputY":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v12, v7

    goto :goto_1

    .line 217
    .end local v2    # "inputX":I
    .end local v11    # "outputX":I
    :cond_4
    return-object v8
.end method

.method private static encodeLowLevel(Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;II)Lcom/google/zxing/common/BitMatrix;
    .locals 11
    .param p0, "placement"    # Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;
    .param p1, "symbolInfo"    # Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 129
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v4

    .line 130
    .local v4, "symbolWidth":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v3

    .line 132
    .local v3, "symbolHeight":I
    new-instance v0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v7

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v10

    invoke-direct {v0, v7, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 134
    .local v0, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    const/4 v2, 0x0

    .line 136
    .local v2, "matrixY":I
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_0
    if-ge v6, v3, :cond_9

    .line 139
    iget v7, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    rem-int v7, v6, v7

    if-nez v7, :cond_2

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "matrixX":I
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 142
    rem-int/lit8 v7, v5, 0x2

    if-nez v7, :cond_0

    move v7, v8

    :goto_2
    invoke-virtual {v0, v1, v2, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 143
    add-int/lit8 v1, v1, 0x1

    .line 141
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v7, v9

    .line 142
    goto :goto_2

    .line 145
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 147
    .end local v1    # "matrixX":I
    .end local v5    # "x":I
    :cond_2
    const/4 v1, 0x0

    .line 148
    .restart local v1    # "matrixX":I
    const/4 v5, 0x0

    .restart local v5    # "x":I
    :goto_3
    if-ge v5, v4, :cond_6

    .line 150
    iget v7, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    rem-int v7, v5, v7

    if-nez v7, :cond_3

    .line 151
    invoke-virtual {v0, v1, v2, v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 152
    add-int/lit8 v1, v1, 0x1

    .line 154
    :cond_3
    invoke-virtual {p0, v5, v6}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->getBit(II)Z

    move-result v7

    invoke-virtual {v0, v1, v2, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 155
    add-int/lit8 v1, v1, 0x1

    .line 157
    iget v7, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    rem-int v7, v5, v7

    iget v10, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    add-int/lit8 v10, v10, -0x1

    if-ne v7, v10, :cond_4

    .line 158
    rem-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_5

    move v7, v8

    :goto_4
    invoke-virtual {v0, v1, v2, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    .line 148
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    move v7, v9

    .line 158
    goto :goto_4

    .line 162
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 164
    iget v7, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    rem-int v7, v6, v7

    iget v10, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    add-int/lit8 v10, v10, -0x1

    if-ne v7, v10, :cond_8

    .line 165
    const/4 v1, 0x0

    .line 166
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 167
    invoke-virtual {v0, v1, v2, v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    .line 166
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 170
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 136
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "matrixX":I
    .end local v5    # "x":I
    :cond_9
    invoke-static {v0, p2, p3}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->convertByteMatrixToBitMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 45
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 21
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

    .prologue
    .line 51
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 52
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Found empty contents"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 55
    :cond_0
    sget-object v18, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 56
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Can only encode DATA_MATRIX, but got "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 59
    :cond_1
    if-ltz p3, :cond_2

    if-gez p4, :cond_3

    .line 60
    :cond_2
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Requested dimensions can\'t be negative: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x78

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 64
    :cond_3
    sget-object v16, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 65
    .local v16, "shape":Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    const/4 v11, 0x0

    .line 66
    .local v11, "minSize":Lcom/google/zxing/Dimension;
    const/4 v10, 0x0

    .line 67
    .local v10, "maxSize":Lcom/google/zxing/Dimension;
    if-eqz p5, :cond_6

    .line 68
    sget-object v18, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_SHAPE:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 69
    .local v15, "requestedShape":Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    if-eqz v15, :cond_4

    .line 70
    move-object/from16 v16, v15

    .line 73
    :cond_4
    sget-object v18, Lcom/google/zxing/EncodeHintType;->MIN_SIZE:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/Dimension;

    .line 74
    .local v14, "requestedMinSize":Lcom/google/zxing/Dimension;
    if-eqz v14, :cond_5

    .line 75
    move-object v11, v14

    .line 78
    :cond_5
    sget-object v18, Lcom/google/zxing/EncodeHintType;->MAX_SIZE:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/zxing/Dimension;

    .line 79
    .local v13, "requestedMaxSize":Lcom/google/zxing/Dimension;
    if-eqz v13, :cond_6

    .line 80
    move-object v10, v13

    .line 88
    .end local v13    # "requestedMaxSize":Lcom/google/zxing/Dimension;
    .end local v14    # "requestedMinSize":Lcom/google/zxing/Dimension;
    .end local v15    # "requestedShape":Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    :cond_6
    if-eqz p5, :cond_8

    sget-object v18, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_COMPACT:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    sget-object v18, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_COMPACT:Lcom/google/zxing/EncodeHintType;

    .line 89
    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/4 v6, 0x1

    .line 90
    .local v6, "hasCompactionHint":Z
    :goto_0
    if-eqz v6, :cond_b

    .line 92
    sget-object v18, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    sget-object v18, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    .line 93
    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/4 v9, 0x1

    .line 95
    .local v9, "hasGS1FormatHint":Z
    :goto_1
    const/4 v3, 0x0

    .line 96
    .local v3, "charset":Ljava/nio/charset/Charset;
    sget-object v18, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 97
    .local v7, "hasEncodingHint":Z
    if-eqz v7, :cond_7

    .line 98
    sget-object v18, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 100
    :cond_7
    if-eqz v9, :cond_a

    const/16 v18, 0x1d

    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v3, v1, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->encodeHighLevel(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .end local v3    # "charset":Ljava/nio/charset/Charset;
    .end local v7    # "hasEncodingHint":Z
    .end local v9    # "hasGS1FormatHint":Z
    .local v5, "encoded":Ljava/lang/String;
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-static {v0, v1, v11, v10, v2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v17

    .line 110
    .local v17, "symbolInfo":Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    move-object/from16 v0, v17

    invoke-static {v5, v0}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->encodeECC200(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "codewords":Ljava/lang/String;
    new-instance v12, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;

    .line 114
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v18

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v12, v4, v0, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;-><init>(Ljava/lang/CharSequence;II)V

    .line 115
    .local v12, "placement":Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;
    invoke-virtual {v12}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->place()V

    .line 118
    move-object/from16 v0, v17

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v12, v0, v1, v2}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->encodeLowLevel(Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v18

    return-object v18

    .line 89
    .end local v4    # "codewords":Ljava/lang/String;
    .end local v5    # "encoded":Ljava/lang/String;
    .end local v6    # "hasCompactionHint":Z
    .end local v12    # "placement":Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;
    .end local v17    # "symbolInfo":Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 93
    .restart local v6    # "hasCompactionHint":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_1

    .line 100
    .restart local v3    # "charset":Ljava/nio/charset/Charset;
    .restart local v7    # "hasEncodingHint":Z
    .restart local v9    # "hasGS1FormatHint":Z
    :cond_a
    const/16 v18, -0x1

    goto :goto_2

    .line 102
    .end local v3    # "charset":Ljava/nio/charset/Charset;
    .end local v7    # "hasEncodingHint":Z
    .end local v9    # "hasGS1FormatHint":Z
    :cond_b
    if-eqz p5, :cond_c

    sget-object v18, Lcom/google/zxing/EncodeHintType;->FORCE_C40:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    sget-object v18, Lcom/google/zxing/EncodeHintType;->FORCE_C40:Lcom/google/zxing/EncodeHintType;

    .line 103
    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/4 v8, 0x1

    .line 104
    .local v8, "hasForceC40Hint":Z
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1, v11, v10, v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "encoded":Ljava/lang/String;
    goto :goto_3

    .line 103
    .end local v5    # "encoded":Ljava/lang/String;
    .end local v8    # "hasForceC40Hint":Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_4
.end method

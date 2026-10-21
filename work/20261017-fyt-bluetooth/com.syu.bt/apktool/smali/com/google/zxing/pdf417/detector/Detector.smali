.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field private static final BARCODE_MIN_HEIGHT:I = 0xa

.field private static final INDEXES_START_PATTERN:[I

.field private static final INDEXES_STOP_PATTERN:[I

.field private static final MAX_AVG_VARIANCE:F = 0.42f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.8f

.field private static final MAX_PATTERN_DRIFT:I = 0x5

.field private static final MAX_PIXEL_DRIFT:I = 0x3

.field private static final MAX_STOP_PATTERN_HEIGHT_VARIANCE:F = 0.5f

.field private static final ROTATIONS:[I

.field private static final ROW_STEP:I = 0x5

.field private static final SKIPPED_ROW_COUNT_MAX:I = 0x19

.field private static final START_PATTERN:[I

.field private static final STOP_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 40
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    .line 41
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    .line 48
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    .line 50
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->ROTATIONS:[I

    return-void

    .line 40
    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0x1
        0x5
    .end array-data

    .line 41
    :array_1
    .array-data 4
        0x6
        0x2
        0x7
        0x3
    .end array-data

    .line 48
    :array_2
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    .line 50
    :array_3
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data

    .line 61
    :array_4
    .array-data 4
        0x0
        0xb4
        0x10e
        0x5a
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method private static applyRotation(Lcom/google/zxing/common/BitMatrix;I)Lcom/google/zxing/common/BitMatrix;
    .locals 2
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "rotation"    # I

    .prologue
    .line 100
    rem-int/lit16 v1, p1, 0x168

    if-nez v1, :cond_0

    .line 106
    .end local p0    # "matrix":Lcom/google/zxing/common/BitMatrix;
    :goto_0
    return-object p0

    .line 104
    .restart local p0    # "matrix":Lcom/google/zxing/common/BitMatrix;
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 105
    .local v0, "newMatrix":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v0, p1}, Lcom/google/zxing/common/BitMatrix;->rotate(I)V

    move-object p0, v0

    .line 106
    goto :goto_0
.end method

.method private static copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V
    .locals 3
    .param p0, "result"    # [Lcom/google/zxing/ResultPoint;
    .param p1, "tmpResult"    # [Lcom/google/zxing/ResultPoint;
    .param p2, "destinationIndexes"    # [I

    .prologue
    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 202
    aget v1, p2, v0

    aget-object v2, p1, v0

    aput-object v2, p0, v1

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method public static detect(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;
    .locals 9
    .param p0, "image"    # Lcom/google/zxing/BinaryBitmap;
    .param p2, "multiple"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;Z)",
            "Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v5, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    .line 83
    .local v2, "originalMatrix":Lcom/google/zxing/common/BitMatrix;
    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->ROTATIONS:[I

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_1

    aget v3, v6, v4

    .line 84
    .local v3, "rotation":I
    invoke-static {v2, v3}, Lcom/google/zxing/pdf417/detector/Detector;->applyRotation(Lcom/google/zxing/common/BitMatrix;I)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 85
    .local v1, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    invoke-static {p2, v1}, Lcom/google/zxing/pdf417/detector/Detector;->detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;

    move-result-object v0

    .line 86
    .local v0, "barcodeCoordinates":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/ResultPoint;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 87
    new-instance v4, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;

    invoke-direct {v4, v1, v0, v3}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;Ljava/util/List;I)V

    .line 90
    .end local v0    # "barcodeCoordinates":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/ResultPoint;>;"
    .end local v1    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .end local v3    # "rotation":I
    :goto_1
    return-object v4

    .line 83
    .restart local v0    # "barcodeCoordinates":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/ResultPoint;>;"
    .restart local v1    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .restart local v3    # "rotation":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "barcodeCoordinates":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/ResultPoint;>;"
    .end local v1    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .end local v3    # "rotation":I
    :cond_1
    new-instance v4, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v4, v2, v6, v5}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;Ljava/util/List;I)V

    goto :goto_1
.end method

.method private static detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;
    .locals 13
    .param p0, "multiple"    # Z
    .param p1, "bitMatrix"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/zxing/common/BitMatrix;",
            ")",
            "Ljava/util/List",
            "<[",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v1, "barcodeCoordinates":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/ResultPoint;>;"
    const/4 v4, 0x0

    .line 119
    .local v4, "row":I
    const/4 v2, 0x0

    .line 120
    .local v2, "column":I
    const/4 v3, 0x0

    .line 121
    .local v3, "foundBarcodeInRow":Z
    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 122
    invoke-static {p1, v4, v2}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices(Lcom/google/zxing/common/BitMatrix;II)[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 124
    .local v5, "vertices":[Lcom/google/zxing/ResultPoint;
    const/4 v6, 0x0

    aget-object v6, v5, v6

    if-nez v6, :cond_5

    aget-object v6, v5, v10

    if-nez v6, :cond_5

    .line 125
    if-nez v3, :cond_1

    .line 159
    .end local v5    # "vertices":[Lcom/google/zxing/ResultPoint;
    :cond_0
    return-object v1

    .line 131
    .restart local v5    # "vertices":[Lcom/google/zxing/ResultPoint;
    :cond_1
    const/4 v3, 0x0

    .line 132
    const/4 v2, 0x0

    .line 133
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/ResultPoint;

    .line 134
    .local v0, "barcodeCoordinate":[Lcom/google/zxing/ResultPoint;
    aget-object v7, v0, v11

    if-eqz v7, :cond_3

    .line 135
    int-to-float v7, v4

    aget-object v8, v0, v11

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v4, v7

    .line 137
    :cond_3
    aget-object v7, v0, v10

    if-eqz v7, :cond_2

    .line 138
    aget-object v7, v0, v10

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1

    .line 141
    .end local v0    # "barcodeCoordinate":[Lcom/google/zxing/ResultPoint;
    :cond_4
    add-int/lit8 v4, v4, 0x5

    .line 142
    goto :goto_0

    .line 144
    :cond_5
    const/4 v3, 0x1

    .line 145
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    if-eqz p0, :cond_0

    .line 151
    aget-object v6, v5, v9

    if-eqz v6, :cond_6

    .line 152
    aget-object v6, v5, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 153
    aget-object v6, v5, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    float-to-int v4, v6

    goto :goto_0

    .line 155
    :cond_6
    aget-object v6, v5, v12

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 156
    aget-object v6, v5, v12

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    float-to-int v4, v6

    goto :goto_0
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitMatrix;III[I[I)[I
    .locals 13
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "width"    # I
    .param p4, "pattern"    # [I
    .param p5, "counters"    # [I

    .prologue
    .line 284
    const/4 v10, 0x0

    move-object/from16 v0, p5

    array-length v11, v0

    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v10, v11, v12}, Ljava/util/Arrays;->fill([IIII)V

    .line 285
    move v5, p1

    .line 286
    .local v5, "patternStart":I
    const/4 v7, 0x0

    .line 289
    .local v7, "pixelDrift":I
    :goto_0
    invoke-virtual {p0, v5, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_1

    if-lez v5, :cond_1

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pixelDrift":I
    .local v8, "pixelDrift":I
    const/4 v10, 0x3

    if-ge v7, v10, :cond_0

    .line 290
    add-int/lit8 v5, v5, -0x1

    move v7, v8

    .end local v8    # "pixelDrift":I
    .restart local v7    # "pixelDrift":I
    goto :goto_0

    .end local v7    # "pixelDrift":I
    .restart local v8    # "pixelDrift":I
    :cond_0
    move v7, v8

    .line 292
    .end local v8    # "pixelDrift":I
    .restart local v7    # "pixelDrift":I
    :cond_1
    move v9, v5

    .line 293
    .local v9, "x":I
    const/4 v2, 0x0

    .line 294
    .local v2, "counterPosition":I
    move-object/from16 v0, p4

    array-length v4, v0

    .line 295
    .local v4, "patternLength":I
    const/4 v3, 0x0

    .local v3, "isWhite":Z
    :goto_1
    move/from16 v0, p3

    if-ge v9, v0, :cond_6

    .line 296
    invoke-virtual {p0, v9, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    .line 297
    .local v6, "pixel":Z
    if-eq v6, v3, :cond_2

    .line 298
    aget v10, p5, v2

    add-int/lit8 v10, v10, 0x1

    aput v10, p5, v2

    .line 295
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 300
    :cond_2
    add-int/lit8 v10, v4, -0x1

    if-ne v2, v10, :cond_4

    .line 301
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[I)F

    move-result v10

    const v11, 0x3ed70a3d    # 0.42f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    .line 302
    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v5, v10, v11

    const/4 v11, 0x1

    aput v9, v10, v11

    .line 320
    .end local v6    # "pixel":Z
    :goto_3
    return-object v10

    .line 304
    .restart local v6    # "pixel":Z
    :cond_3
    const/4 v10, 0x0

    aget v10, p5, v10

    const/4 v11, 0x1

    aget v11, p5, v11

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    .line 305
    const/4 v10, 0x2

    const/4 v11, 0x0

    add-int/lit8 v12, v2, -0x1

    move-object/from16 v0, p5

    move-object/from16 v1, p5

    invoke-static {v0, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    add-int/lit8 v10, v2, -0x1

    const/4 v11, 0x0

    aput v11, p5, v10

    .line 307
    const/4 v10, 0x0

    aput v10, p5, v2

    .line 308
    add-int/lit8 v2, v2, -0x1

    .line 312
    :goto_4
    const/4 v10, 0x1

    aput v10, p5, v2

    .line 313
    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_5
    goto :goto_2

    .line 310
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 313
    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .line 316
    .end local v6    # "pixel":Z
    :cond_6
    add-int/lit8 v10, v4, -0x1

    if-ne v2, v10, :cond_7

    .line 317
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[I)F

    move-result v10

    const v11, 0x3ed70a3d    # 0.42f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    .line 318
    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v5, v10, v11

    const/4 v11, 0x1

    add-int/lit8 v12, v9, -0x1

    aput v12, v10, v11

    goto :goto_3

    .line 320
    :cond_7
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private static findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIIII[I)[Lcom/google/zxing/ResultPoint;
    .locals 12
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "height"    # I
    .param p2, "width"    # I
    .param p3, "startRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "minHeight"    # I
    .param p6, "pattern"    # [I

    .prologue
    .line 213
    const/4 v1, 0x4

    new-array v10, v1, [Lcom/google/zxing/ResultPoint;

    .line 214
    .local v10, "result":[Lcom/google/zxing/ResultPoint;
    const/4 v7, 0x0

    .line 215
    .local v7, "found":Z
    move-object/from16 v0, p6

    array-length v1, v0

    new-array v6, v1, [I

    .line 216
    .local v6, "counters":[I
    :goto_0
    if-ge p3, p1, :cond_2

    move-object v1, p0

    move/from16 v2, p4

    move v3, p3

    move v4, p2

    move-object/from16 v5, p6

    .line 217
    invoke-static/range {v1 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;III[I[I)[I

    move-result-object v8

    .line 218
    .local v8, "loc":[I
    if-eqz v8, :cond_3

    .line 219
    :goto_1
    if-lez p3, :cond_1

    .line 220
    add-int/lit8 p3, p3, -0x1

    move-object v1, p0

    move/from16 v2, p4

    move v3, p3

    move v4, p2

    move-object/from16 v5, p6

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;III[I[I)[I

    move-result-object v9

    .line 221
    .local v9, "previousRowLoc":[I
    if-eqz v9, :cond_0

    .line 222
    move-object v8, v9

    goto :goto_1

    .line 224
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 228
    .end local v9    # "previousRowLoc":[I
    :cond_1
    const/4 v1, 0x0

    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x0

    aget v4, v8, v4

    int-to-float v4, v4

    int-to-float v5, p3

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v10, v1

    .line 229
    const/4 v1, 0x1

    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x1

    aget v4, v8, v4

    int-to-float v4, v4

    int-to-float v5, p3

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v10, v1

    .line 230
    const/4 v7, 0x1

    .line 234
    .end local v8    # "loc":[I
    :cond_2
    add-int/lit8 v3, p3, 0x1

    .line 236
    .local v3, "stopRow":I
    if-eqz v7, :cond_6

    .line 237
    const/4 v11, 0x0

    .line 238
    .local v11, "skippedRowCount":I
    const/4 v1, 0x2

    new-array v9, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    aput v2, v9, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    aput v2, v9, v1

    .line 239
    .restart local v9    # "previousRowLoc":[I
    :goto_2
    if-ge v3, p1, :cond_5

    .line 240
    const/4 v1, 0x0

    aget v2, v9, v1

    move-object v1, p0

    move v4, p2

    move-object/from16 v5, p6

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;III[I[I)[I

    move-result-object v8

    .line 245
    .restart local v8    # "loc":[I
    if-eqz v8, :cond_4

    const/4 v1, 0x0

    aget v1, v9, v1

    const/4 v2, 0x0

    aget v2, v8, v2

    sub-int/2addr v1, v2

    .line 246
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    const/4 v1, 0x1

    aget v1, v9, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    sub-int/2addr v1, v2

    .line 247
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    .line 248
    move-object v9, v8

    .line 249
    const/4 v11, 0x0

    .line 239
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 216
    .end local v3    # "stopRow":I
    .end local v9    # "previousRowLoc":[I
    .end local v11    # "skippedRowCount":I
    :cond_3
    add-int/lit8 p3, p3, 0x5

    goto/16 :goto_0

    .line 251
    .restart local v3    # "stopRow":I
    .restart local v9    # "previousRowLoc":[I
    .restart local v11    # "skippedRowCount":I
    :cond_4
    const/16 v1, 0x19

    if-le v11, v1, :cond_8

    .line 258
    .end local v8    # "loc":[I
    :cond_5
    add-int/lit8 v1, v11, 0x1

    sub-int/2addr v3, v1

    .line 259
    const/4 v1, 0x2

    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x0

    aget v4, v9, v4

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v10, v1

    .line 260
    const/4 v1, 0x3

    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x1

    aget v4, v9, v4

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v10, v1

    .line 262
    .end local v9    # "previousRowLoc":[I
    .end local v11    # "skippedRowCount":I
    :cond_6
    sub-int v1, v3, p3

    move/from16 v0, p5

    if-ge v1, v0, :cond_7

    .line 263
    const/4 v1, 0x0

    invoke-static {v10, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    :cond_7
    return-object v10

    .line 254
    .restart local v8    # "loc":[I
    .restart local v9    # "previousRowLoc":[I
    .restart local v11    # "skippedRowCount":I
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3
.end method

.method private static findVertices(Lcom/google/zxing/common/BitMatrix;II)[Lcom/google/zxing/ResultPoint;
    .locals 12
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "startRow"    # I
    .param p2, "startColumn"    # I

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    .line 178
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 179
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 181
    .local v2, "width":I
    const/16 v0, 0x8

    new-array v8, v0, [Lcom/google/zxing/ResultPoint;

    .line 182
    .local v8, "result":[Lcom/google/zxing/ResultPoint;
    const/16 v5, 0xa

    .line 183
    .local v5, "minHeight":I
    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    sget-object v3, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    invoke-static {v8, v0, v3}, Lcom/google/zxing/pdf417/detector/Detector;->copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V

    .line 186
    aget-object v0, v8, v10

    if-eqz v0, :cond_0

    .line 187
    aget-object v0, v8, v10

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int p2, v0

    .line 188
    aget-object v0, v8, v10

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int p1, v0

    .line 189
    aget-object v0, v8, v11

    if-eqz v0, :cond_0

    .line 190
    aget-object v0, v8, v11

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v7, v0

    .line 191
    .local v7, "endRow":I
    sub-int v9, v7, p1

    .line 192
    .local v9, "startPatternHeight":I
    int-to-float v0, v9

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v5, v0

    .line 195
    .end local v7    # "endRow":I
    .end local v9    # "startPatternHeight":I
    :cond_0
    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    sget-object v3, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    invoke-static {v8, v0, v3}, Lcom/google/zxing/pdf417/detector/Detector;->copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V

    .line 197
    return-object v8
.end method

.method private static patternMatchVariance([I[I)F
    .locals 14
    .param p0, "counters"    # [I
    .param p1, "pattern"    # [I

    .prologue
    const/high16 v11, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 334
    array-length v3, p0

    .line 335
    .local v3, "numCounters":I
    const/4 v6, 0x0

    .line 336
    .local v6, "total":I
    const/4 v4, 0x0

    .line 337
    .local v4, "patternLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 338
    aget v12, p0, v1

    add-int/2addr v6, v12

    .line 339
    aget v12, p1, v1

    add-int/2addr v4, v12

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_0
    if-ge v6, v4, :cond_2

    .line 362
    :cond_1
    :goto_1
    return v11

    .line 349
    :cond_2
    int-to-float v12, v6

    int-to-float v13, v4

    div-float v8, v12, v13

    .line 350
    .local v8, "unitBarWidth":F
    const v12, 0x3f4ccccd    # 0.8f

    mul-float v2, v12, v8

    .line 352
    .local v2, "maxIndividualVariance":F
    const/4 v7, 0x0

    .line 353
    .local v7, "totalVariance":F
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_2
    if-ge v10, v3, :cond_4

    .line 354
    aget v0, p0, v10

    .line 355
    .local v0, "counter":I
    aget v12, p1, v10

    int-to-float v12, v12

    mul-float v5, v12, v8

    .line 356
    .local v5, "scaledPattern":F
    int-to-float v12, v0

    cmpl-float v12, v12, v5

    if-lez v12, :cond_3

    int-to-float v12, v0

    sub-float v9, v12, v5

    .line 357
    .local v9, "variance":F
    :goto_3
    cmpl-float v12, v9, v2

    if-gtz v12, :cond_1

    .line 360
    add-float/2addr v7, v9

    .line 353
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 356
    .end local v9    # "variance":F
    :cond_3
    int-to-float v12, v0

    sub-float v9, v5, v12

    goto :goto_3

    .line 362
    .end local v0    # "counter":I
    .end local v5    # "scaledPattern":F
    :cond_4
    int-to-float v11, v6

    div-float v11, v7, v11

    goto :goto_1
.end method

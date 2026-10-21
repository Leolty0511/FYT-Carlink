.class public final Lcom/google/zxing/aztec/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/detector/Detector$CorrectedParameter;,
        Lcom/google/zxing/aztec/detector/Detector$Point;
    }
.end annotation


# static fields
.field private static final EXPECTED_CORNER_BITS:[I


# instance fields
.field private compact:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private nbCenterLayers:I

.field private nbDataBlocks:I

.field private nbLayers:I

.field private shift:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xee0
        0x1dc
        0x83b
        0x707
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 56
    return-void
.end method

.method private static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 4
    .param p0, "a"    # Lcom/google/zxing/ResultPoint;
    .param p1, "b"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    return v0
.end method

.method private static distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F
    .locals 4
    .param p0, "a"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p1, "b"    # Lcom/google/zxing/aztec/detector/Detector$Point;

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v0

    return v0
.end method

.method private static expandSquare([Lcom/google/zxing/ResultPoint;II)[Lcom/google/zxing/ResultPoint;
    .locals 12
    .param p0, "cornerPoints"    # [Lcom/google/zxing/ResultPoint;
    .param p1, "oldSide"    # I
    .param p2, "newSide"    # I

    .prologue
    .line 542
    int-to-float v9, p2

    const/high16 v10, 0x40000000    # 2.0f

    int-to-float v11, p1

    mul-float/2addr v10, v11

    div-float v4, v9, v10

    .line 543
    .local v4, "ratio":F
    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    sub-float v2, v9, v10

    .line 544
    .local v2, "dx":F
    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    sub-float v3, v9, v10

    .line 545
    .local v3, "dy":F
    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v0, v9, v10

    .line 546
    .local v0, "centerx":F
    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v1, v9, v10

    .line 548
    .local v1, "centery":F
    new-instance v5, Lcom/google/zxing/ResultPoint;

    mul-float v9, v4, v2

    add-float/2addr v9, v0

    mul-float v10, v4, v3

    add-float/2addr v10, v1

    invoke-direct {v5, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 549
    .local v5, "result0":Lcom/google/zxing/ResultPoint;
    new-instance v7, Lcom/google/zxing/ResultPoint;

    mul-float v9, v4, v2

    sub-float v9, v0, v9

    mul-float v10, v4, v3

    sub-float v10, v1, v10

    invoke-direct {v7, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 551
    .local v7, "result2":Lcom/google/zxing/ResultPoint;
    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    const/4 v10, 0x3

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    sub-float v2, v9, v10

    .line 552
    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    const/4 v10, 0x3

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    sub-float v3, v9, v10

    .line 553
    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    const/4 v10, 0x3

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v0, v9, v10

    .line 554
    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    const/4 v10, 0x3

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v1, v9, v10

    .line 555
    new-instance v6, Lcom/google/zxing/ResultPoint;

    mul-float v9, v4, v2

    add-float/2addr v9, v0

    mul-float v10, v4, v3

    add-float/2addr v10, v1

    invoke-direct {v6, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 556
    .local v6, "result1":Lcom/google/zxing/ResultPoint;
    new-instance v8, Lcom/google/zxing/ResultPoint;

    mul-float v9, v4, v2

    sub-float v9, v0, v9

    mul-float v10, v4, v3

    sub-float v10, v1, v10

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 558
    .local v8, "result3":Lcom/google/zxing/ResultPoint;
    const/4 v9, 0x4

    new-array v9, v9, [Lcom/google/zxing/ResultPoint;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v7, v9, v10

    const/4 v10, 0x3

    aput-object v8, v9, v10

    return-object v9
.end method

.method private extractParameters([Lcom/google/zxing/ResultPoint;)I
    .locals 11
    .param p1, "bullsEyeCorners"    # [Lcom/google/zxing/ResultPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-direct {p0, v8}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    aget-object v8, p1, v8

    invoke-direct {p0, v8}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    aget-object v8, p1, v8

    .line 109
    invoke-direct {p0, v8}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x3

    aget-object v8, p1, v8

    invoke-direct {p0, v8}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 110
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 112
    :cond_1
    iget v8, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v3, v8, 0x2

    .line 114
    .local v3, "length":I
    const/4 v8, 0x4

    new-array v7, v8, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, p1, v9

    const/4 v10, 0x1

    aget-object v10, p1, v10

    .line 115
    invoke-direct {p0, v9, v10, v3}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-object v9, p1, v9

    const/4 v10, 0x2

    aget-object v10, p1, v10

    .line 116
    invoke-direct {p0, v9, v10, v3}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x2

    aget-object v9, p1, v9

    const/4 v10, 0x3

    aget-object v10, p1, v10

    .line 117
    invoke-direct {p0, v9, v10, v3}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    aget-object v9, p1, v9

    const/4 v10, 0x0

    aget-object v10, p1, v10

    .line 118
    invoke-direct {p0, v9, v10, v3}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v9

    aput v9, v7, v8

    .line 125
    .local v7, "sides":[I
    invoke-static {v7, v3}, Lcom/google/zxing/aztec/detector/Detector;->getRotation([II)I

    move-result v8

    iput v8, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    .line 128
    const-wide/16 v4, 0x0

    .line 129
    .local v4, "parameterData":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v8, 0x4

    if-ge v2, v8, :cond_3

    .line 130
    iget v8, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/2addr v8, v2

    rem-int/lit8 v8, v8, 0x4

    aget v6, v7, v8

    .line 131
    .local v6, "side":I
    iget-boolean v8, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v8, :cond_2

    .line 133
    const/4 v8, 0x7

    shl-long/2addr v4, v8

    .line 134
    shr-int/lit8 v8, v6, 0x1

    and-int/lit8 v8, v8, 0x7f

    int-to-long v8, v8

    add-long/2addr v4, v8

    .line 129
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_2
    const/16 v8, 0xa

    shl-long/2addr v4, v8

    .line 138
    shr-int/lit8 v8, v6, 0x2

    and-int/lit16 v8, v8, 0x3e0

    shr-int/lit8 v9, v6, 0x1

    and-int/lit8 v9, v9, 0x1f

    add-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v4, v8

    goto :goto_1

    .line 144
    .end local v6    # "side":I
    :cond_3
    iget-boolean v8, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    invoke-static {v4, v5, v8}, Lcom/google/zxing/aztec/detector/Detector;->getCorrectedParameterData(JZ)Lcom/google/zxing/aztec/detector/Detector$CorrectedParameter;

    move-result-object v1

    .line 145
    .local v1, "correctedParam":Lcom/google/zxing/aztec/detector/Detector$CorrectedParameter;
    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$CorrectedParameter;->getData()I

    move-result v0

    .line 147
    .local v0, "correctedData":I
    iget-boolean v8, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v8, :cond_4

    .line 149
    shr-int/lit8 v8, v0, 0x6

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 150
    and-int/lit8 v8, v0, 0x3f

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    .line 157
    :goto_2
    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$CorrectedParameter;->getErrorsCorrected()I

    move-result v8

    return v8

    .line 153
    :cond_4
    shr-int/lit8 v8, v0, 0xb

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 154
    and-int/lit16 v8, v0, 0x7ff

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    goto :goto_2
.end method

.method private getBullsEyeCorners(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;
    .locals 22
    .param p1, "pCenter"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 246
    move-object/from16 v5, p1

    .line 247
    .local v5, "pina":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v7, p1

    .line 248
    .local v7, "pinb":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v9, p1

    .line 249
    .local v9, "pinc":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v11, p1

    .line 251
    .local v11, "pind":Lcom/google/zxing/aztec/detector/Detector$Point;
    const/4 v4, 0x1

    .line 253
    .local v4, "color":Z
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 254
    const/16 v18, 0x1

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v13

    .line 255
    .local v13, "pouta":Lcom/google/zxing/aztec/detector/Detector$Point;
    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v7, v4, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v14

    .line 256
    .local v14, "poutb":Lcom/google/zxing/aztec/detector/Detector$Point;
    const/16 v18, -0x1

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v9, v4, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v15

    .line 257
    .local v15, "poutc":Lcom/google/zxing/aztec/detector/Detector$Point;
    const/16 v18, -0x1

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v11, v4, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v16

    .line 263
    .local v16, "poutd":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 264
    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    invoke-static {v11, v5}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    div-float v17, v18, v19

    .line 265
    .local v17, "q":F
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe8000000000000L    # 0.75

    cmpg-double v18, v18, v20

    if-ltz v18, :cond_0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff4000000000000L    # 1.25

    cmpl-double v18, v18, v20

    if-gtz v18, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/zxing/aztec/detector/Detector;->isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 278
    .end local v13    # "pouta":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v14    # "poutb":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v15    # "poutc":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v16    # "poutd":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v17    # "q":F
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 279
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v18

    throw v18

    .line 270
    .restart local v13    # "pouta":Lcom/google/zxing/aztec/detector/Detector$Point;
    .restart local v14    # "poutb":Lcom/google/zxing/aztec/detector/Detector$Point;
    .restart local v15    # "poutc":Lcom/google/zxing/aztec/detector/Detector$Point;
    .restart local v16    # "poutd":Lcom/google/zxing/aztec/detector/Detector$Point;
    :cond_1
    move-object v5, v13

    .line 271
    move-object v7, v14

    .line 272
    move-object v9, v15

    .line 273
    move-object/from16 v11, v16

    .line 275
    if-nez v4, :cond_2

    const/4 v4, 0x1

    .line 253
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    goto/16 :goto_0

    .line 275
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 282
    .end local v13    # "pouta":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v14    # "poutb":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v15    # "poutc":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v16    # "poutd":Lcom/google/zxing/aztec/detector/Detector$Point;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    .line 286
    new-instance v6, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v5}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    invoke-virtual {v5}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    sub-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v6, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 287
    .local v6, "pinax":Lcom/google/zxing/ResultPoint;
    new-instance v8, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v8, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 288
    .local v8, "pinbx":Lcom/google/zxing/ResultPoint;
    new-instance v10, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v9}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v18, v18, v19

    invoke-virtual {v9}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v10, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 289
    .local v10, "pincx":Lcom/google/zxing/ResultPoint;
    new-instance v12, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v11}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v18, v18, v19

    invoke-virtual {v11}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    sub-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v12, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 293
    .local v12, "pindx":Lcom/google/zxing/ResultPoint;
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v6, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    const/16 v19, 0x2

    aput-object v10, v18, v19

    const/16 v19, 0x3

    aput-object v12, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int/lit8 v19, v19, -0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    invoke-static/range {v18 .. v20}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;II)[Lcom/google/zxing/ResultPoint;

    move-result-object v18

    return-object v18

    .line 282
    .end local v6    # "pinax":Lcom/google/zxing/ResultPoint;
    .end local v8    # "pinbx":Lcom/google/zxing/ResultPoint;
    .end local v10    # "pincx":Lcom/google/zxing/ResultPoint;
    .end local v12    # "pindx":Lcom/google/zxing/ResultPoint;
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_2
.end method

.method private getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
    .locals 13
    .param p1, "p1"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p2, "p2"    # Lcom/google/zxing/aztec/detector/Detector$Point;

    .prologue
    .line 474
    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v1

    .line 475
    .local v1, "d":F
    const/4 v10, 0x0

    cmpl-float v10, v1, v10

    if-nez v10, :cond_0

    .line 476
    const/4 v10, 0x0

    .line 502
    :goto_0
    return v10

    .line 478
    :cond_0
    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v10

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float v2, v10, v1

    .line 479
    .local v2, "dx":F
    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v10

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float v3, v10, v1

    .line 480
    .local v3, "dy":F
    const/4 v5, 0x0

    .line 482
    .local v5, "error":I
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v10

    int-to-float v8, v10

    .line 483
    .local v8, "px":F
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v10

    int-to-float v9, v10

    .line 485
    .local v9, "py":F
    iget-object v10, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v11

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    .line 487
    .local v0, "colorModel":Z
    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 488
    .local v7, "iMax":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v7, :cond_2

    .line 489
    iget-object v10, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v11

    invoke-static {v9}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eq v10, v0, :cond_1

    .line 490
    add-int/lit8 v5, v5, 0x1

    .line 492
    :cond_1
    add-float/2addr v8, v2

    .line 493
    add-float/2addr v9, v3

    .line 488
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 496
    :cond_2
    int-to-float v10, v5

    div-float v4, v10, v1

    .line 498
    .local v4, "errRatio":F
    const v10, 0x3dcccccd    # 0.1f

    cmpl-float v10, v4, v10

    if-lez v10, :cond_3

    const v10, 0x3f666666    # 0.9f

    cmpg-float v10, v4, v10

    if-gez v10, :cond_3

    .line 499
    const/4 v10, 0x0

    goto :goto_0

    .line 502
    :cond_3
    const v10, 0x3dcccccd    # 0.1f

    cmpg-float v10, v4, v10

    if-gtz v10, :cond_4

    const/4 v10, 0x1

    :goto_2
    if-ne v10, v0, :cond_5

    const/4 v10, 0x1

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    const/4 v10, -0x1

    goto :goto_0
.end method

.method private static getCorrectedParameterData(JZ)Lcom/google/zxing/aztec/detector/Detector$CorrectedParameter;
    .locals 12
    .param p0, "parameterData"    # J
    .param p2, "compact"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 204
    if-eqz p2, :cond_0

    .line 205
    const/4 v3, 0x7

    .line 206
    .local v3, "numCodewords":I
    const/4 v4, 0x2

    .line 212
    .local v4, "numDataCodewords":I
    :goto_0
    sub-int v5, v3, v4

    .line 213
    .local v5, "numECCodewords":I
    new-array v6, v3, [I

    .line 214
    .local v6, "parameterWords":[I
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 215
    long-to-int v9, p0

    and-int/lit8 v9, v9, 0xf

    aput v9, v6, v1

    .line 216
    const/4 v9, 0x4

    shr-long/2addr p0, v9

    .line 214
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 208
    .end local v1    # "i":I
    .end local v3    # "numCodewords":I
    .end local v4    # "numDataCodewords":I
    .end local v5    # "numECCodewords":I
    .end local v6    # "parameterWords":[I
    :cond_0
    const/16 v3, 0xa

    .line 209
    .restart local v3    # "numCodewords":I
    const/4 v4, 0x4

    .restart local v4    # "numDataCodewords":I
    goto :goto_0

    .line 219
    .restart local v1    # "i":I
    .restart local v5    # "numECCodewords":I
    .restart local v6    # "parameterWords":[I
    :cond_1
    const/4 v0, 0x0

    .line 221
    .local v0, "errorsCorrected":I
    :try_start_0
    new-instance v8, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v9, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v8, v9}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 222
    .local v8, "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    invoke-virtual {v8, v6, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decodeWithECCount([II)I
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 228
    const/4 v7, 0x0

    .line 229
    .local v7, "result":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_2

    .line 230
    shl-int/lit8 v9, v7, 0x4

    aget v10, v6, v1

    add-int v7, v9, v10

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 223
    .end local v7    # "result":I
    .end local v8    # "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    :catch_0
    move-exception v2

    .line 224
    .local v2, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 232
    .end local v2    # "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    .restart local v7    # "result":I
    .restart local v8    # "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    :cond_2
    new-instance v9, Lcom/google/zxing/aztec/detector/Detector$CorrectedParameter;

    invoke-direct {v9, v7, v0}, Lcom/google/zxing/aztec/detector/Detector$CorrectedParameter;-><init>(II)V

    return-object v9
.end method

.method private getDimension()I
    .locals 2

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v0, :cond_0

    .line 581
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xb

    .line 583
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xf

    goto :goto_0
.end method

.method private getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 3
    .param p1, "init"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p2, "color"    # Z
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 509
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    add-int v0, v2, p3

    .line 510
    .local v0, "x":I
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v2

    add-int v1, v2, p4

    .line 512
    .local v1, "y":I
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 513
    add-int/2addr v0, p3

    .line 514
    add-int/2addr v1, p4

    goto :goto_0

    .line 517
    :cond_0
    sub-int/2addr v0, p3

    .line 518
    sub-int/2addr v1, p4

    .line 520
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_1

    .line 521
    add-int/2addr v0, p3

    goto :goto_1

    .line 523
    :cond_1
    sub-int/2addr v0, p3

    .line 525
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_2

    .line 526
    add-int/2addr v1, p4

    goto :goto_2

    .line 528
    :cond_2
    sub-int/2addr v1, p4

    .line 530
    new-instance v2, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object v2
.end method

.method private getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 15

    .prologue
    const/high16 v14, 0x40800000    # 4.0f

    const/4 v13, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 313
    :try_start_0
    new-instance v8, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v9, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v8, v9}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 314
    .local v0, "cornerPoints":[Lcom/google/zxing/ResultPoint;
    const/4 v8, 0x0

    aget-object v4, v0, v8

    .line 315
    .local v4, "pointA":Lcom/google/zxing/ResultPoint;
    const/4 v8, 0x1

    aget-object v5, v0, v8

    .line 316
    .local v5, "pointB":Lcom/google/zxing/ResultPoint;
    const/4 v8, 0x2

    aget-object v6, v0, v8

    .line 317
    .local v6, "pointC":Lcom/google/zxing/ResultPoint;
    const/4 v8, 0x3

    aget-object v7, v0, v8
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v0    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    .local v7, "pointD":Lcom/google/zxing/ResultPoint;
    :goto_0
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    div-float/2addr v8, v14

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 334
    .local v1, "cx":I
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    div-float/2addr v8, v14

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 340
    .local v2, "cy":I
    :try_start_1
    new-instance v8, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v9, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    const/16 v10, 0xf

    invoke-direct {v8, v9, v10, v1, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    invoke-virtual {v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 341
    .restart local v0    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    const/4 v8, 0x0

    aget-object v4, v0, v8

    .line 342
    const/4 v8, 0x1

    aget-object v5, v0, v8

    .line 343
    const/4 v8, 0x2

    aget-object v6, v0, v8

    .line 344
    const/4 v8, 0x3

    aget-object v7, v0, v8
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    .end local v0    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    :goto_1
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    div-float/2addr v8, v14

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 356
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    div-float/2addr v8, v14

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 358
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v8, v1, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object v8

    .line 319
    .end local v1    # "cx":I
    .end local v2    # "cy":I
    .end local v4    # "pointA":Lcom/google/zxing/ResultPoint;
    .end local v5    # "pointB":Lcom/google/zxing/ResultPoint;
    .end local v6    # "pointC":Lcom/google/zxing/ResultPoint;
    .end local v7    # "pointD":Lcom/google/zxing/ResultPoint;
    :catch_0
    move-exception v3

    .line 323
    .local v3, "e":Lcom/google/zxing/NotFoundException;
    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    div-int/lit8 v1, v8, 0x2

    .line 324
    .restart local v1    # "cx":I
    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    div-int/lit8 v2, v8, 0x2

    .line 325
    .restart local v2    # "cy":I
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, 0x7

    add-int/lit8 v10, v2, -0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v12, v13}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 326
    .restart local v4    # "pointA":Lcom/google/zxing/ResultPoint;
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, 0x7

    add-int/lit8 v10, v2, 0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v12, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 327
    .restart local v5    # "pointB":Lcom/google/zxing/ResultPoint;
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, -0x7

    add-int/lit8 v10, v2, 0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v13, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 328
    .restart local v6    # "pointC":Lcom/google/zxing/ResultPoint;
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, -0x7

    add-int/lit8 v10, v2, -0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v13, v13}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v7

    .restart local v7    # "pointD":Lcom/google/zxing/ResultPoint;
    goto/16 :goto_0

    .line 345
    .end local v3    # "e":Lcom/google/zxing/NotFoundException;
    :catch_1
    move-exception v3

    .line 348
    .restart local v3    # "e":Lcom/google/zxing/NotFoundException;
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, 0x7

    add-int/lit8 v10, v2, -0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v12, v13}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 349
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, 0x7

    add-int/lit8 v10, v2, 0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v12, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 350
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, -0x7

    add-int/lit8 v10, v2, 0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v13, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 351
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, -0x7

    add-int/lit8 v10, v2, -0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v13, v13}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v7

    goto/16 :goto_1
.end method

.method private getMatrixCornerPoints([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 2
    .param p1, "bullsEyeCorners"    # [Lcom/google/zxing/ResultPoint;

    .prologue
    .line 368
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;II)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0
.end method

.method private static getRotation([II)I
    .locals 8
    .param p0, "sides"    # [I
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "cornerBits":I
    array-length v5, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget v2, p0, v4

    .line 173
    .local v2, "side":I
    add-int/lit8 v6, p1, -0x2

    shr-int v6, v2, v6

    shl-int/lit8 v6, v6, 0x1

    and-int/lit8 v7, v2, 0x1

    add-int v3, v6, v7

    .line 174
    .local v3, "t":I
    shl-int/lit8 v6, v0, 0x3

    add-int v0, v6, v3

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 179
    .end local v2    # "side":I
    .end local v3    # "t":I
    :cond_0
    and-int/lit8 v4, v0, 0x1

    shl-int/lit8 v4, v4, 0xb

    shr-int/lit8 v5, v0, 0x1

    add-int v0, v4, v5

    .line 183
    const/4 v1, 0x0

    .local v1, "shift":I
    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_2

    .line 184
    sget-object v4, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I

    aget v4, v4, v1

    xor-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_1

    .line 185
    return v1

    .line 183
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 188
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4
.end method

.method private isValid(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 562
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValid(Lcom/google/zxing/ResultPoint;)Z
    .locals 3
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 566
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    .line 567
    .local v0, "x":I
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 568
    .local v1, "y":I
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    return v2
.end method

.method private isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z
    .locals 11
    .param p1, "p1"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p2, "p2"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p3, "p3"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p4, "p4"    # Lcom/google/zxing/aztec/detector/Detector$Point;

    .prologue
    const/4 v7, 0x0

    .line 435
    const/4 v2, 0x3

    .line 437
    .local v2, "corr":I
    new-instance v3, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v9, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v10

    add-int/2addr v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-direct {v3, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 438
    .end local p1    # "p1":Lcom/google/zxing/aztec/detector/Detector$Point;
    .local v3, "p1":Lcom/google/zxing/aztec/detector/Detector$Point;
    new-instance v4, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-direct {v4, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 439
    .end local p2    # "p2":Lcom/google/zxing/aztec/detector/Detector$Point;
    .local v4, "p2":Lcom/google/zxing/aztec/detector/Detector$Point;
    new-instance v5, Lcom/google/zxing/aztec/detector/Detector$Point;

    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v9

    add-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v9, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 440
    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-direct {v5, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 441
    .end local p3    # "p3":Lcom/google/zxing/aztec/detector/Detector$Point;
    .local v5, "p3":Lcom/google/zxing/aztec/detector/Detector$Point;
    new-instance v6, Lcom/google/zxing/aztec/detector/Detector$Point;

    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v9

    add-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v9, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 442
    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v10

    add-int/2addr v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-direct {v6, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 444
    .end local p4    # "p4":Lcom/google/zxing/aztec/detector/Detector$Point;
    .local v6, "p4":Lcom/google/zxing/aztec/detector/Detector$Point;
    invoke-direct {p0, v6, v3}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v1

    .line 446
    .local v1, "cInit":I
    if-nez v1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return v7

    .line 450
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v0

    .line 452
    .local v0, "c":I
    if-ne v0, v1, :cond_0

    .line 456
    invoke-direct {p0, v4, v5}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v0

    .line 458
    if-ne v0, v1, :cond_0

    .line 462
    invoke-direct {p0, v5, v6}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v0

    .line 464
    if-ne v0, v1, :cond_0

    const/4 v7, 0x1

    goto :goto_0
.end method

.method private sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;
    .locals 21
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p4, "bottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v1

    .line 383
    .local v1, "sampler":Lcom/google/zxing/common/GridSampler;
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I

    move-result v3

    .line 385
    .local v3, "dimension":I
    int-to-float v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v4, v4

    sub-float v5, v2, v4

    .line 386
    .local v5, "low":F
    int-to-float v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v4, v4

    add-float v7, v2, v4

    .line 395
    .local v7, "high":F
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    .line 396
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    .line 397
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    .line 398
    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v19

    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    move-object/from16 v2, p1

    move v4, v3

    move v6, v5

    move v8, v5

    move v9, v7

    move v10, v7

    move v11, v5

    move v12, v7

    .line 388
    invoke-virtual/range {v1 .. v20}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    return-object v2
.end method

.method private sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I
    .locals 11
    .param p1, "p1"    # Lcom/google/zxing/ResultPoint;
    .param p2, "p2"    # Lcom/google/zxing/ResultPoint;
    .param p3, "size"    # I

    .prologue
    .line 410
    const/4 v7, 0x0

    .line 412
    .local v7, "result":I
    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    .line 413
    .local v0, "d":F
    int-to-float v8, p3

    div-float v4, v0, v8

    .line 414
    .local v4, "moduleSize":F
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    .line 415
    .local v5, "px":F
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    .line 416
    .local v6, "py":F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, v4

    div-float v1, v8, v0

    .line 417
    .local v1, "dx":F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, v4

    div-float v2, v8, v0

    .line 418
    .local v2, "dy":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_1

    .line 419
    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    int-to-float v9, v3

    mul-float/2addr v9, v1

    add-float/2addr v9, v5

    invoke-static {v9}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v9

    int-to-float v10, v3

    mul-float/2addr v10, v2

    add-float/2addr v10, v6

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 420
    const/4 v8, 0x1

    sub-int v9, p3, v3

    add-int/lit8 v9, v9, -0x1

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    .line 418
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    :cond_1
    return v7
.end method


# virtual methods
.method public detect()Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 10
    .param p1, "isMirror"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    .line 76
    .local v8, "pCenter":Lcom/google/zxing/aztec/detector/Detector$Point;
    invoke-direct {p0, v8}, Lcom/google/zxing/aztec/detector/Detector;->getBullsEyeCorners(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;

    move-result-object v7

    .line 78
    .local v7, "bullsEyeCorners":[Lcom/google/zxing/ResultPoint;
    if-eqz p1, :cond_0

    .line 79
    aget-object v9, v7, v3

    .line 80
    .local v9, "temp":Lcom/google/zxing/ResultPoint;
    aget-object v0, v7, v4

    aput-object v0, v7, v3

    .line 81
    aput-object v9, v7, v4

    .line 85
    .end local v9    # "temp":Lcom/google/zxing/ResultPoint;
    :cond_0
    invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->extractParameters([Lcom/google/zxing/ResultPoint;)I

    move-result v6

    .line 88
    .local v6, "errorsCorrected":I
    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    rem-int/lit8 v0, v0, 0x4

    aget-object v2, v7, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    aget-object v3, v7, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x4

    aget-object v4, v7, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit8 v0, v0, 0x4

    aget-object v5, v7, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/aztec/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 95
    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCornerPoints([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 97
    .local v2, "corners":[Lcom/google/zxing/ResultPoint;
    new-instance v0, Lcom/google/zxing/aztec/AztecDetectorResult;

    iget-boolean v3, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    iget v4, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    iget v5, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/aztec/AztecDetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZIII)V

    return-object v0
.end method

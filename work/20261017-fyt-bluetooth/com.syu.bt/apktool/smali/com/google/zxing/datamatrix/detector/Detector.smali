.class public final Lcom/google/zxing/datamatrix/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 39
    new-instance v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    .line 40
    return-void
.end method

.method private correctTopRight([Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/ResultPoint;
    .locals 17
    .param p1, "points"    # [Lcom/google/zxing/ResultPoint;

    .prologue
    .line 207
    const/4 v13, 0x0

    aget-object v3, p1, v13

    .line 208
    .local v3, "pointA":Lcom/google/zxing/ResultPoint;
    const/4 v13, 0x1

    aget-object v5, p1, v13

    .line 209
    .local v5, "pointB":Lcom/google/zxing/ResultPoint;
    const/4 v13, 0x2

    aget-object v6, p1, v13

    .line 210
    .local v6, "pointC":Lcom/google/zxing/ResultPoint;
    const/4 v13, 0x3

    aget-object v8, p1, v13

    .line 213
    .local v8, "pointD":Lcom/google/zxing/ResultPoint;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v12

    .line 214
    .local v12, "trTop":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v11

    .line 215
    .local v11, "trRight":I
    add-int/lit8 v13, v11, 0x1

    mul-int/lit8 v13, v13, 0x4

    invoke-static {v3, v5, v13}, Lcom/google/zxing/datamatrix/detector/Detector;->shiftPoint(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 216
    .local v4, "pointAs":Lcom/google/zxing/ResultPoint;
    add-int/lit8 v13, v12, 0x1

    mul-int/lit8 v13, v13, 0x4

    invoke-static {v6, v5, v13}, Lcom/google/zxing/datamatrix/detector/Detector;->shiftPoint(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v7

    .line 218
    .local v7, "pointCs":Lcom/google/zxing/ResultPoint;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v12

    .line 219
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v11

    .line 221
    new-instance v1, Lcom/google/zxing/ResultPoint;

    .line 222
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    sub-float/2addr v14, v15

    add-int/lit8 v15, v12, 0x1

    int-to-float v15, v15

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    .line 223
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    sub-float v15, v15, v16

    add-int/lit8 v16, v12, 0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    add-float/2addr v14, v15

    invoke-direct {v1, v13, v14}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 224
    .local v1, "candidate1":Lcom/google/zxing/ResultPoint;
    new-instance v2, Lcom/google/zxing/ResultPoint;

    .line 225
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    sub-float/2addr v14, v15

    add-int/lit8 v15, v11, 0x1

    int-to-float v15, v15

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    .line 226
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    sub-float v15, v15, v16

    add-int/lit8 v16, v11, 0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    add-float/2addr v14, v15

    invoke-direct {v2, v13, v14}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 228
    .local v2, "candidate2":Lcom/google/zxing/ResultPoint;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 229
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 244
    .end local v2    # "candidate2":Lcom/google/zxing/ResultPoint;
    :cond_0
    :goto_0
    return-object v2

    .line 232
    .restart local v2    # "candidate2":Lcom/google/zxing/ResultPoint;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 234
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v13

    if-nez v13, :cond_3

    move-object v2, v1

    .line 235
    goto :goto_0

    .line 238
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v14

    add-int v9, v13, v14

    .line 239
    .local v9, "sumc1":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v14

    add-int v10, v13, v14

    .line 241
    .local v10, "sumc2":I
    if-le v9, v10, :cond_0

    move-object v2, v1

    .line 242
    goto :goto_0
.end method

.method private detectSolid1([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 11
    .param p1, "cornerPoints"    # [Lcom/google/zxing/ResultPoint;

    .prologue
    .line 121
    const/4 v10, 0x0

    aget-object v1, p1, v10

    .line 122
    .local v1, "pointA":Lcom/google/zxing/ResultPoint;
    const/4 v10, 0x1

    aget-object v2, p1, v10

    .line 123
    .local v2, "pointB":Lcom/google/zxing/ResultPoint;
    const/4 v10, 0x3

    aget-object v3, p1, v10

    .line 124
    .local v3, "pointC":Lcom/google/zxing/ResultPoint;
    const/4 v10, 0x2

    aget-object v4, p1, v10

    .line 126
    .local v4, "pointD":Lcom/google/zxing/ResultPoint;
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v6

    .line 127
    .local v6, "trAB":I
    invoke-direct {p0, v2, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v7

    .line 128
    .local v7, "trBC":I
    invoke-direct {p0, v3, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v8

    .line 129
    .local v8, "trCD":I
    invoke-direct {p0, v4, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v9

    .line 134
    .local v9, "trDA":I
    move v0, v6

    .line 135
    .local v0, "min":I
    const/4 v10, 0x4

    new-array v5, v10, [Lcom/google/zxing/ResultPoint;

    const/4 v10, 0x0

    aput-object v4, v5, v10

    const/4 v10, 0x1

    aput-object v1, v5, v10

    const/4 v10, 0x2

    aput-object v2, v5, v10

    const/4 v10, 0x3

    aput-object v3, v5, v10

    .line 136
    .local v5, "points":[Lcom/google/zxing/ResultPoint;
    if-le v0, v7, :cond_0

    .line 137
    move v0, v7

    .line 138
    const/4 v10, 0x0

    aput-object v1, v5, v10

    .line 139
    const/4 v10, 0x1

    aput-object v2, v5, v10

    .line 140
    const/4 v10, 0x2

    aput-object v3, v5, v10

    .line 141
    const/4 v10, 0x3

    aput-object v4, v5, v10

    .line 143
    :cond_0
    if-le v0, v8, :cond_1

    .line 144
    move v0, v8

    .line 145
    const/4 v10, 0x0

    aput-object v2, v5, v10

    .line 146
    const/4 v10, 0x1

    aput-object v3, v5, v10

    .line 147
    const/4 v10, 0x2

    aput-object v4, v5, v10

    .line 148
    const/4 v10, 0x3

    aput-object v1, v5, v10

    .line 150
    :cond_1
    if-le v0, v9, :cond_2

    .line 151
    const/4 v10, 0x0

    aput-object v3, v5, v10

    .line 152
    const/4 v10, 0x1

    aput-object v4, v5, v10

    .line 153
    const/4 v10, 0x2

    aput-object v1, v5, v10

    .line 154
    const/4 v10, 0x3

    aput-object v2, v5, v10

    .line 157
    :cond_2
    return-object v5
.end method

.method private detectSolid2([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 14
    .param p1, "points"    # [Lcom/google/zxing/ResultPoint;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 167
    aget-object v0, p1, v10

    .line 168
    .local v0, "pointA":Lcom/google/zxing/ResultPoint;
    aget-object v1, p1, v11

    .line 169
    .local v1, "pointB":Lcom/google/zxing/ResultPoint;
    aget-object v3, p1, v12

    .line 170
    .local v3, "pointC":Lcom/google/zxing/ResultPoint;
    aget-object v5, p1, v13

    .line 174
    .local v5, "pointD":Lcom/google/zxing/ResultPoint;
    invoke-direct {p0, v0, v5}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v6

    .line 175
    .local v6, "tr":I
    add-int/lit8 v9, v6, 0x1

    mul-int/lit8 v9, v9, 0x4

    invoke-static {v1, v3, v9}, Lcom/google/zxing/datamatrix/detector/Detector;->shiftPoint(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 176
    .local v2, "pointBs":Lcom/google/zxing/ResultPoint;
    add-int/lit8 v9, v6, 0x1

    mul-int/lit8 v9, v9, 0x4

    invoke-static {v3, v1, v9}, Lcom/google/zxing/datamatrix/detector/Detector;->shiftPoint(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 177
    .local v4, "pointCs":Lcom/google/zxing/ResultPoint;
    invoke-direct {p0, v2, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v7

    .line 178
    .local v7, "trBA":I
    invoke-direct {p0, v4, v5}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v8

    .line 183
    .local v8, "trCD":I
    if-ge v7, v8, :cond_0

    .line 185
    aput-object v0, p1, v10

    .line 186
    aput-object v1, p1, v11

    .line 187
    aput-object v3, p1, v12

    .line 188
    aput-object v5, p1, v13

    .line 197
    :goto_0
    return-object p1

    .line 191
    :cond_0
    aput-object v1, p1, v10

    .line 192
    aput-object v3, p1, v11

    .line 193
    aput-object v5, p1, v12

    .line 194
    aput-object v0, p1, v13

    goto :goto_0
.end method

.method private isValid(Lcom/google/zxing/ResultPoint;)Z
    .locals 3
    .param p1, "p"    # Lcom/google/zxing/ResultPoint;

    .prologue
    const/4 v2, 0x0

    .line 304
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static moveAway(Lcom/google/zxing/ResultPoint;FF)Lcom/google/zxing/ResultPoint;
    .locals 4
    .param p0, "point"    # Lcom/google/zxing/ResultPoint;
    .param p1, "fromX"    # F
    .param p2, "fromY"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 97
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    .line 98
    .local v0, "x":F
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    .line 100
    .local v1, "y":F
    cmpg-float v2, v0, p1

    if-gez v2, :cond_0

    .line 101
    sub-float/2addr v0, v3

    .line 106
    :goto_0
    cmpg-float v2, v1, p2

    if-gez v2, :cond_1

    .line 107
    sub-float/2addr v1, v3

    .line 112
    :goto_1
    new-instance v2, Lcom/google/zxing/ResultPoint;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v2

    .line 103
    :cond_0
    add-float/2addr v0, v3

    goto :goto_0

    .line 109
    :cond_1
    add-float/2addr v1, v3

    goto :goto_1
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;
    .locals 21
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "bottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p4, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "dimensionX"    # I
    .param p6, "dimensionY"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v1

    .line 317
    .local v1, "sampler":Lcom/google/zxing/common/GridSampler;
    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v7, v2, v3

    const/high16 v8, 0x3f000000    # 0.5f

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v9, v2, v3

    move/from16 v0, p6

    int-to-float v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v10, v2, v3

    const/high16 v11, 0x3f000000    # 0.5f

    move/from16 v0, p6

    int-to-float v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v12, v2, v3

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    .line 330
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    .line 331
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    .line 332
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    .line 333
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    .line 334
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v19

    .line 335
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    move-object/from16 v2, p0

    move/from16 v3, p5

    move/from16 v4, p6

    .line 317
    invoke-virtual/range {v1 .. v20}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    return-object v2
.end method

.method private static shiftPoint(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;
    .locals 5
    .param p0, "point"    # Lcom/google/zxing/ResultPoint;
    .param p1, "to"    # Lcom/google/zxing/ResultPoint;
    .param p2, "div"    # I

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    add-int/lit8 v3, p2, 0x1

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 92
    .local v0, "x":F
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    add-int/lit8 v3, p2, 0x1

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 93
    .local v1, "y":F
    new-instance v2, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    add-float/2addr v4, v1

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v2
.end method

.method private shiftToModuleCenter([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 14
    .param p1, "points"    # [Lcom/google/zxing/ResultPoint;

    .prologue
    .line 255
    const/4 v12, 0x0

    aget-object v4, p1, v12

    .line 256
    .local v4, "pointA":Lcom/google/zxing/ResultPoint;
    const/4 v12, 0x1

    aget-object v6, p1, v12

    .line 257
    .local v6, "pointB":Lcom/google/zxing/ResultPoint;
    const/4 v12, 0x2

    aget-object v8, p1, v12

    .line 258
    .local v8, "pointC":Lcom/google/zxing/ResultPoint;
    const/4 v12, 0x3

    aget-object v10, p1, v12

    .line 261
    .local v10, "pointD":Lcom/google/zxing/ResultPoint;
    invoke-direct {p0, v4, v10}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v12

    add-int/lit8 v2, v12, 0x1

    .line 262
    .local v2, "dimH":I
    invoke-direct {p0, v8, v10}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v12

    add-int/lit8 v3, v12, 0x1

    .line 265
    .local v3, "dimV":I
    mul-int/lit8 v12, v3, 0x4

    invoke-static {v4, v6, v12}, Lcom/google/zxing/datamatrix/detector/Detector;->shiftPoint(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 266
    .local v5, "pointAs":Lcom/google/zxing/ResultPoint;
    mul-int/lit8 v12, v2, 0x4

    invoke-static {v8, v6, v12}, Lcom/google/zxing/datamatrix/detector/Detector;->shiftPoint(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v9

    .line 269
    .local v9, "pointCs":Lcom/google/zxing/ResultPoint;
    invoke-direct {p0, v5, v10}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v12

    add-int/lit8 v2, v12, 0x1

    .line 270
    invoke-direct {p0, v9, v10}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v12

    add-int/lit8 v3, v12, 0x1

    .line 271
    and-int/lit8 v12, v2, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 272
    add-int/lit8 v2, v2, 0x1

    .line 274
    :cond_0
    and-int/lit8 v12, v3, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 275
    add-int/lit8 v3, v3, 0x1

    .line 280
    :cond_1
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    add-float/2addr v12, v13

    const/high16 v13, 0x40800000    # 4.0f

    div-float v0, v12, v13

    .line 281
    .local v0, "centerX":F
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    add-float/2addr v12, v13

    const/high16 v13, 0x40800000    # 4.0f

    div-float v1, v12, v13

    .line 282
    .local v1, "centerY":F
    invoke-static {v4, v0, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->moveAway(Lcom/google/zxing/ResultPoint;FF)Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 283
    invoke-static {v6, v0, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->moveAway(Lcom/google/zxing/ResultPoint;FF)Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 284
    invoke-static {v8, v0, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->moveAway(Lcom/google/zxing/ResultPoint;FF)Lcom/google/zxing/ResultPoint;

    move-result-object v8

    .line 285
    invoke-static {v10, v0, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->moveAway(Lcom/google/zxing/ResultPoint;FF)Lcom/google/zxing/ResultPoint;

    move-result-object v10

    .line 291
    mul-int/lit8 v12, v3, 0x4

    invoke-static {v4, v6, v12}, Lcom/google/zxing/datamatrix/detector/Detector;->shiftPoint(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 292
    mul-int/lit8 v12, v2, 0x4

    invoke-static {v5, v10, v12}, Lcom/google/zxing/datamatrix/detector/Detector;->shiftPoint(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 293
    mul-int/lit8 v12, v3, 0x4

    invoke-static {v6, v4, v12}, Lcom/google/zxing/datamatrix/detector/Detector;->shiftPoint(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v7

    .line 294
    .local v7, "pointBs":Lcom/google/zxing/ResultPoint;
    mul-int/lit8 v12, v2, 0x4

    invoke-static {v7, v8, v12}, Lcom/google/zxing/datamatrix/detector/Detector;->shiftPoint(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v7

    .line 295
    mul-int/lit8 v12, v3, 0x4

    invoke-static {v8, v10, v12}, Lcom/google/zxing/datamatrix/detector/Detector;->shiftPoint(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v9

    .line 296
    mul-int/lit8 v12, v2, 0x4

    invoke-static {v9, v6, v12}, Lcom/google/zxing/datamatrix/detector/Detector;->shiftPoint(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v9

    .line 297
    mul-int/lit8 v12, v3, 0x4

    invoke-static {v10, v8, v12}, Lcom/google/zxing/datamatrix/detector/Detector;->shiftPoint(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v11

    .line 298
    .local v11, "pointDs":Lcom/google/zxing/ResultPoint;
    mul-int/lit8 v12, v2, 0x4

    invoke-static {v11, v4, v12}, Lcom/google/zxing/datamatrix/detector/Detector;->shiftPoint(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v11

    .line 300
    const/4 v12, 0x4

    new-array v12, v12, [Lcom/google/zxing/ResultPoint;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const/4 v13, 0x1

    aput-object v7, v12, v13

    const/4 v13, 0x2

    aput-object v9, v12, v13

    const/4 v13, 0x3

    aput-object v11, v12, v13

    return-object v12
.end method

.method private transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
    .locals 22
    .param p1, "from"    # Lcom/google/zxing/ResultPoint;
    .param p2, "to"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 343
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v6, v0

    .line 344
    .local v6, "fromX":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v7, v0

    .line 345
    .local v7, "fromY":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v12, v0

    .line 346
    .local v12, "toX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 348
    .local v13, "toY":I
    sub-int v19, v13, v7

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    sub-int v20, v12, v6

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    const/4 v10, 0x1

    .line 349
    .local v10, "steep":Z
    :goto_0
    if-eqz v10, :cond_0

    .line 350
    move v11, v6

    .line 351
    .local v11, "temp":I
    move v6, v7

    .line 352
    move v7, v11

    .line 353
    move v11, v12

    .line 354
    move v12, v13

    .line 355
    move v13, v11

    .line 358
    .end local v11    # "temp":I
    :cond_0
    sub-int v19, v12, v6

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 359
    .local v3, "dx":I
    sub-int v19, v13, v7

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 360
    .local v4, "dy":I
    neg-int v0, v3

    move/from16 v19, v0

    div-int/lit8 v5, v19, 0x2

    .line 361
    .local v5, "error":I
    if-ge v7, v13, :cond_4

    const/16 v18, 0x1

    .line 362
    .local v18, "ystep":I
    :goto_1
    if-ge v6, v12, :cond_5

    const/16 v16, 0x1

    .line 363
    .local v16, "xstep":I
    :goto_2
    const/4 v14, 0x0

    .line 364
    .local v14, "transitions":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v21, v0

    if-eqz v10, :cond_6

    move/from16 v20, v7

    :goto_3
    if-eqz v10, :cond_7

    move/from16 v19, v6

    :goto_4
    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    .line 365
    .local v8, "inBlack":Z
    move v15, v6

    .local v15, "x":I
    move/from16 v17, v7

    .local v17, "y":I
    :goto_5
    if-eq v15, v12, :cond_2

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v21, v0

    if-eqz v10, :cond_8

    move/from16 v20, v17

    :goto_6
    if-eqz v10, :cond_9

    move/from16 v19, v15

    :goto_7
    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    .line 367
    .local v9, "isBlack":Z
    if-eq v9, v8, :cond_1

    .line 368
    add-int/lit8 v14, v14, 0x1

    .line 369
    move v8, v9

    .line 371
    :cond_1
    add-int/2addr v5, v4

    .line 372
    if-lez v5, :cond_b

    .line 373
    move/from16 v0, v17

    if-ne v0, v13, :cond_a

    .line 380
    .end local v9    # "isBlack":Z
    :cond_2
    return v14

    .line 348
    .end local v3    # "dx":I
    .end local v4    # "dy":I
    .end local v5    # "error":I
    .end local v8    # "inBlack":Z
    .end local v10    # "steep":Z
    .end local v14    # "transitions":I
    .end local v15    # "x":I
    .end local v16    # "xstep":I
    .end local v17    # "y":I
    .end local v18    # "ystep":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 361
    .restart local v3    # "dx":I
    .restart local v4    # "dy":I
    .restart local v5    # "error":I
    .restart local v10    # "steep":Z
    :cond_4
    const/16 v18, -0x1

    goto :goto_1

    .line 362
    .restart local v18    # "ystep":I
    :cond_5
    const/16 v16, -0x1

    goto :goto_2

    .restart local v14    # "transitions":I
    .restart local v16    # "xstep":I
    :cond_6
    move/from16 v20, v6

    .line 364
    goto :goto_3

    :cond_7
    move/from16 v19, v7

    goto :goto_4

    .restart local v8    # "inBlack":Z
    .restart local v15    # "x":I
    .restart local v17    # "y":I
    :cond_8
    move/from16 v20, v15

    .line 366
    goto :goto_6

    :cond_9
    move/from16 v19, v17

    goto :goto_7

    .line 376
    .restart local v9    # "isBlack":Z
    :cond_a
    add-int v17, v17, v18

    .line 377
    sub-int/2addr v5, v3

    .line 365
    :cond_b
    add-int v15, v15, v16

    goto :goto_5
.end method


# virtual methods
.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x1

    .line 50
    iget-object v0, p0, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-virtual {v0}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    .line 52
    .local v8, "cornerPoints":[Lcom/google/zxing/ResultPoint;
    invoke-direct {p0, v8}, Lcom/google/zxing/datamatrix/detector/Detector;->detectSolid1([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v9

    .line 53
    .local v9, "points":[Lcom/google/zxing/ResultPoint;
    invoke-direct {p0, v9}, Lcom/google/zxing/datamatrix/detector/Detector;->detectSolid2([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v9

    .line 54
    invoke-direct {p0, v9}, Lcom/google/zxing/datamatrix/detector/Detector;->correctTopRight([Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    aput-object v0, v9, v12

    .line 55
    aget-object v0, v9, v12

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 58
    :cond_0
    invoke-direct {p0, v9}, Lcom/google/zxing/datamatrix/detector/Detector;->shiftToModuleCenter([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v9

    .line 60
    aget-object v1, v9, v13

    .line 61
    .local v1, "topLeft":Lcom/google/zxing/ResultPoint;
    aget-object v2, v9, v11

    .line 62
    .local v2, "bottomLeft":Lcom/google/zxing/ResultPoint;
    aget-object v3, v9, v14

    .line 63
    .local v3, "bottomRight":Lcom/google/zxing/ResultPoint;
    aget-object v4, v9, v12

    .line 65
    .local v4, "topRight":Lcom/google/zxing/ResultPoint;
    invoke-direct {p0, v1, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    .line 66
    .local v5, "dimensionTop":I
    invoke-direct {p0, v3, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    .line 67
    .local v6, "dimensionRight":I
    and-int/lit8 v0, v5, 0x1

    if-ne v0, v11, :cond_1

    .line 68
    add-int/lit8 v5, v5, 0x1

    .line 70
    :cond_1
    and-int/lit8 v0, v6, 0x1

    if-ne v0, v11, :cond_2

    .line 71
    add-int/lit8 v6, v6, 0x1

    .line 74
    :cond_2
    mul-int/lit8 v0, v5, 0x4

    mul-int/lit8 v10, v6, 0x6

    if-ge v0, v10, :cond_3

    mul-int/lit8 v0, v6, 0x4

    mul-int/lit8 v10, v5, 0x6

    if-ge v0, v10, :cond_3

    .line 76
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v5, v6

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/datamatrix/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v7

    .line 87
    .local v7, "bits":Lcom/google/zxing/common/BitMatrix;
    new-instance v0, Lcom/google/zxing/common/DetectorResult;

    const/4 v10, 0x4

    new-array v10, v10, [Lcom/google/zxing/ResultPoint;

    aput-object v1, v10, v13

    aput-object v2, v10, v11

    aput-object v3, v10, v14

    aput-object v4, v10, v12

    invoke-direct {v0, v7, v10}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v0
.end method

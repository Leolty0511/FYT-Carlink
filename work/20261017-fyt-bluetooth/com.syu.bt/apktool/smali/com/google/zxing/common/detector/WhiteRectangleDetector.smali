.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# static fields
.field private static final CORR:I = 0x1

.field private static final INIT_SIZE:I = 0xa


# instance fields
.field private final downInit:I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final leftInit:I

.field private final rightInit:I

.field private final upInit:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 3
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 47
    const/16 v0, 0xa

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .locals 3
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "initSize"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 59
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    .line 60
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    .line 61
    div-int/lit8 v0, p2, 0x2

    .line 62
    .local v0, "halfsize":I
    sub-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 63
    add-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    .line 64
    sub-int v1, p4, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    .line 65
    add-int v1, p4, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    .line 66
    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v1, v2, :cond_1

    .line 67
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 69
    :cond_1
    return-void
.end method

.method private centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 13
    .param p1, "y"    # Lcom/google/zxing/ResultPoint;
    .param p2, "z"    # Lcom/google/zxing/ResultPoint;
    .param p3, "x"    # Lcom/google/zxing/ResultPoint;
    .param p4, "t"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    .line 274
    .local v4, "yi":F
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    .line 275
    .local v5, "yj":F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    .line 276
    .local v6, "zi":F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    .line 277
    .local v7, "zj":F
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    .line 278
    .local v2, "xi":F
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    .line 279
    .local v3, "xj":F
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    .line 280
    .local v0, "ti":F
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    .line 282
    .local v1, "tj":F
    iget v8, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    cmpg-float v8, v4, v8

    if-gez v8, :cond_0

    .line 283
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v0, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v1

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v11, v6

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v7

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v2, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v3, v12

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v11, v4

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v5, v12

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    .line 289
    :goto_0
    return-object v8

    :cond_0
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v11, v0

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v1

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v11, v6

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v7, v12

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v2, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v3

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v4, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v5, v12

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    goto :goto_0
.end method

.method private containsBlackPoint(IIIZ)Z
    .locals 4
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "fixed"    # I
    .param p4, "horizontal"    # Z

    .prologue
    const/4 v2, 0x1

    .line 308
    if-eqz p4, :cond_2

    .line 309
    move v0, p1

    .local v0, "x":I
    :goto_0
    if-gt v0, p2, :cond_3

    .line 310
    iget-object v3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3, v0, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    .end local v0    # "x":I
    :cond_0
    :goto_1
    return v2

    .line 309
    .restart local v0    # "x":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "x":I
    :cond_2
    move v1, p1

    .local v1, "y":I
    :goto_2
    if-gt v1, p2, :cond_3

    .line 316
    iget-object v3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3, p3, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 322
    .end local v1    # "y":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;
    .locals 9
    .param p1, "aX"    # F
    .param p2, "aY"    # F
    .param p3, "bX"    # F
    .param p4, "bY"    # F

    .prologue
    .line 236
    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v6

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    .line 237
    .local v0, "dist":I
    sub-float v6, p3, p1

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 238
    .local v3, "xStep":F
    sub-float v6, p4, p2

    int-to-float v7, v0

    div-float v5, v6, v7

    .line 240
    .local v5, "yStep":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 241
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v6, p1

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 242
    .local v2, "x":I
    int-to-float v6, v1

    mul-float/2addr v6, v5

    add-float/2addr v6, p2

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v4

    .line 243
    .local v4, "y":I
    iget-object v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6, v2, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 244
    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float v7, v2

    int-to-float v8, v4

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 247
    .end local v2    # "x":I
    .end local v4    # "y":I
    :goto_1
    return-object v6

    .line 240
    .restart local v2    # "x":I
    .restart local v4    # "y":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v2    # "x":I
    .end local v4    # "y":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 88
    .local v13, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    move/from16 v16, v0

    .line 89
    .local v16, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    move/from16 v21, v0

    .line 90
    .local v21, "up":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    .line 91
    .local v11, "down":I
    const/16 v18, 0x0

    .line 92
    .local v18, "sizeExceeded":Z
    const/4 v5, 0x1

    .line 94
    .local v5, "aBlackPointFoundOnBorder":Z
    const/4 v8, 0x0

    .line 95
    .local v8, "atLeastOneBlackPointFoundOnRight":Z
    const/4 v6, 0x0

    .line 96
    .local v6, "atLeastOneBlackPointFoundOnBottom":Z
    const/4 v7, 0x0

    .line 97
    .local v7, "atLeastOneBlackPointFoundOnLeft":Z
    const/4 v9, 0x0

    .line 99
    .local v9, "atLeastOneBlackPointFoundOnTop":Z
    :cond_0
    if-eqz v5, :cond_5

    .line 101
    const/4 v5, 0x0

    .line 106
    const/16 v17, 0x1

    .line 107
    .local v17, "rightBorderNotWhite":Z
    :cond_1
    :goto_0
    if-nez v17, :cond_2

    if-nez v8, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 108
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v16

    move/from16 v3, v25

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v17

    .line 109
    if-eqz v17, :cond_3

    .line 110
    add-int/lit8 v16, v16, 0x1

    .line 111
    const/4 v5, 0x1

    .line 112
    const/4 v8, 0x1

    goto :goto_0

    .line 113
    :cond_3
    if-nez v8, :cond_1

    .line 114
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 118
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-lt v0, v1, :cond_6

    .line 119
    const/16 v18, 0x1

    .line 185
    .end local v17    # "rightBorderNotWhite":Z
    :cond_5
    :goto_1
    if-nez v18, :cond_1d

    .line 187
    sub-int v15, v16, v13

    .line 189
    .local v15, "maxSize":I
    const/16 v24, 0x0

    .line 190
    .local v24, "z":Lcom/google/zxing/ResultPoint;
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_2
    if-nez v24, :cond_15

    if-ge v12, v15, :cond_15

    .line 191
    int-to-float v0, v13

    move/from16 v25, v0

    sub-int v26, v11, v12

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-int v27, v13, v12

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v11

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v24

    .line 190
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 126
    .end local v12    # "i":I
    .end local v15    # "maxSize":I
    .end local v24    # "z":Lcom/google/zxing/ResultPoint;
    .restart local v17    # "rightBorderNotWhite":Z
    :cond_6
    const/4 v10, 0x1

    .line 127
    .local v10, "bottomBorderNotWhite":Z
    :cond_7
    :goto_3
    if-nez v10, :cond_8

    if-nez v6, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v11, v0, :cond_a

    .line 128
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v25

    invoke-direct {v0, v13, v1, v11, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v10

    .line 129
    if-eqz v10, :cond_9

    .line 130
    add-int/lit8 v11, v11, 0x1

    .line 131
    const/4 v5, 0x1

    .line 132
    const/4 v6, 0x1

    goto :goto_3

    .line 133
    :cond_9
    if-nez v6, :cond_7

    .line 134
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 138
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v11, v0, :cond_b

    .line 139
    const/16 v18, 0x1

    .line 140
    goto :goto_1

    .line 146
    :cond_b
    const/4 v14, 0x1

    .line 147
    .local v14, "leftBorderNotWhite":Z
    :cond_c
    :goto_4
    if-nez v14, :cond_d

    if-nez v7, :cond_f

    :cond_d
    if-ltz v13, :cond_f

    .line 148
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v25

    invoke-direct {v0, v1, v11, v13, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v14

    .line 149
    if-eqz v14, :cond_e

    .line 150
    add-int/lit8 v13, v13, -0x1

    .line 151
    const/4 v5, 0x1

    .line 152
    const/4 v7, 0x1

    goto :goto_4

    .line 153
    :cond_e
    if-nez v7, :cond_c

    .line 154
    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    .line 158
    :cond_f
    if-gez v13, :cond_10

    .line 159
    const/16 v18, 0x1

    .line 160
    goto/16 :goto_1

    .line 166
    :cond_10
    const/16 v20, 0x1

    .line 167
    .local v20, "topBorderNotWhite":Z
    :cond_11
    :goto_5
    if-nez v20, :cond_12

    if-nez v9, :cond_14

    :cond_12
    if-ltz v21, :cond_14

    .line 168
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v21

    move/from16 v3, v25

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v20

    .line 169
    if-eqz v20, :cond_13

    .line 170
    add-int/lit8 v21, v21, -0x1

    .line 171
    const/4 v5, 0x1

    .line 172
    const/4 v9, 0x1

    goto :goto_5

    .line 173
    :cond_13
    if-nez v9, :cond_11

    .line 174
    add-int/lit8 v21, v21, -0x1

    goto :goto_5

    .line 178
    :cond_14
    if-gez v21, :cond_0

    .line 179
    const/16 v18, 0x1

    .line 180
    goto/16 :goto_1

    .line 194
    .end local v10    # "bottomBorderNotWhite":Z
    .end local v14    # "leftBorderNotWhite":Z
    .end local v17    # "rightBorderNotWhite":Z
    .end local v20    # "topBorderNotWhite":Z
    .restart local v12    # "i":I
    .restart local v15    # "maxSize":I
    .restart local v24    # "z":Lcom/google/zxing/ResultPoint;
    :cond_15
    if-nez v24, :cond_16

    .line 195
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25

    .line 198
    :cond_16
    const/16 v19, 0x0

    .line 200
    .local v19, "t":Lcom/google/zxing/ResultPoint;
    const/4 v12, 0x1

    :goto_6
    if-nez v19, :cond_17

    if-ge v12, v15, :cond_17

    .line 201
    int-to-float v0, v13

    move/from16 v25, v0

    add-int v26, v21, v12

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-int v27, v13, v12

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v19

    .line 200
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 204
    :cond_17
    if-nez v19, :cond_18

    .line 205
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25

    .line 208
    :cond_18
    const/16 v22, 0x0

    .line 210
    .local v22, "x":Lcom/google/zxing/ResultPoint;
    const/4 v12, 0x1

    :goto_7
    if-nez v22, :cond_19

    if-ge v12, v15, :cond_19

    .line 211
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v25, v0

    add-int v26, v21, v12

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-int v27, v16, v12

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v22

    .line 210
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 214
    :cond_19
    if-nez v22, :cond_1a

    .line 215
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25

    .line 218
    :cond_1a
    const/16 v23, 0x0

    .line 220
    .local v23, "y":Lcom/google/zxing/ResultPoint;
    const/4 v12, 0x1

    :goto_8
    if-nez v23, :cond_1b

    if-ge v12, v15, :cond_1b

    .line 221
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v25, v0

    sub-int v26, v11, v12

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-int v27, v16, v12

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v11

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v23

    .line 220
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 224
    :cond_1b
    if-nez v23, :cond_1c

    .line 225
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25

    .line 228
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v22

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v25

    return-object v25

    .line 231
    .end local v12    # "i":I
    .end local v15    # "maxSize":I
    .end local v19    # "t":Lcom/google/zxing/ResultPoint;
    .end local v22    # "x":Lcom/google/zxing/ResultPoint;
    .end local v23    # "y":Lcom/google/zxing/ResultPoint;
    .end local v24    # "z":Lcom/google/zxing/ResultPoint;
    :cond_1d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25
.end method

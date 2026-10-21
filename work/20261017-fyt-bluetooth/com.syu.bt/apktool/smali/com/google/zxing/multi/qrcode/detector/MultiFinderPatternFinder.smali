.class public final Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
.super Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.source "MultiFinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
    }
.end annotation


# static fields
.field private static final DIFF_MODSIZE_CUTOFF:F = 0.5f

.field private static final DIFF_MODSIZE_CUTOFF_PERCENT:F = 0.05f

.field private static final EMPTY_FP_2D_ARRAY:[[Lcom/google/zxing/qrcode/detector/FinderPattern;

.field private static final EMPTY_FP_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPattern;

.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

.field private static final MAX_MODULE_COUNT_PER_EDGE:F = 180.0f

.field private static final MIN_MODULE_COUNT_PER_EDGE:F = 9.0f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    new-array v0, v1, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 52
    new-array v0, v1, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_FP_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 53
    new-array v0, v1, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_FP_2D_ARRAY:[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 0
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 91
    return-void
.end method

.method private selectMultipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v15, "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getPossibleCenters()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_0
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 102
    .local v7, "fp":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_0

    .line 103
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    .end local v7    # "fp":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v17

    .line 108
    .local v17, "size":I
    const/16 v25, 0x3

    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 110
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25

    .line 116
    :cond_2
    const/16 v25, 0x3

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 117
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v25, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_FP_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v25, v26, v27

    move-object/from16 v25, v26

    .line 216
    :goto_1
    return-object v25

    .line 121
    :cond_3
    new-instance v25, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;

    const/16 v26, 0x0

    invoke-direct/range {v25 .. v26}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>(Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;)V

    move-object/from16 v0, v25

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 138
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v16, "results":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    const/4 v8, 0x0

    .local v8, "i1":I
    :goto_2
    add-int/lit8 v25, v17, -0x2

    move/from16 v0, v25

    if-ge v8, v0, :cond_c

    .line 141
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 142
    .local v12, "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    if-nez v12, :cond_5

    .line 140
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 146
    :cond_5
    add-int/lit8 v9, v8, 0x1

    .local v9, "i2":I
    :goto_3
    add-int/lit8 v25, v17, -0x1

    move/from16 v0, v25

    if-ge v9, v0, :cond_4

    .line 147
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 148
    .local v13, "p2":Lcom/google/zxing/qrcode/detector/FinderPattern;
    if-nez v13, :cond_7

    .line 146
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 153
    :cond_7
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v25

    invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v26

    sub-float v25, v25, v26

    .line 154
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v26

    invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v27

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(FF)F

    move-result v26

    div-float v20, v25, v26

    .line 155
    .local v20, "vModSize12":F
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v25

    invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v26

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 156
    .local v21, "vModSize12A":F
    const/high16 v25, 0x3f000000    # 0.5f

    cmpl-float v25, v21, v25

    if-lez v25, :cond_8

    const v25, 0x3d4ccccd    # 0.05f

    cmpl-float v25, v20, v25

    if-gez v25, :cond_4

    .line 162
    :cond_8
    add-int/lit8 v10, v9, 0x1

    .local v10, "i3":I
    :goto_4
    move/from16 v0, v17

    if-ge v10, v0, :cond_6

    .line 163
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 164
    .local v14, "p3":Lcom/google/zxing/qrcode/detector/FinderPattern;
    if-nez v14, :cond_a

    .line 162
    :cond_9
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 169
    :cond_a
    invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v25

    invoke-virtual {v14}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v26

    sub-float v25, v25, v26

    .line 170
    invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v26

    invoke-virtual {v14}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v27

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(FF)F

    move-result v26

    div-float v22, v25, v26

    .line 171
    .local v22, "vModSize23":F
    invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v25

    invoke-virtual {v14}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v26

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 172
    .local v23, "vModSize23A":F
    const/high16 v25, 0x3f000000    # 0.5f

    cmpl-float v25, v23, v25

    if-lez v25, :cond_b

    const v25, 0x3d4ccccd    # 0.05f

    cmpl-float v25, v22, v25

    if-gez v25, :cond_6

    .line 178
    :cond_b
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v18, v0

    const/16 v25, 0x0

    aput-object v12, v18, v25

    const/16 v25, 0x1

    aput-object v13, v18, v25

    const/16 v25, 0x2

    aput-object v14, v18, v25

    .line 179
    .local v18, "test":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-static/range {v18 .. v18}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 182
    new-instance v11, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    .line 183
    .local v11, "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v25

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    .line 184
    .local v2, "dA":F
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v25

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v4

    .line 185
    .local v4, "dC":F
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v25

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v3

    .line 188
    .local v3, "dB":F
    add-float v25, v2, v3

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v26

    const/high16 v27, 0x40000000    # 2.0f

    mul-float v26, v26, v27

    div-float v6, v25, v26

    .line 189
    .local v6, "estimatedModuleCount":F
    const/high16 v25, 0x43340000    # 180.0f

    cmpl-float v25, v6, v25

    if-gtz v25, :cond_9

    const/high16 v25, 0x41100000    # 9.0f

    cmpg-float v25, v6, v25

    if-ltz v25, :cond_9

    .line 195
    sub-float v25, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v26

    div-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v19

    .line 196
    .local v19, "vABBC":F
    const v25, 0x3dcccccd    # 0.1f

    cmpl-float v25, v19, v25

    if-gez v25, :cond_9

    .line 201
    float-to-double v0, v2

    move-wide/from16 v26, v0

    float-to-double v0, v2

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    float-to-double v0, v3

    move-wide/from16 v28, v0

    float-to-double v0, v3

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    add-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v5, v0

    .line 203
    .local v5, "dCpy":F
    sub-float v25, v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v26

    div-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v24

    .line 205
    .local v24, "vPyC":F
    const v25, 0x3dcccccd    # 0.1f

    cmpl-float v25, v24, v25

    if-gez v25, :cond_9

    .line 210
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 215
    .end local v2    # "dA":F
    .end local v3    # "dB":F
    .end local v4    # "dC":F
    .end local v5    # "dCpy":F
    .end local v6    # "estimatedModuleCount":F
    .end local v9    # "i2":I
    .end local v10    # "i3":I
    .end local v11    # "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .end local v12    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v13    # "p2":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v14    # "p3":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v18    # "test":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v19    # "vABBC":F
    .end local v20    # "vModSize12":F
    .end local v21    # "vModSize12A":F
    .end local v22    # "vModSize23":F
    .end local v23    # "vModSize23A":F
    .end local v24    # "vPyC":F
    :cond_c
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_d

    .line 216
    sget-object v25, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_FP_2D_ARRAY:[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    goto/16 :goto_1

    .line 220
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25
.end method


# virtual methods
.method public findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p1, :cond_3

    sget-object v13, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v12, 0x1

    .line 225
    .local v12, "tryHarder":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getImage()Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    .line 226
    .local v4, "image":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    .line 227
    .local v6, "maxI":I
    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    .line 235
    .local v7, "maxJ":I
    mul-int/lit8 v13, v6, 0x3

    div-int/lit16 v3, v13, 0x184

    .line 236
    .local v3, "iSkip":I
    const/4 v13, 0x3

    if-lt v3, v13, :cond_0

    if-eqz v12, :cond_1

    .line 237
    :cond_0
    const/4 v3, 0x3

    .line 240
    :cond_1
    const/4 v13, 0x5

    new-array v11, v13, [I

    .line 241
    .local v11, "stateCount":[I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_a

    .line 243
    invoke-static {v11}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->doClearCounts([I)V

    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "currentState":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v7, :cond_8

    .line 246
    invoke-virtual {v4, v5, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 248
    and-int/lit8 v13, v1, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 249
    add-int/lit8 v1, v1, 0x1

    .line 251
    :cond_2
    aget v13, v11, v1

    add-int/lit8 v13, v13, 0x1

    aput v13, v11, v1

    .line 245
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 224
    .end local v1    # "currentState":I
    .end local v2    # "i":I
    .end local v3    # "iSkip":I
    .end local v4    # "image":Lcom/google/zxing/common/BitMatrix;
    .end local v5    # "j":I
    .end local v6    # "maxI":I
    .end local v7    # "maxJ":I
    .end local v11    # "stateCount":[I
    .end local v12    # "tryHarder":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 253
    .restart local v1    # "currentState":I
    .restart local v2    # "i":I
    .restart local v3    # "iSkip":I
    .restart local v4    # "image":Lcom/google/zxing/common/BitMatrix;
    .restart local v5    # "j":I
    .restart local v6    # "maxI":I
    .restart local v7    # "maxJ":I
    .restart local v11    # "stateCount":[I
    .restart local v12    # "tryHarder":Z
    :cond_4
    and-int/lit8 v13, v1, 0x1

    if-nez v13, :cond_7

    .line 254
    const/4 v13, 0x4

    if-ne v1, v13, :cond_6

    .line 255
    invoke-static {v11}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2, v5}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 257
    const/4 v1, 0x0

    .line 258
    invoke-static {v11}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->doClearCounts([I)V

    goto :goto_3

    .line 260
    :cond_5
    invoke-static {v11}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->doShiftCounts2([I)V

    .line 261
    const/4 v1, 0x3

    goto :goto_3

    .line 264
    :cond_6
    add-int/lit8 v1, v1, 0x1

    aget v13, v11, v1

    add-int/lit8 v13, v13, 0x1

    aput v13, v11, v1

    goto :goto_3

    .line 267
    :cond_7
    aget v13, v11, v1

    add-int/lit8 v13, v13, 0x1

    aput v13, v11, v1

    goto :goto_3

    .line 272
    :cond_8
    invoke-static {v11}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 273
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2, v7}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([III)Z

    .line 241
    :cond_9
    add-int/2addr v2, v3

    goto :goto_1

    .line 276
    .end local v1    # "currentState":I
    .end local v5    # "j":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->selectMultipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    .line 277
    .local v9, "patternInfo":[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPatternInfo;>;"
    array-length v14, v9

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v14, :cond_b

    aget-object v8, v9, v13

    .line 279
    .local v8, "pattern":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-static {v8}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 280
    new-instance v15, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v15, v8}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 283
    .end local v8    # "pattern":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_b
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 284
    sget-object v13, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 286
    :goto_5
    return-object v13

    :cond_c
    sget-object v13, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-interface {v10, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    goto :goto_5
.end method

.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;
    }
.end annotation


# static fields
.field private static final CENTER_QUORUM:I = 0x2

.field protected static final MAX_MODULES:I = 0x61

.field protected static final MIN_SKIP:I = 0x3

.field private static final moduleComparator:Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;


# instance fields
.field private final crossCheckStateCount:[I

.field private hasSkipped:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;-><init>(Lcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    sput-object v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->moduleComparator:Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 67
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    .line 68
    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 69
    return-void
.end method

.method private static centerFromEnd([II)F
    .locals 3
    .param p0, "stateCount"    # [I
    .param p1, "end"    # I

    .prologue
    .line 177
    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private crossCheckDiagonal(II)Z
    .locals 12
    .param p1, "centerI"    # I
    .param p2, "centerJ"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 273
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 276
    .local v3, "stateCount":[I
    const/4 v0, 0x0

    .line 277
    .local v0, "i":I
    :goto_0
    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    aget v5, v3, v8

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v8

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    aget v5, v3, v8

    if-nez v5, :cond_2

    .line 329
    :cond_1
    :goto_1
    return v4

    .line 286
    :cond_2
    :goto_2
    if-lt p1, v0, :cond_3

    if-lt p2, v0, :cond_3

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_3

    .line 287
    aget v5, v3, v9

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v9

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 290
    :cond_3
    aget v5, v3, v9

    if-eqz v5, :cond_1

    .line 295
    :goto_3
    if-lt p1, v0, :cond_4

    if-lt p2, v0, :cond_4

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 296
    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 299
    :cond_4
    aget v5, v3, v4

    if-eqz v5, :cond_1

    .line 303
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 304
    .local v1, "maxI":I
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 307
    .local v2, "maxJ":I
    const/4 v0, 0x1

    .line 308
    :goto_4
    add-int v5, p1, v0

    if-ge v5, v1, :cond_5

    add-int v5, p2, v0

    if-ge v5, v2, :cond_5

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 309
    aget v5, v3, v8

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v8

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 313
    :cond_5
    :goto_5
    add-int v5, p1, v0

    if-ge v5, v1, :cond_6

    add-int v5, p2, v0

    if-ge v5, v2, :cond_6

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_6

    .line 314
    aget v5, v3, v10

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v10

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 317
    :cond_6
    aget v5, v3, v10

    if-eqz v5, :cond_1

    .line 321
    :goto_6
    add-int v5, p1, v0

    if-ge v5, v1, :cond_7

    add-int v5, p2, v0

    if-ge v5, v2, :cond_7

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 322
    aget v5, v3, v11

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v11

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 325
    :cond_7
    aget v5, v3, v11

    if-eqz v5, :cond_1

    .line 329
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternDiagonal([I)Z

    move-result v4

    goto/16 :goto_1
.end method

.method private crossCheckHorizontal(IIII)F
    .locals 7
    .param p1, "startJ"    # I
    .param p2, "centerI"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 419
    .local v0, "image":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 420
    .local v2, "maxJ":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 422
    .local v3, "stateCount":[I
    move v1, p1

    .line 423
    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 424
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 425
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 427
    :cond_0
    if-gez v1, :cond_1

    .line 428
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 476
    :goto_1
    return v5

    .line 430
    :cond_1
    :goto_2
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    aget v5, v3, v5

    if-gt v5, p3, :cond_2

    .line 431
    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 432
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 434
    :cond_2
    if-ltz v1, :cond_3

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_4

    .line 435
    :cond_3
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    .line 437
    :cond_4
    :goto_3
    if-ltz v1, :cond_5

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    aget v5, v3, v5

    if-gt v5, p3, :cond_5

    .line 438
    const/4 v5, 0x0

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 439
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 441
    :cond_5
    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_6

    .line 442
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    .line 445
    :cond_6
    add-int/lit8 v1, p1, 0x1

    .line 446
    :goto_4
    if-ge v1, v2, :cond_7

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 447
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 450
    :cond_7
    if-ne v1, v2, :cond_8

    .line 451
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    .line 453
    :cond_8
    :goto_5
    if-ge v1, v2, :cond_9

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x3

    aget v5, v3, v5

    if-ge v5, p3, :cond_9

    .line 454
    const/4 v5, 0x3

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 457
    :cond_9
    if-eq v1, v2, :cond_a

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_b

    .line 458
    :cond_a
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    .line 460
    :cond_b
    :goto_6
    if-ge v1, v2, :cond_c

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x4

    aget v5, v3, v5

    if-ge v5, p3, :cond_c

    .line 461
    const/4 v5, 0x4

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 464
    :cond_c
    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_d

    .line 465
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_1

    .line 470
    :cond_d
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int v4, v5, v6

    .line 472
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    if-lt v5, p4, :cond_e

    .line 473
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_1

    .line 476
    :cond_e
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v3, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto/16 :goto_1

    :cond_f
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_1
.end method

.method private crossCheckVertical(IIII)F
    .locals 7
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 345
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 347
    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 348
    .local v2, "maxI":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 351
    .local v3, "stateCount":[I
    move v0, p1

    .line 352
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 353
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 354
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 356
    :cond_0
    if-gez v0, :cond_1

    .line 357
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 407
    :goto_1
    return v5

    .line 359
    :cond_1
    :goto_2
    if-ltz v0, :cond_2

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    aget v5, v3, v5

    if-gt v5, p3, :cond_2

    .line 360
    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 361
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 364
    :cond_2
    if-ltz v0, :cond_3

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_4

    .line 365
    :cond_3
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    .line 367
    :cond_4
    :goto_3
    if-ltz v0, :cond_5

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    aget v5, v3, v5

    if-gt v5, p3, :cond_5

    .line 368
    const/4 v5, 0x0

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 369
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 371
    :cond_5
    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_6

    .line 372
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    .line 376
    :cond_6
    add-int/lit8 v0, p1, 0x1

    .line 377
    :goto_4
    if-ge v0, v2, :cond_7

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 378
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 381
    :cond_7
    if-ne v0, v2, :cond_8

    .line 382
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    .line 384
    :cond_8
    :goto_5
    if-ge v0, v2, :cond_9

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x3

    aget v5, v3, v5

    if-ge v5, p3, :cond_9

    .line 385
    const/4 v5, 0x3

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 388
    :cond_9
    if-eq v0, v2, :cond_a

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_b

    .line 389
    :cond_a
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    .line 391
    :cond_b
    :goto_6
    if-ge v0, v2, :cond_c

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x4

    aget v5, v3, v5

    if-ge v5, p3, :cond_c

    .line 392
    const/4 v5, 0x4

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 395
    :cond_c
    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_d

    .line 396
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_1

    .line 401
    :cond_d
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int v4, v5, v6

    .line 403
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    mul-int/lit8 v6, p4, 0x2

    if-lt v5, v6, :cond_e

    .line 404
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_1

    .line 407
    :cond_e
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v3, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto/16 :goto_1

    :cond_f
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_1
.end method

.method protected static doClearCounts([I)V
    .locals 1
    .param p0, "counts"    # [I

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    .line 253
    return-void
.end method

.method protected static doShiftCounts2([I)V
    .locals 6
    .param p0, "stateCount"    # [I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 256
    aget v0, p0, v3

    aput v0, p0, v1

    .line 257
    aget v0, p0, v4

    aput v0, p0, v2

    .line 258
    aget v0, p0, v5

    aput v0, p0, v3

    .line 259
    aput v2, p0, v4

    .line 260
    aput v1, p0, v5

    .line 261
    return-void
.end method

.method private findRowSkip()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 550
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 551
    .local v2, "max":I
    if-gt v2, v7, :cond_1

    .line 571
    :cond_0
    :goto_0
    return v3

    .line 554
    :cond_1
    const/4 v1, 0x0

    .line 555
    .local v1, "firstConfirmedCenter":Lcom/google/zxing/ResultPoint;
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 556
    .local v0, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 557
    if-nez v1, :cond_3

    .line 558
    move-object v1, v0

    goto :goto_1

    .line 565
    :cond_3
    iput-boolean v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    .line 566
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 567
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    goto :goto_0
.end method

.method protected static foundPatternCross([I)Z
    .locals 10
    .param p0, "stateCount"    # [I

    .prologue
    const/4 v5, 0x1

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v6, 0x0

    .line 186
    const/4 v4, 0x0

    .line 187
    .local v4, "totalModuleSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v7, 0x5

    if-ge v1, v7, :cond_2

    .line 188
    aget v0, p0, v1

    .line 189
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 200
    .end local v0    # "count":I
    :cond_0
    :goto_1
    return v6

    .line 192
    .restart local v0    # "count":I
    :cond_1
    add-int/2addr v4, v0

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "count":I
    :cond_2
    const/4 v7, 0x7

    if-lt v4, v7, :cond_0

    .line 197
    int-to-float v7, v4

    const/high16 v8, 0x40e00000    # 7.0f

    div-float v3, v7, v8

    .line 198
    .local v3, "moduleSize":F
    const/high16 v7, 0x40000000    # 2.0f

    div-float v2, v3, v7

    .line 200
    .local v2, "maxVariance":F
    aget v7, p0, v6

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 201
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_3

    aget v7, p0, v5

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 202
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_3

    mul-float v7, v9, v3

    const/4 v8, 0x2

    aget v8, p0, v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 203
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v8, v9, v2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    const/4 v7, 0x3

    aget v7, p0, v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 204
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_3

    const/4 v7, 0x4

    aget v7, p0, v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 205
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_3

    :goto_2
    move v6, v5

    .line 200
    goto :goto_1

    :cond_3
    move v5, v6

    .line 205
    goto :goto_2
.end method

.method protected static foundPatternDiagonal([I)Z
    .locals 10
    .param p0, "stateCount"    # [I

    .prologue
    const/4 v5, 0x1

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v6, 0x0

    .line 214
    const/4 v4, 0x0

    .line 215
    .local v4, "totalModuleSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v7, 0x5

    if-ge v1, v7, :cond_2

    .line 216
    aget v0, p0, v1

    .line 217
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 228
    .end local v0    # "count":I
    :cond_0
    :goto_1
    return v6

    .line 220
    .restart local v0    # "count":I
    :cond_1
    add-int/2addr v4, v0

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "count":I
    :cond_2
    const/4 v7, 0x7

    if-lt v4, v7, :cond_0

    .line 225
    int-to-float v7, v4

    const/high16 v8, 0x40e00000    # 7.0f

    div-float v3, v7, v8

    .line 226
    .local v3, "moduleSize":F
    const v7, 0x3faa9fbe    # 1.333f

    div-float v2, v3, v7

    .line 228
    .local v2, "maxVariance":F
    aget v7, p0, v6

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 229
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_3

    aget v7, p0, v5

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 230
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_3

    mul-float v7, v9, v3

    const/4 v8, 0x2

    aget v8, p0, v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 231
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v8, v9, v2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    const/4 v7, 0x3

    aget v7, p0, v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 232
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_3

    const/4 v7, 0x4

    aget v7, p0, v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 233
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_3

    :goto_2
    move v6, v5

    .line 228
    goto :goto_1

    :cond_3
    move v5, v6

    .line 233
    goto :goto_2
.end method

.method private getCrossCheckStateCount()[I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    invoke-static {v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->doClearCounts([I)V

    .line 238
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    return-object v0
.end method

.method private haveMultiplyConfirmedCenters()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 580
    const/4 v1, 0x0

    .line 581
    .local v1, "confirmedCount":I
    const/4 v5, 0x0

    .line 582
    .local v5, "totalModuleSize":F
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 583
    .local v2, "max":I
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 584
    .local v3, "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    .line 585
    add-int/lit8 v1, v1, 0x1

    .line 586
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    add-float/2addr v5, v8

    goto :goto_0

    .line 589
    .end local v3    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_1
    const/4 v7, 0x3

    if-ge v1, v7, :cond_3

    .line 601
    :cond_2
    :goto_1
    return v6

    .line 596
    :cond_3
    int-to-float v7, v2

    div-float v0, v5, v7

    .line 597
    .local v0, "average":F
    const/4 v4, 0x0

    .line 598
    .local v4, "totalDeviation":F
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 599
    .restart local v3    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    sub-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v4, v8

    .line 600
    goto :goto_2

    .line 601
    .end local v3    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_4
    const v7, 0x3d4ccccd    # 0.05f

    mul-float/2addr v7, v5

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_2

    const/4 v6, 0x1

    goto :goto_1
.end method

.method private selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v24

    .line 621
    .local v24, "startSize":I
    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 623
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25

    .line 626
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    :cond_1
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 627
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v25

    const/16 v28, 0x2

    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 628
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 635
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move-object/from16 v25, v0

    sget-object v28, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->moduleComparator:Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 637
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 638
    .local v12, "distortion":D
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v6, v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 640
    .local v6, "bestPatterns":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x2

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 642
    .local v7, "fpi":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v21

    .line 644
    .local v21, "minModuleSize":F
    add-int/lit8 v18, v16, 0x1

    .local v18, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 646
    .local v14, "fpj":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-static {v7, v14}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->squaredDistance(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)D

    move-result-wide v22

    .line 648
    .local v22, "squares0":D
    add-int/lit8 v19, v18, 0x1

    .local v19, "k":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 650
    .local v15, "fpk":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v15}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v20

    .line 651
    .local v20, "maxModuleSize":F
    const v25, 0x3fb33333    # 1.4f

    mul-float v25, v25, v21

    cmpl-float v25, v20, v25

    if-lez v25, :cond_4

    .line 648
    :cond_3
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 656
    :cond_4
    move-wide/from16 v2, v22

    .line 657
    .local v2, "a":D
    invoke-static {v14, v15}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->squaredDistance(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)D

    move-result-wide v4

    .line 658
    .local v4, "b":D
    invoke-static {v7, v15}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->squaredDistance(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)D

    move-result-wide v8

    .line 661
    .local v8, "c":D
    cmpg-double v25, v2, v4

    if-gez v25, :cond_7

    .line 662
    cmpl-double v25, v4, v8

    if-lez v25, :cond_5

    .line 663
    cmpg-double v25, v2, v8

    if-gez v25, :cond_6

    .line 664
    move-wide/from16 v26, v4

    .line 665
    .local v26, "temp":D
    move-wide v4, v8

    .line 666
    move-wide/from16 v8, v26

    .line 698
    .end local v26    # "temp":D
    :cond_5
    :goto_5
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v28, v28, v4

    sub-double v28, v8, v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    mul-double v30, v30, v2

    sub-double v30, v8, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(D)D

    move-result-wide v30

    add-double v10, v28, v30

    .line 699
    .local v10, "d":D
    cmpg-double v25, v10, v12

    if-gez v25, :cond_3

    .line 700
    move-wide v12, v10

    .line 701
    const/16 v25, 0x0

    aput-object v7, v6, v25

    .line 702
    const/16 v25, 0x1

    aput-object v14, v6, v25

    .line 703
    const/16 v25, 0x2

    aput-object v15, v6, v25

    goto :goto_4

    .line 668
    .end local v10    # "d":D
    :cond_6
    move-wide/from16 v26, v2

    .line 669
    .restart local v26    # "temp":D
    move-wide v2, v8

    .line 670
    move-wide v8, v4

    .line 671
    move-wide/from16 v4, v26

    .line 672
    goto :goto_5

    .line 675
    .end local v26    # "temp":D
    :cond_7
    cmpg-double v25, v4, v8

    if-gez v25, :cond_9

    .line 676
    cmpg-double v25, v2, v8

    if-gez v25, :cond_8

    .line 677
    move-wide/from16 v26, v2

    .line 678
    .restart local v26    # "temp":D
    move-wide v2, v4

    .line 679
    move-wide/from16 v4, v26

    .line 680
    goto :goto_5

    .line 681
    .end local v26    # "temp":D
    :cond_8
    move-wide/from16 v26, v2

    .line 682
    .restart local v26    # "temp":D
    move-wide v2, v4

    .line 683
    move-wide v4, v8

    .line 684
    move-wide/from16 v8, v26

    .line 685
    goto :goto_5

    .line 687
    .end local v26    # "temp":D
    :cond_9
    move-wide/from16 v26, v2

    .line 688
    .restart local v26    # "temp":D
    move-wide v2, v8

    .line 689
    move-wide/from16 v8, v26

    goto :goto_5

    .line 644
    .end local v2    # "a":D
    .end local v4    # "b":D
    .end local v8    # "c":D
    .end local v15    # "fpk":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v20    # "maxModuleSize":F
    .end local v26    # "temp":D
    :cond_a
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 640
    .end local v14    # "fpj":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v19    # "k":I
    .end local v22    # "squares0":D
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 709
    .end local v7    # "fpi":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v18    # "j":I
    .end local v21    # "minModuleSize":F
    :cond_c
    const-wide v28, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v25, v12, v28

    if-nez v25, :cond_d

    .line 710
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25

    .line 713
    :cond_d
    return-object v6
.end method

.method private static squaredDistance(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)D
    .locals 8
    .param p0, "a"    # Lcom/google/zxing/qrcode/detector/FinderPattern;
    .param p1, "b"    # Lcom/google/zxing/qrcode/detector/FinderPattern;

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v0, v4

    .line 609
    .local v0, "x":D
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v2, v4

    .line 610
    .local v2, "y":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    return-wide v4
.end method


# virtual methods
.method protected final clearCounts([I)V
    .locals 0
    .param p1, "counts"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->doClearCounts([I)V

    .line 244
    return-void
.end method

.method final find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p1, :cond_3

    sget-object v12, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v11, 0x1

    .line 81
    .local v11, "tryHarder":Z
    :goto_0
    iget-object v12, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v12}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    .line 82
    .local v6, "maxI":I
    iget-object v12, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v12}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    .line 90
    .local v7, "maxJ":I
    mul-int/lit8 v12, v6, 0x3

    div-int/lit16 v4, v12, 0x184

    .line 91
    .local v4, "iSkip":I
    const/4 v12, 0x3

    if-lt v4, v12, :cond_0

    if-eqz v11, :cond_1

    .line 92
    :cond_0
    const/4 v4, 0x3

    .line 95
    :cond_1
    const/4 v2, 0x0

    .line 96
    .local v2, "done":Z
    const/4 v12, 0x5

    new-array v10, v12, [I

    .line 97
    .local v10, "stateCount":[I
    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_d

    if-nez v2, :cond_d

    .line 99
    invoke-static {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->doClearCounts([I)V

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "currentState":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v7, :cond_b

    .line 102
    iget-object v12, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v12, v5, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 104
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 107
    :cond_2
    aget v12, v10, v1

    add-int/lit8 v12, v12, 0x1

    aput v12, v10, v1

    .line 101
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 80
    .end local v1    # "currentState":I
    .end local v2    # "done":Z
    .end local v3    # "i":I
    .end local v4    # "iSkip":I
    .end local v5    # "j":I
    .end local v6    # "maxI":I
    .end local v7    # "maxJ":I
    .end local v10    # "stateCount":[I
    .end local v11    # "tryHarder":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 109
    .restart local v1    # "currentState":I
    .restart local v2    # "done":Z
    .restart local v3    # "i":I
    .restart local v4    # "iSkip":I
    .restart local v5    # "j":I
    .restart local v6    # "maxI":I
    .restart local v7    # "maxJ":I
    .restart local v10    # "stateCount":[I
    .restart local v11    # "tryHarder":Z
    :cond_4
    and-int/lit8 v12, v1, 0x1

    if-nez v12, :cond_a

    .line 110
    const/4 v12, 0x4

    if-ne v1, v12, :cond_9

    .line 111
    invoke-static {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 112
    invoke-virtual {p0, v10, v3, v5}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v0

    .line 113
    .local v0, "confirmed":Z
    if-eqz v0, :cond_7

    .line 116
    const/4 v4, 0x2

    .line 117
    iget-boolean v12, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v12, :cond_6

    .line 118
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v2

    .line 140
    :cond_5
    :goto_4
    const/4 v1, 0x0

    .line 141
    invoke-static {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->doClearCounts([I)V

    goto :goto_3

    .line 120
    :cond_6
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->findRowSkip()I

    move-result v9

    .line 121
    .local v9, "rowSkip":I
    const/4 v12, 0x2

    aget v12, v10, v12

    if-le v9, v12, :cond_5

    .line 130
    const/4 v12, 0x2

    aget v12, v10, v12

    sub-int v12, v9, v12

    sub-int/2addr v12, v4

    add-int/2addr v3, v12

    .line 131
    add-int/lit8 v5, v7, -0x1

    goto :goto_4

    .line 135
    .end local v9    # "rowSkip":I
    :cond_7
    invoke-static {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->doShiftCounts2([I)V

    .line 136
    const/4 v1, 0x3

    .line 137
    goto :goto_3

    .line 143
    .end local v0    # "confirmed":Z
    :cond_8
    invoke-static {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->doShiftCounts2([I)V

    .line 144
    const/4 v1, 0x3

    goto :goto_3

    .line 147
    :cond_9
    add-int/lit8 v1, v1, 0x1

    aget v12, v10, v1

    add-int/lit8 v12, v12, 0x1

    aput v12, v10, v1

    goto :goto_3

    .line 150
    :cond_a
    aget v12, v10, v1

    add-int/lit8 v12, v12, 0x1

    aput v12, v10, v1

    goto :goto_3

    .line 154
    :cond_b
    invoke-static {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 155
    invoke-virtual {p0, v10, v3, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v0

    .line 156
    .restart local v0    # "confirmed":Z
    if-eqz v0, :cond_c

    .line 157
    const/4 v12, 0x0

    aget v4, v10, v12

    .line 158
    iget-boolean v12, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v12, :cond_c

    .line 160
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v2

    .line 97
    .end local v0    # "confirmed":Z
    :cond_c
    add-int/2addr v3, v4

    goto/16 :goto_1

    .line 166
    .end local v1    # "currentState":I
    .end local v5    # "j":I
    :cond_d
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v8

    .line 167
    .local v8, "patternInfo":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-static {v8}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 169
    new-instance v12, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v12, v8}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    return-object v12
.end method

.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method protected final getPossibleCenters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    return-object v0
.end method

.method protected final handlePossibleCenter([III)Z
    .locals 11
    .param p1, "stateCount"    # [I
    .param p2, "i"    # I
    .param p3, "j"    # I

    .prologue
    .line 511
    const/4 v8, 0x0

    aget v8, p1, v8

    const/4 v9, 0x1

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x2

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x3

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x4

    aget v9, p1, v9

    add-int v7, v8, v9

    .line 513
    .local v7, "stateCountTotal":I
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v2

    .line 514
    .local v2, "centerJ":F
    float-to-int v8, v2

    const/4 v9, 0x2

    aget v9, p1, v9

    invoke-direct {p0, p2, v8, v9, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckVertical(IIII)F

    move-result v1

    .line 515
    .local v1, "centerI":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_3

    .line 517
    float-to-int v8, v2

    float-to-int v9, v1

    const/4 v10, 0x2

    aget v10, p1, v10

    invoke-direct {p0, v8, v9, v10, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckHorizontal(IIII)F

    move-result v2

    .line 518
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_3

    float-to-int v8, v1

    float-to-int v9, v2

    invoke-direct {p0, v8, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckDiagonal(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 519
    int-to-float v8, v7

    const/high16 v9, 0x40e00000    # 7.0f

    div-float v3, v8, v9

    .line 520
    .local v3, "estimatedModuleSize":F
    const/4 v4, 0x0

    .line 521
    .local v4, "found":Z
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 522
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 524
    .local v0, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 525
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 526
    const/4 v4, 0x1

    .line 530
    .end local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_0
    if-nez v4, :cond_1

    .line 531
    new-instance v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v6, v2, v1, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    .line 532
    .local v6, "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v8, :cond_1

    .line 534
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-interface {v8, v6}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 537
    .end local v6    # "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_1
    const/4 v8, 0x1

    .line 540
    .end local v3    # "estimatedModuleSize":F
    .end local v4    # "found":Z
    .end local v5    # "index":I
    :goto_1
    return v8

    .line 521
    .restart local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v3    # "estimatedModuleSize":F
    .restart local v4    # "found":Z
    .restart local v5    # "index":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 540
    .end local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v3    # "estimatedModuleSize":F
    .end local v4    # "found":Z
    .end local v5    # "index":I
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method protected final handlePossibleCenter([IIIZ)Z
    .locals 1
    .param p1, "stateCount"    # [I
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "pureBarcode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v0

    return v0
.end method

.method protected final shiftCounts2([I)V
    .locals 0
    .param p1, "stateCount"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->doShiftCounts2([I)V

    .line 249
    return-void
.end method

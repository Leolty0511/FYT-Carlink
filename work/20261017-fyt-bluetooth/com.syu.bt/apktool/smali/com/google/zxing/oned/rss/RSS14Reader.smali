.class public final Lcom/google/zxing/oned/rss/RSS14Reader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSS14Reader.java"


# static fields
.field private static final FINDER_PATTERNS:[[I

.field private static final INSIDE_GSUM:[I

.field private static final INSIDE_ODD_TOTAL_SUBSET:[I

.field private static final INSIDE_ODD_WIDEST:[I

.field private static final OUTSIDE_EVEN_TOTAL_SUBSET:[I

.field private static final OUTSIDE_GSUM:[I

.field private static final OUTSIDE_ODD_WIDEST:[I


# instance fields
.field private final possibleLeftPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private final possibleRightPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 40
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    .line 41
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    .line 42
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    .line 43
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    .line 44
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    .line 45
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    .line 47
    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    return-void

    .line 40
    :array_0
    .array-data 4
        0x1
        0xa
        0x22
        0x46
        0x7e
    .end array-data

    .line 41
    :array_1
    .array-data 4
        0x4
        0x14
        0x30
        0x51
    .end array-data

    .line 42
    :array_2
    .array-data 4
        0x0
        0xa1
        0x3c1
        0x7df
        0xa9b
    .end array-data

    .line 43
    :array_3
    .array-data 4
        0x0
        0x150
        0x40c
        0x5ec
    .end array-data

    .line 44
    :array_4
    .array-data 4
        0x8
        0x6
        0x4
        0x3
        0x1
    .end array-data

    .line 45
    :array_5
    .array-data 4
        0x2
        0x4
        0x6
        0x8
    .end array-data

    .line 47
    :array_6
    .array-data 4
        0x3
        0x8
        0x2
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x5
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x3
        0x7
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x1
        0x9
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x7
        0x4
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x5
        0x6
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x3
        0x8
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x5
        0x7
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x3
        0x9
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    .line 65
    return-void
.end method

.method private static addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V
    .locals 5
    .param p1, "pair"    # Lcom/google/zxing/oned/rss/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;",
            "Lcom/google/zxing/oned/rss/Pair;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "possiblePairs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/rss/Pair;>;"
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    .line 94
    .local v0, "found":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/Pair;

    .line 95
    .local v1, "other":Lcom/google/zxing/oned/rss/Pair;
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 96
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/Pair;->incrementCount()V

    .line 97
    const/4 v0, 0x1

    .line 101
    .end local v1    # "other":Lcom/google/zxing/oned/rss/Pair;
    :cond_3
    if-nez v0, :cond_0

    .line 102
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private adjustOddEvenCounts(ZI)V
    .locals 13
    .param p1, "outsideChar"    # Z
    .param p2, "numModules"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xc

    const/4 v11, 0x4

    const/4 v9, 0x0

    const/4 v2, 0x1

    .line 351
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v8

    .line 352
    .local v8, "oddSum":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v3

    .line 354
    .local v3, "evenSum":I
    const/4 v5, 0x0

    .line 355
    .local v5, "incrementOdd":Z
    const/4 v1, 0x0

    .line 356
    .local v1, "decrementOdd":Z
    const/4 v4, 0x0

    .line 357
    .local v4, "incrementEven":Z
    const/4 v0, 0x0

    .line 359
    .local v0, "decrementEven":Z
    if-eqz p1, :cond_4

    .line 360
    if-le v8, v12, :cond_2

    .line 361
    const/4 v1, 0x1

    .line 365
    :cond_0
    :goto_0
    if-le v3, v12, :cond_3

    .line 366
    const/4 v0, 0x1

    .line 383
    :cond_1
    :goto_1
    add-int v10, v8, v3

    sub-int v6, v10, p2

    .line 384
    .local v6, "mismatch":I
    and-int/lit8 v11, v8, 0x1

    if-eqz p1, :cond_8

    move v10, v2

    :goto_2
    if-ne v11, v10, :cond_9

    move v7, v2

    .line 385
    .local v7, "oddParityBad":Z
    :goto_3
    and-int/lit8 v10, v3, 0x1

    if-ne v10, v2, :cond_a

    .line 399
    .local v2, "evenParityBad":Z
    :goto_4
    packed-switch v6, :pswitch_data_0

    .line 447
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 362
    .end local v2    # "evenParityBad":Z
    .end local v6    # "mismatch":I
    .end local v7    # "oddParityBad":Z
    :cond_2
    if-ge v8, v11, :cond_0

    .line 363
    const/4 v5, 0x1

    goto :goto_0

    .line 367
    :cond_3
    if-ge v3, v11, :cond_1

    .line 368
    const/4 v4, 0x1

    goto :goto_1

    .line 371
    :cond_4
    const/16 v10, 0xb

    if-le v8, v10, :cond_6

    .line 372
    const/4 v1, 0x1

    .line 376
    :cond_5
    :goto_5
    const/16 v10, 0xa

    if-le v3, v10, :cond_7

    .line 377
    const/4 v0, 0x1

    goto :goto_1

    .line 373
    :cond_6
    const/4 v10, 0x5

    if-ge v8, v10, :cond_5

    .line 374
    const/4 v5, 0x1

    goto :goto_5

    .line 378
    :cond_7
    if-ge v3, v11, :cond_1

    .line 379
    const/4 v4, 0x1

    goto :goto_1

    .restart local v6    # "mismatch":I
    :cond_8
    move v10, v9

    .line 384
    goto :goto_2

    :cond_9
    move v7, v9

    goto :goto_3

    .restart local v7    # "oddParityBad":Z
    :cond_a
    move v2, v9

    .line 385
    goto :goto_4

    .line 401
    .restart local v2    # "evenParityBad":Z
    :pswitch_0
    if-eqz v7, :cond_d

    .line 402
    if-eqz v2, :cond_b

    .line 403
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 405
    :cond_b
    const/4 v1, 0x1

    .line 450
    :cond_c
    :goto_6
    if-eqz v5, :cond_16

    .line 451
    if-eqz v1, :cond_15

    .line 452
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 407
    :cond_d
    if-nez v2, :cond_e

    .line 408
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 410
    :cond_e
    const/4 v0, 0x1

    .line 412
    goto :goto_6

    .line 414
    :pswitch_1
    if-eqz v7, :cond_10

    .line 415
    if-eqz v2, :cond_f

    .line 416
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 418
    :cond_f
    const/4 v5, 0x1

    goto :goto_6

    .line 420
    :cond_10
    if-nez v2, :cond_11

    .line 421
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 423
    :cond_11
    const/4 v4, 0x1

    .line 425
    goto :goto_6

    .line 427
    :pswitch_2
    if-eqz v7, :cond_14

    .line 428
    if-nez v2, :cond_12

    .line 429
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 432
    :cond_12
    if-ge v8, v3, :cond_13

    .line 433
    const/4 v5, 0x1

    .line 434
    const/4 v0, 0x1

    goto :goto_6

    .line 436
    :cond_13
    const/4 v1, 0x1

    .line 437
    const/4 v4, 0x1

    goto :goto_6

    .line 440
    :cond_14
    if-eqz v2, :cond_c

    .line 441
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 454
    :cond_15
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    .line 456
    :cond_16
    if-eqz v1, :cond_17

    .line 457
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    .line 459
    :cond_17
    if-eqz v4, :cond_19

    .line 460
    if-eqz v0, :cond_18

    .line 461
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 463
    :cond_18
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    .line 465
    :cond_19
    if-eqz v0, :cond_1a

    .line 466
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    .line 469
    :cond_1a
    return-void

    .line 399
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z
    .locals 4
    .param p0, "leftPair"    # Lcom/google/zxing/oned/rss/Pair;
    .param p1, "rightPair"    # Lcom/google/zxing/oned/rss/Pair;

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0x4f

    .line 147
    .local v0, "checkValue":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v3

    add-int v1, v2, v3

    .line 148
    .local v1, "targetCheckValue":I
    const/16 v2, 0x48

    if-le v1, v2, :cond_0

    .line 149
    add-int/lit8 v1, v1, -0x1

    .line 151
    :cond_0
    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 152
    add-int/lit8 v1, v1, -0x1

    .line 154
    :cond_1
    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;
    .locals 15
    .param p0, "leftPair"    # Lcom/google/zxing/oned/rss/Pair;
    .param p1, "rightPair"    # Lcom/google/zxing/oned/rss/Pair;

    .prologue
    .line 113
    const-wide/32 v10, 0x453af5

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v12

    int-to-long v12, v12

    mul-long/2addr v10, v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v12

    int-to-long v12, v12

    add-long v8, v10, v12

    .line 114
    .local v8, "symbolValue":J
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "text":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v10, 0xe

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v3, v10, 0xd

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_0

    .line 118
    const/16 v10, 0x30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "checkDigit":I
    const/4 v3, 0x0

    :goto_1
    const/16 v10, 0xd

    if-ge v3, v10, :cond_2

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    add-int/lit8 v2, v10, -0x30

    .line 125
    .local v2, "digit":I
    and-int/lit8 v10, v3, 0x1

    if-nez v10, :cond_1

    mul-int/lit8 v2, v2, 0x3

    .end local v2    # "digit":I
    :cond_1
    add-int/2addr v1, v2

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 127
    :cond_2
    rem-int/lit8 v10, v1, 0xa

    rsub-int/lit8 v1, v10, 0xa

    .line 128
    const/16 v10, 0xa

    if-ne v1, v10, :cond_3

    .line 129
    const/4 v1, 0x0

    .line 131
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 134
    .local v4, "leftPoints":[Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 135
    .local v6, "rightPoints":[Lcom/google/zxing/ResultPoint;
    new-instance v5, Lcom/google/zxing/Result;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Lcom/google/zxing/ResultPoint;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-object v14, v4, v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    aget-object v14, v4, v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x0

    aget-object v14, v6, v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x1

    aget-object v14, v6, v14

    aput-object v14, v12, v13

    sget-object v13, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v5, v10, v11, v12, v13}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 140
    .local v5, "result":Lcom/google/zxing/Result;
    sget-object v10, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    const-string v11, "]e0"

    invoke-virtual {v5, v10, v11}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 141
    return-object v5
.end method

.method private decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 31
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p3, "outsideChar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDataCharacterCounters()[I

    move-result-object v5

    .line 189
    .local v5, "counters":[I
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v5, v0}, Ljava/util/Arrays;->fill([II)V

    .line 191
    if-eqz p3, :cond_2

    .line 192
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v29

    const/16 v30, 0x0

    aget v29, v29, v30

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    .line 203
    :cond_0
    if-eqz p3, :cond_3

    const/16 v16, 0x10

    .line 204
    .local v16, "numModules":I
    :goto_0
    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v6, v29, v30

    .line 206
    .local v6, "elementWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v18

    .line 207
    .local v18, "oddCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v8

    .line 208
    .local v8, "evenCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v19

    .line 209
    .local v19, "oddRoundingErrors":[F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v9

    .line 211
    .local v9, "evenRoundingErrors":[F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    array-length v0, v5

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v14, v0, :cond_6

    .line 212
    aget v29, v5, v14

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v29, v6

    .line 213
    .local v28, "value":F
    const/high16 v29, 0x3f000000    # 0.5f

    add-float v29, v29, v28

    move/from16 v0, v29

    float-to-int v4, v0

    .line 214
    .local v4, "count":I
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ge v4, v0, :cond_4

    .line 215
    const/4 v4, 0x1

    .line 219
    :cond_1
    :goto_2
    div-int/lit8 v22, v14, 0x2

    .line 220
    .local v22, "offset":I
    and-int/lit8 v29, v14, 0x1

    if-nez v29, :cond_5

    .line 221
    aput v4, v18, v22

    .line 222
    int-to-float v0, v4

    move/from16 v29, v0

    sub-float v29, v28, v29

    aput v29, v19, v22

    .line 211
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 194
    .end local v4    # "count":I
    .end local v6    # "elementWidth":F
    .end local v8    # "evenCounts":[I
    .end local v9    # "evenRoundingErrors":[F
    .end local v14    # "i":I
    .end local v16    # "numModules":I
    .end local v18    # "oddCounts":[I
    .end local v19    # "oddRoundingErrors":[F
    .end local v22    # "offset":I
    .end local v28    # "value":F
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v29

    const/16 v30, 0x1

    aget v29, v29, v30

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 196
    const/4 v14, 0x0

    .restart local v14    # "i":I
    array-length v0, v5

    move/from16 v29, v0

    add-int/lit8 v15, v29, -0x1

    .local v15, "j":I
    :goto_4
    if-ge v14, v15, :cond_0

    .line 197
    aget v25, v5, v14

    .line 198
    .local v25, "temp":I
    aget v29, v5, v15

    aput v29, v5, v14

    .line 199
    aput v25, v5, v15

    .line 196
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    goto :goto_4

    .line 203
    .end local v14    # "i":I
    .end local v15    # "j":I
    .end local v25    # "temp":I
    :cond_3
    const/16 v16, 0xf

    goto :goto_0

    .line 216
    .restart local v4    # "count":I
    .restart local v6    # "elementWidth":F
    .restart local v8    # "evenCounts":[I
    .restart local v9    # "evenRoundingErrors":[F
    .restart local v14    # "i":I
    .restart local v16    # "numModules":I
    .restart local v18    # "oddCounts":[I
    .restart local v19    # "oddRoundingErrors":[F
    .restart local v28    # "value":F
    :cond_4
    const/16 v29, 0x8

    move/from16 v0, v29

    if-le v4, v0, :cond_1

    .line 217
    const/16 v4, 0x8

    goto :goto_2

    .line 224
    .restart local v22    # "offset":I
    :cond_5
    aput v4, v8, v22

    .line 225
    int-to-float v0, v4

    move/from16 v29, v0

    sub-float v29, v28, v29

    aput v29, v9, v22

    goto :goto_3

    .line 229
    .end local v4    # "count":I
    .end local v22    # "offset":I
    .end local v28    # "value":F
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->adjustOddEvenCounts(ZI)V

    .line 231
    const/16 v20, 0x0

    .line 232
    .local v20, "oddSum":I
    const/16 v17, 0x0

    .line 233
    .local v17, "oddChecksumPortion":I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v14, v29, -0x1

    :goto_5
    if-ltz v14, :cond_7

    .line 234
    mul-int/lit8 v17, v17, 0x9

    .line 235
    aget v29, v18, v14

    add-int v17, v17, v29

    .line 236
    aget v29, v18, v14

    add-int v20, v20, v29

    .line 233
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 238
    :cond_7
    const/4 v7, 0x0

    .line 239
    .local v7, "evenChecksumPortion":I
    const/4 v10, 0x0

    .line 240
    .local v10, "evenSum":I
    array-length v0, v8

    move/from16 v29, v0

    add-int/lit8 v14, v29, -0x1

    :goto_6
    if-ltz v14, :cond_8

    .line 241
    mul-int/lit8 v7, v7, 0x9

    .line 242
    aget v29, v8, v14

    add-int v7, v7, v29

    .line 243
    aget v29, v8, v14

    add-int v10, v10, v29

    .line 240
    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    .line 245
    :cond_8
    mul-int/lit8 v29, v7, 0x3

    add-int v3, v17, v29

    .line 247
    .local v3, "checksumPortion":I
    if-eqz p3, :cond_b

    .line 248
    and-int/lit8 v29, v20, 0x1

    if-nez v29, :cond_9

    const/16 v29, 0xc

    move/from16 v0, v20

    move/from16 v1, v29

    if-gt v0, v1, :cond_9

    const/16 v29, 0x4

    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    .line 249
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v29

    throw v29

    .line 251
    :cond_a
    rsub-int/lit8 v29, v20, 0xc

    div-int/lit8 v13, v29, 0x2

    .line 252
    .local v13, "group":I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    aget v21, v29, v13

    .line 253
    .local v21, "oddWidest":I
    rsub-int/lit8 v11, v21, 0x9

    .line 254
    .local v11, "evenWidest":I
    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v27

    .line 255
    .local v27, "vOdd":I
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-static {v8, v11, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v26

    .line 256
    .local v26, "vEven":I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    aget v23, v29, v13

    .line 257
    .local v23, "tEven":I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    aget v12, v29, v13

    .line 258
    .local v12, "gSum":I
    new-instance v29, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v30, v27, v23

    add-int v30, v30, v26

    add-int v30, v30, v12

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    .line 270
    .end local v23    # "tEven":I
    :goto_7
    return-object v29

    .line 260
    .end local v11    # "evenWidest":I
    .end local v12    # "gSum":I
    .end local v13    # "group":I
    .end local v21    # "oddWidest":I
    .end local v26    # "vEven":I
    .end local v27    # "vOdd":I
    :cond_b
    and-int/lit8 v29, v10, 0x1

    if-nez v29, :cond_c

    const/16 v29, 0xa

    move/from16 v0, v29

    if-gt v10, v0, :cond_c

    const/16 v29, 0x4

    move/from16 v0, v29

    if-ge v10, v0, :cond_d

    .line 261
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v29

    throw v29

    .line 263
    :cond_d
    rsub-int/lit8 v29, v10, 0xa

    div-int/lit8 v13, v29, 0x2

    .line 264
    .restart local v13    # "group":I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    aget v21, v29, v13

    .line 265
    .restart local v21    # "oddWidest":I
    rsub-int/lit8 v11, v21, 0x9

    .line 266
    .restart local v11    # "evenWidest":I
    const/16 v29, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v27

    .line 267
    .restart local v27    # "vOdd":I
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v8, v11, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v26

    .line 268
    .restart local v26    # "vEven":I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    aget v24, v29, v13

    .line 269
    .local v24, "tOdd":I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    aget v12, v29, v13

    .line 270
    .restart local v12    # "gSum":I
    new-instance v29, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v30, v26, v24

    add-int v30, v30, v27

    add-int v30, v30, v12

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    goto :goto_7
.end method

.method private decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;
    .locals 11
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "right"    # Z
    .param p3, "rowNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "ZI",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/oned/rss/Pair;"
        }
    .end annotation

    .prologue
    .line 159
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/rss/RSS14Reader;->findFinderPattern(Lcom/google/zxing/common/BitArray;Z)[I

    move-result-object v6

    .line 160
    .local v6, "startEnd":[I
    invoke-direct {p0, p1, p3, p2, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v4

    .line 162
    .local v4, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    if-nez p4, :cond_2

    const/4 v5, 0x0

    .line 165
    .local v5, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :goto_0
    if-eqz v5, :cond_1

    .line 166
    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v6

    .line 167
    const/4 v7, 0x0

    aget v7, v6, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v0, v7, v8

    .line 168
    .local v0, "center":F
    if-eqz p2, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    sub-float v0, v7, v0

    .line 172
    :cond_0
    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, p3

    invoke-direct {v7, v0, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v5, v7}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 175
    .end local v0    # "center":F
    :cond_1
    const/4 v7, 0x1

    invoke-direct {p0, p1, v4, v7}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v3

    .line 176
    .local v3, "outside":Lcom/google/zxing/oned/rss/DataCharacter;
    const/4 v7, 0x0

    invoke-direct {p0, p1, v4, v7}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    .line 177
    .local v2, "inside":Lcom/google/zxing/oned/rss/DataCharacter;
    new-instance v7, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    mul-int/lit16 v8, v8, 0x63d

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v9

    add-int/2addr v8, v9

    .line 178
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v9

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    invoke-direct {v7, v8, v9, v4}, Lcom/google/zxing/oned/rss/Pair;-><init>(IILcom/google/zxing/oned/rss/FinderPattern;)V

    .line 181
    .end local v2    # "inside":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v3    # "outside":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v4    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    .end local v5    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .end local v6    # "startEnd":[I
    :goto_1
    return-object v7

    .line 162
    .restart local v4    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    .restart local v6    # "startEnd":[I
    :cond_2
    sget-object v7, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 163
    invoke-interface {p4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/ResultPointCallback;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v7

    goto :goto_0

    .line 180
    .end local v4    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    .end local v6    # "startEnd":[I
    :catch_0
    move-exception v1

    .line 181
    .local v1, "ignored":Lcom/google/zxing/NotFoundException;
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private findFinderPattern(Lcom/google/zxing/common/BitArray;Z)[I
    .locals 13
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rightFinderPattern"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v1

    .line 279
    .local v1, "counters":[I
    aput v8, v1, v8

    .line 280
    aput v8, v1, v7

    .line 281
    aput v8, v1, v11

    .line 282
    aput v8, v1, v12

    .line 284
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 285
    .local v5, "width":I
    const/4 v2, 0x0

    .line 286
    .local v2, "isWhite":Z
    const/4 v4, 0x0

    .line 287
    .local v4, "rowOffset":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 288
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_1

    move v2, v7

    .line 289
    :goto_1
    if-ne p2, v2, :cond_2

    .line 296
    :cond_0
    const/4 v0, 0x0

    .line 297
    .local v0, "counterPosition":I
    move v3, v4

    .line 298
    .local v3, "patternStart":I
    move v6, v4

    .local v6, "x":I
    :goto_2
    if-ge v6, v5, :cond_7

    .line 299
    invoke-virtual {p1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eq v9, v2, :cond_3

    .line 300
    aget v9, v1, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v0

    .line 298
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v0    # "counterPosition":I
    .end local v3    # "patternStart":I
    .end local v6    # "x":I
    :cond_1
    move v2, v8

    .line 288
    goto :goto_1

    .line 293
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 302
    .restart local v0    # "counterPosition":I
    .restart local v3    # "patternStart":I
    .restart local v6    # "x":I
    :cond_3
    if-ne v0, v12, :cond_5

    .line 303
    invoke-static {v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->isFinderPattern([I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 304
    new-array v9, v11, [I

    aput v3, v9, v8

    aput v6, v9, v7

    return-object v9

    .line 306
    :cond_4
    aget v9, v1, v8

    aget v10, v1, v7

    add-int/2addr v9, v10

    add-int/2addr v3, v9

    .line 307
    aget v9, v1, v11

    aput v9, v1, v8

    .line 308
    aget v9, v1, v12

    aput v9, v1, v7

    .line 309
    aput v8, v1, v11

    .line 310
    aput v8, v1, v12

    .line 311
    add-int/lit8 v0, v0, -0x1

    .line 315
    :goto_4
    aput v7, v1, v0

    .line 316
    if-nez v2, :cond_6

    move v2, v7

    :goto_5
    goto :goto_3

    .line 313
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v2, v8

    .line 316
    goto :goto_5

    .line 319
    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 11
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowNumber"    # I
    .param p3, "right"    # Z
    .param p4, "startEnd"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 326
    aget v0, p4, v5

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    .line 327
    .local v9, "firstIsBlack":Z
    aget v0, p4, v5

    add-int/lit8 v8, v0, -0x1

    .line 329
    .local v8, "firstElementStart":I
    :goto_0
    if-ltz v8, :cond_0

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-eq v9, v0, :cond_0

    .line 330
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 332
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 333
    aget v0, p4, v5

    sub-int v7, v0, v8

    .line 335
    .local v7, "firstCounter":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v6

    .line 336
    .local v6, "counters":[I
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    invoke-static {v6, v5, v6, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    aput v7, v6, v5

    .line 338
    sget-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    invoke-static {v6, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFinderValue([I[[I)I

    move-result v1

    .line 339
    .local v1, "value":I
    move v3, v8

    .line 340
    .local v3, "start":I
    aget v4, p4, v10

    .line 341
    .local v4, "end":I
    if-eqz p3, :cond_1

    .line 343
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v3, v0, v3

    .line 344
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v4, v0, v4

    .line 346
    :cond_1
    new-instance v0, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v8, v2, v5

    aget v5, p4, v10

    aput v5, v2, v10

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object v0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 8
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v7, 0x1

    .line 71
    const/4 v4, 0x0

    invoke-direct {p0, p2, v4, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v1

    .line 72
    .local v1, "leftPair":Lcom/google/zxing/oned/rss/Pair;
    iget-object v4, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-static {v4, v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 73
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 74
    invoke-direct {p0, p2, v7, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v3

    .line 75
    .local v3, "rightPair":Lcom/google/zxing/oned/rss/Pair;
    iget-object v4, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-static {v4, v3}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 76
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 77
    iget-object v4, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/Pair;

    .line 78
    .local v0, "left":Lcom/google/zxing/oned/rss/Pair;
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 79
    iget-object v5, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/Pair;

    .line 80
    .local v2, "right":Lcom/google/zxing/oned/rss/Pair;
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v6

    if-le v6, v7, :cond_1

    invoke-static {v0, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    invoke-static {v0, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;

    move-result-object v4

    return-object v4

    .line 86
    .end local v0    # "left":Lcom/google/zxing/oned/rss/Pair;
    .end local v2    # "right":Lcom/google/zxing/oned/rss/Pair;
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    return-void
.end method

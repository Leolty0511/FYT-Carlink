.class public final Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSSExpandedReader.java"


# static fields
.field private static final DATA_CHARACTER_MODULES:F = 17.0f

.field private static final EVEN_TOTAL_SUBSET:[I

.field private static final FINDER_PATTERNS:[[I

.field private static final FINDER_PATTERN_MODULES:F = 15.0f

.field private static final FINDER_PATTERN_SEQUENCES:[[I

.field private static final FINDER_PAT_A:I = 0x0

.field private static final FINDER_PAT_B:I = 0x1

.field private static final FINDER_PAT_C:I = 0x2

.field private static final FINDER_PAT_D:I = 0x3

.field private static final FINDER_PAT_E:I = 0x4

.field private static final FINDER_PAT_F:I = 0x5

.field private static final GSUM:[I

.field private static final MAX_FINDER_PATTERN_DISTANCE_VARIANCE:F = 0.1f

.field private static final MAX_PAIRS:I = 0xb

.field private static final SYMBOL_WIDEST:[I

.field private static final WEIGHTS:[[I


# instance fields
.field private final pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation
.end field

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation
.end field

.field private final startEnd:[I

.field private startFromEven:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/16 v3, 0x8

    .line 58
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    .line 59
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    .line 60
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    .line 73
    const/16 v0, 0x17

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v3

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    .line 108
    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v6, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v7, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_25

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_28

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    return-void

    .line 58
    :array_0
    .array-data 4
        0x7
        0x5
        0x4
        0x3
        0x1
    .end array-data

    .line 59
    :array_1
    .array-data 4
        0x4
        0x14
        0x34
        0x68
        0xcc
    .end array-data

    .line 60
    :array_2
    .array-data 4
        0x0
        0x15c
        0x56c
        0xb84
        0xf94
    .end array-data

    .line 63
    :array_3
    .array-data 4
        0x1
        0x8
        0x4
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x6
        0x4
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x4
        0x6
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x2
        0x8
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x6
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x2
        0x9
        0x1
    .end array-data

    .line 73
    :array_9
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

    :array_b
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

    :array_c
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

    :array_d
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

    :array_e
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

    :array_f
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

    :array_10
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

    :array_11
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

    :array_12
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

    :array_13
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    :array_14
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

    :array_15
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

    :array_16
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    :array_17
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    :array_18
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    :array_1a
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    :array_1b
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    :array_1c
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    :array_1d
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    :array_1e
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    :array_1f
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    .line 108
    :array_20
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x2
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_29
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    return-void
.end method

.method private adjustOddEvenCounts(I)V
    .locals 13
    .param p1, "numModules"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xd

    const/4 v11, 0x4

    const/4 v9, 0x0

    const/4 v2, 0x1

    .line 744
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v8

    .line 745
    .local v8, "oddSum":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v3

    .line 747
    .local v3, "evenSum":I
    const/4 v5, 0x0

    .line 748
    .local v5, "incrementOdd":Z
    const/4 v1, 0x0

    .line 750
    .local v1, "decrementOdd":Z
    if-le v8, v12, :cond_2

    .line 751
    const/4 v1, 0x1

    .line 755
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 756
    .local v4, "incrementEven":Z
    const/4 v0, 0x0

    .line 757
    .local v0, "decrementEven":Z
    if-le v3, v12, :cond_3

    .line 758
    const/4 v0, 0x1

    .line 763
    :cond_1
    :goto_1
    add-int v10, v8, v3

    sub-int v6, v10, p1

    .line 764
    .local v6, "mismatch":I
    and-int/lit8 v10, v8, 0x1

    if-ne v10, v2, :cond_4

    move v7, v2

    .line 765
    .local v7, "oddParityBad":Z
    :goto_2
    and-int/lit8 v10, v3, 0x1

    if-nez v10, :cond_5

    .line 766
    .local v2, "evenParityBad":Z
    :goto_3
    packed-switch v6, :pswitch_data_0

    .line 814
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 752
    .end local v0    # "decrementEven":Z
    .end local v2    # "evenParityBad":Z
    .end local v4    # "incrementEven":Z
    .end local v6    # "mismatch":I
    .end local v7    # "oddParityBad":Z
    :cond_2
    if-ge v8, v11, :cond_0

    .line 753
    const/4 v5, 0x1

    goto :goto_0

    .line 759
    .restart local v0    # "decrementEven":Z
    .restart local v4    # "incrementEven":Z
    :cond_3
    if-ge v3, v11, :cond_1

    .line 760
    const/4 v4, 0x1

    goto :goto_1

    .restart local v6    # "mismatch":I
    :cond_4
    move v7, v9

    .line 764
    goto :goto_2

    .restart local v7    # "oddParityBad":Z
    :cond_5
    move v2, v9

    .line 765
    goto :goto_3

    .line 768
    .restart local v2    # "evenParityBad":Z
    :pswitch_0
    if-eqz v7, :cond_8

    .line 769
    if-eqz v2, :cond_6

    .line 770
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 772
    :cond_6
    const/4 v1, 0x1

    .line 817
    :cond_7
    :goto_4
    if-eqz v5, :cond_11

    .line 818
    if-eqz v1, :cond_10

    .line 819
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 774
    :cond_8
    if-nez v2, :cond_9

    .line 775
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 777
    :cond_9
    const/4 v0, 0x1

    .line 779
    goto :goto_4

    .line 781
    :pswitch_1
    if-eqz v7, :cond_b

    .line 782
    if-eqz v2, :cond_a

    .line 783
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 785
    :cond_a
    const/4 v5, 0x1

    goto :goto_4

    .line 787
    :cond_b
    if-nez v2, :cond_c

    .line 788
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 790
    :cond_c
    const/4 v4, 0x1

    .line 792
    goto :goto_4

    .line 794
    :pswitch_2
    if-eqz v7, :cond_f

    .line 795
    if-nez v2, :cond_d

    .line 796
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 799
    :cond_d
    if-ge v8, v3, :cond_e

    .line 800
    const/4 v5, 0x1

    .line 801
    const/4 v0, 0x1

    goto :goto_4

    .line 803
    :cond_e
    const/4 v1, 0x1

    .line 804
    const/4 v4, 0x1

    goto :goto_4

    .line 807
    :cond_f
    if-eqz v2, :cond_7

    .line 808
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 821
    :cond_10
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    .line 823
    :cond_11
    if-eqz v1, :cond_12

    .line 824
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    .line 826
    :cond_12
    if-eqz v4, :cond_14

    .line 827
    if-eqz v0, :cond_13

    .line 828
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 830
    :cond_13
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    .line 832
    :cond_14
    if-eqz v0, :cond_15

    .line 833
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    .line 835
    :cond_15
    return-void

    .line 766
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private checkChecksum()Z
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 411
    iget-object v10, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 412
    .local v6, "firstPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    .line 413
    .local v0, "checkCharacter":Lcom/google/zxing/oned/rss/DataCharacter;
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v5

    .line 415
    .local v5, "firstCharacter":Lcom/google/zxing/oned/rss/DataCharacter;
    if-nez v5, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v9

    .line 419
    :cond_1
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v2

    .line 420
    .local v2, "checksum":I
    const/4 v8, 0x2

    .line 422
    .local v8, "s":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1
    iget-object v10, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_3

    .line 423
    iget-object v10, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 424
    .local v3, "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    add-int/2addr v2, v10

    .line 425
    add-int/lit8 v8, v8, 0x1

    .line 426
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v4

    .line 427
    .local v4, "currentRightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    if-eqz v4, :cond_2

    .line 428
    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    add-int/2addr v2, v10

    .line 429
    add-int/lit8 v8, v8, 0x1

    .line 422
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 433
    .end local v3    # "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v4    # "currentRightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :cond_3
    rem-int/lit16 v2, v2, 0xd3

    .line 435
    add-int/lit8 v10, v8, -0x4

    mul-int/lit16 v10, v10, 0xd3

    add-int v1, v10, v2

    .line 437
    .local v1, "checkCharacterValue":I
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v10

    if-ne v1, v10, :cond_0

    const/4 v9, 0x1

    goto :goto_0
.end method

.method private checkRows(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .param p2, "currentRow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "collectedRows":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    move v1, p2

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 224
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 225
    .local v2, "row":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 227
    .local v0, "collectedRow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 229
    .end local v0    # "collectedRow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_0
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 231
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isValidSequence(Ljava/util/List;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 232
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 240
    :goto_2
    return-object v4

    .line 236
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 237
    .local v3, "rs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v4, v1, 0x1

    :try_start_0
    invoke-direct {p0, v3, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_2

    .line 241
    :catch_0
    move-exception v4

    .line 223
    .end local v3    # "rs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v2    # "row":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4
.end method

.method private checkRows(Z)Ljava/util/List;
    .locals 3
    .param p1, "reverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_1

    .line 197
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 198
    const/4 v0, 0x0

    .line 217
    :cond_0
    :goto_0
    return-object v0

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 202
    if-eqz p1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 206
    :cond_2
    const/4 v0, 0x0

    .line 208
    .local v0, "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 213
    :goto_1
    if-eqz p1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0

    .line 209
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static constructResult(Ljava/util/List;)Lcom/google/zxing/Result;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 392
    invoke-static {p0}, Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;->buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 394
    .local v0, "binary":Lcom/google/zxing/common/BitArray;
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    move-result-object v1

    .line 395
    .local v1, "decoder":Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, "resultingString":Ljava/lang/String;
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 398
    .local v2, "firstPoints":[Lcom/google/zxing/ResultPoint;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 400
    .local v3, "lastPoints":[Lcom/google/zxing/ResultPoint;
    new-instance v4, Lcom/google/zxing/Result;

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/ResultPoint;

    aget-object v8, v2, v9

    aput-object v8, v7, v9

    aget-object v8, v2, v10

    aput-object v8, v7, v10

    const/4 v8, 0x2

    aget-object v9, v3, v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aget-object v9, v3, v10

    aput-object v9, v7, v8

    sget-object v8, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 406
    .local v4, "result":Lcom/google/zxing/Result;
    sget-object v6, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    const-string v7, "]e0"

    invoke-virtual {v4, v6, v7}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 407
    return-object v4
.end method

.method private findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V
    .locals 11
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "forcedOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 498
    .local p2, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v1

    .line 499
    .local v1, "counters":[I
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v1, v9

    .line 500
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v1, v9

    .line 501
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v1, v9

    .line 502
    const/4 v9, 0x3

    const/4 v10, 0x0

    aput v10, v1, v9

    .line 504
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    .line 507
    .local v7, "width":I
    if-ltz p3, :cond_2

    .line 508
    move v5, p3

    .line 515
    .local v5, "rowOffset":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_4

    const/4 v6, 0x1

    .line 516
    .local v6, "searchingEvenPair":Z
    :goto_1
    iget-boolean v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v9, :cond_0

    .line 517
    if-nez v6, :cond_5

    const/4 v6, 0x1

    .line 520
    :cond_0
    :goto_2
    const/4 v2, 0x0

    .line 521
    .local v2, "isWhite":Z
    :goto_3
    if-ge v5, v7, :cond_1

    .line 522
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v2, 0x1

    .line 523
    :goto_4
    if-nez v2, :cond_7

    .line 529
    :cond_1
    const/4 v0, 0x0

    .line 530
    .local v0, "counterPosition":I
    move v4, v5

    .line 531
    .local v4, "patternStart":I
    move v8, v5

    .local v8, "x":I
    :goto_5
    if-ge v8, v7, :cond_e

    .line 532
    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eq v9, v2, :cond_8

    .line 533
    aget v9, v1, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v0

    .line 531
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 509
    .end local v0    # "counterPosition":I
    .end local v2    # "isWhite":Z
    .end local v4    # "patternStart":I
    .end local v5    # "rowOffset":I
    .end local v6    # "searchingEvenPair":Z
    .end local v8    # "x":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 510
    const/4 v5, 0x0

    .restart local v5    # "rowOffset":I
    goto :goto_0

    .line 512
    .end local v5    # "rowOffset":I
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 513
    .local v3, "lastPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v9

    const/4 v10, 0x1

    aget v5, v9, v10

    .restart local v5    # "rowOffset":I
    goto :goto_0

    .line 515
    .end local v3    # "lastPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 517
    .restart local v6    # "searchingEvenPair":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 522
    .restart local v2    # "isWhite":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 526
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 535
    .restart local v0    # "counterPosition":I
    .restart local v4    # "patternStart":I
    .restart local v8    # "x":I
    :cond_8
    const/4 v9, 0x3

    if-ne v0, v9, :cond_c

    .line 536
    if-eqz v6, :cond_9

    .line 537
    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 540
    :cond_9
    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isFinderPattern([I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 541
    iget-object v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v10, 0x0

    aput v4, v9, v10

    .line 542
    iget-object v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v10, 0x1

    aput v8, v9, v10

    .line 543
    return-void

    .line 546
    :cond_a
    if-eqz v6, :cond_b

    .line 547
    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 550
    :cond_b
    const/4 v9, 0x0

    aget v9, v1, v9

    const/4 v10, 0x1

    aget v10, v1, v10

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    .line 551
    const/4 v9, 0x0

    const/4 v10, 0x2

    aget v10, v1, v10

    aput v10, v1, v9

    .line 552
    const/4 v9, 0x1

    const/4 v10, 0x3

    aget v10, v1, v10

    aput v10, v1, v9

    .line 553
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v1, v9

    .line 554
    const/4 v9, 0x3

    const/4 v10, 0x0

    aput v10, v1, v9

    .line 555
    add-int/lit8 v0, v0, -0x1

    .line 559
    :goto_7
    const/4 v9, 0x1

    aput v9, v1, v0

    .line 560
    if-nez v2, :cond_d

    const/4 v2, 0x1

    :goto_8
    goto :goto_6

    .line 557
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 560
    :cond_d
    const/4 v2, 0x0

    goto :goto_8

    .line 563
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9
.end method

.method private static getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I
    .locals 2
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "initialPos"    # I

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    .line 444
    .local v0, "currentPos":I
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    .line 449
    :goto_0
    return v0

    .line 446
    .end local v0    # "currentPos":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    .line 447
    .restart local v0    # "currentPos":I
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    goto :goto_0
.end method

.method private static isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z
    .locals 1
    .param p0, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p1, "isOddPattern"    # Z
    .param p2, "leftChar"    # Z

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "pairs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    .local p1, "rows":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 363
    .local v4, "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    const/4 v0, 0x1

    .line 364
    .local v0, "allFound":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 365
    .local v2, "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    const/4 v1, 0x0

    .line 366
    .local v1, "found":Z
    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 367
    .local v3, "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 368
    const/4 v1, 0x1

    .line 372
    .end local v3    # "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_3
    if-nez v1, :cond_1

    .line 373
    const/4 v0, 0x0

    .line 377
    .end local v1    # "found":Z
    .end local v2    # "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_4
    if-eqz v0, :cond_0

    .line 379
    const/4 v5, 0x1

    .line 382
    .end local v0    # "allFound":Z
    .end local v4    # "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :goto_0
    return v5

    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static isValidSequence(Ljava/util/List;Z)Z
    .locals 11
    .param p1, "complete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 253
    sget-object v8, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_6

    aget-object v1, v8, v7

    .line 254
    .local v1, "sequence":[I
    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    array-length v10, v1

    if-ne v4, v10, :cond_1

    move v2, v5

    .line 255
    .local v2, "sizeOk":Z
    :goto_1
    if-eqz v2, :cond_5

    .line 256
    const/4 v3, 0x1

    .line 257
    .local v3, "stop":Z
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 258
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v4

    aget v10, v1, v0

    if-eq v4, v10, :cond_4

    .line 259
    const/4 v3, 0x0

    .line 263
    :cond_0
    if-eqz v3, :cond_5

    move v4, v5

    .line 269
    .end local v0    # "j":I
    .end local v1    # "sequence":[I
    .end local v2    # "sizeOk":Z
    .end local v3    # "stop":Z
    :goto_3
    return v4

    .restart local v1    # "sequence":[I
    :cond_1
    move v2, v6

    .line 254
    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    array-length v10, v1

    if-gt v4, v10, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    move v2, v6

    goto :goto_1

    .line 257
    .restart local v0    # "j":I
    .restart local v2    # "sizeOk":Z
    .restart local v3    # "stop":Z
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 253
    .end local v0    # "j":I
    .end local v3    # "stop":Z
    :cond_5
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_0

    .end local v1    # "sequence":[I
    .end local v2    # "sizeOk":Z
    :cond_6
    move v4, v6

    .line 269
    goto :goto_3
.end method

.method private static mayFollow(Ljava/util/List;I)Z
    .locals 13
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 276
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    .line 305
    :goto_0
    return v6

    .line 280
    :cond_0
    sget-object v10, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    array-length v11, v10

    move v9, v8

    :goto_1
    if-ge v9, v11, :cond_5

    aget-object v5, v10, v9

    .line 281
    .local v5, "sequence":[I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    array-length v12, v5

    if-gt v6, v12, :cond_4

    .line 283
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "i":I
    :goto_2
    array-length v6, v5

    if-ge v2, v6, :cond_4

    .line 284
    aget v6, v5, v2

    if-ne v6, p1, :cond_3

    .line 287
    const/4 v4, 0x1

    .line 288
    .local v4, "matched":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 289
    sub-int v6, v2, v3

    add-int/lit8 v6, v6, -0x1

    aget v1, v5, v6

    .line 290
    .local v1, "allowed":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    .line 291
    .local v0, "actual":I
    if-eq v1, v0, :cond_2

    .line 292
    const/4 v4, 0x0

    .line 296
    .end local v0    # "actual":I
    .end local v1    # "allowed":I
    :cond_1
    if-eqz v4, :cond_3

    move v6, v7

    .line 297
    goto :goto_0

    .line 288
    .restart local v0    # "actual":I
    .restart local v1    # "allowed":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 283
    .end local v0    # "actual":I
    .end local v1    # "allowed":I
    .end local v3    # "j":I
    .end local v4    # "matched":Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 280
    .end local v2    # "i":I
    :cond_4
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_1

    .end local v5    # "sequence":[I
    :cond_5
    move v6, v8

    .line 305
    goto :goto_0
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZLjava/util/List;)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 18
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowNumber"    # I
    .param p3, "oddPattern"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "IZ",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/oned/rss/FinderPattern;"
        }
    .end annotation

    .prologue
    .line 584
    .local p4, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    if-eqz p3, :cond_1

    .line 587
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    add-int/lit8 v10, v1, -0x1

    .line 589
    .local v10, "firstElementStart":I
    :goto_0
    if-ltz v10, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 590
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 593
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 594
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    sub-int v9, v1, v10

    .line 595
    .local v9, "firstCounter":I
    move v4, v10

    .line 596
    .local v4, "start":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v3, 0x1

    aget v5, v1, v3

    .line 608
    .end local v10    # "firstElementStart":I
    .local v5, "end":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v8

    .line 609
    .local v8, "counters":[I
    const/4 v1, 0x0

    const/4 v3, 0x1

    array-length v6, v8

    add-int/lit8 v6, v6, -0x1

    invoke-static {v8, v1, v8, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 611
    const/4 v1, 0x0

    aput v9, v8, v1

    .line 614
    :try_start_0
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    invoke-static {v8, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFinderValue([I[[I)I
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 620
    .local v2, "value":I
    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->mayFollow(Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 621
    const/4 v1, 0x0

    .line 639
    .end local v2    # "value":I
    :goto_2
    return-object v1

    .line 601
    .end local v4    # "start":I
    .end local v5    # "end":I
    .end local v8    # "counters":[I
    .end local v9    # "firstCounter":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v3, 0x0

    aget v4, v1, v3

    .line 603
    .restart local v4    # "start":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v5

    .line 604
    .restart local v5    # "end":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    sub-int v9, v5, v1

    .restart local v9    # "firstCounter":I
    goto :goto_1

    .line 615
    .restart local v8    # "counters":[I
    :catch_0
    move-exception v11

    .line 616
    .local v11, "ignored":Lcom/google/zxing/NotFoundException;
    const/4 v1, 0x0

    goto :goto_2

    .line 626
    .end local v11    # "ignored":Lcom/google/zxing/NotFoundException;
    .restart local v2    # "value":I
    :cond_2
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 627
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 628
    .local v14, "prev":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v14}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v1

    const/4 v3, 0x0

    aget v16, v1, v3

    .line 629
    .local v16, "prevStart":I
    invoke-virtual {v14}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v1

    const/4 v3, 0x1

    aget v15, v1, v3

    .line 630
    .local v15, "prevEnd":I
    sub-int v17, v15, v16

    .line 631
    .local v17, "prevWidth":I
    move/from16 v0, v17

    int-to-float v1, v0

    const/high16 v3, 0x41700000    # 15.0f

    div-float/2addr v1, v3

    const/high16 v3, 0x41880000    # 17.0f

    mul-float v7, v1, v3

    .line 632
    .local v7, "charWidth":F
    int-to-float v1, v15

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v7

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v3, v6

    add-float v13, v1, v3

    .line 633
    .local v13, "minX":F
    int-to-float v1, v15

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v7

    const v6, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, v6

    add-float v12, v1, v3

    .line 634
    .local v12, "maxX":F
    int-to-float v1, v4

    cmpg-float v1, v1, v13

    if-ltz v1, :cond_3

    int-to-float v1, v4

    cmpl-float v1, v1, v12

    if-lez v1, :cond_4

    .line 635
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 639
    .end local v7    # "charWidth":F
    .end local v12    # "maxX":F
    .end local v13    # "minX":F
    .end local v14    # "prev":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v15    # "prevEnd":I
    .end local v16    # "prevStart":I
    .end local v17    # "prevWidth":I
    :cond_4
    new-instance v1, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v6, 0x0

    aput v4, v3, v6

    const/4 v6, 0x1

    aput v5, v3, v6

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    goto/16 :goto_2
.end method

.method private static removePartialRows(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "pairs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    .local p1, "rows":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 343
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 344
    .local v3, "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 345
    const/4 v0, 0x1

    .line 346
    .local v0, "allFound":Z
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 347
    .local v2, "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-interface {p0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 348
    const/4 v0, 0x0

    .line 352
    .end local v2    # "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_2
    if-eqz v0, :cond_0

    .line 354
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 358
    .end local v0    # "allFound":Z
    .end local v3    # "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_3
    return-void
.end method

.method private static reverseCounters([I)V
    .locals 4
    .param p0, "counters"    # [I

    .prologue
    .line 567
    array-length v1, p0

    .line 568
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    div-int/lit8 v3, v1, 0x2

    if-ge v0, v3, :cond_0

    .line 569
    aget v2, p0, v0

    .line 570
    .local v2, "tmp":I
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aget v3, p0, v3

    aput v3, p0, v0

    .line 571
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aput v2, p0, v3

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    .end local v2    # "tmp":I
    :cond_0
    return-void
.end method

.method private storeRow(I)V
    .locals 7
    .param p1, "rowNumber"    # I

    .prologue
    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, "insertPos":I
    const/4 v3, 0x0

    .line 312
    .local v3, "prevIsSame":Z
    const/4 v2, 0x0

    .line 313
    .local v2, "nextIsSame":Z
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 314
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 315
    .local v0, "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getRowNumber()I

    move-result v4

    if-le v4, p1, :cond_2

    .line 316
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v2

    .line 322
    .end local v0    # "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_0
    if-nez v2, :cond_1

    if-eqz v3, :cond_3

    .line 338
    :cond_1
    :goto_1
    return-void

    .line 319
    .restart local v0    # "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_2
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v3

    .line 320
    add-int/lit8 v1, v1, 0x1

    .line 321
    goto :goto_0

    .line 331
    .end local v0    # "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_3
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 335
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    new-instance v5, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-direct {v5, v6, p1}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;-><init>(Ljava/util/List;I)V

    invoke-interface {v4, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 337
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->removePartialRows(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_1
.end method


# virtual methods
.method decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 33
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p3, "isOddPattern"    # Z
    .param p4, "leftChar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 646
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDataCharacterCounters()[I

    move-result-object v5

    .line 647
    .local v5, "counters":[I
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-static {v5, v0}, Ljava/util/Arrays;->fill([II)V

    .line 649
    if-eqz p4, :cond_1

    .line 650
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v30

    const/16 v31, 0x0

    aget v30, v30, v31

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    .line 661
    :cond_0
    const/16 v16, 0x11

    .line 662
    .local v16, "numModules":I
    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v6, v30, v31

    .line 665
    .local v6, "elementWidth":F
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v30

    const/16 v31, 0x1

    aget v30, v30, v31

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v31

    const/16 v32, 0x0

    aget v31, v31, v32

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x41700000    # 15.0f

    div-float v11, v30, v31

    .line 666
    .local v11, "expectedElementWidth":F
    sub-float v30, v6, v11

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v30

    div-float v30, v30, v11

    const v31, 0x3e99999a    # 0.3f

    cmpl-float v30, v30, v31

    if-lez v30, :cond_2

    .line 667
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    .line 652
    .end local v6    # "elementWidth":F
    .end local v11    # "expectedElementWidth":F
    .end local v16    # "numModules":I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v30

    const/16 v31, 0x1

    aget v30, v30, v31

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 654
    const/4 v14, 0x0

    .local v14, "i":I
    array-length v0, v5

    move/from16 v30, v0

    add-int/lit8 v15, v30, -0x1

    .local v15, "j":I
    :goto_0
    if-ge v14, v15, :cond_0

    .line 655
    aget v24, v5, v14

    .line 656
    .local v24, "temp":I
    aget v30, v5, v15

    aput v30, v5, v14

    .line 657
    aput v24, v5, v15

    .line 654
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    .line 670
    .end local v14    # "i":I
    .end local v15    # "j":I
    .end local v24    # "temp":I
    .restart local v6    # "elementWidth":F
    .restart local v11    # "expectedElementWidth":F
    .restart local v16    # "numModules":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v18

    .line 671
    .local v18, "oddCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v8

    .line 672
    .local v8, "evenCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v19

    .line 673
    .local v19, "oddRoundingErrors":[F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v9

    .line 675
    .local v9, "evenRoundingErrors":[F
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_1
    array-length v0, v5

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v14, v0, :cond_8

    .line 676
    const/high16 v30, 0x3f800000    # 1.0f

    aget v31, v5, v14

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    div-float v27, v30, v6

    .line 677
    .local v27, "value":F
    const/high16 v30, 0x3f000000    # 0.5f

    add-float v30, v30, v27

    move/from16 v0, v30

    float-to-int v4, v0

    .line 678
    .local v4, "count":I
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ge v4, v0, :cond_5

    .line 679
    const v30, 0x3e99999a    # 0.3f

    cmpg-float v30, v27, v30

    if-gez v30, :cond_3

    .line 680
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    .line 682
    :cond_3
    const/4 v4, 0x1

    .line 689
    :cond_4
    :goto_2
    div-int/lit8 v22, v14, 0x2

    .line 690
    .local v22, "offset":I
    and-int/lit8 v30, v14, 0x1

    if-nez v30, :cond_7

    .line 691
    aput v4, v18, v22

    .line 692
    int-to-float v0, v4

    move/from16 v30, v0

    sub-float v30, v27, v30

    aput v30, v19, v22

    .line 675
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 683
    .end local v22    # "offset":I
    :cond_5
    const/16 v30, 0x8

    move/from16 v0, v30

    if-le v4, v0, :cond_4

    .line 684
    const v30, 0x410b3333    # 8.7f

    cmpl-float v30, v27, v30

    if-lez v30, :cond_6

    .line 685
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    .line 687
    :cond_6
    const/16 v4, 0x8

    goto :goto_2

    .line 694
    .restart local v22    # "offset":I
    :cond_7
    aput v4, v8, v22

    .line 695
    int-to-float v0, v4

    move/from16 v30, v0

    sub-float v30, v27, v30

    aput v30, v9, v22

    goto :goto_3

    .line 699
    .end local v4    # "count":I
    .end local v22    # "offset":I
    .end local v27    # "value":F
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->adjustOddEvenCounts(I)V

    .line 701
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v30

    mul-int/lit8 v31, v30, 0x4

    if-eqz p3, :cond_a

    const/16 v30, 0x0

    :goto_4
    add-int v31, v31, v30

    if-eqz p4, :cond_b

    const/16 v30, 0x0

    :goto_5
    add-int v30, v30, v31

    add-int/lit8 v29, v30, -0x1

    .line 703
    .local v29, "weightRowNumber":I
    const/16 v20, 0x0

    .line 704
    .local v20, "oddSum":I
    const/16 v17, 0x0

    .line 705
    .local v17, "oddChecksumPortion":I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v14, v30, -0x1

    :goto_6
    if-ltz v14, :cond_c

    .line 706
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v30

    if-eqz v30, :cond_9

    .line 707
    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v30, v30, v29

    mul-int/lit8 v31, v14, 0x2

    aget v28, v30, v31

    .line 708
    .local v28, "weight":I
    aget v30, v18, v14

    mul-int v30, v30, v28

    add-int v17, v17, v30

    .line 710
    .end local v28    # "weight":I
    :cond_9
    aget v30, v18, v14

    add-int v20, v20, v30

    .line 705
    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    .line 701
    .end local v17    # "oddChecksumPortion":I
    .end local v20    # "oddSum":I
    .end local v29    # "weightRowNumber":I
    :cond_a
    const/16 v30, 0x2

    goto :goto_4

    :cond_b
    const/16 v30, 0x1

    goto :goto_5

    .line 712
    .restart local v17    # "oddChecksumPortion":I
    .restart local v20    # "oddSum":I
    .restart local v29    # "weightRowNumber":I
    :cond_c
    const/4 v7, 0x0

    .line 713
    .local v7, "evenChecksumPortion":I
    array-length v0, v8

    move/from16 v30, v0

    add-int/lit8 v14, v30, -0x1

    :goto_7
    if-ltz v14, :cond_e

    .line 714
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v30

    if-eqz v30, :cond_d

    .line 715
    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v30, v30, v29

    mul-int/lit8 v31, v14, 0x2

    add-int/lit8 v31, v31, 0x1

    aget v28, v30, v31

    .line 716
    .restart local v28    # "weight":I
    aget v30, v8, v14

    mul-int v30, v30, v28

    add-int v7, v7, v30

    .line 713
    .end local v28    # "weight":I
    :cond_d
    add-int/lit8 v14, v14, -0x1

    goto :goto_7

    .line 719
    :cond_e
    add-int v3, v17, v7

    .line 721
    .local v3, "checksumPortion":I
    and-int/lit8 v30, v20, 0x1

    if-nez v30, :cond_f

    const/16 v30, 0xd

    move/from16 v0, v20

    move/from16 v1, v30

    if-gt v0, v1, :cond_f

    const/16 v30, 0x4

    move/from16 v0, v20

    move/from16 v1, v30

    if-ge v0, v1, :cond_10

    .line 722
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    .line 725
    :cond_10
    rsub-int/lit8 v30, v20, 0xd

    div-int/lit8 v13, v30, 0x2

    .line 726
    .local v13, "group":I
    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    aget v21, v30, v13

    .line 727
    .local v21, "oddWidest":I
    rsub-int/lit8 v10, v21, 0x9

    .line 728
    .local v10, "evenWidest":I
    const/16 v30, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v26

    .line 729
    .local v26, "vOdd":I
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-static {v8, v10, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v25

    .line 730
    .local v25, "vEven":I
    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    aget v23, v30, v13

    .line 731
    .local v23, "tEven":I
    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    aget v12, v30, v13

    .line 732
    .local v12, "gSum":I
    mul-int v30, v26, v23

    add-int v30, v30, v25

    add-int v27, v30, v12

    .line 734
    .local v27, "value":I
    new-instance v30, Lcom/google/zxing/oned/rss/DataCharacter;

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v30
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 1
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
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 137
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 139
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    move-result-object v0

    goto :goto_0
.end method

.method decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;
    .locals 8
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 156
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "done":Z
    :goto_0
    if-nez v0, :cond_1

    .line 160
    :try_start_0
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {p0, p2, v7, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "nfe":Lcom/google/zxing/NotFoundException;
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 163
    throw v1

    .line 166
    :cond_0
    const/4 v0, 0x1

    .line 167
    goto :goto_0

    .line 170
    .end local v1    # "nfe":Lcom/google/zxing/NotFoundException;
    :cond_1
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-static {v6, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isValidSequence(Ljava/util/List;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 171
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 185
    :cond_2
    return-object v2

    .line 174
    :cond_3
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    move v3, v4

    .line 175
    .local v3, "tryStackedDecode":Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->storeRow(I)V

    .line 176
    if-eqz v3, :cond_4

    .line 179
    invoke-direct {p0, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object v2

    .line 180
    .local v2, "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    if-nez v2, :cond_2

    .line 183
    invoke-direct {p0, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object v2

    .line 184
    if-nez v2, :cond_2

    .line 189
    .end local v2    # "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .end local v3    # "tryStackedDecode":Z
    :cond_5
    move v3, v5

    .line 174
    goto :goto_1
.end method

.method getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 152
    return-void
.end method

.method retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .locals 10
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "rowNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .local p2, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 455
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_2

    move v2, v7

    .line 456
    .local v2, "isOddPattern":Z
    :goto_0
    iget-boolean v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v9, :cond_0

    .line 457
    if-nez v2, :cond_3

    move v2, v7

    .line 461
    :cond_0
    :goto_1
    const/4 v4, 0x0

    .line 463
    .local v4, "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    const/4 v3, 0x1

    .line 464
    .local v3, "keepFinding":Z
    const/4 v0, -0x1

    .line 466
    .local v0, "forcedOffset":I
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V

    .line 467
    invoke-direct {p0, p1, p3, v2, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZLjava/util/List;)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v5

    .line 468
    .local v5, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    if-nez v5, :cond_4

    .line 469
    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v7, v7, v8

    invoke-static {p1, v7}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I

    move-result v0

    .line 478
    :goto_2
    if-nez v3, :cond_1

    .line 483
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mustBeLast()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 484
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7

    .end local v0    # "forcedOffset":I
    .end local v2    # "isOddPattern":Z
    .end local v3    # "keepFinding":Z
    .end local v4    # "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v5    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    :cond_2
    move v2, v8

    .line 455
    goto :goto_0

    .restart local v2    # "isOddPattern":Z
    :cond_3
    move v2, v8

    .line 457
    goto :goto_1

    .line 472
    .restart local v0    # "forcedOffset":I
    .restart local v3    # "keepFinding":Z
    .restart local v4    # "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    .restart local v5    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    :cond_4
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v5, v2, v7}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 473
    const/4 v3, 0x0

    goto :goto_2

    .line 474
    :catch_0
    move-exception v1

    .line 475
    .local v1, "ignored":Lcom/google/zxing/NotFoundException;
    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v7, v7, v8

    invoke-static {p1, v7}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I

    move-result v0

    goto :goto_2

    .line 489
    .end local v1    # "ignored":Lcom/google/zxing/NotFoundException;
    :cond_5
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v5, v2, v7}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 493
    .local v6, "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :goto_3
    new-instance v7, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-direct {v7, v4, v6, v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;-><init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;)V

    return-object v7

    .line 490
    .end local v6    # "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :catch_1
    move-exception v1

    .line 491
    .restart local v1    # "ignored":Lcom/google/zxing/NotFoundException;
    const/4 v6, 0x0

    .restart local v6    # "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    goto :goto_3
.end method

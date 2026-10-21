.class final Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Edge"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final allCodewordCapacities:[I

.field private static final rectangularCodewordCapacities:[I

.field private static final squareCodewordCapacities:[I


# instance fields
.field private final cachedTotalSize:I

.field private final characterLength:I

.field private final fromPosition:I

.field private final input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

.field private final mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

.field private final previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 480
    const-class v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->$assertionsDisabled:Z

    .line 481
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->allCodewordCapacities:[I

    .line 483
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->squareCodewordCapacities:[I

    .line 485
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->rectangularCodewordCapacities:[I

    return-void

    .line 480
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 481
    :array_0
    .array-data 4
        0x3
        0x5
        0x8
        0xa
        0xc
        0x10
        0x12
        0x16
        0x1e
        0x20
        0x24
        0x2c
        0x31
        0x3e
        0x56
        0x72
        0x90
        0xae
        0xcc
        0x118
        0x170
        0x1c8
        0x240
        0x2b8
        0x330
        0x41a
        0x518
        0x616
    .end array-data

    .line 483
    :array_1
    .array-data 4
        0x3
        0x5
        0x8
        0xc
        0x12
        0x16
        0x1e
        0x24
        0x2c
        0x3e
        0x56
        0x72
        0x90
        0xae
        0xcc
        0x118
        0x170
        0x1c8
        0x240
        0x2b8
        0x330
        0x41a
        0x518
        0x616
    .end array-data

    .line 485
    :array_2
    .array-data 4
        0x5
        0xa
        0x10
        0x21
        0x20
        0x31
    .end array-data
.end method

.method private constructor <init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V
    .locals 7
    .param p1, "input"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;
    .param p2, "mode"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .param p3, "fromPosition"    # I
    .param p4, "characterLength"    # I
    .param p5, "previous"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    .line 495
    iput-object p2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 496
    iput p3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    .line 497
    iput p4, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    .line 498
    iput-object p5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 499
    sget-boolean v5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    add-int v5, p3, p4

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->length()I

    move-result v6

    if-le v5, v6, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 501
    :cond_0
    if-eqz p5, :cond_2

    iget v2, p5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    .line 503
    .local v2, "size":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getPreviousMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v1

    .line 519
    .local v1, "previousMode":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    sget-object v5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode:[I

    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 575
    :cond_1
    :goto_1
    iput v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    .line 576
    return-void

    .end local v1    # "previousMode":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .end local v2    # "size":I
    :cond_2
    move v2, v3

    .line 501
    goto :goto_0

    .line 521
    .restart local v1    # "previousMode":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .restart local v2    # "size":I
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    .line 522
    invoke-virtual {p1, p3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->isECI(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, p3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 523
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 525
    :cond_4
    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v1, v3, :cond_5

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v1, v3, :cond_5

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v1, v3, :cond_1

    .line 528
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 532
    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    .line 533
    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v1, v3, :cond_7

    .line 534
    add-int/lit8 v2, v2, 0x1

    .line 538
    :cond_6
    :goto_2
    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v1, v3, :cond_8

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 535
    :cond_7
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getB256Size()I

    move-result v3

    const/16 v4, 0xfa

    if-ne v3, v4, :cond_6

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 540
    :cond_8
    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v1, v3, :cond_9

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v1, v3, :cond_9

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v1, v3, :cond_1

    .line 543
    :cond_9
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 549
    :pswitch_2
    sget-object v5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne p2, v5, :cond_b

    .line 550
    add-int/lit8 v2, v2, 0x2

    .line 556
    :goto_3
    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v1, v3, :cond_a

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v1, v3, :cond_d

    .line 557
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 552
    :cond_b
    new-array v0, v4, [I

    .line 553
    .local v0, "charLen":[I
    sget-object v5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne p2, v5, :cond_c

    move v3, v4

    :cond_c
    invoke-static {p1, p3, v3, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->getNumberOfC40Words(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;IZ[I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    goto :goto_3

    .line 558
    .end local v0    # "charLen":[I
    :cond_d
    if-eq v1, p2, :cond_1

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v1, v3, :cond_e

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v1, v3, :cond_e

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v1, v3, :cond_1

    .line 561
    :cond_e
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_1

    .line 565
    :pswitch_3
    add-int/lit8 v2, v2, 0x3

    .line 566
    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v1, v3, :cond_f

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v1, v3, :cond_10

    .line 567
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 568
    :cond_10
    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v1, v3, :cond_11

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v1, v3, :cond_11

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v1, v3, :cond_1

    .line 571
    :cond_11
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_1

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;
    .param p2, "x1"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    .param p6, "x5"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;

    .prologue
    .line 480
    invoke-direct/range {p0 .. p5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .prologue
    .line 480
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    return v0
.end method

.method static synthetic access$1000(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .prologue
    .line 480
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .prologue
    .line 480
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    return v0
.end method

.method static getBytes(I)[B
    .locals 3
    .param p0, "c"    # I

    .prologue
    .line 713
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 714
    .local v0, "result":[B
    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 715
    return-object v0
.end method

.method static getBytes(II)[B
    .locals 3
    .param p0, "c1"    # I
    .param p1, "c2"    # I

    .prologue
    .line 719
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 720
    .local v0, "result":[B
    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 721
    const/4 v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 722
    return-object v0
.end method

.method private static getC40Value(ZICI)I
    .locals 6
    .param p0, "c40"    # Z
    .param p1, "setIndex"    # I
    .param p2, "c"    # C
    .param p3, "fnc1"    # I

    .prologue
    const/16 v5, 0x2f

    const/16 v4, 0x20

    const/16 v3, 0x1f

    const/4 v1, 0x0

    const/4 v0, 0x3

    .line 759
    if-ne p2, p3, :cond_2

    .line 760
    sget-boolean v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 761
    :cond_0
    const/16 p2, 0x1b

    .line 773
    .end local p2    # "c":C
    :cond_1
    :goto_0
    return p2

    .line 763
    .restart local p2    # "c":C
    :cond_2
    if-eqz p0, :cond_9

    .line 764
    if-le p2, v3, :cond_1

    if-ne p2, v4, :cond_3

    move p2, v0

    goto :goto_0

    :cond_3
    if-gt p2, v5, :cond_4

    add-int/lit8 p2, p2, -0x21

    goto :goto_0

    :cond_4
    const/16 v0, 0x39

    if-gt p2, v0, :cond_5

    add-int/lit8 p2, p2, -0x2c

    goto :goto_0

    :cond_5
    const/16 v0, 0x40

    if-gt p2, v0, :cond_6

    add-int/lit8 p2, p2, -0x2b

    goto :goto_0

    :cond_6
    const/16 v0, 0x5a

    if-gt p2, v0, :cond_7

    add-int/lit8 p2, p2, -0x33

    goto :goto_0

    :cond_7
    const/16 v0, 0x5f

    if-gt p2, v0, :cond_8

    add-int/lit8 p2, p2, -0x45

    goto :goto_0

    :cond_8
    const/16 v0, 0x7f

    if-gt p2, v0, :cond_1

    add-int/lit8 p2, p2, -0x60

    goto :goto_0

    .line 773
    :cond_9
    if-nez p2, :cond_a

    move p2, v1

    goto :goto_0

    :cond_a
    if-nez p1, :cond_b

    if-gt p2, v0, :cond_b

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_b
    const/4 v2, 0x1

    if-ne p1, v2, :cond_c

    if-le p2, v3, :cond_1

    :cond_c
    if-ne p2, v4, :cond_d

    move p2, v0

    goto :goto_0

    :cond_d
    const/16 v0, 0x21

    if-lt p2, v0, :cond_e

    if-gt p2, v5, :cond_e

    add-int/lit8 p2, p2, -0x21

    goto :goto_0

    :cond_e
    const/16 v0, 0x30

    if-lt p2, v0, :cond_f

    const/16 v0, 0x39

    if-gt p2, v0, :cond_f

    add-int/lit8 p2, p2, -0x2c

    goto :goto_0

    :cond_f
    const/16 v0, 0x3a

    if-lt p2, v0, :cond_10

    const/16 v0, 0x40

    if-gt p2, v0, :cond_10

    add-int/lit8 p2, p2, -0x2b

    goto :goto_0

    :cond_10
    const/16 v0, 0x41

    if-lt p2, v0, :cond_11

    const/16 v0, 0x5a

    if-gt p2, v0, :cond_11

    add-int/lit8 p2, p2, -0x40

    goto :goto_0

    :cond_11
    const/16 v0, 0x5b

    if-lt p2, v0, :cond_12

    const/16 v0, 0x5f

    if-gt p2, v0, :cond_12

    add-int/lit8 p2, p2, -0x45

    goto :goto_0

    :cond_12
    const/16 v0, 0x60

    if-ne p2, v0, :cond_13

    move p2, v1

    goto :goto_0

    :cond_13
    const/16 v0, 0x61

    if-lt p2, v0, :cond_14

    const/16 v0, 0x7a

    if-gt p2, v0, :cond_14

    add-int/lit8 p2, p2, -0x53

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0x7b

    if-lt p2, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_1

    add-int/lit8 p2, p2, -0x60

    goto/16 :goto_0
.end method

.method static getShiftValue(CZI)I
    .locals 1
    .param p0, "c"    # C
    .param p1, "c40"    # Z
    .param p2, "fnc1"    # I

    .prologue
    .line 752
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->access$600(C)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 753
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->access$700(C)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 752
    :goto_0
    return v0

    .line 753
    :cond_2
    if-eqz p1, :cond_3

    .line 754
    invoke-static {p0, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->access$800(CI)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    if-nez p1, :cond_5

    .line 755
    invoke-static {p0, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->access$900(CI)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getX12Value(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 732
    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    .end local p0    # "c":C
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "c":C
    :cond_1
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_3

    const/4 p0, 0x2

    goto :goto_0

    :cond_3
    const/16 v0, 0x20

    if-ne p0, v0, :cond_4

    const/4 p0, 0x3

    goto :goto_0

    :cond_4
    const/16 v0, 0x30

    if-lt p0, v0, :cond_5

    const/16 v0, 0x39

    if-gt p0, v0, :cond_5

    add-int/lit8 p0, p0, -0x2c

    goto :goto_0

    :cond_5
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x33

    goto :goto_0
.end method

.method static setC40Word([BIIII)V
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "c1"    # I
    .param p3, "c2"    # I
    .param p4, "c3"    # I

    .prologue
    .line 726
    and-int/lit16 v1, p2, 0xff

    mul-int/lit16 v1, v1, 0x640

    and-int/lit16 v2, p3, 0xff

    mul-int/lit8 v2, v2, 0x28

    add-int/2addr v1, v2

    and-int/lit16 v2, p4, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 727
    .local v0, "val16":I
    div-int/lit16 v1, v0, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 728
    add-int/lit8 v1, p1, 0x1

    rem-int/lit16 v2, v0, 0x100

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 729
    return-void
.end method


# virtual methods
.method getB256Size()I
    .locals 4

    .prologue
    .line 580
    const/4 v0, 0x0

    .line 581
    .local v0, "cnt":I
    move-object v1, p0

    .line 582
    .local v1, "current":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v2, v3, :cond_0

    const/16 v2, 0xfa

    if-gt v0, v2, :cond_0

    .line 583
    add-int/lit8 v0, v0, 0x1

    .line 584
    iget-object v1, v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    goto :goto_0

    .line 586
    :cond_0
    return v0
.end method

.method getC40Words(ZI)[B
    .locals 12
    .param p1, "c40"    # Z
    .param p2, "fnc1"    # I

    .prologue
    const/16 v11, 0x1e

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 789
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v2, "c40Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v7, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    if-ge v4, v7, :cond_7

    .line 791
    iget-object v7, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v8, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    add-int/2addr v8, v4

    invoke-virtual {v7, v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v3

    .line 792
    .local v3, "ci":C
    if-eqz p1, :cond_0

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 793
    :cond_1
    invoke-static {p1, v9, v3, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Value(ZICI)I

    move-result v7

    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 794
    :cond_2
    invoke-static {v3, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v7

    if-nez v7, :cond_3

    .line 795
    invoke-static {v3, p1, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getShiftValue(CZI)I

    move-result v6

    .line 796
    .local v6, "shiftValue":I
    int-to-byte v7, v6

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    invoke-static {p1, v6, v3, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Value(ZICI)I

    move-result v7

    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 799
    .end local v6    # "shiftValue":I
    :cond_3
    and-int/lit16 v7, v3, 0xff

    add-int/lit8 v7, v7, -0x80

    int-to-char v0, v7

    .line 800
    .local v0, "asciiValue":C
    if-eqz p1, :cond_4

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    if-nez p1, :cond_6

    .line 801
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 802
    :cond_5
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    invoke-static {p1, v9, v0, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Value(ZICI)I

    move-result v7

    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 806
    :cond_6
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    invoke-static {v0, p1, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getShiftValue(CZI)I

    move-result v6

    .line 809
    .restart local v6    # "shiftValue":I
    int-to-byte v7, v6

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    invoke-static {p1, v6, v0, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Value(ZICI)I

    move-result v7

    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 815
    .end local v0    # "asciiValue":C
    .end local v3    # "ci":C
    .end local v6    # "shiftValue":I
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    rem-int/lit8 v7, v7, 0x3

    if-eqz v7, :cond_a

    .line 816
    sget-boolean v7, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->$assertionsDisabled:Z

    if-nez v7, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    rem-int/lit8 v7, v7, 0x3

    if-nez v7, :cond_8

    iget v7, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    iget v8, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->length()I

    move-result v8

    if-eq v7, v8, :cond_9

    :cond_8
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 817
    :cond_9
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    new-array v5, v7, [B

    .line 821
    .local v5, "result":[B
    const/4 v1, 0x0

    .line 822
    .local v1, "byteIndex":I
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_b

    .line 823
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    and-int/lit16 v8, v7, 0xff

    add-int/lit8 v7, v4, 0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    and-int/lit16 v9, v7, 0xff

    add-int/lit8 v7, v4, 0x2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-static {v5, v1, v8, v9, v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->setC40Word([BIIII)V

    .line 824
    add-int/lit8 v1, v1, 0x2

    .line 822
    add-int/lit8 v4, v4, 0x3

    goto :goto_2

    .line 826
    :cond_b
    return-object v5
.end method

.method getCodewordsRemaining(I)I
    .locals 1
    .param p1, "minimum"    # I

    .prologue
    .line 709
    invoke-virtual {p0, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getMinSymbolSize(I)I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method

.method getDataBytes()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 900
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode:[I

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 924
    sget-boolean v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 902
    :pswitch_0
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->isECI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    const/16 v0, 0xf1

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    invoke-virtual {v1, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getECIValue(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(II)[B

    move-result-object v0

    .line 925
    :goto_0
    return-object v0

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 905
    const/16 v0, 0xeb

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    invoke-virtual {v1, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x7f

    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(II)[B

    move-result-object v0

    goto :goto_0

    .line 906
    :cond_1
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 907
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x30

    add-int/lit16 v0, v0, 0x82

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    goto :goto_0

    .line 908
    :cond_2
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->isFNC1(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 909
    const/16 v0, 0xe8

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    goto :goto_0

    .line 911
    :cond_3
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    goto :goto_0

    .line 914
    :pswitch_1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    goto :goto_0

    .line 916
    :pswitch_2
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Words(ZI)[B

    move-result-object v0

    goto/16 :goto_0

    .line 918
    :pswitch_3
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Words(ZI)[B

    move-result-object v0

    goto/16 :goto_0

    .line 920
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getX12Words()[B

    move-result-object v0

    goto/16 :goto_0

    .line 922
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEDFBytes()[B

    move-result-object v0

    goto/16 :goto_0

    .line 925
    :cond_4
    new-array v0, v2, [B

    goto/16 :goto_0

    .line 900
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method getEDFBytes()[B
    .locals 14

    .prologue
    .line 830
    iget v9, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    int-to-double v10, v9

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v4, v10

    .line 831
    .local v4, "numberOfThirds":I
    mul-int/lit8 v9, v4, 0x3

    new-array v7, v9, [B

    .line 832
    .local v7, "result":[B
    iget v5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    .line 833
    .local v5, "pos":I
    iget v9, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    iget v10, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    iget-object v10, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 834
    .local v1, "endPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 835
    const/4 v9, 0x4

    new-array v0, v9, [I

    .line 836
    .local v0, "edfValues":[I
    const/4 v3, 0x0

    .local v3, "j":I
    move v6, v5

    .end local v5    # "pos":I
    .local v6, "pos":I
    :goto_1
    const/4 v9, 0x4

    if-ge v3, v9, :cond_2

    .line 837
    if-gt v6, v1, :cond_0

    .line 838
    iget-object v9, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    invoke-virtual {v9, v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v9

    and-int/lit8 v9, v9, 0x3f

    aput v9, v0, v3

    .line 836
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    goto :goto_1

    .line 840
    :cond_0
    add-int/lit8 v9, v1, 0x1

    if-ne v6, v9, :cond_1

    const/16 v9, 0x1f

    :goto_3
    aput v9, v0, v3

    move v5, v6

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_2

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    :cond_1
    const/4 v9, 0x0

    goto :goto_3

    .line 843
    :cond_2
    const/4 v9, 0x0

    aget v9, v0, v9

    shl-int/lit8 v8, v9, 0x12

    .line 844
    .local v8, "val24":I
    const/4 v9, 0x1

    aget v9, v0, v9

    shl-int/lit8 v9, v9, 0xc

    or-int/2addr v8, v9

    .line 845
    const/4 v9, 0x2

    aget v9, v0, v9

    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v8, v9

    .line 846
    const/4 v9, 0x3

    aget v9, v0, v9

    or-int/2addr v8, v9

    .line 847
    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v2

    .line 848
    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 849
    add-int/lit8 v9, v2, 0x2

    and-int/lit16 v10, v8, 0xff

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 834
    add-int/lit8 v2, v2, 0x3

    move v5, v6

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_0

    .line 851
    .end local v0    # "edfValues":[I
    .end local v3    # "j":I
    .end local v8    # "val24":I
    :cond_3
    return-object v7
.end method

.method getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .locals 3

    .prologue
    .line 604
    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v1, v2, :cond_1

    .line 605
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 606
    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 626
    :goto_0
    return-object v1

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getLastASCII()I

    move-result v0

    .line 609
    .local v0, "lastASCII":I
    if-lez v0, :cond_1

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getCodewordsRemaining(I)I

    move-result v1

    rsub-int/lit8 v2, v0, 0x2

    if-gt v1, v2, :cond_1

    .line 610
    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    goto :goto_0

    .line 613
    .end local v0    # "lastASCII":I
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v1, v2, :cond_4

    .line 618
    :cond_2
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->length()I

    move-result v2

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    invoke-virtual {p0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getCodewordsRemaining(I)I

    move-result v1

    if-nez v1, :cond_3

    .line 619
    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    goto :goto_0

    .line 621
    :cond_3
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getLastASCII()I

    move-result v0

    .line 622
    .restart local v0    # "lastASCII":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getCodewordsRemaining(I)I

    move-result v1

    if-nez v1, :cond_4

    .line 623
    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    goto :goto_0

    .line 626
    .end local v0    # "lastASCII":I
    :cond_4
    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    goto :goto_0
.end method

.method getLastASCII()I
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 638
    iget-object v5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->length()I

    move-result v1

    .line 639
    .local v1, "length":I
    iget v5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    iget v6, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    add-int v0, v5, v6

    .line 640
    .local v0, "from":I
    sub-int v5, v1, v0

    const/4 v6, 0x4

    if-gt v5, v6, :cond_0

    if-lt v0, v1, :cond_1

    .line 674
    :cond_0
    :goto_0
    return v2

    .line 643
    :cond_1
    sub-int v5, v1, v0

    if-ne v5, v3, :cond_2

    .line 644
    iget-object v4, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v4, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 647
    goto :goto_0

    .line 649
    :cond_2
    sub-int v5, v1, v0

    if-ne v5, v4, :cond_4

    .line 650
    iget-object v5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v5, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    .line 651
    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v6

    .line 650
    invoke-static {v5, v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v5

    if-nez v5, :cond_0

    .line 654
    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v2, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 655
    goto :goto_0

    :cond_3
    move v2, v4

    .line 657
    goto :goto_0

    .line 659
    :cond_4
    sub-int v3, v1, v0

    const/4 v5, 0x3

    if-ne v3, v5, :cond_6

    .line 660
    iget-object v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v3, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v5, v0, 0x2

    .line 661
    invoke-virtual {v3, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v3

    iget-object v5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v3

    if-nez v3, :cond_5

    move v2, v4

    .line 662
    goto/16 :goto_0

    .line 664
    :cond_5
    iget-object v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v3, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    .line 665
    invoke-virtual {v3, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v3

    iget-object v5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v4

    .line 666
    goto/16 :goto_0

    .line 670
    :cond_6
    iget-object v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v3, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v5, v0, 0x2

    .line 671
    invoke-virtual {v3, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v5, v0, 0x3

    invoke-virtual {v3, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v4

    .line 672
    goto/16 :goto_0
.end method

.method getLatchBytes()[B
    .locals 7

    .prologue
    const/16 v6, 0xef

    const/16 v5, 0xee

    const/16 v4, 0xe7

    const/16 v3, 0xe6

    const/16 v2, 0xfe

    .line 855
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode:[I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getPreviousMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 895
    :cond_0
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_1
    return-object v0

    .line 858
    :pswitch_0
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode:[I

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 860
    :pswitch_1
    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    goto :goto_1

    .line 862
    :pswitch_2
    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    goto :goto_1

    .line 864
    :pswitch_3
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    goto :goto_1

    .line 866
    :pswitch_4
    invoke-static {v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    goto :goto_1

    .line 868
    :pswitch_5
    const/16 v0, 0xf0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    goto :goto_1

    .line 874
    :pswitch_6
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getPreviousMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 875
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode:[I

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 877
    :pswitch_7
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    goto :goto_1

    .line 879
    :pswitch_8
    invoke-static {v2, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(II)[B

    move-result-object v0

    goto :goto_1

    .line 881
    :pswitch_9
    invoke-static {v2, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(II)[B

    move-result-object v0

    goto :goto_1

    .line 883
    :pswitch_a
    invoke-static {v2, v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(II)[B

    move-result-object v0

    goto :goto_1

    .line 885
    :pswitch_b
    invoke-static {v2, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(II)[B

    move-result-object v0

    goto :goto_1

    .line 887
    :pswitch_c
    const/16 v0, 0xf0

    invoke-static {v2, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(II)[B

    move-result-object v0

    goto :goto_1

    .line 892
    :pswitch_d
    sget-boolean v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 855
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_d
    .end packed-switch

    .line 858
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 875
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method getMinSymbolSize(I)I
    .locals 5
    .param p1, "minimum"    # I

    .prologue
    const/4 v1, 0x0

    .line 681
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$SymbolShapeHint:[I

    iget-object v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->access$500(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;)Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 697
    :cond_0
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->allCodewordCapacities:[I

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget v0, v2, v1

    .line 698
    .local v0, "capacity":I
    if-lt v0, p1, :cond_2

    .line 702
    .end local v0    # "capacity":I
    :cond_1
    :goto_1
    return v0

    .line 683
    :pswitch_0
    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->squareCodewordCapacities:[I

    array-length v4, v3

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 684
    .restart local v0    # "capacity":I
    if-ge v0, p1, :cond_1

    .line 683
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 690
    .end local v0    # "capacity":I
    :pswitch_1
    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->rectangularCodewordCapacities:[I

    array-length v4, v3

    move v2, v1

    :goto_3
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 691
    .restart local v0    # "capacity":I
    if-ge v0, p1, :cond_1

    .line 690
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 697
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 702
    .end local v0    # "capacity":I
    :cond_3
    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->allCodewordCapacities:[I

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->allCodewordCapacities:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v0, v1, v2

    goto :goto_1

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-object v0
.end method

.method getPreviousMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v0

    goto :goto_0
.end method

.method getPreviousStartMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    iget-object v0, v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    goto :goto_0
.end method

.method getX12Words()[B
    .locals 7

    .prologue
    .line 741
    sget-boolean v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    rem-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 742
    :cond_0
    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [B

    .line 743
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 744
    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    div-int/lit8 v4, v0, 0x2

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getX12Value(C)I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    div-int/lit8 v5, v0, 0x2

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    .line 745
    invoke-virtual {v3, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getX12Value(C)I

    move-result v3

    iget-object v4, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    div-int/lit8 v6, v0, 0x2

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    .line 746
    invoke-virtual {v4, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getX12Value(C)I

    move-result v4

    .line 744
    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->setC40Word([BIIII)V

    .line 743
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 748
    :cond_1
    return-object v1
.end method

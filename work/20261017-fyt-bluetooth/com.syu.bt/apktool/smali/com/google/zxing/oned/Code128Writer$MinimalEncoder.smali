.class final Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;
.super Ljava/lang/Object;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/oned/Code128Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MinimalEncoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;,
        Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final A:Ljava/lang/String; = " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\u00ff"

.field static final B:Ljava/lang/String; = " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f\u00ff"

.field private static final CODE_SHIFT:I = 0x62


# instance fields
.field private memoizedCost:[[I

.field private minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 365
    const-class v0, Lcom/google/zxing/oned/Code128Writer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/oned/Code128Writer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/zxing/oned/Code128Writer$1;

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;Ljava/lang/String;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/String;)[Z

    move-result-object v0

    return-object v0
.end method

.method private static addPattern(Ljava/util/Collection;I[I[II)V
    .locals 3
    .param p1, "patternIndex"    # I
    .param p2, "checkSum"    # [I
    .param p3, "checkWeight"    # [I
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<[I>;I[I[II)V"
        }
    .end annotation

    .prologue
    .local p0, "patterns":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    const/4 v2, 0x0

    .line 463
    sget-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v0, v0, p1

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 464
    if-eqz p4, :cond_0

    .line 465
    aget v0, p3, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, p3, v2

    .line 467
    :cond_0
    aget v0, p2, v2

    aget v1, p3, v2

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    aput v0, p2, v2

    .line 468
    return-void
.end method

.method private canEncode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z
    .locals 8
    .param p1, "contents"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;
    .param p3, "position"    # I

    .prologue
    const/16 v7, 0xf3

    const/16 v6, 0xf2

    const/16 v5, 0xf1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 475
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 476
    .local v0, "c":C
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$1;->$SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Charset:[I

    invoke-virtual {p2}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 491
    :cond_0
    :goto_0
    return v1

    .line 477
    :pswitch_0
    if-eq v0, v5, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v7, :cond_1

    const/16 v3, 0xf4

    if-eq v0, v3, :cond_1

    const-string v3, " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\u00ff"

    .line 481
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 482
    :pswitch_1
    if-eq v0, v5, :cond_2

    if-eq v0, v6, :cond_2

    if-eq v0, v7, :cond_2

    const/16 v3, 0xf4

    if-eq v0, v3, :cond_2

    const-string v3, " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f\u00ff"

    .line 486
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 487
    :pswitch_2
    if-eq v0, v5, :cond_3

    add-int/lit8 v3, p3, 0x1

    .line 488
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 489
    invoke-static {v0}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, p3, 0x1

    .line 490
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 476
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I
    .locals 12
    .param p1, "contents"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;
    .param p3, "position"    # I

    .prologue
    .line 499
    sget-boolean v9, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lt p3, v9, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 500
    :cond_0
    iget-object v9, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->memoizedCost:[[I

    invoke-virtual {p2}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    aget v5, v9, p3

    .line 501
    .local v5, "mCost":I
    if-lez v5, :cond_1

    .line 560
    .end local v5    # "mCost":I
    :goto_0
    return v5

    .line 505
    .restart local v5    # "mCost":I
    :cond_1
    const v6, 0x7fffffff

    .line 506
    .local v6, "minCost":I
    sget-object v7, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 507
    .local v7, "minLatch":Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;
    add-int/lit8 v9, p3, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lt v9, v10, :cond_7

    const/4 v1, 0x1

    .line 509
    .local v1, "atEnd":Z
    :goto_1
    const/4 v9, 0x2

    new-array v8, v9, [Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    const/4 v9, 0x0

    sget-object v10, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    aput-object v10, v8, v9

    .line 510
    .local v8, "sets":[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    const/4 v9, 0x1

    if-gt v3, v9, :cond_8

    .line 511
    aget-object v9, v8, v3

    invoke-direct {p0, p1, v9, p3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->canEncode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 512
    const/4 v2, 0x1

    .line 513
    .local v2, "cost":I
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 514
    .local v4, "latch":Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;
    aget-object v9, v8, v3

    if-eq p2, v9, :cond_2

    .line 515
    add-int/lit8 v2, v2, 0x1

    .line 516
    aget-object v9, v8, v3

    invoke-virtual {v9}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->valueOf(Ljava/lang/String;)Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    move-result-object v4

    .line 518
    :cond_2
    if-nez v1, :cond_3

    .line 519
    aget-object v9, v8, v3

    add-int/lit8 v10, p3, 0x1

    invoke-direct {p0, p1, v9, v10}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    move-result v9

    add-int/2addr v2, v9

    .line 521
    :cond_3
    if-ge v2, v6, :cond_4

    .line 522
    move v6, v2

    .line 523
    move-object v7, v4

    .line 525
    :cond_4
    const/4 v2, 0x1

    .line 526
    add-int/lit8 v9, v3, 0x1

    rem-int/lit8 v9, v9, 0x2

    aget-object v9, v8, v9

    if-ne p2, v9, :cond_6

    .line 527
    add-int/lit8 v2, v2, 0x1

    .line 528
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 529
    if-nez v1, :cond_5

    .line 530
    add-int/lit8 v9, p3, 0x1

    invoke-direct {p0, p1, p2, v9}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    move-result v9

    add-int/lit8 v2, v9, 0x2

    .line 532
    :cond_5
    if-ge v2, v6, :cond_6

    .line 533
    move v6, v2

    .line 534
    move-object v7, v4

    .line 510
    .end local v2    # "cost":I
    .end local v4    # "latch":Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 507
    .end local v1    # "atEnd":Z
    .end local v3    # "i":I
    .end local v8    # "sets":[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 539
    .restart local v1    # "atEnd":Z
    .restart local v3    # "i":I
    .restart local v8    # "sets":[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;
    :cond_8
    sget-object v9, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-direct {p0, p1, v9, p3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->canEncode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 540
    const/4 v2, 0x1

    .line 541
    .restart local v2    # "cost":I
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 542
    .restart local v4    # "latch":Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;
    sget-object v9, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-eq p2, v9, :cond_9

    .line 543
    add-int/lit8 v2, v2, 0x1

    .line 544
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 546
    :cond_9
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xf1

    if-ne v9, v10, :cond_c

    const/4 v0, 0x1

    .line 547
    .local v0, "advance":I
    :goto_3
    add-int v9, p3, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v9, v10, :cond_a

    .line 548
    sget-object v9, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    add-int v10, p3, v0

    invoke-direct {p0, p1, v9, v10}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    move-result v9

    add-int/2addr v2, v9

    .line 550
    :cond_a
    if-ge v2, v6, :cond_b

    .line 551
    move v6, v2

    .line 552
    move-object v7, v4

    .line 555
    .end local v0    # "advance":I
    .end local v2    # "cost":I
    .end local v4    # "latch":Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;
    :cond_b
    const v9, 0x7fffffff

    if-ne v6, v9, :cond_d

    .line 556
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad character in input: ASCII value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 546
    .restart local v2    # "cost":I
    .restart local v4    # "latch":Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;
    :cond_c
    const/4 v0, 0x2

    goto :goto_3

    .line 558
    .end local v2    # "cost":I
    .end local v4    # "latch":Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;
    :cond_d
    iget-object v9, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->memoizedCost:[[I

    invoke-virtual {p2}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    aput v6, v9, p3

    .line 559
    iget-object v9, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {p2}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    aput-object v7, v9, p3

    move v5, v6

    .line 560
    goto/16 :goto_0
.end method

.method private encode(Ljava/lang/String;)[Z
    .locals 14
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v13, 0x4

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 383
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    filled-new-array {v13, v8}, [I

    move-result-object v8

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    iput-object v8, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->memoizedCost:[[I

    .line 384
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    filled-new-array {v13, v8}, [I

    move-result-object v8

    const-class v10, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-static {v10, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    iput-object v8, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 386
    sget-object v8, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-direct {p0, p1, v8, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    .line 388
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v7, "patterns":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    new-array v1, v12, [I

    aput v11, v1, v11

    .line 390
    .local v1, "checkSum":[I
    new-array v2, v12, [I

    aput v12, v2, v11

    .line 391
    .local v2, "checkWeight":[I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 392
    .local v5, "length":I
    sget-object v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    .line 393
    .local v0, "charset":Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_d

    .line 394
    iget-object v8, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {v0}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->ordinal()I

    move-result v10

    aget-object v8, v8, v10

    aget-object v4, v8, v3

    .line 395
    .local v4, "latch":Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;
    sget-object v8, Lcom/google/zxing/oned/Code128Writer$1;->$SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Latch:[I

    invoke-virtual {v4}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_0

    .line 412
    :goto_1
    sget-object v8, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v0, v8, :cond_6

    .line 413
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0xf1

    if-ne v8, v10, :cond_4

    .line 414
    const/16 v8, 0x66

    invoke-static {v7, v8, v1, v2, v3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    .line 393
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 397
    :pswitch_0
    sget-object v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    .line 398
    if-nez v3, :cond_1

    const/16 v8, 0x67

    :goto_3
    invoke-static {v7, v8, v1, v2, v3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_1

    :cond_1
    const/16 v8, 0x65

    goto :goto_3

    .line 401
    :pswitch_1
    sget-object v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    .line 402
    if-nez v3, :cond_2

    const/16 v8, 0x68

    :goto_4
    invoke-static {v7, v8, v1, v2, v3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_1

    :cond_2
    const/16 v8, 0x64

    goto :goto_4

    .line 405
    :pswitch_2
    sget-object v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    .line 406
    if-nez v3, :cond_3

    const/16 v8, 0x69

    :goto_5
    invoke-static {v7, v8, v1, v2, v3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_1

    :cond_3
    const/16 v8, 0x63

    goto :goto_5

    .line 409
    :pswitch_3
    const/16 v8, 0x62

    invoke-static {v7, v8, v1, v2, v3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_1

    .line 416
    :cond_4
    add-int/lit8 v8, v3, 0x2

    invoke-virtual {p1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8, v1, v2, v3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    .line 417
    sget-boolean v8, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->$assertionsDisabled:Z

    if-nez v8, :cond_5

    add-int/lit8 v8, v3, 0x1

    if-lt v8, v5, :cond_5

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 418
    :cond_5
    add-int/lit8 v8, v3, 0x1

    if-ge v8, v5, :cond_0

    .line 419
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 424
    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    packed-switch v8, :pswitch_data_1

    .line 443
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v6, v8, -0x20

    .line 445
    .local v6, "patternIndex":I
    :goto_6
    sget-object v8, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v0, v8, :cond_7

    sget-object v8, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v4, v8, :cond_8

    :cond_7
    sget-object v8, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v0, v8, :cond_9

    sget-object v8, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v4, v8, :cond_9

    :cond_8
    if-gez v6, :cond_9

    .line 448
    add-int/lit8 v6, v6, 0x60

    .line 450
    :cond_9
    invoke-static {v7, v6, v1, v2, v3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_2

    .line 426
    .end local v6    # "patternIndex":I
    :pswitch_4
    const/16 v6, 0x66

    .line 427
    .restart local v6    # "patternIndex":I
    goto :goto_6

    .line 429
    .end local v6    # "patternIndex":I
    :pswitch_5
    const/16 v6, 0x61

    .line 430
    .restart local v6    # "patternIndex":I
    goto :goto_6

    .line 432
    .end local v6    # "patternIndex":I
    :pswitch_6
    const/16 v6, 0x60

    .line 433
    .restart local v6    # "patternIndex":I
    goto :goto_6

    .line 435
    .end local v6    # "patternIndex":I
    :pswitch_7
    sget-object v8, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v0, v8, :cond_a

    sget-object v8, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v4, v8, :cond_b

    :cond_a
    sget-object v8, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v0, v8, :cond_c

    sget-object v8, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v4, v8, :cond_c

    .line 437
    :cond_b
    const/16 v6, 0x65

    .restart local v6    # "patternIndex":I
    goto :goto_6

    .line 439
    .end local v6    # "patternIndex":I
    :cond_c
    const/16 v6, 0x64

    .line 441
    .restart local v6    # "patternIndex":I
    goto :goto_6

    .end local v4    # "latch":Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;
    .end local v6    # "patternIndex":I
    :cond_d
    move-object v8, v9

    .line 453
    check-cast v8, [[I

    iput-object v8, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->memoizedCost:[[I

    .line 454
    check-cast v9, [[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    iput-object v9, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 455
    aget v8, v1, v11

    invoke-static {v7, v8}, Lcom/google/zxing/oned/Code128Writer;->produceResult(Ljava/util/Collection;I)[Z

    move-result-object v8

    return-object v8

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 424
    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static isDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 471
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

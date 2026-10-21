.class final Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/encoder/MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ResultList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

.field private final version:Lcom/google/zxing/qrcode/decoder/Version;


# direct methods
.method constructor <init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V
    .locals 23
    .param p1, "this$0"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder;
    .param p2, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p3, "solution"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .prologue
    .line 458
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->this$0:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 455
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    .line 459
    const/4 v7, 0x0

    .line 460
    .local v7, "length":I
    move-object/from16 v15, p3

    .line 461
    .local v15, "current":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    const/4 v14, 0x0

    .line 463
    .local v14, "containsECI":Z
    :goto_0
    if-eqz v15, :cond_7

    .line 464
    invoke-static {v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$000(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v2

    add-int/2addr v7, v2

    .line 465
    invoke-static {v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$700(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    move-result-object v19

    .line 467
    .local v19, "previous":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    invoke-static {v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$200(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v2, v3, :cond_0

    if-nez v19, :cond_0

    .line 468
    invoke-static {v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz v19, :cond_6

    .line 469
    invoke-static {v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v2

    invoke-static/range {v19 .. v19}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v3

    if-eq v2, v3, :cond_6

    :cond_1
    const/16 v18, 0x1

    .line 471
    .local v18, "needECI":Z
    :goto_1
    if-eqz v18, :cond_2

    .line 472
    const/4 v14, 0x1

    .line 475
    :cond_2
    if-eqz v19, :cond_3

    invoke-static/range {v19 .. v19}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$200(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v2

    invoke-static {v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$200(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v3

    if-ne v2, v3, :cond_3

    if-eqz v18, :cond_4

    .line 476
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    const/4 v9, 0x0

    new-instance v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    invoke-static {v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$200(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v4

    invoke-static {v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$800(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v5

    invoke-static {v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v6

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;Lcom/google/zxing/qrcode/decoder/Mode;III)V

    invoke-interface {v8, v9, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 477
    const/4 v7, 0x0

    .line 480
    :cond_4
    if-eqz v18, :cond_5

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    const/4 v3, 0x0

    new-instance v8, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-static {v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$800(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v11

    invoke-static {v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;Lcom/google/zxing/qrcode/decoder/Mode;III)V

    invoke-interface {v2, v3, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 483
    :cond_5
    move-object/from16 v15, v19

    .line 484
    goto :goto_0

    .line 469
    .end local v18    # "needECI":Z
    :cond_6
    const/16 v18, 0x0

    goto :goto_1

    .line 488
    .end local v19    # "previous":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->access$900(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    .line 490
    .local v16, "first":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;
    if-eqz v16, :cond_8

    invoke-static/range {v16 .. v16}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->access$1000(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq v2, v3, :cond_8

    if-eqz v14, :cond_8

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    const/4 v3, 0x0

    new-instance v8, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;Lcom/google/zxing/qrcode/decoder/Mode;III)V

    invoke-interface {v2, v3, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 494
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "first":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;
    check-cast v16, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    .line 496
    .restart local v16    # "first":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    invoke-static/range {v16 .. v16}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->access$1000(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v2

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq v2, v4, :cond_a

    const/4 v2, 0x0

    :goto_2
    new-instance v8, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;Lcom/google/zxing/qrcode/decoder/Mode;III)V

    invoke-interface {v3, v2, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 500
    .end local v16    # "first":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v22

    .line 503
    .local v22, "versionNumber":I
    sget-object v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$qrcode$encoder$MinimalEncoder$VersionSize:[I

    invoke-static/range {p2 .. p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersionSize(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 514
    const/16 v17, 0x1b

    .line 515
    .local v17, "lowerLimit":I
    const/16 v21, 0x28

    .line 518
    .local v21, "upperLimit":I
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getSize(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v20

    .line 520
    .local v20, "size":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    invoke-static/range {v22 .. v22}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    .line 521
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->access$1100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v3

    .line 520
    move/from16 v0, v20

    invoke-static {v0, v2, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 522
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 496
    .end local v17    # "lowerLimit":I
    .end local v20    # "size":I
    .end local v21    # "upperLimit":I
    .end local v22    # "versionNumber":I
    .restart local v16    # "first":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;
    :cond_a
    const/4 v2, 0x1

    goto :goto_2

    .line 505
    .end local v16    # "first":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;
    .restart local v22    # "versionNumber":I
    :pswitch_0
    const/16 v17, 0x1

    .line 506
    .restart local v17    # "lowerLimit":I
    const/16 v21, 0x9

    .line 507
    .restart local v21    # "upperLimit":I
    goto :goto_3

    .line 509
    .end local v17    # "lowerLimit":I
    .end local v21    # "upperLimit":I
    :pswitch_1
    const/16 v17, 0xa

    .line 510
    .restart local v17    # "lowerLimit":I
    const/16 v21, 0x1a

    .line 511
    .restart local v21    # "upperLimit":I
    goto :goto_3

    .line 525
    .restart local v20    # "size":I
    :cond_b
    :goto_5
    move/from16 v0, v22

    move/from16 v1, v17

    if-le v0, v1, :cond_c

    add-int/lit8 v2, v22, -0x1

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    .line 526
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->access$1100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v3

    .line 525
    move/from16 v0, v20

    invoke-static {v0, v2, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 527
    add-int/lit8 v22, v22, -0x1

    goto :goto_5

    .line 529
    :cond_c
    invoke-static/range {v22 .. v22}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->version:Lcom/google/zxing/qrcode/decoder/Version;

    .line 530
    return-void

    .line 503
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$1400(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->version:Lcom/google/zxing/qrcode/decoder/Version;

    return-object v0
.end method

.method private getSize(Lcom/google/zxing/qrcode/decoder/Version;)I
    .locals 4
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;

    .prologue
    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, "result":I
    iget-object v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    .line 542
    .local v1, "resultNode":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;
    invoke-static {v1, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->access$1200(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v3

    add-int/2addr v0, v3

    .line 543
    goto :goto_0

    .line 544
    .end local v1    # "resultNode":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;
    :cond_0
    return v0
.end method


# virtual methods
.method getBits(Lcom/google/zxing/common/BitArray;)V
    .locals 3
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 551
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    .line 552
    .local v0, "resultNode":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;
    invoke-static {v0, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->access$1300(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    .line 554
    .end local v0    # "resultNode":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;
    :cond_0
    return-void
.end method

.method getSize()I
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->version:Lcom/google/zxing/qrcode/decoder/Version;

    invoke-direct {p0, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getSize(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    return v0
.end method

.method getVersion()Lcom/google/zxing/qrcode/decoder/Version;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->version:Lcom/google/zxing/qrcode/decoder/Version;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 563
    .local v1, "previous":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;
    iget-object v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    .line 564
    .local v0, "current":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;
    if-eqz v1, :cond_0

    .line 565
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    move-object v1, v0

    .line 569
    goto :goto_0

    .line 570
    .end local v0    # "current":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

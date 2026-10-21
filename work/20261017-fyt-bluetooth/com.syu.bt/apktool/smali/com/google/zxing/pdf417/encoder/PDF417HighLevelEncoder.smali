.class final Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;
.super Ljava/lang/Object;
.source "PDF417HighLevelEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BYTE_COMPACTION:I = 0x1

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final LATCH_TO_BYTE:I = 0x39c

.field private static final LATCH_TO_BYTE_PADDED:I = 0x385

.field private static final LATCH_TO_NUMERIC:I = 0x386

.field private static final LATCH_TO_TEXT:I = 0x384

.field private static final MIXED:[B

.field private static final NUMERIC_COMPACTION:I = 0x2

.field private static final PUNCTUATION:[B

.field private static final SHIFT_TO_BYTE:I = 0x391

.field private static final SUBMODE_ALPHA:I = 0x0

.field private static final SUBMODE_LOWER:I = 0x1

.field private static final SUBMODE_MIXED:I = 0x2

.field private static final SUBMODE_PUNCTUATION:I = 0x3

.field private static final TEXT_COMPACTION:I

.field private static final TEXT_MIXED_RAW:[B

.field private static final TEXT_PUNCTUATION_RAW:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x80

    const/16 v3, 0x1e

    const/4 v4, -0x1

    .line 38
    const-class v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->$assertionsDisabled:Z

    .line 118
    new-array v2, v3, [B

    fill-array-data v2, :array_0

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    .line 125
    new-array v2, v3, [B

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    .line 129
    new-array v2, v5, [B

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    .line 130
    new-array v2, v5, [B

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    .line 132
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 139
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 141
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    aget-byte v0, v2, v1

    .line 142
    .local v0, "b":B
    if-lez v0, :cond_0

    .line 143
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    .line 140
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 38
    .end local v0    # "b":B
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 146
    .restart local v1    # "i":I
    :cond_2
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 147
    const/4 v1, 0x0

    :goto_2
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 148
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    aget-byte v0, v2, v1

    .line 149
    .restart local v0    # "b":B
    if-lez v0, :cond_3

    .line 150
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    .line 147
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 153
    .end local v0    # "b":B
    :cond_4
    return-void

    .line 118
    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 125
    nop

    :array_1
    .array-data 1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method private static determineConsecutiveBinaryCount(Lcom/google/zxing/common/ECIInput;ILjava/nio/charset/Charset;)I
    .locals 9
    .param p0, "input"    # Lcom/google/zxing/common/ECIInput;
    .param p1, "startpos"    # I
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xd

    .line 631
    if-nez p2, :cond_2

    const/4 v1, 0x0

    .line 632
    .local v1, "encoder":Ljava/nio/charset/CharsetEncoder;
    :goto_0
    invoke-interface {p0}, Lcom/google/zxing/common/ECIInput;->length()I

    move-result v4

    .line 633
    .local v4, "len":I
    move v3, p1

    .line 634
    .local v3, "idx":I
    :goto_1
    if-ge v3, v4, :cond_6

    .line 635
    const/4 v5, 0x0

    .line 637
    .local v5, "numericCount":I
    move v2, v3

    .line 638
    .local v2, "i":I
    :cond_0
    if-ge v5, v7, :cond_1

    invoke-interface {p0, v2}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {p0, v2}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 639
    add-int/lit8 v5, v5, 0x1

    .line 641
    add-int v2, v3, v5

    .line 642
    if-lt v2, v4, :cond_0

    .line 646
    :cond_1
    if-lt v5, v7, :cond_3

    .line 647
    sub-int v6, v3, p1

    .line 657
    .end local v2    # "i":I
    .end local v5    # "numericCount":I
    :goto_2
    return v6

    .line 631
    .end local v1    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .end local v3    # "idx":I
    .end local v4    # "len":I
    :cond_2
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    goto :goto_0

    .line 650
    .restart local v1    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .restart local v2    # "i":I
    .restart local v3    # "idx":I
    .restart local v4    # "len":I
    .restart local v5    # "numericCount":I
    :cond_3
    if-eqz v1, :cond_5

    invoke-interface {p0, v3}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v6

    if-nez v6, :cond_5

    .line 651
    sget-boolean v6, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    instance-of v6, p0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 652
    :cond_4
    invoke-interface {p0, v3}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v0

    .line 653
    .local v0, "ch":C
    new-instance v6, Lcom/google/zxing/WriterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non-encodable character detected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (Unicode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 655
    .end local v0    # "ch":C
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 656
    goto :goto_1

    .line 657
    .end local v2    # "i":I
    .end local v5    # "numericCount":I
    :cond_6
    sub-int v6, v3, p1

    goto :goto_2
.end method

.method private static determineConsecutiveDigitCount(Lcom/google/zxing/common/ECIInput;I)I
    .locals 4
    .param p0, "input"    # Lcom/google/zxing/common/ECIInput;
    .param p1, "startpos"    # I

    .prologue
    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, "count":I
    invoke-interface {p0}, Lcom/google/zxing/common/ECIInput;->length()I

    move-result v2

    .line 578
    .local v2, "len":I
    move v1, p1

    .line 579
    .local v1, "idx":I
    if-ge v1, v2, :cond_0

    .line 580
    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p0, v1}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 581
    add-int/lit8 v0, v0, 0x1

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    :cond_0
    return v0
.end method

.method private static determineConsecutiveTextCount(Lcom/google/zxing/common/ECIInput;I)I
    .locals 5
    .param p0, "input"    # Lcom/google/zxing/common/ECIInput;
    .param p1, "startpos"    # I

    .prologue
    const/16 v4, 0xd

    .line 596
    invoke-interface {p0}, Lcom/google/zxing/common/ECIInput;->length()I

    move-result v1

    .line 597
    .local v1, "len":I
    move v0, p1

    .line 598
    .local v0, "idx":I
    :cond_0
    :goto_0
    if-ge v0, v1, :cond_3

    .line 599
    const/4 v2, 0x0

    .line 600
    .local v2, "numericCount":I
    :goto_1
    if-ge v2, v4, :cond_1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p0, v0}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 601
    add-int/lit8 v2, v2, 0x1

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 604
    :cond_1
    if-lt v2, v4, :cond_2

    .line 605
    sub-int v3, v0, p1

    sub-int/2addr v3, v2

    .line 618
    .end local v2    # "numericCount":I
    :goto_2
    return v3

    .line 607
    .restart local v2    # "numericCount":I
    :cond_2
    if-gtz v2, :cond_0

    .line 613
    invoke-interface {p0, v0}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p0, v0}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    move-result v3

    if-nez v3, :cond_4

    .line 618
    .end local v2    # "numericCount":I
    :cond_3
    sub-int v3, v0, p1

    goto :goto_2

    .line 616
    .restart local v2    # "numericCount":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 617
    goto :goto_0
.end method

.method private static encodeBinary([BIIILjava/lang/StringBuilder;)V
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "startmode"    # I
    .param p4, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 483
    const/4 v6, 0x1

    if-ne p2, v6, :cond_0

    if-nez p3, :cond_0

    .line 484
    const/16 v6, 0x391

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    :goto_0
    move v3, p1

    .line 495
    .local v3, "idx":I
    const/4 v6, 0x6

    if-lt p2, v6, :cond_5

    .line 496
    const/4 v6, 0x5

    new-array v1, v6, [C

    .line 497
    .local v1, "chars":[C
    :goto_1
    add-int v6, p1, p2

    sub-int/2addr v6, v3

    const/4 v7, 0x6

    if-lt v6, v7, :cond_5

    .line 498
    const-wide/16 v4, 0x0

    .line 499
    .local v4, "t":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/4 v6, 0x6

    if-ge v2, v6, :cond_2

    .line 500
    const/16 v6, 0x8

    shl-long/2addr v4, v6

    .line 501
    add-int v6, v3, v2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 499
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 486
    .end local v1    # "chars":[C
    .end local v2    # "i":I
    .end local v3    # "idx":I
    .end local v4    # "t":J
    :cond_0
    rem-int/lit8 v6, p2, 0x6

    if-nez v6, :cond_1

    .line 487
    const/16 v6, 0x39c

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 489
    :cond_1
    const/16 v6, 0x385

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 503
    .restart local v1    # "chars":[C
    .restart local v2    # "i":I
    .restart local v3    # "idx":I
    .restart local v4    # "t":J
    :cond_2
    const/4 v2, 0x0

    :goto_3
    const/4 v6, 0x5

    if-ge v2, v6, :cond_3

    .line 504
    const-wide/16 v6, 0x384

    rem-long v6, v4, v6

    long-to-int v6, v6

    int-to-char v6, v6

    aput-char v6, v1, v2

    .line 505
    const-wide/16 v6, 0x384

    div-long/2addr v4, v6

    .line 503
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 507
    :cond_3
    array-length v6, v1

    add-int/lit8 v2, v6, -0x1

    :goto_4
    if-ltz v2, :cond_4

    .line 508
    aget-char v6, v1, v2

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 510
    :cond_4
    add-int/lit8 v3, v3, 0x6

    .line 511
    goto :goto_1

    .line 514
    .end local v1    # "chars":[C
    .end local v2    # "i":I
    .end local v4    # "t":J
    :cond_5
    move v2, v3

    .restart local v2    # "i":I
    :goto_5
    add-int v6, p1, p2

    if-ge v2, v6, :cond_6

    .line 515
    aget-byte v6, p0, v2

    and-int/lit16 v0, v6, 0xff

    .line 516
    .local v0, "ch":I
    int-to-char v6, v0

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 518
    .end local v0    # "ch":I
    :cond_6
    return-void
.end method

.method static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/Compaction;Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 18
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "compaction"    # Lcom/google/zxing/pdf417/encoder/Compaction;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .param p3, "autoECI"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 175
    new-instance v15, Lcom/google/zxing/WriterException;

    const-string v16, "Empty message not allowed"

    invoke-direct/range {v15 .. v16}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 178
    :cond_0
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 179
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v6, v15, :cond_2

    .line 180
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0xff

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    .line 181
    new-instance v15, Lcom/google/zxing/WriterException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Non-encodable character detected: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " (Unicode: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 182
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "). Consider specifying EncodeHintType.PDF417_AUTO_ECI and/or EncodeTypeHint.CHARACTER_SET."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 179
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 188
    .end local v6    # "i":I
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 191
    .local v12, "sb":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_4

    .line 192
    new-instance v7, Lcom/google/zxing/common/MinimalECIInput;

    const/4 v15, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1, v15}, Lcom/google/zxing/common/MinimalECIInput;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    .line 205
    .local v7, "input":Lcom/google/zxing/common/ECIInput;
    :cond_3
    :goto_1
    invoke-interface {v7}, Lcom/google/zxing/common/ECIInput;->length()I

    move-result v8

    .line 206
    .local v8, "len":I
    const/4 v11, 0x0

    .line 207
    .local v11, "p":I
    const/4 v14, 0x0

    .line 210
    .local v14, "textSubMode":I
    sget-object v15, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$1;->$SwitchMap$com$google$zxing$pdf417$encoder$Compaction:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/encoder/Compaction;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 227
    const/4 v5, 0x0

    .line 228
    .local v5, "encodingMode":I
    :goto_2
    if-ge v11, v8, :cond_6

    .line 229
    :goto_3
    if-ge v11, v8, :cond_8

    invoke-interface {v7, v11}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 230
    invoke-interface {v7, v11}, Lcom/google/zxing/common/ECIInput;->getECIValue(I)I

    move-result v15

    invoke-static {v15, v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(ILjava/lang/StringBuilder;)V

    .line 231
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 194
    .end local v5    # "encodingMode":I
    .end local v7    # "input":Lcom/google/zxing/common/ECIInput;
    .end local v8    # "len":I
    .end local v11    # "p":I
    .end local v14    # "textSubMode":I
    :cond_4
    new-instance v7, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v15}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;-><init>(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$1;)V

    .line 195
    .restart local v7    # "input":Lcom/google/zxing/common/ECIInput;
    if-nez p2, :cond_5

    .line 196
    sget-object p2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    goto :goto_1

    .line 197
    :cond_5
    sget-object v15, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 198
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v4

    .line 199
    .local v4, "eci":Lcom/google/zxing/common/CharacterSetECI;
    if-eqz v4, :cond_3

    .line 200
    invoke-virtual {v4}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v15

    invoke-static {v15, v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(ILjava/lang/StringBuilder;)V

    goto :goto_1

    .line 212
    .end local v4    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    .restart local v8    # "len":I
    .restart local v11    # "p":I
    .restart local v14    # "textSubMode":I
    :pswitch_0
    invoke-static {v7, v11, v8, v12, v14}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Lcom/google/zxing/common/ECIInput;IILjava/lang/StringBuilder;I)I

    .line 284
    :cond_6
    :goto_4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 215
    :pswitch_1
    if-eqz p3, :cond_7

    .line 216
    const/4 v15, 0x0

    invoke-interface {v7}, Lcom/google/zxing/common/ECIInput;->length()I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v7, v15, v0, v1, v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeMultiECIBinary(Lcom/google/zxing/common/ECIInput;IIILjava/lang/StringBuilder;)V

    goto :goto_4

    .line 218
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    .line 219
    .local v9, "msgBytes":[B
    array-length v15, v9

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v9, v11, v15, v0, v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    goto :goto_4

    .line 223
    .end local v9    # "msgBytes":[B
    :pswitch_2
    const/16 v15, 0x386

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    invoke-static {v7, v11, v8, v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Lcom/google/zxing/common/ECIInput;IILjava/lang/StringBuilder;)V

    goto :goto_4

    .line 233
    .restart local v5    # "encodingMode":I
    :cond_8
    if-ge v11, v8, :cond_6

    .line 236
    invoke-static {v7, v11}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveDigitCount(Lcom/google/zxing/common/ECIInput;I)I

    move-result v10

    .line 237
    .local v10, "n":I
    const/16 v15, 0xd

    if-lt v10, v15, :cond_9

    .line 238
    const/16 v15, 0x386

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    const/4 v5, 0x2

    .line 240
    const/4 v14, 0x0

    .line 241
    invoke-static {v7, v11, v10, v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Lcom/google/zxing/common/ECIInput;IILjava/lang/StringBuilder;)V

    .line 242
    add-int/2addr v11, v10

    goto/16 :goto_2

    .line 244
    :cond_9
    invoke-static {v7, v11}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveTextCount(Lcom/google/zxing/common/ECIInput;I)I

    move-result v13

    .line 245
    .local v13, "t":I
    const/4 v15, 0x5

    if-ge v13, v15, :cond_a

    if-ne v10, v8, :cond_c

    .line 246
    :cond_a
    if-eqz v5, :cond_b

    .line 247
    const/16 v15, 0x384

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    const/4 v5, 0x0

    .line 249
    const/4 v14, 0x0

    .line 251
    :cond_b
    invoke-static {v7, v11, v13, v12, v14}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Lcom/google/zxing/common/ECIInput;IILjava/lang/StringBuilder;I)I

    move-result v14

    .line 252
    add-int/2addr v11, v13

    goto/16 :goto_2

    .line 254
    :cond_c
    if-eqz p3, :cond_10

    const/4 v15, 0x0

    :goto_5
    invoke-static {v7, v11, v15}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveBinaryCount(Lcom/google/zxing/common/ECIInput;ILjava/nio/charset/Charset;)I

    move-result v2

    .line 255
    .local v2, "b":I
    if-nez v2, :cond_d

    .line 256
    const/4 v2, 0x1

    .line 258
    :cond_d
    if-eqz p3, :cond_11

    const/4 v3, 0x0

    .line 259
    .local v3, "bytes":[B
    :goto_6
    if-nez v3, :cond_e

    const/4 v15, 0x1

    if-eq v2, v15, :cond_f

    :cond_e
    if-eqz v3, :cond_13

    array-length v15, v3

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    :cond_f
    if-nez v5, :cond_13

    .line 262
    if-eqz p3, :cond_12

    .line 263
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v7, v11, v15, v0, v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeMultiECIBinary(Lcom/google/zxing/common/ECIInput;IIILjava/lang/StringBuilder;)V

    .line 277
    :goto_7
    add-int/2addr v11, v2

    goto/16 :goto_2

    .end local v2    # "b":I
    .end local v3    # "bytes":[B
    :cond_10
    move-object/from16 v15, p2

    .line 254
    goto :goto_5

    .line 258
    .restart local v2    # "b":I
    :cond_11
    add-int v15, v11, v2

    invoke-interface {v7, v11, v15}, Lcom/google/zxing/common/ECIInput;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    goto :goto_6

    .line 265
    .restart local v3    # "bytes":[B
    :cond_12
    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v3, v15, v0, v1, v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    goto :goto_7

    .line 269
    :cond_13
    if-eqz p3, :cond_14

    .line 270
    add-int v15, v11, v2

    invoke-static {v7, v11, v15, v5, v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeMultiECIBinary(Lcom/google/zxing/common/ECIInput;IIILjava/lang/StringBuilder;)V

    .line 274
    :goto_8
    const/4 v5, 0x1

    .line 275
    const/4 v14, 0x0

    goto :goto_7

    .line 272
    :cond_14
    const/4 v15, 0x0

    array-length v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v3, v15, v0, v5, v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    goto :goto_8

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static encodeMultiECIBinary(Lcom/google/zxing/common/ECIInput;IIILjava/lang/StringBuilder;)V
    .locals 7
    .param p0, "input"    # Lcom/google/zxing/common/ECIInput;
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "startmode"    # I
    .param p4, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 431
    add-int v4, p1, p2

    invoke-interface {p0}, Lcom/google/zxing/common/ECIInput;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 432
    .local v0, "end":I
    move v3, p1

    .line 435
    .local v3, "localStart":I
    :goto_0
    if-ge v3, v0, :cond_0

    invoke-interface {p0, v3}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    invoke-interface {p0, v3}, Lcom/google/zxing/common/ECIInput;->getECIValue(I)I

    move-result v4

    invoke-static {v4, p4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(ILjava/lang/StringBuilder;)V

    .line 437
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 439
    :cond_0
    move v2, v3

    .line 441
    .local v2, "localEnd":I
    :goto_1
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 445
    :cond_1
    sub-int v1, v2, v3

    .line 446
    .local v1, "localCount":I
    if-gtz v1, :cond_2

    .line 456
    return-void

    .line 451
    :cond_2
    invoke-static {p0, v3, v2}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->subBytes(Lcom/google/zxing/common/ECIInput;II)[B

    move-result-object v5

    const/4 v6, 0x0

    if-ne v3, p1, :cond_3

    move v4, p3

    :goto_2
    invoke-static {v5, v6, v1, v4, p4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 453
    move v3, v2

    .line 455
    goto :goto_0

    .line 451
    :cond_3
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private static encodeNumeric(Lcom/google/zxing/common/ECIInput;IILjava/lang/StringBuilder;)V
    .locals 11
    .param p0, "input"    # Lcom/google/zxing/common/ECIInput;
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 521
    const/4 v2, 0x0

    .line 522
    .local v2, "idx":I
    new-instance v7, Ljava/lang/StringBuilder;

    div-int/lit8 v8, p2, 0x3

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 523
    .local v7, "tmp":Ljava/lang/StringBuilder;
    const-wide/16 v8, 0x384

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 524
    .local v5, "num900":Ljava/math/BigInteger;
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 525
    .local v4, "num0":Ljava/math/BigInteger;
    :goto_0
    if-ge v2, p2, :cond_2

    .line 526
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 527
    const/16 v8, 0x2c

    sub-int v9, p2, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 528
    .local v3, "len":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int v9, p1, v2

    add-int v10, p1, v2

    add-int/2addr v10, v3

    invoke-interface {p0, v9, v10}, Lcom/google/zxing/common/ECIInput;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 529
    .local v6, "part":Ljava/lang/String;
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 531
    .local v0, "bigint":Ljava/math/BigInteger;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 533
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 536
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 537
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 539
    :cond_1
    add-int/2addr v2, v3

    .line 540
    goto :goto_0

    .line 541
    .end local v0    # "bigint":Ljava/math/BigInteger;
    .end local v1    # "i":I
    .end local v3    # "len":I
    .end local v6    # "part":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static encodeText(Lcom/google/zxing/common/ECIInput;IILjava/lang/StringBuilder;I)I
    .locals 10
    .param p0, "input"    # Lcom/google/zxing/common/ECIInput;
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;
    .param p4, "initialSubmode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 303
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 304
    .local v7, "tmp":Ljava/lang/StringBuilder;
    move v6, p4

    .line 305
    .local v6, "submode":I
    const/4 v3, 0x0

    .line 307
    .local v3, "idx":I
    :cond_0
    :goto_0
    add-int v8, p1, v3

    invoke-interface {p0, v8}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 308
    add-int v8, p1, v3

    invoke-interface {p0, v8}, Lcom/google/zxing/common/ECIInput;->getECIValue(I)I

    move-result v8

    invoke-static {v8, p3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(ILjava/lang/StringBuilder;)V

    .line 309
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    :cond_1
    add-int v8, p1, v3

    invoke-interface {p0, v8}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v0

    .line 312
    .local v0, "ch":C
    packed-switch v6, :pswitch_data_0

    .line 386
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 387
    sget-object v8, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v8, v8, v0

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 395
    if-lt v3, p2, :cond_0

    .line 400
    const/4 v1, 0x0

    .line 401
    .local v1, "h":C
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 402
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_11

    .line 403
    rem-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_f

    const/4 v5, 0x1

    .line 404
    .local v5, "odd":Z
    :goto_3
    if-eqz v5, :cond_10

    .line 405
    mul-int/lit8 v8, v1, 0x1e

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    add-int/2addr v8, v9

    int-to-char v1, v8

    .line 406
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 402
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 314
    .end local v1    # "h":C
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v5    # "odd":Z
    :pswitch_0
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 315
    const/16 v8, 0x20

    if-ne v0, v8, :cond_2

    .line 316
    const/16 v8, 0x1a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 318
    :cond_2
    add-int/lit8 v8, v0, -0x41

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 321
    :cond_3
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 322
    const/4 v6, 0x1

    .line 323
    const/16 v8, 0x1b

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 325
    :cond_4
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 326
    const/4 v6, 0x2

    .line 327
    const/16 v8, 0x1c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 330
    :cond_5
    const/16 v8, 0x1d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    sget-object v8, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v8, v8, v0

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 337
    :pswitch_1
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 338
    const/16 v8, 0x20

    if-ne v0, v8, :cond_6

    .line 339
    const/16 v8, 0x1a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 341
    :cond_6
    add-int/lit8 v8, v0, -0x61

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 344
    :cond_7
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 345
    const/16 v8, 0x1b

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    add-int/lit8 v8, v0, -0x41

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 349
    :cond_8
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 350
    const/4 v6, 0x2

    .line 351
    const/16 v8, 0x1c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 354
    :cond_9
    const/16 v8, 0x1d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    sget-object v8, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v8, v8, v0

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 361
    :pswitch_2
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 362
    sget-object v8, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v8, v8, v0

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 364
    :cond_a
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 365
    const/4 v6, 0x0

    .line 366
    const/16 v8, 0x1c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 368
    :cond_b
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 369
    const/4 v6, 0x1

    .line 370
    const/16 v8, 0x1b

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 373
    :cond_c
    add-int v8, p1, v3

    add-int/lit8 v8, v8, 0x1

    if-ge v8, p2, :cond_d

    add-int v8, p1, v3

    add-int/lit8 v8, v8, 0x1

    .line 374
    invoke-interface {p0, v8}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v8

    if-nez v8, :cond_d

    add-int v8, p1, v3

    add-int/lit8 v8, v8, 0x1

    .line 375
    invoke-interface {p0, v8}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 376
    const/4 v6, 0x3

    .line 377
    const/16 v8, 0x19

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 380
    :cond_d
    const/16 v8, 0x1d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    sget-object v8, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v8, v8, v0

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 389
    :cond_e
    const/4 v6, 0x0

    .line 390
    const/16 v8, 0x1d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 403
    .restart local v1    # "h":C
    .restart local v2    # "i":I
    .restart local v4    # "len":I
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 408
    .restart local v5    # "odd":Z
    :cond_10
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    goto/16 :goto_4

    .line 411
    .end local v5    # "odd":Z
    :cond_11
    rem-int/lit8 v8, v4, 0x2

    if-eqz v8, :cond_12

    .line 412
    mul-int/lit8 v8, v1, 0x1e

    add-int/lit8 v8, v8, 0x1d

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    :cond_12
    return v6

    .line 312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static encodingECI(ILjava/lang/StringBuilder;)V
    .locals 3
    .param p0, "eci"    # I
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const v1, 0xc5f94

    .line 661
    if-ltz p0, :cond_0

    const/16 v0, 0x384

    if-ge p0, v0, :cond_0

    .line 662
    const/16 v0, 0x39f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 663
    int-to-char v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 674
    :goto_0
    return-void

    .line 664
    :cond_0
    if-ge p0, v1, :cond_1

    .line 665
    const/16 v0, 0x39e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 666
    div-int/lit16 v0, p0, 0x384

    add-int/lit8 v0, v0, -0x1

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 667
    rem-int/lit16 v0, p0, 0x384

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 668
    :cond_1
    const v0, 0xc6318

    if-ge p0, v0, :cond_2

    .line 669
    const/16 v0, 0x39d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    sub-int v0, v1, p0

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 672
    :cond_2
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ECI number not in valid range from 0..811799, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAlphaLower(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 553
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAlphaUpper(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 549
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 545
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

.method private static isMixed(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    .line 557
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPunctuation(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    .line 561
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isText(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 565
    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static subBytes(Lcom/google/zxing/common/ECIInput;II)[B
    .locals 5
    .param p0, "input"    # Lcom/google/zxing/common/ECIInput;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 459
    sub-int v0, p2, p1

    .line 460
    .local v0, "count":I
    new-array v2, v0, [B

    .line 461
    .local v2, "result":[B
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 462
    sub-int v3, v1, p1

    invoke-interface {p0, v1}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 461
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    :cond_0
    return-object v2
.end method

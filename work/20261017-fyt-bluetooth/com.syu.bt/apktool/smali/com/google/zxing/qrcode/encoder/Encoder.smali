.class public final Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final ALPHANUMERIC_TABLE:[I

.field static final DEFAULT_BYTE_MODE_ENCODING:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    .line 53
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->DEFAULT_BYTE_MODE_ENCODING:Ljava/nio/charset/Charset;

    return-void

    .line 44
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method static append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/nio/charset/Charset;)V
    .locals 5
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;

    .prologue
    .line 608
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 609
    .local v1, "bytes":[B
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v0, v1, v2

    .line 610
    .local v0, "b":B
    const/16 v4, 0x8

    invoke-virtual {p1, v0, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 609
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 612
    .end local v0    # "b":B
    :cond_0
    return-void
.end method

.method static appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .locals 7
    .param p0, "content"    # Ljava/lang/CharSequence;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 584
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 585
    .local v3, "length":I
    const/4 v2, 0x0

    .line 586
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 587
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v0

    .line 588
    .local v0, "code1":I
    if-ne v0, v6, :cond_0

    .line 589
    new-instance v4, Lcom/google/zxing/WriterException;

    invoke-direct {v4}, Lcom/google/zxing/WriterException;-><init>()V

    throw v4

    .line 591
    :cond_0
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_2

    .line 592
    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v1

    .line 593
    .local v1, "code2":I
    if-ne v1, v6, :cond_1

    .line 594
    new-instance v4, Lcom/google/zxing/WriterException;

    invoke-direct {v4}, Lcom/google/zxing/WriterException;-><init>()V

    throw v4

    .line 597
    :cond_1
    mul-int/lit8 v4, v0, 0x2d

    add-int/2addr v4, v1

    const/16 v5, 0xb

    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 598
    add-int/lit8 v2, v2, 0x2

    .line 599
    goto :goto_0

    .line 601
    .end local v1    # "code2":I
    :cond_2
    const/4 v4, 0x6

    invoke-virtual {p1, v0, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 602
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 605
    .end local v0    # "code1":I
    :cond_3
    return-void
.end method

.method static appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/nio/charset/Charset;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p2, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p3, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 541
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 555
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :pswitch_0
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    .line 557
    :goto_0
    return-void

    .line 546
    :pswitch_1
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    .line 549
    :pswitch_2
    invoke-static {p0, p2, p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/nio/charset/Charset;)V

    goto :goto_0

    .line 552
    :pswitch_3
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    .line 541
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V
    .locals 2
    .param p0, "eci"    # Lcom/google/zxing/common/CharacterSetECI;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 643
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 645
    invoke-virtual {p0}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 646
    return-void
.end method

.method static appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V
    .locals 11
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const v10, 0x8140

    .line 615
    sget-object v8, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    if-nez v8, :cond_0

    .line 617
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "SJIS Charset not supported on this platform"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 619
    :cond_0
    sget-object v8, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 620
    .local v2, "bytes":[B
    array-length v8, v2

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1

    .line 621
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "Kanji byte size not even"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 623
    :cond_1
    array-length v8, v2

    add-int/lit8 v6, v8, -0x1

    .line 624
    .local v6, "maxI":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_5

    .line 625
    aget-byte v8, v2, v5

    and-int/lit16 v0, v8, 0xff

    .line 626
    .local v0, "byte1":I
    add-int/lit8 v8, v5, 0x1

    aget-byte v8, v2, v8

    and-int/lit16 v1, v8, 0xff

    .line 627
    .local v1, "byte2":I
    shl-int/lit8 v8, v0, 0x8

    or-int v3, v8, v1

    .line 628
    .local v3, "code":I
    const/4 v7, -0x1

    .line 629
    .local v7, "subtracted":I
    if-lt v3, v10, :cond_3

    const v8, 0x9ffc

    if-gt v3, v8, :cond_3

    .line 630
    sub-int v7, v3, v10

    .line 634
    :cond_2
    :goto_1
    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 635
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "Invalid byte sequence"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 631
    :cond_3
    const v8, 0xe040

    if-lt v3, v8, :cond_2

    const v8, 0xebbf

    if-gt v3, v8, :cond_2

    .line 632
    const v8, 0xc140

    sub-int v7, v3, v8

    goto :goto_1

    .line 637
    :cond_4
    shr-int/lit8 v8, v7, 0x8

    mul-int/lit16 v8, v8, 0xc0

    and-int/lit16 v9, v7, 0xff

    add-int v4, v8, v9

    .line 638
    .local v4, "encoded":I
    const/16 v8, 0xd

    invoke-virtual {p1, v4, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 624
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 640
    .end local v0    # "byte1":I
    .end local v1    # "byte2":I
    .end local v3    # "code":I
    .end local v4    # "encoded":I
    .end local v7    # "subtracted":I
    :cond_5
    return-void
.end method

.method static appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .locals 5
    .param p0, "numLetters"    # I
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p3, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 527
    invoke-virtual {p2, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    .line 528
    .local v0, "numBits":I
    shl-int v1, v4, v0

    if-lt p0, v1, :cond_0

    .line 529
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is bigger than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shl-int v3, v4, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :cond_0
    invoke-virtual {p3, p0, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 532
    return-void
.end method

.method static appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .locals 2
    .param p0, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 520
    return-void
.end method

.method static appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .locals 7
    .param p0, "content"    # Ljava/lang/CharSequence;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 560
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 561
    .local v1, "length":I
    const/4 v0, 0x0

    .line 562
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 563
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v2, v5, -0x30

    .line 564
    .local v2, "num1":I
    add-int/lit8 v5, v0, 0x2

    if-ge v5, v1, :cond_0

    .line 566
    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    .line 567
    .local v3, "num2":I
    add-int/lit8 v5, v0, 0x2

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v4, v5, -0x30

    .line 568
    .local v4, "num3":I
    mul-int/lit8 v5, v2, 0x64

    mul-int/lit8 v6, v3, 0xa

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    const/16 v6, 0xa

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 569
    add-int/lit8 v0, v0, 0x3

    .line 570
    goto :goto_0

    .end local v3    # "num2":I
    .end local v4    # "num3":I
    :cond_0
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v1, :cond_1

    .line 572
    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    .line 573
    .restart local v3    # "num2":I
    mul-int/lit8 v5, v2, 0xa

    add-int/2addr v5, v3

    const/4 v6, 0x7

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 574
    add-int/lit8 v0, v0, 0x2

    .line 575
    goto :goto_0

    .line 577
    .end local v3    # "num2":I
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {p1, v2, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    .end local v2    # "num1":I
    :cond_2
    return-void
.end method

.method private static calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I
    .locals 2
    .param p0, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p1, "headerBits"    # Lcom/google/zxing/common/BitArray;
    .param p2, "dataBits"    # Lcom/google/zxing/common/BitArray;
    .param p3, "version"    # Lcom/google/zxing/qrcode/decoder/Version;

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 2
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v0

    .line 62
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    return v0
.end method

.method private static chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p2, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p3, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 299
    const v2, 0x7fffffff

    .line 300
    .local v2, "minPenalty":I
    const/4 v0, -0x1

    .line 302
    .local v0, "bestMaskPattern":I
    const/4 v1, 0x0

    .local v1, "maskPattern":I
    :goto_0
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    .line 303
    invoke-static {p0, p1, p2, v1, p3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 304
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v3

    .line 305
    .local v3, "penalty":I
    if-ge v3, v2, :cond_0

    .line 306
    move v2, v3

    .line 307
    move v0, v1

    .line 302
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v3    # "penalty":I
    :cond_1
    return v0
.end method

.method public static chooseMode(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v0

    return-object v0
.end method

.method private static chooseMode(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;

    .prologue
    .line 252
    sget-object v4, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    .line 253
    invoke-virtual {v4, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 276
    :goto_0
    return-object v4

    .line 258
    :cond_0
    const/4 v2, 0x0

    .line 259
    .local v2, "hasNumeric":Z
    const/4 v1, 0x0

    .line 260
    .local v1, "hasAlphanumeric":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 261
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 262
    .local v0, "c":C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_1

    const/16 v4, 0x39

    if-gt v0, v4, :cond_1

    .line 263
    const/4 v2, 0x1

    .line 260
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 264
    :cond_1
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 265
    const/4 v1, 0x1

    goto :goto_2

    .line 267
    :cond_2
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 270
    .end local v0    # "c":C
    :cond_3
    if-eqz v1, :cond_4

    .line 271
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 273
    :cond_4
    if-eqz v2, :cond_5

    .line 274
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 276
    :cond_5
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0
.end method

.method private static chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 4
    .param p0, "numInputBits"    # I
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 314
    const/4 v1, 0x1

    .local v1, "versionNum":I
    :goto_0
    const/16 v2, 0x28

    if-gt v1, v2, :cond_1

    .line 315
    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    .line 316
    .local v0, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-static {p0, v0, p1}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    return-object v0

    .line 314
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v0    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    :cond_1
    new-instance v2, Lcom/google/zxing/WriterException;

    const-string v3, "Data too big"

    invoke-direct {v2, v3}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .locals 29
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/encoder/QRCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 86
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    if-eqz p2, :cond_3

    sget-object v27, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    sget-object v27, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    .line 87
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_3

    const/4 v13, 0x1

    .line 88
    .local v13, "hasGS1FormatHint":Z
    :goto_0
    if-eqz p2, :cond_4

    sget-object v27, Lcom/google/zxing/EncodeHintType;->QR_COMPACT:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    sget-object v27, Lcom/google/zxing/EncodeHintType;->QR_COMPACT:Lcom/google/zxing/EncodeHintType;

    .line 89
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/4 v11, 0x1

    .line 92
    .local v11, "hasCompactionHint":Z
    :goto_1
    sget-object v9, Lcom/google/zxing/qrcode/encoder/Encoder;->DEFAULT_BYTE_MODE_ENCODING:Ljava/nio/charset/Charset;

    .line 93
    .local v9, "encoding":Ljava/nio/charset/Charset;
    if-eqz p2, :cond_5

    sget-object v27, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    const/4 v12, 0x1

    .line 94
    .local v12, "hasEncodingHint":Z
    :goto_2
    if-eqz v12, :cond_0

    .line 96
    :try_start_0
    sget-object v27, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 102
    :cond_0
    :goto_3
    if-eqz v11, :cond_7

    .line 103
    sget-object v19, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 105
    .local v19, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    sget-object v27, Lcom/google/zxing/qrcode/encoder/Encoder;->DEFAULT_BYTE_MODE_ENCODING:Ljava/nio/charset/Charset;

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    const/16 v22, 0x0

    .line 106
    .local v22, "priorityEncoding":Ljava/nio/charset/Charset;
    :goto_4
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v13, v3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Version;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v24

    .line 108
    .local v24, "rn":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    new-instance v14, Lcom/google/zxing/common/BitArray;

    invoke-direct {v14}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 109
    .local v14, "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getBits(Lcom/google/zxing/common/BitArray;)V

    .line 110
    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v25

    .line 164
    .end local v22    # "priorityEncoding":Ljava/nio/charset/Charset;
    .end local v24    # "rn":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    .local v25, "version":Lcom/google/zxing/qrcode/decoder/Version;
    :goto_5
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v7

    .line 165
    .local v7, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v27

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v28

    sub-int v20, v27, v28

    .line 168
    .local v20, "numDataBytes":I
    move/from16 v0, v20

    invoke-static {v0, v14}, Lcom/google/zxing/qrcode/encoder/Encoder;->terminateBits(ILcom/google/zxing/common/BitArray;)V

    .line 172
    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v27

    .line 174
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v28

    .line 171
    move/from16 v0, v27

    move/from16 v1, v20

    move/from16 v2, v28

    invoke-static {v14, v0, v1, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;

    move-result-object v10

    .line 176
    .local v10, "finalBits":Lcom/google/zxing/common/BitArray;
    new-instance v23, Lcom/google/zxing/qrcode/encoder/QRCode;

    invoke-direct/range {v23 .. v23}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    .line 178
    .local v23, "qrCode":Lcom/google/zxing/qrcode/encoder/QRCode;
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/encoder/QRCode;->setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    .line 179
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V

    .line 180
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/encoder/QRCode;->setVersion(Lcom/google/zxing/qrcode/decoder/Version;)V

    .line 183
    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v6

    .line 184
    .local v6, "dimension":I
    new-instance v18, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 187
    .local v18, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    const/16 v17, -0x1

    .line 188
    .local v17, "maskPattern":I
    if-eqz p2, :cond_1

    sget-object v27, Lcom/google/zxing/EncodeHintType;->QR_MASK_PATTERN:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 189
    sget-object v27, Lcom/google/zxing/EncodeHintType;->QR_MASK_PATTERN:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 190
    .local v16, "hintMaskPattern":I
    invoke-static/range {v16 .. v16}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    move-result v27

    if-eqz v27, :cond_d

    move/from16 v17, v16

    .line 193
    .end local v16    # "hintMaskPattern":I
    :cond_1
    :goto_6
    const/16 v27, -0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 194
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-static {v10, v0, v1, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v17

    .line 196
    :cond_2
    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMaskPattern(I)V

    .line 199
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-static {v10, v0, v1, v2, v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 200
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 202
    return-object v23

    .line 87
    .end local v6    # "dimension":I
    .end local v7    # "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .end local v9    # "encoding":Ljava/nio/charset/Charset;
    .end local v10    # "finalBits":Lcom/google/zxing/common/BitArray;
    .end local v11    # "hasCompactionHint":Z
    .end local v12    # "hasEncodingHint":Z
    .end local v13    # "hasGS1FormatHint":Z
    .end local v14    # "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    .end local v17    # "maskPattern":I
    .end local v18    # "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .end local v19    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v20    # "numDataBytes":I
    .end local v23    # "qrCode":Lcom/google/zxing/qrcode/encoder/QRCode;
    .end local v25    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 89
    .restart local v13    # "hasGS1FormatHint":Z
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 93
    .restart local v9    # "encoding":Ljava/nio/charset/Charset;
    .restart local v11    # "hasCompactionHint":Z
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_2

    .restart local v12    # "hasEncodingHint":Z
    .restart local v19    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_6
    move-object/from16 v22, v9

    .line 105
    goto/16 :goto_4

    .line 116
    .end local v19    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_7
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v19

    .line 120
    .restart local v19    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    new-instance v15, Lcom/google/zxing/common/BitArray;

    invoke-direct {v15}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 123
    .local v15, "headerBits":Lcom/google/zxing/common/BitArray;
    sget-object v27, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_8

    if-eqz v12, :cond_8

    .line 124
    invoke-static {v9}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v8

    .line 125
    .local v8, "eci":Lcom/google/zxing/common/CharacterSetECI;
    if-eqz v8, :cond_8

    .line 126
    invoke-static {v8, v15}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V

    .line 131
    .end local v8    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    :cond_8
    if-eqz v13, :cond_9

    .line 133
    sget-object v27, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v27

    invoke-static {v0, v15}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 137
    :cond_9
    move-object/from16 v0, v19

    invoke-static {v0, v15}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 141
    new-instance v5, Lcom/google/zxing/common/BitArray;

    invoke-direct {v5}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 142
    .local v5, "dataBits":Lcom/google/zxing/common/BitArray;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5, v9}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/nio/charset/Charset;)V

    .line 144
    if-eqz p2, :cond_a

    sget-object v27, Lcom/google/zxing/EncodeHintType;->QR_VERSION:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 145
    sget-object v27, Lcom/google/zxing/EncodeHintType;->QR_VERSION:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 146
    .local v26, "versionNumber":I
    invoke-static/range {v26 .. v26}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v25

    .line 147
    .restart local v25    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-static {v0, v15, v5, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v4

    .line 148
    .local v4, "bitsNeeded":I
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-static {v4, v0, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v27

    if-nez v27, :cond_b

    .line 149
    new-instance v27, Lcom/google/zxing/WriterException;

    const-string v28, "Data too big for requested version"

    invoke-direct/range {v27 .. v28}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 152
    .end local v4    # "bitsNeeded":I
    .end local v25    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    .end local v26    # "versionNumber":I
    :cond_a
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1, v15, v5}, Lcom/google/zxing/qrcode/encoder/Encoder;->recommendVersion(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v25

    .line 155
    .restart local v25    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    :cond_b
    new-instance v14, Lcom/google/zxing/common/BitArray;

    invoke-direct {v14}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 156
    .restart local v14    # "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    invoke-virtual {v14, v15}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 158
    sget-object v27, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_c

    invoke-virtual {v5}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v21

    .line 159
    .local v21, "numLetters":I
    :goto_7
    move/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v14}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 161
    invoke-virtual {v14, v5}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    goto/16 :goto_5

    .line 158
    .end local v21    # "numLetters":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    goto :goto_7

    .line 190
    .end local v5    # "dataBits":Lcom/google/zxing/common/BitArray;
    .end local v15    # "headerBits":Lcom/google/zxing/common/BitArray;
    .restart local v6    # "dimension":I
    .restart local v7    # "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .restart local v10    # "finalBits":Lcom/google/zxing/common/BitArray;
    .restart local v16    # "hintMaskPattern":I
    .restart local v17    # "maskPattern":I
    .restart local v18    # "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .restart local v20    # "numDataBytes":I
    .restart local v23    # "qrCode":Lcom/google/zxing/qrcode/encoder/QRCode;
    :cond_d
    const/16 v17, -0x1

    goto/16 :goto_6

    .line 97
    .end local v6    # "dimension":I
    .end local v7    # "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .end local v10    # "finalBits":Lcom/google/zxing/common/BitArray;
    .end local v14    # "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    .end local v16    # "hintMaskPattern":I
    .end local v17    # "maskPattern":I
    .end local v18    # "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .end local v19    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v20    # "numDataBytes":I
    .end local v23    # "qrCode":Lcom/google/zxing/qrcode/encoder/QRCode;
    .end local v25    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    :catch_0
    move-exception v27

    goto/16 :goto_3
.end method

.method static generateECBytes([BI)[B
    .locals 6
    .param p0, "dataBytes"    # [B
    .param p1, "numEcBytesInBlock"    # I

    .prologue
    .line 501
    array-length v2, p0

    .line 502
    .local v2, "numDataBytes":I
    add-int v4, v2, p1

    new-array v3, v4, [I

    .line 503
    .local v3, "toEncode":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 504
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    :cond_0
    new-instance v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    sget-object v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v4, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v4, v3, p1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 508
    new-array v0, p1, [B

    .line 509
    .local v0, "ecBytes":[B
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 510
    add-int v4, v2, v1

    aget v4, v3, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 512
    :cond_1
    return-object v0
.end method

.method static getAlphanumericCode(I)I
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 237
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 238
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    aget v0, v0, p0

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V
    .locals 10
    .param p0, "numTotalBytes"    # I
    .param p1, "numDataBytes"    # I
    .param p2, "numRSBlocks"    # I
    .param p3, "blockID"    # I
    .param p4, "numDataBytesInBlock"    # [I
    .param p5, "numECBytesInBlock"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 382
    if-lt p3, p2, :cond_0

    .line 383
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "Block ID too large"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 386
    :cond_0
    rem-int v5, p0, p2

    .line 388
    .local v5, "numRsBlocksInGroup2":I
    sub-int v4, p2, v5

    .line 390
    .local v4, "numRsBlocksInGroup1":I
    div-int v6, p0, p2

    .line 392
    .local v6, "numTotalBytesInGroup1":I
    add-int/lit8 v7, v6, 0x1

    .line 394
    .local v7, "numTotalBytesInGroup2":I
    div-int v0, p1, p2

    .line 396
    .local v0, "numDataBytesInGroup1":I
    add-int/lit8 v1, v0, 0x1

    .line 398
    .local v1, "numDataBytesInGroup2":I
    sub-int v2, v6, v0

    .line 400
    .local v2, "numEcBytesInGroup1":I
    sub-int v3, v7, v1

    .line 403
    .local v3, "numEcBytesInGroup2":I
    if-eq v2, v3, :cond_1

    .line 404
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "EC bytes mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 407
    :cond_1
    add-int v8, v4, v5

    if-eq p2, v8, :cond_2

    .line 408
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "RS blocks mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 411
    :cond_2
    add-int v8, v0, v2

    mul-int/2addr v8, v4

    add-int v9, v1, v3

    mul-int/2addr v9, v5

    add-int/2addr v8, v9

    if-eq p0, v8, :cond_3

    .line 416
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "Total bytes mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 419
    :cond_3
    if-ge p3, v4, :cond_4

    .line 420
    const/4 v8, 0x0

    aput v0, p4, v8

    .line 421
    const/4 v8, 0x0

    aput v2, p5, v8

    .line 426
    :goto_0
    return-void

    .line 423
    :cond_4
    const/4 v8, 0x0

    aput v1, p4, v8

    .line 424
    const/4 v8, 0x0

    aput v3, p5, v8

    goto :goto_0
.end method

.method static interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;
    .locals 16
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "numTotalBytes"    # I
    .param p2, "numDataBytes"    # I
    .param p3, "numRSBlocks"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v1

    move/from16 v0, p2

    if-eq v1, v0, :cond_0

    .line 439
    new-instance v1, Lcom/google/zxing/WriterException;

    const-string v2, "Number of bits and data bytes does not match"

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_0
    const/4 v10, 0x0

    .line 445
    .local v10, "dataBytesOffset":I
    const/4 v12, 0x0

    .line 446
    .local v12, "maxNumDataBytes":I
    const/4 v13, 0x0

    .line 449
    .local v13, "maxNumEcBytes":I
    new-instance v8, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 451
    .local v8, "blocks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/qrcode/encoder/BlockPair;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_1

    .line 452
    const/4 v1, 0x1

    new-array v5, v1, [I

    .line 453
    .local v5, "numDataBytesInBlock":[I
    const/4 v1, 0x1

    new-array v6, v1, [I

    .local v6, "numEcBytesInBlock":[I
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 454
    invoke-static/range {v1 .. v6}, Lcom/google/zxing/qrcode/encoder/Encoder;->getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V

    .line 458
    const/4 v1, 0x0

    aget v15, v5, v1

    .line 459
    .local v15, "size":I
    new-array v9, v15, [B

    .line 460
    .local v9, "dataBytes":[B
    mul-int/lit8 v1, v10, 0x8

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9, v2, v15}, Lcom/google/zxing/common/BitArray;->toBytes(I[BII)V

    .line 461
    const/4 v1, 0x0

    aget v1, v6, v1

    invoke-static {v9, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->generateECBytes([BI)[B

    move-result-object v11

    .line 462
    .local v11, "ecBytes":[B
    new-instance v1, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v1, v9, v11}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 465
    array-length v1, v11

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 466
    const/4 v1, 0x0

    aget v1, v5, v1

    add-int/2addr v10, v1

    .line 451
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 468
    .end local v5    # "numDataBytesInBlock":[I
    .end local v6    # "numEcBytesInBlock":[I
    .end local v9    # "dataBytes":[B
    .end local v11    # "ecBytes":[B
    .end local v15    # "size":I
    :cond_1
    move/from16 v0, p2

    if-eq v0, v10, :cond_2

    .line 469
    new-instance v1, Lcom/google/zxing/WriterException;

    const-string v2, "Data bytes does not match offset"

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 472
    :cond_2
    new-instance v14, Lcom/google/zxing/common/BitArray;

    invoke-direct {v14}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 475
    .local v14, "result":Lcom/google/zxing/common/BitArray;
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v12, :cond_5

    .line 476
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 477
    .local v7, "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getDataBytes()[B

    move-result-object v9

    .line 478
    .restart local v9    # "dataBytes":[B
    array-length v2, v9

    if-ge v4, v2, :cond_3

    .line 479
    aget-byte v2, v9, v4

    const/16 v3, 0x8

    invoke-virtual {v14, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_2

    .line 475
    .end local v7    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    .end local v9    # "dataBytes":[B
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 484
    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v13, :cond_8

    .line 485
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 486
    .restart local v7    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getErrorCorrectionBytes()[B

    move-result-object v11

    .line 487
    .restart local v11    # "ecBytes":[B
    array-length v2, v11

    if-ge v4, v2, :cond_6

    .line 488
    aget-byte v2, v11, v4

    const/16 v3, 0x8

    invoke-virtual {v14, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_4

    .line 484
    .end local v7    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    .end local v11    # "ecBytes":[B
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 492
    :cond_8
    invoke-virtual {v14}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v1

    move/from16 v0, p1

    if-eq v0, v1, :cond_9

    .line 493
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interleaving error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 494
    invoke-virtual {v14}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " differ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :cond_9
    return-object v14
.end method

.method static isOnlyDoubleByteKanji(Ljava/lang/String;)Z
    .locals 6
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 280
    sget-object v5, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 281
    .local v1, "bytes":[B
    array-length v3, v1

    .line 282
    .local v3, "length":I
    rem-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v4

    .line 285
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 286
    aget-byte v5, v1, v2

    and-int/lit16 v0, v5, 0xff

    .line 287
    .local v0, "byte1":I
    const/16 v5, 0x81

    if-lt v0, v5, :cond_2

    const/16 v5, 0x9f

    if-le v0, v5, :cond_3

    :cond_2
    const/16 v5, 0xe0

    if-lt v0, v5, :cond_0

    const/16 v5, 0xeb

    if-gt v0, v5, :cond_0

    .line 285
    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 291
    .end local v0    # "byte1":I
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static recommendVersion(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 4
    .param p0, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p1, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p2, "headerBits"    # Lcom/google/zxing/common/BitArray;
    .param p3, "dataBits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 217
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v3

    invoke-static {p1, p2, p3, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v1

    .line 218
    .local v1, "provisionalBitsNeeded":I
    invoke-static {v1, p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    .line 221
    .local v2, "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-static {p1, p2, p3, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    .line 222
    .local v0, "bitsNeeded":I
    invoke-static {v0, p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v3

    return-object v3
.end method

.method static terminateBits(ILcom/google/zxing/common/BitArray;)V
    .locals 7
    .param p0, "numDataBytes"    # I
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 344
    mul-int/lit8 v0, p0, 0x8

    .line 345
    .local v0, "capacity":I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-le v4, v0, :cond_0

    .line 346
    new-instance v4, Lcom/google/zxing/WriterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data bits cannot fit in the QR Code"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 350
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-ge v4, v0, :cond_1

    .line 351
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    and-int/lit8 v2, v4, 0x7

    .line 356
    .local v2, "numBitsInLastByte":I
    if-lez v2, :cond_2

    .line 357
    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_2

    .line 358
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 362
    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v4

    sub-int v3, p0, v4

    .line 363
    .local v3, "numPaddingBytes":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_4

    .line 364
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_3

    const/16 v4, 0xec

    :goto_3
    invoke-virtual {p1, v4, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 364
    :cond_3
    const/16 v4, 0x11

    goto :goto_3

    .line 366
    :cond_4
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-eq v4, v0, :cond_5

    .line 367
    new-instance v4, Lcom/google/zxing/WriterException;

    const-string v5, "Bits size does not equal capacity"

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 369
    :cond_5
    return-void
.end method

.method static willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z
    .locals 6
    .param p0, "numInputBits"    # I
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .prologue
    .line 330
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v1

    .line 332
    .local v1, "numBytes":I
    invoke-virtual {p1, p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v0

    .line 333
    .local v0, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v3

    .line 335
    .local v3, "numEcBytes":I
    sub-int v2, v1, v3

    .line 336
    .local v2, "numDataBytes":I
    add-int/lit8 v5, p0, 0x7

    div-int/lit8 v4, v5, 0x8

    .line 337
    .local v4, "totalInputBytes":I
    if-lt v2, v4, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

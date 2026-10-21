.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_OPTIONAL_FIELD_ADDRESSEE:I = 0x4

.field private static final MACRO_PDF417_OPTIONAL_FIELD_CHECKSUM:I = 0x6

.field private static final MACRO_PDF417_OPTIONAL_FIELD_FILE_NAME:I = 0x0

.field private static final MACRO_PDF417_OPTIONAL_FIELD_FILE_SIZE:I = 0x5

.field private static final MACRO_PDF417_OPTIONAL_FIELD_SEGMENT_COUNT:I = 0x1

.field private static final MACRO_PDF417_OPTIONAL_FIELD_SENDER:I = 0x3

.field private static final MACRO_PDF417_OPTIONAL_FIELD_TIME_STAMP:I = 0x2

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 73
    const-string v2, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    .line 74
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 76
    const-string v2, "0123456789&\r\t,:#-.$/+%*=^"

    .line 77
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 86
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/math/BigInteger;

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 87
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x0

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v4, v2, v3

    .line 88
    const-wide/16 v2, 0x384

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 89
    .local v1, "nineHundred":Ljava/math/BigInteger;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 90
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 91
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method private static byteCompaction(I[IILcom/google/zxing/common/ECIStringBuilder;)I
    .locals 12
    .param p0, "mode"    # I
    .param p1, "codewords"    # [I
    .param p2, "codeIndex"    # I
    .param p3, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 570
    const/4 v3, 0x0

    .line 572
    .local v3, "end":Z
    :cond_0
    :goto_0
    const/4 v5, 0x0

    aget v5, p1, v5

    if-ge p2, v5, :cond_a

    if-nez v3, :cond_a

    .line 574
    :goto_1
    const/4 v5, 0x0

    aget v5, p1, v5

    if-ge p2, v5, :cond_1

    aget v5, p1, p2

    const/16 v8, 0x39f

    if-ne v5, v8, :cond_1

    .line 575
    add-int/lit8 p2, p2, 0x1

    aget v5, p1, p2

    invoke-virtual {p3, v5}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    .line 576
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 579
    :cond_1
    const/4 v5, 0x0

    aget v5, p1, v5

    if-ge p2, v5, :cond_2

    aget v5, p1, p2

    const/16 v8, 0x384

    if-lt v5, v8, :cond_3

    .line 580
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 583
    :cond_3
    const-wide/16 v6, 0x0

    .line 584
    .local v6, "value":J
    const/4 v2, 0x0

    .line 586
    .local v2, "count":I
    :goto_2
    const-wide/16 v8, 0x384

    mul-long/2addr v8, v6

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "codeIndex":I
    .local v1, "codeIndex":I
    aget v5, p1, p2

    int-to-long v10, v5

    add-long v6, v8, v10

    .line 587
    add-int/lit8 v2, v2, 0x1

    .line 588
    const/4 v5, 0x5

    if-ge v2, v5, :cond_4

    const/4 v5, 0x0

    aget v5, p1, v5

    if-ge v1, v5, :cond_4

    aget v5, p1, v1

    const/16 v8, 0x384

    if-lt v5, v8, :cond_b

    .line 591
    :cond_4
    const/4 v5, 0x5

    if-ne v2, v5, :cond_7

    const/16 v5, 0x39c

    if-eq p0, v5, :cond_5

    const/4 v5, 0x0

    aget v5, p1, v5

    if-ge v1, v5, :cond_7

    aget v5, p1, v1

    const/16 v8, 0x384

    if-ge v5, v8, :cond_7

    .line 594
    :cond_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    const/4 v5, 0x6

    if-ge v4, v5, :cond_6

    .line 595
    rsub-int/lit8 v5, v4, 0x5

    mul-int/lit8 v5, v5, 0x8

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    invoke-virtual {p3, v5}, Lcom/google/zxing/common/ECIStringBuilder;->append(B)V

    .line 594
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move p2, v1

    .end local v1    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    goto :goto_0

    .line 598
    .end local v4    # "i":I
    .end local p2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    :cond_7
    sub-int p2, v1, v2

    .line 599
    .end local v1    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    :goto_4
    const/4 v5, 0x0

    aget v5, p1, v5

    if-ge p2, v5, :cond_0

    if-nez v3, :cond_0

    .line 600
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    aget v0, p1, p2

    .line 601
    .local v0, "code":I
    const/16 v5, 0x384

    if-ge v0, v5, :cond_8

    .line 602
    int-to-byte v5, v0

    invoke-virtual {p3, v5}, Lcom/google/zxing/common/ECIStringBuilder;->append(B)V

    move p2, v1

    .end local v1    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    goto :goto_4

    .line 603
    .end local p2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    :cond_8
    const/16 v5, 0x39f

    if-ne v0, v5, :cond_9

    .line 604
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    aget v5, p1, v1

    invoke-virtual {p3, v5}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    goto :goto_4

    .line 606
    .end local p2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    :cond_9
    add-int/lit8 p2, v1, -0x1

    .line 607
    .end local v1    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    const/4 v3, 0x1

    goto :goto_4

    .line 613
    .end local v0    # "code":I
    .end local v2    # "count":I
    .end local v6    # "value":J
    :cond_a
    return p2

    .end local p2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    .restart local v2    # "count":I
    .restart local v6    # "value":J
    :cond_b
    move p2, v1

    .end local v1    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    goto :goto_2
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 8
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 101
    new-instance v4, Lcom/google/zxing/common/ECIStringBuilder;

    array-length v6, p0

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v4, v6}, Lcom/google/zxing/common/ECIStringBuilder;-><init>(I)V

    .line 102
    .local v4, "result":Lcom/google/zxing/common/ECIStringBuilder;
    const/4 v6, 0x1

    invoke-static {p0, v6, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v1

    .line 103
    .local v1, "codeIndex":I
    new-instance v5, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    .line 104
    .local v5, "resultMetadata":Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    :goto_0
    const/4 v6, 0x0

    aget v6, p0, v6

    if-ge v1, v6, :cond_0

    .line 105
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "codeIndex":I
    .local v2, "codeIndex":I
    aget v0, p0, v1

    .line 106
    .local v0, "code":I
    sparse-switch v0, :sswitch_data_0

    .line 142
    add-int/lit8 v1, v2, -0x1

    .line 143
    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    invoke-static {p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v1

    goto :goto_0

    .line 108
    .end local v1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_0
    invoke-static {p0, v2, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v1

    .line 109
    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    goto :goto_0

    .line 112
    .end local v1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_1
    invoke-static {v0, p0, v2, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v1

    .line 113
    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    goto :goto_0

    .line 115
    .end local v1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    aget v6, p0, v2

    int-to-char v6, v6

    invoke-virtual {v4, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_0

    .line 118
    .end local v1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_3
    invoke-static {p0, v2, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v1

    .line 119
    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    goto :goto_0

    .line 121
    .end local v1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_4
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    aget v6, p0, v2

    invoke-virtual {v4, v6}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    goto :goto_0

    .line 125
    .end local v1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_5
    add-int/lit8 v1, v2, 0x2

    .line 126
    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    goto :goto_0

    .line 129
    .end local v1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_6
    add-int/lit8 v1, v2, 0x1

    .line 130
    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    goto :goto_0

    .line 132
    .end local v1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_7
    invoke-static {p0, v2, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v1

    .line 133
    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    goto :goto_0

    .line 137
    .end local v1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 147
    .end local v0    # "code":I
    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    :cond_0
    invoke-virtual {v4}, Lcom/google/zxing/common/ECIStringBuilder;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->getFileId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 148
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 150
    :cond_1
    new-instance v3, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v4}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v7, v6, v7, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 151
    .local v3, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v3, v5}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    .line 152
    return-object v3

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_3
        0x391 -> :sswitch_2
        0x39a -> :sswitch_8
        0x39b -> :sswitch_8
        0x39c -> :sswitch_1
        0x39d -> :sswitch_6
        0x39e -> :sswitch_5
        0x39f -> :sswitch_4
        0x3a0 -> :sswitch_7
    .end sparse-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .param p0, "codewords"    # [I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 708
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 709
    .local v1, "result":Ljava/math/BigInteger;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 710
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v4, p1, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 713
    .local v2, "resultString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_1

    .line 714
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 716
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .locals 22
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "resultMetadata"    # Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 158
    add-int/lit8 v18, p1, 0x2

    const/16 v19, 0x0

    aget v19, p0, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 160
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v18

    throw v18

    .line 162
    :cond_0
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v14, v0, [I

    .line 163
    .local v14, "segmentIndexArray":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ge v9, v0, :cond_1

    .line 164
    aget v18, p0, p1

    aput v18, v14, v9

    .line 163
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 166
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-static {v14, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v15

    .line 167
    .local v15, "segmentIndexString":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 168
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 181
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v6, "fileId":Ljava/lang/StringBuilder;
    :goto_2
    const/16 v18, 0x0

    aget v18, p0, v18

    move/from16 v0, p1

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, p1

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget v18, p0, p1

    const/16 v19, 0x39a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    aget v18, p0, p1

    const/16 v19, 0x39b

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 186
    const-string v18, "%03d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v21, p0, p1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 171
    .end local v6    # "fileId":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_0
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 172
    :catch_0
    move-exception v10

    .line 174
    .local v10, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v18

    throw v18

    .line 189
    .end local v10    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v6    # "fileId":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-nez v18, :cond_4

    .line 191
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v18

    throw v18

    .line 193
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 195
    const/4 v12, -0x1

    .line 196
    .local v12, "optionalFieldsStart":I
    aget v18, p0, p1

    const/16 v19, 0x39b

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 197
    add-int/lit8 v12, p1, 0x1

    .line 200
    :cond_5
    :goto_3
    const/16 v18, 0x0

    aget v18, p0, v18

    move/from16 v0, p1

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 201
    aget v18, p0, p1

    packed-switch v18, :pswitch_data_0

    .line 265
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v18

    throw v18

    .line 203
    :pswitch_0
    add-int/lit8 p1, p1, 0x1

    .line 204
    aget v18, p0, p1

    packed-switch v18, :pswitch_data_1

    .line 257
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v18

    throw v18

    .line 206
    :pswitch_1
    new-instance v7, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v7}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 207
    .local v7, "fileName":Lcom/google/zxing/common/ECIStringBuilder;
    add-int/lit8 v18, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v7}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 208
    invoke-virtual {v7}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileName(Ljava/lang/String;)V

    goto :goto_3

    .line 211
    .end local v7    # "fileName":Lcom/google/zxing/common/ECIStringBuilder;
    :pswitch_2
    new-instance v16, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct/range {v16 .. v16}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 212
    .local v16, "sender":Lcom/google/zxing/common/ECIStringBuilder;
    add-int/lit8 v18, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 213
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSender(Ljava/lang/String;)V

    goto :goto_3

    .line 216
    .end local v16    # "sender":Lcom/google/zxing/common/ECIStringBuilder;
    :pswitch_3
    new-instance v4, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v4}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 217
    .local v4, "addressee":Lcom/google/zxing/common/ECIStringBuilder;
    add-int/lit8 v18, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 218
    invoke-virtual {v4}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setAddressee(Ljava/lang/String;)V

    goto :goto_3

    .line 221
    .end local v4    # "addressee":Lcom/google/zxing/common/ECIStringBuilder;
    :pswitch_4
    new-instance v13, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v13}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 222
    .local v13, "segmentCount":Lcom/google/zxing/common/ECIStringBuilder;
    add-int/lit8 v18, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v13}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 224
    :try_start_1
    invoke-virtual {v13}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentCount(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 225
    :catch_1
    move-exception v10

    .line 226
    .restart local v10    # "nfe":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v18

    throw v18

    .line 230
    .end local v10    # "nfe":Ljava/lang/NumberFormatException;
    .end local v13    # "segmentCount":Lcom/google/zxing/common/ECIStringBuilder;
    :pswitch_5
    new-instance v17, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct/range {v17 .. v17}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 231
    .local v17, "timestamp":Lcom/google/zxing/common/ECIStringBuilder;
    add-int/lit8 v18, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 233
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setTimestamp(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 234
    :catch_2
    move-exception v10

    .line 235
    .restart local v10    # "nfe":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v18

    throw v18

    .line 239
    .end local v10    # "nfe":Ljava/lang/NumberFormatException;
    .end local v17    # "timestamp":Lcom/google/zxing/common/ECIStringBuilder;
    :pswitch_6
    new-instance v5, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v5}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 240
    .local v5, "checksum":Lcom/google/zxing/common/ECIStringBuilder;
    add-int/lit8 v18, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 242
    :try_start_3
    invoke-virtual {v5}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setChecksum(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    .line 243
    :catch_3
    move-exception v10

    .line 244
    .restart local v10    # "nfe":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v18

    throw v18

    .line 248
    .end local v5    # "checksum":Lcom/google/zxing/common/ECIStringBuilder;
    .end local v10    # "nfe":Ljava/lang/NumberFormatException;
    :pswitch_7
    new-instance v8, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v8}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 249
    .local v8, "fileSize":Lcom/google/zxing/common/ECIStringBuilder;
    add-int/lit8 v18, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 251
    :try_start_4
    invoke-virtual {v8}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileSize(J)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_3

    .line 252
    :catch_4
    move-exception v10

    .line 253
    .restart local v10    # "nfe":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v18

    throw v18

    .line 261
    .end local v8    # "fileSize":Lcom/google/zxing/common/ECIStringBuilder;
    .end local v10    # "nfe":Ljava/lang/NumberFormatException;
    :pswitch_8
    add-int/lit8 p1, p1, 0x1

    .line 262
    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    goto/16 :goto_3

    .line 270
    :cond_6
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_8

    .line 271
    sub-int v11, p1, v12

    .line 272
    .local v11, "optionalFieldsLength":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->isLastSegment()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 274
    add-int/lit8 v11, v11, -0x1

    .line 276
    :cond_7
    if-lez v11, :cond_8

    .line 277
    add-int v18, v12, v11

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v12, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    .line 282
    .end local v11    # "optionalFieldsLength":I
    :cond_8
    return p1

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_8
        :pswitch_0
    .end packed-switch

    .line 204
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private static decodeTextCompaction([I[IILcom/google/zxing/common/ECIStringBuilder;Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    .locals 10
    .param p0, "textCompactionData"    # [I
    .param p1, "byteCompactionData"    # [I
    .param p2, "length"    # I
    .param p3, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .param p4, "startMode"    # Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .prologue
    const/16 v9, 0x1d

    const/16 v8, 0x1a

    .line 381
    move-object v4, p4

    .line 382
    .local v4, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    move-object v3, p4

    .line 383
    .local v3, "priorToShiftMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    move-object v2, p4

    .line 384
    .local v2, "latchedMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    const/4 v1, 0x0

    .line 385
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_7

    .line 386
    aget v5, p0, v1

    .line 387
    .local v5, "subModeCh":I
    const/4 v0, 0x0

    .line 388
    .local v0, "ch":C
    sget-object v6, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 546
    :goto_1
    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {p3, v0}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 550
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 551
    goto :goto_0

    .line 391
    :pswitch_0
    if-ge v5, v8, :cond_1

    .line 393
    add-int/lit8 v6, v5, 0x41

    int-to-char v0, v6

    goto :goto_1

    .line 395
    :cond_1
    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    .line 397
    :sswitch_0
    const/16 v0, 0x20

    .line 398
    goto :goto_1

    .line 400
    :sswitch_1
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 401
    move-object v2, v4

    .line 402
    goto :goto_1

    .line 404
    :sswitch_2
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 405
    move-object v2, v4

    .line 406
    goto :goto_1

    .line 409
    :sswitch_3
    move-object v3, v4

    .line 410
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 411
    goto :goto_1

    .line 413
    :sswitch_4
    aget v6, p1, v1

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_1

    .line 416
    :sswitch_5
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 417
    move-object v2, v4

    goto :goto_1

    .line 425
    :pswitch_1
    if-ge v5, v8, :cond_2

    .line 426
    add-int/lit8 v6, v5, 0x61

    int-to-char v0, v6

    goto :goto_1

    .line 428
    :cond_2
    sparse-switch v5, :sswitch_data_1

    goto :goto_1

    .line 430
    :sswitch_6
    const/16 v0, 0x20

    .line 431
    goto :goto_1

    .line 434
    :sswitch_7
    move-object v3, v4

    .line 435
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 436
    goto :goto_1

    .line 438
    :sswitch_8
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 439
    move-object v2, v4

    .line 440
    goto :goto_1

    .line 443
    :sswitch_9
    move-object v3, v4

    .line 444
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 445
    goto :goto_1

    .line 447
    :sswitch_a
    aget v6, p1, v1

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_1

    .line 450
    :sswitch_b
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 451
    move-object v2, v4

    goto :goto_1

    .line 459
    :pswitch_2
    const/16 v6, 0x19

    if-ge v5, v6, :cond_3

    .line 460
    sget-object v6, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v0, v6, v5

    goto :goto_1

    .line 462
    :cond_3
    sparse-switch v5, :sswitch_data_2

    goto :goto_1

    .line 464
    :sswitch_c
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 465
    move-object v2, v4

    .line 466
    goto :goto_1

    .line 468
    :sswitch_d
    const/16 v0, 0x20

    .line 469
    goto :goto_1

    .line 471
    :sswitch_e
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 472
    move-object v2, v4

    .line 473
    goto :goto_1

    .line 476
    :sswitch_f
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 477
    move-object v2, v4

    .line 478
    goto :goto_1

    .line 481
    :sswitch_10
    move-object v3, v4

    .line 482
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 483
    goto :goto_1

    .line 485
    :sswitch_11
    aget v6, p1, v1

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_1

    .line 493
    :pswitch_3
    if-ge v5, v9, :cond_4

    .line 494
    sget-object v6, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v6, v5

    goto :goto_1

    .line 496
    :cond_4
    sparse-switch v5, :sswitch_data_3

    goto/16 :goto_1

    .line 499
    :sswitch_12
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 500
    move-object v2, v4

    .line 501
    goto/16 :goto_1

    .line 503
    :sswitch_13
    aget v6, p1, v1

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto/16 :goto_1

    .line 511
    :pswitch_4
    move-object v4, v3

    .line 512
    if-ge v5, v8, :cond_5

    .line 513
    add-int/lit8 v6, v5, 0x41

    int-to-char v0, v6

    goto/16 :goto_1

    .line 515
    :cond_5
    sparse-switch v5, :sswitch_data_4

    goto/16 :goto_1

    .line 517
    :sswitch_14
    const/16 v0, 0x20

    .line 518
    goto/16 :goto_1

    .line 520
    :sswitch_15
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 528
    :pswitch_5
    move-object v4, v3

    .line 529
    if-ge v5, v9, :cond_6

    .line 530
    sget-object v6, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v6, v5

    goto/16 :goto_1

    .line 532
    :cond_6
    sparse-switch v5, :sswitch_data_5

    goto/16 :goto_1

    .line 535
    :sswitch_16
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 536
    goto/16 :goto_1

    .line 540
    :sswitch_17
    aget v6, p1, v1

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto/16 :goto_1

    .line 552
    .end local v0    # "ch":C
    .end local v5    # "subModeCh":I
    :cond_7
    return-object v2

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 395
    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0x1b -> :sswitch_1
        0x1c -> :sswitch_2
        0x1d -> :sswitch_3
        0x384 -> :sswitch_5
        0x391 -> :sswitch_4
    .end sparse-switch

    .line 428
    :sswitch_data_1
    .sparse-switch
        0x1a -> :sswitch_6
        0x1b -> :sswitch_7
        0x1c -> :sswitch_8
        0x1d -> :sswitch_9
        0x384 -> :sswitch_b
        0x391 -> :sswitch_a
    .end sparse-switch

    .line 462
    :sswitch_data_2
    .sparse-switch
        0x19 -> :sswitch_c
        0x1a -> :sswitch_d
        0x1b -> :sswitch_e
        0x1c -> :sswitch_f
        0x1d -> :sswitch_10
        0x384 -> :sswitch_f
        0x391 -> :sswitch_11
    .end sparse-switch

    .line 496
    :sswitch_data_3
    .sparse-switch
        0x1d -> :sswitch_12
        0x384 -> :sswitch_12
        0x391 -> :sswitch_13
    .end sparse-switch

    .line 515
    :sswitch_data_4
    .sparse-switch
        0x1a -> :sswitch_14
        0x384 -> :sswitch_15
    .end sparse-switch

    .line 532
    :sswitch_data_5
    .sparse-switch
        0x1d -> :sswitch_16
        0x384 -> :sswitch_16
        0x391 -> :sswitch_17
    .end sparse-switch
.end method

.method private static numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I
    .locals 7
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 625
    const/4 v2, 0x0

    .line 626
    .local v2, "count":I
    const/4 v3, 0x0

    .line 628
    .local v3, "end":Z
    const/16 v5, 0xf

    new-array v4, v5, [I

    .line 630
    .local v4, "numericCodewords":[I
    :cond_0
    :goto_0
    aget v5, p0, v6

    if-ge p1, v5, :cond_4

    if-nez v3, :cond_4

    .line 631
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v1, "codeIndex":I
    aget v0, p0, p1

    .line 632
    .local v0, "code":I
    aget v5, p0, v6

    if-ne v1, v5, :cond_1

    .line 633
    const/4 v3, 0x1

    .line 635
    :cond_1
    const/16 v5, 0x384

    if-ge v0, v5, :cond_3

    .line 636
    aput v0, v4, v2

    .line 637
    add-int/lit8 v2, v2, 0x1

    move p1, v1

    .line 652
    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    :goto_1
    rem-int/lit8 v5, v2, 0xf

    if-eqz v5, :cond_2

    const/16 v5, 0x386

    if-eq v0, v5, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    if-lez v2, :cond_0

    .line 657
    invoke-static {v4, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/google/zxing/common/ECIStringBuilder;->append(Ljava/lang/String;)V

    .line 658
    const/4 v2, 0x0

    goto :goto_0

    .line 639
    .end local p1    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    :cond_3
    sparse-switch v0, :sswitch_data_0

    move p1, v1

    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_1

    .line 647
    .end local p1    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    :sswitch_0
    add-int/lit8 p1, v1, -0x1

    .line 648
    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    goto :goto_1

    .line 661
    .end local v0    # "code":I
    :cond_4
    return p1

    .line 639
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_0
        0x39a -> :sswitch_0
        0x39b -> :sswitch_0
        0x39c -> :sswitch_0
        0x39f -> :sswitch_0
        0x3a0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I
    .locals 12
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x384

    const/4 v10, 0x0

    .line 297
    aget v8, p0, v10

    sub-int/2addr v8, p1

    mul-int/lit8 v8, v8, 0x2

    new-array v7, v8, [I

    .line 299
    .local v7, "textCompactionData":[I
    aget v8, p0, v10

    sub-int/2addr v8, p1

    mul-int/lit8 v8, v8, 0x2

    new-array v0, v8, [I

    .line 301
    .local v0, "byteCompactionData":[I
    const/4 v4, 0x0

    .line 302
    .local v4, "index":I
    const/4 v3, 0x0

    .line 303
    .local v3, "end":Z
    sget-object v6, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 304
    .local v6, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    :goto_0
    aget v8, p0, v10

    if-ge p1, v8, :cond_2

    if-nez v3, :cond_2

    .line 305
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v2, "codeIndex":I
    aget v1, p0, p1

    .line 306
    .local v1, "code":I
    if-ge v1, v11, :cond_0

    .line 307
    div-int/lit8 v8, v1, 0x1e

    aput v8, v7, v4

    .line 308
    add-int/lit8 v8, v4, 0x1

    rem-int/lit8 v9, v1, 0x1e

    aput v9, v7, v8

    .line 309
    add-int/lit8 v4, v4, 0x2

    move p1, v2

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_0

    .line 311
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :cond_0
    sparse-switch v1, :sswitch_data_0

    move p1, v2

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_0

    .line 314
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_0
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aput v11, v7, v4

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    move p1, v2

    .line 315
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_0

    .line 322
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_1
    add-int/lit8 p1, v2, -0x1

    .line 323
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    .line 324
    goto :goto_0

    .line 332
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_2
    const/16 v8, 0x391

    aput v8, v7, v4

    .line 333
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    aget v1, p0, v2

    .line 334
    aput v1, v0, v4

    .line 335
    add-int/lit8 v4, v4, 0x1

    .line 336
    goto :goto_0

    .line 338
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_3
    invoke-static {v7, v0, v4, p2, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILcom/google/zxing/common/ECIStringBuilder;Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-result-object v6

    .line 339
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    aget v8, p0, v2

    invoke-virtual {p2, v8}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    .line 340
    aget v8, p0, v10

    if-le p1, v8, :cond_1

    .line 341
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    .line 343
    :cond_1
    aget v8, p0, v10

    sub-int/2addr v8, p1

    mul-int/lit8 v8, v8, 0x2

    new-array v7, v8, [I

    .line 344
    aget v8, p0, v10

    sub-int/2addr v8, p1

    mul-int/lit8 v8, v8, 0x2

    new-array v0, v8, [I

    .line 345
    const/4 v4, 0x0

    goto :goto_0

    .line 350
    .end local v1    # "code":I
    :cond_2
    invoke-static {v7, v0, v4, p2, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILcom/google/zxing/common/ECIStringBuilder;Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 351
    return p1

    .line 311
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_1
        0x391 -> :sswitch_2
        0x39a -> :sswitch_1
        0x39b -> :sswitch_1
        0x39c -> :sswitch_1
        0x39f -> :sswitch_3
        0x3a0 -> :sswitch_1
    .end sparse-switch
.end method

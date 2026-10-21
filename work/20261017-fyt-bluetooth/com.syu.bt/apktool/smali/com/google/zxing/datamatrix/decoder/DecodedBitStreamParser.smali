.class final Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final C40_BASIC_SET_CHARS:[C

.field private static final C40_SHIFT2_SET_CHARS:[C

.field private static final TEXT_BASIC_SET_CHARS:[C

.field private static final TEXT_SHIFT2_SET_CHARS:[C

.field private static final TEXT_SHIFT3_SET_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 57
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    .line 63
    const/16 v0, 0x1b

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    .line 72
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    .line 79
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    .line 81
    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    return-void

    .line 57
    nop

    :array_0
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    .line 63
    :array_1
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
    .end array-data

    .line 72
    nop

    :array_2
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    .line 81
    :array_3
    .array-data 2
        0x60s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method static decode([B)Lcom/google/zxing/common/DecoderResult;
    .locals 15
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v14, 0x5

    const/4 v13, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v6, Lcom/google/zxing/common/BitSource;

    invoke-direct {v6, p0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 91
    .local v6, "bits":Lcom/google/zxing/common/BitSource;
    new-instance v11, Lcom/google/zxing/common/ECIStringBuilder;

    const/16 v0, 0x64

    invoke-direct {v11, v0}, Lcom/google/zxing/common/ECIStringBuilder;-><init>(I)V

    .line 92
    .local v11, "result":Lcom/google/zxing/common/ECIStringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 93
    .local v12, "resultTrailer":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .local v7, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v10, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 96
    .local v10, "mode":Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 98
    .local v8, "fnc1Positions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 100
    .local v9, "isECIencoded":Z
    :cond_0
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-ne v10, v0, :cond_4

    .line 101
    invoke-static {v6, v11, v12, v8}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/lang/StringBuilder;Ljava/util/Set;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-result-object v10

    .line 128
    :goto_0
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-eq v10, v0, :cond_1

    invoke-virtual {v6}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    if-gtz v0, :cond_0

    .line 129
    :cond_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 130
    invoke-virtual {v11, v12}, Lcom/google/zxing/common/ECIStringBuilder;->appendCharacters(Ljava/lang/StringBuilder;)V

    .line 132
    :cond_2
    if-eqz v9, :cond_8

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 136
    :cond_3
    const/4 v5, 0x5

    .line 152
    .local v5, "symbologyModifier":I
    :goto_1
    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    .line 153
    invoke-virtual {v11}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v3, v4

    :goto_2
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    .line 152
    return-object v0

    .line 103
    .end local v5    # "symbologyModifier":I
    :cond_4
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v10}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 124
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 105
    :pswitch_0
    invoke-static {v6, v11, v8}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeC40Segment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/util/Set;)V

    .line 126
    :goto_3
    sget-object v10, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_0

    .line 108
    :pswitch_1
    invoke-static {v6, v11, v8}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeTextSegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/util/Set;)V

    goto :goto_3

    .line 111
    :pswitch_2
    invoke-static {v6, v11}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;)V

    goto :goto_3

    .line 114
    :pswitch_3
    invoke-static {v6, v11}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;)V

    goto :goto_3

    .line 117
    :pswitch_4
    invoke-static {v6, v11, v7}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeBase256Segment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/util/Collection;)V

    goto :goto_3

    .line 120
    :pswitch_5
    invoke-static {v6, v11}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeECISegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;)V

    .line 121
    const/4 v9, 0x1

    .line 122
    goto :goto_3

    .line 137
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 138
    :cond_6
    const/4 v5, 0x6

    .restart local v5    # "symbologyModifier":I
    goto :goto_1

    .line 140
    .end local v5    # "symbologyModifier":I
    :cond_7
    const/4 v5, 0x4

    .restart local v5    # "symbologyModifier":I
    goto :goto_1

    .line 143
    .end local v5    # "symbologyModifier":I
    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 144
    :cond_9
    const/4 v5, 0x2

    .restart local v5    # "symbologyModifier":I
    goto :goto_1

    .line 145
    .end local v5    # "symbologyModifier":I
    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 146
    :cond_b
    const/4 v5, 0x3

    .restart local v5    # "symbologyModifier":I
    goto :goto_1

    .line 148
    .end local v5    # "symbologyModifier":I
    :cond_c
    const/4 v5, 0x1

    .restart local v5    # "symbologyModifier":I
    goto/16 :goto_1

    :cond_d
    move-object v3, v7

    .line 154
    goto :goto_2

    .line 103
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

.method private static decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;)V
    .locals 7
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/16 v5, 0x8

    .line 430
    new-array v1, v6, [I

    .line 433
    .local v1, "cValues":[I
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 470
    :cond_1
    :goto_0
    return-void

    .line 436
    :cond_2
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 437
    .local v2, "firstByte":I
    const/16 v4, 0xfe

    if-eq v2, v4, :cond_1

    .line 441
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    invoke-static {v2, v4, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 443
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_5

    .line 444
    aget v0, v1, v3

    .line 445
    .local v0, "cValue":I
    packed-switch v0, :pswitch_data_0

    .line 459
    const/16 v4, 0xe

    if-ge v0, v4, :cond_3

    .line 460
    add-int/lit8 v4, v0, 0x2c

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 443
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 447
    :pswitch_0
    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_2

    .line 450
    :pswitch_1
    const/16 v4, 0x2a

    invoke-virtual {p1, v4}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_2

    .line 453
    :pswitch_2
    const/16 v4, 0x3e

    invoke-virtual {p1, v4}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_2

    .line 456
    :pswitch_3
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_2

    .line 461
    :cond_3
    const/16 v4, 0x28

    if-ge v0, v4, :cond_4

    .line 462
    add-int/lit8 v4, v0, 0x33

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_2

    .line 464
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 469
    .end local v0    # "cValue":I
    :cond_5
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/lang/StringBuilder;Ljava/util/Set;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    .locals 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .param p2, "resultTrailer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Lcom/google/zxing/common/ECIStringBuilder;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .local p3, "fnc1positions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 166
    const/4 v1, 0x0

    .line 168
    .local v1, "upperShift":Z
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    .line 169
    .local v0, "oneByte":I
    if-nez v0, :cond_1

    .line 170
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 171
    :cond_1
    const/16 v3, 0x80

    if-gt v0, v3, :cond_3

    .line 172
    if-eqz v1, :cond_2

    .line 173
    add-int/lit16 v0, v0, 0x80

    .line 176
    :cond_2
    add-int/lit8 v3, v0, -0x1

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 177
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 230
    :goto_0
    return-object v3

    .line 178
    :cond_3
    const/16 v3, 0x81

    if-ne v0, v3, :cond_4

    .line 179
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_0

    .line 180
    :cond_4
    const/16 v3, 0xe5

    if-gt v0, v3, :cond_7

    .line 181
    add-int/lit16 v2, v0, -0x82

    .line 182
    .local v2, "value":I
    const/16 v3, 0xa

    if-ge v2, v3, :cond_5

    .line 183
    const/16 v3, 0x30

    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 185
    :cond_5
    invoke-virtual {p1, v2}, Lcom/google/zxing/common/ECIStringBuilder;->append(I)V

    .line 229
    .end local v2    # "value":I
    :cond_6
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-gtz v3, :cond_0

    .line 230
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_0

    .line 187
    :cond_7
    packed-switch v0, :pswitch_data_0

    .line 223
    const/16 v3, 0xfe

    if-ne v0, v3, :cond_8

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-eqz v3, :cond_6

    .line 224
    :cond_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 189
    :pswitch_1
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->C40_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_0

    .line 191
    :pswitch_2
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->BASE256_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_0

    .line 193
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/zxing/common/ECIStringBuilder;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    const/16 v3, 0x1d

    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_1

    .line 202
    :pswitch_4
    const/4 v1, 0x1

    .line 203
    goto :goto_1

    .line 205
    :pswitch_5
    const-string v3, "[)>\u001e05\u001d"

    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(Ljava/lang/String;)V

    .line 206
    const-string v3, "\u001e\u0004"

    invoke-virtual {p2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 209
    :pswitch_6
    const-string v3, "[)>\u001e06\u001d"

    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(Ljava/lang/String;)V

    .line 210
    const-string v3, "\u001e\u0004"

    invoke-virtual {p2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 213
    :pswitch_7
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ANSIX12_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_0

    .line 215
    :pswitch_8
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->TEXT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_0

    .line 217
    :pswitch_9
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->EDIFACT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_0

    .line 219
    :pswitch_a
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ECI_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0xe6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static decodeBase256Segment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/util/Collection;)V
    .locals 9
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Lcom/google/zxing/common/ECIStringBuilder;",
            "Ljava/util/Collection",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .local p2, "byteSegments":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    const/16 v8, 0x8

    .line 521
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->getByteOffset()I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    .line 522
    .local v1, "codewordPosition":I
    invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "codewordPosition":I
    .local v2, "codewordPosition":I
    invoke-static {v6, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v4

    .line 524
    .local v4, "d1":I
    if-nez v4, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    div-int/lit8 v3, v6, 0x8

    .local v3, "count":I
    move v1, v2

    .line 533
    .end local v2    # "codewordPosition":I
    .restart local v1    # "codewordPosition":I
    :goto_0
    if-gez v3, :cond_2

    .line 534
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 526
    .end local v1    # "codewordPosition":I
    .end local v3    # "count":I
    .restart local v2    # "codewordPosition":I
    :cond_0
    const/16 v6, 0xfa

    if-ge v4, v6, :cond_1

    .line 527
    move v3, v4

    .restart local v3    # "count":I
    move v1, v2

    .end local v2    # "codewordPosition":I
    .restart local v1    # "codewordPosition":I
    goto :goto_0

    .line 529
    .end local v1    # "codewordPosition":I
    .end local v3    # "count":I
    .restart local v2    # "codewordPosition":I
    :cond_1
    add-int/lit16 v6, v4, -0xf9

    mul-int/lit16 v6, v6, 0xfa

    invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "codewordPosition":I
    .restart local v1    # "codewordPosition":I
    invoke-static {v7, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v7

    add-int v3, v6, v7

    .restart local v3    # "count":I
    goto :goto_0

    .line 537
    :cond_2
    new-array v0, v3, [B

    .line 538
    .local v0, "bytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    move v2, v1

    .end local v1    # "codewordPosition":I
    .restart local v2    # "codewordPosition":I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 541
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-ge v6, v8, :cond_3

    .line 542
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 544
    :cond_3
    invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "codewordPosition":I
    .restart local v1    # "codewordPosition":I
    invoke-static {v6, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 538
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .end local v1    # "codewordPosition":I
    .restart local v2    # "codewordPosition":I
    goto :goto_1

    .line 546
    :cond_4
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 547
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method private static decodeC40Segment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/util/Set;)V
    .locals 10
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Lcom/google/zxing/common/ECIStringBuilder;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .local p2, "fnc1positions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/16 v9, 0x8

    const/4 v8, 0x3

    .line 241
    const/4 v6, 0x0

    .line 243
    .local v6, "upperShift":Z
    new-array v2, v8, [I

    .line 244
    .local v2, "cValues":[I
    const/4 v5, 0x0

    .line 248
    .local v5, "shift":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 323
    :cond_1
    :goto_0
    return-void

    .line 251
    :cond_2
    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 252
    .local v3, "firstByte":I
    const/16 v7, 0xfe

    if-eq v3, v7, :cond_1

    .line 256
    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    invoke-static {v3, v7, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 258
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v8, :cond_a

    .line 259
    aget v1, v2, v4

    .line 260
    .local v1, "cValue":I
    packed-switch v5, :pswitch_data_0

    .line 319
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 262
    :pswitch_0
    if-ge v1, v8, :cond_3

    .line 263
    add-int/lit8 v5, v1, 0x1

    .line 258
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 264
    :cond_3
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    array-length v7, v7

    if-ge v1, v7, :cond_5

    .line 265
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    aget-char v0, v7, v1

    .line 266
    .local v0, "c40char":C
    if-eqz v6, :cond_4

    .line 267
    add-int/lit16 v7, v0, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 268
    const/4 v6, 0x0

    goto :goto_2

    .line 270
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_2

    .line 273
    .end local v0    # "c40char":C
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 277
    :pswitch_1
    if-eqz v6, :cond_6

    .line 278
    add-int/lit16 v7, v1, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 279
    const/4 v6, 0x0

    .line 283
    :goto_3
    const/4 v5, 0x0

    .line 284
    goto :goto_2

    .line 281
    :cond_6
    int-to-char v7, v1

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_3

    .line 286
    :pswitch_2
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v7, v7

    if-ge v1, v7, :cond_8

    .line 287
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v0, v7, v1

    .line 288
    .restart local v0    # "c40char":C
    if-eqz v6, :cond_7

    .line 289
    add-int/lit16 v7, v0, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 290
    const/4 v6, 0x0

    .line 307
    .end local v0    # "c40char":C
    :goto_4
    const/4 v5, 0x0

    .line 308
    goto :goto_2

    .line 292
    .restart local v0    # "c40char":C
    :cond_7
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_4

    .line 295
    .end local v0    # "c40char":C
    :cond_8
    packed-switch v1, :pswitch_data_1

    .line 304
    :pswitch_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 297
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/zxing/common/ECIStringBuilder;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    const/16 v7, 0x1d

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_4

    .line 301
    :pswitch_5
    const/4 v6, 0x1

    .line 302
    goto :goto_4

    .line 310
    :pswitch_6
    if-eqz v6, :cond_9

    .line 311
    add-int/lit16 v7, v1, 0xe0

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 312
    const/4 v6, 0x0

    .line 316
    :goto_5
    const/4 v5, 0x0

    .line 317
    goto :goto_2

    .line 314
    :cond_9
    add-int/lit8 v7, v1, 0x60

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_5

    .line 322
    .end local v1    # "cValue":I
    :cond_a
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    if-gtz v7, :cond_0

    goto/16 :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 295
    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static decodeECISegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;)V
    .locals 3
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 556
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 557
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 559
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    .line 560
    .local v0, "c1":I
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1

    .line 561
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    .line 577
    :cond_1
    return-void
.end method

.method private static decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;)V
    .locals 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Lcom/google/zxing/common/ECIStringBuilder;

    .prologue
    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    const/16 v4, 0x10

    if-gt v3, v4, :cond_2

    .line 511
    :cond_1
    :goto_0
    return-void

    .line 492
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_5

    .line 493
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 496
    .local v1, "edifactValue":I
    const/16 v3, 0x1f

    if-ne v1, v3, :cond_3

    .line 498
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->getBitOffset()I

    move-result v3

    rsub-int/lit8 v0, v3, 0x8

    .line 499
    .local v0, "bitsLeft":I
    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    .line 500
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    goto :goto_0

    .line 505
    .end local v0    # "bitsLeft":I
    :cond_3
    and-int/lit8 v3, v1, 0x20

    if-nez v3, :cond_4

    .line 506
    or-int/lit8 v1, v1, 0x40

    .line 508
    :cond_4
    int-to-char v3, v1

    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 510
    .end local v1    # "edifactValue":I
    :cond_5
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_0
.end method

.method private static decodeTextSegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/util/Set;)V
    .locals 10
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Lcom/google/zxing/common/ECIStringBuilder;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .local p2, "fnc1positions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/16 v9, 0x8

    const/4 v8, 0x3

    .line 333
    const/4 v6, 0x0

    .line 335
    .local v6, "upperShift":Z
    new-array v1, v8, [I

    .line 336
    .local v1, "cValues":[I
    const/4 v4, 0x0

    .line 339
    .local v4, "shift":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 420
    :cond_1
    :goto_0
    return-void

    .line 342
    :cond_2
    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 343
    .local v2, "firstByte":I
    const/16 v7, 0xfe

    if-eq v2, v7, :cond_1

    .line 347
    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    invoke-static {v2, v7, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 349
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_b

    .line 350
    aget v0, v1, v3

    .line 351
    .local v0, "cValue":I
    packed-switch v4, :pswitch_data_0

    .line 416
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 353
    :pswitch_0
    if-ge v0, v8, :cond_3

    .line 354
    add-int/lit8 v4, v0, 0x1

    .line 349
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 355
    :cond_3
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    array-length v7, v7

    if-ge v0, v7, :cond_5

    .line 356
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    aget-char v5, v7, v0

    .line 357
    .local v5, "textChar":C
    if-eqz v6, :cond_4

    .line 358
    add-int/lit16 v7, v5, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 359
    const/4 v6, 0x0

    goto :goto_2

    .line 361
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_2

    .line 364
    .end local v5    # "textChar":C
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 368
    :pswitch_1
    if-eqz v6, :cond_6

    .line 369
    add-int/lit16 v7, v0, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 370
    const/4 v6, 0x0

    .line 374
    :goto_3
    const/4 v4, 0x0

    .line 375
    goto :goto_2

    .line 372
    :cond_6
    int-to-char v7, v0

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_3

    .line 378
    :pswitch_2
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    array-length v7, v7

    if-ge v0, v7, :cond_8

    .line 379
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    aget-char v5, v7, v0

    .line 380
    .restart local v5    # "textChar":C
    if-eqz v6, :cond_7

    .line 381
    add-int/lit16 v7, v5, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 382
    const/4 v6, 0x0

    .line 399
    .end local v5    # "textChar":C
    :goto_4
    const/4 v4, 0x0

    .line 400
    goto :goto_2

    .line 384
    .restart local v5    # "textChar":C
    :cond_7
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_4

    .line 387
    .end local v5    # "textChar":C
    :cond_8
    packed-switch v0, :pswitch_data_1

    .line 396
    :pswitch_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 389
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/zxing/common/ECIStringBuilder;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 390
    const/16 v7, 0x1d

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_4

    .line 393
    :pswitch_5
    const/4 v6, 0x1

    .line 394
    goto :goto_4

    .line 402
    :pswitch_6
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    array-length v7, v7

    if-ge v0, v7, :cond_a

    .line 403
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    aget-char v5, v7, v0

    .line 404
    .restart local v5    # "textChar":C
    if-eqz v6, :cond_9

    .line 405
    add-int/lit16 v7, v5, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 406
    const/4 v6, 0x0

    .line 410
    :goto_5
    const/4 v4, 0x0

    .line 411
    goto :goto_2

    .line 408
    :cond_9
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_5

    .line 412
    .end local v5    # "textChar":C
    :cond_a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 419
    .end local v0    # "cValue":I
    :cond_b
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    if-gtz v7, :cond_0

    goto/16 :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 387
    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static parseTwoBytes(II[I)V
    .locals 4
    .param p0, "firstByte"    # I
    .param p1, "secondByte"    # I
    .param p2, "result"    # [I

    .prologue
    .line 473
    shl-int/lit8 v2, p0, 0x8

    add-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    .line 474
    .local v0, "fullBitValue":I
    div-int/lit16 v1, v0, 0x640

    .line 475
    .local v1, "temp":I
    const/4 v2, 0x0

    aput v1, p2, v2

    .line 476
    mul-int/lit16 v2, v1, 0x640

    sub-int/2addr v0, v2

    .line 477
    div-int/lit8 v1, v0, 0x28

    .line 478
    const/4 v2, 0x1

    aput v1, p2, v2

    .line 479
    const/4 v2, 0x2

    mul-int/lit8 v3, v1, 0x28

    sub-int v3, v0, v3

    aput v3, p2, v2

    .line 480
    return-void
.end method

.method private static unrandomize255State(II)I
    .locals 3
    .param p0, "randomizedBase256Codeword"    # I
    .param p1, "base256CodewordPosition"    # I

    .prologue
    .line 585
    mul-int/lit16 v2, p1, 0x95

    rem-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v2, 0x1

    .line 586
    .local v0, "pseudoRandomNumber":I
    sub-int v1, p0, v0

    .line 587
    .local v1, "tempVariable":I
    if-ltz v1, :cond_0

    .end local v1    # "tempVariable":I
    :goto_0
    return v1

    .restart local v1    # "tempVariable":I
    :cond_0
    add-int/lit16 v1, v1, 0x100

    goto :goto_0
.end method

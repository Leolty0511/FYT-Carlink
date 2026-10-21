.class final Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ALPHANUMERIC_CHARS:[C

.field private static final GB2312_SUBSET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 23
    .param p0, "bytes"    # [B
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/zxing/qrcode/decoder/Version;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 56
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v2, Lcom/google/zxing/common/BitSource;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 57
    .local v2, "bits":Lcom/google/zxing/common/BitSource;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v7, 0x32

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 58
    .local v3, "result":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .local v6, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v12, -0x1

    .line 60
    .local v12, "symbolSequence":I
    const/4 v13, -0x1

    .line 64
    .local v13, "parityData":I
    const/4 v5, 0x0

    .line 65
    .local v5, "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    const/16 v16, 0x0

    .line 66
    .local v16, "fc1InEffect":Z
    const/16 v17, 0x0

    .line 67
    .local v17, "hasFNC1first":Z
    const/16 v18, 0x0

    .line 71
    .local v18, "hasFNC1second":Z
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_1

    .line 73
    sget-object v20, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 77
    .local v20, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :goto_0
    sget-object v7, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 119
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    .line 120
    .local v4, "count":I
    sget-object v7, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    .line 134
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v4    # "count":I
    .end local v20    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :catch_0
    move-exception v19

    .line 160
    .local v19, "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 75
    .end local v19    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_1
    const/4 v7, 0x4

    :try_start_1
    invoke-virtual {v2, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    invoke-static {v7}, Lcom/google/zxing/qrcode/decoder/Mode;->forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v20

    .restart local v20    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    goto :goto_0

    .line 81
    :pswitch_0
    const/16 v17, 0x1

    .line 83
    const/16 v16, 0x1

    .line 138
    :cond_2
    :goto_1
    :pswitch_1
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v0, v20

    if-ne v0, v7, :cond_0

    .line 140
    if-eqz v5, :cond_6

    .line 141
    if-eqz v17, :cond_4

    .line 142
    const/4 v14, 0x4

    .line 163
    .local v14, "symbologyModifier":I
    :goto_2
    new-instance v7, Lcom/google/zxing/common/DecoderResult;

    .line 164
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 165
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v10, 0x0

    :goto_3
    if-nez p2, :cond_a

    const/4 v11, 0x0

    :goto_4
    move-object/from16 v8, p0

    .line 166
    invoke-direct/range {v7 .. v14}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;III)V

    .line 163
    return-object v7

    .line 86
    .end local v14    # "symbologyModifier":I
    :pswitch_2
    const/16 v18, 0x1

    .line 88
    const/16 v16, 0x1

    .line 89
    goto :goto_1

    .line 91
    :pswitch_3
    :try_start_2
    invoke-virtual {v2}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    const/16 v8, 0x10

    if-ge v7, v8, :cond_3

    .line 92
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 96
    :cond_3
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v12

    .line 97
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v13

    .line 98
    goto :goto_1

    .line 101
    :pswitch_4
    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->parseECIValue(Lcom/google/zxing/common/BitSource;)I

    move-result v22

    .line 102
    .local v22, "value":I
    invoke-static/range {v22 .. v22}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v5

    .line 103
    if-nez v5, :cond_2

    .line 104
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 110
    .end local v22    # "value":I
    :pswitch_5
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v21

    .line 111
    .local v21, "subset":I
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v15

    .line 112
    .local v15, "countHanzi":I
    const/4 v7, 0x1

    move/from16 v0, v21

    if-ne v0, v7, :cond_2

    .line 113
    invoke-static {v2, v3, v15}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_1

    .line 122
    .end local v15    # "countHanzi":I
    .end local v21    # "subset":I
    .restart local v4    # "count":I
    :pswitch_6
    invoke-static {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_1

    .line 125
    :pswitch_7
    move/from16 v0, v16

    invoke-static {v2, v3, v4, v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V

    goto :goto_1

    :pswitch_8
    move-object/from16 v7, p3

    .line 128
    invoke-static/range {v2 .. v7}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_1

    .line 131
    :pswitch_9
    invoke-static {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 143
    .end local v4    # "count":I
    :cond_4
    if-eqz v18, :cond_5

    .line 144
    const/4 v14, 0x6

    .restart local v14    # "symbologyModifier":I
    goto :goto_2

    .line 146
    .end local v14    # "symbologyModifier":I
    :cond_5
    const/4 v14, 0x2

    .restart local v14    # "symbologyModifier":I
    goto :goto_2

    .line 149
    .end local v14    # "symbologyModifier":I
    :cond_6
    if-eqz v17, :cond_7

    .line 150
    const/4 v14, 0x3

    .restart local v14    # "symbologyModifier":I
    goto :goto_2

    .line 151
    .end local v14    # "symbologyModifier":I
    :cond_7
    if-eqz v18, :cond_8

    .line 152
    const/4 v14, 0x5

    .restart local v14    # "symbologyModifier":I
    goto :goto_2

    .line 154
    .end local v14    # "symbologyModifier":I
    :cond_8
    const/4 v14, 0x1

    .restart local v14    # "symbologyModifier":I
    goto/16 :goto_2

    :cond_9
    move-object v10, v6

    .line 165
    goto :goto_3

    .line 166
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 77
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 120
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V
    .locals 8
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .param p3, "fc1InEffect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x25

    const/16 v6, 0xb

    const/4 v5, 0x6

    const/4 v4, 0x1

    .line 288
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 289
    .local v2, "start":I
    :goto_0
    if-le p2, v4, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v6, :cond_0

    .line 291
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 293
    :cond_0
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 294
    .local v1, "nextTwoCharsBits":I
    div-int/lit8 v3, v1, 0x2d

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    rem-int/lit8 v3, v1, 0x2d

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    add-int/lit8 p2, p2, -0x2

    .line 297
    goto :goto_0

    .line 298
    .end local v1    # "nextTwoCharsBits":I
    :cond_1
    if-ne p2, v4, :cond_3

    .line 300
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v5, :cond_2

    .line 301
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 303
    :cond_2
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    :cond_3
    if-eqz p3, :cond_6

    .line 308
    move v0, v2

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 309
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_4

    .line 310
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_5

    .line 312
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 308
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 315
    :cond_5
    const/16 v3, 0x1d

    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    .line 320
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method private static decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .param p3, "currentCharacterSetECI"    # Lcom/google/zxing/common/CharacterSetECI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/google/zxing/common/CharacterSetECI;",
            "Ljava/util/Collection",
            "<[B>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 253
    .local p4, "byteSegments":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    mul-int/lit8 v3, p2, 0x8

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 254
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 257
    :cond_0
    new-array v2, p2, [B

    .line 258
    .local v2, "readBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 259
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_1
    if-nez p3, :cond_2

    .line 268
    invoke-static {v2, p5}, Lcom/google/zxing/common/StringUtils;->guessCharset([BLjava/util/Map;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 272
    .local v0, "encoding":Ljava/nio/charset/Charset;
    :goto_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-interface {p4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 274
    return-void

    .line 270
    .end local v0    # "encoding":Ljava/nio/charset/Charset;
    :cond_2
    invoke-virtual {p3}, Lcom/google/zxing/common/CharacterSetECI;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .restart local v0    # "encoding":Ljava/nio/charset/Charset;
    goto :goto_1
.end method

.method private static decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 6
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 178
    sget-object v4, Lcom/google/zxing/common/StringUtils;->GB2312_CHARSET:Ljava/nio/charset/Charset;

    if-nez v4, :cond_0

    .line 180
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 183
    :cond_0
    mul-int/lit8 v4, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 184
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 189
    :cond_1
    mul-int/lit8 v4, p2, 0x2

    new-array v1, v4, [B

    .line 190
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 191
    .local v2, "offset":I
    :goto_0
    if-lez p2, :cond_3

    .line 193
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 194
    .local v3, "twoBytes":I
    div-int/lit8 v4, v3, 0x60

    shl-int/lit8 v4, v4, 0x8

    rem-int/lit8 v5, v3, 0x60

    or-int v0, v4, v5

    .line 195
    .local v0, "assembledTwoBytes":I
    const/16 v4, 0xa00

    if-ge v0, v4, :cond_2

    .line 197
    const v4, 0xa1a1

    add-int/2addr v0, v4

    .line 202
    :goto_1
    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 203
    add-int/lit8 v4, v2, 0x1

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 204
    add-int/lit8 v2, v2, 0x2

    .line 205
    add-int/lit8 p2, p2, -0x1

    .line 206
    goto :goto_0

    .line 200
    :cond_2
    const v4, 0xa6a1

    add-int/2addr v0, v4

    goto :goto_1

    .line 208
    .end local v0    # "assembledTwoBytes":I
    .end local v3    # "twoBytes":I
    :cond_3
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/zxing/common/StringUtils;->GB2312_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    return-void
.end method

.method private static decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 6
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 214
    sget-object v4, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    if-nez v4, :cond_0

    .line 216
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 219
    :cond_0
    mul-int/lit8 v4, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 220
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 225
    :cond_1
    mul-int/lit8 v4, p2, 0x2

    new-array v1, v4, [B

    .line 226
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 227
    .local v2, "offset":I
    :goto_0
    if-lez p2, :cond_3

    .line 229
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 230
    .local v3, "twoBytes":I
    div-int/lit16 v4, v3, 0xc0

    shl-int/lit8 v4, v4, 0x8

    rem-int/lit16 v5, v3, 0xc0

    or-int v0, v4, v5

    .line 231
    .local v0, "assembledTwoBytes":I
    const/16 v4, 0x1f00

    if-ge v0, v4, :cond_2

    .line 233
    const v4, 0x8140

    add-int/2addr v0, v4

    .line 238
    :goto_1
    shr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 239
    add-int/lit8 v4, v2, 0x1

    int-to-byte v5, v0

    aput-byte v5, v1, v4

    .line 240
    add-int/lit8 v2, v2, 0x2

    .line 241
    add-int/lit8 p2, p2, -0x1

    .line 242
    goto :goto_0

    .line 236
    :cond_2
    const v4, 0xc140

    add-int/2addr v0, v4

    goto :goto_1

    .line 243
    .end local v0    # "assembledTwoBytes":I
    .end local v3    # "twoBytes":I
    :cond_3
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    return-void
.end method

.method private static decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 7
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x4

    const/16 v4, 0xa

    .line 326
    :goto_0
    const/4 v3, 0x3

    if-lt p2, v3, :cond_2

    .line 328
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v4, :cond_0

    .line 329
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 331
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 332
    .local v1, "threeDigitsBits":I
    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_1

    .line 333
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 335
    :cond_1
    div-int/lit8 v3, v1, 0x64

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    div-int/lit8 v3, v1, 0xa

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    rem-int/lit8 v3, v1, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 p2, p2, -0x3

    .line 339
    goto :goto_0

    .line 340
    .end local v1    # "threeDigitsBits":I
    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_6

    .line 342
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v6, :cond_3

    .line 343
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 345
    :cond_3
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 346
    .local v2, "twoDigitsBits":I
    const/16 v3, 0x64

    if-lt v2, v3, :cond_4

    .line 347
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 349
    :cond_4
    div-int/lit8 v3, v2, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    rem-int/lit8 v3, v2, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    .end local v2    # "twoDigitsBits":I
    :cond_5
    :goto_1
    return-void

    .line 351
    :cond_6
    const/4 v3, 0x1

    if-ne p2, v3, :cond_5

    .line 353
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v5, :cond_7

    .line 354
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 356
    :cond_7
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    .line 357
    .local v0, "digitBits":I
    if-lt v0, v4, :cond_8

    .line 358
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 360
    :cond_8
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static parseECIValue(Lcom/google/zxing/common/BitSource;)I
    .locals 6
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    .line 365
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    .line 366
    .local v0, "firstByte":I
    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_0

    .line 368
    and-int/lit8 v3, v0, 0x7f

    .line 378
    :goto_0
    return v3

    .line 370
    :cond_0
    and-int/lit16 v3, v0, 0xc0

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1

    .line 372
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 373
    .local v1, "secondByte":I
    and-int/lit8 v3, v0, 0x3f

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v1

    goto :goto_0

    .line 375
    .end local v1    # "secondByte":I
    :cond_1
    and-int/lit16 v3, v0, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_2

    .line 377
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 378
    .local v2, "secondThirdBytes":I
    and-int/lit8 v3, v0, 0x1f

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v2

    goto :goto_0

    .line 380
    .end local v2    # "secondThirdBytes":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3
.end method

.method private static toAlphaNumericChar(I)C
    .locals 1
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 277
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    array-length v0, v0

    if-lt p0, v0, :cond_0

    .line 278
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 280
    :cond_0
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    aget-char v0, v0, p0

    return v0
.end method

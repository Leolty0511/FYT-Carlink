.class public final Lcom/google/zxing/qrcode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 42
    return-void
.end method

.method private correctErrors([BI)I
    .locals 7
    .param p1, "codewordBytes"    # [B
    .param p2, "numDataCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 175
    array-length v4, p1

    .line 177
    .local v4, "numCodewords":I
    new-array v0, v4, [I

    .line 178
    .local v0, "codewordsInts":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 179
    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v2

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_0
    const/4 v1, 0x0

    .line 183
    .local v1, "errorsCorrected":I
    :try_start_0
    iget-object v5, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    array-length v6, p1

    sub-int/2addr v6, p2

    invoke-virtual {v5, v0, v6}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decodeWithECCount([II)I
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 189
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 190
    aget v5, v0, v2

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 184
    :catch_0
    move-exception v3

    .line 185
    .local v3, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v5

    throw v5

    .line 192
    .end local v3    # "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    :cond_1
    return v1
.end method

.method private decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 18
    .param p1, "parser"    # Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/qrcode/decoder/BitMatrixParser;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 132
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v14

    .line 133
    .local v14, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v5

    .line 136
    .local v5, "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v2

    .line 138
    .local v2, "codewords":[B
    invoke-static {v2, v14, v5}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-result-object v4

    .line 141
    .local v4, "dataBlocks":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    const/4 v13, 0x0

    .line 142
    .local v13, "totalBytes":I
    array-length v0, v4

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    aget-object v3, v4, v15

    .line 143
    .local v3, "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v17

    add-int v13, v13, v17

    .line 142
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 145
    .end local v3    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    :cond_0
    new-array v10, v13, [B

    .line 146
    .local v10, "resultBytes":[B
    const/4 v11, 0x0

    .line 149
    .local v11, "resultOffset":I
    const/4 v6, 0x0

    .line 150
    .local v6, "errorsCorrected":I
    array-length v0, v4

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    aget-object v3, v4, v15

    .line 151
    .restart local v3    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getCodewords()[B

    move-result-object v1

    .line 152
    .local v1, "codewordBytes":[B
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v8

    .line 153
    .local v8, "numDataCodewords":I
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8}, Lcom/google/zxing/qrcode/decoder/Decoder;->correctErrors([BI)I

    move-result v17

    add-int v6, v6, v17

    .line 154
    const/4 v7, 0x0

    .local v7, "i":I
    move v12, v11

    .end local v11    # "resultOffset":I
    .local v12, "resultOffset":I
    :goto_2
    if-ge v7, v8, :cond_1

    .line 155
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "resultOffset":I
    .restart local v11    # "resultOffset":I
    aget-byte v17, v1, v7

    aput-byte v17, v10, v12

    .line 154
    add-int/lit8 v7, v7, 0x1

    move v12, v11

    .end local v11    # "resultOffset":I
    .restart local v12    # "resultOffset":I
    goto :goto_2

    .line 150
    :cond_1
    add-int/lit8 v15, v15, 0x1

    move v11, v12

    .end local v12    # "resultOffset":I
    .restart local v11    # "resultOffset":I
    goto :goto_1

    .line 160
    .end local v1    # "codewordBytes":[B
    .end local v3    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    .end local v7    # "i":I
    .end local v8    # "numDataCodewords":I
    :cond_2
    move-object/from16 v0, p2

    invoke-static {v10, v14, v5, v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v9

    .line 161
    .local v9, "result":Lcom/google/zxing/common/DecoderResult;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/google/zxing/common/DecoderResult;->setErrorsCorrected(Ljava/lang/Integer;)V

    .line 162
    return-object v9
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 7
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitMatrix;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v3, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;

    invoke-direct {v3, p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 81
    .local v3, "parser":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    const/4 v2, 0x0

    .line 82
    .local v2, "fe":Lcom/google/zxing/FormatException;
    const/4 v0, 0x0

    .line 84
    .local v0, "ce":Lcom/google/zxing/ChecksumException;
    :try_start_0
    invoke-direct {p0, v3, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 119
    :goto_0
    return-object v4

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Lcom/google/zxing/FormatException;
    move-object v2, v1

    .line 94
    .end local v1    # "e":Lcom/google/zxing/FormatException;
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->remask()V

    .line 97
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->setMirror(Z)V

    .line 100
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    .line 103
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 112
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror()V

    .line 114
    invoke-direct {p0, v3, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v4

    .line 117
    .local v4, "result":Lcom/google/zxing/common/DecoderResult;
    new-instance v5, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 121
    .end local v4    # "result":Lcom/google/zxing/common/DecoderResult;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 123
    .local v1, "e":Lcom/google/zxing/ReaderException;
    :goto_2
    if-eqz v2, :cond_0

    .line 124
    throw v2

    .line 87
    .end local v1    # "e":Lcom/google/zxing/ReaderException;
    :catch_2
    move-exception v1

    .line 88
    .local v1, "e":Lcom/google/zxing/ChecksumException;
    move-object v0, v1

    goto :goto_1

    .line 126
    .local v1, "e":Lcom/google/zxing/ReaderException;
    :cond_0
    throw v0

    .line 121
    .end local v1    # "e":Lcom/google/zxing/ReaderException;
    :catch_3
    move-exception v5

    move-object v1, v5

    goto :goto_2
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .param p1, "image"    # [[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .param p1, "image"    # [[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-static {p1}, Lcom/google/zxing/common/BitMatrix;->parse([[Z)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

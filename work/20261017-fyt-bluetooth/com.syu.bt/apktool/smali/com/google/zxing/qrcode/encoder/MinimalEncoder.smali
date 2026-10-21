.class final Lcom/google/zxing/qrcode/encoder/MinimalEncoder;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;,
        Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;,
        Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;
    }
.end annotation


# instance fields
.field private final ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private final encoders:Lcom/google/zxing/common/ECIEncoderSet;

.field private final isGS1:Z

.field private final stringToEncode:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V
    .locals 2
    .param p1, "stringToEncode"    # Ljava/lang/String;
    .param p2, "priorityCharset"    # Ljava/nio/charset/Charset;
    .param p3, "isGS1"    # Z
    .param p4, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    .line 95
    iput-boolean p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->isGS1:Z

    .line 96
    new-instance v0, Lcom/google/zxing/common/ECIEncoderSet;

    const/4 v1, -0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/zxing/common/ECIEncoderSet;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    .line 97
    iput-object p4, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 98
    return-void
.end method

.method static synthetic access$1100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/common/ECIEncoderSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->isGS1:Z

    return v0
.end method

.method static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Version;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    .locals 1
    .param p0, "stringToEncode"    # Ljava/lang/String;
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "priorityCharset"    # Ljava/nio/charset/Charset;
    .param p3, "isGS1"    # Z
    .param p4, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    invoke-virtual {v0, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encode(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v0

    return-object v0
.end method

.method static getCompactedOrdinal(Lcom/google/zxing/qrcode/decoder/Mode;)I
    .locals 3
    .param p0, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;

    .prologue
    const/4 v0, 0x0

    .line 194
    if-nez p0, :cond_0

    .line 205
    :goto_0
    :pswitch_0
    return v0

    .line 197
    :cond_0
    sget-object v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 203
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 205
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 2
    .param p0, "versionSize"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .prologue
    .line 158
    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$qrcode$encoder$MinimalEncoder$VersionSize:[I

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 165
    const/16 v0, 0x28

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    :goto_0
    return-object v0

    .line 160
    :pswitch_0
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    goto :goto_0

    .line 162
    :pswitch_1
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getVersionSize(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;
    .locals 2
    .param p0, "version"    # Lcom/google/zxing/qrcode/decoder/Version;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->SMALL:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_1

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->MEDIUM:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->LARGE:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    goto :goto_0
.end method

.method static isAlphanumeric(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 178
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isDoubleByteKanji(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 174
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isNumeric(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 170
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


# virtual methods
.method addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V
    .locals 5
    .param p1, "edges"    # [[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    .param p2, "position"    # I
    .param p3, "edge"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .prologue
    .line 212
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$000(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v3

    add-int v2, p2, v3

    .line 213
    .local v2, "vertexIndex":I
    aget-object v3, p1, v2

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v4

    aget-object v0, v3, v4

    .line 214
    .local v0, "modeEdges":[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$200(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getCompactedOrdinal(Lcom/google/zxing/qrcode/decoder/Mode;)I

    move-result v1

    .line 215
    .local v1, "modeOrdinal":I
    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v3

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v4

    if-le v3, v4, :cond_1

    .line 216
    :cond_0
    aput-object p3, v0, v1

    .line 218
    :cond_1
    return-void
.end method

.method addEdges(Lcom/google/zxing/qrcode/decoder/Version;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V
    .locals 21
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "edges"    # [[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    .param p3, "from"    # I
    .param p4, "previous"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .prologue
    .line 221
    const/16 v20, 0x0

    .line 222
    .local v20, "start":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    invoke-virtual {v3}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v17

    .line 223
    .local v17, "end":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    invoke-virtual {v3}, Lcom/google/zxing/common/ECIEncoderSet;->getPriorityEncoderIndex()I

    move-result v19

    .line 224
    .local v19, "priorityEncoderIndex":I
    if-ltz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v0, v19

    invoke-virtual {v3, v4, v0}, Lcom/google/zxing/common/ECIEncoderSet;->canEncode(CI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    move/from16 v20, v19

    .line 226
    add-int/lit8 v17, v19, 0x1

    .line 229
    :cond_0
    move/from16 v7, v20

    .local v7, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v7}, Lcom/google/zxing/common/ECIEncoderSet;->canEncode(CI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    new-instance v3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v8, 0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move/from16 v6, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p1

    invoke-direct/range {v3 .. v11}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 229
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 235
    :cond_2
    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 236
    new-instance v8, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v16, 0x0

    move-object/from16 v9, p0

    move/from16 v11, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v16}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 239
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    .line 240
    .local v18, "inputLength":I
    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 241
    new-instance v8, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v12, 0x0

    add-int/lit8 v3, p3, 0x1

    move/from16 v0, v18

    if-ge v3, v0, :cond_4

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    add-int/lit8 v5, p3, 0x1

    .line 242
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_4
    const/4 v13, 0x1

    :goto_1
    const/16 v16, 0x0

    move-object/from16 v9, p0

    move/from16 v11, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v16}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;)V

    .line 241
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 245
    :cond_5
    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 246
    new-instance v8, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v12, 0x0

    add-int/lit8 v3, p3, 0x1

    move/from16 v0, v18

    if-ge v3, v0, :cond_6

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    add-int/lit8 v5, p3, 0x1

    .line 247
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_6
    const/4 v13, 0x1

    .line 248
    :goto_2
    const/16 v16, 0x0

    move-object/from16 v9, p0

    move/from16 v11, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v16}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;)V

    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 250
    :cond_7
    return-void

    .line 242
    :cond_8
    const/4 v13, 0x2

    goto :goto_1

    .line 247
    :cond_9
    add-int/lit8 v3, p3, 0x2

    move/from16 v0, v18

    if-ge v3, v0, :cond_a

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    add-int/lit8 v5, p3, 0x2

    .line 248
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    const/4 v13, 0x2

    goto :goto_2

    :cond_b
    const/4 v13, 0x3

    goto :goto_2
.end method

.method canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z
    .locals 2
    .param p1, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p2, "c"    # C

    .prologue
    .line 182
    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 189
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 183
    :pswitch_0
    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->isDoubleByteKanji(C)Z

    move-result v0

    goto :goto_0

    .line 184
    :pswitch_1
    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->isAlphanumeric(C)Z

    move-result v0

    goto :goto_0

    .line 185
    :pswitch_2
    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->isNumeric(C)Z

    move-result v0

    goto :goto_0

    .line 186
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method encode(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    .locals 12
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 123
    if-nez p1, :cond_4

    .line 124
    new-array v6, v11, [Lcom/google/zxing/qrcode/decoder/Version;

    sget-object v7, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->SMALL:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    invoke-static {v7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v7

    aput-object v7, v6, v8

    sget-object v7, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->MEDIUM:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 125
    invoke-static {v7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v7

    aput-object v7, v6, v9

    sget-object v7, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->LARGE:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 126
    invoke-static {v7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v7

    aput-object v7, v6, v10

    .line 127
    .local v6, "versions":[Lcom/google/zxing/qrcode/decoder/Version;
    new-array v2, v11, [Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    aget-object v7, v6, v8

    invoke-virtual {p0, v7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v7

    aput-object v7, v2, v8

    aget-object v7, v6, v9

    .line 128
    invoke-virtual {p0, v7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v7

    aput-object v7, v2, v9

    aget-object v7, v6, v10

    .line 129
    invoke-virtual {p0, v7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v7

    aput-object v7, v2, v10

    .line 130
    .local v2, "results":[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    const v5, 0x7fffffff

    .line 131
    .local v5, "smallestSize":I
    const/4 v4, -0x1

    .line 132
    .local v4, "smallestResult":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v11, :cond_1

    .line 133
    aget-object v7, v2, v0

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getSize()I

    move-result v3

    .line 134
    .local v3, "size":I
    aget-object v7, v6, v0

    iget-object v8, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-static {v3, v7, v8}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-ge v3, v5, :cond_0

    .line 135
    move v5, v3

    .line 136
    move v4, v0

    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v3    # "size":I
    :cond_1
    if-gez v4, :cond_2

    .line 140
    new-instance v7, Lcom/google/zxing/WriterException;

    const-string v8, "Data too big for any version"

    invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 142
    :cond_2
    aget-object v1, v2, v4

    .line 148
    .end local v0    # "i":I
    .end local v2    # "results":[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    .end local v4    # "smallestResult":I
    .end local v5    # "smallestSize":I
    .end local v6    # "versions":[Lcom/google/zxing/qrcode/decoder/Version;
    :cond_3
    return-object v1

    .line 144
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v1

    .line 145
    .local v1, "result":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getSize()I

    move-result v7

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v8

    invoke-static {v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersionSize(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    move-result-object v8

    invoke-static {v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v8

    iget-object v9, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-static {v7, v8, v9}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 146
    new-instance v7, Lcom/google/zxing/WriterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data too big for version"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    .locals 12
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    .line 363
    iget-object v9, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    .line 371
    .local v3, "inputLength":I
    add-int/lit8 v9, v3, 0x1

    iget-object v10, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    invoke-virtual {v10}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v10

    filled-new-array {v9, v10, v11}, [I

    move-result-object v9

    const-class v10, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .line 372
    .local v1, "edges":[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, p1, v1, v9, v10}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/qrcode/decoder/Version;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 374
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, v3, :cond_3

    .line 375
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v9, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    invoke-virtual {v9}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 376
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_2
    if-ge v5, v11, :cond_1

    .line 377
    aget-object v9, v1, v2

    aget-object v9, v9, v4

    aget-object v9, v9, v5

    if-eqz v9, :cond_0

    if-ge v2, v3, :cond_0

    .line 378
    aget-object v9, v1, v2

    aget-object v9, v9, v4

    aget-object v9, v9, v5

    invoke-virtual {p0, p1, v1, v2, v9}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/qrcode/decoder/Version;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 376
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 375
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 374
    .end local v5    # "k":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    .end local v4    # "j":I
    :cond_3
    const/4 v6, -0x1

    .line 385
    .local v6, "minimalJ":I
    const/4 v7, -0x1

    .line 386
    .local v7, "minimalK":I
    const v8, 0x7fffffff

    .line 387
    .local v8, "minimalSize":I
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_3
    iget-object v9, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    invoke-virtual {v9}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v9

    if-ge v4, v9, :cond_6

    .line 388
    const/4 v5, 0x0

    .restart local v5    # "k":I
    :goto_4
    if-ge v5, v11, :cond_5

    .line 389
    aget-object v9, v1, v3

    aget-object v9, v9, v4

    aget-object v9, v9, v5

    if-eqz v9, :cond_4

    .line 390
    aget-object v9, v1, v3

    aget-object v9, v9, v4

    aget-object v0, v9, v5

    .line 391
    .local v0, "edge":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v9

    if-ge v9, v8, :cond_4

    .line 392
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v8

    .line 393
    move v6, v4

    .line 394
    move v7, v5

    .line 388
    .end local v0    # "edge":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 387
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 399
    .end local v5    # "k":I
    :cond_6
    if-gez v6, :cond_7

    .line 400
    new-instance v9, Lcom/google/zxing/WriterException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Internal error: failed to encode \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 402
    :cond_7
    new-instance v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    aget-object v10, v1, v3

    aget-object v10, v10, v6

    aget-object v10, v10, v7

    invoke-direct {v9, p0, p1, v10}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    return-object v9
.end method

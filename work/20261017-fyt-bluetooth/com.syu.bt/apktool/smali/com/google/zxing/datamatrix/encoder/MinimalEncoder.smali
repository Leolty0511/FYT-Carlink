.class public final Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;,
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;,
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;,
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    }
.end annotation


# static fields
.field static final C40_SHIFT2_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x1b

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->C40_SHIFT2_CHARS:[C

    return-void

    :array_0
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
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic access$600(C)Z
    .locals 1
    .param p0, "x0"    # C

    .prologue
    .line 61
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInC40Shift1Set(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(C)Z
    .locals 1
    .param p0, "x0"    # C

    .prologue
    .line 61
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInTextShift1Set(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(CI)Z
    .locals 1
    .param p0, "x0"    # C
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInC40Shift2Set(CI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(CI)Z
    .locals 1
    .param p0, "x0"    # C
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInTextShift2Set(CI)Z

    move-result v0

    return v0
.end method

.method static addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V
    .locals 3
    .param p0, "edges"    # [[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    .param p1, "edge"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .prologue
    .line 157
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$100(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    move-result v1

    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$200(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    move-result v2

    add-int v0, v1, v2

    .line 158
    .local v0, "vertexIndex":I
    aget-object v1, p0, v0

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    aget-object v1, p0, v0

    .line 159
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    move-result v1

    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 160
    :cond_0
    aget-object v1, p0, v0

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v2

    aput-object p1, v1, v2

    .line 162
    :cond_1
    return-void
.end method

.method static addEdges(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V
    .locals 17
    .param p0, "input"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;
    .param p1, "edges"    # [[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    .param p2, "from"    # I
    .param p3, "previous"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .prologue
    .line 204
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->isECI(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    new-instance v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v4, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v12

    .line 210
    .local v12, "ch":C
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v2, v3, :cond_8

    .line 212
    :cond_2
    invoke-static {v12}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->haveNCharacters(II)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, p2, 0x1

    .line 213
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 215
    new-instance v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v4, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v6, 0x2

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 221
    :goto_1
    const/4 v2, 0x2

    new-array v15, v2, [Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    aput-object v3, v15, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    aput-object v3, v15, v2

    .line 222
    .local v15, "modes":[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    array-length v10, v15

    const/4 v2, 0x0

    move v9, v2

    :goto_2
    if-ge v9, v10, :cond_6

    aget-object v4, v15, v9

    .line 223
    .local v4, "mode":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    const/4 v2, 0x1

    new-array v13, v2, [I

    .line 224
    .local v13, "characterLength":[I
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v4, v2, :cond_5

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1, v2, v13}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->getNumberOfC40Words(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;IZ[I)I

    move-result v2

    if-lez v2, :cond_3

    .line 225
    new-instance v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    const/4 v3, 0x0

    aget v6, v13, v3

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 222
    :cond_3
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_2

    .line 218
    .end local v4    # "mode":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .end local v13    # "characterLength":[I
    .end local v15    # "modes":[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    :cond_4
    new-instance v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v4, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    goto :goto_1

    .line 224
    .restart local v4    # "mode":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .restart local v13    # "characterLength":[I
    .restart local v15    # "modes":[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 229
    .end local v4    # "mode":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .end local v13    # "characterLength":[I
    :cond_6
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->haveNCharacters(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 230
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v2, p2, 0x1

    .line 231
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v2, p2, 0x2

    .line 232
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 233
    new-instance v5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v7, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v9, 0x3

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move/from16 v8, p2

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v11}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 236
    :cond_7
    new-instance v5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v7, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move/from16 v8, p2

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v11}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 242
    .end local v15    # "modes":[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    :cond_8
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    const/4 v2, 0x3

    if-ge v14, v2, :cond_9

    .line 243
    add-int v16, p2, v14

    .line 244
    .local v16, "pos":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->haveNCharacters(II)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 245
    new-instance v5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v7, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    add-int/lit8 v9, v14, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move/from16 v8, p2

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v11}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 242
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 250
    .end local v16    # "pos":I
    :cond_9
    const/4 v2, 0x3

    if-ne v14, v2, :cond_0

    const/4 v2, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->haveNCharacters(II)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, p2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    new-instance v5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v7, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v9, 0x4

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move/from16 v8, p2

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v11}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    goto/16 :goto_0
.end method

.method static encode(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;I)[B
    .locals 7
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "priorityCharset"    # Ljava/nio/charset/Charset;
    .param p2, "fnc1"    # I
    .param p3, "shape"    # Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .param p4, "macroId"    # I

    .prologue
    .line 153
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->encodeMinimally(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeHighLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v0, 0x0

    const/4 v1, -0x1

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    invoke-static {p0, v0, v1, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->encodeHighLevel(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "priorityCharset"    # Ljava/nio/charset/Charset;
    .param p2, "fnc1"    # I
    .param p3, "shape"    # Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "macroId":I
    const-string v1, "[)>\u001e05\u001d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u001e\u0004"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    const/4 v0, 0x5

    .line 130
    const-string v1, "[)>\u001e05\u001d"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 135
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;I)[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 131
    :cond_1
    const-string v1, "[)>\u001e06\u001d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u001e\u0004"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const/4 v0, 0x6

    .line 133
    const-string v1, "[)>\u001e06\u001d"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static encodeMinimally(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;
    .locals 12
    .param p0, "input"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x6

    .line 441
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->length()I

    move-result v3

    .line 445
    .local v3, "inputLength":I
    add-int/lit8 v8, v3, 0x1

    filled-new-array {v8, v10}, [I

    move-result-object v8

    const-class v9, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 446
    .local v1, "edges":[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    const/4 v8, 0x0

    invoke-static {p0, v1, v8, v11}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 448
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, v3, :cond_3

    .line 449
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v10, :cond_1

    .line 450
    aget-object v8, v1, v2

    aget-object v8, v8, v4

    if-eqz v8, :cond_0

    if-ge v2, v3, :cond_0

    .line 451
    aget-object v8, v1, v2

    aget-object v8, v8, v4

    invoke-static {p0, v1, v2, v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 449
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 455
    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v10, :cond_2

    .line 456
    add-int/lit8 v8, v2, -0x1

    aget-object v8, v1, v8

    aput-object v11, v8, v4

    .line 455
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 448
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 460
    .end local v4    # "j":I
    :cond_3
    const/4 v5, -0x1

    .line 461
    .local v5, "minimalJ":I
    const v6, 0x7fffffff

    .line 462
    .local v6, "minimalSize":I
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_3
    if-ge v4, v10, :cond_6

    .line 463
    aget-object v8, v1, v3

    aget-object v8, v8, v4

    if-eqz v8, :cond_4

    .line 464
    aget-object v8, v1, v3

    aget-object v0, v8, v4

    .line 465
    .local v0, "edge":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    const/4 v8, 0x1

    if-lt v4, v8, :cond_5

    const/4 v8, 0x3

    if-gt v4, v8, :cond_5

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    move-result v8

    add-int/lit8 v7, v8, 0x1

    .line 467
    .local v7, "size":I
    :goto_4
    if-ge v7, v6, :cond_4

    .line 468
    move v6, v7

    .line 469
    move v5, v4

    .line 462
    .end local v0    # "edge":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    .end local v7    # "size":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 465
    .restart local v0    # "edge":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    :cond_5
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    move-result v7

    goto :goto_4

    .line 474
    .end local v0    # "edge":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    :cond_6
    if-gez v5, :cond_7

    .line 475
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to encode \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 477
    :cond_7
    new-instance v8, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;

    aget-object v9, v1, v3

    aget-object v9, v9, v5

    invoke-direct {v8, v9}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    return-object v8
.end method

.method static getNumberOfC40Words(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;IZ[I)I
    .locals 8
    .param p0, "input"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;
    .param p1, "from"    # I
    .param p2, "c40"    # Z
    .param p3, "characterLength"    # [I

    .prologue
    const/4 v4, 0x0

    .line 172
    const/4 v3, 0x0

    .line 173
    .local v3, "thirdsCount":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->length()I

    move-result v5

    if-ge v2, v5, :cond_a

    .line 174
    invoke-virtual {p0, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->isECI(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    aput v4, p3, v4

    .line 199
    :goto_1
    return v4

    .line 178
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v1

    .line 179
    .local v1, "ci":C
    if-eqz p2, :cond_1

    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    if-nez p2, :cond_4

    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 180
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 193
    :goto_2
    rem-int/lit8 v5, v3, 0x3

    if-eqz v5, :cond_3

    add-int/lit8 v5, v3, -0x2

    rem-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_9

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->length()I

    move-result v6

    if-ne v5, v6, :cond_9

    .line 194
    :cond_3
    sub-int v5, v2, p1

    add-int/lit8 v5, v5, 0x1

    aput v5, p3, v4

    .line 195
    int-to-double v4, v3

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    goto :goto_1

    .line 181
    :cond_4
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v5

    invoke-static {v1, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v5

    if-nez v5, :cond_5

    .line 182
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 184
    :cond_5
    and-int/lit16 v0, v1, 0xff

    .line 185
    .local v0, "asciiValue":I
    const/16 v5, 0x80

    if-lt v0, v5, :cond_8

    if-eqz p2, :cond_6

    add-int/lit8 v5, v0, -0x80

    int-to-char v5, v5

    invoke-static {v5}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    if-nez p2, :cond_8

    add-int/lit8 v5, v0, -0x80

    int-to-char v5, v5

    .line 186
    invoke-static {v5}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 187
    :cond_7
    add-int/lit8 v3, v3, 0x3

    goto :goto_2

    .line 189
    :cond_8
    add-int/lit8 v3, v3, 0x4

    goto :goto_2

    .line 173
    .end local v0    # "asciiValue":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "ci":C
    :cond_a
    aput v4, p3, v4

    goto :goto_1
.end method

.method static isExtendedASCII(CI)Z
    .locals 1
    .param p0, "ch"    # C
    .param p1, "fnc1"    # I

    .prologue
    .line 79
    if-eq p0, p1, :cond_0

    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInC40Shift1Set(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 83
    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInC40Shift2Set(CI)Z
    .locals 6
    .param p0, "ch"    # C
    .param p1, "fnc1"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    sget-object v4, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->C40_SHIFT2_CHARS:[C

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-char v0, v4, v3

    .line 88
    .local v0, "c40Shift2Char":C
    if-ne v0, p0, :cond_1

    .line 92
    .end local v0    # "c40Shift2Char":C
    :cond_0
    :goto_1
    return v1

    .line 87
    .restart local v0    # "c40Shift2Char":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "c40Shift2Char":C
    :cond_2
    if-eq p0, p1, :cond_0

    move v1, v2

    goto :goto_1
.end method

.method private static isInTextShift1Set(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 96
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInC40Shift1Set(C)Z

    move-result v0

    return v0
.end method

.method private static isInTextShift2Set(CI)Z
    .locals 1
    .param p0, "ch"    # C
    .param p1, "fnc1"    # I

    .prologue
    .line 100
    invoke-static {p0, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInC40Shift2Set(CI)Z

    move-result v0

    return v0
.end method

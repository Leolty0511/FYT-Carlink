.class public Lcom/google/zxing/common/MinimalECIInput;
.super Ljava/lang/Object;
.source "MinimalECIInput.java"

# interfaces
.implements Lcom/google/zxing/common/ECIInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    }
.end annotation


# static fields
.field private static final COST_PER_ECI:I = 0x3


# instance fields
.field private final bytes:[I

.field private final fnc1:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V
    .locals 5
    .param p1, "stringToEncode"    # Ljava/lang/String;
    .param p2, "priorityCharset"    # Ljava/nio/charset/Charset;
    .param p3, "fnc1"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p3, p0, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    .line 49
    new-instance v1, Lcom/google/zxing/common/ECIEncoderSet;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/zxing/common/ECIEncoderSet;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    .line 50
    .local v1, "encoderSet":Lcom/google/zxing/common/ECIEncoderSet;
    invoke-virtual {v1}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    .line 52
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 54
    .local v0, "c":C
    iget-object v3, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    if-ne v0, p3, :cond_0

    const/16 v0, 0x3e8

    .end local v0    # "c":C
    :cond_0
    aput v0, v3, v2

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "i":I
    :cond_1
    invoke-static {p1, v1, p3}, Lcom/google/zxing/common/MinimalECIInput;->encodeMinimally(Ljava/lang/String;Lcom/google/zxing/common/ECIEncoderSet;I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    .line 59
    :cond_2
    return-void
.end method

.method static addEdge([[Lcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$InputEdge;)V
    .locals 2
    .param p0, "edges"    # [[Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    .param p1, "to"    # I
    .param p2, "edge"    # Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    .prologue
    .line 233
    aget-object v0, p0, p1

    invoke-static {p2}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    aget-object v0, p0, p1

    .line 234
    invoke-static {p2}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$100(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v0

    invoke-static {p2}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$100(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 235
    :cond_0
    aget-object v0, p0, p1

    invoke-static {p2}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v1

    aput-object p2, v0, v1

    .line 237
    :cond_1
    return-void
.end method

.method static addEdges(Ljava/lang/String;Lcom/google/zxing/common/ECIEncoderSet;[[Lcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$InputEdge;I)V
    .locals 10
    .param p0, "stringToEncode"    # Ljava/lang/String;
    .param p1, "encoderSet"    # Lcom/google/zxing/common/ECIEncoderSet;
    .param p2, "edges"    # [[Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    .param p3, "from"    # I
    .param p4, "previous"    # Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    .param p5, "fnc1"    # I

    .prologue
    .line 246
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 248
    .local v1, "ch":C
    const/4 v8, 0x0

    .line 249
    .local v8, "start":I
    invoke-virtual {p1}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v7

    .line 250
    .local v7, "end":I
    invoke-virtual {p1}, Lcom/google/zxing/common/ECIEncoderSet;->getPriorityEncoderIndex()I

    move-result v0

    if-ltz v0, :cond_1

    if-eq v1, p5, :cond_0

    .line 251
    invoke-virtual {p1}, Lcom/google/zxing/common/ECIEncoderSet;->getPriorityEncoderIndex()I

    move-result v0

    .line 250
    invoke-virtual {p1, v1, v0}, Lcom/google/zxing/common/ECIEncoderSet;->canEncode(CI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/common/ECIEncoderSet;->getPriorityEncoderIndex()I

    move-result v8

    .line 253
    add-int/lit8 v7, v8, 0x1

    .line 256
    :cond_1
    move v3, v8

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_4

    .line 257
    if-eq v1, p5, :cond_2

    invoke-virtual {p1, v1, v3}, Lcom/google/zxing/common/ECIEncoderSet;->canEncode(CI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    :cond_2
    add-int/lit8 v9, p3, 0x1

    new-instance v0, Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;-><init>(CLcom/google/zxing/common/ECIEncoderSet;ILcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$1;)V

    invoke-static {p2, v9, v0}, Lcom/google/zxing/common/MinimalECIInput;->addEdge([[Lcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$InputEdge;)V

    .line 256
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 261
    :cond_4
    return-void
.end method

.method static encodeMinimally(Ljava/lang/String;Lcom/google/zxing/common/ECIEncoderSet;I)[I
    .locals 17
    .param p0, "stringToEncode"    # Ljava/lang/String;
    .param p1, "encoderSet"    # Lcom/google/zxing/common/ECIEncoderSet;
    .param p2, "fnc1"    # I

    .prologue
    .line 264
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    .line 267
    .local v10, "inputLength":I
    add-int/lit8 v1, v10, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    .line 268
    .local v3, "edges":[[Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/common/MinimalECIInput;->addEdges(Ljava/lang/String;Lcom/google/zxing/common/ECIEncoderSet;[[Lcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$InputEdge;I)V

    .line 270
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-gt v4, v10, :cond_3

    .line 271
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v1

    if-ge v13, v1, :cond_1

    .line 272
    aget-object v1, v3, v4

    aget-object v1, v1, v13

    if-eqz v1, :cond_0

    if-ge v4, v10, :cond_0

    .line 273
    aget-object v1, v3, v4

    aget-object v5, v1, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/common/MinimalECIInput;->addEdges(Ljava/lang/String;Lcom/google/zxing/common/ECIEncoderSet;[[Lcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$InputEdge;I)V

    .line 271
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 277
    :cond_1
    const/4 v13, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v1

    if-ge v13, v1, :cond_2

    .line 278
    add-int/lit8 v1, v4, -0x1

    aget-object v1, v3, v1

    const/4 v2, 0x0

    aput-object v2, v1, v13

    .line 277
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 270
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 281
    .end local v13    # "j":I
    :cond_3
    const/4 v14, -0x1

    .line 282
    .local v14, "minimalJ":I
    const v15, 0x7fffffff

    .line 283
    .local v15, "minimalSize":I
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v1

    if-ge v13, v1, :cond_5

    .line 284
    aget-object v1, v3, v10

    aget-object v1, v1, v13

    if-eqz v1, :cond_4

    .line 285
    aget-object v1, v3, v10

    aget-object v9, v1, v13

    .line 286
    .local v9, "edge":Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    invoke-static {v9}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$100(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v1

    if-ge v1, v15, :cond_4

    .line 287
    invoke-static {v9}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$100(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v15

    .line 288
    move v14, v13

    .line 283
    .end local v9    # "edge":Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 292
    :cond_5
    if-gez v14, :cond_6

    .line 293
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to encode \""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_6
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v12, "intsAL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    aget-object v1, v3, v10

    aget-object v8, v1, v14

    .line 297
    .local v8, "current":Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    :goto_4
    if-eqz v8, :cond_b

    .line 298
    invoke-virtual {v8}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->isFNC1()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 299
    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 306
    :cond_7
    invoke-static {v8}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$400(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    move-result-object v1

    if-nez v1, :cond_a

    const/16 v16, 0x0

    .line 307
    .local v16, "previousEncoderIndex":I
    :goto_5
    invoke-static {v8}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v1

    move/from16 v0, v16

    if-eq v0, v1, :cond_8

    .line 308
    const/4 v1, 0x0

    invoke-static {v8}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/ECIEncoderSet;->getECIValue(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 310
    :cond_8
    invoke-static {v8}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$400(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    move-result-object v8

    .line 311
    goto :goto_4

    .line 301
    .end local v16    # "previousEncoderIndex":I
    :cond_9
    invoke-static {v8}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$300(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)C

    move-result v1

    invoke-static {v8}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/ECIEncoderSet;->encode(CI)[B

    move-result-object v7

    .line 302
    .local v7, "bytes":[B
    array-length v1, v7

    add-int/lit8 v4, v1, -0x1

    :goto_6
    if-ltz v4, :cond_7

    .line 303
    const/4 v1, 0x0

    aget-byte v2, v7, v4

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 302
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .line 306
    .end local v7    # "bytes":[B
    :cond_a
    invoke-static {v8}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$400(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v16

    goto :goto_5

    .line 312
    :cond_b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    new-array v11, v1, [I

    .line 313
    .local v11, "ints":[I
    const/4 v4, 0x0

    :goto_7
    array-length v1, v11

    if-ge v4, v1, :cond_c

    .line 314
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v11, v4

    .line 313
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 316
    :cond_c
    return-object v11
.end method


# virtual methods
.method public charAt(I)C
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 104
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a character but an ECI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/MinimalECIInput;->isFNC1(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    int-to-char v0, v0

    :goto_0
    return v0

    :cond_3
    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    aget v0, v0, p1

    int-to-char v0, v0

    goto :goto_0
.end method

.method public getECIValue(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 202
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not an ECI but a character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    aget v0, v0, p1

    add-int/lit16 v0, v0, -0x100

    return v0
.end method

.method public getFNC1Character()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    return v0
.end method

.method public haveNCharacters(II)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "n"    # I

    .prologue
    const/4 v1, 0x0

    .line 76
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_2

    .line 80
    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isECI(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 159
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    aget v0, v0, p1

    const/16 v1, 0xff

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    aget v0, v0, p1

    const/16 v1, 0x3e7

    if-gt v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFNC1(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 177
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    aget v0, v0, p1

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v0, v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 134
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    move-result v2

    if-le p2, v2, :cond_1

    .line 135
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v1, "result":Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 139
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a character but an ECI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_3
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 215
    if-lez v0, :cond_0

    .line 216
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    const-string v2, "ECI("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/MinimalECIInput;->getECIValue(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_2

    .line 223
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 227
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 230
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

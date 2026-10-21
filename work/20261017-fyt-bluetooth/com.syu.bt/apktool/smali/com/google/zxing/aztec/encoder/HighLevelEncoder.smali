.class public final Lcom/google/zxing/aztec/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field private static final CHAR_MAP:[[I

.field static final LATCH_TABLE:[[I

.field static final MODE_DIGIT:I = 0x2

.field static final MODE_LOWER:I = 0x1

.field static final MODE_MIXED:I = 0x3

.field static final MODE_NAMES:[Ljava/lang/String;

.field static final MODE_PUNCT:I = 0x4

.field static final MODE_UPPER:I

.field static final SHIFT_TABLE:[[I


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final text:[B


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v9, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 46
    new-array v5, v9, [Ljava/lang/String;

    const-string v7, "UPPER"

    aput-object v7, v5, v6

    const-string v7, "LOWER"

    aput-object v7, v5, v10

    const-string v7, "DIGIT"

    aput-object v7, v5, v11

    const/4 v7, 0x3

    const-string v8, "MIXED"

    aput-object v8, v5, v7

    const-string v7, "PUNCT"

    aput-object v7, v5, v12

    sput-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    .line 59
    new-array v5, v9, [[I

    new-array v7, v9, [I

    fill-array-data v7, :array_0

    aput-object v7, v5, v6

    new-array v7, v9, [I

    fill-array-data v7, :array_1

    aput-object v7, v5, v10

    new-array v7, v9, [I

    fill-array-data v7, :array_2

    aput-object v7, v5, v11

    const/4 v7, 0x3

    new-array v8, v9, [I

    fill-array-data v8, :array_3

    aput-object v8, v5, v7

    new-array v7, v9, [I

    fill-array-data v7, :array_4

    aput-object v7, v5, v12

    sput-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    .line 100
    const/16 v5, 0x100

    filled-new-array {v9, v5}, [I

    move-result-object v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    sput-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 102
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v6

    const/16 v7, 0x20

    aput v10, v5, v7

    .line 103
    const/16 v0, 0x41

    .local v0, "c":I
    :goto_0
    const/16 v5, 0x5a

    if-gt v0, v5, :cond_0

    .line 104
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v6

    add-int/lit8 v7, v0, -0x41

    add-int/lit8 v7, v7, 0x2

    aput v7, v5, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v10

    const/16 v7, 0x20

    aput v10, v5, v7

    .line 107
    const/16 v0, 0x61

    :goto_1
    const/16 v5, 0x7a

    if-gt v0, v5, :cond_1

    .line 108
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v10

    add-int/lit8 v7, v0, -0x61

    add-int/lit8 v7, v7, 0x2

    aput v7, v5, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :cond_1
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v11

    const/16 v7, 0x20

    aput v10, v5, v7

    .line 111
    const/16 v0, 0x30

    :goto_2
    const/16 v5, 0x39

    if-gt v0, v5, :cond_2

    .line 112
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v11

    add-int/lit8 v7, v0, -0x30

    add-int/lit8 v7, v7, 0x2

    aput v7, v5, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 114
    :cond_2
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v11

    const/16 v7, 0x2c

    const/16 v8, 0xc

    aput v8, v5, v7

    .line 115
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v11

    const/16 v7, 0x2e

    const/16 v8, 0xd

    aput v8, v5, v7

    .line 116
    const/16 v5, 0x1c

    new-array v2, v5, [I

    fill-array-data v2, :array_5

    .line 121
    .local v2, "mixedTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v5, v2

    if-ge v1, v5, :cond_3

    .line 122
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    const/4 v7, 0x3

    aget-object v5, v5, v7

    aget v7, v2, v1

    aput v1, v5, v7

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 124
    :cond_3
    const/16 v5, 0x1f

    new-array v3, v5, [I

    fill-array-data v3, :array_6

    .line 129
    .local v3, "punctTable":[I
    const/4 v1, 0x0

    :goto_4
    array-length v5, v3

    if-ge v1, v5, :cond_5

    .line 130
    aget v5, v3, v1

    if-lez v5, :cond_4

    .line 131
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v12

    aget v7, v3, v1

    aput v1, v5, v7

    .line 129
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 138
    :cond_5
    const/4 v5, 0x6

    const/4 v7, 0x6

    filled-new-array {v5, v7}, [I

    move-result-object v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    sput-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    .line 140
    sget-object v7, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    array-length v8, v7

    move v5, v6

    :goto_5
    if-ge v5, v8, :cond_6

    aget-object v4, v7, v5

    .line 141
    .local v4, "table":[I
    const/4 v9, -0x1

    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([II)V

    .line 140
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 143
    .end local v4    # "table":[I
    :cond_6
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v5, v5, v6

    aput v6, v5, v12

    .line 145
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v5, v5, v10

    aput v6, v5, v12

    .line 146
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v5, v5, v10

    const/16 v7, 0x1c

    aput v7, v5, v6

    .line 148
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    const/4 v7, 0x3

    aget-object v5, v5, v7

    aput v6, v5, v12

    .line 150
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v5, v5, v11

    aput v6, v5, v12

    .line 151
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v5, v5, v11

    const/16 v7, 0xf

    aput v7, v5, v6

    .line 152
    return-void

    .line 59
    nop

    :array_0
    .array-data 4
        0x0
        0x5001c
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_1
    .array-data 4
        0x901ee
        0x0
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_2
    .array-data 4
        0x4000e
        0x901dc
        0x0
        0x901dd
        0xe3bbe
    .end array-data

    :array_3
    .array-data 4
        0x5001d
        0x5001c
        0xa03be
        0x0
        0x5001e
    .end array-data

    :array_4
    .array-data 4
        0x5001f
        0xa03fc
        0xa03fe
        0xa03fd
        0x0
    .end array-data

    .line 116
    :array_5
    .array-data 4
        0x0
        0x20
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x40
        0x5c
        0x5e
        0x5f
        0x60
        0x7c
        0x7e
        0x7f
    .end array-data

    .line 124
    :array_6
    .array-data 4
        0x0
        0xd
        0x0
        0x0
        0x0
        0x0
        0x21
        0x27
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x5b
        0x5d
        0x7b
        0x7d
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "text"    # [B

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->charset:Ljava/nio/charset/Charset;

    .line 160
    return-void
.end method

.method public constructor <init>([BLjava/nio/charset/Charset;)V
    .locals 0
    .param p1, "text"    # [B
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    .line 164
    iput-object p2, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->charset:Ljava/nio/charset/Charset;

    .line 165
    return-void
.end method

.method private static simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "states":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/aztec/encoder/State;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 306
    .local v4, "result":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/aztec/encoder/State;

    .line 307
    .local v2, "newState":Lcom/google/zxing/aztec/encoder/State;
    const/4 v0, 0x1

    .line 308
    .local v0, "add":Z
    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/aztec/encoder/State;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 309
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/aztec/encoder/State;

    .line 310
    .local v3, "oldState":Lcom/google/zxing/aztec/encoder/State;
    invoke-virtual {v3, v2}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 311
    const/4 v0, 0x0

    .line 318
    .end local v3    # "oldState":Lcom/google/zxing/aztec/encoder/State;
    :cond_2
    if-eqz v0, :cond_0

    .line 319
    invoke-interface {v4, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 314
    .restart local v3    # "oldState":Lcom/google/zxing/aztec/encoder/State;
    :cond_3
    invoke-virtual {v2, v3}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 315
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 322
    .end local v0    # "add":Z
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/aztec/encoder/State;>;"
    .end local v2    # "newState":Lcom/google/zxing/aztec/encoder/State;
    .end local v3    # "oldState":Lcom/google/zxing/aztec/encoder/State;
    :cond_4
    return-object v4
.end method

.method private updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V
    .locals 10
    .param p1, "state"    # Lcom/google/zxing/aztec/encoder/State;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "I",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    iget-object v8, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    aget-byte v8, v8, p2

    and-int/lit16 v8, v8, 0xff

    int-to-char v1, v8

    .line 236
    .local v1, "ch":C
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v9

    aget-object v8, v8, v9

    aget v8, v8, v1

    if-lez v8, :cond_4

    const/4 v2, 0x1

    .line 237
    .local v2, "charInCurrentTable":Z
    :goto_0
    const/4 v7, 0x0

    .line 238
    .local v7, "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    const/4 v5, 0x0

    .local v5, "mode":I
    :goto_1
    const/4 v8, 0x4

    if-gt v5, v8, :cond_5

    .line 239
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v8, v8, v5

    aget v3, v8, v1

    .line 240
    .local v3, "charInMode":I
    if-lez v3, :cond_3

    .line 241
    if-nez v7, :cond_0

    .line 243
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v7

    .line 246
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v8

    if-eq v5, v8, :cond_1

    const/4 v8, 0x2

    if-ne v5, v8, :cond_2

    .line 251
    :cond_1
    invoke-virtual {v7, v5, v3}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v4

    .line 252
    .local v4, "latchState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v4    # "latchState":Lcom/google/zxing/aztec/encoder/State;
    :cond_2
    if-nez v2, :cond_3

    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v9

    aget-object v8, v8, v9

    aget v8, v8, v5

    if-ltz v8, :cond_3

    .line 258
    invoke-virtual {v7, v5, v3}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v6

    .line 259
    .local v6, "shiftState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v6    # "shiftState":Lcom/google/zxing/aztec/encoder/State;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 236
    .end local v2    # "charInCurrentTable":Z
    .end local v3    # "charInMode":I
    .end local v5    # "mode":I
    .end local v7    # "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 263
    .restart local v2    # "charInCurrentTable":Z
    .restart local v5    # "mode":I
    .restart local v7    # "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    :cond_5
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result v8

    if-gtz v8, :cond_6

    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v9

    aget-object v8, v8, v9

    aget v8, v8, v1

    if-nez v8, :cond_7

    .line 267
    :cond_6
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    .line 268
    .local v0, "binaryState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v0    # "binaryState":Lcom/google/zxing/aztec/encoder/State;
    :cond_7
    return-void
.end method

.method private static updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V
    .locals 6
    .param p0, "state"    # Lcom/google/zxing/aztec/encoder/State;
    .param p1, "index"    # I
    .param p2, "pairCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "II",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    const/4 v5, 0x2

    const/4 v4, 0x4

    .line 281
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    .line 283
    .local v2, "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    invoke-virtual {v2, v4, p2}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 287
    invoke-virtual {v2, v4, p2}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_0
    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    if-ne p2, v4, :cond_2

    .line 291
    :cond_1
    rsub-int/lit8 v3, p2, 0x10

    .line 292
    invoke-virtual {v2, v5, v3}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    const/4 v4, 0x1

    .line 293
    invoke-virtual {v3, v5, v4}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v1

    .line 294
    .local v1, "digitState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v1    # "digitState":Lcom/google/zxing/aztec/encoder/State;
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 299
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    .line 300
    .local v0, "binaryState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v0    # "binaryState":Lcom/google/zxing/aztec/encoder/State;
    :cond_3
    return-void
.end method

.method private updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;
    .locals 4
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "states":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/aztec/encoder/State;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 225
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    .line 226
    .local v1, "state":Lcom/google/zxing/aztec/encoder/State;
    invoke-direct {p0, v1, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V

    goto :goto_0

    .line 228
    .end local v1    # "state":Lcom/google/zxing/aztec/encoder/State;
    :cond_0
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method private static updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;
    .locals 4
    .param p1, "index"    # I
    .param p2, "pairCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;II)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "states":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/aztec/encoder/State;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 274
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    .line 275
    .local v1, "state":Lcom/google/zxing/aztec/encoder/State;
    invoke-static {v1, p1, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V

    goto :goto_0

    .line 277
    .end local v1    # "state":Lcom/google/zxing/aztec/encoder/State;
    :cond_0
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public encode()Lcom/google/zxing/common/BitArray;
    .locals 11

    .prologue
    const/16 v10, 0x20

    const/4 v7, 0x0

    .line 171
    sget-object v2, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    .line 172
    .local v2, "initialState":Lcom/google/zxing/aztec/encoder/State;
    iget-object v8, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->charset:Ljava/nio/charset/Charset;

    if-eqz v8, :cond_1

    .line 173
    iget-object v8, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v8}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v0

    .line 174
    .local v0, "eci":Lcom/google/zxing/common/CharacterSetECI;
    if-nez v0, :cond_0

    .line 175
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No ECI code for character set "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 177
    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/google/zxing/aztec/encoder/State;->appendFLGn(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    .line 179
    .end local v0    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 180
    .local v6, "states":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v8, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    array-length v8, v8

    if-ge v1, v8, :cond_8

    .line 182
    add-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    array-length v9, v9

    if-ge v8, v9, :cond_2

    iget-object v8, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    add-int/lit8 v9, v1, 0x1

    aget-byte v4, v8, v9

    .line 183
    .local v4, "nextChar":I
    :goto_1
    iget-object v8, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    aget-byte v8, v8, v1

    sparse-switch v8, :sswitch_data_0

    .line 197
    const/4 v5, 0x0

    .line 199
    .local v5, "pairCode":I
    :goto_2
    if-lez v5, :cond_7

    .line 202
    invoke-static {v6, v1, v5}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;

    move-result-object v6

    .line 203
    add-int/lit8 v1, v1, 0x1

    .line 180
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "nextChar":I
    .end local v5    # "pairCode":I
    :cond_2
    move v4, v7

    .line 182
    goto :goto_1

    .line 185
    .restart local v4    # "nextChar":I
    :sswitch_0
    const/16 v8, 0xa

    if-ne v4, v8, :cond_3

    const/4 v5, 0x2

    .line 186
    .restart local v5    # "pairCode":I
    :goto_4
    goto :goto_2

    .end local v5    # "pairCode":I
    :cond_3
    move v5, v7

    .line 185
    goto :goto_4

    .line 188
    :sswitch_1
    if-ne v4, v10, :cond_4

    const/4 v5, 0x3

    .line 189
    .restart local v5    # "pairCode":I
    :goto_5
    goto :goto_2

    .end local v5    # "pairCode":I
    :cond_4
    move v5, v7

    .line 188
    goto :goto_5

    .line 191
    :sswitch_2
    if-ne v4, v10, :cond_5

    const/4 v5, 0x4

    .line 192
    .restart local v5    # "pairCode":I
    :goto_6
    goto :goto_2

    .end local v5    # "pairCode":I
    :cond_5
    move v5, v7

    .line 191
    goto :goto_6

    .line 194
    :sswitch_3
    if-ne v4, v10, :cond_6

    const/4 v5, 0x5

    .line 195
    .restart local v5    # "pairCode":I
    :goto_7
    goto :goto_2

    .end local v5    # "pairCode":I
    :cond_6
    move v5, v7

    .line 194
    goto :goto_7

    .line 206
    .restart local v5    # "pairCode":I
    :cond_7
    invoke-direct {p0, v6, v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;

    move-result-object v6

    goto :goto_3

    .line 210
    .end local v4    # "nextChar":I
    .end local v5    # "pairCode":I
    :cond_8
    new-instance v7, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;

    invoke-direct {v7, p0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;-><init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/aztec/encoder/State;

    .line 217
    .local v3, "minState":Lcom/google/zxing/aztec/encoder/State;
    iget-object v7, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    invoke-virtual {v3, v7}, Lcom/google/zxing/aztec/encoder/State;->toBitArray([B)Lcom/google/zxing/common/BitArray;

    move-result-object v7

    return-object v7

    .line 183
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x2c -> :sswitch_2
        0x2e -> :sswitch_1
        0x3a -> :sswitch_3
    .end sparse-switch
.end method

.class final Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Result"
.end annotation


# instance fields
.field private final bytes:[B


# direct methods
.method constructor <init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V
    .locals 11
    .param p1, "solution"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .prologue
    const/4 v10, 0x0

    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$1000(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    move-result-object v4

    .line 935
    .local v4, "input":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;
    const/4 v7, 0x0

    .line 936
    .local v7, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 937
    .local v0, "bytesAL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .local v6, "randomizePostfixLength":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 939
    .local v5, "randomizeLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$1100(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v8

    sget-object v9, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v8, v9, :cond_0

    .line 940
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$1100(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v8

    sget-object v9, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v8, v9, :cond_0

    .line 941
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$1100(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v8

    sget-object v9, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v8, v9, :cond_1

    .line 942
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v8

    sget-object v9, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v8, v9, :cond_1

    .line 943
    const/16 v8, 0xfe

    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v8

    invoke-static {v8, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->prepend([BLjava/util/List;)I

    move-result v8

    add-int/2addr v7, v8

    .line 945
    :cond_1
    move-object v2, p1

    .line 946
    .local v2, "current":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    :goto_0
    if-eqz v2, :cond_6

    .line 947
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getDataBytes()[B

    move-result-object v8

    invoke-static {v8, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->prepend([BLjava/util/List;)I

    move-result v8

    add-int/2addr v7, v8

    .line 949
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$1200(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getPreviousStartMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v9

    if-eq v8, v9, :cond_4

    .line 950
    :cond_2
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v8

    sget-object v9, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v8, v9, :cond_3

    .line 951
    const/16 v8, 0xf9

    if-gt v7, v8, :cond_5

    .line 952
    int-to-byte v8, v7

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v0, v10, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 953
    add-int/lit8 v7, v7, 0x1

    .line 959
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    :cond_3
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getLatchBytes()[B

    move-result-object v8

    invoke-static {v8, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->prepend([BLjava/util/List;)I

    .line 963
    const/4 v7, 0x0

    .line 966
    :cond_4
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$1200(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    move-result-object v2

    goto :goto_0

    .line 955
    :cond_5
    rem-int/lit16 v8, v7, 0xfa

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v0, v10, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 956
    div-int/lit16 v8, v7, 0xfa

    add-int/lit16 v8, v8, 0xf9

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v0, v10, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 957
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 968
    :cond_6
    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->access$1300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;)I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_9

    .line 969
    const/16 v8, 0xec

    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v8

    invoke-static {v8, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->prepend([BLjava/util/List;)I

    move-result v8

    add-int/2addr v7, v8

    .line 974
    :cond_7
    :goto_2
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v8

    if-lez v8, :cond_8

    .line 975
    const/16 v8, 0xe8

    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v8

    invoke-static {v8, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->prepend([BLjava/util/List;)I

    move-result v8

    add-int/2addr v7, v8

    .line 977
    :cond_8
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_a

    .line 978
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v9, v8

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v0, v9, v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->applyRandomPattern(Ljava/util/List;II)V

    .line 977
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 970
    .end local v3    # "i":I
    :cond_9
    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->access$1300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;)I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_7

    .line 971
    const/16 v8, 0xed

    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v8

    invoke-static {v8, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->prepend([BLjava/util/List;)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_2

    .line 981
    .restart local v3    # "i":I
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getMinSymbolSize(I)I

    move-result v1

    .line 982
    .local v1, "capacity":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v1, :cond_b

    .line 983
    const/16 v8, -0x7f

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v1, :cond_c

    .line 986
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->randomize253State(I)I

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 989
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->bytes:[B

    .line 990
    const/4 v3, 0x0

    :goto_5
    iget-object v8, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->bytes:[B

    array-length v8, v8

    if-ge v3, v8, :cond_d

    .line 991
    iget-object v9, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->bytes:[B

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v9, v3

    .line 990
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 993
    :cond_d
    return-void
.end method

.method static applyRandomPattern(Ljava/util/List;II)V
    .locals 6
    .param p1, "startPosition"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1009
    .local p0, "bytesAL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 1011
    add-int v0, p1, v2

    .line 1012
    .local v0, "Pad_codeword_position":I
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    and-int/lit16 v1, v5, 0xff

    .line 1013
    .local v1, "Pad_codeword_value":I
    add-int/lit8 v5, v0, 0x1

    mul-int/lit16 v5, v5, 0x95

    rem-int/lit16 v5, v5, 0xff

    add-int/lit8 v3, v5, 0x1

    .line 1014
    .local v3, "pseudo_random_number":I
    add-int v4, v1, v3

    .line 1015
    .local v4, "temp_variable":I
    const/16 v5, 0xff

    if-gt v4, v5, :cond_0

    .end local v4    # "temp_variable":I
    :goto_1
    int-to-byte v5, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {p0, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1009
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1015
    .restart local v4    # "temp_variable":I
    :cond_0
    add-int/lit16 v4, v4, -0x100

    goto :goto_1

    .line 1017
    .end local v0    # "Pad_codeword_position":I
    .end local v1    # "Pad_codeword_value":I
    .end local v3    # "pseudo_random_number":I
    .end local v4    # "temp_variable":I
    :cond_1
    return-void
.end method

.method static prepend([BLjava/util/List;)I
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 996
    .local p1, "into":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 997
    const/4 v1, 0x0

    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 996
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 999
    :cond_0
    array-length v1, p0

    return v1
.end method

.method private static randomize253State(I)I
    .locals 3
    .param p0, "codewordPosition"    # I

    .prologue
    .line 1003
    mul-int/lit16 v2, p0, 0x95

    rem-int/lit16 v2, v2, 0xfd

    add-int/lit8 v0, v2, 0x1

    .line 1004
    .local v0, "pseudoRandom":I
    add-int/lit16 v1, v0, 0x81

    .line 1005
    .local v1, "tempVariable":I
    const/16 v2, 0xfe

    if-gt v1, v2, :cond_0

    .end local v1    # "tempVariable":I
    :goto_0
    return v1

    .restart local v1    # "tempVariable":I
    :cond_0
    add-int/lit16 v1, v1, -0xfe

    goto :goto_0
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->bytes:[B

    return-object v0
.end method

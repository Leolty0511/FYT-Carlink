.class public Lcom/autonavi/amapauto/gdarcameraservice/utils/SharedMemUtils;
.super Ljava/lang/Object;
.source "SharedMemUtils.java"


# static fields
.field public static final HEADER_SIZE:I = 0x14

.field public static final VERSION_CODE:B = 0x1t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRead([B)Z
    .locals 3
    .param p0, "header"    # [B

    .prologue
    const/4 v0, 0x0

    .line 26
    if-eqz p0, :cond_0

    array-length v1, p0

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v1, p0, v0

    sget-object v2, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->CAN_READ:Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    invoke-virtual {v2}, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->getFlag()B

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static canWrite([B)Z
    .locals 3
    .param p0, "header"    # [B

    .prologue
    const/4 v0, 0x0

    .line 41
    if-eqz p0, :cond_0

    array-length v1, p0

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v1, p0, v0

    sget-object v2, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->CAN_WRITE:Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    invoke-virtual {v2}, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->getFlag()B

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getContentSize([B)I
    .locals 3
    .param p0, "header"    # [B

    .prologue
    .line 113
    if-eqz p0, :cond_0

    array-length v1, p0

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 114
    :cond_0
    const/4 v0, -0x1

    .line 121
    :goto_0
    return v0

    .line 116
    :cond_1
    const/4 v0, 0x0

    .line 117
    .local v0, "result":I
    const/16 v1, 0xa

    aget-byte v1, p0, v1

    and-int/lit16 v0, v1, 0xff

    .line 118
    shl-int/lit8 v1, v0, 0x8

    const/16 v2, 0xb

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 119
    shl-int/lit8 v1, v0, 0x8

    const/16 v2, 0xc

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 120
    shl-int/lit8 v1, v0, 0x8

    const/16 v2, 0xd

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 121
    goto :goto_0
.end method

.method public static getLength([B)I
    .locals 3
    .param p0, "header"    # [B

    .prologue
    .line 90
    if-eqz p0, :cond_0

    array-length v1, p0

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 91
    :cond_0
    const/4 v0, -0x1

    .line 98
    :goto_0
    return v0

    .line 93
    :cond_1
    const/4 v0, 0x0

    .line 94
    .local v0, "result":I
    const/4 v1, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v0, v1, 0xff

    .line 95
    shl-int/lit8 v1, v0, 0x8

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 96
    shl-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 97
    shl-int/lit8 v1, v0, 0x8

    const/16 v2, 0x9

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 98
    goto :goto_0
.end method

.method public static getOffset([B)I
    .locals 3
    .param p0, "header"    # [B

    .prologue
    .line 67
    if-eqz p0, :cond_0

    array-length v1, p0

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 68
    :cond_0
    const/4 v0, -0x1

    .line 75
    :goto_0
    return v0

    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 71
    .local v0, "result":I
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v0, v1, 0xff

    .line 72
    shl-int/lit8 v1, v0, 0x8

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 73
    shl-int/lit8 v1, v0, 0x8

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 74
    shl-int/lit8 v1, v0, 0x8

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 75
    goto :goto_0
.end method

.method public static initHeader([B)V
    .locals 3
    .param p0, "header"    # [B

    .prologue
    const/4 v2, 0x1

    .line 18
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 23
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x0

    sget-object v1, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->CAN_WRITE:Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->getFlag()B

    move-result v1

    aput-byte v1, p0, v0

    .line 22
    aput-byte v2, p0, v2

    goto :goto_0
.end method

.method public static setCanRead([B)Z
    .locals 3
    .param p0, "header"    # [B

    .prologue
    const/4 v0, 0x0

    .line 33
    if-eqz p0, :cond_0

    array-length v1, p0

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    sget-object v1, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->CAN_READ:Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->getFlag()B

    move-result v1

    aput-byte v1, p0, v0

    .line 37
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setContentSize([BI)Z
    .locals 2
    .param p0, "header"    # [B
    .param p1, "contentSize"    # I

    .prologue
    .line 102
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    .line 105
    :cond_1
    const/16 v0, 0xa

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 106
    const/16 v0, 0xb

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 107
    const/16 v0, 0xc

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 108
    const/16 v0, 0xd

    int-to-byte v1, p1

    aput-byte v1, p0, v0

    .line 109
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setLength([BI)Z
    .locals 2
    .param p0, "header"    # [B
    .param p1, "length"    # I

    .prologue
    .line 79
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 80
    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    .line 82
    :cond_1
    const/4 v0, 0x6

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 83
    const/4 v0, 0x7

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 84
    const/16 v0, 0x8

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 85
    const/16 v0, 0x9

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 86
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setOffset([BI)Z
    .locals 2
    .param p0, "header"    # [B
    .param p1, "start"    # I

    .prologue
    .line 56
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    .line 59
    :cond_1
    const/4 v0, 0x2

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 60
    const/4 v0, 0x3

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 61
    const/4 v0, 0x4

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 62
    const/4 v0, 0x5

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 63
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setWritable([B)Z
    .locals 3
    .param p0, "header"    # [B

    .prologue
    const/4 v0, 0x0

    .line 48
    if-eqz p0, :cond_0

    array-length v1, p0

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    sget-object v1, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->CAN_WRITE:Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->getFlag()B

    move-result v1

    aput-byte v1, p0, v0

    .line 52
    const/4 v0, 0x1

    goto :goto_0
.end method

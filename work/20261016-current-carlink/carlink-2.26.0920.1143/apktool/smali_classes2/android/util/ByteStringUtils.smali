.class public final Landroid/util/ByteStringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEX_ARRAY:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "0123456789ABCDEF"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroid/util/ByteStringUtils;->HEX_ARRAY:[C

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromHexToByteArray(Ljava/lang/String;)[B
    .locals 5

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    rem-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    array-length v0, p0

    .line 23
    div-int/lit8 v0, v0, 0x2

    .line 24
    .line 25
    new-array v1, v0, [B

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    if-ge v2, v0, :cond_1

    .line 29
    .line 30
    mul-int/lit8 v3, v2, 0x2

    .line 31
    .line 32
    aget-char v4, p0, v3

    .line 33
    .line 34
    invoke-static {v4}, Landroid/util/ByteStringUtils;->getIndex(C)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    shl-int/lit8 v4, v4, 0x4

    .line 39
    .line 40
    and-int/lit16 v4, v4, 0xf0

    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    aget-char v3, p0, v3

    .line 45
    .line 46
    invoke-static {v3}, Landroid/util/ByteStringUtils;->getIndex(C)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    and-int/lit8 v3, v3, 0xf

    .line 51
    .line 52
    or-int/2addr v3, v4

    .line 53
    int-to-byte v3, v3

    .line 54
    aput-byte v3, v1, v2

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-object v1

    .line 60
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 61
    return-object p0
.end method

.method private static getIndex(C)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Landroid/util/ByteStringUtils;->HEX_ARRAY:[C

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget-char v1, v1, v0

    .line 8
    .line 9
    if-ne v1, p0, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p0, -0x1

    .line 16
    return p0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 7

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    array-length v0, p0

    .line 7
    rem-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    array-length v0, p0

    .line 13
    mul-int/lit8 v1, v0, 0x2

    .line 14
    .line 15
    new-array v1, v1, [C

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v0, :cond_1

    .line 19
    .line 20
    aget-byte v3, p0, v2

    .line 21
    .line 22
    and-int/lit16 v3, v3, 0xff

    .line 23
    .line 24
    mul-int/lit8 v4, v2, 0x2

    .line 25
    .line 26
    sget-object v5, Landroid/util/ByteStringUtils;->HEX_ARRAY:[C

    .line 27
    .line 28
    ushr-int/lit8 v6, v3, 0x4

    .line 29
    .line 30
    aget-char v6, v5, v6

    .line 31
    .line 32
    aput-char v6, v1, v4

    .line 33
    .line 34
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    and-int/lit8 v3, v3, 0xf

    .line 37
    .line 38
    aget-char v3, v5, v3

    .line 39
    .line 40
    aput-char v3, v1, v4

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 52
    return-object p0
.end method

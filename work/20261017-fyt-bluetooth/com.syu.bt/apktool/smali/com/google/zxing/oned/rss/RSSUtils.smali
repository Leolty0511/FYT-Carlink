.class public final Lcom/google/zxing/oned/rss/RSSUtils;
.super Ljava/lang/Object;
.source "RSSUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combins(II)I
    .locals 6
    .param p0, "n"    # I
    .param p1, "r"    # I

    .prologue
    .line 64
    sub-int v5, p0, p1

    if-le v5, p1, :cond_1

    .line 65
    move v3, p1

    .line 66
    .local v3, "minDenom":I
    sub-int v2, p0, p1

    .line 71
    .local v2, "maxDenom":I
    :goto_0
    const/4 v4, 0x1

    .line 72
    .local v4, "val":I
    const/4 v1, 0x1

    .line 73
    .local v1, "j":I
    move v0, p0

    .local v0, "i":I
    :goto_1
    if-le v0, v2, :cond_2

    .line 74
    mul-int/2addr v4, v0

    .line 75
    if-gt v1, v3, :cond_0

    .line 76
    div-int/2addr v4, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 73
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 68
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "maxDenom":I
    .end local v3    # "minDenom":I
    .end local v4    # "val":I
    :cond_1
    sub-int v3, p0, p1

    .line 69
    .restart local v3    # "minDenom":I
    move v2, p1

    .restart local v2    # "maxDenom":I
    goto :goto_0

    .line 80
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v4    # "val":I
    :cond_2
    :goto_2
    if-gt v1, v3, :cond_3

    .line 81
    div-int/2addr v4, v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 84
    :cond_3
    return v4
.end method

.method public static getRSSvalue([IIZ)I
    .locals 13
    .param p0, "widths"    # [I
    .param p1, "maxWidth"    # I
    .param p2, "noNarrow"    # Z

    .prologue
    const/4 v12, 0x1

    .line 25
    const/4 v5, 0x0

    .line 26
    .local v5, "n":I
    array-length v11, p0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_0

    aget v9, p0, v10

    .line 27
    .local v9, "width":I
    add-int/2addr v5, v9

    .line 26
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 29
    .end local v9    # "width":I
    :cond_0
    const/4 v8, 0x0

    .line 30
    .local v8, "val":I
    const/4 v6, 0x0

    .line 31
    .local v6, "narrowMask":I
    array-length v1, p0

    .line 32
    .local v1, "elements":I
    const/4 v0, 0x0

    .local v0, "bar":I
    :goto_1
    add-int/lit8 v10, v1, -0x1

    if-ge v0, v10, :cond_6

    .line 34
    const/4 v2, 0x1

    .local v2, "elmWidth":I
    shl-int v10, v12, v0

    or-int/2addr v6, v10

    .line 35
    :goto_2
    aget v10, p0, v0

    if-ge v2, v10, :cond_5

    .line 37
    sub-int v10, v5, v2

    add-int/lit8 v10, v10, -0x1

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x2

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v7

    .line 38
    .local v7, "subVal":I
    if-eqz p2, :cond_1

    if-nez v6, :cond_1

    sub-int v10, v5, v2

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x1

    if-lt v10, v11, :cond_1

    .line 40
    sub-int v10, v5, v2

    sub-int v11, v1, v0

    sub-int/2addr v10, v11

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x2

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v10

    sub-int/2addr v7, v10

    .line 43
    :cond_1
    sub-int v10, v1, v0

    add-int/lit8 v10, v10, -0x1

    if-le v10, v12, :cond_4

    .line 44
    const/4 v3, 0x0

    .line 45
    .local v3, "lessVal":I
    sub-int v10, v5, v2

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x2

    sub-int v4, v10, v11

    .line 46
    .local v4, "mxwElement":I
    :goto_3
    if-le v4, p1, :cond_2

    .line 47
    sub-int v10, v5, v2

    sub-int/2addr v10, v4

    add-int/lit8 v10, v10, -0x1

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x3

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v10

    add-int/2addr v3, v10

    .line 46
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 50
    :cond_2
    add-int/lit8 v10, v1, -0x1

    sub-int/2addr v10, v0

    mul-int/2addr v10, v3

    sub-int/2addr v7, v10

    .line 54
    .end local v3    # "lessVal":I
    .end local v4    # "mxwElement":I
    :cond_3
    :goto_4
    add-int/2addr v8, v7

    .line 36
    add-int/lit8 v2, v2, 0x1

    shl-int v10, v12, v0

    xor-int/lit8 v10, v10, -0x1

    and-int/2addr v6, v10

    goto :goto_2

    .line 51
    :cond_4
    sub-int v10, v5, v2

    if-le v10, p1, :cond_3

    .line 52
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 56
    .end local v7    # "subVal":I
    :cond_5
    sub-int/2addr v5, v2

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    .end local v2    # "elmWidth":I
    :cond_6
    return v8
.end method

.class Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[BIZ)I
    .locals 5

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-ltz p3, :cond_5

    .line 1
    array-length v0, p1

    if-lt v0, p3, :cond_5

    array-length v0, p2

    if-lt v0, p3, :cond_5

    const/4 v0, 0x0

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p0, v1, :cond_2

    if-eq p0, v2, :cond_1

    if-eq p0, v3, :cond_3

    const/4 v4, 0x2

    if-eq p0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2
    :cond_3
    :goto_0
    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/AndroidBidi;->runBidi(I[C[BIZ)I

    move-result p0

    and-int/2addr p0, v3

    if-nez p0, :cond_4

    move v2, v3

    :cond_4
    return v2

    .line 3
    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_6
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static directions(I[BI[CII)Landroid/text/Layout$Directions;
    .locals 16

    move/from16 v0, p5

    if-nez v0, :cond_0

    .line 1
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    :cond_0
    const/4 v2, 0x1

    move/from16 v3, p0

    if-ne v3, v2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 2
    :goto_0
    aget-byte v4, p1, p2

    add-int/lit8 v5, p2, 0x1

    add-int v6, p2, v0

    move v8, v2

    move v7, v4

    :goto_1
    if-ge v5, v6, :cond_3

    .line 3
    aget-byte v9, p1, v5

    if-eq v9, v7, :cond_2

    add-int/lit8 v8, v8, 0x1

    move v7, v9

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    and-int/lit8 v5, v7, 0x1

    and-int/lit8 v6, v3, 0x1

    if-eq v5, v6, :cond_7

    move v5, v0

    :cond_4
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_6

    add-int v6, p4, v5

    .line 4
    aget-char v6, p3, v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_5

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_5
    const/16 v7, 0x20

    if-eq v6, v7, :cond_4

    const/16 v7, 0x9

    if-eq v6, v7, :cond_4

    :cond_6
    :goto_2
    add-int/2addr v5, v2

    if-eq v5, v0, :cond_8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    move v5, v0

    :cond_8
    :goto_3
    if-ne v8, v2, :cond_a

    if-ne v4, v3, :cond_a

    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_9

    .line 5
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object v0

    .line 6
    :cond_9
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    :cond_a
    mul-int/lit8 v6, v8, 0x2

    .line 7
    new-array v7, v6, [I

    shl-int/lit8 v9, v4, 0x1a

    add-int v10, p2, v5

    move/from16 v13, p2

    move v15, v13

    move v14, v2

    move v11, v4

    move v12, v9

    move v9, v11

    :goto_4
    if-ge v13, v10, :cond_e

    .line 8
    aget-byte v1, p1, v13

    if-eq v1, v4, :cond_d

    if-le v1, v11, :cond_b

    move v11, v1

    goto :goto_5

    :cond_b
    if-ge v1, v9, :cond_c

    move v9, v1

    :cond_c
    :goto_5
    add-int/lit8 v4, v14, 0x1

    sub-int v15, v13, v15

    or-int/2addr v12, v15

    .line 9
    aput v12, v7, v14

    add-int/lit8 v14, v4, 0x1

    sub-int v12, v13, p2

    .line 10
    aput v12, v7, v4

    shl-int/lit8 v4, v1, 0x1a

    move v12, v4

    move v15, v13

    move v4, v1

    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_e
    sub-int/2addr v10, v15

    or-int v1, v10, v12

    .line 11
    aput v1, v7, v14

    if-ge v5, v0, :cond_f

    add-int/2addr v14, v2

    .line 12
    aput v5, v7, v14

    add-int/2addr v14, v2

    sub-int/2addr v0, v5

    shl-int/lit8 v1, v3, 0x1a

    or-int/2addr v0, v1

    .line 13
    aput v0, v7, v14

    :cond_f
    and-int/lit8 v0, v9, 0x1

    if-ne v0, v3, :cond_11

    add-int/lit8 v9, v9, 0x1

    if-le v11, v9, :cond_10

    :goto_6
    move v0, v2

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    goto :goto_7

    :cond_11
    if-le v8, v2, :cond_10

    goto :goto_6

    :goto_7
    if-eqz v0, :cond_16

    sub-int/2addr v11, v2

    :goto_8
    if-lt v11, v9, :cond_16

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v6, :cond_15

    .line 14
    aget v1, v7, v0

    aget-byte v1, p1, v1

    if-lt v1, v11, :cond_14

    add-int/lit8 v1, v0, 0x2

    :goto_a
    if-ge v1, v6, :cond_12

    .line 15
    aget v2, v7, v1

    aget-byte v2, p1, v2

    if-lt v2, v11, :cond_12

    add-int/lit8 v1, v1, 0x2

    goto :goto_a

    :cond_12
    add-int/lit8 v2, v1, -0x2

    :goto_b
    if-ge v0, v2, :cond_13

    .line 16
    aget v3, v7, v0

    aget v4, v7, v2

    aput v4, v7, v0

    aput v3, v7, v2

    add-int/lit8 v3, v0, 0x1

    .line 17
    aget v4, v7, v3

    add-int/lit8 v5, v2, 0x1

    aget v8, v7, v5

    aput v8, v7, v3

    aput v4, v7, v5

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v2, -0x2

    goto :goto_b

    :cond_13
    add-int/lit8 v0, v1, 0x2

    :cond_14
    add-int/lit8 v0, v0, 0x2

    goto :goto_9

    :cond_15
    add-int/lit8 v11, v11, -0x1

    goto :goto_8

    .line 18
    :cond_16
    new-instance v0, Landroid/text/Layout$Directions;

    invoke-direct {v0, v7}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object v0
.end method

.method private static native runBidi(I[C[BIZ)I
.end method

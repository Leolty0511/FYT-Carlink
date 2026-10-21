.class public abstract Landroid/security/keystore/ArrayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneIfNotEmpty([B)[B
    .locals 1

    if-eqz p0, :cond_0

    .line 2
    array-length v0, p0

    if-lez v0, :cond_0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    :cond_0
    return-object p0
.end method

.method public static cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    array-length v0, p0

    if-lez v0, :cond_0

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public static concat([BII[BII)[B
    .locals 2

    if-nez p2, :cond_0

    .line 2
    invoke-static {p3, p4, p5}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p5, :cond_1

    .line 3
    invoke-static {p0, p1, p2}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object p0

    return-object p0

    :cond_1
    add-int v0, p2, p5

    .line 4
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 6
    invoke-static {p3, p4, v0, p2, p5}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method public static concat([B[B)[B
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    array-length v2, p0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v4, 0x0

    if-eqz p1, :cond_1

    array-length v0, p1

    :cond_1
    move v5, v0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static concat([I[I)[I
    .locals 3

    if-eqz p0, :cond_3

    .line 7
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 8
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 10
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 11
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy([II[III)V

    return-object v0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static subarray([BII)[B
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Llibcore/util/EmptyArray;->BYTE:[B

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    array-length v0, p0

    .line 9
    if-ne p2, v0, :cond_1

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    new-array v0, p2, [B

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

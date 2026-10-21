.class public Ll0/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(B)V
    .locals 1

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_0

    and-int/lit8 p0, p0, 0x7f

    mul-int/lit8 p0, p0, 0xa

    rsub-int p0, p0, 0x3e8

    goto :goto_0

    :cond_0
    mul-int/lit8 p0, p0, 0xa

    add-int/lit16 p0, p0, 0x3e8

    .line 1
    :goto_0
    invoke-static {p0}, Lu0/d;->A3(I)V

    return-void
.end method

.method public static b(BBB)V
    .locals 1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_1

    and-int/lit16 p1, p0, 0xff

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    sub-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0xa

    add-int/lit16 p0, p0, 0x3e8

    and-int/lit8 p1, p2, 0xf

    .line 1
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p0, p1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0xa

    rsub-int p0, v0, 0x3e8

    and-int/lit8 p1, p2, 0xf

    .line 2
    rem-int/lit8 p1, p1, 0xa

    sub-int/2addr p0, p1

    .line 3
    :goto_0
    invoke-static {p0}, Lu0/d;->A3(I)V

    :cond_1
    return-void
.end method

.method public static c(B)V
    .locals 1

    and-int/lit16 v0, p0, 0x80

    and-int/lit16 p0, p0, 0xff

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x80

    const/16 v0, 0x28

    if-gt p0, v0, :cond_1

    mul-int/lit8 p0, p0, 0xa

    rsub-int p0, p0, 0x3e8

    .line 1
    invoke-static {p0}, Lu0/d;->A3(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    if-gt p0, v0, :cond_1

    mul-int/lit8 p0, p0, 0xa

    add-int/lit16 p0, p0, 0x3e8

    .line 2
    invoke-static {p0}, Lu0/d;->A3(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static d(B)V
    .locals 1

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sub-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0xa

    rsub-int p0, v0, 0x3e8

    goto :goto_0

    :cond_0
    sub-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0xa

    add-int/lit16 p0, p0, 0x3e8

    .line 1
    :goto_0
    invoke-static {p0}, Lu0/d;->A3(I)V

    return-void
.end method

.method public static e(BB)V
    .locals 4

    and-int/lit8 p0, p0, 0x40

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    and-int/lit16 v2, p1, 0xff

    const/16 v3, 0x80

    if-eq v2, v3, :cond_1

    and-int/lit16 v1, p1, 0x80

    :cond_1
    const p1, 0x8000

    if-eqz v1, :cond_4

    not-int v1, v2

    add-int/2addr v1, v0

    and-int/lit16 v0, v1, 0xff

    if-eqz p0, :cond_3

    const/16 p0, 0x12

    if-lt v0, p0, :cond_2

    mul-int/lit8 v0, v0, 0x9

    .line 1
    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x20

    mul-int/lit8 v0, v0, 0xa

    rsub-int p0, v0, 0x3e8

    goto :goto_1

    :cond_2
    mul-int/lit8 v0, v0, 0x9

    .line 2
    div-int/lit8 v0, v0, 0x5

    rsub-int/lit8 p0, v0, 0x20

    mul-int/lit8 p0, p0, 0xa

    add-int/lit16 p0, p0, 0x3e8

    :goto_1
    or-int/2addr p0, p1

    goto :goto_2

    :cond_3
    mul-int/lit8 v0, v0, 0xa

    rsub-int p0, v0, 0x3e8

    goto :goto_2

    :cond_4
    if-eqz p0, :cond_5

    mul-int/lit8 v2, v2, 0x9

    .line 3
    div-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x20

    mul-int/lit8 v2, v2, 0xa

    add-int/lit16 v2, v2, 0x3e8

    or-int p0, v2, p1

    goto :goto_2

    :cond_5
    mul-int/lit8 v2, v2, 0xa

    add-int/lit16 p0, v2, 0x3e8

    .line 4
    :goto_2
    invoke-static {p0}, Lu0/d;->A3(I)V

    return-void
.end method

.method public static f(B)V
    .locals 1

    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_0

    and-int/lit16 p0, p0, 0xff

    not-int p0, p0

    add-int/lit8 p0, p0, 0x1

    and-int/lit16 p0, p0, 0xff

    mul-int/lit8 p0, p0, 0xa

    rsub-int p0, p0, 0x3e8

    goto :goto_0

    :cond_0
    and-int/lit16 p0, p0, 0xff

    mul-int/lit8 p0, p0, 0xa

    add-int/lit16 p0, p0, 0x3e8

    .line 1
    :goto_0
    invoke-static {p0}, Lu0/d;->A3(I)V

    return-void
.end method

.method public static g(B)V
    .locals 2

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_1

    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_0

    and-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0xa

    rsub-int p0, p0, 0x3e8

    goto :goto_0

    :cond_0
    and-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0xa

    add-int/lit16 p0, p0, 0x3e8

    .line 1
    :goto_0
    invoke-static {p0}, Lu0/d;->A3(I)V

    :cond_1
    return-void
.end method

.method public static h(B)V
    .locals 4

    const-string v0, "persist.fyt.temperature"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit16 v2, p0, 0x80

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v1, v3

    :cond_0
    if-eqz v1, :cond_1

    and-int/lit16 p0, p0, 0xff

    rsub-int p0, p0, 0xff

    add-int/2addr p0, v3

    goto :goto_0

    :cond_1
    and-int/lit16 p0, p0, 0xff

    :goto_0
    if-eqz v1, :cond_2

    const/16 v1, 0x28

    if-gt p0, v1, :cond_3

    mul-int/lit8 p0, p0, 0xa

    rsub-int p0, p0, 0x3e8

    goto :goto_1

    :cond_2
    const/16 v1, 0x55

    if-gt p0, v1, :cond_3

    mul-int/lit8 p0, p0, 0xa

    add-int/lit16 p0, p0, 0x3e8

    :cond_3
    :goto_1
    if-lez v0, :cond_4

    const v0, 0x8000

    or-int/2addr p0, v0

    .line 2
    :cond_4
    invoke-static {p0}, Lu0/d;->A3(I)V

    return-void
.end method

.method public static i(B)V
    .locals 1

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_0

    and-int/lit8 p0, p0, 0x7f

    mul-int/lit8 p0, p0, 0xa

    rsub-int p0, p0, 0x3e8

    goto :goto_0

    :cond_0
    and-int/lit8 p0, p0, 0x7f

    mul-int/lit8 p0, p0, 0xa

    add-int/lit16 p0, p0, 0x3e8

    .line 1
    :goto_0
    invoke-static {p0}, Lu0/d;->A3(I)V

    return-void
.end method

.method public static j(B)V
    .locals 1

    const/16 v0, 0xff

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_1

    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x80

    mul-int/lit8 p0, p0, 0xa

    rsub-int p0, p0, 0x3e8

    goto :goto_0

    :cond_0
    mul-int/lit8 p0, p0, 0xa

    add-int/lit16 p0, p0, 0x3e8

    .line 1
    :goto_0
    invoke-static {p0}, Lu0/d;->A3(I)V

    :cond_1
    return-void
.end method

.method public static k(B)V
    .locals 2

    and-int/lit8 v0, p0, 0x7f

    and-int/lit16 p0, p0, 0x80

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/16 p0, 0x28

    if-le v0, p0, :cond_0

    .line 1
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0xa

    rsub-int p0, v0, 0x3e8

    .line 2
    invoke-static {p0}, Lu0/d;->A3(I)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x56

    if-le v0, p0, :cond_2

    .line 3
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0xa

    add-int/lit16 v0, v0, 0x3e8

    .line 4
    invoke-static {v0}, Lu0/d;->A3(I)V

    :goto_0
    return-void
.end method

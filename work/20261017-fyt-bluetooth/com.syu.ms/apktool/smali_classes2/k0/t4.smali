.class public Lk0/t4;
.super Lk0/lt;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 9

    add-int/lit8 p3, p2, 0x0

    .line 1
    aget-byte p3, p1, p3

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p3, v4, :cond_4

    if-eq p3, v2, :cond_3

    if-eq p3, v1, :cond_2

    if-eq p3, v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_f

    add-int/2addr p2, v1

    .line 3
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    if-eqz p1, :cond_1

    .line 4
    invoke-static {v4}, Lk0/qt;->a(I)V

    goto/16 :goto_6

    .line 5
    :cond_1
    invoke-static {v3}, Lk0/qt;->a(I)V

    goto/16 :goto_6

    .line 6
    :cond_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_f

    add-int/lit8 p3, p2, 0x2

    .line 7
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 8
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 9
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x5

    .line 10
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x6

    .line 11
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x7

    .line 12
    aget-byte v4, p1, v4

    add-int/lit8 v5, p2, 0x8

    .line 13
    aget-byte v5, p1, v5

    add-int/lit8 p2, p2, 0x9

    .line 14
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 15
    invoke-static {p2}, Ll0/c0;->J1(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->D2(I)V

    and-int/lit16 p2, v0, 0xff

    .line 16
    invoke-static {p2}, Ll0/c0;->J1(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->E2(I)V

    and-int/lit16 p2, v1, 0xff

    .line 17
    invoke-static {p2}, Ll0/c0;->J1(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->F2(I)V

    and-int/lit16 p2, v2, 0xff

    .line 18
    invoke-static {p2}, Ll0/c0;->J1(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->G2(I)V

    and-int/lit16 p2, v3, 0xff

    .line 19
    invoke-static {p2}, Ll0/c0;->J1(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->R2(I)V

    and-int/lit16 p2, v4, 0xff

    .line 20
    invoke-static {p2}, Ll0/c0;->J1(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->S2(I)V

    and-int/lit16 p2, v5, 0xff

    .line 21
    invoke-static {p2}, Ll0/c0;->J1(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->T2(I)V

    and-int/lit16 p1, p1, 0xff

    .line 22
    invoke-static {p1}, Ll0/c0;->J1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_6

    :cond_3
    add-int/2addr p2, v2

    .line 23
    aget-byte p1, p1, p2

    const/16 p2, 0x64

    invoke-static {p1, v3, p2}, Lk0/qt;->o(IZI)V

    goto/16 :goto_6

    :cond_4
    add-int/lit8 p3, p2, 0x2

    .line 24
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    and-int/lit8 v5, p3, 0xf

    const/16 v6, 0x15

    new-array v7, v4, [I

    aput v5, v7, v3

    .line 25
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    shr-int/2addr p3, v0

    const/4 v5, 0x5

    if-eq p3, v4, :cond_9

    if-eq p3, v2, :cond_8

    if-eq p3, v1, :cond_7

    if-eq p3, v0, :cond_6

    if-eq p3, v5, :cond_5

    move p3, v3

    move v0, p3

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_5
    move v0, v3

    move v6, v0

    move p3, v4

    goto :goto_1

    :cond_6
    move v6, v3

    move p3, v4

    move v0, p3

    goto :goto_1

    :cond_7
    move p3, v3

    move v6, p3

    move v0, v4

    goto :goto_1

    :cond_8
    move p3, v3

    move v0, v4

    goto :goto_0

    :cond_9
    move p3, v3

    move v0, p3

    move v6, v4

    :goto_1
    const/16 v7, 0x12

    new-array v8, v4, [I

    aput p3, v8, v3

    .line 26
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v7, v4, [I

    aput v0, v7, v3

    .line 27
    invoke-static {p3, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v0, v4, [I

    aput v6, v0, v3

    .line 28
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 29
    aget-byte v0, p1, p3

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v6, p2, 0x4

    .line 30
    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    const-string v8, "persist.fyt.reversetemp"

    .line 31
    invoke-static {v8, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 32
    aget-byte v0, p1, v6

    and-int/lit16 v0, v0, 0xff

    .line 33
    aget-byte p3, p1, p3

    and-int/lit16 v7, p3, 0xff

    :cond_a
    and-int/lit8 p3, v0, 0x1

    shr-int/2addr v0, v4

    and-int/lit8 v0, v0, 0x7f

    const/16 v6, 0x1d

    if-nez p3, :cond_b

    new-array p3, v4, [I

    aput v3, p3, v3

    .line 34
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_b
    new-array p3, v4, [I

    aput v4, p3, v3

    .line 35
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 p3, 0x1b

    new-array v6, v4, [I

    aput v0, v6, v3

    .line 36
    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    and-int/lit8 p3, v7, 0x1

    shr-int/lit8 v0, v7, 0x1

    and-int/lit8 v0, v0, 0x7f

    const/16 v6, 0x1c

    if-nez p3, :cond_c

    new-array p3, v4, [I

    aput v3, p3, v3

    .line 37
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    new-array p3, v4, [I

    aput v4, p3, v3

    .line 38
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array p3, v4, [I

    aput v0, p3, v3

    .line 39
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    add-int/2addr p2, v5

    .line 40
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x10

    new-array p3, v4, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v4

    aput v0, p3, v3

    .line 41
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xd

    new-array p3, v4, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v4

    aput v0, p3, v3

    .line 42
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xe

    new-array p3, v4, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v4

    aput v0, p3, v3

    .line 43
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x41

    new-array p3, v4, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v4

    aput v0, p3, v3

    .line 44
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    and-int/lit8 p2, p1, 0xf

    shr-int/2addr p2, v2

    const/16 p3, 0xc

    new-array v0, v4, [I

    if-ne p2, v2, :cond_d

    move p2, v4

    goto :goto_4

    :cond_d
    move p2, v3

    :goto_4
    aput p2, v0, v3

    .line 45
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    and-int/2addr p1, v1

    const/16 p2, 0xb

    new-array p3, v4, [I

    if-ne p1, v2, :cond_e

    goto :goto_5

    :cond_e
    move v4, v3

    :goto_5
    aput v4, p3, v3

    .line 46
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    :cond_f
    :goto_6
    return-void
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

    if-ge p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

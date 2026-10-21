.class public Lk0/xm;
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

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->i:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->l:I

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x24

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v1, :cond_11

    const/16 v1, 0x40

    if-eq v0, v1, :cond_10

    const/16 v1, 0x7d

    const/16 v8, 0xb

    const/16 v9, 0xff

    if-eq v0, v1, :cond_e

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_d

    const/16 p3, 0x28

    if-eq v0, p3, :cond_1

    const/16 p3, 0x29

    if-eq v0, p3, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    const/16 p2, 0x1e77

    invoke-static {p3, p1, v6, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_5

    :cond_1
    const/16 p3, 0xa

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x2

    .line 3
    aget-byte v10, p1, v1

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v7

    aput v10, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    .line 4
    aget-byte v0, p1, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v7

    aput v0, p3, v6

    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v0, v7, [I

    .line 5
    aget-byte v8, p1, v1

    shr-int/2addr v8, v4

    and-int/2addr v8, v7

    aput v8, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x35

    new-array v0, v7, [I

    .line 6
    aget-byte v8, p1, v1

    shr-int/lit8 v3, v8, 0x4

    and-int/2addr v3, v7

    aput v3, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v0, v7, [I

    .line 7
    aget-byte v3, p1, v1

    shr-int/lit8 v2, v3, 0x3

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xe

    new-array v0, v7, [I

    .line 8
    aget-byte v2, p1, v1

    shr-int/2addr v2, v5

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x41

    new-array v0, v7, [I

    .line 9
    aget-byte v2, p1, v1

    shr-int/2addr v2, v7

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v0, v7, [I

    .line 10
    aget-byte v1, p1, v1

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x3

    .line 11
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v0, v7, [I

    .line 12
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v7, [I

    .line 13
    aget-byte v2, p1, v1

    shr-int/2addr v2, v4

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v7, [I

    .line 14
    aget-byte v1, p1, v1

    shr-int/2addr v1, v6

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 15
    invoke-static {p3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/4 v0, -0x3

    const/4 v1, -0x2

    const/16 v2, 0x1f

    const/16 v3, 0x1c

    const/16 v5, 0x1b

    if-eqz p3, :cond_6

    add-int/lit8 p3, p2, 0x4

    .line 16
    aget-byte v8, p1, p3

    and-int/2addr v8, v9

    if-nez v8, :cond_2

    new-array p3, v7, [I

    aput v1, p3, v6

    .line 17
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    .line 18
    :cond_2
    aget-byte v8, p1, p3

    and-int/2addr v8, v9

    if-ne v8, v2, :cond_3

    new-array p3, v7, [I

    aput v0, p3, v6

    .line 19
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v8, v7, [I

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    aput p3, v8, v6

    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    :goto_0
    add-int/lit8 p3, p2, 0x5

    .line 21
    aget-byte v3, p1, p3

    and-int/2addr v3, v9

    if-nez v3, :cond_4

    new-array p3, v7, [I

    aput v1, p3, v6

    .line 22
    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    .line 23
    :cond_4
    aget-byte v1, p1, p3

    and-int/2addr v1, v9

    if-ne v1, v2, :cond_5

    new-array p3, v7, [I

    aput v0, p3, v6

    .line 24
    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v0, v7, [I

    .line 25
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    aput p3, v0, v6

    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    add-int/lit8 p3, p2, 0x4

    .line 26
    aget-byte v8, p1, p3

    and-int/2addr v8, v9

    if-nez v8, :cond_7

    new-array p3, v7, [I

    aput v1, p3, v6

    .line 27
    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    .line 28
    :cond_7
    aget-byte v8, p1, p3

    and-int/2addr v8, v9

    if-ne v8, v2, :cond_8

    new-array p3, v7, [I

    aput v0, p3, v6

    .line 29
    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    new-array v8, v7, [I

    .line 30
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    aput p3, v8, v6

    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/lit8 p3, p2, 0x5

    .line 31
    aget-byte v5, p1, p3

    and-int/2addr v5, v9

    if-nez v5, :cond_9

    new-array p3, v7, [I

    aput v1, p3, v6

    .line 32
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    .line 33
    :cond_9
    aget-byte v1, p1, p3

    and-int/2addr v1, v9

    if-ne v1, v2, :cond_a

    new-array p3, v7, [I

    aput v0, p3, v6

    .line 34
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    new-array v0, v7, [I

    .line 35
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    aput p3, v0, v6

    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 p3, 0x3f

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x6

    .line 36
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x62

    new-array v0, v7, [I

    .line 37
    aget-byte v1, p1, v1

    shr-int/2addr v1, v6

    and-int/lit8 v1, v1, 0x7

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p2, p2, 0x7

    .line 38
    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    if-eqz p1, :cond_c

    if-ne p1, v9, :cond_b

    goto :goto_3

    :cond_b
    mul-int/2addr p1, v4

    add-int/lit16 p1, p1, 0x258

    .line 39
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto/16 :goto_5

    .line 40
    :cond_c
    :goto_3
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_5

    .line 41
    :cond_d
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_e
    add-int/lit8 p3, p2, 0x2

    .line 42
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    if-eq p3, v7, :cond_f

    goto/16 :goto_5

    :cond_f
    add-int/2addr p2, v2

    .line 43
    aget-byte p3, p1, p2

    shr-int/2addr p3, v2

    and-int/2addr p3, v7

    aget-byte v0, p1, p2

    shr-int/2addr v0, v3

    and-int/2addr v0, v7

    invoke-static {p3, v0, v6}, Ll0/c0;->a(III)V

    .line 44
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v5, [I

    aput v8, v1, v6

    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    aput p1, v1, v7

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_10
    const/16 p3, 0x63

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x2

    .line 45
    aget-byte v5, p1, v1

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v7

    aput v5, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v7, [I

    .line 46
    aget-byte v5, p1, v1

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v7

    aput v5, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v7, [I

    .line 47
    aget-byte v5, p1, v1

    shr-int/lit8 v4, v5, 0x5

    and-int/2addr v4, v7

    aput v4, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v7, [I

    .line 48
    aget-byte v4, p1, v1

    shr-int/2addr v4, v3

    and-int/2addr v4, v7

    aput v4, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v7, [I

    .line 49
    aget-byte v1, p1, v1

    shr-int/2addr v1, v6

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v7, [I

    add-int/2addr p2, v2

    .line 50
    aget-byte v1, p1, p2

    shr-int/2addr v1, v3

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v7, [I

    .line 51
    aget-byte p1, p1, p2

    shr-int/2addr p1, v6

    and-int/lit8 p1, p1, 0xf

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_11
    add-int/2addr p2, v5

    .line 52
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 53
    invoke-static {p2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_12

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 54
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 55
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_12
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 56
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 57
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 58
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 59
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v7

    aput p1, p2, v6

    .line 60
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    :goto_5
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6a

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
    .locals 5

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0xe1

    aput v0, p1, v4

    aput v2, p1, v2

    .line 1
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0xe0

    aput v0, p1, v4

    aput v2, p1, v2

    .line 2
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

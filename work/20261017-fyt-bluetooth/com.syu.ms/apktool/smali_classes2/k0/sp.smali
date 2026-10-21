.class public Lk0/sp;
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->j:I

    .line 8
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x24

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p3, v0, :cond_c

    const/16 v0, 0x7d

    const/16 v7, 0xff

    if-eq p3, v0, :cond_8

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v7

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v7

    const/16 p2, 0x1e77

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_5

    :pswitch_1
    const/16 p3, 0xa

    new-array v0, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 3
    aget-byte v9, p1, v8

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v6

    aput v9, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xb

    new-array v0, v6, [I

    .line 4
    aget-byte v9, p1, v8

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v6

    aput v9, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v0, v6, [I

    .line 5
    aget-byte v9, p1, v8

    shr-int/2addr v9, v1

    and-int/2addr v9, v6

    aput v9, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v0, v6, [I

    .line 6
    aget-byte v9, p1, v8

    shr-int/2addr v9, v2

    and-int/2addr v9, v6

    aput v9, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x35

    new-array v0, v6, [I

    .line 7
    aget-byte v9, p1, v8

    shr-int/2addr v9, v3

    and-int/2addr v9, v6

    aput v9, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v6, [I

    .line 8
    aget-byte v0, p1, v8

    shr-int/2addr v0, v6

    and-int/2addr v0, v6

    aput v0, p3, v5

    const/16 v0, 0xf

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 9
    aget-byte v8, p1, p3

    shr-int/2addr v8, v2

    and-int/2addr v8, v0

    if-eq v8, v6, :cond_3

    if-eq v8, v3, :cond_2

    if-eq v8, v4, :cond_1

    if-eq v8, v2, :cond_0

    move v2, v5

    move v3, v2

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_0
    move v3, v5

    move v2, v6

    move v4, v2

    goto :goto_1

    :cond_1
    move v2, v5

    move v3, v2

    move v4, v6

    goto :goto_1

    :cond_2
    move v2, v5

    move v3, v6

    goto :goto_0

    :cond_3
    move v2, v5

    move v4, v2

    move v3, v6

    :goto_1
    const/16 v8, 0x12

    new-array v9, v6, [I

    aput v2, v9, v5

    .line 10
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v8, v6, [I

    aput v3, v8, v5

    .line 11
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v6, [I

    aput v4, v3, v5

    .line 12
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v6, [I

    .line 13
    aget-byte p3, p1, p3

    shr-int/2addr p3, v5

    and-int/2addr p3, v0

    aput p3, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 14
    aget-byte v0, p1, p3

    and-int/2addr v0, v7

    const/16 v2, 0x1b

    if-nez v0, :cond_4

    new-array p3, v6, [I

    const/4 v0, -0x2

    aput v0, p3, v5

    .line 15
    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_4
    const/16 v3, 0x1e

    if-ne v0, v3, :cond_5

    new-array p3, v6, [I

    const/4 v0, -0x3

    aput v0, p3, v5

    .line 16
    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v0, v6, [I

    .line 17
    aget-byte p3, p1, p3

    and-int/2addr p3, v7

    aput p3, v0, v5

    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    :goto_2
    add-int/2addr p2, v1

    .line 18
    aget-byte p1, p1, p2

    and-int/2addr p1, v7

    if-eqz p1, :cond_7

    if-eq p1, v7, :cond_7

    const/16 p2, 0xfe

    if-ne p1, p2, :cond_6

    goto :goto_3

    :cond_6
    mul-int/2addr p1, v1

    add-int/lit16 p1, p1, 0x258

    .line 19
    invoke-static {p1}, Lu0/d;->B3(I)V

    goto/16 :goto_5

    .line 20
    :cond_7
    :goto_3
    invoke-static {v5}, Lu0/d;->B3(I)V

    goto/16 :goto_5

    :pswitch_2
    const/16 p3, 0x62

    new-array v0, v6, [I

    add-int/2addr p2, v3

    .line 21
    aget-byte p1, p1, p2

    and-int/2addr p1, v7

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_8
    add-int/lit8 p3, p2, 0x2

    .line 22
    aget-byte p3, p1, p3

    and-int/2addr p3, v7

    if-eq p3, v6, :cond_a

    if-eq p3, v4, :cond_9

    goto/16 :goto_5

    :cond_9
    add-int/lit8 p3, p2, 0x4

    .line 23
    aget-byte p3, p1, p3

    shl-int/lit8 p3, p3, 0x8

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v7

    or-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x64

    const/16 p2, 0x407

    new-array p3, v6, [I

    aput p1, p3, v5

    .line 24
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 25
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x419

    new-array v0, v3, [I

    aput v6, v0, v5

    aput p1, v0, v6

    const/4 p1, 0x0

    invoke-static {p2, p3, v0, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 26
    invoke-static {p3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_b

    add-int/2addr p2, v4

    .line 27
    aget-byte p3, p1, p2

    shr-int/2addr p3, v4

    and-int/2addr p3, v6

    aget-byte p1, p1, p2

    shr-int/2addr p1, v2

    and-int/2addr p1, v6

    invoke-static {p3, p1, v5}, Ll0/c0;->b(III)V

    goto :goto_5

    :cond_b
    add-int/2addr p2, v4

    .line 28
    aget-byte p3, p1, p2

    shr-int/2addr p3, v4

    and-int/2addr p3, v6

    aget-byte p1, p1, p2

    shr-int/2addr p1, v2

    and-int/2addr p1, v6

    invoke-static {p3, p1, v5}, Ll0/c0;->a(III)V

    goto :goto_5

    :cond_c
    add-int/2addr p2, v3

    .line 29
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 30
    invoke-static {p2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_d

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 31
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 32
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_d
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 33
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 34
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 35
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 36
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p1, v4

    and-int/2addr p1, v6

    aput p1, p2, v5

    .line 37
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    const/16 p3, 0x63

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

    const/16 v0, 0x75

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

    const/16 v0, -0x20

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

.class public Lk0/vp;
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
    .locals 4

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

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    .line 7
    iput v1, v0, Lk0/mt;->j:I

    .line 8
    iput v1, v0, Lk0/mt;->o:I

    .line 9
    sget v2, Lk0/nt;->a:I

    const v3, 0xb201c6

    if-eq v2, v3, :cond_0

    const v3, 0xb301c6

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iput v1, v0, Lk0/mt;->i:I

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x24

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v1, :cond_c

    const/16 v1, 0x30

    if-eq v0, v1, :cond_b

    const/16 p3, 0x7d

    const/16 v1, 0xb

    const/16 v8, 0x64

    if-eq v0, p3, :cond_7

    const/16 p3, 0xf

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p2, v5

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x1c00

    invoke-static {p3, p1, v6, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_4

    :pswitch_1
    const/16 v0, 0xa

    new-array v8, v7, [I

    add-int/lit8 v9, p2, 0x2

    .line 3
    aget-byte v10, p1, v9

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v7

    aput v10, v8, v6

    invoke-static {v0, v8}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    .line 4
    aget-byte v8, p1, v9

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v7

    aput v8, v0, v6

    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xc

    new-array v1, v7, [I

    .line 5
    aget-byte v8, p1, v9

    shr-int/2addr v8, v2

    and-int/2addr v8, v7

    aput v8, v1, v6

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x35

    new-array v1, v7, [I

    .line 6
    aget-byte v8, p1, v9

    shr-int/2addr v8, v3

    and-int/2addr v8, v7

    aput v8, v1, v6

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    .line 7
    aget-byte v1, p1, v9

    shr-int/2addr v1, v7

    and-int/2addr v1, v7

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x3

    .line 8
    aget-byte v1, p1, v0

    shr-int/2addr v1, v3

    and-int/2addr v1, p3

    if-eq v1, v7, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    move v1, v6

    move v2, v1

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_0
    move v2, v6

    move v4, v2

    move v1, v7

    goto :goto_1

    :cond_1
    move v2, v6

    move v1, v7

    move v4, v1

    goto :goto_1

    :cond_2
    move v1, v6

    move v2, v1

    move v4, v7

    goto :goto_1

    :cond_3
    move v1, v6

    move v2, v7

    goto :goto_0

    :cond_4
    move v1, v6

    move v4, v1

    move v2, v7

    :goto_1
    const/16 v5, 0x12

    new-array v8, v7, [I

    aput v1, v8, v6

    .line 9
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v5, v7, [I

    aput v2, v5, v6

    .line 10
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v2, v7, [I

    aput v4, v2, v6

    .line 11
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v2, v7, [I

    .line 12
    aget-byte v0, p1, v0

    shr-int/2addr v0, v6

    and-int/2addr v0, p3

    aput v0, v2, v6

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/2addr p2, v3

    .line 13
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x1b

    if-nez v0, :cond_5

    new-array p1, v7, [I

    const/4 p2, -0x2

    aput p2, p1, v6

    .line 14
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_5
    if-ne v0, p3, :cond_6

    new-array p1, v7, [I

    const/4 p2, -0x3

    aput p2, p1, v6

    .line 15
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_6
    new-array p3, v7, [I

    .line 16
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    aput p1, p3, v6

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_2
    const/16 v0, 0x62

    new-array v1, v7, [I

    add-int/lit8 v2, p2, 0x2

    .line 17
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x63

    new-array v1, v7, [I

    add-int/lit8 v2, p2, 0x3

    .line 18
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x4

    .line 19
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v6

    invoke-static {v8, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x65

    new-array v1, v7, [I

    add-int/lit8 v2, p2, 0x5

    .line 20
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x66

    new-array v1, v7, [I

    add-int/lit8 p2, p2, 0x6

    .line 21
    aget-byte v2, p1, p2

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v7

    aput v2, v1, v6

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x67

    new-array v1, v7, [I

    .line 22
    aget-byte v2, p1, p2

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v7

    aput v2, v1, v6

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x68

    new-array v1, v7, [I

    .line 23
    aget-byte v2, p1, p2

    shr-int/2addr v2, v3

    and-int/2addr v2, v5

    aput v2, v1, v6

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x69

    new-array v1, v7, [I

    .line 24
    aget-byte v2, p1, p2

    shr-int/2addr v2, v6

    and-int/2addr p3, v2

    aput p3, v1, v6

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v7, [I

    .line 25
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 26
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    const/16 v0, 0x419

    const/4 v2, 0x0

    if-eq p3, v7, :cond_9

    if-eq p3, v5, :cond_8

    goto/16 :goto_4

    :cond_8
    add-int/lit8 p3, p2, 0x4

    .line 27
    aget-byte p3, p1, p3

    shl-int/lit8 p3, p3, 0x8

    const v1, 0xff00

    and-int/2addr p3, v1

    add-int/2addr p2, v5

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p3

    div-int/2addr p1, v8

    const/16 p2, 0x407

    new-array p3, v7, [I

    aput p1, p3, v6

    .line 28
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 29
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    new-array p3, v4, [I

    aput v7, p3, v6

    aput p1, p3, v7

    invoke-static {p2, v0, p3, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_9
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 30
    invoke-static {p3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_a

    add-int/lit8 p3, p2, 0x3

    .line 31
    aget-byte v8, p1, p3

    shr-int/2addr v8, v5

    and-int/2addr v8, v7

    aget-byte p3, p1, p3

    shr-int/2addr p3, v3

    and-int/2addr p3, v7

    invoke-static {v8, p3, v6}, Ll0/c0;->b(III)V

    goto :goto_2

    :cond_a
    add-int/lit8 p3, p2, 0x3

    .line 32
    aget-byte v8, p1, p3

    shr-int/2addr v8, v5

    and-int/2addr v8, v7

    aget-byte p3, p1, p3

    shr-int/2addr p3, v3

    and-int/2addr p3, v7

    invoke-static {v8, p3, v6}, Ll0/c0;->a(III)V

    .line 33
    :goto_2
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    new-array v3, v4, [I

    aput v1, v3, v6

    add-int/2addr p2, v5

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    aput p1, v3, v7

    invoke-static {p3, v0, v3, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_4

    .line 34
    :cond_b
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v4

    sub-int/2addr p3, v4

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    add-int/2addr p2, v4

    .line 35
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 36
    invoke-static {p2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_d

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 37
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 38
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 39
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 40
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 41
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 42
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/2addr p1, v5

    and-int/2addr p1, v7

    aput p1, p2, v6

    .line 43
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_4
    return-void

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

    const/16 p3, 0x6b

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

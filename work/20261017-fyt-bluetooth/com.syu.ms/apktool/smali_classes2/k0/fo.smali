.class public Lk0/fo;
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

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->l:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x24

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_c

    const/16 v1, 0x29

    const v6, 0xff00

    if-eq v0, v1, :cond_a

    const/16 v1, 0x30

    if-eq v0, v1, :cond_9

    const/16 p3, 0x55

    const/16 v1, 0xb

    const/16 v7, 0x10

    const/16 v8, 0xf

    if-eq v0, p3, :cond_3

    const/16 p3, 0x6e

    const/16 v9, 0x68

    if-eq v0, v9, :cond_2

    const/16 v3, 0x6b

    if-eq v0, v3, :cond_1

    if-eq v0, p3, :cond_0

    goto/16 :goto_6

    :cond_0
    const/16 p3, 0x62

    new-array v0, v5, [I

    add-int/lit8 v3, p2, 0x3

    .line 2
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v6

    add-int/lit8 v7, p2, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v5, [I

    add-int/lit8 v3, p2, 0x5

    .line 3
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v6

    add-int/lit8 v7, p2, 0x4

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v5, [I

    add-int/lit8 v3, p2, 0x7

    .line 4
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v6

    add-int/lit8 v7, p2, 0x6

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v5, [I

    add-int/lit8 v3, p2, 0x9

    .line 5
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v6

    add-int/lit8 v6, p2, 0x8

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v3, v6

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v5, [I

    add-int/lit8 v3, p2, 0xa

    .line 6
    aget-byte v6, p1, v3

    shr-int/2addr v6, v2

    and-int/2addr v6, v8

    aput v6, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v5, [I

    .line 7
    aget-byte v3, p1, v3

    shr-int/2addr v3, v4

    and-int/2addr v3, v8

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v5, [I

    add-int/2addr p2, v1

    .line 8
    aget-byte v1, p1, p2

    shr-int/2addr v1, v2

    and-int/2addr v1, v8

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 9
    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/2addr p1, v8

    aput p1, p3, v4

    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_1
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x5

    .line 10
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    shl-int/2addr v1, v7

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    aput v0, p3, v4

    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6c

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x7

    .line 11
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6d

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x9

    .line 12
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    add-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_2
    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x3

    .line 13
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_3
    add-int/lit8 p3, p2, 0x2

    .line 14
    aget-byte v0, p1, p3

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, p2, 0x3

    .line 15
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v6, p2, 0x4

    .line 16
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v9, p2, 0x5

    .line 17
    aget-byte v9, p1, v9

    add-int/lit8 v9, p2, 0x6

    .line 18
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 p2, p2, 0x7

    .line 19
    aget-byte p2, p1, p2

    const-string p2, "persist.fyt.reversetemp"

    .line 20
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 21
    aget-byte p2, p1, v2

    and-int/lit16 v0, p2, 0xff

    .line 22
    aget-byte p1, p1, p3

    and-int/lit16 v3, p1, 0xff

    :cond_4
    const/16 p1, 0x50

    const/16 p2, 0x1b

    if-ne v0, v7, :cond_5

    new-array p3, v5, [I

    const/4 v0, -0x2

    aput v0, p3, v4

    .line 23
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    if-ne v0, p1, :cond_6

    new-array p3, v5, [I

    const/4 v0, -0x3

    aput v0, p3, v4

    .line 24
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_6
    new-array p3, v5, [I

    aput v0, p3, v4

    .line 25
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 p2, 0x1c

    if-ne v3, v7, :cond_7

    new-array p1, v5, [I

    const/4 p3, -0x2

    aput p3, p1, v4

    .line 26
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    if-ne v3, p1, :cond_8

    new-array p1, v5, [I

    const/4 p3, -0x3

    aput p3, p1, v4

    .line 27
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    new-array p1, v5, [I

    aput v3, p1, v4

    .line 28
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    :goto_1
    shr-int/lit8 p1, v6, 0x4

    and-int/2addr p1, v8

    packed-switch p1, :pswitch_data_0

    move p1, v4

    move p2, p1

    :goto_2
    move p3, p2

    :goto_3
    move v0, p3

    goto :goto_4

    :pswitch_0
    move p1, v4

    move p2, v5

    goto :goto_2

    :pswitch_1
    move p1, v4

    move p3, p1

    move v0, p3

    move p2, v5

    goto :goto_4

    :pswitch_2
    move p1, v4

    move v0, p1

    move p2, v5

    move p3, p2

    goto :goto_4

    :pswitch_3
    move p1, v4

    move p3, p1

    move p2, v5

    move v0, p2

    goto :goto_4

    :pswitch_4
    move p1, v4

    move p2, p1

    move p3, p2

    move v0, v5

    goto :goto_4

    :pswitch_5
    move p1, v4

    move p2, p1

    move p3, v5

    goto :goto_3

    :pswitch_6
    move p1, v4

    move p2, p1

    move v0, p2

    move p3, v5

    goto :goto_4

    :pswitch_7
    move p2, v4

    move p3, p2

    move v0, p3

    move p1, v5

    :goto_4
    const/16 v2, 0x31

    new-array v3, v5, [I

    aput p1, v3, v4

    .line 29
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x12

    new-array v2, v5, [I

    aput p2, v2, v4

    .line 30
    invoke-static {p1, v2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x13

    new-array p2, v5, [I

    aput p3, p2, v4

    .line 31
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x14

    new-array p2, v5, [I

    aput v0, p2, v4

    .line 32
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x15

    new-array p2, v5, [I

    shr-int/lit8 p3, v6, 0x0

    and-int/2addr p3, v8

    aput p3, p2, v4

    .line 33
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v5, [I

    shr-int/lit8 p2, v9, 0x7

    and-int/2addr p2, v5

    aput p2, p1, v4

    .line 34
    invoke-static {v8, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x41

    new-array p2, v5, [I

    shr-int/lit8 p3, v9, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 35
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v5, [I

    shr-int/lit8 p2, v9, 0x5

    and-int/2addr p2, v5

    aput p2, p1, v4

    .line 36
    invoke-static {v7, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x35

    new-array p2, v5, [I

    shr-int/lit8 p3, v9, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 37
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xc

    new-array p2, v5, [I

    shr-int/lit8 p3, v9, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 38
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xe

    new-array p2, v5, [I

    shr-int/lit8 p3, v9, 0x2

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 39
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v5, [I

    shr-int/lit8 p2, v9, 0x1

    and-int/2addr p2, v5

    aput p2, p1, v4

    .line 40
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xd

    new-array p2, v5, [I

    shr-int/lit8 p3, v9, 0x0

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 41
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    .line 42
    :cond_9
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    add-int/lit8 p3, p2, 0x3

    .line 43
    aget-byte v0, p1, p3

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v6

    add-int/2addr p2, v3

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    const v1, 0x8000

    const/16 v2, 0x1640

    if-ne v0, v1, :cond_b

    .line 44
    invoke-static {v4, v4, v5, v2}, Lk0/qt;->i(IIZI)V

    goto :goto_6

    .line 45
    :cond_b
    aget-byte p2, p1, p2

    aget-byte p1, p1, p3

    invoke-static {p2, p1, v5, v2}, Lk0/qt;->i(IIZI)V

    goto :goto_6

    :cond_c
    add-int/2addr p2, v3

    .line 46
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 47
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_d

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 48
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 49
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_d
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 50
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 51
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x3

    .line 52
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v5

    aput v0, p2, v4

    .line 53
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, p3

    and-int/2addr p1, v5

    aput p1, p2, v4

    const/4 p1, 0x5

    .line 54
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
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

    const/16 p3, 0x6f

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

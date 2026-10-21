.class public Lk0/bn;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/bn;->c:I

    const/16 v1, 0x8

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    const/4 v3, 0x1

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    const/4 v3, 0x3

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v2, 0x7

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/bn;->d:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1a
    .end array-data
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

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->i:I

    .line 5
    iput v2, v0, Lk0/mt;->l:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_12

    const/16 v1, 0x7d

    const/16 v6, 0xb

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq v0, v1, :cond_10

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_f

    const/16 p3, 0x28

    if-eq v0, p3, :cond_d

    const/16 p3, 0x29

    if-eq v0, p3, :cond_c

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 2
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v5

    aput v1, p3, v4

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v1, v5, [I

    .line 3
    aget-byte v6, p1, v0

    shr-int/lit8 v6, v6, 0x5

    and-int/2addr v6, v5

    aput v6, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v1, v5, [I

    .line 4
    aget-byte v6, p1, v0

    shr-int/2addr v6, v2

    and-int/2addr v6, v5

    aput v6, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v1, v5, [I

    .line 5
    aget-byte v6, p1, v0

    shr-int/2addr v6, v5

    and-int/2addr v6, v5

    aput v6, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x41

    new-array v1, v5, [I

    .line 6
    aget-byte v0, p1, v0

    shr-int/2addr v0, v4

    and-int/2addr v0, v5

    aput v0, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 7
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-eq p3, v5, :cond_3

    if-eq p3, v8, :cond_2

    if-eq p3, v2, :cond_1

    if-eq p3, v7, :cond_0

    move p3, v4

    move v0, p3

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    move v0, v4

    move p3, v5

    move v1, p3

    goto :goto_1

    :cond_1
    move p3, v4

    move v0, p3

    move v1, v5

    goto :goto_1

    :cond_2
    move p3, v4

    move v0, v5

    goto :goto_0

    :cond_3
    move p3, v4

    move v1, p3

    move v0, v5

    :goto_1
    const/16 v2, 0x12

    new-array v6, v5, [I

    aput p3, v6, v4

    .line 8
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v2, v5, [I

    aput v0, v2, v4

    .line 9
    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v5, [I

    aput v1, v0, v4

    .line 10
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x4

    .line 11
    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 12
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 p2, p2, 0x6

    .line 13
    aget-byte v1, p1, p2

    and-int/2addr v1, v3

    const-string v2, "persist.fyt.reversetemp"

    .line 14
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    aget-byte p2, p1, p2

    and-int/lit16 v0, p2, 0xff

    .line 16
    aget-byte p1, p1, p3

    and-int/lit16 v1, p1, 0xff

    :cond_4
    const/4 p1, -0x3

    const/4 p2, -0x2

    const/16 p3, 0x40

    const/16 v2, 0x24

    const/16 v3, 0x1b

    if-eq v0, v2, :cond_6

    if-eq v0, p3, :cond_5

    new-array v6, v5, [I

    aput v0, v6, v4

    .line 17
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v0, v5, [I

    aput p1, v0, v4

    .line 18
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v0, v5, [I

    aput p2, v0, v4

    .line 19
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v0, 0x1c

    if-eq v1, v2, :cond_8

    if-eq v1, p3, :cond_7

    new-array p1, v5, [I

    aput v1, p1, v4

    .line 20
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_7
    new-array p2, v5, [I

    aput p1, p2, v4

    .line 21
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_8
    new-array p1, v5, [I

    aput p2, p1, v4

    .line 22
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 23
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 v1, p2, 0x3

    .line 24
    aget-byte v2, p1, v1

    and-int/2addr v2, v3

    add-int/lit8 v6, p2, 0x4

    .line 25
    aget-byte v8, p1, v6

    and-int/2addr v8, v3

    add-int/lit8 p2, p2, 0x5

    .line 26
    aget-byte v9, p1, p2

    and-int/2addr v9, v3

    if-nez v0, :cond_9

    if-nez v2, :cond_9

    if-nez v8, :cond_9

    if-nez v9, :cond_9

    .line 27
    invoke-static {v4}, Lu0/d;->C2(I)V

    goto :goto_3

    .line 28
    :cond_9
    sget v4, Ll0/c0;->g:I

    if-ne v4, v0, :cond_a

    sget v4, Ll0/c0;->h:I

    if-ne v4, v2, :cond_a

    sget v4, Ll0/c0;->i:I

    if-ne v4, v8, :cond_a

    sget v4, Ll0/c0;->j:I

    if-eq v4, v9, :cond_b

    .line 29
    :cond_a
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_b

    .line 30
    invoke-static {v5}, Lu0/d;->C2(I)V

    .line 31
    sput v7, Ll0/c0;->k:I

    .line 32
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 33
    :cond_b
    :goto_3
    sput v0, Ll0/c0;->g:I

    .line 34
    sput v2, Ll0/c0;->h:I

    .line 35
    sput v8, Ll0/c0;->i:I

    .line 36
    sput v9, Ll0/c0;->j:I

    .line 37
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 38
    aget-byte p3, p1, v1

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 39
    aget-byte p3, p1, v6

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 40
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_7

    :pswitch_2
    add-int/lit8 p3, p2, 0x6

    .line 41
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x7

    .line 42
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x8

    .line 43
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 44
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :cond_c
    add-int/lit8 p3, p2, 0x3

    .line 45
    aget-byte p3, p1, p3

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    const/16 p2, 0x15b8

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    :cond_d
    const-string p3, "persist.syu.reversefrontdoor"

    .line 46
    invoke-static {p3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_e

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 47
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v5

    aput v1, p3, v4

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 48
    aget-byte v0, p1, v0

    shr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v5

    aput v0, p3, v4

    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 49
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v5

    aput v1, p3, v4

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 50
    aget-byte v0, p1, v0

    shr-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v5

    aput v0, p3, v4

    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array p3, v5, [I

    add-int/2addr p2, v8

    .line 51
    aget-byte v0, p1, p2

    shr-int/2addr v0, v7

    and-int/2addr v0, v5

    aput v0, p3, v4

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 52
    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x5

    and-int/2addr p1, v5

    aput p1, p3, v4

    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 53
    :cond_f
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v8

    sub-int/2addr p3, v8

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    add-int/lit8 p3, p2, 0x2

    .line 54
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-eq p3, v5, :cond_11

    goto :goto_7

    :cond_11
    add-int/2addr p2, v2

    .line 55
    aget-byte p3, p1, p2

    shr-int/2addr p3, v2

    and-int/2addr p3, v5

    aget-byte v0, p1, p2

    shr-int/2addr v0, v7

    and-int/2addr v0, v5

    invoke-static {p3, v0, v4}, Ll0/c0;->a(III)V

    .line 56
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v8, [I

    aput v6, v1, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v1, v5

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_7

    :cond_12
    add-int/lit8 p3, p2, 0x2

    .line 57
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 58
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 59
    iput p2, p0, Lk0/bn;->c:I

    move p2, v4

    .line 60
    :goto_5
    iget-object p3, p0, Lk0/bn;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_14

    .line 61
    iget v0, p0, Lk0/bn;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_13

    if-eqz v0, :cond_14

    .line 62
    iput p2, p0, Lk0/bn;->b:I

    goto :goto_6

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_14
    :goto_6
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_15

    .line 63
    array-length p1, p3

    if-ge p2, p1, :cond_17

    .line 64
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_15
    if-nez p1, :cond_17

    .line 65
    iget p1, p0, Lk0/bn;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_16

    if-eq p1, v3, :cond_16

    .line 66
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 67
    :cond_16
    iput v3, p0, Lk0/bn;->b:I

    :cond_17
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x22
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

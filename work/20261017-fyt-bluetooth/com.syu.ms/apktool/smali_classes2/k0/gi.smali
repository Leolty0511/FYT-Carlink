.class public Lk0/gi;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/gi;->c:I

    const/16 v1, 0x17

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v4, 0xe

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v4, 0x14

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v4, 0x15

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_16

    const/16 v3, 0x16

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/gi;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/gi;->e:Z

    return-void

    nop

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x5
        -0x1
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x32
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x80
        0x15
    .end array-data

    :array_a
    .array-data 4
        0x81
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x82
        0x5
    .end array-data

    :array_c
    .array-data 4
        0x83
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x84
        0x40
    .end array-data

    :array_e
    .array-data 4
        0x85
        0x15
    .end array-data

    :array_f
    .array-data 4
        0x86
        0x36
    .end array-data

    :array_10
    .array-data 4
        0x87
        0x3
    .end array-data

    :array_11
    .array-data 4
        0x88
        0x10
    .end array-data

    :array_12
    .array-data 4
        0x89
        0x4
    .end array-data

    :array_13
    .array-data 4
        0xf1
        0x8
    .end array-data

    :array_14
    .array-data 4
        0xf2
        0x7
    .end array-data

    :array_15
    .array-data 4
        0xf3
        0x1e
    .end array-data

    :array_16
    .array-data 4
        0xf4
        0x1f
    .end array-data
.end method

.method public static a3(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x2

    .line 1
    div-int/lit8 p0, p0, 0x3

    return p0
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
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    .line 6
    iput v2, v0, Lk0/mt;->j:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    iput v2, v0, Lk0/mt;->b:I

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x30

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_12

    const/16 v1, 0x7d

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/16 v6, 0xff

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eq v0, v1, :cond_d

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_c

    const/16 p3, 0x12

    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte v0, p1, p3

    shr-int/2addr v0, v5

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Lk0/gi;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->D2(I)V

    .line 3
    aget-byte p3, p1, p3

    shr-int/2addr p3, v3

    and-int/lit8 p3, p3, 0xf

    invoke-static {p3}, Lk0/gi;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->G2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 4
    aget-byte v0, p1, p3

    shr-int/2addr v0, v5

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Lk0/gi;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    add-int/2addr p2, v5

    .line 5
    aget-byte v0, p1, p2

    shr-int/2addr v0, v5

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Lk0/gi;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    .line 6
    aget-byte p2, p1, p2

    shr-int/2addr p2, v5

    and-int/lit8 p2, p2, 0xf

    invoke-static {p2}, Lk0/gi;->a3(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->T2(I)V

    .line 7
    aget-byte p1, p1, p3

    shr-int/2addr p1, v3

    and-int/lit8 p1, p1, 0xf

    invoke-static {p1}, Lk0/gi;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :pswitch_1
    add-int/lit8 v0, p2, 0x2

    .line 8
    aget-byte v0, p1, v0

    add-int/lit8 v2, p2, 0x3

    .line 9
    aget-byte v2, p1, v2

    add-int/lit8 v4, p2, 0x4

    .line 10
    aget-byte v4, p1, v4

    add-int/2addr p2, v1

    .line 11
    aget-byte p1, p1, p2

    const/16 p2, 0xa

    new-array v5, v8, [I

    shr-int/lit8 v7, v0, 0x7

    and-int/2addr v7, v8

    aput v7, v5, v3

    .line 12
    invoke-static {p2, v5}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xb

    new-array v5, v8, [I

    shr-int/lit8 v7, v0, 0x6

    and-int/2addr v7, v8

    aput v7, v5, v3

    .line 13
    invoke-static {p2, v5}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array v5, v8, [I

    shr-int/2addr v0, v1

    and-int/2addr v0, v8

    aput v0, v5, v3

    .line 14
    invoke-static {p2, v5}, Lk0/qt;->y0(I[I)V

    packed-switch v2, :pswitch_data_1

    move p2, v3

    move v0, p2

    move v1, v0

    move v2, v1

    goto :goto_0

    :pswitch_2
    move p2, v3

    move v0, p2

    move v1, v0

    move v2, v8

    goto :goto_0

    :pswitch_3
    move v0, v3

    move v1, v0

    move v2, v1

    move p2, v8

    goto :goto_0

    :pswitch_4
    move v0, v3

    move v2, v0

    move p2, v8

    move v1, p2

    goto :goto_0

    :pswitch_5
    move p2, v3

    move v0, p2

    move v2, v0

    move v1, v8

    goto :goto_0

    :pswitch_6
    move p2, v3

    move v2, p2

    move v0, v8

    move v1, v0

    goto :goto_0

    :pswitch_7
    move p2, v3

    move v1, p2

    move v2, v1

    move v0, v8

    :goto_0
    new-array v5, v8, [I

    aput p2, v5, v3

    .line 15
    invoke-static {p3, v5}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v5, v8, [I

    aput v0, v5, v3

    .line 16
    invoke-static {p3, v5}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v8, [I

    aput v1, v0, v3

    .line 17
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x41

    new-array v0, v8, [I

    aput p2, v0, v3

    .line 18
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x10

    new-array p3, v8, [I

    aput v2, p3, v3

    .line 19
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v8, [I

    and-int/lit16 v0, v4, 0xff

    aput v0, p3, v3

    .line 20
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    and-int/2addr p1, v6

    const/16 p2, 0x1b

    new-array p3, v8, [I

    aput p1, p3, v3

    .line 21
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_8
    add-int/2addr p2, v2

    .line 22
    aget-byte p1, p1, p2

    and-int/2addr p1, v6

    const-string p2, "persist.syu.reversefrontdoor"

    .line 23
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v8

    aput p3, p2, v3

    .line 24
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v8

    aput p3, p2, v3

    .line 25
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_0
    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v8

    aput p3, p2, v3

    .line 26
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v8

    aput p3, p2, v3

    .line 27
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v8

    aput p3, p2, v3

    .line 28
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v8

    aput p3, p2, v3

    .line 29
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/2addr p1, v7

    and-int/2addr p1, v8

    aput p1, p2, v3

    .line 30
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_9
    add-int/lit8 v0, p2, 0x2

    .line 31
    aget-byte v0, p1, v0

    add-int/2addr p2, v7

    .line 32
    aget-byte p1, p1, p2

    and-int/lit16 p2, v0, 0xff

    .line 33
    iput p2, p0, Lk0/gi;->c:I

    move p2, v3

    .line 34
    :goto_2
    iget-object v0, p0, Lk0/gi;->d:[[I

    array-length v2, v0

    if-ge p2, v2, :cond_2

    .line 35
    iget v2, p0, Lk0/gi;->c:I

    aget-object v9, v0, p2

    aget v9, v9, v3

    if-ne v2, v9, :cond_1

    if-eqz v2, :cond_2

    .line 36
    iput p2, p0, Lk0/gi;->b:I

    goto :goto_3

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 37
    :cond_2
    :goto_3
    iget v2, p0, Lk0/gi;->c:I

    if-eq v2, v1, :cond_9

    packed-switch v2, :pswitch_data_2

    and-int/2addr p1, v6

    if-ne p1, v8, :cond_3

    .line 38
    array-length p1, v0

    if-ge p2, p1, :cond_13

    .line 39
    aget-object p1, v0, p2

    aget p1, p1, v8

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_3
    if-nez p1, :cond_13

    .line 40
    iget p1, p0, Lk0/gi;->b:I

    array-length p2, v0

    if-ge p1, p2, :cond_4

    if-eq p1, v6, :cond_4

    .line 41
    aget-object p1, v0, p1

    aget p1, p1, v8

    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    .line 42
    :cond_4
    iput v6, p0, Lk0/gi;->b:I

    goto/16 :goto_8

    :pswitch_a
    move p2, v3

    :goto_4
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x1f

    if-ge p2, p3, :cond_5

    .line 43
    invoke-static {v0, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 44
    :cond_5
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :pswitch_b
    move p2, v3

    :goto_5
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x1e

    if-ge p2, p3, :cond_6

    .line 45
    invoke-static {v0, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 46
    :cond_6
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :pswitch_c
    move p2, v3

    :goto_6
    and-int/lit16 p3, p1, 0xff

    const/4 v0, 0x7

    if-ge p2, p3, :cond_7

    .line 47
    invoke-static {v0, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 48
    :cond_7
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :pswitch_d
    move p2, v3

    :goto_7
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_8

    .line 49
    invoke-static {v4, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 50
    :cond_8
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_9
    and-int/2addr p1, v6

    if-ne p1, v8, :cond_13

    .line 51
    sget p1, Lh0/c;->E:I

    if-eq p1, v7, :cond_b

    if-eq p1, v5, :cond_a

    if-eq p1, v1, :cond_b

    const/16 p1, 0xd

    .line 52
    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 53
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    .line 54
    :cond_a
    invoke-static {p3, v3}, Ll0/b0;->l0(II)V

    .line 55
    invoke-static {p3, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_b
    const/16 p1, 0x1a

    .line 56
    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 57
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    .line 58
    :cond_c
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_d
    add-int/lit8 p3, p2, 0x2

    .line 59
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    if-eq p3, v8, :cond_10

    if-eq p3, v7, :cond_f

    if-eq p3, v4, :cond_e

    goto :goto_8

    :cond_e
    add-int/lit8 p3, p2, 0x3

    .line 60
    aget-byte p3, p1, p3

    add-int/2addr p2, v5

    .line 61
    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    .line 62
    invoke-static {p3, p1, v8, p2}, Lk0/qt;->i(IIZI)V

    .line 63
    iput-boolean v8, p0, Lk0/gi;->e:Z

    goto :goto_8

    :cond_f
    add-int/lit8 p3, p2, 0x4

    .line 64
    aget-byte p3, p1, p3

    shl-int/2addr p3, v4

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/2addr p2, v7

    aget-byte p1, p1, p2

    and-int/2addr p1, v6

    or-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x64

    const/16 p2, 0x407

    new-array p3, v8, [I

    aput p1, p3, v3

    .line 65
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 66
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x419

    new-array v0, v2, [I

    aput v8, v0, v3

    aput p1, v0, v8

    const/4 p1, 0x0

    invoke-static {p2, p3, v0, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 67
    invoke-static {p3, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_11

    add-int/2addr p2, v7

    .line 68
    aget-byte p3, p1, p2

    shr-int/2addr p3, v7

    and-int/2addr p3, v8

    aget-byte p1, p1, p2

    shr-int/2addr p1, v5

    and-int/2addr p1, v8

    invoke-static {p3, p1, v3}, Ll0/c0;->b(III)V

    goto :goto_8

    :cond_11
    add-int/2addr p2, v7

    .line 69
    aget-byte p3, p1, p2

    shr-int/2addr p3, v7

    and-int/2addr p3, v8

    aget-byte p1, p1, p2

    shr-int/2addr p1, v5

    and-int/2addr p1, v8

    invoke-static {p3, p1, v3}, Ll0/c0;->a(III)V

    goto :goto_8

    .line 70
    :cond_12
    iget-boolean p3, p0, Lk0/gi;->e:Z

    if-nez p3, :cond_13

    add-int/lit8 p3, p2, 0x3

    .line 71
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    const/16 p2, 0x1e8a

    const/16 v0, 0x1770

    invoke-static {p3, p1, p2, v3, v0}, Lk0/qt;->m(IIIZI)V

    :cond_13
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
    .locals 1

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0x84

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput v0, p1, p3

    const/4 p3, 0x3

    .line 1
    aget p2, p2, p4

    sub-int/2addr p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

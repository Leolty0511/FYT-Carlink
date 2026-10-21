.class public Lk0/ih;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ih;->c:I

    const/16 v1, 0x8

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v9, 0x6

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v10, 0x7

    aput-object v4, v2, v10

    iput-object v2, p0, Lk0/ih;->d:[[I

    .line 4
    iput v0, p0, Lk0/ih;->f:I

    const/16 v2, 0x10

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_8

    aput-object v4, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_9

    aput-object v0, v2, v5

    new-array v0, v3, [I

    fill-array-data v0, :array_a

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_b

    aput-object v0, v2, v6

    new-array v0, v3, [I

    fill-array-data v0, :array_c

    aput-object v0, v2, v7

    new-array v0, v3, [I

    fill-array-data v0, :array_d

    aput-object v0, v2, v8

    new-array v0, v3, [I

    fill-array-data v0, :array_e

    aput-object v0, v2, v9

    new-array v0, v3, [I

    fill-array-data v0, :array_f

    aput-object v0, v2, v10

    new-array v0, v3, [I

    fill-array-data v0, :array_10

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_11

    const/16 v1, 0x9

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_12

    const/16 v1, 0xa

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_13

    const/16 v1, 0xb

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_14

    const/16 v1, 0xc

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_15

    const/16 v1, 0xd

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_16

    const/16 v1, 0xe

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_17

    const/16 v1, 0xf

    aput-object v0, v2, v1

    iput-object v2, p0, Lk0/ih;->g:[[I

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
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x16
        0xc
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x9
    .end array-data

    :array_9
    .array-data 4
        0x2
        0xc
    .end array-data

    :array_a
    .array-data 4
        0x3
        0x35
    .end array-data

    :array_b
    .array-data 4
        0x4
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x5
        0x10
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x12
    .end array-data

    :array_e
    .array-data 4
        0x7
        0x3
    .end array-data

    :array_f
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x10
        0x7
    .end array-data

    :array_12
    .array-data 4
        0x11
        0x8
    .end array-data

    :array_13
    .array-data 4
        0x12
        0x15
    .end array-data

    :array_14
    .array-data 4
        0x13
        0x12
    .end array-data

    :array_15
    .array-data 4
        0x14
        0x1a
    .end array-data

    :array_16
    .array-data 4
        0x15
        0x37
    .end array-data

    :array_17
    .array-data 4
        0x16
        0xd
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
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->n:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x7f
        0x1
        0x1
    .end array-data
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x29

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p3, v0, :cond_15

    const/16 v0, 0x7d

    const/16 v3, 0xb

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/16 v6, 0xff

    const/4 v7, 0x1

    if-eq p3, v0, :cond_13

    const/16 v0, 0x10

    const/4 v8, 0x5

    const/4 v9, 0x7

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    add-int/2addr p2, v5

    .line 2
    aget-byte p1, p1, p2

    and-int/2addr p1, v6

    const/16 p2, 0x3f5

    new-array p3, v7, [I

    aput p1, p3, v2

    .line 3
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 4
    aget-byte p3, p1, p3

    add-int/lit8 v4, p2, 0x3

    .line 5
    aget-byte v4, p1, v4

    add-int/lit8 v5, p2, 0x4

    .line 6
    aget-byte v5, p1, v5

    add-int/lit8 v8, p2, 0x5

    .line 7
    aget-byte v8, p1, v8

    add-int/lit8 v10, p2, 0x6

    .line 8
    aget-byte v10, p1, v10

    add-int/2addr p2, v9

    .line 9
    aget-byte p1, p1, p2

    const/16 p2, 0xa

    new-array v9, v7, [I

    shr-int/lit8 v11, p3, 0x7

    and-int/2addr v11, v7

    aput v11, v9, v2

    .line 10
    invoke-static {p2, v9}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 v9, p3, 0x6

    and-int/2addr v9, v7

    aput v9, p2, v2

    .line 11
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array v3, v7, [I

    shr-int/lit8 v9, p3, 0x5

    and-int/2addr v9, v7

    aput v9, v3, v2

    .line 12
    invoke-static {p2, v3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xd

    new-array v3, v7, [I

    shr-int/2addr p3, v1

    and-int/2addr p3, v7

    aput p3, v3, v2

    .line 13
    invoke-static {p2, v3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x12

    new-array p3, v7, [I

    shr-int/lit8 v1, v4, 0x7

    and-int/2addr v1, v7

    aput v1, p3, v2

    .line 14
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array p3, v7, [I

    shr-int/lit8 v1, v4, 0x6

    and-int/2addr v1, v7

    aput v1, p3, v2

    .line 15
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x14

    new-array p3, v7, [I

    shr-int/lit8 v1, v4, 0x5

    and-int/2addr v1, v7

    aput v1, p3, v2

    .line 16
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v7, [I

    and-int/lit8 v1, v4, 0xf

    aput v1, p3, v2

    .line 17
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    and-int/lit16 p2, v5, 0xff

    const/4 p3, -0x3

    const/4 v1, -0x2

    const/16 v3, 0x1f

    const/16 v4, 0x1b

    if-eqz p2, :cond_1

    if-eq p2, v3, :cond_0

    new-array v5, v7, [I

    aput p2, v5, v2

    .line 18
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v5, v7, [I

    aput p3, v5, v2

    .line 19
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v5, v7, [I

    aput v1, v5, v2

    .line 20
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    :goto_0
    and-int/lit16 v4, v8, 0xff

    const/16 v5, 0x1c

    if-eqz v4, :cond_3

    if-eq v4, v3, :cond_2

    new-array p3, v7, [I

    aput p2, p3, v2

    .line 21
    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_2
    new-array p2, v7, [I

    aput p3, p2, v2

    .line 22
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    new-array p2, v7, [I

    aput v1, p2, v2

    .line 23
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 p2, 0x25

    new-array p3, v7, [I

    and-int/lit8 v1, v10, 0x1

    aput v1, p3, v2

    .line 24
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x41

    new-array p3, v7, [I

    shr-int/lit8 v1, v10, 0x7

    and-int/2addr v1, v7

    aput v1, p3, v2

    .line 25
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, v10, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v2

    .line 26
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x2a

    new-array p3, v7, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v7

    aput v0, p3, v2

    .line 27
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x2c

    new-array p3, v7, [I

    and-int/lit8 p1, p1, 0xf

    aput p1, p3, v2

    .line 28
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_2
    add-int/2addr p2, v5

    .line 29
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 30
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_4

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v2

    .line 31
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v2

    .line 32
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_4
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v2

    .line 33
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v2

    .line 34
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v7

    aput p3, p2, v2

    .line 35
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v7

    aput p3, p2, v2

    .line 36
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v7

    aput p3, p2, v2

    .line 37
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/2addr p1, v5

    and-int/2addr p1, v7

    aput p1, p2, v2

    .line 38
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_3
    add-int/lit8 p3, p2, 0x2

    .line 39
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->c1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 40
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->c1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 41
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->c1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/2addr p2, v8

    .line 42
    aget-byte p1, p1, p2

    and-int/2addr p1, v6

    invoke-static {p1}, Ll0/c0;->c1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :pswitch_4
    add-int/lit8 p3, p2, 0x2

    .line 43
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->c1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 44
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->c1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 45
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->c1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v8

    .line 46
    aget-byte p1, p1, p2

    and-int/2addr p1, v6

    invoke-static {p1}, Ll0/c0;->c1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :pswitch_5
    add-int/lit8 p3, p2, 0x2

    .line 47
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 48
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 49
    iput p2, p0, Lk0/ih;->f:I

    move p2, v2

    .line 50
    :goto_3
    iget-object p3, p0, Lk0/ih;->g:[[I

    array-length v3, p3

    if-ge p2, v3, :cond_6

    .line 51
    iget v3, p0, Lk0/ih;->f:I

    aget-object v4, p3, p2

    aget v4, v4, v2

    if-ne v3, v4, :cond_5

    if-eqz v3, :cond_6

    .line 52
    iput p2, p0, Lk0/ih;->e:I

    goto :goto_4

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 53
    :cond_6
    :goto_4
    iget v3, p0, Lk0/ih;->f:I

    if-eq v3, v1, :cond_d

    if-eq v3, v0, :cond_b

    const/16 v0, 0x11

    if-eq v3, v0, :cond_9

    and-int/2addr p1, v6

    if-ne p1, v7, :cond_7

    .line 54
    array-length p1, p3

    if-ge p2, p1, :cond_16

    .line 55
    aget-object p1, p3, p2

    aget p1, p1, v7

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_7
    if-nez p1, :cond_16

    .line 56
    iget p1, p0, Lk0/ih;->e:I

    array-length p2, p3

    if-ge p1, p2, :cond_8

    if-eq p1, v6, :cond_8

    .line 57
    aget-object p1, p3, p1

    aget p1, p1, v7

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 58
    :cond_8
    iput v6, p0, Lk0/ih;->e:I

    goto/16 :goto_9

    :cond_9
    move p2, v2

    :goto_5
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x8

    if-ge p2, p3, :cond_a

    .line 59
    invoke-static {v0, v2}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 60
    :cond_a
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_b
    move p2, v2

    :goto_6
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_c

    .line 61
    invoke-static {v9, v2}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 62
    :cond_c
    invoke-static {v9, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_d
    if-ne p1, v7, :cond_16

    const-string p1, "com.syu.canbusdvr"

    .line 63
    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 64
    invoke-static {p1}, Lo1/u;->f(Ljava/lang/String;)I

    goto/16 :goto_9

    .line 65
    :cond_e
    invoke-static {}, Lo1/u;->k()V

    goto/16 :goto_9

    :pswitch_6
    add-int/lit8 p3, p2, 0x2

    .line 66
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 67
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 68
    iput p2, p0, Lk0/ih;->c:I

    move p2, v2

    .line 69
    :goto_7
    iget-object p3, p0, Lk0/ih;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_10

    .line 70
    iget v0, p0, Lk0/ih;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v2

    if-ne v0, v1, :cond_f

    if-eqz v0, :cond_10

    .line 71
    iput p2, p0, Lk0/ih;->b:I

    goto :goto_8

    :cond_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_10
    :goto_8
    and-int/2addr p1, v6

    if-ne p1, v7, :cond_11

    .line 72
    array-length p1, p3

    if-ge p2, p1, :cond_16

    .line 73
    aget-object p1, p3, p2

    aget p1, p1, v7

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_11
    if-nez p1, :cond_16

    .line 74
    iget p1, p0, Lk0/ih;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_12

    if-eq p1, v6, :cond_12

    .line 75
    aget-object p1, p3, p1

    aget p1, p1, v7

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 76
    :cond_12
    iput v6, p0, Lk0/ih;->b:I

    goto :goto_9

    :cond_13
    add-int/lit8 p3, p2, 0x2

    .line 77
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    if-eq p3, v7, :cond_14

    goto :goto_9

    :cond_14
    add-int/2addr p2, v1

    .line 78
    aget-byte p3, p1, p2

    shr-int/2addr p3, v1

    and-int/2addr p3, v7

    aget-byte v0, p1, p2

    shr-int/2addr v0, v4

    and-int/2addr v0, v7

    invoke-static {p3, v0, v2}, Ll0/c0;->a(III)V

    .line 79
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v5, [I

    aput v3, v1, v2

    aget-byte p1, p1, p2

    and-int/2addr p1, v6

    aput p1, v1, v7

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_9

    :cond_15
    add-int/lit8 p3, p2, 0x2

    .line 80
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    const/16 p2, 0x1f00

    const/16 v0, 0x1400

    invoke-static {p3, p1, p2, v2, v0}, Lk0/qt;->m(IIIZI)V

    :cond_16
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x20
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
    .locals 6

    const/16 p3, 0x3ed

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, p3, :cond_2

    const/16 p3, 0x405

    if-eq p1, p3, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    aget p1, p2, v5

    if-nez p1, :cond_1

    new-array p1, v1, [I

    aput v0, p1, v5

    const/16 p3, -0x6d

    aput p3, p1, v4

    aput v3, p1, v3

    .line 2
    aget p3, p2, v4

    mul-int/lit16 p3, p3, 0xff

    div-int/lit16 p3, p3, 0x320

    aput p3, p1, p4

    aget p2, p2, v3

    mul-int/lit8 p2, p2, 0x7f

    div-int/lit16 p2, p2, 0x1e0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 3
    :cond_1
    aget p1, p2, v5

    if-ne p1, v4, :cond_7

    new-array p1, v1, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 6
    aget p1, p2, v5

    if-gt p1, v4, :cond_3

    new-array p1, v2, [I

    aput v0, p1, v5

    const/16 p3, -0x6f

    aput p3, p1, v4

    aput v4, p1, v3

    .line 7
    aget p2, p2, v5

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 8
    :cond_3
    aget p1, p2, v5

    if-ne p1, v2, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    aget p1, p2, v5

    if-ne p1, v1, :cond_5

    goto :goto_0

    .line 10
    :cond_5
    aget p1, p2, v5

    const/4 p3, 0x6

    if-ne p1, p3, :cond_6

    goto :goto_0

    .line 11
    :cond_6
    aget p1, p2, v5

    :goto_0
    new-array p1, v2, [I

    aput v0, p1, v5

    const/16 p3, -0x6e

    aput p3, p1, v4

    aput v4, p1, v3

    .line 12
    aget p2, p2, v5

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_7
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x6d
        0x2
        0x0
        0x7f
    .end array-data
.end method

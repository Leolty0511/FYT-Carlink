.class public Lk0/mp;
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
    iput v0, p0, Lk0/mp;->c:I

    const/16 v1, 0x1b

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

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v3, 0xb

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v3, 0xc

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v3, 0xd

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v3, 0xe

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v3, 0xf

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v3, 0x10

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v3, 0x11

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v3, 0x12

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v3, 0x13

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v3, 0x14

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_15

    const/16 v3, 0x15

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_16

    const/16 v3, 0x16

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_17

    const/16 v3, 0x17

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_18

    const/16 v3, 0x18

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_19

    const/16 v3, 0x19

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1a

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/mp;->d:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x1d
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
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x7
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x8
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x15
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x16
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x1
    .end array-data

    :array_d
    .array-data 4
        0xe
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x37
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x6
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x28
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x29
    .end array-data

    :array_13
    .array-data 4
        0x14
        0x2a
    .end array-data

    :array_14
    .array-data 4
        0x15
        0x2b
    .end array-data

    :array_15
    .array-data 4
        0x16
        0x31
    .end array-data

    :array_16
    .array-data 4
        0x17
        0x2f
    .end array-data

    :array_17
    .array-data 4
        0x18
        0x40
    .end array-data

    :array_18
    .array-data 4
        0x19
        0x26
    .end array-data

    :array_19
    .array-data 4
        0x1a
        0x2b
    .end array-data

    :array_1a
    .array-data 4
        0x1b
        0x2d
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
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v1, v0, Lk0/mt;->j:I

    .line 8
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x2c

    const/16 v2, 0x41

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v0, v5, :cond_6

    const/4 v9, 0x5

    if-eq v0, v4, :cond_4

    if-eq v0, v9, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1
    add-int/2addr p2, v5

    .line 3
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 4
    invoke-static {p2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_2

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 5
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 6
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 7
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 8
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 9
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 10
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/2addr p1, v4

    and-int/2addr p1, v8

    aput p1, p2, v7

    .line 11
    invoke-static {v9, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_3
    add-int/lit8 p3, p2, 0x2

    .line 12
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v6

    const/16 p2, 0x13ec

    invoke-static {p3, p1, v8, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    :cond_4
    const/16 p3, 0x37

    new-array v0, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 13
    aget-byte v4, p1, v4

    and-int/2addr v4, v6

    aput v4, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v0, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 14
    aget-byte v5, p1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v8

    aput v5, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v0, v8, [I

    .line 15
    aget-byte v5, p1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v8

    aput v5, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v8, [I

    .line 16
    aget-byte v5, p1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v8

    aput v5, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v0, v8, [I

    .line 17
    aget-byte v5, p1, v4

    shr-int/lit8 v3, v5, 0x4

    and-int/2addr v3, v8

    aput v3, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v8, [I

    .line 18
    aget-byte v3, p1, v4

    shr-int/2addr v3, v7

    and-int/lit8 v3, v3, 0xf

    aput v3, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 19
    invoke-static {p3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/16 v0, 0x1c

    const/16 v3, 0x1b

    if-eqz p3, :cond_5

    new-array p3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 20
    aget-byte v4, p1, v4

    and-int/2addr v4, v6

    aput v4, p3, v7

    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v8, [I

    add-int/lit8 v3, p2, 0x4

    .line 21
    aget-byte v3, p1, v3

    and-int/2addr v3, v6

    aput v3, p3, v7

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array p3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 22
    aget-byte v4, p1, v4

    and-int/2addr v4, v6

    aput v4, p3, v7

    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v8, [I

    add-int/lit8 v3, p2, 0x5

    .line 23
    aget-byte v3, p1, v3

    and-int/2addr v3, v6

    aput v3, p3, v7

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array p3, v8, [I

    add-int/lit8 v0, p2, 0x6

    .line 24
    aget-byte v3, p1, v0

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v8

    aput v3, p3, v7

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v2, v8, [I

    .line 25
    aget-byte v0, p1, v0

    shr-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v8

    aput v0, v2, v7

    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x43

    new-array v0, v8, [I

    add-int/lit8 p2, p2, 0x7

    .line 26
    aget-byte v2, p1, p2

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v8

    aput v2, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x2b

    new-array v0, v8, [I

    .line 27
    aget-byte v2, p1, p2

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v8

    aput v2, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v8, [I

    .line 28
    aget-byte p1, p1, p2

    shr-int/2addr p1, v7

    and-int/lit8 p1, p1, 0xf

    aput p1, p3, v7

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_6
    add-int/lit8 p3, p2, 0x2

    .line 29
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 30
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 31
    iput p2, p0, Lk0/mp;->c:I

    move p2, v7

    .line 32
    :goto_2
    iget-object p3, p0, Lk0/mp;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_8

    .line 33
    iget v0, p0, Lk0/mp;->c:I

    aget-object v9, p3, p2

    aget v9, v9, v7

    if-ne v0, v9, :cond_7

    if-eqz v0, :cond_8

    .line 34
    iput p2, p0, Lk0/mp;->b:I

    goto :goto_3

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 35
    :cond_8
    :goto_3
    iget v0, p0, Lk0/mp;->c:I

    if-eq v0, v5, :cond_1a

    if-eq v0, v4, :cond_18

    const/16 v3, 0x26

    const/16 v4, 0xb

    packed-switch v0, :pswitch_data_0

    and-int/2addr p1, v6

    if-ne p1, v8, :cond_9

    .line 36
    array-length p1, p3

    if-ge p2, p1, :cond_1c

    .line 37
    aget-object p1, p3, p2

    aget p1, p1, v8

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_9
    if-nez p1, :cond_1c

    .line 38
    iget p1, p0, Lk0/mp;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_a

    if-eq p1, v6, :cond_a

    .line 39
    aget-object p1, p3, p1

    aget p1, p1, v8

    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    .line 40
    :cond_a
    iput v6, p0, Lk0/mp;->b:I

    goto/16 :goto_9

    :pswitch_0
    and-int/2addr p1, v6

    if-ne p1, v8, :cond_1c

    .line 41
    invoke-static {}, Lo1/u;->W()Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0x33

    .line 42
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 43
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 44
    :cond_b
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    .line 45
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :pswitch_1
    and-int/2addr p1, v6

    if-ne p1, v8, :cond_1c

    .line 46
    invoke-static {}, Lo1/u;->W()Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0x32

    .line 47
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 48
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_c
    const/16 p1, 0x40

    .line 49
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 50
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :pswitch_2
    and-int/2addr p1, v6

    if-ne p1, v8, :cond_1c

    .line 51
    invoke-static {}, Lo1/u;->W()Z

    move-result p1

    if-eqz p1, :cond_d

    const/16 p1, 0x2f

    .line 52
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 53
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 54
    :cond_d
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    .line 55
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :pswitch_3
    and-int/2addr p1, v6

    if-ne p1, v8, :cond_1c

    .line 56
    invoke-static {}, Lo1/u;->W()Z

    move-result p1

    if-nez p1, :cond_f

    sget p1, Lu0/b;->D:I

    if-ne p1, v4, :cond_e

    goto :goto_4

    :cond_e
    const/16 p1, 0x23

    .line 57
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 58
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_f
    :goto_4
    const/16 p1, 0x31

    .line 59
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 60
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :pswitch_4
    and-int/2addr p1, v6

    if-ne p1, v8, :cond_1c

    .line 61
    invoke-static {}, Lo1/u;->W()Z

    move-result p1

    if-nez p1, :cond_11

    sget p1, Lu0/b;->D:I

    if-ne p1, v4, :cond_10

    goto :goto_5

    :cond_10
    const/16 p1, 0x22

    .line 62
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 63
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 64
    :cond_11
    :goto_5
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 65
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :pswitch_5
    and-int/2addr p1, v6

    if-ne p1, v8, :cond_1c

    .line 66
    invoke-static {}, Lo1/u;->W()Z

    move-result p1

    if-nez p1, :cond_13

    sget p1, Lu0/b;->D:I

    if-ne p1, v4, :cond_12

    goto :goto_6

    :cond_12
    const/16 p1, 0x42

    .line 67
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 68
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_13
    :goto_6
    const/16 p1, 0x2a

    .line 69
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 70
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :pswitch_6
    and-int/2addr p1, v6

    if-ne p1, v8, :cond_1c

    .line 71
    invoke-static {}, Lo1/u;->W()Z

    move-result p1

    if-nez p1, :cond_15

    sget p1, Lu0/b;->D:I

    if-ne p1, v4, :cond_14

    goto :goto_7

    :cond_14
    const/16 p1, 0x19

    .line 72
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 73
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_15
    :goto_7
    const/16 p1, 0x29

    .line 74
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 75
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto :goto_9

    :pswitch_7
    and-int/2addr p1, v6

    if-ne p1, v8, :cond_1c

    .line 76
    invoke-static {}, Lo1/u;->W()Z

    move-result p1

    if-nez p1, :cond_17

    sget p1, Lu0/b;->D:I

    if-ne p1, v4, :cond_16

    goto :goto_8

    .line 77
    :cond_16
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 78
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_17
    :goto_8
    const/16 p1, 0x28

    .line 79
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 80
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_18
    and-int/2addr p1, v6

    if-ne p1, v8, :cond_1c

    .line 81
    invoke-static {}, Lo1/u;->W()Z

    move-result p1

    if-eqz p1, :cond_19

    const/16 p1, 0x30

    .line 82
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 83
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto :goto_9

    .line 84
    :cond_19
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    .line 85
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_1a
    and-int/2addr p1, v6

    if-ne p1, v8, :cond_1c

    .line 86
    invoke-static {}, Lo1/u;->W()Z

    move-result p1

    if-eqz p1, :cond_1b

    const/16 p1, 0x2e

    .line 87
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 88
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto :goto_9

    .line 89
    :cond_1b
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    .line 90
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    :cond_1c
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12
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

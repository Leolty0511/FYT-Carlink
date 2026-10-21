.class public Lk0/pm;
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
    iput v0, p0, Lk0/pm;->c:I

    const/16 v1, 0x16

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

    const/16 v2, 0x15

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/pm;->d:[[I

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
        0x7
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_4
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_5
    .array-data 4
        0xb
        0x3
    .end array-data

    :array_6
    .array-data 4
        0xc
        0x4
    .end array-data

    :array_7
    .array-data 4
        0xd
        0xd
    .end array-data

    :array_8
    .array-data 4
        0xe
        0xc
    .end array-data

    :array_9
    .array-data 4
        0x10
        0x15
    .end array-data

    :array_a
    .array-data 4
        0x11
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x12
        0x7
    .end array-data

    :array_c
    .array-data 4
        0x13
        0x8
    .end array-data

    :array_d
    .array-data 4
        0x14
        0x12
    .end array-data

    :array_e
    .array-data 4
        0x15
        0x8
    .end array-data

    :array_f
    .array-data 4
        0x16
        0x26
    .end array-data

    :array_10
    .array-data 4
        0x17
        0x6
    .end array-data

    :array_11
    .array-data 4
        0x18
        0x5
    .end array-data

    :array_12
    .array-data 4
        0x19
        0x5
    .end array-data

    :array_13
    .array-data 4
        0x1a
        0x20
    .end array-data

    :array_14
    .array-data 4
        0x1b
        0x21
    .end array-data

    :array_15
    .array-data 4
        0x20
        0x3e
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

    .line 4
    iput v1, v0, Lk0/mt;->i:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lk0/mt;->j:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x21

    const/16 v4, 0x13

    const/16 v5, 0x12

    const/4 v6, 0x7

    const/16 v7, 0x1b

    const/4 v8, 0x3

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v3, :cond_11

    const/16 v3, 0x23

    const/16 v12, 0xb

    const/4 v13, 0x4

    const/4 v14, 0x5

    const/4 v15, 0x2

    if-eq v2, v3, :cond_7

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_5

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    add-int/lit8 v2, p2, 0x3

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x157c

    invoke-static {v2, v1, v11, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_e

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 4
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 5
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 6
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 7
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 8
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 9
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 10
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 11
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v1, v15

    and-int/2addr v1, v11

    aput v1, v2, v10

    .line 12
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 13
    aget-byte v3, v1, v2

    and-int/2addr v3, v9

    add-int/lit8 v4, p2, 0x3

    .line 14
    aget-byte v5, v1, v4

    and-int/2addr v5, v9

    add-int/lit8 v6, p2, 0x4

    .line 15
    aget-byte v7, v1, v6

    and-int/2addr v7, v9

    add-int/lit8 v8, p2, 0x5

    .line 16
    aget-byte v12, v1, v8

    and-int/2addr v12, v9

    if-nez v3, :cond_1

    if-nez v5, :cond_1

    if-nez v7, :cond_1

    if-nez v12, :cond_1

    .line 17
    invoke-static {v10}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 18
    :cond_1
    sget v10, Ll0/c0;->g:I

    if-ne v10, v3, :cond_2

    sget v10, Ll0/c0;->h:I

    if-ne v10, v5, :cond_2

    sget v10, Ll0/c0;->i:I

    if-ne v10, v7, :cond_2

    sget v10, Ll0/c0;->j:I

    if-eq v10, v12, :cond_3

    .line 19
    :cond_2
    sget v10, Lu0/b;->o:I

    if-nez v10, :cond_3

    .line 20
    invoke-static {v11}, Lu0/d;->C2(I)V

    .line 21
    sput v13, Ll0/c0;->k:I

    .line 22
    sget-object v10, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v10}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 23
    :cond_3
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 24
    sput v5, Ll0/c0;->h:I

    .line 25
    sput v7, Ll0/c0;->i:I

    .line 26
    sput v12, Ll0/c0;->j:I

    .line 27
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 28
    aget-byte v2, v1, v4

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 29
    aget-byte v2, v1, v6

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 30
    aget-byte v1, v1, v8

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_e

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 33
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 34
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_e

    .line 35
    :cond_4
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 36
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    if-eq v2, v11, :cond_6

    goto/16 :goto_e

    :cond_6
    add-int/lit8 v2, p2, 0x3

    .line 37
    aget-byte v3, v1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v11

    aget-byte v4, v1, v2

    shr-int/2addr v4, v13

    and-int/2addr v4, v11

    invoke-static {v3, v4, v10}, Ll0/c0;->a(III)V

    .line 38
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    new-array v5, v15, [I

    aput v12, v5, v10

    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    aput v1, v5, v11

    const/4 v1, 0x0

    invoke-static {v3, v4, v5, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_7
    const/16 v2, 0xa

    new-array v3, v11, [I

    add-int/lit8 v16, p2, 0x2

    .line 39
    aget-byte v17, v1, v16

    shr-int/lit8 v17, v17, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 40
    aget-byte v3, v1, v16

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v11, [I

    .line 41
    aget-byte v12, v1, v16

    shr-int/2addr v12, v14

    and-int/2addr v12, v11

    aput v12, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x39

    new-array v3, v11, [I

    .line 42
    aget-byte v12, v1, v16

    shr-int/2addr v12, v13

    and-int/2addr v12, v11

    aput v12, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v11, [I

    .line 43
    aget-byte v12, v1, v16

    shr-int/lit8 v8, v12, 0x3

    and-int/2addr v8, v11

    aput v8, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v11, [I

    .line 44
    aget-byte v8, v1, v16

    shr-int/2addr v8, v15

    and-int/2addr v8, v11

    aput v8, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v11, [I

    .line 45
    aget-byte v8, v1, v16

    shr-int/2addr v8, v11

    and-int/2addr v8, v11

    aput v8, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v11, [I

    .line 46
    aget-byte v8, v1, v16

    shr-int/2addr v8, v10

    and-int/2addr v8, v11

    aput v8, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 47
    aget-byte v2, v1, v2

    packed-switch v2, :pswitch_data_1

    move v2, v10

    :goto_2
    move v3, v2

    :goto_3
    move v8, v3

    goto :goto_4

    :pswitch_4
    move v2, v11

    goto :goto_2

    :pswitch_5
    move v8, v10

    move v2, v11

    move v3, v2

    goto :goto_4

    :pswitch_6
    move v3, v10

    move v8, v3

    move v2, v11

    goto :goto_4

    :pswitch_7
    move v3, v10

    move v2, v11

    move v8, v2

    goto :goto_4

    :pswitch_8
    move v2, v10

    move v3, v2

    move v8, v11

    goto :goto_4

    :pswitch_9
    move v2, v10

    move v3, v11

    goto :goto_3

    :pswitch_a
    move v2, v10

    move v8, v2

    move v3, v11

    :goto_4
    new-array v12, v11, [I

    aput v2, v12, v10

    .line 48
    invoke-static {v5, v12}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v3, v2, v10

    .line 49
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v11, [I

    aput v8, v3, v10

    .line 50
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 51
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 52
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, -0x3

    const/4 v4, -0x2

    const/16 v5, 0x1c

    if-eqz v2, :cond_c

    add-int/lit8 v2, p2, 0x5

    .line 53
    aget-byte v8, v1, v2

    and-int/2addr v8, v9

    if-eqz v8, :cond_9

    if-eq v8, v9, :cond_8

    new-array v8, v11, [I

    .line 54
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    aput v2, v8, v10

    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_8
    new-array v2, v11, [I

    aput v3, v2, v10

    .line 55
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_9
    new-array v2, v11, [I

    aput v4, v2, v10

    .line 56
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    add-int/lit8 v2, p2, 0x6

    .line 57
    aget-byte v5, v1, v2

    and-int/2addr v5, v9

    if-eqz v5, :cond_b

    if-eq v5, v9, :cond_a

    new-array v3, v11, [I

    .line 58
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    aput v2, v3, v10

    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_a
    new-array v2, v11, [I

    aput v3, v2, v10

    .line 59
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_b
    new-array v2, v11, [I

    aput v4, v2, v10

    .line 60
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_c
    add-int/lit8 v2, p2, 0x5

    .line 61
    aget-byte v8, v1, v2

    and-int/2addr v8, v9

    if-eqz v8, :cond_e

    if-eq v8, v9, :cond_d

    new-array v8, v11, [I

    .line 62
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    aput v2, v8, v10

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_d
    new-array v2, v11, [I

    aput v3, v2, v10

    .line 63
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_e
    new-array v2, v11, [I

    aput v4, v2, v10

    .line 64
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    add-int/lit8 v2, p2, 0x6

    .line 65
    aget-byte v7, v1, v2

    and-int/2addr v7, v9

    if-eqz v7, :cond_10

    if-eq v7, v9, :cond_f

    new-array v3, v11, [I

    .line 66
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    aput v2, v3, v10

    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_f
    new-array v2, v11, [I

    aput v3, v2, v10

    .line 67
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_10
    new-array v2, v11, [I

    aput v4, v2, v10

    .line 68
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_7
    add-int/lit8 v2, p2, 0x7

    .line 69
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    mul-int/2addr v1, v14

    add-int/lit16 v1, v1, 0x258

    .line 70
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_e

    :cond_11
    add-int/lit8 v2, p2, 0x2

    .line 71
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 72
    aget-byte v1, v1, v3

    and-int/2addr v2, v9

    .line 73
    iput v2, v0, Lk0/pm;->c:I

    move v2, v10

    .line 74
    :goto_8
    iget-object v3, v0, Lk0/pm;->d:[[I

    array-length v8, v3

    if-ge v2, v8, :cond_13

    .line 75
    iget v8, v0, Lk0/pm;->c:I

    aget-object v12, v3, v2

    aget v12, v12, v10

    if-ne v8, v12, :cond_12

    if-eqz v8, :cond_13

    .line 76
    iput v2, v0, Lk0/pm;->b:I

    goto :goto_9

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 77
    :cond_13
    :goto_9
    iget v8, v0, Lk0/pm;->c:I

    if-eq v8, v5, :cond_1c

    if-eq v8, v4, :cond_1a

    const/16 v4, 0x1a

    if-eq v8, v4, :cond_18

    if-eq v8, v7, :cond_16

    and-int/2addr v1, v9

    if-ne v1, v11, :cond_14

    .line 78
    array-length v1, v3

    if-ge v2, v1, :cond_1e

    .line 79
    aget-object v1, v3, v2

    aget v1, v1, v11

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_14
    if-nez v1, :cond_1e

    .line 80
    iget v1, v0, Lk0/pm;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_15

    if-eq v1, v9, :cond_15

    .line 81
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 82
    :cond_15
    iput v9, v0, Lk0/pm;->b:I

    goto :goto_e

    :cond_16
    move v2, v10

    :goto_a
    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x1f

    if-ge v2, v3, :cond_17

    .line 83
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 84
    :cond_17
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_18
    move v2, v10

    :goto_b
    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x1e

    if-ge v2, v3, :cond_19

    .line 85
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 86
    :cond_19
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_1a
    move v2, v10

    :goto_c
    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x8

    if-ge v2, v3, :cond_1b

    .line 87
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 88
    :cond_1b
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_1c
    move v2, v10

    :goto_d
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1d

    .line 89
    invoke-static {v6, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 90
    :cond_1d
    invoke-static {v6, v11}, Ll0/b0;->l0(II)V

    :cond_1e
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
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

    const/16 v0, -0x70

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

    const/16 v0, -0x7c

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

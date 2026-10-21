.class public Lk0/tf;
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
    iput v0, p0, Lk0/tf;->c:I

    const/16 v1, 0xc

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

    const/16 v2, 0xb

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/tf;->d:[[I

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
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x24
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x26
        0x5
    .end array-data

    :array_7
    .array-data 4
        0x27
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x28
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0x29
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0x30
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0x31
        -0x1
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 2

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

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x31

    const/16 v4, 0x30

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v7, :cond_10

    const/4 v8, -0x3

    const/4 v9, -0x2

    const/16 v10, 0x1b

    const/4 v11, 0x5

    const/4 v12, 0x2

    if-eq v2, v5, :cond_a

    const/4 v3, 0x6

    if-eq v2, v3, :cond_9

    const/4 v3, 0x4

    if-eq v2, v10, :cond_6

    const/16 v8, 0x26

    if-eq v2, v8, :cond_5

    if-eq v2, v4, :cond_4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v7, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v7

    aput v4, v2, v6

    .line 4
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v7

    aput v4, v2, v6

    .line 5
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v7, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v7

    aput v4, v2, v6

    .line 6
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v7

    aput v4, v2, v6

    .line 7
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v7, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v7

    aput v4, v2, v6

    .line 8
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 9
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 10
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 11
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p2, 0x3

    .line 12
    aget-byte v8, v1, v5

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, p2, 0x4

    .line 13
    aget-byte v10, v1, v9

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v11, p2, 0x5

    .line 14
    aget-byte v12, v1, v11

    and-int/lit16 v12, v12, 0xff

    if-nez v4, :cond_1

    if-nez v8, :cond_1

    if-nez v10, :cond_1

    if-nez v12, :cond_1

    .line 15
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 16
    :cond_1
    sget v6, Ll0/c0;->g:I

    if-ne v6, v4, :cond_2

    sget v6, Ll0/c0;->h:I

    if-ne v6, v8, :cond_2

    sget v6, Ll0/c0;->i:I

    if-ne v6, v10, :cond_2

    sget v6, Ll0/c0;->j:I

    if-eq v6, v12, :cond_3

    .line 17
    :cond_2
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_3

    .line 18
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 19
    sput v3, Ll0/c0;->k:I

    .line 20
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 21
    :cond_3
    :goto_1
    sput v4, Ll0/c0;->g:I

    .line 22
    sput v8, Ll0/c0;->h:I

    .line 23
    sput v10, Ll0/c0;->i:I

    .line 24
    sput v12, Ll0/c0;->j:I

    .line 25
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->j1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 26
    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->j1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 27
    aget-byte v2, v1, v9

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->j1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 28
    aget-byte v1, v1, v11

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ll0/c0;->j1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_8

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 29
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->j1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 30
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->j1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 31
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->j1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 32
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ll0/c0;->j1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    .line 33
    :cond_4
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 34
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x1d97

    const/16 v4, 0x1928

    invoke-static {v2, v1, v3, v6, v4}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_8

    :cond_6
    add-int/lit8 v2, p2, 0x2

    .line 35
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, p2, 0x3

    .line 36
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, p2, 0x4

    .line 37
    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x2a

    new-array v10, v7, [I

    shr-int/lit8 v11, v2, 0x0

    and-int/2addr v11, v7

    aput v11, v10, v6

    .line 38
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2f

    new-array v10, v7, [I

    shr-int/lit8 v11, v2, 0x2

    and-int/2addr v11, v7

    aput v11, v10, v6

    .line 39
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2e

    new-array v10, v7, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v7

    aput v2, v10, v6

    .line 40
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v4, 0xff

    const/16 v3, 0x28

    if-eqz v2, :cond_8

    const/16 v4, 0x1f

    if-eq v2, v4, :cond_7

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 41
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v2, v7, [I

    aput v8, v2, v6

    .line 42
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v2, v7, [I

    aput v9, v2, v6

    .line 43
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x2c

    new-array v3, v7, [I

    shr-int/2addr v1, v6

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v6

    .line 44
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_9
    const/16 v2, 0x62

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 45
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v7, [I

    .line 46
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 47
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, p2, 0x3

    .line 48
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p2, 0x4

    .line 49
    aget-byte v13, v1, v5

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, p2, 0x5

    .line 50
    aget-byte v15, v1, v14

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 v16, p2, 0x8

    .line 51
    aget-byte v9, v1, v16

    and-int/lit16 v9, v9, 0xff

    const/16 v8, 0x15

    new-array v10, v7, [I

    and-int/lit8 v17, v2, 0x7

    shr-int/lit8 v18, v4, 0x1

    and-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    aput v17, v10, v6

    .line 52
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x10

    new-array v10, v7, [I

    shr-int/lit8 v17, v2, 0x4

    and-int/lit8 v17, v17, 0x1

    aput v17, v10, v6

    .line 53
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xc

    new-array v10, v7, [I

    shr-int/lit8 v17, v2, 0x5

    and-int/lit8 v17, v17, 0x1

    aput v17, v10, v6

    .line 54
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xb

    new-array v10, v7, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v10, v6

    .line 55
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xa

    new-array v10, v7, [I

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v7

    aput v2, v10, v6

    .line 56
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v4, 0xf

    packed-switch v2, :pswitch_data_1

    move v2, v6

    move v8, v2

    move v10, v8

    move/from16 v17, v10

    move/from16 v18, v17

    goto/16 :goto_4

    :pswitch_3
    move/from16 v17, v6

    move/from16 v18, v17

    move v2, v7

    move v8, v2

    goto :goto_3

    :pswitch_4
    move v8, v6

    move/from16 v17, v8

    move/from16 v18, v17

    move v2, v7

    move v10, v2

    goto :goto_4

    :pswitch_5
    move v8, v6

    move v10, v8

    move/from16 v17, v10

    move/from16 v18, v17

    move v2, v7

    goto :goto_4

    :pswitch_6
    move v10, v6

    move/from16 v17, v10

    move/from16 v18, v17

    move v2, v7

    move v8, v2

    goto :goto_4

    :pswitch_7
    move v2, v6

    move v10, v2

    move/from16 v17, v10

    move/from16 v18, v17

    move v8, v7

    goto :goto_4

    :pswitch_8
    move v2, v6

    move/from16 v17, v2

    move/from16 v18, v17

    move v8, v7

    :goto_3
    move v10, v8

    goto :goto_4

    :pswitch_9
    move v2, v6

    move v8, v2

    move/from16 v17, v8

    move/from16 v18, v17

    move v10, v7

    goto :goto_4

    :pswitch_a
    move v2, v6

    move v8, v2

    move v10, v8

    move/from16 v17, v10

    move/from16 v18, v7

    goto :goto_4

    :pswitch_b
    move v2, v6

    move v8, v2

    move v10, v8

    move/from16 v18, v10

    move/from16 v17, v7

    :goto_4
    const/16 v12, 0x12

    new-array v11, v7, [I

    aput v2, v11, v6

    .line 57
    invoke-static {v12, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v11, v7, [I

    aput v8, v11, v6

    .line 58
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v8, v7, [I

    aput v10, v8, v6

    .line 59
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v17, v2, v6

    .line 60
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v7, [I

    aput v18, v3, v6

    .line 61
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v7, [I

    const/4 v8, 0x5

    shr-int/2addr v4, v8

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 62
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v7, [I

    const/4 v4, 0x2

    shr-int/lit8 v4, v9, 0x2

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 63
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 64
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 65
    aget-byte v2, v1, v14

    and-int/lit16 v13, v2, 0xff

    .line 66
    aget-byte v1, v1, v5

    and-int/lit16 v15, v1, 0xff

    :cond_b
    and-int/lit16 v1, v13, 0xff

    const/16 v2, 0x1e

    if-eqz v1, :cond_d

    if-eq v1, v2, :cond_c

    new-array v3, v7, [I

    aput v1, v3, v6

    const/16 v1, 0x1b

    .line 67
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_c
    const/16 v1, 0x1b

    new-array v3, v7, [I

    const/4 v4, -0x3

    aput v4, v3, v6

    .line 68
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_d
    const/16 v1, 0x1b

    new-array v3, v7, [I

    const/4 v4, -0x2

    aput v4, v3, v6

    .line 69
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    :goto_5
    and-int/lit16 v1, v15, 0xff

    const/16 v3, 0x1c

    if-eqz v1, :cond_f

    if-eq v1, v2, :cond_e

    new-array v2, v7, [I

    aput v1, v2, v6

    .line 70
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_e
    new-array v1, v7, [I

    const/4 v2, -0x3

    aput v2, v1, v6

    .line 71
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_f
    new-array v1, v7, [I

    const/4 v2, -0x2

    aput v2, v1, v6

    .line 72
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_10
    add-int/lit8 v2, p2, 0x2

    .line 73
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 74
    aget-byte v1, v1, v5

    and-int/lit16 v2, v2, 0xff

    .line 75
    iput v2, v0, Lk0/tf;->c:I

    move v2, v6

    .line 76
    :goto_6
    iget-object v5, v0, Lk0/tf;->d:[[I

    array-length v8, v5

    if-ge v2, v8, :cond_12

    .line 77
    iget v8, v0, Lk0/tf;->c:I

    aget-object v9, v5, v2

    aget v9, v9, v6

    if-ne v8, v9, :cond_11

    if-eqz v8, :cond_12

    .line 78
    iput v2, v0, Lk0/tf;->b:I

    goto :goto_7

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 79
    :cond_12
    :goto_7
    iget v8, v0, Lk0/tf;->c:I

    if-eq v8, v4, :cond_1b

    if-eq v8, v3, :cond_19

    packed-switch v8, :pswitch_data_2

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v7, :cond_13

    .line 80
    array-length v1, v5

    if-ge v2, v1, :cond_1d

    .line 81
    aget-object v1, v5, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_13
    if-nez v1, :cond_1d

    .line 82
    array-length v1, v5

    if-gt v2, v1, :cond_1d

    .line 83
    iget v1, v0, Lk0/tf;->b:I

    aget-object v1, v5, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :pswitch_c
    and-int/lit16 v1, v1, 0xff

    if-ne v1, v7, :cond_1d

    .line 84
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 85
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x254

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_8

    .line 86
    :cond_14
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_1d

    .line 87
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_8

    :pswitch_d
    and-int/lit16 v1, v1, 0xff

    if-ne v1, v7, :cond_1d

    .line 88
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 89
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x253

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_8

    .line 90
    :cond_15
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_1d

    .line 91
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto :goto_8

    .line 92
    :pswitch_e
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "com.syu.fourcamera2"

    .line 93
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 94
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x266

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto :goto_8

    .line 95
    :cond_16
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x24e

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto :goto_8

    .line 96
    :cond_17
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_18

    .line 97
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto :goto_8

    .line 98
    :cond_18
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto :goto_8

    :cond_19
    and-int/lit16 v1, v1, 0xff

    if-ne v1, v7, :cond_1d

    .line 99
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 100
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x250

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto :goto_8

    .line 101
    :cond_1a
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_1d

    .line 102
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto :goto_8

    :cond_1b
    and-int/lit16 v1, v1, 0xff

    if-ne v1, v7, :cond_1d

    .line 103
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 104
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x24f

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto :goto_8

    .line 105
    :cond_1c
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_1d

    .line 106
    invoke-static {v7}, Lk0/qt;->a(I)V

    :cond_1d
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x27
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x64

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
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    const/4 p3, 0x2

    if-lt p1, p3, :cond_1

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p4, 0xe3

    const/4 v0, 0x0

    aput p4, p1, v0

    const/16 p4, 0x83

    const/4 v1, 0x1

    aput p4, p1, v1

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 2
    aget p4, p2, v0

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v1

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

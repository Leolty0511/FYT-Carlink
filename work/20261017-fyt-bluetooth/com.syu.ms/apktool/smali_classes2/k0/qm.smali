.class public Lk0/qm;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/qm;->c:I

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

    iput-object v1, p0, Lk0/qm;->d:[[I

    .line 4
    new-instance v0, Lk0/qm$a;

    invoke-direct {v0, p0}, Lk0/qm$a;-><init>(Lk0/qm;)V

    iput-object v0, p0, Lk0/qm;->e:Ljava/lang/Runnable;

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
        0x1
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
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    .line 6
    iget-object v0, p0, Lk0/qm;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x30

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x31

    const/16 v6, 0xf

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-eq v2, v3, :cond_19

    const/16 v3, 0x42

    const/16 v9, 0xa

    const/16 v11, 0xff

    if-eq v2, v3, :cond_18

    const/16 v3, 0x7d

    const/16 v12, 0xb

    const/4 v13, 0x3

    if-eq v2, v3, :cond_16

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_15

    const/16 v3, 0x13

    const/16 v14, 0x12

    const/4 v15, 0x7

    const/4 v10, 0x5

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_c

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v5

    .line 4
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v5

    .line 5
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v5

    .line 6
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v5

    .line 7
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v5

    .line 8
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v5

    .line 9
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v5

    .line 10
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v8

    aput v1, v2, v5

    .line 11
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 12
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    add-int/lit8 v4, p2, 0x3

    .line 13
    aget-byte v6, v1, v4

    and-int/2addr v6, v11

    add-int/lit8 v9, p2, 0x4

    .line 14
    aget-byte v12, v1, v9

    and-int/2addr v12, v11

    add-int/lit8 v10, p2, 0x5

    .line 15
    aget-byte v13, v1, v10

    and-int/2addr v13, v11

    if-nez v3, :cond_1

    if-nez v6, :cond_1

    if-nez v12, :cond_1

    if-nez v13, :cond_1

    .line 16
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 17
    :cond_1
    sget v5, Ll0/c0;->g:I

    if-ne v5, v3, :cond_2

    sget v5, Ll0/c0;->h:I

    if-ne v5, v6, :cond_2

    sget v5, Ll0/c0;->i:I

    if-ne v5, v12, :cond_2

    sget v5, Ll0/c0;->j:I

    if-eq v5, v13, :cond_3

    .line 18
    :cond_2
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_3

    .line 19
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 20
    sput v7, Ll0/c0;->k:I

    .line 21
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 22
    :cond_3
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 23
    sput v6, Ll0/c0;->h:I

    .line 24
    sput v12, Ll0/c0;->i:I

    .line 25
    sput v13, Ll0/c0;->j:I

    .line 26
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 27
    aget-byte v2, v1, v4

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 28
    aget-byte v2, v1, v9

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 29
    aget-byte v1, v1, v10

    and-int/2addr v1, v11

    invoke-static {v1}, Ll0/c0;->P0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_c

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 33
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    invoke-static {v1}, Ll0/c0;->P0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_c

    :pswitch_3
    new-array v2, v8, [I

    add-int/lit8 v16, p2, 0x2

    .line 34
    aget-byte v17, v1, v16

    shr-int/lit8 v15, v17, 0x7

    and-int/2addr v15, v8

    aput v15, v2, v5

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 35
    aget-byte v9, v1, v16

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v8

    aput v9, v2, v5

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v9, v8, [I

    .line 36
    aget-byte v12, v1, v16

    shr-int/lit8 v10, v12, 0x5

    and-int/2addr v10, v8

    aput v10, v9, v5

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x39

    new-array v9, v8, [I

    .line 37
    aget-byte v10, v1, v16

    shr-int/2addr v10, v7

    and-int/2addr v10, v8

    aput v10, v9, v5

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v9, v8, [I

    .line 38
    aget-byte v10, v1, v16

    shr-int/2addr v10, v13

    and-int/2addr v10, v8

    aput v10, v9, v5

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v9, v8, [I

    .line 39
    aget-byte v10, v1, v16

    shr-int/lit8 v4, v10, 0x2

    and-int/2addr v4, v8

    aput v4, v9, v5

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v8, [I

    .line 40
    aget-byte v9, v1, v16

    shr-int/2addr v9, v8

    and-int/2addr v9, v8

    aput v9, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 41
    aget-byte v4, v1, v16

    shr-int/2addr v4, v5

    and-int/2addr v4, v8

    aput v4, v2, v5

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 42
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    packed-switch v2, :pswitch_data_2

    move v2, v5

    :goto_2
    move v4, v2

    :goto_3
    move v9, v4

    goto :goto_4

    :pswitch_4
    move v2, v8

    goto :goto_2

    :pswitch_5
    move v9, v5

    move v2, v8

    move v4, v2

    goto :goto_4

    :pswitch_6
    move v4, v5

    move v9, v4

    move v2, v8

    goto :goto_4

    :pswitch_7
    move v4, v5

    move v2, v8

    move v9, v2

    goto :goto_4

    :pswitch_8
    move v2, v5

    move v4, v2

    move v9, v8

    goto :goto_4

    :pswitch_9
    move v2, v5

    move v4, v8

    goto :goto_3

    :pswitch_a
    move v2, v5

    move v9, v2

    move v4, v8

    :goto_4
    new-array v10, v8, [I

    aput v2, v10, v5

    .line 43
    invoke-static {v14, v10}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    aput v4, v2, v5

    .line 44
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v8, [I

    aput v9, v3, v5

    .line 45
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 46
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 47
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, -0x3

    const/4 v4, -0x2

    const/16 v9, 0x1c

    const/16 v10, 0x1b

    if-eqz v2, :cond_8

    add-int/lit8 v2, p2, 0x5

    .line 48
    aget-byte v12, v1, v2

    and-int/2addr v12, v11

    if-nez v12, :cond_4

    new-array v2, v8, [I

    aput v4, v2, v5

    .line 49
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    .line 50
    :cond_4
    aget-byte v12, v1, v2

    and-int/2addr v12, v11

    if-ne v12, v11, :cond_5

    new-array v2, v8, [I

    aput v3, v2, v5

    .line 51
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_5
    new-array v12, v8, [I

    .line 52
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v12, v5

    invoke-static {v9, v12}, Lk0/qt;->y0(I[I)V

    :goto_5
    add-int/lit8 v2, p2, 0x6

    .line 53
    aget-byte v9, v1, v2

    and-int/2addr v9, v11

    if-nez v9, :cond_6

    new-array v2, v8, [I

    aput v4, v2, v5

    .line 54
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    .line 55
    :cond_6
    aget-byte v4, v1, v2

    and-int/2addr v4, v11

    if-ne v4, v11, :cond_7

    new-array v2, v8, [I

    aput v3, v2, v5

    .line 56
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_7
    new-array v3, v8, [I

    .line 57
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v3, v5

    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_8
    add-int/lit8 v2, p2, 0x5

    .line 58
    aget-byte v12, v1, v2

    and-int/2addr v12, v11

    if-nez v12, :cond_9

    new-array v2, v8, [I

    aput v4, v2, v5

    .line 59
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    .line 60
    :cond_9
    aget-byte v12, v1, v2

    and-int/2addr v12, v11

    if-ne v12, v11, :cond_a

    new-array v2, v8, [I

    aput v3, v2, v5

    .line 61
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_a
    new-array v12, v8, [I

    .line 62
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v12, v5

    invoke-static {v10, v12}, Lk0/qt;->y0(I[I)V

    :goto_6
    add-int/lit8 v2, p2, 0x6

    .line 63
    aget-byte v10, v1, v2

    and-int/2addr v10, v11

    if-nez v10, :cond_b

    new-array v2, v8, [I

    aput v4, v2, v5

    .line 64
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    .line 65
    :cond_b
    aget-byte v4, v1, v2

    and-int/2addr v4, v11

    if-ne v4, v11, :cond_c

    new-array v2, v8, [I

    aput v3, v2, v5

    .line 66
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_c
    new-array v3, v8, [I

    .line 67
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v3, v5

    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    :goto_7
    const/16 v2, 0x1d

    new-array v3, v8, [I

    const/16 v4, 0x8

    add-int/lit8 v4, p2, 0x8

    .line 68
    aget-byte v9, v1, v4

    shr-int/lit8 v7, v9, 0x4

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v8, [I

    .line 69
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_b
    add-int/lit8 v2, p2, 0x2

    .line 70
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 71
    aget-byte v1, v1, v4

    and-int/2addr v2, v11

    .line 72
    iput v2, v0, Lk0/qm;->c:I

    move v2, v5

    .line 73
    :goto_8
    iget-object v4, v0, Lk0/qm;->d:[[I

    array-length v6, v4

    if-ge v2, v6, :cond_e

    .line 74
    iget v6, v0, Lk0/qm;->c:I

    aget-object v7, v4, v2

    aget v7, v7, v5

    if-ne v6, v7, :cond_d

    if-eqz v6, :cond_e

    .line 75
    iput v2, v0, Lk0/qm;->b:I

    goto :goto_9

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 76
    :cond_e
    :goto_9
    iget v6, v0, Lk0/qm;->c:I

    if-eq v6, v14, :cond_13

    if-eq v6, v3, :cond_11

    and-int/2addr v1, v11

    if-ne v1, v8, :cond_f

    .line 77
    array-length v1, v4

    if-ge v2, v1, :cond_1b

    .line 78
    aget-object v1, v4, v2

    aget v1, v1, v8

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_f
    if-nez v1, :cond_1b

    .line 79
    iget v1, v0, Lk0/qm;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_10

    if-eq v1, v11, :cond_10

    .line 80
    aget-object v1, v4, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 81
    :cond_10
    iput v11, v0, Lk0/qm;->b:I

    goto/16 :goto_c

    :cond_11
    move v2, v5

    :goto_a
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_12

    const/16 v3, 0x8

    .line 82
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_12
    const/16 v3, 0x8

    .line 83
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_13
    move v2, v5

    :goto_b
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_14

    .line 84
    invoke-static {v15, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 85
    :cond_14
    invoke-static {v15, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 86
    :cond_15
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 87
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    if-eq v2, v8, :cond_17

    goto/16 :goto_c

    :cond_17
    add-int/lit8 v2, p2, 0x3

    .line 88
    aget-byte v3, v1, v2

    shr-int/2addr v3, v13

    and-int/2addr v3, v8

    aget-byte v6, v1, v2

    shr-int/2addr v6, v7

    and-int/2addr v6, v8

    invoke-static {v3, v6, v5}, Ll0/c0;->a(III)V

    .line 89
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v6, 0x419

    new-array v4, v4, [I

    aput v12, v4, v5

    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    aput v1, v4, v8

    const/4 v1, 0x0

    invoke-static {v3, v6, v4, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_18
    const/16 v2, 0x66

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 90
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 91
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 92
    aget-byte v4, v1, v4

    const/16 v6, 0x8

    shl-int/2addr v4, v6

    const v6, 0xff00

    and-int/2addr v4, v6

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v11

    or-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 93
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 94
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 95
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 96
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 97
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_19
    const/16 v2, 0x63

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 98
    aget-byte v9, v1, v4

    shr-int/2addr v9, v7

    and-int/2addr v9, v6

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v8, [I

    .line 99
    aget-byte v9, v1, v4

    shr-int/2addr v9, v5

    and-int/2addr v9, v6

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v8, [I

    .line 100
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1a
    add-int/lit8 v2, p2, 0x3

    .line 101
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x157c

    invoke-static {v2, v1, v5, v3}, Lk0/qt;->i(IIZI)V

    :cond_1b
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_b
        :pswitch_b
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x26
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
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
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/qm;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6e

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

    const/4 p3, 0x5

    const/4 p4, 0x4

    const/16 v0, 0xe3

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    array-length p1, p2

    if-lez p1, :cond_2

    new-array p1, p3, [I

    aput v0, p1, v3

    const/16 p3, 0x84

    aput p3, p1, v4

    aput v2, p1, v2

    .line 2
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    array-length p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x6

    new-array p1, p1, [I

    aput v0, p1, v3

    const/16 v0, 0x83

    aput v0, p1, v4

    aput v1, p1, v2

    .line 4
    aget v0, p2, v3

    aput v0, p1, v1

    aget v0, p2, v4

    aput v0, p1, p4

    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method

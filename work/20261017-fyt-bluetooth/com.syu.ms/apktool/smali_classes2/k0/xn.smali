.class public Lk0/xn;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/xn;->c:I

    const/16 v2, 0xe

    new-array v3, v2, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 3
    fill-array-data v5, :array_0

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    const/4 v6, 0x1

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    const/4 v7, 0x3

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    const/4 v8, 0x4

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_5

    const/4 v9, 0x5

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_6

    const/4 v10, 0x6

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_7

    const/4 v11, 0x7

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_8

    const/16 v12, 0x8

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_9

    const/16 v13, 0x9

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_a

    const/16 v14, 0xa

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_b

    const/16 v15, 0xb

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_c

    const/16 v16, 0xc

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_d

    const/16 v17, 0xd

    aput-object v5, v3, v17

    iput-object v3, v0, Lk0/xn;->d:[[I

    .line 4
    iput v1, v0, Lk0/xn;->f:I

    const/16 v3, 0x22

    new-array v3, v3, [[I

    new-array v5, v4, [I

    .line 5
    fill-array-data v5, :array_e

    aput-object v5, v3, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_f

    aput-object v1, v3, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_10

    aput-object v1, v3, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_11

    aput-object v1, v3, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_12

    aput-object v1, v3, v8

    new-array v1, v4, [I

    fill-array-data v1, :array_13

    aput-object v1, v3, v9

    new-array v1, v4, [I

    fill-array-data v1, :array_14

    aput-object v1, v3, v10

    new-array v1, v4, [I

    fill-array-data v1, :array_15

    aput-object v1, v3, v11

    new-array v1, v4, [I

    fill-array-data v1, :array_16

    aput-object v1, v3, v12

    new-array v1, v4, [I

    fill-array-data v1, :array_17

    aput-object v1, v3, v13

    new-array v1, v4, [I

    fill-array-data v1, :array_18

    aput-object v1, v3, v14

    new-array v1, v4, [I

    fill-array-data v1, :array_19

    aput-object v1, v3, v15

    new-array v1, v4, [I

    fill-array-data v1, :array_1a

    aput-object v1, v3, v16

    new-array v1, v4, [I

    fill-array-data v1, :array_1b

    aput-object v1, v3, v17

    new-array v1, v4, [I

    fill-array-data v1, :array_1c

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_1d

    const/16 v2, 0xf

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_1e

    const/16 v2, 0x10

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_1f

    const/16 v2, 0x11

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_20

    const/16 v2, 0x12

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_21

    const/16 v2, 0x13

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_22

    const/16 v2, 0x14

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_23

    const/16 v2, 0x15

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_24

    const/16 v2, 0x16

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_25

    const/16 v2, 0x17

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_26

    const/16 v2, 0x18

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_27

    const/16 v2, 0x19

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_28

    const/16 v2, 0x1a

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_29

    const/16 v2, 0x1b

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_2a

    const/16 v2, 0x1c

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_2b

    const/16 v2, 0x1d

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_2c

    const/16 v2, 0x1e

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_2d

    const/16 v2, 0x1f

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_2e

    const/16 v2, 0x20

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_2f

    const/16 v2, 0x21

    aput-object v1, v3, v2

    iput-object v3, v0, Lk0/xn;->g:[[I

    .line 6
    new-instance v1, Lk0/xn$a;

    invoke-direct {v1, v0}, Lk0/xn$a;-><init>(Lk0/xn;)V

    iput-object v1, v0, Lk0/xn;->h:Ljava/lang/Runnable;

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
        0x9
        0x12
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x1d
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x22
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x23
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x28
    .end array-data

    :array_f
    .array-data 4
        0x2
        0x29
    .end array-data

    :array_10
    .array-data 4
        0x3
        0x2a
    .end array-data

    :array_11
    .array-data 4
        0x4
        0x2b
    .end array-data

    :array_12
    .array-data 4
        0x5
        0x2c
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x2d
    .end array-data

    :array_14
    .array-data 4
        0x7
        0x2e
    .end array-data

    :array_15
    .array-data 4
        0x8
        0x2f
    .end array-data

    :array_16
    .array-data 4
        0x9
        0x30
    .end array-data

    :array_17
    .array-data 4
        0xa
        0x31
    .end array-data

    :array_18
    .array-data 4
        0xb
        0x32
    .end array-data

    :array_19
    .array-data 4
        0xc
        0x33
    .end array-data

    :array_1a
    .array-data 4
        0x10
        0x18
    .end array-data

    :array_1b
    .array-data 4
        0x11
        0x36
    .end array-data

    :array_1c
    .array-data 4
        0x12
        0x12
    .end array-data

    :array_1d
    .array-data 4
        0x13
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x14
        0x3
    .end array-data

    :array_1f
    .array-data 4
        0x15
        0x4
    .end array-data

    :array_20
    .array-data 4
        0x16
        0x5
    .end array-data

    :array_21
    .array-data 4
        0x17
        0x6
    .end array-data

    :array_22
    .array-data 4
        0x18
        0x0
    .end array-data

    :array_23
    .array-data 4
        0x19
        0x26
    .end array-data

    :array_24
    .array-data 4
        0x1a
        0x1
    .end array-data

    :array_25
    .array-data 4
        0x1b
        0x19
    .end array-data

    :array_26
    .array-data 4
        0x1c
        0x8
    .end array-data

    :array_27
    .array-data 4
        0x1d
        0x7
    .end array-data

    :array_28
    .array-data 4
        0x1e
        0x1e
    .end array-data

    :array_29
    .array-data 4
        0x1f
        0x1f
    .end array-data

    :array_2a
    .array-data 4
        0x20
        -0x1
    .end array-data

    :array_2b
    .array-data 4
        0x21
        0x22
    .end array-data

    :array_2c
    .array-data 4
        0x22
        0x23
    .end array-data

    :array_2d
    .array-data 4
        0x23
        0x1d
    .end array-data

    :array_2e
    .array-data 4
        0x24
        0x5
    .end array-data

    :array_2f
    .array-data 4
        0x80
        0x35
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

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->h:I

    .line 7
    iget-object v0, p0, Lk0/xn;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x25

    const/16 v4, 0xe

    const/16 v5, 0xd

    const/16 v6, 0x1e

    const/16 v7, 0x1f

    const/4 v8, 0x7

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v12, 0x3

    const/16 v13, 0xff

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x7d

    const/16 v11, 0x8

    if-eq v2, v3, :cond_14

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v5, v1, v4

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x4

    .line 4
    aget-byte v7, v1, v6

    and-int/2addr v7, v13

    add-int/lit8 v8, p2, 0x5

    .line 5
    aget-byte v9, v1, v8

    and-int/2addr v9, v13

    if-nez v3, :cond_0

    if-nez v5, :cond_0

    if-nez v7, :cond_0

    if-nez v9, :cond_0

    .line 6
    invoke-static {v14}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 7
    :cond_0
    sget v11, Ll0/c0;->g:I

    if-ne v11, v3, :cond_1

    sget v11, Ll0/c0;->h:I

    if-ne v11, v5, :cond_1

    sget v11, Ll0/c0;->i:I

    if-ne v11, v7, :cond_1

    sget v11, Ll0/c0;->j:I

    if-eq v11, v9, :cond_2

    .line 8
    :cond_1
    sget v11, Lu0/b;->o:I

    if-nez v11, :cond_2

    .line 9
    invoke-static {v15}, Lu0/d;->C2(I)V

    .line 10
    sput v10, Ll0/c0;->k:I

    .line 11
    sget-object v10, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v10}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 12
    :cond_2
    :goto_0
    sput v3, Ll0/c0;->g:I

    .line 13
    sput v5, Ll0/c0;->h:I

    .line 14
    sput v7, Ll0/c0;->i:I

    .line 15
    sput v9, Ll0/c0;->j:I

    .line 16
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 17
    aget-byte v2, v1, v4

    and-int/2addr v2, v13

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 18
    aget-byte v2, v1, v6

    and-int/2addr v2, v13

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 19
    aget-byte v1, v1, v8

    and-int/2addr v1, v13

    invoke-static {v1}, Ll0/c0;->l1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_f

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 20
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 21
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 22
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 23
    aget-byte v1, v1, v2

    and-int/2addr v1, v13

    invoke-static {v1}, Ll0/c0;->l1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_f

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 24
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 25
    aget-byte v1, v1, v3

    and-int/2addr v2, v13

    .line 26
    iput v2, v0, Lk0/xn;->f:I

    move v2, v14

    .line 27
    :goto_1
    iget-object v3, v0, Lk0/xn;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 28
    iget v4, v0, Lk0/xn;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v14

    if-ne v4, v5, :cond_3

    if-eqz v4, :cond_4

    .line 29
    iput v2, v0, Lk0/xn;->e:I

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 30
    :cond_4
    :goto_2
    iget v4, v0, Lk0/xn;->f:I

    packed-switch v4, :pswitch_data_1

    and-int/2addr v1, v13

    if-ne v1, v15, :cond_a

    .line 31
    array-length v1, v3

    if-ge v2, v1, :cond_26

    .line 32
    aget-object v1, v3, v2

    aget v1, v1, v15

    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :pswitch_3
    and-int/2addr v1, v13

    if-ne v1, v15, :cond_26

    .line 33
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_5

    .line 34
    invoke-static {v15}, Lk0/qt;->a(I)V

    goto/16 :goto_f

    .line 35
    :cond_5
    invoke-static {v14}, Lk0/qt;->a(I)V

    goto/16 :goto_f

    :pswitch_4
    move v2, v14

    :goto_3
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_6

    .line 36
    invoke-static {v7, v14}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 37
    :cond_6
    invoke-static {v7, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :pswitch_5
    move v2, v14

    :goto_4
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_7

    .line 38
    invoke-static {v6, v14}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 39
    :cond_7
    invoke-static {v6, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :pswitch_6
    move v2, v14

    :goto_5
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_8

    .line 40
    invoke-static {v8, v14}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 41
    :cond_8
    invoke-static {v8, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :pswitch_7
    move v2, v14

    :goto_6
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_9

    .line 42
    invoke-static {v11, v14}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 43
    :cond_9
    invoke-static {v11, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_a
    if-nez v1, :cond_26

    .line 44
    iget v1, v0, Lk0/xn;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_b

    if-eq v1, v13, :cond_b

    .line 45
    aget-object v1, v3, v1

    aget v1, v1, v15

    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    .line 46
    :cond_b
    iput v13, v0, Lk0/xn;->e:I

    goto/16 :goto_f

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 47
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 48
    aget-byte v1, v1, v3

    and-int/2addr v2, v13

    .line 49
    iput v2, v0, Lk0/xn;->c:I

    move v2, v14

    .line 50
    :goto_7
    iget-object v3, v0, Lk0/xn;->d:[[I

    array-length v8, v3

    if-ge v2, v8, :cond_d

    .line 51
    iget v8, v0, Lk0/xn;->c:I

    aget-object v9, v3, v2

    aget v9, v9, v14

    if-ne v8, v9, :cond_c

    if-eqz v8, :cond_d

    .line 52
    iput v2, v0, Lk0/xn;->b:I

    goto :goto_8

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 53
    :cond_d
    :goto_8
    iget v8, v0, Lk0/xn;->c:I

    if-eq v8, v5, :cond_12

    if-eq v8, v4, :cond_10

    and-int/2addr v1, v13

    if-ne v1, v15, :cond_e

    .line 54
    array-length v1, v3

    if-ge v2, v1, :cond_26

    .line 55
    aget-object v1, v3, v2

    aget v1, v1, v15

    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_e
    if-nez v1, :cond_26

    .line 56
    iget v1, v0, Lk0/xn;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_f

    if-eq v1, v13, :cond_f

    .line 57
    aget-object v1, v3, v1

    aget v1, v1, v15

    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    .line 58
    :cond_f
    iput v13, v0, Lk0/xn;->b:I

    goto/16 :goto_f

    :cond_10
    move v2, v14

    :goto_9
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_11

    .line 59
    invoke-static {v7, v14}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 60
    :cond_11
    invoke-static {v7, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_12
    move v2, v14

    :goto_a
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_13

    .line 61
    invoke-static {v6, v14}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 62
    :cond_13
    invoke-static {v6, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_14
    add-int/lit8 v2, p2, 0x2

    .line 63
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    if-eq v2, v15, :cond_19

    if-eq v2, v12, :cond_18

    if-eq v2, v9, :cond_16

    if-eq v2, v11, :cond_15

    goto/16 :goto_f

    :cond_15
    add-int/lit8 v2, p2, 0x3

    .line 64
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 65
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 66
    invoke-static {v2, v1, v15, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_f

    :cond_16
    add-int/lit8 v2, p2, 0x3

    .line 67
    aget-byte v1, v1, v2

    and-int/2addr v1, v13

    const-string v2, "persist.syu.reversefrontdoor"

    .line 68
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_17

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v15

    aput v3, v2, v14

    const/4 v3, 0x2

    .line 69
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v15

    aput v3, v2, v14

    .line 70
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_17
    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v15

    aput v3, v2, v14

    const/4 v3, 0x2

    .line 71
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v15

    aput v3, v2, v14

    .line 72
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    :goto_b
    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v15

    aput v3, v2, v14

    .line 73
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v15

    aput v3, v2, v14

    .line 74
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v15

    aput v3, v2, v14

    .line 75
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    const/4 v3, 0x2

    shr-int/2addr v1, v3

    and-int/2addr v1, v15

    aput v1, v2, v14

    .line 76
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_18
    add-int/lit8 v2, p2, 0x4

    .line 77
    aget-byte v2, v1, v2

    shl-int/2addr v2, v11

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v13

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v15, [I

    aput v1, v3, v14

    .line 78
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 79
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v15, v4, v14

    aput v1, v4, v15

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_19
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 80
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1a

    add-int/lit8 v2, p2, 0x3

    .line 81
    aget-byte v3, v1, v2

    shr-int/2addr v3, v12

    and-int/2addr v3, v15

    aget-byte v1, v1, v2

    shr-int/2addr v1, v10

    and-int/2addr v1, v15

    invoke-static {v3, v1, v14}, Ll0/c0;->b(III)V

    goto/16 :goto_f

    :cond_1a
    add-int/lit8 v2, p2, 0x3

    .line 82
    aget-byte v3, v1, v2

    shr-int/2addr v3, v12

    and-int/2addr v3, v15

    aget-byte v1, v1, v2

    shr-int/2addr v1, v10

    and-int/2addr v1, v15

    invoke-static {v3, v1, v14}, Ll0/c0;->a(III)V

    goto/16 :goto_f

    .line 83
    :cond_1b
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_1c
    const/16 v2, 0xa

    new-array v3, v15, [I

    add-int/lit8 v11, p2, 0x2

    .line 84
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v3, v15, [I

    .line 85
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v15, [I

    .line 86
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    .line 87
    aget-byte v3, v1, v11

    shr-int/2addr v3, v10

    and-int/2addr v3, v15

    aput v3, v2, v14

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    .line 88
    aget-byte v3, v1, v11

    shr-int/2addr v3, v12

    and-int/2addr v3, v15

    aput v3, v2, v14

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v15, [I

    .line 89
    aget-byte v4, v1, v11

    const/4 v5, 0x2

    shr-int/2addr v4, v5

    and-int/2addr v4, v15

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v15, [I

    .line 90
    aget-byte v4, v1, v11

    shr-int/2addr v4, v15

    and-int/2addr v4, v15

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x3

    .line 91
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v15

    aput v5, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v15, [I

    .line 92
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v15

    aput v5, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v15, [I

    .line 93
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v15

    aput v5, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v15, [I

    .line 94
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 95
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, -0x3

    const/4 v4, -0x2

    const/16 v5, 0xfe

    const/16 v7, 0x1c

    const/16 v8, 0x1b

    if-eqz v2, :cond_21

    add-int/lit8 v2, p2, 0x4

    .line 96
    aget-byte v9, v1, v2

    and-int/2addr v9, v13

    if-nez v9, :cond_1d

    new-array v2, v15, [I

    aput v4, v2, v14

    .line 97
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    .line 98
    :cond_1d
    aget-byte v9, v1, v2

    and-int/2addr v9, v13

    if-ne v9, v5, :cond_1e

    new-array v2, v15, [I

    aput v3, v2, v14

    .line 99
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1e
    new-array v9, v15, [I

    .line 100
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    aput v2, v9, v14

    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    :goto_c
    add-int/lit8 v2, p2, 0x5

    .line 101
    aget-byte v7, v1, v2

    and-int/2addr v7, v13

    if-nez v7, :cond_1f

    new-array v2, v15, [I

    aput v4, v2, v14

    .line 102
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    .line 103
    :cond_1f
    aget-byte v4, v1, v2

    and-int/2addr v4, v13

    if-ne v4, v5, :cond_20

    new-array v2, v15, [I

    aput v3, v2, v14

    .line 104
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_20
    new-array v3, v15, [I

    .line 105
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    aput v2, v3, v14

    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_21
    add-int/lit8 v2, p2, 0x4

    .line 106
    aget-byte v9, v1, v2

    and-int/2addr v9, v13

    if-nez v9, :cond_22

    new-array v2, v15, [I

    aput v4, v2, v14

    .line 107
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    .line 108
    :cond_22
    aget-byte v9, v1, v2

    and-int/2addr v9, v13

    if-ne v9, v5, :cond_23

    new-array v2, v15, [I

    aput v3, v2, v14

    .line 109
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_23
    new-array v9, v15, [I

    .line 110
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    aput v2, v9, v14

    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    :goto_d
    add-int/lit8 v2, p2, 0x5

    .line 111
    aget-byte v8, v1, v2

    and-int/2addr v8, v13

    if-nez v8, :cond_24

    new-array v2, v15, [I

    aput v4, v2, v14

    .line 112
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    .line 113
    :cond_24
    aget-byte v4, v1, v2

    and-int/2addr v4, v13

    if-ne v4, v5, :cond_25

    new-array v2, v15, [I

    aput v3, v2, v14

    .line 114
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_25
    new-array v3, v15, [I

    .line 115
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    aput v2, v3, v14

    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    :goto_e
    const/16 v2, 0x1d

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x6

    .line 116
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v12

    aput v5, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    .line 117
    aget-byte v1, v1, v4

    const/4 v3, 0x2

    shr-int/2addr v1, v3

    and-int/2addr v1, v12

    aput v1, v2, v14

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :cond_26
    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
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

    .line 3
    iget-object v0, p0, Lk0/xn;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x61

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

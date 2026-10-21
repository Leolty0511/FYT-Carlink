.class public Lk0/vg;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:B

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/vg;->b:I

    .line 3
    iput v0, p0, Lk0/vg;->c:I

    .line 4
    iput v0, p0, Lk0/vg;->e:I

    const/16 v1, 0x25

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 5
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

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v5, 0x5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v5, 0x6

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v5, 0x7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v5, 0x8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v5, 0x9

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v5, 0xa

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v5, 0xb

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v5, 0xc

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v5, 0xd

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v5, 0xe

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v5, 0xf

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v5, 0x10

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v5, 0x11

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v5, 0x12

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v5, 0x13

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v5, 0x14

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v5, 0x15

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v5, 0x16

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v5, 0x17

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v5, 0x18

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v5, 0x19

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v5, 0x1a

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v5, 0x1b

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v5, 0x1c

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v5, 0x1d

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v5, 0x1e

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v5, 0x1f

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v5, 0x20

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v5, 0x21

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v5, 0x22

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v5, 0x23

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_24

    const/16 v3, 0x24

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/vg;->f:[[I

    .line 6
    iput v0, p0, Lk0/vg;->g:I

    .line 7
    new-instance v0, Lk0/vg$a;

    invoke-direct {v0, p0}, Lk0/vg$a;-><init>(Lk0/vg;)V

    iput-object v0, p0, Lk0/vg;->h:Ljava/lang/Runnable;

    .line 8
    iput-byte v4, p0, Lk0/vg;->i:B

    .line 9
    new-instance v0, Lk0/vg$b;

    invoke-direct {v0, p0}, Lk0/vg$b;-><init>(Lk0/vg;)V

    iput-object v0, p0, Lk0/vg;->j:Ljava/lang/Runnable;

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
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x1d
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1e
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1f
    .end array-data

    :array_9
    .array-data 4
        0x81
        0x3d
    .end array-data

    :array_a
    .array-data 4
        0x82
        0x3c
    .end array-data

    :array_b
    .array-data 4
        0x83
        0x12
    .end array-data

    :array_c
    .array-data 4
        0x84
        0x37
    .end array-data

    :array_d
    .array-data 4
        0x86
        0x3
    .end array-data

    :array_e
    .array-data 4
        0x87
        0x4
    .end array-data

    :array_f
    .array-data 4
        0x88
        0x9
    .end array-data

    :array_10
    .array-data 4
        0x89
        0x6
    .end array-data

    :array_11
    .array-data 4
        0x8a
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x8c
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x8d
        0x3a
    .end array-data

    :array_14
    .array-data 4
        0x8e
        0x8
    .end array-data

    :array_15
    .array-data 4
        0x8f
        0x7
    .end array-data

    :array_16
    .array-data 4
        0x90
        0x1e
    .end array-data

    :array_17
    .array-data 4
        0x91
        0x1f
    .end array-data

    :array_18
    .array-data 4
        0xb0
        0x31
    .end array-data

    :array_19
    .array-data 4
        0xb1
        0x28
    .end array-data

    :array_1a
    .array-data 4
        0xb2
        0x29
    .end array-data

    :array_1b
    .array-data 4
        0xb3
        0x2a
    .end array-data

    :array_1c
    .array-data 4
        0xb4
        0x2b
    .end array-data

    :array_1d
    .array-data 4
        0xb5
        0x2c
    .end array-data

    :array_1e
    .array-data 4
        0xb6
        0x2d
    .end array-data

    :array_1f
    .array-data 4
        0xb7
        0x2e
    .end array-data

    :array_20
    .array-data 4
        0xb8
        0x2f
    .end array-data

    :array_21
    .array-data 4
        0xb9
        0x30
    .end array-data

    :array_22
    .array-data 4
        0xba
        0x33
    .end array-data

    :array_23
    .array-data 4
        0xbb
        0x32
    .end array-data

    :array_24
    .array-data 4
        0xbc
        -0x1
    .end array-data
.end method

.method public static synthetic a3(Lk0/vg;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/vg;->j:Ljava/lang/Runnable;

    return-object p0
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
    iput v2, v0, Lk0/mt;->j:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    iput v1, v0, Lk0/mt;->b:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/vg;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x5

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    new-array v0, v1, [I

    .line 11
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    .line 12
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x7e
        0x2
        0x10
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7e
        0x2
        0x10
        0x1
    .end array-data
.end method

.method public U2([BII)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x2d

    const/16 v4, 0x10

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x30

    const/16 v11, 0xd

    const/16 v12, 0x8

    const/16 v13, 0x1e

    const/16 v14, 0x1f

    if-eq v2, v3, :cond_f

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_9

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_7

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 4
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 5
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->P0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_e

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 6
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 7
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 8
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 9
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->P0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_e

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 10
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 11
    aget-byte v1, v1, v3

    and-int/2addr v2, v8

    .line 12
    iput v2, v0, Lk0/vg;->e:I

    move v2, v9

    .line 13
    :goto_0
    iget-object v3, v0, Lk0/vg;->f:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 14
    iget v4, v0, Lk0/vg;->e:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_0

    if-eqz v4, :cond_1

    .line 15
    iput v2, v0, Lk0/vg;->d:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_1
    :goto_1
    iget v4, v0, Lk0/vg;->e:I

    if-eq v4, v12, :cond_5

    const/16 v5, 0x9

    if-eq v4, v5, :cond_3

    and-int/2addr v1, v8

    if-ne v1, v10, :cond_2

    .line 17
    array-length v1, v3

    if-ge v2, v1, :cond_20

    .line 18
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_2
    if-nez v1, :cond_20

    .line 19
    array-length v1, v3

    if-gt v2, v1, :cond_20

    .line 20
    iget v1, v0, Lk0/vg;->d:I

    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_3
    move v2, v9

    :goto_2
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_4

    .line 21
    invoke-static {v13, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 22
    :cond_4
    invoke-static {v13, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_5
    move v2, v9

    :goto_3
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_6

    .line 23
    invoke-static {v14, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 24
    :cond_6
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 25
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_e

    .line 26
    :cond_7
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    .line 27
    sget v1, Lu0/b;->D:I

    if-ne v1, v11, :cond_8

    new-array v1, v5, [I

    .line 28
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_e

    :cond_8
    if-eq v1, v11, :cond_20

    new-array v1, v5, [I

    .line 29
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_e

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 31
    aget-byte v3, v1, v3

    add-int/lit8 v6, p2, 0x4

    .line 32
    aget-byte v16, v1, v6

    add-int/lit8 v17, p2, 0x5

    .line 33
    aget-byte v18, v1, v17

    add-int/lit8 v19, p2, 0x6

    .line 34
    aget-byte v19, v1, v19

    add-int/lit8 v20, p2, 0x7

    .line 35
    aget-byte v20, v1, v20

    add-int/lit8 v12, p2, 0x8

    .line 36
    aget-byte v12, v1, v12

    const/16 v13, 0xa

    new-array v15, v10, [I

    shr-int/lit8 v21, v2, 0x7

    and-int/lit8 v21, v21, 0x1

    aput v21, v15, v9

    .line 37
    invoke-static {v13, v15}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0xb

    new-array v15, v10, [I

    shr-int/lit8 v21, v2, 0x6

    and-int/lit8 v21, v21, 0x1

    aput v21, v15, v9

    .line 38
    invoke-static {v13, v15}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0xc

    new-array v15, v10, [I

    shr-int/lit8 v21, v2, 0x5

    and-int/lit8 v21, v21, 0x1

    aput v21, v15, v9

    .line 39
    invoke-static {v13, v15}, Lk0/qt;->y0(I[I)V

    new-array v13, v10, [I

    shr-int/lit8 v15, v2, 0x3

    and-int/2addr v15, v10

    aput v15, v13, v9

    .line 40
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xe

    new-array v13, v10, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v10

    aput v2, v13, v9

    .line 41
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v7, v10, [I

    shr-int/lit8 v11, v3, 0x7

    and-int/2addr v11, v10

    aput v11, v7, v9

    .line 42
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v7, v10, [I

    shr-int/lit8 v11, v3, 0x6

    and-int/2addr v11, v10

    aput v11, v7, v9

    .line 43
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v7, v10, [I

    shr-int/2addr v3, v5

    and-int/2addr v3, v10

    aput v3, v7, v9

    .line 44
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 45
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 46
    aget-byte v2, v1, v17

    and-int/2addr v2, v8

    .line 47
    aget-byte v1, v1, v6

    and-int/2addr v1, v8

    goto :goto_4

    :cond_a
    move/from16 v2, v16

    move/from16 v1, v18

    :goto_4
    and-int/lit16 v3, v2, 0xff

    const/4 v5, -0x3

    const/4 v6, -0x2

    const/16 v7, 0x1b

    if-nez v2, :cond_b

    new-array v2, v10, [I

    aput v6, v2, v9

    .line 48
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_b
    if-ne v2, v14, :cond_c

    new-array v2, v10, [I

    aput v5, v2, v9

    .line 49
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_c
    new-array v2, v10, [I

    aput v3, v2, v9

    .line 50
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    and-int/lit16 v2, v1, 0xff

    const/16 v3, 0x1c

    if-nez v1, :cond_d

    new-array v1, v10, [I

    aput v6, v1, v9

    .line 51
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_d
    if-ne v1, v14, :cond_e

    new-array v1, v10, [I

    aput v5, v1, v9

    .line 52
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_e
    new-array v1, v10, [I

    aput v2, v1, v9

    .line 53
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    :goto_6
    const/16 v1, 0x41

    new-array v2, v10, [I

    shr-int/lit8 v3, v19, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 54
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v19, 0x6

    and-int/2addr v2, v10

    aput v2, v1, v9

    .line 55
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x25

    new-array v2, v10, [I

    shr-int/lit8 v3, v19, 0x0

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 56
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1d

    new-array v2, v10, [I

    shr-int/lit8 v3, v20, 0x4

    const/4 v4, 0x7

    and-int/2addr v3, v4

    aput v3, v2, v9

    .line 57
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v20, 0x0

    and-int/2addr v2, v4

    aput v2, v1, v9

    const/16 v2, 0x1e

    .line 58
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v2, v10, [I

    and-int/lit16 v3, v12, 0xff

    aput v3, v2, v9

    .line 59
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_f
    add-int/lit8 v2, p2, 0x2

    .line 60
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 61
    aget-byte v1, v1, v3

    and-int/2addr v2, v8

    or-int/lit16 v2, v2, 0x80

    .line 62
    iput v2, v0, Lk0/vg;->e:I

    move v2, v9

    .line 63
    :goto_7
    iget-object v3, v0, Lk0/vg;->f:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_11

    .line 64
    iget v4, v0, Lk0/vg;->e:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_10

    if-eqz v4, :cond_11

    .line 65
    iput v2, v0, Lk0/vg;->d:I

    goto :goto_8

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 66
    :cond_11
    :goto_8
    sget v4, Lu0/b;->D:I

    if-eq v4, v11, :cond_20

    .line 67
    iget v4, v0, Lk0/vg;->e:I

    const/16 v5, 0x81

    if-eq v4, v5, :cond_1c

    const/16 v5, 0x82

    if-eq v4, v5, :cond_1a

    const/16 v5, 0x84

    if-eq v4, v5, :cond_1c

    const/16 v5, 0xbc

    if-eq v4, v5, :cond_18

    packed-switch v4, :pswitch_data_1

    and-int/2addr v1, v8

    if-ne v1, v10, :cond_12

    .line 68
    array-length v1, v3

    if-ge v2, v1, :cond_20

    .line 69
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_12
    if-nez v1, :cond_20

    .line 70
    iget v1, v0, Lk0/vg;->d:I

    array-length v2, v3

    if-ge v1, v2, :cond_13

    if-eq v1, v8, :cond_13

    .line 71
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 72
    :cond_13
    iput v8, v0, Lk0/vg;->d:I

    goto/16 :goto_e

    :pswitch_4
    move v2, v9

    :goto_9
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_14

    .line 73
    invoke-static {v14, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 74
    :cond_14
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :pswitch_5
    move v2, v9

    :goto_a
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_15

    const/16 v3, 0x1e

    .line 75
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_15
    const/16 v3, 0x1e

    .line 76
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :pswitch_6
    move v2, v9

    :goto_b
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_16

    const/4 v3, 0x7

    .line 77
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_16
    const/4 v3, 0x7

    .line 78
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :pswitch_7
    move v2, v9

    :goto_c
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_17

    .line 79
    invoke-static {v12, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 80
    :cond_17
    invoke-static {v12, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_18
    and-int/2addr v1, v8

    if-ne v1, v10, :cond_20

    .line 81
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_19

    .line 82
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto/16 :goto_e

    .line 83
    :cond_19
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto/16 :goto_e

    :cond_1a
    and-int/2addr v1, v8

    if-ne v1, v10, :cond_1b

    .line 84
    array-length v1, v3

    if-ge v2, v1, :cond_20

    .line 85
    iput-byte v6, v0, Lk0/vg;->i:B

    .line 86
    iget-object v1, v0, Lk0/vg;->j:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_e

    :cond_1b
    if-nez v1, :cond_20

    .line 87
    array-length v1, v3

    if-gt v2, v1, :cond_20

    .line 88
    iput-byte v9, v0, Lk0/vg;->i:B

    .line 89
    iget-object v1, v0, Lk0/vg;->j:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    goto/16 :goto_e

    :cond_1c
    and-int/2addr v1, v8

    if-ne v1, v10, :cond_20

    .line 90
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    const/16 v2, 0x62

    new-array v3, v10, [I

    aput v10, v3, v9

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_e

    :cond_1d
    add-int/lit8 v2, p2, 0x2

    .line 91
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    const-string v3, "persist.syu.reversefrontdoor"

    .line 92
    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1e

    new-array v3, v10, [I

    shr-int/lit8 v11, v2, 0x7

    and-int/2addr v11, v10

    aput v11, v3, v9

    .line 93
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v10

    aput v11, v3, v9

    .line 94
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_1e
    new-array v3, v10, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v10

    aput v11, v3, v9

    .line 95
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v11, v2, 0x7

    and-int/2addr v11, v10

    aput v11, v3, v9

    .line 96
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    :goto_d
    new-array v3, v10, [I

    shr-int/lit8 v11, v2, 0x5

    and-int/2addr v11, v10

    aput v11, v3, v9

    const/4 v11, 0x4

    .line 97
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v11, v2, 0x4

    and-int/2addr v11, v10

    aput v11, v3, v9

    .line 98
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v11, v2, 0x3

    and-int/2addr v11, v10

    aput v11, v3, v9

    .line 99
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v10

    aput v2, v3, v9

    .line 100
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 101
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1f

    .line 102
    invoke-static {v10}, Lu0/d;->C2(I)V

    goto :goto_e

    .line 103
    :cond_1f
    invoke-static {v9}, Lu0/d;->C2(I)V

    :cond_20
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x7e
        0x2
        0x10
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7e
        0x2
        0x10
        0x1
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/vg;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x63

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

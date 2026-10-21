.class public Lk0/je;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:[[I

.field public c:[[I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [[I

    .line 2
    iput-object v1, p0, Lk0/je;->b:[[I

    const/16 v1, 0xf

    new-array v2, v1, [[I

    .line 3
    iput-object v2, p0, Lk0/je;->c:[[I

    const/4 v2, 0x0

    .line 4
    iput v2, p0, Lk0/je;->e:I

    const/16 v3, 0x17

    new-array v3, v3, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 5
    fill-array-data v5, :array_0

    aput-object v5, v3, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    const/4 v5, 0x1

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v3, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    const/4 v5, 0x4

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v3, v0

    new-array v0, v4, [I

    fill-array-data v0, :array_6

    const/4 v2, 0x6

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_7

    const/4 v2, 0x7

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_8

    const/16 v2, 0x8

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_9

    const/16 v2, 0x9

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_a

    const/16 v2, 0xa

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_b

    const/16 v2, 0xb

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_c

    const/16 v2, 0xc

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_d

    const/16 v2, 0xd

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_e

    const/16 v2, 0xe

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_f

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_10

    const/16 v1, 0x10

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_11

    const/16 v1, 0x11

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_12

    const/16 v1, 0x12

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_13

    const/16 v1, 0x13

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_14

    const/16 v1, 0x14

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_15

    const/16 v1, 0x15

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_16

    const/16 v1, 0x16

    aput-object v0, v3, v1

    iput-object v3, p0, Lk0/je;->f:[[I

    .line 6
    new-instance v0, Lk0/je$a;

    invoke-direct {v0, p0}, Lk0/je$a;-><init>(Lk0/je;)V

    iput-object v0, p0, Lk0/je;->g:Ljava/lang/Runnable;

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
        0x8
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x9
        0xd
    .end array-data

    :array_6
    .array-data 4
        0xa
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xb
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x20
        0x36
    .end array-data

    :array_9
    .array-data 4
        0x21
        0x5
    .end array-data

    :array_a
    .array-data 4
        0x22
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x23
        0x2
    .end array-data

    :array_c
    .array-data 4
        0x24
        0x22
    .end array-data

    :array_d
    .array-data 4
        0x25
        0x23
    .end array-data

    :array_e
    .array-data 4
        0x26
        0x20
    .end array-data

    :array_f
    .array-data 4
        0x27
        0x21
    .end array-data

    :array_10
    .array-data 4
        0x28
        0x1d
    .end array-data

    :array_11
    .array-data 4
        0x29
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x2a
        0x6
    .end array-data

    :array_13
    .array-data 4
        0xf0
        0x7
    .end array-data

    :array_14
    .array-data 4
        0xf1
        0x8
    .end array-data

    :array_15
    .array-data 4
        0xf2
        0x1f
    .end array-data

    :array_16
    .array-data 4
        0xf3
        0x1e
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

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/je;->g:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 9
    sget v1, Lk0/nt;->c:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 11
    :cond_0
    iput v2, v0, Lk0/mt;->e:I

    const/4 v1, 0x0

    .line 12
    iput v1, v0, Lk0/mt;->f:I

    .line 13
    iput v2, v0, Lk0/mt;->g:I

    .line 14
    iput v1, v0, Lk0/mt;->o:I

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xff
        0x1
        0x7f
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x83
        0x2
        0x5
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x83
        0x2
        0x6
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x83
        0x2
        0x9
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x83
        0x2
        0xb
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x83
        0x2
        0xc
        0x0
    .end array-data
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    aget-byte v2, v0, p2

    const/16 v4, 0x1e

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v10, :cond_c

    const/4 v11, 0x5

    const/4 v12, 0x2

    if-eq v2, v12, :cond_a

    const/16 v13, 0xb

    if-eq v2, v13, :cond_8

    const/16 v15, 0xc

    const/16 v5, 0xf

    if-eq v2, v15, :cond_6

    const/16 v13, 0x7f

    if-eq v2, v13, :cond_5

    const/16 v13, 0x9

    const/4 v14, 0x7

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v0, v2

    add-int/lit8 v5, p2, 0x3

    .line 3
    aget-byte v5, v0, v5

    add-int/lit8 v6, p2, 0x4

    .line 4
    aget-byte v6, v0, v6

    add-int/lit8 v11, p2, 0x5

    .line 5
    aget-byte v11, v0, v11

    add-int/lit8 v12, p2, 0x6

    .line 6
    aget-byte v12, v0, v12

    add-int/lit8 v15, p2, 0x7

    .line 7
    aget-byte v15, v0, v15

    add-int/lit8 v16, p2, 0x8

    .line 8
    aget-byte v8, v0, v16

    add-int/lit8 v13, p2, 0x9

    .line 9
    aget-byte v0, v0, v13

    new-array v13, v10, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v13, v9

    const/16 v3, 0x10

    .line 10
    invoke-static {v3, v13}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v13, v2, 0x4

    and-int/2addr v13, v14

    aput v13, v3, v9

    const/16 v13, 0x11

    .line 11
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x12

    new-array v13, v10, [I

    shr-int/lit8 v16, v2, 0x2

    and-int/lit8 v16, v16, 0x3

    aput v16, v13, v9

    .line 12
    invoke-static {v3, v13}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v13, v10, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v7

    aput v2, v13, v9

    .line 13
    invoke-static {v3, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v10, [I

    shr-int/lit8 v13, v5, 0x7

    and-int/2addr v13, v10

    aput v13, v3, v9

    .line 14
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v10, [I

    shr-int/lit8 v13, v5, 0x6

    and-int/2addr v13, v10

    aput v13, v3, v9

    .line 15
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v3, v10, [I

    shr-int/lit8 v13, v5, 0x5

    and-int/2addr v13, v10

    aput v13, v3, v9

    .line 16
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v10, [I

    shr-int/lit8 v13, v5, 0x4

    and-int/2addr v13, v10

    aput v13, v3, v9

    .line 17
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v10, [I

    shr-int/lit8 v13, v5, 0x2

    and-int/2addr v13, v7

    aput v13, v3, v9

    .line 18
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19

    new-array v3, v10, [I

    shr-int/2addr v5, v9

    and-int/2addr v5, v7

    aput v5, v3, v9

    .line 19
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1a

    new-array v3, v10, [I

    shr-int/lit8 v5, v6, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    .line 20
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    new-array v3, v10, [I

    shr-int/lit8 v5, v6, 0x6

    and-int/2addr v5, v10

    aput v5, v3, v9

    .line 21
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v3, v10, [I

    shr-int/lit8 v5, v6, 0x5

    and-int/2addr v5, v10

    aput v5, v3, v9

    .line 22
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v10, [I

    shr-int/lit8 v5, v6, 0x4

    and-int/2addr v5, v10

    aput v5, v3, v9

    .line 23
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v6, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 24
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v6, 0x2

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/16 v3, 0x1f

    .line 25
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v10, [I

    shr-int/lit8 v4, v6, 0x0

    and-int/2addr v4, v7

    aput v4, v3, v9

    .line 26
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v3, v10, [I

    shr-int/lit8 v4, v11, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v9

    .line 27
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x22

    new-array v3, v10, [I

    shr-int/lit8 v4, v11, 0x3

    and-int/2addr v4, v14

    aput v4, v3, v9

    .line 28
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x23

    new-array v3, v10, [I

    shr-int/lit8 v4, v11, 0x0

    and-int/2addr v4, v14

    aput v4, v3, v9

    .line 29
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x24

    new-array v3, v10, [I

    const/16 v4, 0xff

    and-int/lit16 v5, v12, 0xff

    aput v5, v3, v9

    .line 30
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v10, [I

    and-int/lit16 v5, v15, 0xff

    aput v5, v3, v9

    .line 31
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x26

    new-array v3, v10, [I

    and-int/2addr v4, v8

    aput v4, v3, v9

    .line 32
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2d

    new-array v3, v10, [I

    shr-int/2addr v0, v14

    and-int/2addr v0, v10

    aput v0, v3, v9

    .line 33
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 34
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    add-int/lit8 v2, p2, 0x6

    .line 35
    aget-byte v2, v0, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 36
    aget-byte v4, v0, v2

    and-int/2addr v4, v3

    invoke-static {v4}, Ll0/c0;->e1(I)I

    move-result v4

    invoke-static {v4}, Lu0/d;->S2(I)V

    .line 37
    aget-byte v2, v0, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 38
    aget-byte v2, v0, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 39
    aget-byte v4, v0, v2

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x4

    .line 40
    aget-byte v7, v0, v5

    and-int/2addr v7, v3

    add-int/lit8 v8, p2, 0x5

    .line 41
    aget-byte v11, v0, v8

    and-int/2addr v11, v3

    if-nez v4, :cond_0

    if-nez v7, :cond_0

    if-nez v11, :cond_0

    .line 42
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 43
    :cond_0
    sget v3, Ll0/c0;->g:I

    if-ne v3, v4, :cond_1

    sget v3, Ll0/c0;->h:I

    if-ne v3, v7, :cond_1

    sget v3, Ll0/c0;->j:I

    if-eq v3, v11, :cond_2

    .line 44
    :cond_1
    sput v4, Ll0/c0;->g:I

    .line 45
    sput v7, Ll0/c0;->h:I

    .line 46
    sput v11, Ll0/c0;->j:I

    .line 47
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_2

    .line 48
    invoke-static {v10}, Lu0/d;->C2(I)V

    .line 49
    sput v6, Ll0/c0;->k:I

    .line 50
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 51
    :cond_2
    :goto_0
    aget-byte v2, v0, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 52
    aget-byte v2, v0, v5

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 53
    aget-byte v2, v0, v5

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 54
    aget-byte v0, v0, v8

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->e1(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    goto/16 :goto_7

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 55
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v0, v0, v3

    const/16 v3, 0x11f8

    invoke-static {v2, v0, v10, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 56
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 57
    aget-byte v3, v0, v3

    const/16 v4, 0xff

    and-int/2addr v2, v4

    shr-int/lit8 v7, v3, 0x4

    and-int/2addr v4, v7

    if-ne v4, v12, :cond_3

    :try_start_0
    new-array v4, v12, [I

    aput v2, v4, v9

    and-int/lit8 v2, v3, 0xf

    aput v2, v4, v10

    .line 58
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x4

    add-int/lit8 v6, p3, -0x6

    const-string v7, "UTF-16LE"

    invoke-direct {v2, v0, v3, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v5, v4, v2}, Lk0/qt;->z0(I[ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_7

    :cond_3
    if-ne v4, v10, :cond_4

    :try_start_1
    new-array v4, v12, [I

    aput v2, v4, v9

    and-int/lit8 v2, v3, 0xf

    aput v2, v4, v10

    .line 60
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x4

    add-int/lit8 v6, p3, -0x6

    const-string v7, "UTF-16BE"

    invoke-direct {v2, v0, v3, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v5, v4, v2}, Lk0/qt;->z0(I[ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_7

    :cond_4
    new-array v4, v12, [I

    aput v2, v4, v9

    and-int/lit8 v2, v3, 0xf

    aput v2, v4, v10

    .line 62
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x4

    add-int/lit8 v6, p3, -0x6

    invoke-direct {v2, v0, v3, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v5, v4, v2}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    goto/16 :goto_7

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 63
    aget-byte v2, v0, v2

    add-int/lit8 v2, p2, 0x3

    .line 64
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x4

    .line 65
    aget-byte v3, v0, v3

    add-int/lit8 v4, p2, 0x5

    .line 66
    aget-byte v4, v0, v4

    add-int/lit8 v5, p2, 0x6

    .line 67
    aget-byte v5, v0, v5

    add-int/lit8 v6, p2, 0x7

    .line 68
    aget-byte v6, v0, v6

    add-int/lit8 v7, p2, 0x8

    .line 69
    aget-byte v7, v0, v7

    add-int/lit8 v8, p2, 0x9

    .line 70
    aget-byte v8, v0, v8

    add-int/lit8 v11, p2, 0xa

    .line 71
    aget-byte v11, v0, v11

    add-int/lit8 v12, p2, 0xb

    .line 72
    aget-byte v12, v0, v12

    add-int/lit8 v14, p2, 0xc

    .line 73
    aget-byte v0, v0, v14

    new-array v14, v10, [I

    const/16 v15, 0xff

    and-int/2addr v2, v15

    aput v2, v14, v9

    .line 74
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    and-int/2addr v3, v15

    aput v3, v2, v9

    const/16 v3, 0xa

    .line 75
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    and-int/lit16 v3, v4, 0xff

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    and-int/2addr v5, v15

    or-int/2addr v3, v5

    aput v3, v2, v9

    const/16 v3, 0xb

    .line 76
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    and-int/lit16 v3, v6, 0xff

    shl-int/2addr v3, v4

    and-int/lit16 v5, v7, 0xff

    or-int/2addr v3, v5

    aput v3, v2, v9

    const/16 v3, 0xc

    .line 77
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    and-int/lit16 v3, v8, 0xff

    shl-int/2addr v3, v4

    and-int/lit16 v5, v11, 0xff

    or-int/2addr v3, v5

    aput v3, v2, v9

    const/16 v3, 0xd

    .line 78
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    and-int/lit16 v3, v12, 0xff

    shl-int/2addr v3, v4

    and-int/2addr v0, v15

    or-int/2addr v0, v3

    aput v0, v2, v9

    const/16 v0, 0xe

    .line 79
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 80
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x5

    .line 81
    aget-byte v3, v0, v3

    add-int/lit8 v4, p2, 0x6

    .line 82
    aget-byte v0, v0, v4

    new-array v4, v10, [I

    const/16 v5, 0xff

    and-int/2addr v2, v5

    aput v2, v4, v9

    .line 83
    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    and-int/2addr v3, v5

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    and-int/2addr v0, v5

    or-int/2addr v0, v3

    aput v0, v2, v9

    .line 84
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 85
    :cond_5
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_6
    move v2, v9

    :goto_1
    if-ge v2, v5, :cond_1d

    new-array v3, v12, [I

    rsub-int/lit8 v4, v2, 0xf

    sub-int/2addr v4, v10

    aput v4, v3, v9

    mul-int/lit8 v6, v2, 0x2

    add-int v6, p2, v6

    add-int/lit8 v8, v6, 0x2

    .line 86
    aget-byte v8, v0, v8

    const/16 v11, 0xff

    and-int/2addr v8, v11

    const/16 v13, 0x8

    shl-int/2addr v8, v13

    add-int/2addr v6, v7

    aget-byte v6, v0, v6

    and-int/2addr v6, v11

    or-int/2addr v6, v8

    aput v6, v3, v10

    const/16 v6, 0x28

    .line 87
    iget-object v8, v1, Lk0/je;->c:[[I

    aget-object v8, v8, v2

    invoke-static {v6, v3, v8}, Lk0/qt;->C0(I[I[I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 88
    iget-object v6, v1, Lk0/je;->c:[[I

    aput-object v3, v6, v4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    const/16 v2, 0x2b

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 89
    aget-byte v4, v0, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    const/16 v6, 0x8

    shl-int/2addr v4, v6

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, v0, v6

    and-int/2addr v6, v5

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xe

    .line 90
    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    const/16 v6, 0x8

    shl-int/2addr v4, v6

    add-int/lit8 v6, p2, 0xf

    aget-byte v6, v0, v6

    and-int/2addr v6, v5

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x10

    .line 91
    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    const/16 v6, 0x8

    shl-int/2addr v4, v6

    add-int/lit8 v6, p2, 0x11

    aget-byte v6, v0, v6

    and-int/2addr v6, v5

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    move v2, v9

    :goto_2
    if-ge v2, v11, :cond_1d

    new-array v3, v12, [I

    aput v2, v3, v9

    mul-int/lit8 v4, v2, 0x2

    add-int v4, p2, v4

    add-int/lit8 v5, v4, 0x4

    .line 92
    aget-byte v5, v0, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    const/16 v7, 0x8

    shl-int/2addr v5, v7

    add-int/2addr v4, v11

    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    or-int/2addr v4, v5

    aput v4, v3, v10

    const/16 v4, 0x29

    .line 93
    iget-object v5, v1, Lk0/je;->b:[[I

    aget-object v5, v5, v2

    invoke-static {v4, v3, v5}, Lk0/qt;->C0(I[I[I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 94
    iget-object v4, v1, Lk0/je;->b:[[I

    aput-object v3, v4, v2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 95
    aget-byte v0, v0, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 96
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_b

    new-array v2, v10, [I

    shr-int/lit8 v3, v0, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 97
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v0, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 98
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    new-array v2, v10, [I

    shr-int/lit8 v3, v0, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 99
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v0, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 100
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array v2, v10, [I

    shr-int/lit8 v3, v0, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 101
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v0, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 102
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v0, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 103
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v0, v12

    and-int/2addr v0, v10

    aput v0, v2, v9

    .line 104
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 105
    :cond_c
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    add-int/lit8 v2, p2, 0x2

    .line 106
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 107
    aget-byte v0, v0, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v5, 0xf1

    if-ne v2, v5, :cond_d

    and-int/2addr v0, v3

    .line 108
    invoke-static {v0}, Ll0/b0;->r0(I)V

    goto/16 :goto_7

    :cond_d
    const/16 v5, 0xf0

    if-ne v2, v5, :cond_e

    and-int/2addr v0, v3

    .line 109
    invoke-static {v0}, Ll0/b0;->s0(I)V

    goto/16 :goto_7

    :cond_e
    const/16 v3, 0xf2

    if-ne v2, v3, :cond_10

    .line 110
    sget v0, Lu0/b;->D:I

    const/16 v3, 0xd

    if-ne v0, v3, :cond_f

    new-array v0, v6, [I

    .line 111
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_7

    :cond_f
    const/16 v0, 0x1f

    .line 112
    invoke-static {v0, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_10
    const/16 v3, 0xd

    const/16 v5, 0xf3

    if-ne v2, v5, :cond_12

    .line 113
    sget v0, Lu0/b;->D:I

    if-ne v0, v3, :cond_11

    new-array v0, v6, [I

    .line 114
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_7

    .line 115
    :cond_11
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 116
    :cond_12
    iput v2, v1, Lk0/je;->e:I

    move v2, v9

    .line 117
    :goto_4
    iget-object v3, v1, Lk0/je;->f:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_14

    .line 118
    iget v4, v1, Lk0/je;->e:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_13

    if-eqz v4, :cond_14

    .line 119
    iput v2, v1, Lk0/je;->d:I

    goto :goto_5

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 120
    :cond_14
    :goto_5
    iget v4, v1, Lk0/je;->e:I

    if-eq v4, v7, :cond_1b

    if-eq v4, v6, :cond_19

    const/16 v4, 0xff

    and-int/2addr v0, v4

    if-eqz v0, :cond_15

    .line 121
    array-length v0, v3

    if-ge v2, v0, :cond_1d

    .line 122
    aget-object v0, v3, v2

    aget v0, v0, v10

    invoke-static {v0, v9}, Ll0/b0;->l0(II)V

    goto :goto_7

    .line 123
    :cond_15
    iget v0, v1, Lk0/je;->d:I

    array-length v2, v3

    if-ge v0, v2, :cond_16

    move v2, v10

    goto :goto_6

    :cond_16
    move v2, v9

    :goto_6
    const/16 v4, 0xff

    if-eq v0, v4, :cond_17

    move v9, v10

    :cond_17
    and-int/2addr v2, v9

    if-eqz v2, :cond_18

    .line 124
    aget-object v0, v3, v0

    aget v0, v0, v10

    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 125
    :cond_18
    iput v4, v1, Lk0/je;->d:I

    goto :goto_7

    :cond_19
    const/16 v4, 0xff

    and-int/2addr v0, v4

    if-ne v0, v10, :cond_1d

    .line 126
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1a

    new-array v0, v6, [I

    .line 127
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_7

    .line 128
    :cond_1a
    invoke-static {v7, v9}, Ll0/b0;->l0(II)V

    .line 129
    invoke-static {v7, v10}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_1b
    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v10, :cond_1d

    .line 130
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1c

    new-array v0, v6, [I

    .line 131
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_7

    .line 132
    :cond_1c
    invoke-static {v6, v9}, Ll0/b0;->l0(II)V

    .line 133
    invoke-static {v6, v10}, Ll0/b0;->l0(II)V

    :cond_1d
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x82
        0x1
        0x4
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x82
        0x1
        0x5
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x82
        0x1
        0x5
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x82
        0x1
        0x4
    .end array-data
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_2

    const/16 p3, 0x2f

    if-ge p2, p3, :cond_2

    const/16 p3, 0x28

    const/4 v0, 0x0

    if-eq p2, p3, :cond_1

    const/16 p3, 0x29

    if-eq p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p3, 0x5

    if-ge v0, p3, :cond_2

    .line 2
    iget-object p3, p0, Lk0/je;->b:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 p3, 0xf

    if-ge v0, p3, :cond_2

    .line 3
    iget-object p3, p0, Lk0/je;->c:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 4

    const/4 p3, 0x3

    const/16 p4, 0xe3

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v2}, Lk0/je;->a3([II)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    new-array p1, p1, [I

    aput p4, p1, v1

    const/16 p4, 0x84

    aput p4, p1, v3

    aput v2, p1, v2

    .line 2
    aget p4, p2, v1

    aput p4, p1, p3

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p2, v3}, Lk0/je;->a3([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v0, [I

    aput p4, p1, v1

    const/16 p4, 0x82

    aput p4, p1, v3

    aput v3, p1, v2

    .line 4
    aget p2, p2, v1

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a3([II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

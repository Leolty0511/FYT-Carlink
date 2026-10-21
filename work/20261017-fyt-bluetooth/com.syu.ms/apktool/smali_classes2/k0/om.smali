.class public Lk0/om;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/om;->c:I

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

    iput-object v2, p0, Lk0/om;->d:[[I

    .line 4
    iput v0, p0, Lk0/om;->f:I

    const/16 v2, 0x1d

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

    new-array v0, v3, [I

    fill-array-data v0, :array_18

    const/16 v1, 0x10

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_19

    const/16 v1, 0x11

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1a

    const/16 v1, 0x12

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1b

    const/16 v1, 0x13

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1c

    const/16 v1, 0x14

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1d

    const/16 v1, 0x15

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1e

    const/16 v1, 0x16

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1f

    const/16 v1, 0x17

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_20

    const/16 v1, 0x18

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_21

    const/16 v1, 0x19

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_22

    const/16 v1, 0x1a

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_23

    const/16 v1, 0x1b

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_24

    const/16 v1, 0x1c

    aput-object v0, v2, v1

    iput-object v2, p0, Lk0/om;->g:[[I

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
        0x1
        0x19
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x36
    .end array-data

    :array_a
    .array-data 4
        0x3
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x4
        0x5
    .end array-data

    :array_c
    .array-data 4
        0x5
        0x15
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x43
    .end array-data

    :array_e
    .array-data 4
        0x7
        0x44
    .end array-data

    :array_f
    .array-data 4
        0x8
        0x37
    .end array-data

    :array_10
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_11
    .array-data 4
        0xa
        0x1
    .end array-data

    :array_12
    .array-data 4
        0xb
        0x1d
    .end array-data

    :array_13
    .array-data 4
        0xd
        0x12
    .end array-data

    :array_14
    .array-data 4
        0xe
        0x1a
    .end array-data

    :array_15
    .array-data 4
        0x10
        0x7
    .end array-data

    :array_16
    .array-data 4
        0x11
        0x8
    .end array-data

    :array_17
    .array-data 4
        0x12
        0x1f
    .end array-data

    :array_18
    .array-data 4
        0x13
        0x1e
    .end array-data

    :array_19
    .array-data 4
        0x21
        0x28
    .end array-data

    :array_1a
    .array-data 4
        0x22
        0x29
    .end array-data

    :array_1b
    .array-data 4
        0x23
        0x2a
    .end array-data

    :array_1c
    .array-data 4
        0x24
        0x2b
    .end array-data

    :array_1d
    .array-data 4
        0x25
        0x2c
    .end array-data

    :array_1e
    .array-data 4
        0x26
        0x2d
    .end array-data

    :array_1f
    .array-data 4
        0x27
        0x26
    .end array-data

    :array_20
    .array-data 4
        0x28
        0x40
    .end array-data

    :array_21
    .array-data 4
        0x29
        0x12
    .end array-data

    :array_22
    .array-data 4
        0x2a
        0xd
    .end array-data

    :array_23
    .array-data 4
        0x2b
        0x4
    .end array-data

    :array_24
    .array-data 4
        0x2c
        0x3
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
    sget v0, Lk0/nt;->a:I

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lk0/om;->h:I

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x26

    const/4 v5, 0x0

    if-eq v2, v3, :cond_17

    const/16 v3, 0x30

    const/4 v6, 0x2

    if-eq v2, v3, :cond_16

    const/16 v3, 0x41

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eq v2, v3, :cond_13

    const/16 v10, 0x50

    const/16 v11, 0xff

    if-eq v2, v10, :cond_e

    const/16 v10, 0x7d

    const/16 v12, 0xb

    if-eq v2, v10, :cond_c

    const/16 v6, 0x12

    const/16 v10, 0x1a

    const/16 v13, 0xd

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    .line 2
    :pswitch_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_18

    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    add-int/lit8 v4, p2, 0x3

    .line 4
    aget-byte v6, v1, v4

    and-int/2addr v6, v11

    add-int/lit8 v10, p2, 0x4

    .line 5
    aget-byte v12, v1, v10

    and-int/2addr v12, v11

    add-int/lit8 v7, p2, 0x5

    .line 6
    aget-byte v13, v1, v7

    and-int/2addr v13, v11

    if-nez v3, :cond_0

    if-nez v6, :cond_0

    if-nez v12, :cond_0

    if-nez v13, :cond_0

    .line 7
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 8
    :cond_0
    sget v5, Ll0/c0;->g:I

    if-ne v5, v3, :cond_1

    sget v5, Ll0/c0;->h:I

    if-ne v5, v6, :cond_1

    sget v5, Ll0/c0;->i:I

    if-ne v5, v12, :cond_1

    sget v5, Ll0/c0;->j:I

    if-eq v5, v13, :cond_2

    .line 9
    :cond_1
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_2

    .line 10
    invoke-static {v9}, Lu0/d;->C2(I)V

    .line 11
    sput v8, Ll0/c0;->k:I

    .line 12
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 13
    :cond_2
    :goto_0
    sput v3, Ll0/c0;->g:I

    .line 14
    sput v6, Ll0/c0;->h:I

    .line 15
    sput v12, Ll0/c0;->i:I

    .line 16
    sput v13, Ll0/c0;->j:I

    .line 17
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 18
    aget-byte v2, v1, v4

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 19
    aget-byte v2, v1, v10

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 20
    aget-byte v1, v1, v7

    and-int/2addr v1, v11

    invoke-static {v1}, Ll0/c0;->K1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_6

    .line 21
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_18

    add-int/lit8 v2, p2, 0x2

    .line 22
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 23
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 24
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 25
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    invoke-static {v1}, Ll0/c0;->K1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_6

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 26
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    add-int/lit8 v7, p2, 0x3

    .line 27
    aget-byte v7, v1, v7

    and-int/2addr v7, v11

    add-int/lit8 v8, p2, 0x4

    .line 28
    aget-byte v8, v1, v8

    and-int/2addr v8, v11

    add-int/lit8 v14, p2, 0x5

    .line 29
    aget-byte v14, v1, v14

    and-int/2addr v14, v11

    add-int/lit8 v15, p2, 0x6

    .line 30
    aget-byte v1, v1, v15

    and-int/2addr v1, v11

    const/16 v15, 0xa

    new-array v4, v9, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v5

    .line 31
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v9, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v9

    aput v15, v4, v5

    .line 32
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xc

    new-array v12, v9, [I

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v9

    aput v15, v12, v5

    .line 33
    invoke-static {v4, v12}, Lk0/qt;->y0(I[I)V

    new-array v4, v9, [I

    shr-int/lit8 v12, v2, 0x4

    and-int/2addr v12, v9

    aput v12, v4, v5

    .line 34
    invoke-static {v13, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v9, [I

    shr-int/lit8 v12, v2, 0x3

    and-int/2addr v12, v9

    aput v12, v4, v5

    .line 35
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xe

    new-array v10, v9, [I

    shr-int/lit8 v12, v2, 0x2

    and-int/2addr v12, v9

    aput v12, v10, v5

    .line 36
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    new-array v4, v9, [I

    shr-int/lit8 v10, v2, 0x1

    and-int/2addr v10, v9

    aput v10, v4, v5

    .line 37
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x10

    new-array v4, v9, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v9

    aput v2, v4, v5

    .line 38
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v7, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v5

    .line 39
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v9, [I

    shr-int/lit8 v4, v7, 0x6

    and-int/2addr v4, v9

    aput v4, v3, v5

    .line 40
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v9, [I

    shr-int/lit8 v4, v7, 0x5

    and-int/2addr v4, v9

    aput v4, v3, v5

    .line 41
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v9, [I

    and-int/lit8 v4, v7, 0xf

    aput v4, v3, v5

    .line 42
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 43
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v3, 0x1c

    const/16 v4, 0x1b

    if-eqz v2, :cond_3

    new-array v2, v9, [I

    and-int/lit16 v6, v14, 0xff

    aput v6, v2, v5

    .line 44
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    and-int/lit16 v4, v8, 0xff

    aput v4, v2, v5

    .line 45
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    new-array v2, v9, [I

    and-int/lit16 v6, v8, 0xff

    aput v6, v2, v5

    .line 46
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    and-int/lit16 v4, v14, 0xff

    aput v4, v2, v5

    .line 47
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v2, 0x1d

    new-array v3, v9, [I

    shr-int/lit8 v4, v1, 0x4

    const/4 v12, 0x3

    and-int/2addr v4, v12

    aput v4, v3, v5

    .line 48
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v9, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v12

    aput v1, v3, v5

    .line 49
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :pswitch_3
    const/4 v12, 0x3

    add-int/lit8 v2, p2, 0x2

    .line 50
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 51
    aget-byte v1, v1, v3

    and-int/2addr v2, v11

    .line 52
    iput v2, v0, Lk0/om;->c:I

    move v2, v5

    .line 53
    :goto_2
    iget-object v3, v0, Lk0/om;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 54
    iget v4, v0, Lk0/om;->c:I

    aget-object v12, v3, v2

    aget v12, v12, v5

    if-ne v4, v12, :cond_4

    if-eqz v4, :cond_5

    .line 55
    iput v2, v0, Lk0/om;->b:I

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 56
    :cond_5
    :goto_3
    iget v4, v0, Lk0/om;->c:I

    if-eq v4, v8, :cond_a

    const/16 v7, 0x8

    if-eq v4, v7, :cond_8

    and-int/2addr v1, v11

    if-ne v1, v9, :cond_6

    .line 57
    array-length v1, v3

    if-ge v2, v1, :cond_18

    .line 58
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_6
    if-nez v1, :cond_18

    .line 59
    iget v1, v0, Lk0/om;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_7

    if-eq v1, v11, :cond_7

    .line 60
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 61
    :cond_7
    iput v11, v0, Lk0/om;->b:I

    goto/16 :goto_6

    :cond_8
    and-int/2addr v1, v11

    if-ne v1, v9, :cond_18

    .line 62
    sget v1, Lh0/c;->E:I

    if-eq v1, v8, :cond_9

    .line 63
    invoke-static {v13, v5}, Ll0/b0;->l0(II)V

    .line 64
    invoke-static {v13, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    .line 65
    :cond_9
    invoke-static {v6, v5}, Ll0/b0;->l0(II)V

    .line 66
    invoke-static {v6, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_a
    and-int/2addr v1, v11

    if-ne v1, v9, :cond_18

    .line 67
    sget v1, Lh0/c;->E:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    if-eq v1, v8, :cond_b

    if-eq v1, v7, :cond_b

    .line 68
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    .line 69
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    .line 70
    :cond_b
    invoke-static {v10, v5}, Ll0/b0;->l0(II)V

    .line 71
    invoke-static {v10, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 72
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    if-eq v2, v9, :cond_d

    goto/16 :goto_6

    :cond_d
    const/4 v2, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 73
    aget-byte v4, v1, v3

    shr-int/lit8 v2, v4, 0x3

    and-int/2addr v2, v9

    aget-byte v4, v1, v3

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    invoke-static {v2, v4, v5}, Ll0/c0;->a(III)V

    .line 74
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    new-array v6, v6, [I

    aput v12, v6, v5

    aget-byte v1, v1, v3

    and-int/2addr v1, v11

    aput v1, v6, v9

    const/4 v1, 0x0

    invoke-static {v2, v4, v6, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_e
    add-int/lit8 v2, p2, 0x2

    .line 75
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 76
    aget-byte v1, v1, v3

    and-int/2addr v2, v11

    .line 77
    iput v2, v0, Lk0/om;->f:I

    move v2, v5

    .line 78
    :goto_4
    iget-object v3, v0, Lk0/om;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_10

    .line 79
    iget v4, v0, Lk0/om;->f:I

    aget-object v6, v3, v2

    aget v6, v6, v5

    if-ne v4, v6, :cond_f

    if-eqz v4, :cond_10

    .line 80
    iput v2, v0, Lk0/om;->e:I

    goto :goto_5

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    :goto_5
    and-int/2addr v1, v11

    if-ne v1, v9, :cond_11

    .line 81
    array-length v1, v3

    if-ge v2, v1, :cond_18

    .line 82
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_11
    if-nez v1, :cond_18

    .line 83
    iget v1, v0, Lk0/om;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_12

    if-eq v1, v11, :cond_12

    .line 84
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 85
    :cond_12
    iput v11, v0, Lk0/om;->e:I

    goto/16 :goto_6

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 86
    aget-byte v2, v1, v2

    if-eq v2, v9, :cond_14

    goto :goto_6

    :cond_14
    const/4 v2, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 87
    aget-byte v1, v1, v3

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v5

    .line 88
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v9

    aput v3, v2, v5

    .line 89
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v9

    aput v3, v2, v5

    const/4 v3, 0x3

    .line 90
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.syu.reversefrontdoor"

    .line 91
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_15

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v9

    aput v3, v2, v5

    .line 92
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v9

    aput v1, v2, v5

    .line 93
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_15
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v9

    aput v3, v2, v5

    .line 94
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v9

    aput v1, v2, v5

    .line 95
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    .line 96
    :cond_16
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_6

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 97
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 98
    aget-byte v1, v1, v3

    const/16 v3, 0x30c

    .line 99
    invoke-static {v2, v1, v5, v3}, Lk0/qt;->i(IIZI)V

    :cond_18
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x20
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
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1
    invoke-static {p2, p1}, Lk0/qt;->l0([II)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x5

    new-array p3, p3, [I

    const/16 p4, 0xe3

    const/4 v0, 0x0

    aput p4, p3, v0

    const/16 p4, 0x95

    const/4 v1, 0x1

    aput p4, p3, v1

    aput p1, p3, p1

    const/4 p1, 0x3

    .line 2
    aget p4, p2, v0

    aput p4, p3, p1

    const/4 p1, 0x4

    aget p2, p2, v1

    aput p2, p3, p1

    invoke-static {p3}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

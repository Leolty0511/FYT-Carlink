.class public Lk0/lm;
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
    iput v0, p0, Lk0/lm;->c:I

    const/16 v1, 0x1f

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

    const/16 v3, 0x1a

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1b

    const/16 v3, 0x1b

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1c

    const/16 v3, 0x1c

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1d

    const/16 v3, 0x1d

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1e

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/lm;->d:[[I

    .line 4
    new-instance v0, Lk0/lm$a;

    invoke-direct {v0, p0}, Lk0/lm$a;-><init>(Lk0/lm;)V

    iput-object v0, p0, Lk0/lm;->e:Ljava/lang/Runnable;

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
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x28
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x29
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x2a
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x2b
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x2c
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x2d
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x2e
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x2f
    .end array-data

    :array_11
    .array-data 4
        0x29
        0x1e
    .end array-data

    :array_12
    .array-data 4
        0x2a
        0x1f
    .end array-data

    :array_13
    .array-data 4
        0x2b
        0x20
    .end array-data

    :array_14
    .array-data 4
        0x2c
        0x21
    .end array-data

    :array_15
    .array-data 4
        0x2d
        0x22
    .end array-data

    :array_16
    .array-data 4
        0x2e
        0x23
    .end array-data

    :array_17
    .array-data 4
        0x2f
        0x1d
    .end array-data

    :array_18
    .array-data 4
        0x30
        0x36
    .end array-data

    :array_19
    .array-data 4
        0x31
        0x18
    .end array-data

    :array_1a
    .array-data 4
        0x32
        0x5
    .end array-data

    :array_1b
    .array-data 4
        0x33
        0x12
    .end array-data

    :array_1c
    .array-data 4
        0x34
        0x1
    .end array-data

    :array_1d
    .array-data 4
        0x35
        0x6
    .end array-data

    :array_1e
    .array-data 4
        0x46
        0x37
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

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->h:I

    .line 7
    iget-object v0, p0, Lk0/lm;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 15

    move-object v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v3, :cond_1a

    const/4 v7, 0x4

    if-eq v1, v7, :cond_19

    const/16 v8, 0x29

    if-eq v1, v8, :cond_18

    const/16 v9, 0x40

    if-eq v1, v9, :cond_17

    const/16 v9, 0x7d

    const/16 v10, 0xb

    const/4 v11, 0x2

    if-eq v1, v9, :cond_15

    const/16 v9, 0x1e

    const/16 v12, 0x1f

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    and-int/lit8 v4, v1, 0x1

    if-ne v4, v6, :cond_1d

    const-string v4, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    new-array v4, v6, [I

    shr-int/lit8 v8, v1, 0x6

    and-int/2addr v8, v6

    aput v8, v4, v5

    .line 4
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v6, [I

    shr-int/lit8 v8, v1, 0x7

    and-int/2addr v8, v6

    aput v8, v4, v5

    .line 5
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v4, v6, [I

    shr-int/lit8 v8, v1, 0x7

    and-int/2addr v8, v6

    aput v8, v4, v5

    .line 6
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v6, [I

    shr-int/lit8 v8, v1, 0x6

    and-int/2addr v8, v6

    aput v8, v4, v5

    .line 7
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v4, v6, [I

    shr-int/lit8 v8, v1, 0x4

    and-int/2addr v8, v6

    aput v8, v4, v5

    .line 8
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v6, [I

    shr-int/lit8 v8, v1, 0x5

    and-int/2addr v8, v6

    aput v8, v4, v5

    .line 9
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v6, [I

    shr-int/2addr v1, v3

    and-int/2addr v1, v6

    aput v1, v4, v5

    .line 10
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_1
    add-int/lit8 v1, p2, 0x2

    .line 11
    aget-byte v3, p1, v1

    and-int/2addr v3, v4

    add-int/lit8 v8, p2, 0x3

    .line 12
    aget-byte v9, p1, v8

    and-int/2addr v9, v4

    add-int/lit8 v10, p2, 0x4

    .line 13
    aget-byte v11, p1, v10

    and-int/2addr v11, v4

    add-int/lit8 v2, p2, 0x5

    .line 14
    aget-byte v12, p1, v2

    and-int/2addr v12, v4

    if-nez v3, :cond_1

    if-nez v9, :cond_1

    if-nez v11, :cond_1

    if-nez v12, :cond_1

    .line 15
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 16
    :cond_1
    sget v5, Ll0/c0;->g:I

    if-ne v5, v3, :cond_2

    sget v5, Ll0/c0;->h:I

    if-ne v5, v9, :cond_2

    sget v5, Ll0/c0;->i:I

    if-ne v5, v11, :cond_2

    sget v5, Ll0/c0;->j:I

    if-eq v5, v12, :cond_3

    .line 17
    :cond_2
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_3

    .line 18
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 19
    sput v7, Ll0/c0;->k:I

    .line 20
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 21
    :cond_3
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 22
    sput v9, Ll0/c0;->h:I

    .line 23
    sput v11, Ll0/c0;->i:I

    .line 24
    sput v12, Ll0/c0;->j:I

    .line 25
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->D2(I)V

    .line 26
    aget-byte v1, p1, v8

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->E2(I)V

    .line 27
    aget-byte v1, p1, v10

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->F2(I)V

    .line 28
    aget-byte v1, p1, v2

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_b

    :pswitch_2
    add-int/lit8 v1, p2, 0x2

    .line 29
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->R2(I)V

    add-int/lit8 v1, p2, 0x3

    .line 30
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->S2(I)V

    add-int/lit8 v1, p2, 0x4

    .line 31
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->T2(I)V

    add-int/lit8 v1, p2, 0x5

    .line 32
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_b

    :pswitch_3
    const/16 v1, 0xa

    new-array v8, v6, [I

    add-int/lit8 v13, p2, 0x2

    .line 33
    aget-byte v14, p1, v13

    shr-int/lit8 v14, v14, 0x7

    and-int/2addr v14, v6

    aput v14, v8, v5

    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    .line 34
    aget-byte v8, p1, v13

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v6

    aput v8, v1, v5

    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v8, v6, [I

    .line 35
    aget-byte v10, p1, v13

    shr-int/2addr v10, v2

    and-int/2addr v10, v6

    aput v10, v8, v5

    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v8, v6, [I

    .line 36
    aget-byte v10, p1, v13

    shr-int/2addr v10, v7

    and-int/2addr v10, v6

    aput v10, v8, v5

    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v8, v6, [I

    .line 37
    aget-byte v10, p1, v13

    shr-int/lit8 v3, v10, 0x3

    and-int/2addr v3, v6

    aput v3, v8, v5

    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v3, v6, [I

    .line 38
    aget-byte v8, p1, v13

    shr-int/2addr v8, v11

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v3, v6, [I

    .line 39
    aget-byte v8, p1, v13

    shr-int/2addr v8, v6

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x12

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x3

    .line 40
    aget-byte v10, p1, v8

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v6

    aput v10, v3, v5

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v3, v6, [I

    .line 41
    aget-byte v10, p1, v8

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v6

    aput v10, v3, v5

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v3, v6, [I

    .line 42
    aget-byte v10, p1, v8

    shr-int/lit8 v2, v10, 0x5

    and-int/2addr v2, v6

    aput v2, v3, v5

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v2, v6, [I

    .line 43
    aget-byte v3, p1, v8

    and-int/lit8 v3, v3, 0xf

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const-string v1, "persist.fyt.reversetemp"

    .line 44
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, -0x3

    const/4 v3, -0x2

    const/16 v8, 0x1c

    const/16 v10, 0x1b

    if-eqz v1, :cond_8

    add-int/lit8 v1, p2, 0x5

    .line 45
    aget-byte v11, p1, v1

    and-int/2addr v11, v4

    if-nez v11, :cond_4

    new-array v1, v6, [I

    aput v3, v1, v5

    .line 46
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    .line 47
    :cond_4
    aget-byte v11, p1, v1

    and-int/2addr v11, v4

    if-ne v11, v12, :cond_5

    new-array v1, v6, [I

    aput v2, v1, v5

    .line 48
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v11, v6, [I

    .line 49
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, v11, v5

    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    :goto_2
    add-int/lit8 v1, p2, 0x6

    .line 50
    aget-byte v8, p1, v1

    and-int/2addr v8, v4

    if-nez v8, :cond_6

    new-array v1, v6, [I

    aput v3, v1, v5

    .line 51
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    .line 52
    :cond_6
    aget-byte v3, p1, v1

    and-int/2addr v3, v4

    if-ne v3, v12, :cond_7

    new-array v1, v6, [I

    aput v2, v1, v5

    .line 53
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_7
    new-array v2, v6, [I

    .line 54
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, v2, v5

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_8
    add-int/lit8 v1, p2, 0x5

    .line 55
    aget-byte v11, p1, v1

    and-int/2addr v11, v4

    if-nez v11, :cond_9

    new-array v1, v6, [I

    aput v3, v1, v5

    .line 56
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    .line 57
    :cond_9
    aget-byte v11, p1, v1

    and-int/2addr v11, v4

    if-ne v11, v12, :cond_a

    new-array v1, v6, [I

    aput v2, v1, v5

    .line 58
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v11, v6, [I

    .line 59
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, v11, v5

    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 v1, p2, 0x6

    .line 60
    aget-byte v10, p1, v1

    and-int/2addr v10, v4

    if-nez v10, :cond_b

    new-array v1, v6, [I

    aput v3, v1, v5

    .line 61
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    .line 62
    :cond_b
    aget-byte v3, p1, v1

    and-int/2addr v3, v4

    if-ne v3, v12, :cond_c

    new-array v1, v6, [I

    aput v2, v1, v5

    .line 63
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    new-array v2, v6, [I

    .line 64
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, v2, v5

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v1, 0x1d

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x7

    .line 65
    aget-byte v4, p1, v3

    shr-int/2addr v4, v7

    and-int/lit8 v4, v4, 0x7

    aput v4, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    .line 66
    aget-byte v2, p1, v3

    shr-int/2addr v2, v5

    and-int/lit8 v2, v2, 0x7

    aput v2, v1, v5

    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_4
    add-int/lit8 v1, p2, 0x2

    .line 67
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 68
    aget-byte v2, p1, v2

    and-int/2addr v1, v4

    .line 69
    iput v1, v0, Lk0/lm;->c:I

    move v1, v5

    .line 70
    :goto_5
    iget-object v3, v0, Lk0/lm;->d:[[I

    array-length v7, v3

    if-ge v1, v7, :cond_e

    .line 71
    iget v7, v0, Lk0/lm;->c:I

    aget-object v10, v3, v1

    aget v10, v10, v5

    if-ne v7, v10, :cond_d

    if-eqz v7, :cond_e

    .line 72
    iput v1, v0, Lk0/lm;->b:I

    goto :goto_6

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 73
    :cond_e
    :goto_6
    iget v7, v0, Lk0/lm;->c:I

    if-eq v7, v8, :cond_13

    const/16 v8, 0x2a

    if-eq v7, v8, :cond_11

    and-int/2addr v2, v4

    if-ne v2, v6, :cond_f

    .line 74
    array-length v2, v3

    if-ge v1, v2, :cond_1d

    .line 75
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_f
    if-nez v2, :cond_1d

    .line 76
    iget v1, v0, Lk0/lm;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_10

    if-eq v1, v4, :cond_10

    .line 77
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 78
    :cond_10
    iput v4, v0, Lk0/lm;->b:I

    goto/16 :goto_b

    :cond_11
    move v1, v5

    :goto_7
    and-int/lit16 v3, v2, 0xff

    if-ge v1, v3, :cond_12

    .line 79
    invoke-static {v12, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 80
    :cond_12
    invoke-static {v12, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_13
    move v1, v5

    :goto_8
    and-int/lit16 v3, v2, 0xff

    if-ge v1, v3, :cond_14

    .line 81
    invoke-static {v9, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 82
    :cond_14
    invoke-static {v9, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_15
    add-int/lit8 v1, p2, 0x2

    .line 83
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    if-eq v1, v6, :cond_16

    goto/16 :goto_b

    :cond_16
    add-int/lit8 v1, p2, 0x3

    .line 84
    aget-byte v2, p1, v1

    shr-int/2addr v2, v3

    and-int/2addr v2, v6

    aget-byte v3, p1, v1

    shr-int/2addr v3, v7

    and-int/2addr v3, v6

    invoke-static {v2, v3, v5}, Ll0/c0;->a(III)V

    .line 85
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v7, v11, [I

    aput v10, v7, v5

    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, v7, v6

    const/4 v1, 0x0

    invoke-static {v2, v3, v7, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_17
    const/16 v1, 0x6b

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x2

    .line 86
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6c

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x3

    .line 87
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6d

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x4

    .line 88
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6e

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x5

    .line 89
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6f

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x6

    .line 90
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x70

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x7

    .line 91
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x71

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x8

    .line 92
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x72

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x9

    .line 93
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_18
    add-int/lit8 v1, p2, 0x2

    .line 94
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    const/16 v3, 0x1518

    invoke-static {v1, v2, v6, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_b

    :cond_19
    const/16 v1, 0x66

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x2

    .line 95
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x67

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x3

    .line 96
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x68

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x4

    .line 97
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x69

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x5

    .line 98
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6a

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x6

    .line 99
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x73

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x7

    .line 100
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1a
    add-int/lit8 v1, p2, 0x2

    .line 101
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v3, 0xff00

    and-int/2addr v1, v3

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, p1, v7

    and-int/2addr v7, v4

    or-int/2addr v1, v7

    const v7, 0x8000

    and-int/2addr v7, v1

    if-eqz v7, :cond_1b

    const/high16 v7, 0x10000

    sub-int v1, v7, v1

    move v7, v6

    goto :goto_9

    :cond_1b
    move v7, v5

    :goto_9
    if-ne v7, v6, :cond_1c

    mul-int/2addr v1, v2

    rsub-int v1, v1, 0x3e8

    goto :goto_a

    :cond_1c
    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x3e8

    .line 102
    :goto_a
    invoke-static {v1}, Lu0/d;->A3(I)V

    const/16 v1, 0x63

    new-array v2, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 103
    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v3

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, p1, v8

    and-int/2addr v8, v4

    or-int/2addr v7, v8

    aput v7, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x64

    new-array v2, v6, [I

    add-int/lit8 v7, p2, 0x6

    .line 104
    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v3

    add-int/lit8 v8, p2, 0x7

    aget-byte v8, p1, v8

    and-int/2addr v8, v4

    or-int/2addr v7, v8

    aput v7, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x65

    new-array v2, v6, [I

    add-int/lit8 v6, p2, 0x8

    .line 105
    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v3, v6

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, p1, v6

    and-int/2addr v4, v6

    or-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :cond_1d
    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
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

    .line 3
    iget-object v0, p0, Lk0/lm;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x74

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

    const/16 p3, 0xe3

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    new-array p1, p1, [I

    aput p3, p1, v3

    const/16 p3, 0x82

    aput p3, p1, v4

    aput v1, p1, v2

    .line 1
    aget p3, p2, v3

    aput p3, p1, v0

    aget p3, p2, v4

    aput p3, p1, p4

    aget p3, p2, v2

    aput p3, p1, v1

    const/4 p3, 0x6

    aget v0, p2, v0

    aput v0, p1, p3

    const/4 p3, 0x7

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput p3, p1, v3

    const/16 p3, 0xc0

    aput p3, p1, v4

    aput v2, p1, v2

    .line 2
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

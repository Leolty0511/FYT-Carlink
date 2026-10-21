.class public Lk0/tg;
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
    .locals 10

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/tg;->c:I

    const/4 v1, 0x7

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

    iput-object v2, p0, Lk0/tg;->d:[[I

    .line 4
    iput v0, p0, Lk0/tg;->f:I

    const/16 v2, 0x1c

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_7

    aput-object v4, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_8

    aput-object v0, v2, v5

    new-array v0, v3, [I

    fill-array-data v0, :array_9

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_a

    aput-object v0, v2, v6

    new-array v0, v3, [I

    fill-array-data v0, :array_b

    aput-object v0, v2, v7

    new-array v0, v3, [I

    fill-array-data v0, :array_c

    aput-object v0, v2, v8

    new-array v0, v3, [I

    fill-array-data v0, :array_d

    aput-object v0, v2, v9

    new-array v0, v3, [I

    fill-array-data v0, :array_e

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_f

    const/16 v1, 0x8

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_10

    const/16 v1, 0x9

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_11

    const/16 v1, 0xa

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_12

    const/16 v1, 0xb

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_13

    const/16 v1, 0xc

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_14

    const/16 v1, 0xd

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_15

    const/16 v1, 0xe

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_16

    const/16 v1, 0xf

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_17

    const/16 v1, 0x10

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_18

    const/16 v1, 0x11

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_19

    const/16 v1, 0x12

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1a

    const/16 v1, 0x13

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1b

    const/16 v1, 0x14

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1c

    const/16 v1, 0x15

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1d

    const/16 v1, 0x16

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1e

    const/16 v1, 0x17

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1f

    const/16 v1, 0x18

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_20

    const/16 v1, 0x19

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_21

    const/16 v1, 0x1a

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_22

    const/16 v1, 0x1b

    aput-object v0, v2, v1

    iput-object v2, p0, Lk0/tg;->g:[[I

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
        0x6
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x36
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x28
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x29
    .end array-data

    :array_a
    .array-data 4
        0x4
        0x2a
    .end array-data

    :array_b
    .array-data 4
        0x5
        0x2b
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x2c
    .end array-data

    :array_d
    .array-data 4
        0x7
        0x2d
    .end array-data

    :array_e
    .array-data 4
        0x8
        0x3a
    .end array-data

    :array_f
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_10
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_11
    .array-data 4
        0xb
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0xc
        0x1d
    .end array-data

    :array_13
    .array-data 4
        0xd
        0xc
    .end array-data

    :array_14
    .array-data 4
        0xe
        0x3
    .end array-data

    :array_15
    .array-data 4
        0xf
        0x4
    .end array-data

    :array_16
    .array-data 4
        0x10
        -0x1
    .end array-data

    :array_17
    .array-data 4
        0x11
        0x6
    .end array-data

    :array_18
    .array-data 4
        0x12
        0x38
    .end array-data

    :array_19
    .array-data 4
        0x13
        0x6
    .end array-data

    :array_1a
    .array-data 4
        0x14
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x15
        -0x1
    .end array-data

    :array_1c
    .array-data 4
        0x16
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x17
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x18
        0x9
    .end array-data

    :array_1f
    .array-data 4
        0x30
        0x7
    .end array-data

    :array_20
    .array-data 4
        0x31
        0x8
    .end array-data

    :array_21
    .array-data 4
        0x32
        0x1f
    .end array-data

    :array_22
    .array-data 4
        0x33
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

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lk0/mt;->j:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    iput v2, v0, Lk0/mt;->b:I

    .line 9
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

    const/4 v3, 0x3

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1a

    const/4 v8, 0x7

    const/4 v9, 0x2

    if-eq v2, v9, :cond_10

    const/16 v10, 0x24

    if-eq v2, v3, :cond_7

    const/4 v7, 0x6

    const/4 v11, 0x4

    const/4 v12, 0x5

    if-eq v2, v12, :cond_6

    if-eq v2, v7, :cond_5

    const/16 v7, 0x22

    if-eq v2, v7, :cond_4

    if-eq v2, v10, :cond_2

    const/16 v4, 0x26

    if-eq v2, v4, :cond_1

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    goto/16 :goto_10

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x1f4

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_10

    :cond_2
    add-int/lit8 v2, p2, 0x3

    .line 4
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    const-string v2, "persist.syu.reversefrontdoor"

    .line 5
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 6
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 7
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 8
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 9
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 10
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 11
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 12
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 13
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_4
    add-int/lit8 v2, p2, 0x2

    .line 14
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 15
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 16
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 17
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->Q0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_10

    :cond_5
    const/16 v2, 0x68

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 18
    aget-byte v10, v1, v7

    shr-int/2addr v10, v8

    and-int/2addr v10, v6

    aput v10, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v4, v6, [I

    .line 19
    aget-byte v10, v1, v7

    shr-int/2addr v10, v12

    and-int/2addr v10, v3

    aput v10, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v4, v6, [I

    .line 20
    aget-byte v10, v1, v7

    shr-int/2addr v10, v11

    and-int/2addr v10, v6

    aput v10, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v4, v6, [I

    .line 21
    aget-byte v10, v1, v7

    shr-int/2addr v10, v3

    and-int/2addr v10, v6

    aput v10, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v4, v6, [I

    .line 22
    aget-byte v10, v1, v7

    shr-int/2addr v10, v6

    and-int/2addr v10, v3

    aput v10, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v4, v6, [I

    .line 23
    aget-byte v7, v1, v7

    shr-int/2addr v7, v5

    and-int/2addr v7, v6

    aput v7, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 24
    aget-byte v10, v1, v7

    shr-int/lit8 v8, v10, 0x7

    and-int/2addr v8, v6

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v6, [I

    .line 25
    aget-byte v8, v1, v7

    shr-int/2addr v8, v12

    and-int/2addr v8, v3

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v4, v6, [I

    .line 26
    aget-byte v8, v1, v7

    shr-int/2addr v8, v11

    and-int/2addr v8, v6

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v6, [I

    .line 27
    aget-byte v8, v1, v7

    shr-int/lit8 v3, v8, 0x3

    and-int/2addr v3, v6

    aput v3, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v6, [I

    .line 28
    aget-byte v4, v1, v7

    shr-int/2addr v4, v9

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v6, [I

    .line 29
    aget-byte v4, v1, v7

    shr-int/2addr v4, v6

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v6, [I

    .line 30
    aget-byte v1, v1, v7

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_6
    const/16 v2, 0x63

    new-array v4, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 31
    aget-byte v10, v1, v8

    shr-int/lit8 v7, v10, 0x6

    and-int/2addr v7, v3

    aput v7, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v6, [I

    .line 32
    aget-byte v7, v1, v8

    shr-int/2addr v7, v11

    and-int/2addr v7, v3

    aput v7, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v6, [I

    .line 33
    aget-byte v7, v1, v8

    shr-int/2addr v7, v9

    and-int/2addr v3, v7

    aput v3, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v6, [I

    .line 34
    aget-byte v4, v1, v8

    shr-int/2addr v4, v6

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v6, [I

    .line 35
    aget-byte v1, v1, v8

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_7
    add-int/lit8 v2, p2, 0x2

    .line 36
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 37
    aget-byte v3, v1, v3

    add-int/lit8 v9, p2, 0x4

    .line 38
    aget-byte v11, v1, v9

    add-int/lit8 v12, p2, 0x5

    .line 39
    aget-byte v13, v1, v12

    add-int/lit8 v14, p2, 0x6

    .line 40
    aget-byte v14, v1, v14

    new-array v15, v6, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v5

    const/16 v8, 0xa

    .line 41
    invoke-static {v8, v15}, Lk0/qt;->y0(I[I)V

    const/16 v15, 0xb

    new-array v8, v6, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v8, v5

    .line 42
    invoke-static {v15, v8}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xc

    new-array v15, v6, [I

    shr-int/lit8 v17, v2, 0x4

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v5

    .line 43
    invoke-static {v8, v15}, Lk0/qt;->y0(I[I)V

    new-array v8, v6, [I

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v6

    aput v15, v8, v5

    .line 44
    invoke-static {v10, v8}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x15

    new-array v10, v6, [I

    shr-int/2addr v2, v5

    const/16 v15, 0xf

    and-int/2addr v2, v15

    aput v2, v10, v5

    .line 45
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v8, v6, [I

    shr-int/lit8 v10, v3, 0x7

    and-int/2addr v10, v6

    aput v10, v8, v5

    .line 46
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v8, v6, [I

    shr-int/lit8 v10, v3, 0x6

    and-int/2addr v10, v6

    aput v10, v8, v5

    .line 47
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v8, v6, [I

    shr-int/lit8 v10, v3, 0x5

    and-int/2addr v10, v6

    aput v10, v8, v5

    .line 48
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v3, 0xf

    packed-switch v2, :pswitch_data_0

    move v2, v5

    move v3, v2

    move v8, v3

    move v10, v8

    move/from16 v17, v10

    goto :goto_2

    :pswitch_0
    move v10, v5

    move/from16 v17, v10

    move v2, v6

    move v3, v2

    goto :goto_1

    :pswitch_1
    move v2, v5

    move v8, v2

    move v10, v8

    move/from16 v17, v10

    move v3, v6

    goto :goto_2

    :pswitch_2
    move v2, v5

    move v10, v2

    move/from16 v17, v10

    move v3, v6

    :goto_1
    move v8, v3

    goto :goto_2

    :pswitch_3
    move v3, v5

    move v10, v3

    move/from16 v17, v10

    move v2, v6

    move v8, v2

    goto :goto_2

    :pswitch_4
    move v2, v5

    move v3, v2

    move v10, v3

    move/from16 v17, v10

    move v8, v6

    goto :goto_2

    :pswitch_5
    move v2, v5

    move v3, v2

    move v8, v3

    move v10, v8

    move/from16 v17, v6

    goto :goto_2

    :pswitch_6
    move v2, v5

    move v3, v2

    move v8, v3

    move/from16 v17, v8

    move v10, v6

    :goto_2
    const/16 v7, 0x12

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 49
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v6, [I

    aput v3, v4, v5

    .line 50
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v6, [I

    aput v8, v3, v5

    .line 51
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v3, v6, [I

    aput v10, v3, v5

    .line 52
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    aput v17, v2, v5

    .line 53
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 54
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 55
    aget-byte v2, v1, v12

    const/16 v3, 0xff

    and-int/lit16 v11, v2, 0xff

    .line 56
    aget-byte v2, v1, v9

    and-int/lit16 v13, v2, 0xff

    :cond_8
    and-int/lit16 v2, v11, 0xff

    and-int/lit16 v3, v2, 0x80

    const/4 v4, -0x3

    const/4 v7, -0x2

    const/4 v8, -0x1

    const/16 v9, 0x1b

    const/16 v10, 0x80

    if-ne v3, v10, :cond_9

    new-array v2, v6, [I

    aput v8, v2, v5

    .line 57
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    if-nez v11, :cond_a

    new-array v2, v6, [I

    aput v7, v2, v5

    .line 58
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    const/16 v3, 0x1e

    if-ne v11, v3, :cond_b

    new-array v2, v6, [I

    aput v4, v2, v5

    .line 59
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    new-array v3, v6, [I

    aput v2, v3, v5

    .line 60
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    :goto_3
    and-int/lit16 v2, v13, 0xff

    and-int/lit16 v3, v2, 0x80

    const/16 v9, 0x1c

    if-ne v3, v10, :cond_c

    new-array v2, v6, [I

    aput v8, v2, v5

    .line 61
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    if-nez v13, :cond_d

    new-array v2, v6, [I

    aput v7, v2, v5

    .line 62
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_d
    const/16 v3, 0x1e

    if-ne v13, v3, :cond_e

    new-array v2, v6, [I

    aput v4, v2, v5

    .line 63
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    new-array v3, v6, [I

    aput v2, v3, v5

    .line 64
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v2, 0x1d

    new-array v3, v6, [I

    shr-int/lit8 v4, v14, 0x4

    and-int/2addr v4, v15

    aput v4, v3, v5

    .line 65
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v14, 0x0

    and-int/2addr v3, v15

    aput v3, v2, v5

    const/16 v3, 0x1e

    .line 66
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/4 v2, 0x7

    add-int/lit8 v2, p2, 0x7

    .line 67
    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xff

    and-int/2addr v1, v10

    if-eqz v1, :cond_f

    not-int v1, v2

    add-int/2addr v1, v6

    and-int/lit8 v1, v1, 0x7f

    const/16 v3, 0xa

    mul-int/2addr v1, v3

    rsub-int v1, v1, 0x3e8

    goto :goto_5

    :cond_f
    const/16 v3, 0xa

    mul-int/2addr v2, v3

    add-int/lit16 v1, v2, 0x3e8

    .line 68
    :goto_5
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_10

    :cond_10
    add-int/lit8 v2, p2, 0x2

    .line 69
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 70
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 71
    iput v2, v0, Lk0/tg;->f:I

    move v2, v5

    .line 72
    :goto_6
    iget-object v3, v0, Lk0/tg;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_12

    .line 73
    iget v4, v0, Lk0/tg;->f:I

    aget-object v7, v3, v2

    aget v7, v7, v5

    if-ne v4, v7, :cond_11

    if-eqz v4, :cond_12

    .line 74
    iput v2, v0, Lk0/tg;->e:I

    goto :goto_7

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 75
    :cond_12
    :goto_7
    iget v4, v0, Lk0/tg;->c:I

    packed-switch v4, :pswitch_data_1

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v6, :cond_17

    .line 76
    array-length v1, v3

    if-ge v2, v1, :cond_20

    .line 77
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :pswitch_7
    move v2, v5

    const/16 v4, 0xff

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_13

    const/16 v3, 0x1e

    .line 78
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_13
    const/16 v3, 0x1e

    .line 79
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :pswitch_8
    const/16 v4, 0xff

    move v2, v5

    :goto_9
    and-int/lit16 v3, v1, 0xff

    const/16 v7, 0x1f

    if-ge v2, v3, :cond_14

    .line 80
    invoke-static {v7, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 81
    :cond_14
    invoke-static {v7, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :pswitch_9
    const/16 v4, 0xff

    move v2, v5

    :goto_a
    and-int/lit16 v3, v1, 0xff

    const/16 v7, 0x8

    if-ge v2, v3, :cond_15

    .line 82
    invoke-static {v7, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 83
    :cond_15
    invoke-static {v7, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :pswitch_a
    const/16 v4, 0xff

    move v2, v5

    :goto_b
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_16

    const/4 v3, 0x7

    .line 84
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_16
    const/4 v3, 0x7

    .line 85
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_17
    if-nez v1, :cond_20

    .line 86
    iget v1, v0, Lk0/tg;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_18

    const/16 v2, 0xff

    if-eq v1, v2, :cond_19

    .line 87
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_18
    const/16 v2, 0xff

    .line 88
    :cond_19
    :goto_c
    iput v2, v0, Lk0/tg;->e:I

    goto :goto_10

    :cond_1a
    move v2, v4

    add-int/lit8 v4, p2, 0x2

    .line 89
    aget-byte v4, v1, v4

    add-int/lit8 v3, p2, 0x3

    .line 90
    aget-byte v1, v1, v3

    and-int/lit16 v3, v4, 0xff

    .line 91
    iput v3, v0, Lk0/tg;->c:I

    move v2, v5

    .line 92
    :goto_d
    iget-object v3, v0, Lk0/tg;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1c

    .line 93
    iget v4, v0, Lk0/tg;->c:I

    aget-object v7, v3, v2

    aget v7, v7, v5

    if-ne v4, v7, :cond_1b

    if-eqz v4, :cond_1c

    .line 94
    iput v2, v0, Lk0/tg;->b:I

    goto :goto_e

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1c
    :goto_e
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v6, :cond_1d

    .line 95
    array-length v1, v3

    if-ge v2, v1, :cond_20

    .line 96
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto :goto_10

    :cond_1d
    if-nez v1, :cond_20

    .line 97
    iget v1, v0, Lk0/tg;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_1e

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1f

    .line 98
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_f

    :cond_1e
    const/16 v2, 0xff

    .line 99
    :cond_1f
    :goto_f
    iput v2, v0, Lk0/tg;->b:I

    :cond_20
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

    const/16 p3, 0x75

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
    if-eqz p2, :cond_2

    .line 1
    array-length p1, p2

    if-lez p1, :cond_2

    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0x83

    aput v0, p1, v4

    aput v2, p1, v2

    .line 2
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    array-length p1, p2

    if-lez p1, :cond_2

    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0x82

    aput v0, p1, v4

    aput v2, p1, v2

    .line 4
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method

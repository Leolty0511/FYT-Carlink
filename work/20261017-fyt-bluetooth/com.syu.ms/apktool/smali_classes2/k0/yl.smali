.class public Lk0/yl;
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
    iput v0, p0, Lk0/yl;->c:I

    const/16 v1, 0x12

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

    const/16 v2, 0x11

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/yl;->d:[[I

    .line 4
    new-instance v0, Lk0/yl$a;

    invoke-direct {v0, p0}, Lk0/yl$a;-><init>(Lk0/yl;)V

    iput-object v0, p0, Lk0/yl;->e:Ljava/lang/Runnable;

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
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x7
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x8
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x5
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x1
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x36
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x6
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x1f
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x1e
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x1d
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
    iput v1, v0, Lk0/mt;->i:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/yl;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x20

    const/16 v4, 0x10

    const/16 v5, 0xb

    const/16 v6, 0xa

    const/4 v7, 0x7

    const/4 v8, 0x3

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v3, :cond_9

    const/16 v3, 0x27

    if-eq v2, v3, :cond_7

    const/16 v3, 0x29

    if-eq v2, v3, :cond_6

    const/16 v3, 0x30

    const/4 v4, 0x2

    if-eq v2, v3, :cond_5

    const/16 v3, 0x38

    const/4 v5, 0x5

    const/4 v6, 0x4

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 4
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 5
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 6
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 7
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 8
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 9
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 10
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v11

    aput v1, v2, v10

    .line 11
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 12
    aget-byte v3, v1, v2

    and-int/2addr v3, v9

    add-int/lit8 v4, p2, 0x3

    .line 13
    aget-byte v7, v1, v4

    and-int/2addr v7, v9

    add-int/lit8 v8, p2, 0x4

    .line 14
    aget-byte v12, v1, v8

    and-int/2addr v12, v9

    add-int/lit8 v5, p2, 0x5

    .line 15
    aget-byte v13, v1, v5

    and-int/2addr v13, v9

    if-nez v3, :cond_1

    if-nez v7, :cond_1

    if-nez v12, :cond_1

    if-nez v13, :cond_1

    .line 16
    invoke-static {v10}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 17
    :cond_1
    sget v10, Ll0/c0;->g:I

    if-ne v10, v3, :cond_2

    sget v10, Ll0/c0;->h:I

    if-ne v10, v7, :cond_2

    sget v10, Ll0/c0;->i:I

    if-ne v10, v12, :cond_2

    sget v10, Ll0/c0;->j:I

    if-eq v10, v13, :cond_3

    .line 18
    :cond_2
    sget v10, Lu0/b;->o:I

    if-nez v10, :cond_3

    .line 19
    invoke-static {v11}, Lu0/d;->C2(I)V

    .line 20
    sput v6, Ll0/c0;->k:I

    .line 21
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 22
    :cond_3
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 23
    sput v7, Ll0/c0;->h:I

    .line 24
    sput v12, Ll0/c0;->i:I

    .line 25
    sput v13, Ll0/c0;->j:I

    .line 26
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->U0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 27
    aget-byte v2, v1, v4

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->U0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 28
    aget-byte v2, v1, v8

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->U0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 29
    aget-byte v1, v1, v5

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->U0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_8

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->U0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->U0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->U0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 33
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->U0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :cond_4
    const/16 v2, 0x63

    new-array v3, v11, [I

    add-int/lit8 v12, p2, 0x2

    .line 34
    aget-byte v13, v1, v12

    shr-int/2addr v13, v10

    and-int/2addr v13, v8

    aput v13, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v11, [I

    .line 35
    aget-byte v13, v1, v12

    shr-int/2addr v13, v4

    and-int/2addr v13, v8

    aput v13, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v11, [I

    .line 36
    aget-byte v12, v1, v12

    shr-int/2addr v12, v6

    and-int/2addr v12, v11

    aput v12, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v11, [I

    add-int/lit8 v12, p2, 0x3

    .line 37
    aget-byte v13, v1, v12

    shr-int/2addr v13, v10

    and-int/2addr v13, v11

    aput v13, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v11, [I

    .line 38
    aget-byte v13, v1, v12

    shr-int/2addr v13, v11

    and-int/2addr v13, v11

    aput v13, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v11, [I

    .line 39
    aget-byte v13, v1, v12

    shr-int/lit8 v4, v13, 0x2

    and-int/2addr v4, v8

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v11, [I

    .line 40
    aget-byte v4, v1, v12

    shr-int/2addr v4, v6

    and-int/2addr v4, v8

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v11, [I

    .line 41
    aget-byte v4, v1, v12

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v11, [I

    .line 42
    aget-byte v4, v1, v12

    shr-int/2addr v4, v7

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 43
    aget-byte v7, v1, v4

    shr-int/2addr v7, v10

    and-int/lit8 v7, v7, 0xf

    aput v7, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v11, [I

    .line 44
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 45
    aget-byte v1, v1, v4

    shr-int/2addr v1, v10

    and-int/2addr v1, v9

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 46
    :cond_5
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_6
    add-int/lit8 v2, p2, 0x2

    .line 47
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x5474

    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_8

    :cond_7
    add-int/lit8 v2, p2, 0x2

    .line 48
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 49
    aget-byte v3, v1, v3

    add-int/lit8 v7, p2, 0x4

    .line 50
    aget-byte v8, v1, v7

    add-int/lit8 v12, p2, 0x5

    .line 51
    aget-byte v13, v1, v12

    add-int/lit8 v14, p2, 0x6

    .line 52
    aget-byte v14, v1, v14

    new-array v15, v11, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v10

    .line 53
    invoke-static {v6, v15}, Lk0/qt;->y0(I[I)V

    new-array v6, v11, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v11

    aput v15, v6, v10

    .line 54
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xc

    new-array v6, v11, [I

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v11

    aput v15, v6, v10

    .line 55
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xd

    new-array v6, v11, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v11

    aput v15, v6, v10

    .line 56
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x3e

    new-array v6, v11, [I

    shr-int/lit8 v15, v2, 0x2

    and-int/2addr v15, v11

    aput v15, v6, v10

    .line 57
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x41

    new-array v6, v11, [I

    shr-int/lit8 v15, v2, 0x1

    and-int/2addr v15, v11

    aput v15, v6, v10

    .line 58
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    new-array v5, v11, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v11

    aput v2, v5, v10

    .line 59
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 60
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 61
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x5

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 62
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v11, [I

    and-int/lit8 v3, v3, 0xf

    aput v3, v4, v10

    .line 63
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 64
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 65
    aget-byte v8, v1, v12

    .line 66
    aget-byte v13, v1, v7

    :cond_8
    const/16 v1, 0x1b

    new-array v2, v11, [I

    and-int/lit16 v3, v8, 0xff

    aput v3, v2, v10

    .line 67
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1c

    new-array v2, v11, [I

    and-int/lit16 v3, v13, 0xff

    aput v3, v2, v10

    .line 68
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x34

    new-array v2, v11, [I

    shr-int/lit8 v3, v14, 0x1

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 69
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x25

    new-array v2, v11, [I

    shr-int/lit8 v3, v14, 0x0

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 70
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 71
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 72
    aget-byte v1, v1, v3

    and-int/2addr v2, v9

    .line 73
    iput v2, v0, Lk0/yl;->c:I

    move v2, v10

    .line 74
    :goto_2
    iget-object v3, v0, Lk0/yl;->d:[[I

    array-length v8, v3

    if-ge v2, v8, :cond_b

    .line 75
    iget v8, v0, Lk0/yl;->c:I

    aget-object v12, v3, v2

    aget v12, v12, v10

    if-ne v8, v12, :cond_a

    if-eqz v8, :cond_b

    .line 76
    iput v2, v0, Lk0/yl;->b:I

    goto :goto_3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 77
    :cond_b
    :goto_3
    iget v8, v0, Lk0/yl;->c:I

    if-eq v8, v6, :cond_14

    if-eq v8, v5, :cond_12

    if-eq v8, v4, :cond_10

    const/16 v4, 0x11

    if-eq v8, v4, :cond_e

    and-int/2addr v1, v9

    if-ne v1, v11, :cond_c

    .line 78
    array-length v1, v3

    if-ge v2, v1, :cond_16

    .line 79
    aget-object v1, v3, v2

    aget v1, v1, v11

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_c
    if-nez v1, :cond_16

    .line 80
    iget v1, v0, Lk0/yl;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_d

    if-eq v1, v9, :cond_d

    .line 81
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 82
    :cond_d
    iput v9, v0, Lk0/yl;->b:I

    goto :goto_8

    :cond_e
    move v2, v10

    :goto_4
    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x1e

    if-ge v2, v3, :cond_f

    .line 83
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 84
    :cond_f
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_10
    move v2, v10

    :goto_5
    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x1f

    if-ge v2, v3, :cond_11

    .line 85
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 86
    :cond_11
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_12
    move v2, v10

    :goto_6
    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x8

    if-ge v2, v3, :cond_13

    .line 87
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 88
    :cond_13
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_14
    move v2, v10

    :goto_7
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_15

    .line 89
    invoke-static {v7, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 90
    :cond_15
    invoke-static {v7, v11}, Ll0/b0;->l0(II)V

    :cond_16
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
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
    iget-object v0, p0, Lk0/yl;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6f

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
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0xc6

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 2
    aget p4, p2, p4

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.class public Lk0/rf;
.super Lk0/lt;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    return-void
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
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p1

    .line 1
    aget-byte v1, v0, p2

    const/4 v2, -0x1

    const/16 v3, 0x62

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v6, :cond_e

    const/4 v7, -0x2

    const/4 v8, 0x2

    if-eq v1, v8, :cond_d

    const/4 v9, -0x3

    const/4 v10, 0x3

    if-eq v1, v10, :cond_c

    const/4 v11, 0x4

    if-eq v1, v11, :cond_b

    if-eq v1, v4, :cond_a

    const/16 v3, 0x24

    if-eq v1, v3, :cond_8

    const/16 v3, 0x30

    if-eq v1, v3, :cond_7

    const/16 v3, 0x29

    if-eq v1, v3, :cond_6

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, v0, v1

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v3, v0, v3

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v8, v0, v4

    add-int/lit8 v11, p2, 0x5

    .line 5
    aget-byte v12, v0, v11

    add-int/lit8 v13, p2, 0x6

    .line 6
    aget-byte v13, v0, v13

    new-array v14, v6, [I

    shr-int/lit8 v15, v1, 0x7

    and-int/2addr v15, v6

    aput v15, v14, v5

    const/16 v15, 0xa

    .line 7
    invoke-static {v15, v14}, Lk0/qt;->y0(I[I)V

    new-array v14, v6, [I

    shr-int/lit8 v15, v1, 0x6

    and-int/2addr v15, v6

    aput v15, v14, v5

    const/16 v15, 0xb

    .line 8
    invoke-static {v15, v14}, Lk0/qt;->y0(I[I)V

    new-array v14, v6, [I

    shr-int/lit8 v15, v1, 0x5

    and-int/2addr v15, v6

    aput v15, v14, v5

    const/16 v15, 0xc

    .line 9
    invoke-static {v15, v14}, Lk0/qt;->y0(I[I)V

    new-array v14, v6, [I

    shr-int/lit8 v15, v1, 0x4

    and-int/2addr v15, v6

    aput v15, v14, v5

    const/16 v15, 0xd

    .line 10
    invoke-static {v15, v14}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0xe

    new-array v15, v6, [I

    shr-int/lit8 v16, v1, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v5

    .line 11
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0x41

    new-array v15, v6, [I

    shr-int/lit8 v16, v1, 0x1

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v5

    .line 12
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0x10

    new-array v15, v6, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v15, v5

    .line 13
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x12

    new-array v14, v6, [I

    shr-int/lit8 v15, v3, 0x7

    and-int/2addr v15, v6

    aput v15, v14, v5

    .line 14
    invoke-static {v1, v14}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v14, v6, [I

    shr-int/lit8 v15, v3, 0x6

    and-int/2addr v15, v6

    aput v15, v14, v5

    .line 15
    invoke-static {v1, v14}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v14, v6, [I

    shr-int/lit8 v15, v3, 0x5

    and-int/2addr v15, v6

    aput v15, v14, v5

    .line 16
    invoke-static {v1, v14}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v14, v6, [I

    and-int/lit8 v3, v3, 0xf

    aput v3, v14, v5

    .line 17
    invoke-static {v1, v14}, Lk0/qt;->y0(I[I)V

    const-string v1, "persist.fyt.reversetemp"

    .line 18
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    aget-byte v8, v0, v11

    .line 20
    aget-byte v12, v0, v4

    :cond_1
    and-int/lit16 v0, v8, 0xff

    const/16 v1, 0x1b

    if-ne v8, v7, :cond_2

    new-array v0, v6, [I

    aput v7, v0, v5

    .line 21
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    if-ne v8, v2, :cond_3

    new-array v0, v6, [I

    aput v9, v0, v5

    .line 22
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v3, v6, [I

    aput v0, v3, v5

    .line 23
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    :goto_0
    and-int/lit16 v0, v12, 0xff

    const/16 v1, 0x1c

    if-ne v12, v7, :cond_4

    new-array v0, v6, [I

    aput v7, v0, v5

    .line 24
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    if-ne v12, v2, :cond_5

    new-array v0, v6, [I

    aput v9, v0, v5

    .line 25
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v2, v6, [I

    aput v0, v2, v5

    .line 26
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v0, 0x1d

    new-array v1, v6, [I

    shr-int/lit8 v2, v13, 0x4

    and-int/2addr v2, v10

    aput v2, v1, v5

    .line 27
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x1e

    new-array v1, v6, [I

    and-int/lit8 v2, v13, 0x3

    aput v2, v1, v5

    .line 28
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v1, p2, 0x2

    .line 29
    aget-byte v1, v0, v1

    add-int/lit8 v2, p2, 0x3

    aget-byte v0, v0, v2

    const/16 v2, 0x1500

    invoke-static {v1, v0, v6, v2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_3

    .line 30
    :cond_7
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v1}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v1, p2, 0x2

    .line 31
    aget-byte v0, v0, v1

    const-string v1, "persist.syu.reversefrontdoor"

    .line 32
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_9

    new-array v1, v6, [I

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 33
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v0, 0x7

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 34
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    new-array v1, v6, [I

    shr-int/lit8 v2, v0, 0x7

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 35
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 36
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v1, v6, [I

    shr-int/lit8 v2, v0, 0x4

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 37
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v0, 0x5

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 38
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v0, 0x3

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 39
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/2addr v0, v8

    and-int/2addr v0, v6

    aput v0, v1, v5

    .line 40
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_a
    new-array v1, v6, [I

    const/4 v2, -0x5

    aput v2, v1, v5

    .line 41
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7a

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x2

    .line 42
    aget-byte v0, v0, v3

    aput v0, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_b
    new-array v1, v6, [I

    const/4 v2, -0x4

    aput v2, v1, v5

    .line 43
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x74

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x2

    .line 44
    aget-byte v3, v0, v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x75

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x3

    .line 45
    aget-byte v3, v0, v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x76

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x4

    .line 46
    aget-byte v3, v0, v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x77

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x5

    .line 47
    aget-byte v3, v0, v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x78

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x6

    .line 48
    aget-byte v3, v0, v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x79

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x9

    .line 49
    aget-byte v0, v0, v3

    aput v0, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 50
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/16 v1, 0x7b

    new-array v2, v6, [I

    aput v6, v2, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    new-array v1, v6, [I

    aput v9, v1, v5

    .line 51
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x72

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x2

    .line 52
    aget-byte v3, v0, v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x73

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x3

    .line 53
    aget-byte v0, v0, v3

    aput v0, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_d
    new-array v1, v6, [I

    aput v7, v1, v5

    .line 54
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6c

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x2

    .line 55
    aget-byte v3, v0, v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6e

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x4

    .line 56
    aget-byte v3, v0, v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6f

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x5

    .line 57
    aget-byte v3, v0, v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x70

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x6

    .line 58
    aget-byte v3, v0, v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x71

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x7

    .line 59
    aget-byte v0, v0, v3

    aput v0, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_e
    new-array v1, v6, [I

    aput v2, v1, v5

    .line 60
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x2

    .line 61
    aget-byte v1, v0, v1

    add-int/lit8 v2, p2, 0x3

    .line 62
    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v7, p2, 0x4

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    add-int/lit8 v7, p2, 0x6

    .line 63
    aget-byte v7, v0, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v3

    add-int/lit8 v8, p2, 0x7

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    add-int/lit8 v8, p2, 0x8

    .line 64
    aget-byte v8, v0, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v3

    add-int/lit8 v9, p2, 0x9

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    add-int/lit8 v9, p2, 0xa

    .line 65
    aget-byte v9, v0, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v3

    add-int/lit8 v10, p2, 0xb

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    add-int/lit8 v10, p2, 0xc

    .line 66
    aget-byte v10, v0, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v3

    add-int/lit8 v11, p2, 0xd

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    add-int/lit8 v11, p2, 0xe

    .line 67
    aget-byte v11, v0, v11

    shl-int/lit8 v11, v11, 0x8

    and-int/2addr v11, v3

    add-int/lit8 v12, p2, 0xf

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    add-int/lit8 v12, p2, 0x10

    .line 68
    aget-byte v12, v0, v12

    shl-int/lit8 v12, v12, 0x8

    and-int/2addr v3, v12

    add-int/lit8 v12, p2, 0x11

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v3, v12

    add-int/lit8 v4, p2, 0x5

    .line 69
    aget-byte v0, v0, v4

    const/16 v4, 0x64

    new-array v12, v6, [I

    aput v0, v12, v5

    .line 70
    invoke-static {v4, v12}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x63

    new-array v4, v6, [I

    aput v1, v4, v5

    .line 71
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x65

    new-array v1, v6, [I

    aput v2, v1, v5

    .line 72
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x66

    new-array v1, v6, [I

    aput v7, v1, v5

    .line 73
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x67

    new-array v1, v6, [I

    aput v8, v1, v5

    .line 74
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x68

    new-array v1, v6, [I

    aput v9, v1, v5

    .line 75
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x69

    new-array v1, v6, [I

    aput v10, v1, v5

    .line 76
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6a

    new-array v1, v6, [I

    aput v11, v1, v5

    .line 77
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6b

    new-array v1, v6, [I

    aput v3, v1, v5

    .line 78
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    :goto_3
    return-void
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

    const/16 p3, 0x7c

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

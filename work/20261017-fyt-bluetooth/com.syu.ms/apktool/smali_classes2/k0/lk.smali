.class public Lk0/lk;
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

.field public i:I

.field public j:I

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/lk;->c:I

    const/16 v1, 0x9

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v11, 0x8

    aput-object v3, v1, v11

    iput-object v1, p0, Lk0/lk;->d:[[I

    .line 4
    iput v0, p0, Lk0/lk;->f:I

    new-array v0, v11, [[I

    new-array v1, v2, [I

    .line 5
    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v6

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v7

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v8

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v9

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v10

    iput-object v0, p0, Lk0/lk;->g:[[I

    .line 6
    iput v4, p0, Lk0/lk;->h:I

    .line 7
    iput v4, p0, Lk0/lk;->i:I

    .line 8
    iput v4, p0, Lk0/lk;->j:I

    .line 9
    iput v4, p0, Lk0/lk;->k:I

    .line 10
    new-instance v0, Lk0/lk$a;

    invoke-direct {v0, p0}, Lk0/lk$a;-><init>(Lk0/lk;)V

    iput-object v0, p0, Lk0/lk;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/lk$b;

    invoke-direct {v0, p0}, Lk0/lk$b;-><init>(Lk0/lk;)V

    iput-object v0, p0, Lk0/lk;->m:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/lk$c;

    invoke-direct {v0, p0}, Lk0/lk$c;-><init>(Lk0/lk;)V

    iput-object v0, p0, Lk0/lk;->n:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_8
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_d
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_e
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x37
        0x37
    .end array-data

    :array_10
    .array-data 4
        0x54
        0x2
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

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    iget-object v0, p0, Lk0/lk;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x10

    const/4 v4, 0x2

    if-eq v2, v3, :cond_2c

    const/16 v3, 0x31

    const/16 v5, 0x41

    const/16 v7, 0x12

    const/16 v8, 0xc

    const/4 v9, 0x6

    const/4 v10, 0x7

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/16 v14, 0xff

    const/4 v15, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_26

    if-eq v2, v5, :cond_22

    const/16 v3, 0x61

    if-eq v2, v3, :cond_21

    const/16 v3, 0x11

    const/16 v5, 0x8

    if-eq v2, v3, :cond_12

    if-eq v2, v7, :cond_10

    const/16 v3, 0x21

    if-eq v2, v3, :cond_b

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    goto/16 :goto_10

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_2d

    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 4
    aget-byte v1, v1, v3

    if-eq v2, v6, :cond_6

    if-eq v2, v4, :cond_1

    if-eq v2, v13, :cond_1

    if-eq v2, v12, :cond_1

    if-eq v2, v11, :cond_1

    goto/16 :goto_10

    .line 5
    :cond_1
    iget v2, v0, Lk0/lk;->j:I

    if-eq v1, v2, :cond_2d

    if-le v1, v2, :cond_3

    move v2, v15

    .line 6
    :goto_0
    iget v3, v0, Lk0/lk;->j:I

    sub-int v3, v1, v3

    const/16 v4, 0x1f

    if-ge v2, v3, :cond_2

    .line 7
    invoke-static {v4, v15}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_3
    if-ge v1, v2, :cond_5

    move v2, v15

    .line 9
    :goto_1
    iget v3, v0, Lk0/lk;->j:I

    sub-int/2addr v3, v1

    const/16 v4, 0x1e

    if-ge v2, v3, :cond_4

    .line 10
    invoke-static {v4, v15}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    .line 12
    :cond_5
    :goto_2
    iput v1, v0, Lk0/lk;->j:I

    goto/16 :goto_10

    .line 13
    :cond_6
    iget v2, v0, Lk0/lk;->i:I

    if-eq v1, v2, :cond_2d

    if-le v1, v2, :cond_8

    move v2, v15

    .line 14
    :goto_3
    iget v3, v0, Lk0/lk;->i:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_7

    .line 15
    invoke-static {v10, v15}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 16
    :cond_7
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_8
    if-ge v1, v2, :cond_a

    move v2, v15

    .line 17
    :goto_4
    iget v3, v0, Lk0/lk;->i:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_9

    .line 18
    invoke-static {v5, v15}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 19
    :cond_9
    invoke-static {v5, v6}, Ll0/b0;->l0(II)V

    .line 20
    :cond_a
    :goto_5
    iput v1, v0, Lk0/lk;->i:I

    goto/16 :goto_10

    :cond_b
    add-int/lit8 v2, p2, 0x2

    .line 21
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    iput v2, v0, Lk0/lk;->e:I

    add-int/lit8 v2, p2, 0x3

    .line 22
    aget-byte v1, v1, v2

    move v2, v15

    .line 23
    :goto_6
    iget-object v3, v0, Lk0/lk;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 24
    iget v4, v0, Lk0/lk;->e:I

    aget-object v5, v3, v2

    aget v5, v5, v15

    if-ne v4, v5, :cond_c

    if-eqz v4, :cond_d

    .line 25
    iput v2, v0, Lk0/lk;->f:I

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    and-int/2addr v1, v14

    if-eqz v1, :cond_2d

    .line 26
    array-length v1, v3

    if-ge v2, v1, :cond_e

    .line 27
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    .line 28
    :cond_e
    iget v1, v0, Lk0/lk;->f:I

    array-length v2, v3

    if-ge v1, v2, :cond_f

    if-eq v1, v14, :cond_f

    .line 29
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 30
    :cond_f
    iput v14, v0, Lk0/lk;->f:I

    goto/16 :goto_10

    :cond_10
    add-int/lit8 v2, p2, 0x4

    .line 31
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 32
    invoke-static {v2, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_11

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v15

    .line 33
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v15

    .line 34
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_11
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v15

    .line 35
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v15

    .line 36
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v15

    .line 37
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v15

    .line 38
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v13

    and-int/2addr v1, v6

    aput v1, v2, v15

    .line 39
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 40
    aget-byte v2, v1, v2

    shr-int/2addr v2, v10

    and-int/2addr v2, v6

    .line 41
    iget v3, v0, Lk0/lk;->h:I

    if-eq v3, v2, :cond_15

    const-string v3, "com.syu.carinfo.xp.xiandai.XiandaiSosPage"

    if-ne v2, v6, :cond_13

    .line 42
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 43
    invoke-virtual/range {p0 .. p0}, Lk0/lk;->a3()V

    .line 44
    sget v3, Ly0/f;->i:I

    if-eq v3, v6, :cond_14

    .line 45
    invoke-static {v8, v15}, Ll0/b0;->l0(II)V

    .line 46
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_13
    if-nez v2, :cond_14

    .line 47
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 48
    invoke-static {v9, v15}, Ll0/b0;->l0(II)V

    .line 49
    invoke-static {v9, v6}, Ll0/b0;->l0(II)V

    .line 50
    sget v3, Ly0/f;->i:I

    if-ne v3, v6, :cond_14

    .line 51
    invoke-static {v8, v15}, Ll0/b0;->l0(II)V

    .line 52
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    .line 53
    :cond_14
    :goto_9
    iput v2, v0, Lk0/lk;->h:I

    :cond_15
    add-int/lit8 v2, p2, 0x4

    .line 54
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 55
    aget-byte v3, v1, v3

    and-int/2addr v2, v14

    .line 56
    iput v2, v0, Lk0/lk;->c:I

    move v2, v15

    .line 57
    :goto_a
    iget-object v4, v0, Lk0/lk;->d:[[I

    array-length v9, v4

    if-ge v2, v9, :cond_17

    .line 58
    iget v9, v0, Lk0/lk;->c:I

    aget-object v10, v4, v2

    aget v10, v10, v15

    if-ne v9, v10, :cond_16

    if-eqz v9, :cond_17

    .line 59
    iput v2, v0, Lk0/lk;->b:I

    goto :goto_b

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 60
    :cond_17
    :goto_b
    iget v9, v0, Lk0/lk;->c:I

    const/16 v10, 0x1a

    if-eq v9, v13, :cond_1e

    if-eq v9, v12, :cond_1c

    if-eq v9, v11, :cond_1a

    and-int/2addr v3, v14

    if-eqz v3, :cond_18

    .line 61
    array-length v3, v4

    if-ge v2, v3, :cond_20

    .line 62
    aget-object v2, v4, v2

    aget v2, v2, v6

    invoke-static {v2, v15}, Ll0/b0;->l0(II)V

    goto :goto_c

    .line 63
    :cond_18
    iget v2, v0, Lk0/lk;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_19

    if-eq v2, v14, :cond_19

    .line 64
    aget-object v2, v4, v2

    aget v2, v2, v6

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 65
    :cond_19
    iput v14, v0, Lk0/lk;->b:I

    goto :goto_c

    :cond_1a
    and-int/lit16 v2, v3, 0xff

    if-ne v2, v6, :cond_20

    .line 66
    sget v2, Lh0/c;->E:I

    if-eq v2, v13, :cond_1b

    if-eq v2, v11, :cond_1b

    .line 67
    invoke-static {v7, v15}, Ll0/b0;->l0(II)V

    .line 68
    invoke-static {v7, v6}, Ll0/b0;->l0(II)V

    goto :goto_c

    .line 69
    :cond_1b
    invoke-static {v10, v15}, Ll0/b0;->l0(II)V

    .line 70
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_1c
    and-int/lit16 v2, v3, 0xff

    if-ne v2, v6, :cond_20

    .line 71
    sget v2, Lh0/c;->E:I

    if-eq v2, v12, :cond_1d

    const/16 v2, 0xd

    .line 72
    invoke-static {v2, v15}, Ll0/b0;->l0(II)V

    .line 73
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto :goto_c

    .line 74
    :cond_1d
    invoke-static {v7, v15}, Ll0/b0;->l0(II)V

    .line 75
    invoke-static {v7, v6}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_1e
    and-int/lit16 v2, v3, 0xff

    if-ne v2, v6, :cond_20

    .line 76
    sget v2, Lh0/c;->E:I

    if-eq v2, v13, :cond_1f

    if-eq v2, v12, :cond_1f

    if-eq v2, v11, :cond_1f

    .line 77
    invoke-static {v8, v15}, Ll0/b0;->l0(II)V

    .line 78
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    goto :goto_c

    .line 79
    :cond_1f
    invoke-static {v10, v15}, Ll0/b0;->l0(II)V

    .line 80
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    :cond_20
    :goto_c
    add-int/lit8 v2, p2, 0x9

    .line 81
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    and-int/2addr v1, v14

    const/16 v3, 0x21c

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_10

    :cond_21
    add-int/lit8 v2, p2, 0x8

    .line 82
    aget-byte v3, v1, v2

    shr-int/2addr v3, v12

    and-int/2addr v3, v6

    add-int/2addr v3, v6

    const/16 v4, 0x65

    new-array v5, v6, [I

    aput v3, v5, v15

    .line 83
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x62

    new-array v4, v6, [I

    .line 84
    aget-byte v2, v1, v2

    shr-int/2addr v2, v11

    and-int/2addr v2, v10

    aput v2, v4, v15

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x9

    .line 85
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v6

    aput v5, v3, v15

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v6, [I

    .line 86
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v6

    aput v1, v3, v15

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_22
    add-int/lit8 v2, p2, 0x2

    .line 87
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->U0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 88
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->U0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 89
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->U0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 90
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->U0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 91
    aget-byte v3, v1, v2

    and-int/2addr v3, v14

    add-int/lit8 v4, p2, 0x7

    .line 92
    aget-byte v5, v1, v4

    and-int/2addr v5, v14

    add-int/lit8 v7, p2, 0x8

    .line 93
    aget-byte v8, v1, v7

    and-int/2addr v8, v14

    add-int/lit8 v9, p2, 0x9

    .line 94
    aget-byte v10, v1, v9

    and-int/2addr v10, v14

    if-ne v3, v14, :cond_23

    if-ne v5, v14, :cond_23

    if-ne v8, v14, :cond_23

    if-ne v10, v14, :cond_23

    .line 95
    invoke-static {v15}, Lu0/d;->C2(I)V

    goto :goto_d

    .line 96
    :cond_23
    sget v11, Ll0/c0;->g:I

    if-ne v11, v3, :cond_24

    sget v11, Ll0/c0;->h:I

    if-ne v11, v5, :cond_24

    sget v11, Ll0/c0;->i:I

    if-ne v11, v8, :cond_24

    sget v11, Ll0/c0;->j:I

    if-eq v11, v10, :cond_25

    .line 97
    :cond_24
    sget v11, Lu0/b;->o:I

    if-nez v11, :cond_25

    .line 98
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 99
    sput v12, Ll0/c0;->k:I

    .line 100
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 101
    :cond_25
    :goto_d
    sput v3, Ll0/c0;->g:I

    .line 102
    sput v5, Ll0/c0;->h:I

    .line 103
    sput v8, Ll0/c0;->i:I

    .line 104
    sput v10, Ll0/c0;->j:I

    .line 105
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->h1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 106
    aget-byte v2, v1, v4

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->C1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 107
    aget-byte v2, v1, v7

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->C1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 108
    aget-byte v1, v1, v9

    and-int/2addr v1, v14

    invoke-static {v1}, Ll0/c0;->h1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_10

    :cond_26
    const/16 v2, 0xa

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 109
    aget-byte v16, v1, v4

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v3, v15

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 110
    aget-byte v3, v1, v4

    shr-int/2addr v3, v13

    and-int/2addr v3, v6

    aput v3, v2, v15

    const/16 v3, 0xd

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 111
    aget-byte v16, v1, v4

    shr-int/lit8 v10, v16, 0x7

    and-int/2addr v10, v6

    aput v10, v3, v15

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 112
    aget-byte v3, v1, v4

    shr-int/2addr v3, v9

    and-int/2addr v3, v6

    aput v3, v2, v15

    const/16 v3, 0xb

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 113
    aget-byte v4, v1, v4

    shr-int/2addr v4, v13

    and-int/2addr v4, v13

    aput v4, v2, v15

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v6, [I

    add-int/lit8 v10, p2, 0x4

    .line 114
    aget-byte v16, v1, v10

    shr-int/lit8 v16, v16, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v15

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 115
    aget-byte v4, v1, v10

    shr-int/2addr v4, v12

    and-int/2addr v4, v6

    aput v4, v2, v15

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 116
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    if-eq v2, v13, :cond_2b

    if-eq v2, v11, :cond_2a

    if-eq v2, v9, :cond_29

    if-eq v2, v3, :cond_28

    if-eq v2, v8, :cond_27

    move v2, v15

    move v3, v2

    :goto_e
    move v4, v3

    goto :goto_f

    :cond_27
    move v2, v6

    move v4, v2

    move v3, v15

    goto :goto_f

    :cond_28
    move v2, v6

    move v3, v15

    goto :goto_e

    :cond_29
    move v3, v6

    move v2, v15

    move v4, v2

    goto :goto_f

    :cond_2a
    move v3, v6

    move v4, v3

    move v2, v15

    goto :goto_f

    :cond_2b
    move v4, v6

    move v2, v15

    move v3, v2

    :goto_f
    new-array v5, v6, [I

    aput v2, v5, v15

    .line 117
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v6, [I

    aput v3, v5, v15

    .line 118
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v6, [I

    aput v4, v3, v15

    .line 119
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x7

    .line 120
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v15

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x8

    .line 121
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v15

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    add-int/lit8 v2, p2, 0xd

    .line 122
    aget-byte v1, v1, v2

    and-int/2addr v1, v14

    mul-int/2addr v1, v11

    add-int/lit16 v1, v1, 0x258

    .line 123
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_10

    .line 124
    :cond_2c
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_2d
    :goto_10
    return-void
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/lk;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x66

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
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/4 p3, 0x1

    const/4 v0, 0x4

    aput v0, p1, p3

    const/16 v1, 0x6f

    const/4 v2, 0x2

    aput v1, p1, v2

    .line 1
    aget p4, p2, p4

    const/4 v1, 0x3

    aput p4, p1, v1

    aget p3, p2, p3

    aput p3, p1, v0

    const/4 p3, 0x5

    aget p4, p2, v2

    aput p4, p1, p3

    const/4 p3, 0x6

    aget p2, p2, v1

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public final a3()V
    .locals 3

    const-string v0, "com.syu.carinfo.xp.xiandai.XiandaiSosPage"

    .line 1
    :try_start_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

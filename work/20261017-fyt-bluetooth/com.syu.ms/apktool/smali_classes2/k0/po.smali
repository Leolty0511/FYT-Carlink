.class public Lk0/po;
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
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v2, "com.syu.canbus"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x0

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x0

    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v1, v0, Lk0/mt;->f:I

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    .line 7
    iput v2, v0, Lk0/mt;->g:I

    .line 8
    iput v2, v0, Lk0/mt;->o:I

    .line 9
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

    const/16 v2, 0x30

    const/16 v3, 0x28

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v1}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v1, p2, 0x2

    .line 3
    aget-byte v1, v0, v1

    const/16 v4, 0xa

    const/4 v5, 0x1

    new-array v6, v5, [I

    shr-int/lit8 v7, v1, 0x7

    and-int/2addr v7, v5

    const/4 v8, 0x0

    aput v7, v6, v8

    .line 4
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xb

    new-array v6, v5, [I

    shr-int/lit8 v7, v1, 0x6

    and-int/2addr v7, v5

    aput v7, v6, v8

    .line 5
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xc

    new-array v6, v5, [I

    shr-int/lit8 v7, v1, 0x5

    and-int/2addr v7, v5

    aput v7, v6, v8

    .line 6
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xd

    new-array v6, v5, [I

    shr-int/lit8 v7, v1, 0x3

    and-int/2addr v7, v5

    aput v7, v6, v8

    .line 7
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xe

    new-array v6, v5, [I

    shr-int/lit8 v1, v1, 0x2

    and-int/2addr v1, v5

    aput v1, v6, v8

    .line 8
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x3

    .line 9
    aget-byte v1, v0, v1

    const/16 v4, 0x12

    new-array v6, v5, [I

    shr-int/lit8 v7, v1, 0x7

    and-int/2addr v7, v5

    aput v7, v6, v8

    .line 10
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x13

    new-array v6, v5, [I

    shr-int/lit8 v7, v1, 0x6

    and-int/2addr v7, v5

    aput v7, v6, v8

    .line 11
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    new-array v4, v5, [I

    shr-int/lit8 v6, v1, 0x5

    and-int/2addr v6, v5

    aput v6, v4, v8

    const/16 v6, 0x14

    .line 12
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x15

    new-array v7, v5, [I

    shr-int/2addr v1, v8

    and-int/lit8 v1, v1, 0xf

    aput v1, v7, v8

    .line 13
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x4

    .line 14
    aget-byte v4, v0, v1

    add-int/lit8 v7, p2, 0x5

    .line 15
    aget-byte v9, v0, v7

    const-string v10, "persist.fyt.reversetemp"

    .line 16
    invoke-static {v10, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 17
    aget-byte v4, v0, v7

    .line 18
    aget-byte v9, v0, v1

    :cond_2
    const/16 v1, 0x23

    const/4 v7, -0x1

    const/16 v10, 0x1d

    const/4 v11, -0x3

    const/4 v12, -0x2

    const/16 v13, 0x1f

    const/16 v14, 0x20

    const/16 v15, 0x1b

    if-eqz v4, :cond_6

    if-eq v4, v13, :cond_5

    if-lt v4, v5, :cond_3

    if-gt v4, v10, :cond_3

    new-array v2, v5, [I

    mul-int/lit8 v4, v4, 0x5

    add-int/lit16 v4, v4, 0xaf

    aput v4, v2, v8

    .line 19
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    if-lt v4, v14, :cond_4

    if-gt v4, v1, :cond_4

    new-array v2, v5, [I

    sub-int/2addr v4, v14

    mul-int/lit8 v4, v4, 0x5

    add-int/lit16 v4, v4, 0xa0

    aput v4, v2, v8

    .line 20
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array v2, v5, [I

    aput v7, v2, v8

    .line 21
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    new-array v2, v5, [I

    aput v11, v2, v8

    .line 22
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_6
    new-array v2, v5, [I

    aput v12, v2, v8

    .line 23
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v2, 0x1c

    if-eqz v9, :cond_a

    if-eq v9, v13, :cond_9

    if-lt v9, v5, :cond_7

    if-gt v9, v10, :cond_7

    new-array v4, v5, [I

    mul-int/lit8 v15, v9, 0x5

    add-int/lit16 v15, v15, 0xaf

    aput v15, v4, v8

    .line 24
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    if-lt v9, v6, :cond_8

    if-gt v9, v1, :cond_8

    new-array v4, v5, [I

    add-int/lit8 v15, v9, -0x20

    mul-int/lit8 v15, v15, 0x5

    add-int/lit16 v15, v15, 0xa0

    aput v15, v4, v8

    .line 25
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    new-array v4, v5, [I

    aput v7, v4, v8

    .line 26
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    new-array v4, v5, [I

    aput v11, v4, v8

    .line 27
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_a
    new-array v4, v5, [I

    aput v12, v4, v8

    .line 28
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/lit8 v2, p2, 0x6

    .line 29
    aget-byte v2, v0, v2

    const/16 v4, 0x41

    new-array v15, v5, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v8

    .line 30
    invoke-static {v4, v15}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x10

    new-array v15, v5, [I

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v5

    aput v2, v15, v8

    .line 31
    invoke-static {v4, v15}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 32
    aget-byte v2, v0, v2

    if-eqz v2, :cond_e

    if-eq v2, v13, :cond_d

    if-lt v2, v5, :cond_b

    if-gt v2, v10, :cond_b

    new-array v1, v5, [I

    mul-int/lit8 v9, v9, 0x5

    add-int/lit16 v9, v9, 0xaf

    aput v9, v1, v8

    .line 33
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_b
    if-lt v2, v6, :cond_c

    if-gt v2, v1, :cond_c

    new-array v1, v5, [I

    sub-int/2addr v9, v14

    mul-int/lit8 v9, v9, 0x5

    add-int/lit16 v9, v9, 0xa0

    aput v9, v1, v8

    .line 34
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_c
    new-array v1, v5, [I

    aput v7, v1, v8

    .line 35
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_d
    new-array v1, v5, [I

    aput v11, v1, v8

    .line 36
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_e
    new-array v1, v5, [I

    aput v12, v1, v8

    .line 37
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    :goto_2
    add-int/lit8 v1, p2, 0x8

    .line 38
    aget-byte v2, v0, v1

    new-array v3, v5, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v5

    aput v4, v3, v8

    const/16 v4, 0x30

    .line 39
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2e

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v5

    aput v6, v4, v8

    .line 40
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2f

    new-array v4, v5, [I

    shr-int/lit8 v2, v2, 0x5

    and-int/2addr v2, v5

    aput v2, v4, v8

    .line 41
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v5, [I

    .line 42
    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    aput v0, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

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

    const/16 p3, 0x95

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

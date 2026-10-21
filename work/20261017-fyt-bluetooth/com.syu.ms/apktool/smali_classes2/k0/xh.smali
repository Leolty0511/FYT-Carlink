.class public Lk0/xh;
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
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 6
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->e:I

    .line 7
    iput v2, v0, Lk0/mt;->f:I

    .line 8
    iput v2, v0, Lk0/mt;->g:I

    .line 9
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p1

    .line 1
    aget-byte v1, v0, p2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/16 v3, 0x21

    const/16 v4, 0xb

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v3, :cond_3

    const/16 v3, 0x30

    if-eq v1, v3, :cond_2

    const/16 v3, 0x7d

    if-eq v1, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, v0, v1

    and-int/2addr v1, v2

    if-eq v1, v8, :cond_1

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v1, p2, 0x3

    .line 3
    aget-byte v3, v0, v1

    shr-int/2addr v3, v5

    and-int/2addr v3, v8

    aget-byte v5, v0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/2addr v5, v8

    invoke-static {v3, v5, v7}, Ll0/c0;->a(III)V

    .line 4
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v5, 0x419

    new-array v6, v6, [I

    aput v4, v6, v7

    aget-byte v0, v0, v1

    and-int/2addr v0, v2

    aput v0, v6, v8

    const/4 v0, 0x0

    invoke-static {v3, v5, v6, v0, v0}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5
    :cond_2
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v1}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v1, p2, 0x2

    .line 6
    aget-byte v1, v0, v1

    add-int/lit8 v3, p2, 0x3

    .line 7
    aget-byte v3, v0, v3

    add-int/lit8 v9, p2, 0x4

    .line 8
    aget-byte v9, v0, v9

    add-int/lit8 v10, p2, 0x5

    .line 9
    aget-byte v11, v0, v10

    add-int/lit8 v12, p2, 0x6

    .line 10
    aget-byte v13, v0, v12

    const/16 v14, 0xa

    new-array v15, v8, [I

    shr-int/lit8 v16, v1, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v7

    .line 11
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    new-array v14, v8, [I

    shr-int/lit8 v15, v1, 0x3

    and-int/2addr v15, v8

    aput v15, v14, v7

    .line 12
    invoke-static {v4, v14}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xc

    new-array v14, v8, [I

    shr-int/lit8 v15, v1, 0x2

    and-int/2addr v15, v8

    aput v15, v14, v7

    .line 13
    invoke-static {v4, v14}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xd

    new-array v14, v8, [I

    shr-int/lit8 v15, v1, 0x6

    and-int/2addr v15, v8

    aput v15, v14, v7

    .line 14
    invoke-static {v4, v14}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x10

    new-array v14, v8, [I

    shr-int/lit8 v15, v1, 0x0

    and-int/2addr v15, v8

    aput v15, v14, v7

    .line 15
    invoke-static {v4, v14}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x41

    new-array v14, v8, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v8

    aput v1, v14, v7

    .line 16
    invoke-static {v4, v14}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v4, v8, [I

    and-int/2addr v3, v2

    aput v3, v4, v7

    .line 17
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v1, v9, 0xff

    if-eqz v1, :cond_7

    if-eq v1, v8, :cond_6

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    move v3, v7

    move v4, v3

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_4
    move v4, v7

    move v3, v8

    move v5, v3

    goto :goto_1

    :cond_5
    move v3, v7

    move v4, v3

    move v5, v8

    goto :goto_1

    :cond_6
    move v3, v7

    move v4, v8

    goto :goto_0

    :cond_7
    move v3, v7

    move v5, v3

    move v4, v8

    :goto_1
    const/16 v6, 0x12

    new-array v9, v8, [I

    aput v3, v9, v7

    .line 18
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v6, v8, [I

    aput v4, v6, v7

    .line 19
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v8, [I

    aput v5, v4, v7

    .line 20
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v4, v8, [I

    aput v1, v4, v7

    .line 21
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const-string v1, "persist.fyt.reversetemp"

    .line 22
    invoke-static {v1, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 23
    aget-byte v1, v0, v12

    and-int/lit16 v11, v1, 0xff

    .line 24
    aget-byte v0, v0, v10

    and-int/lit16 v13, v0, 0xff

    :cond_8
    and-int/lit16 v0, v11, 0xff

    const/4 v1, -0x3

    const/4 v3, -0x2

    const/16 v4, 0x1b

    if-nez v0, :cond_9

    new-array v0, v8, [I

    aput v3, v0, v7

    .line 25
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    if-ne v0, v2, :cond_a

    new-array v0, v8, [I

    aput v1, v0, v7

    .line 26
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    new-array v5, v8, [I

    aput v0, v5, v7

    .line 27
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    :goto_2
    and-int/lit16 v0, v13, 0xff

    const/16 v4, 0x1c

    if-nez v0, :cond_b

    new-array v0, v8, [I

    aput v3, v0, v7

    .line 28
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    if-ne v0, v2, :cond_c

    new-array v0, v8, [I

    aput v1, v0, v7

    .line 29
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    new-array v1, v8, [I

    aput v0, v1, v7

    .line 30
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

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
    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0x84

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 1
    aget p4, p2, p4

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

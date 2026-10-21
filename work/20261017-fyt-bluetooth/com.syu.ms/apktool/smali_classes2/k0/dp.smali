.class public Lk0/dp;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/dp;->c:I

    const/16 v1, 0xf

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

    const/16 v2, 0xe

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/dp;->d:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x12
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x1a
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x7
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x8
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x20
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x21
    .end array-data

    :array_9
    .array-data 4
        0xb
        0x22
    .end array-data

    :array_a
    .array-data 4
        0xc
        0x23
    .end array-data

    :array_b
    .array-data 4
        0xd
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0xe
        0xc
    .end array-data

    :array_d
    .array-data 4
        0xf
        0x7
    .end array-data

    :array_e
    .array-data 4
        0x10
        0x8
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

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v1, v0, Lk0/mt;->j:I

    .line 8
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x10

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x7

    const/4 v7, 0x2

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v7, :cond_12

    const/4 v11, 0x6

    const/4 v12, 0x4

    const/4 v13, 0x5

    if-eq v2, v4, :cond_5

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_4

    if-eq v2, v12, :cond_3

    if-eq v2, v13, :cond_2

    if-eq v2, v11, :cond_0

    goto/16 :goto_a

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 4
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 5
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 6
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 7
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 8
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v13

    and-int/2addr v1, v10

    aput v1, v2, v9

    .line 9
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_2
    add-int/lit8 v2, p2, 0x2

    .line 10
    aget-byte v4, v1, v2

    shr-int/2addr v4, v10

    and-int/2addr v3, v4

    aget-byte v1, v1, v2

    and-int/2addr v1, v10

    const/16 v2, 0x30

    invoke-static {v3, v9, v1, v2}, Lk0/qt;->j(IIII)V

    goto/16 :goto_a

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 11
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 12
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 13
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 14
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->v1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_a

    .line 15
    :cond_4
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_5
    const/16 v2, 0xa

    new-array v4, v10, [I

    add-int/lit8 v14, p2, 0x2

    .line 16
    aget-byte v15, v1, v14

    shr-int/2addr v15, v6

    and-int/2addr v15, v10

    aput v15, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v4, v10, [I

    .line 17
    aget-byte v15, v1, v14

    shr-int/lit8 v11, v15, 0x6

    and-int/2addr v11, v10

    aput v11, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v4, v10, [I

    .line 18
    aget-byte v11, v1, v14

    shr-int/2addr v11, v13

    and-int/2addr v11, v10

    aput v11, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v4, v10, [I

    .line 19
    aget-byte v11, v1, v14

    shr-int/2addr v11, v9

    and-int/2addr v11, v10

    aput v11, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 20
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    if-eq v2, v10, :cond_a

    if-eq v2, v7, :cond_9

    if-eq v2, v5, :cond_8

    if-eq v2, v12, :cond_7

    if-eq v2, v13, :cond_6

    move v2, v9

    move v4, v2

    :goto_1
    move v5, v4

    goto :goto_2

    :cond_6
    move v4, v9

    move v5, v4

    move v2, v10

    goto :goto_2

    :cond_7
    move v4, v9

    move v2, v10

    move v5, v2

    goto :goto_2

    :cond_8
    move v2, v9

    move v4, v2

    move v5, v10

    goto :goto_2

    :cond_9
    move v2, v9

    move v4, v10

    goto :goto_1

    :cond_a
    move v2, v9

    move v5, v2

    move v4, v10

    :goto_2
    const/16 v7, 0x12

    new-array v11, v10, [I

    aput v2, v11, v9

    .line 21
    invoke-static {v7, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v7, v10, [I

    aput v4, v7, v9

    .line 22
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v10, [I

    aput v5, v4, v9

    .line 23
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x4

    .line 24
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 25
    aget-byte v4, v1, v2

    and-int/2addr v4, v8

    add-int/lit8 v5, p2, 0x6

    .line 26
    aget-byte v7, v1, v5

    and-int/2addr v7, v8

    const-string v11, "persist.fyt.reversetemp"

    .line 27
    invoke-static {v11, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 28
    aget-byte v4, v1, v5

    and-int/2addr v4, v8

    .line 29
    aget-byte v2, v1, v2

    and-int/lit16 v7, v2, 0xff

    :cond_b
    const/4 v2, -0x3

    const/4 v5, -0x2

    const/16 v11, 0x1b

    if-nez v4, :cond_c

    new-array v4, v10, [I

    aput v5, v4, v9

    .line 30
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    if-ne v4, v3, :cond_d

    new-array v4, v10, [I

    aput v2, v4, v9

    .line 31
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array v12, v10, [I

    aput v4, v12, v9

    .line 32
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v4, 0x1c

    if-nez v7, :cond_e

    new-array v2, v10, [I

    aput v5, v2, v9

    .line 33
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    if-ne v7, v3, :cond_f

    new-array v3, v10, [I

    aput v2, v3, v9

    .line 34
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_f
    new-array v2, v10, [I

    aput v7, v2, v9

    .line 35
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    add-int/lit8 v2, p2, 0x7

    .line 36
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    if-eq v1, v8, :cond_11

    if-nez v1, :cond_10

    goto :goto_5

    :cond_10
    mul-int/2addr v1, v13

    add-int/lit16 v1, v1, 0x258

    .line 37
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_a

    .line 38
    :cond_11
    :goto_5
    invoke-static {v9}, Lu0/d;->A3(I)V

    goto/16 :goto_a

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 39
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 40
    aget-byte v1, v1, v5

    and-int/2addr v2, v8

    .line 41
    iput v2, v0, Lk0/dp;->c:I

    move v2, v9

    .line 42
    :goto_6
    iget-object v5, v0, Lk0/dp;->d:[[I

    array-length v7, v5

    if-ge v2, v7, :cond_14

    .line 43
    iget v7, v0, Lk0/dp;->c:I

    aget-object v11, v5, v2

    aget v11, v11, v9

    if-ne v7, v11, :cond_13

    if-eqz v7, :cond_14

    .line 44
    iput v2, v0, Lk0/dp;->b:I

    goto :goto_7

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 45
    :cond_14
    :goto_7
    iget v7, v0, Lk0/dp;->c:I

    const/16 v11, 0xf

    if-eq v7, v11, :cond_19

    if-eq v7, v3, :cond_17

    and-int/2addr v1, v8

    if-ne v1, v10, :cond_15

    .line 46
    array-length v1, v5

    if-ge v2, v1, :cond_1b

    .line 47
    aget-object v1, v5, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_15
    if-nez v1, :cond_1b

    .line 48
    iget v1, v0, Lk0/dp;->b:I

    array-length v2, v5

    if-ge v1, v2, :cond_16

    if-eq v1, v8, :cond_16

    .line 49
    aget-object v1, v5, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 50
    :cond_16
    iput v8, v0, Lk0/dp;->b:I

    goto :goto_a

    :cond_17
    move v2, v9

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_18

    .line 51
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 52
    :cond_18
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_19
    move v2, v9

    :goto_9
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1a

    .line 53
    invoke-static {v6, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 54
    :cond_1a
    invoke-static {v6, v10}, Ll0/b0;->l0(II)V

    :cond_1b
    :goto_a
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
    .locals 0

    return-void
.end method

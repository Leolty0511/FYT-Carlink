.class public Lk0/ol;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:[I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lk0/ol;->b:[I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk0/ol;->c:I

    return-void

    nop

    :array_0
    .array-data 4
        0x22
        0xcc
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
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 14

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v3, :cond_b

    const/16 v6, 0x24

    const/4 v7, 0x2

    if-eq v0, v6, :cond_9

    const/16 v1, 0x26

    if-eq v0, v1, :cond_8

    const/16 v6, 0x55

    if-eq v0, v6, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/lit8 v0, p2, 0x2

    .line 2
    aget-byte v6, p1, v0

    add-int/lit8 v8, p2, 0x3

    .line 3
    aget-byte v9, p1, v8

    add-int/lit8 v10, p2, 0x4

    .line 4
    aget-byte v10, p1, v10

    add-int/lit8 v11, p2, 0x7

    .line 5
    aget-byte v11, p1, v11

    add-int/lit8 v12, p2, 0x6

    .line 6
    aget-byte v12, p1, v12

    const-string v13, "persist.fyt.reversetemp"

    .line 7
    invoke-static {v13, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 8
    aget-byte v6, p1, v8

    .line 9
    aget-byte v9, p1, v0

    :cond_1
    const/16 v0, 0x1b

    new-array v8, v5, [I

    and-int/lit16 v6, v6, 0xff

    aput v6, v8, v4

    .line 10
    invoke-static {v0, v8}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x1c

    new-array v6, v5, [I

    and-int/lit16 v8, v9, 0xff

    aput v8, v6, v4

    .line 11
    invoke-static {v0, v6}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x15

    new-array v6, v5, [I

    and-int/lit8 v8, v10, 0xf

    aput v8, v6, v4

    .line 12
    invoke-static {v0, v6}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x4d

    new-array v6, v5, [I

    shr-int/lit8 v8, v10, 0x4

    and-int/lit8 v8, v8, 0xf

    aput v8, v6, v4

    .line 13
    invoke-static {v0, v6}, Lk0/qt;->y0(I[I)V

    const/4 v0, 0x6

    if-eq v8, v5, :cond_6

    if-eq v8, v7, :cond_5

    if-eq v8, v3, :cond_4

    if-eq v8, v2, :cond_3

    if-eq v8, v0, :cond_2

    move v2, v4

    move v6, v2

    :goto_0
    move v7, v6

    goto :goto_1

    :cond_2
    move v6, v4

    move v7, v6

    move v2, v5

    goto :goto_1

    :cond_3
    move v6, v4

    move v2, v5

    move v7, v2

    goto :goto_1

    :cond_4
    move v2, v4

    move v6, v2

    move v7, v5

    goto :goto_1

    :cond_5
    move v2, v4

    move v6, v5

    goto :goto_0

    :cond_6
    move v2, v4

    move v7, v2

    move v6, v5

    :goto_1
    const/16 v8, 0x12

    new-array v9, v5, [I

    aput v2, v9, v4

    .line 14
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v8, v5, [I

    aput v6, v8, v4

    .line 15
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v6, v5, [I

    aput v7, v6, v4

    .line 16
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v6, v5, [I

    shr-int/lit8 v7, v12, 0x0

    and-int/2addr v7, v5

    aput v7, v6, v4

    .line 17
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v6, v5, [I

    shr-int/lit8 v7, v12, 0x1

    and-int/2addr v7, v5

    aput v7, v6, v4

    .line 18
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v6, v5, [I

    shr-int/lit8 v7, v12, 0x2

    and-int/2addr v7, v5

    aput v7, v6, v4

    .line 19
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v6, v5, [I

    shr-int/lit8 v7, v12, 0x5

    and-int/2addr v7, v5

    aput v7, v6, v4

    .line 20
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v6, v5, [I

    shr-int/lit8 v0, v12, 0x6

    and-int/2addr v0, v5

    aput v0, v6, v4

    .line 21
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xc

    new-array v2, v5, [I

    shr-int/lit8 v6, v11, 0x0

    and-int/2addr v6, v3

    aput v6, v2, v4

    .line 22
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v2, v11, 0x3

    and-int/2addr v2, v5

    aput v2, v0, v4

    .line 23
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x9

    .line 24
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_7

    .line 25
    invoke-static {v4}, Lu0/d;->A3(I)V

    goto/16 :goto_4

    :cond_7
    mul-int/lit8 v0, v0, 0xa

    add-int/lit16 v0, v0, 0x258

    .line 26
    invoke-static {v0}, Lu0/d;->A3(I)V

    goto/16 :goto_4

    :cond_8
    add-int/lit8 v0, p2, 0x2

    .line 27
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    const/16 v2, 0x17c

    invoke-static {v0, v1, v4, v2}, Lk0/qt;->k(IIZI)V

    goto/16 :goto_4

    :cond_9
    add-int/lit8 v0, p2, 0x2

    .line 28
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const-string v6, "persist.syu.reversefrontdoor"

    .line 29
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_a

    new-array v6, v5, [I

    shr-int/lit8 v8, v0, 0x1

    and-int/2addr v8, v5

    aput v8, v6, v4

    .line 30
    invoke-static {v7, v6}, Lk0/qt;->y0(I[I)V

    new-array v6, v5, [I

    shr-int/lit8 v7, v0, 0x0

    and-int/2addr v7, v5

    aput v7, v6, v4

    .line 31
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    new-array v6, v5, [I

    shr-int/lit8 v8, v0, 0x0

    and-int/2addr v8, v5

    aput v8, v6, v4

    .line 32
    invoke-static {v7, v6}, Lk0/qt;->y0(I[I)V

    new-array v6, v5, [I

    shr-int/lit8 v7, v0, 0x1

    and-int/2addr v7, v5

    aput v7, v6, v4

    .line 33
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v6, v5, [I

    shr-int/lit8 v7, v0, 0x3

    and-int/2addr v7, v5

    aput v7, v6, v4

    .line 34
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v6, v0, 0x2

    and-int/2addr v6, v5

    aput v6, v2, v4

    .line 35
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v3, v0, 0x4

    and-int/2addr v3, v5

    aput v3, v2, v4

    .line 36
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/2addr v0, v1

    and-int/2addr v0, v5

    aput v0, v2, v4

    .line 37
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_b
    add-int/lit8 v0, p2, 0x6

    .line 38
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ll0/c0;->M0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    add-int/lit8 v0, p2, 0x7

    .line 39
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ll0/c0;->M0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    add-int/lit8 v0, p2, 0x8

    .line 40
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ll0/c0;->M0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->T2(I)V

    add-int/lit8 v0, p2, 0x9

    .line 41
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ll0/c0;->M0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->U2(I)V

    add-int/lit8 v0, p2, 0x2

    .line 42
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v6, p2, 0x3

    .line 43
    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, p2, 0x4

    .line 44
    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v1, p2, 0x5

    .line 45
    aget-byte v10, p1, v1

    and-int/lit16 v10, v10, 0xff

    if-nez v3, :cond_c

    if-nez v7, :cond_c

    if-nez v9, :cond_c

    if-nez v10, :cond_c

    .line 46
    invoke-static {v4}, Lu0/d;->C2(I)V

    goto :goto_3

    .line 47
    :cond_c
    sget v4, Ll0/c0;->g:I

    if-ne v4, v3, :cond_d

    sget v4, Ll0/c0;->h:I

    if-ne v4, v7, :cond_d

    sget v4, Ll0/c0;->i:I

    if-ne v4, v9, :cond_d

    sget v4, Ll0/c0;->j:I

    if-eq v4, v10, :cond_e

    .line 48
    :cond_d
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_e

    .line 49
    invoke-static {v5}, Lu0/d;->C2(I)V

    .line 50
    sput v2, Ll0/c0;->k:I

    .line 51
    sget-object v2, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 52
    :cond_e
    :goto_3
    sput v3, Ll0/c0;->g:I

    .line 53
    sput v7, Ll0/c0;->h:I

    .line 54
    sput v9, Ll0/c0;->i:I

    .line 55
    sput v10, Ll0/c0;->j:I

    .line 56
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ll0/c0;->M0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->D2(I)V

    .line 57
    aget-byte v0, p1, v6

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ll0/c0;->M0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->E2(I)V

    .line 58
    aget-byte v0, p1, v8

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ll0/c0;->M0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->F2(I)V

    .line 59
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ll0/c0;->M0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    :goto_4
    return-void
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x61

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
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 1
    array-length v2, v1

    if-lez v2, :cond_1

    const/16 v2, 0x8

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v3, v4

    const/4 v6, 0x1

    const/16 v7, 0x33

    aput v7, v3, v6

    const/4 v8, 0x2

    const/4 v9, 0x5

    aput v9, v3, v8

    .line 2
    aget v10, v1, v4

    const/4 v11, 0x3

    aput v10, v3, v11

    iget-object v10, v0, Lk0/ol;->b:[I

    iget v12, v0, Lk0/ol;->c:I

    rem-int/2addr v12, v8

    aget v10, v10, v12

    const/4 v12, 0x4

    aput v10, v3, v12

    const/16 v10, 0x25

    aput v10, v3, v9

    const/4 v13, 0x6

    aput v4, v3, v13

    const/4 v14, 0x7

    const/16 v15, 0xaa

    aput v15, v3, v14

    invoke-static {v3}, Lz/k;->s([I)V

    new-array v3, v2, [I

    aput v5, v3, v4

    aput v7, v3, v6

    aput v9, v3, v8

    .line 3
    aget v16, v1, v4

    aput v16, v3, v11

    iget-object v11, v0, Lk0/ol;->b:[I

    iget v6, v0, Lk0/ol;->c:I

    rem-int/2addr v6, v8

    aget v6, v11, v6

    aput v6, v3, v12

    aput v10, v3, v9

    aput v4, v3, v13

    aput v15, v3, v14

    invoke-static {v3}, Lz/k;->s([I)V

    new-array v2, v2, [I

    aput v5, v2, v4

    const/4 v3, 0x1

    aput v7, v2, v3

    aput v9, v2, v8

    .line 4
    aget v1, v1, v4

    const/4 v3, 0x3

    aput v1, v2, v3

    iget-object v1, v0, Lk0/ol;->b:[I

    iget v3, v0, Lk0/ol;->c:I

    rem-int/2addr v3, v8

    aget v1, v1, v3

    aput v1, v2, v12

    aput v10, v2, v9

    aput v4, v2, v13

    aput v15, v2, v14

    invoke-static {v2}, Lz/k;->s([I)V

    .line 5
    iget v1, v0, Lk0/ol;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/ol;->c:I

    .line 6
    rem-int/2addr v1, v8

    iput v1, v0, Lk0/ol;->c:I

    :cond_1
    :goto_0
    return-void
.end method

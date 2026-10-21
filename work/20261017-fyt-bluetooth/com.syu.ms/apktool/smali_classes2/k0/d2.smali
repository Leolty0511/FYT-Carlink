.class public Lk0/d2;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/d2;->c:I

    const/16 v1, 0x8

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/d2;->d:[[I

    .line 4
    iput v0, p0, Lk0/d2;->e:I

    .line 5
    iput v0, p0, Lk0/d2;->f:I

    .line 6
    new-instance v0, Lk0/d2$a;

    invoke-direct {v0, p0}, Lk0/d2$a;-><init>(Lk0/d2;)V

    iput-object v0, p0, Lk0/d2;->g:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x11
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x14
        0x7
    .end array-data

    :array_4
    .array-data 4
        0x15
        0x8
    .end array-data

    :array_5
    .array-data 4
        0x16
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x31
        0x1a
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

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iget-object v0, p0, Lk0/d2;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    add-int/lit8 v1, p2, 0x1

    .line 1
    aget-byte v1, p1, v1

    const/16 v3, 0x14

    const/16 v4, 0x41

    const/16 v5, 0xc

    const/16 v6, 0x13

    const/16 v7, 0x10

    const/4 v8, -0x3

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/16 v11, 0x1b

    const/16 v12, 0xff

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v1, v7, :cond_c

    const/16 v15, 0x30

    if-eq v1, v15, :cond_b

    const/16 v15, 0x32

    if-eq v1, v15, :cond_a

    const/16 v15, 0x12

    if-eq v1, v15, :cond_5

    if-eq v1, v6, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    add-int/lit8 v15, p2, 0x4

    .line 3
    aget-byte v15, p1, v15

    add-int/lit8 v16, p2, 0x5

    .line 4
    aget-byte v16, p1, v16

    and-int/lit8 v16, v16, 0xf

    and-int/lit16 v2, v15, 0x80

    if-nez v2, :cond_4

    if-eq v1, v10, :cond_3

    if-eq v1, v9, :cond_2

    if-eqz v1, :cond_1

    new-array v2, v14, [I

    and-int/2addr v1, v12

    mul-int/lit8 v1, v1, 0xa

    add-int v1, v1, v16

    aput v1, v2, v13

    .line 5
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v1, v14, [I

    aput v10, v1, v13

    .line 6
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v1, v14, [I

    aput v8, v1, v13

    .line 7
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v1, v14, [I

    aput v9, v1, v13

    .line 8
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    :cond_4
    :goto_0
    add-int/lit8 v1, p2, 0x3

    .line 9
    aget-byte v1, p1, v1

    new-array v2, v14, [I

    shr-int/lit8 v8, v1, 0x7

    and-int/2addr v8, v14

    aput v8, v2, v13

    .line 10
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v14

    aput v5, v2, v13

    .line 11
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v14

    aput v4, v2, v13

    .line 12
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v14

    aput v4, v2, v13

    .line 13
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v14

    aput v3, v2, v13

    .line 14
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v14

    aput v3, v2, v13

    const/16 v3, 0xd

    .line 15
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v3, v14, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v14

    aput v4, v3, v13

    .line 16
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v3, v14, [I

    shr-int/2addr v1, v13

    and-int/2addr v1, v14

    aput v1, v3, v13

    .line 17
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v2, v14, [I

    and-int/lit8 v3, v15, 0xf

    aput v3, v2, v13

    .line 18
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    .line 19
    :cond_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_19

    add-int/lit8 v1, p2, 0x2

    .line 20
    aget-byte v1, p1, v1

    and-int/2addr v1, v12

    .line 21
    iput v1, v0, Lk0/d2;->c:I

    move v2, v13

    .line 22
    :goto_1
    iget-object v3, v0, Lk0/d2;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_7

    .line 23
    iget v4, v0, Lk0/d2;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v13

    if-ne v4, v5, :cond_6

    if-eqz v4, :cond_7

    .line 24
    iput v2, v0, Lk0/d2;->b:I

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    .line 25
    array-length v1, v3

    if-ge v2, v1, :cond_19

    .line 26
    aget-object v1, v3, v2

    aget v1, v1, v14

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    .line 27
    :cond_8
    iget v1, v0, Lk0/d2;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_9

    if-eq v1, v12, :cond_9

    .line 28
    aget-object v1, v3, v1

    aget v1, v1, v14

    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    .line 29
    :cond_9
    iput v12, v0, Lk0/d2;->b:I

    goto/16 :goto_6

    .line 30
    :cond_a
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_19

    add-int/lit8 v1, p2, 0x2

    .line 31
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 32
    aget-byte v2, p1, v2

    and-int/2addr v1, v12

    .line 33
    iput v1, v0, Lk0/d2;->e:I

    and-int/2addr v2, v12

    .line 34
    iput v2, v0, Lk0/d2;->f:I

    add-int/lit8 v3, p2, 0x4

    .line 35
    aget-byte v3, p1, v3

    invoke-static {v3, v1, v2}, Ll0/e0;->o(III)I

    move-result v1

    invoke-static {v1}, Lu0/d;->R2(I)V

    add-int/lit8 v1, p2, 0x5

    .line 36
    aget-byte v1, p1, v1

    iget v2, v0, Lk0/d2;->e:I

    iget v3, v0, Lk0/d2;->f:I

    invoke-static {v1, v2, v3}, Ll0/e0;->o(III)I

    move-result v1

    invoke-static {v1}, Lu0/d;->S2(I)V

    add-int/lit8 v1, p2, 0x6

    .line 37
    aget-byte v1, p1, v1

    iget v2, v0, Lk0/d2;->e:I

    iget v3, v0, Lk0/d2;->f:I

    invoke-static {v1, v2, v3}, Ll0/e0;->o(III)I

    move-result v1

    invoke-static {v1}, Lu0/d;->T2(I)V

    add-int/lit8 v1, p2, 0x7

    .line 38
    aget-byte v1, p1, v1

    iget v2, v0, Lk0/d2;->e:I

    iget v3, v0, Lk0/d2;->f:I

    invoke-static {v1, v2, v3}, Ll0/e0;->o(III)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_6

    :cond_b
    add-int/lit8 v1, p2, 0x3

    .line 39
    aget-byte v1, p1, v1

    and-int/2addr v1, v12

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/2addr v2, v12

    const/16 v3, 0x1388

    invoke-static {v1, v2, v13, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_6

    :cond_c
    add-int/lit8 v1, p2, 0x2

    .line 40
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 41
    aget-byte v2, p1, v2

    add-int/lit8 v15, p2, 0x4

    .line 42
    aget-byte v15, p1, v15

    add-int/lit8 v16, p2, 0x5

    .line 43
    aget-byte v16, p1, v16

    add-int/lit8 v17, p2, 0x7

    .line 44
    aget-byte v6, p1, v17

    .line 45
    sget v3, Lk0/nt;->c:I

    const/16 v7, 0x1c

    if-ne v3, v14, :cond_f

    if-nez v1, :cond_d

    new-array v1, v14, [I

    aput v10, v1, v13

    .line 46
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v14, [I

    aput v10, v1, v13

    .line 47
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_d
    if-ne v1, v9, :cond_e

    new-array v1, v14, [I

    aput v8, v1, v13

    .line 48
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v14, [I

    aput v8, v1, v13

    .line 49
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_e
    new-array v3, v14, [I

    and-int/2addr v1, v12

    mul-int/lit8 v1, v1, 0xa

    and-int/lit8 v6, v16, 0xf

    add-int/2addr v1, v6

    aput v1, v3, v13

    .line 50
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v14, [I

    aput v1, v3, v13

    .line 51
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_f
    const-string v3, "persist.fyt.reversetemp"

    .line 52
    invoke-static {v3, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_14

    if-nez v1, :cond_10

    new-array v1, v14, [I

    aput v10, v1, v13

    .line 53
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_10
    if-ne v1, v9, :cond_11

    new-array v1, v14, [I

    aput v8, v1, v13

    .line 54
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_11
    new-array v3, v14, [I

    and-int/2addr v1, v12

    mul-int/lit8 v1, v1, 0xa

    shr-int/lit8 v18, v16, 0x4

    and-int/lit8 v18, v18, 0xf

    add-int v1, v1, v18

    aput v1, v3, v13

    .line 55
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    :goto_3
    if-nez v6, :cond_12

    new-array v1, v14, [I

    aput v10, v1, v13

    .line 56
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_12
    if-ne v6, v9, :cond_13

    new-array v1, v14, [I

    aput v8, v1, v13

    .line 57
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_13
    new-array v1, v14, [I

    and-int/lit16 v3, v6, 0xff

    mul-int/lit8 v3, v3, 0xa

    and-int/lit8 v6, v16, 0xf

    add-int/2addr v3, v6

    aput v3, v1, v13

    .line 58
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_14
    if-nez v1, :cond_15

    new-array v1, v14, [I

    aput v10, v1, v13

    .line 59
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_15
    if-ne v1, v9, :cond_16

    new-array v1, v14, [I

    aput v8, v1, v13

    .line 60
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_16
    new-array v3, v14, [I

    and-int/2addr v1, v12

    mul-int/lit8 v1, v1, 0xa

    shr-int/lit8 v18, v16, 0x4

    and-int/lit8 v18, v18, 0xf

    add-int v1, v1, v18

    aput v1, v3, v13

    .line 61
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    :goto_4
    if-nez v6, :cond_17

    new-array v1, v14, [I

    aput v10, v1, v13

    .line 62
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_17
    if-ne v6, v9, :cond_18

    new-array v1, v14, [I

    aput v8, v1, v13

    .line 63
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_18
    new-array v1, v14, [I

    and-int/lit16 v3, v6, 0xff

    mul-int/lit8 v3, v3, 0xa

    and-int/lit8 v6, v16, 0xf

    add-int/2addr v3, v6

    aput v3, v1, v13

    .line 64
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array v1, v14, [I

    shr-int/lit8 v3, v2, 0x7

    and-int/2addr v3, v14

    aput v3, v1, v13

    .line 65
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v14, [I

    shr-int/lit8 v3, v2, 0x6

    and-int/2addr v3, v14

    aput v3, v1, v13

    .line 66
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v14, [I

    shr-int/lit8 v3, v2, 0x5

    and-int/2addr v3, v14

    aput v3, v1, v13

    const/16 v3, 0x10

    .line 67
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v14, [I

    shr-int/lit8 v3, v2, 0x4

    and-int/2addr v3, v14

    aput v3, v1, v13

    const/16 v3, 0x14

    .line 68
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v14, [I

    shr-int/lit8 v3, v2, 0x3

    and-int/2addr v3, v14

    aput v3, v1, v13

    const/16 v3, 0x13

    .line 69
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v14, [I

    shr-int/lit8 v3, v2, 0x2

    and-int/2addr v3, v14

    aput v3, v1, v13

    const/16 v3, 0xd

    .line 70
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x34

    new-array v3, v14, [I

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v14

    aput v4, v3, v13

    .line 71
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v3, v14, [I

    shr-int/2addr v2, v13

    and-int/2addr v2, v14

    aput v2, v3, v13

    .line 72
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v2, v14, [I

    shr-int/lit8 v3, v15, 0x5

    and-int/2addr v3, v14

    aput v3, v2, v13

    .line 73
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v2, v14, [I

    shr-int/lit8 v3, v15, 0x0

    and-int/lit8 v3, v3, 0xf

    aput v3, v2, v13

    .line 74
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :cond_19
    :goto_6
    return-void
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/d2;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

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

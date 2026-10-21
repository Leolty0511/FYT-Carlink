.class public Lk0/pk;
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

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/pk;->c:I

    const/16 v1, 0x8

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v7, 0x3

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v8, 0x4

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v9, 0x5

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v10, 0x6

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v11, 0x7

    aput-object v4, v2, v11

    iput-object v2, p0, Lk0/pk;->d:[[I

    .line 4
    iput v0, p0, Lk0/pk;->f:I

    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v2, v3, [I

    .line 5
    fill-array-data v2, :array_8

    aput-object v2, v0, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v8

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v9

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v10

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v11

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    iput-object v0, p0, Lk0/pk;->g:[[I

    .line 6
    iput v5, p0, Lk0/pk;->h:I

    .line 7
    iput v5, p0, Lk0/pk;->i:I

    .line 8
    new-instance v0, Lk0/pk$a;

    invoke-direct {v0, p0}, Lk0/pk$a;-><init>(Lk0/pk;)V

    iput-object v0, p0, Lk0/pk;->j:Ljava/lang/Runnable;

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
        0x5
        0x12
    .end array-data

    :array_4
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_5
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_6
    .array-data 4
        0xe
        0x4
    .end array-data

    :array_7
    .array-data 4
        0x17
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_b
    .array-data 4
        0x10
        0x10
    .end array-data

    :array_c
    .array-data 4
        0x24
        0x36
    .end array-data

    :array_d
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_e
    .array-data 4
        0x33
        0x18
    .end array-data

    :array_f
    .array-data 4
        0x5b
        0x19
    .end array-data

    :array_10
    .array-data 4
        0x5c
        0x40
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

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Lk0/mt;->e:I

    .line 5
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/pk;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        0x26
        0x26
        0x9
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x3
        0x6a
        0x5
        0x1
        0x0
    .end array-data
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

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x31

    const/16 v5, 0x12

    const/16 v6, 0x41

    const/16 v7, 0x8

    const/4 v8, 0x3

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/16 v11, 0xff

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v2, v3, :cond_18

    if-eq v2, v6, :cond_17

    const/16 v3, 0x11

    if-eq v2, v3, :cond_11

    if-eq v2, v5, :cond_f

    const/16 v3, 0x21

    if-eq v2, v3, :cond_b

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    goto/16 :goto_e

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v1, v1, v3

    if-eq v2, v13, :cond_6

    if-eq v2, v4, :cond_1

    goto/16 :goto_e

    .line 4
    :cond_1
    iget v2, v0, Lk0/pk;->i:I

    if-eq v1, v2, :cond_20

    if-le v1, v2, :cond_3

    move v2, v12

    .line 5
    :goto_0
    iget v3, v0, Lk0/pk;->i:I

    sub-int v3, v1, v3

    const/16 v4, 0x1f

    if-ge v2, v3, :cond_2

    .line 6
    invoke-static {v4, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v4, v13}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_3
    if-ge v1, v2, :cond_5

    move v2, v12

    .line 8
    :goto_1
    iget v3, v0, Lk0/pk;->i:I

    sub-int/2addr v3, v1

    const/16 v4, 0x1e

    if-ge v2, v3, :cond_4

    .line 9
    invoke-static {v4, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_4
    invoke-static {v4, v13}, Ll0/b0;->l0(II)V

    .line 11
    :cond_5
    :goto_2
    iput v1, v0, Lk0/pk;->i:I

    goto/16 :goto_e

    .line 12
    :cond_6
    iget v2, v0, Lk0/pk;->h:I

    if-eq v1, v2, :cond_20

    if-le v1, v2, :cond_8

    move v2, v12

    .line 13
    :goto_3
    iget v3, v0, Lk0/pk;->h:I

    sub-int v3, v1, v3

    const/4 v4, 0x7

    if-ge v2, v3, :cond_7

    .line 14
    invoke-static {v4, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 15
    :cond_7
    invoke-static {v4, v13}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_8
    if-ge v1, v2, :cond_a

    move v2, v12

    .line 16
    :goto_4
    iget v3, v0, Lk0/pk;->h:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_9

    .line 17
    invoke-static {v7, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 18
    :cond_9
    invoke-static {v7, v13}, Ll0/b0;->l0(II)V

    .line 19
    :cond_a
    :goto_5
    iput v1, v0, Lk0/pk;->h:I

    goto/16 :goto_e

    :cond_b
    add-int/lit8 v2, p2, 0x2

    .line 20
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    add-int/lit8 v3, p2, 0x3

    .line 21
    aget-byte v1, v1, v3

    and-int/2addr v1, v11

    and-int/2addr v2, v11

    .line 22
    iput v2, v0, Lk0/pk;->f:I

    move v2, v12

    .line 23
    :goto_6
    iget-object v3, v0, Lk0/pk;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 24
    iget v4, v0, Lk0/pk;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v12

    if-ne v4, v5, :cond_c

    if-eqz v4, :cond_d

    .line 25
    iput v2, v0, Lk0/pk;->e:I

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    and-int/2addr v1, v11

    if-ne v1, v13, :cond_e

    .line 26
    array-length v1, v3

    if-ge v2, v1, :cond_20

    .line 27
    aget-object v1, v3, v2

    aget v1, v1, v13

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_e
    if-nez v1, :cond_20

    .line 28
    array-length v1, v3

    if-gt v2, v1, :cond_20

    .line 29
    iget v1, v0, Lk0/pk;->e:I

    aget-object v1, v3, v1

    aget v1, v1, v13

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_f
    add-int/lit8 v2, p2, 0x4

    .line 30
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 31
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_10

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 32
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 33
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_10
    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 34
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 35
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 36
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 37
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 38
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v13

    aput v1, v2, v12

    .line 39
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_11
    add-int/lit8 v2, p2, 0x4

    .line 40
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    iput v2, v0, Lk0/pk;->c:I

    move v2, v12

    .line 41
    :goto_9
    iget-object v3, v0, Lk0/pk;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_13

    .line 42
    iget v4, v0, Lk0/pk;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v12

    if-ne v4, v5, :cond_12

    if-eqz v4, :cond_13

    .line 43
    iput v2, v0, Lk0/pk;->b:I

    goto :goto_a

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 44
    :cond_13
    :goto_a
    iget v4, v0, Lk0/pk;->c:I

    if-eqz v4, :cond_14

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    if-eqz v4, :cond_14

    .line 45
    array-length v4, v3

    if-ge v2, v4, :cond_16

    .line 46
    aget-object v2, v3, v2

    aget v2, v2, v13

    invoke-static {v2, v12}, Ll0/b0;->l0(II)V

    goto :goto_b

    .line 47
    :cond_14
    iget v2, v0, Lk0/pk;->b:I

    if-eq v2, v11, :cond_15

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    if-nez v4, :cond_15

    .line 48
    aget-object v2, v3, v2

    aget v2, v2, v13

    invoke-static {v2, v13}, Ll0/b0;->l0(II)V

    .line 49
    :cond_15
    iput v11, v0, Lk0/pk;->b:I

    :cond_16
    :goto_b
    add-int/lit8 v2, p2, 0x9

    .line 50
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v13, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_e

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 51
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/h0;->s(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 52
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/h0;->s(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 53
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/h0;->s(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 54
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/h0;->s(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 55
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/h0;->r(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 56
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    invoke-static {v1}, Ll0/h0;->r(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_e

    :cond_18
    add-int/lit8 v2, p2, 0x2

    .line 57
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 58
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 59
    aget-byte v4, v1, v4

    add-int/lit8 v14, p2, 0x5

    .line 60
    aget-byte v14, v1, v14

    add-int/lit8 v14, p2, 0x6

    .line 61
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x7

    .line 62
    aget-byte v15, v1, v15

    add-int/lit8 v7, p2, 0x8

    .line 63
    aget-byte v1, v1, v7

    const/16 v7, 0xa

    new-array v5, v13, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v5, v12

    .line 64
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x2a

    new-array v7, v13, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v13

    aput v2, v7, v12

    .line 65
    invoke-static {v5, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v5, v13, [I

    shr-int/lit8 v7, v3, 0x6

    and-int/2addr v7, v13

    aput v7, v5, v12

    .line 66
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/2addr v3, v10

    and-int/2addr v3, v13

    aput v3, v2, v12

    const/16 v3, 0xc

    .line 67
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v5, v13, [I

    shr-int/lit8 v7, v4, 0x5

    and-int/2addr v7, v13

    aput v7, v5, v12

    .line 68
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/2addr v4, v10

    and-int/2addr v4, v13

    aput v4, v2, v12

    .line 69
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v14, 0xff

    if-eq v2, v8, :cond_1c

    if-eq v2, v3, :cond_1b

    if-eq v2, v9, :cond_1a

    const/4 v3, 0x6

    if-eq v2, v3, :cond_19

    move v2, v12

    move v3, v2

    :goto_c
    move v4, v3

    goto :goto_d

    :cond_19
    move v2, v12

    move v4, v2

    move v3, v13

    goto :goto_d

    :cond_1a
    move v2, v12

    move v3, v13

    goto :goto_c

    :cond_1b
    move v3, v12

    move v2, v13

    move v4, v2

    goto :goto_d

    :cond_1c
    move v2, v12

    move v3, v2

    move v4, v13

    :goto_d
    new-array v5, v13, [I

    aput v2, v5, v12

    const/16 v2, 0x12

    .line 70
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v13, [I

    aput v3, v5, v12

    .line 71
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v13, [I

    aput v4, v3, v12

    .line 72
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v13, [I

    and-int/lit16 v4, v15, 0xff

    aput v4, v3, v12

    .line 73
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v1, 0xff

    const/4 v3, -0x2

    const/16 v4, 0x1b

    if-ne v1, v3, :cond_1d

    new-array v1, v13, [I

    aput v3, v1, v12

    .line 74
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_1d
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1e

    new-array v1, v13, [I

    const/4 v2, -0x3

    aput v2, v1, v12

    .line 75
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_1e
    new-array v1, v13, [I

    aput v2, v1, v12

    .line 76
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    .line 77
    :cond_1f
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_20
    :goto_e
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/pk;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

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
    .locals 0

    return-void
.end method

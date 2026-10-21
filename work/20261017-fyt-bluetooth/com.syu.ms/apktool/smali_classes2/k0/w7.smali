.class public Lk0/w7;
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
    iput v0, p0, Lk0/w7;->c:I

    const/16 v1, 0xc

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

    const/16 v2, 0xb

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/w7;->d:[[I

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
        0x4
        0xd
    .end array-data

    :array_3
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x3
    .end array-data

    :array_6
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_7
    .array-data 4
        0xd
        0x22
    .end array-data

    :array_8
    .array-data 4
        0xe
        0x23
    .end array-data

    :array_9
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_a
    .array-data 4
        0x16
        0x20
    .end array-data

    :array_b
    .array-data 4
        0x17
        0x21
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
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x14
        0x3
    .end array-data
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x10

    const/4 v4, 0x2

    if-eq v2, v3, :cond_25

    const/16 v3, 0x11

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_20

    const/16 v8, 0x31

    if-eq v2, v8, :cond_0

    goto/16 :goto_a

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v7

    aput v9, v8, v6

    const/16 v9, 0xa

    .line 3
    invoke-static {v9, v8}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x25

    new-array v9, v7, [I

    shr-int/lit8 v10, v2, 0x2

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 4
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v8, p2, 0x3

    .line 5
    aget-byte v8, v1, v8

    const/16 v9, 0x35

    new-array v10, v7, [I

    shr-int/lit8 v11, v8, 0x6

    and-int/2addr v11, v7

    aput v11, v10, v6

    .line 6
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    new-array v9, v7, [I

    shr-int/lit8 v10, v8, 0x4

    and-int/2addr v10, v7

    aput v10, v9, v6

    const/16 v10, 0xc

    .line 7
    invoke-static {v10, v9}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xd

    new-array v10, v7, [I

    shr-int/lit8 v11, v8, 0x3

    and-int/2addr v11, v7

    aput v11, v10, v6

    .line 8
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xe

    new-array v10, v7, [I

    shr-int/lit8 v11, v8, 0x2

    and-int/2addr v11, v7

    aput v11, v10, v6

    .line 9
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    new-array v9, v7, [I

    shr-int/lit8 v10, v8, 0x1

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 10
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb

    new-array v9, v7, [I

    shr-int/2addr v8, v6

    and-int/2addr v8, v7

    aput v8, v9, v6

    .line 11
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x4

    .line 12
    aget-byte v3, v1, v3

    const/16 v8, 0x10

    new-array v9, v7, [I

    shr-int/lit8 v10, v3, 0x5

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 13
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x41

    new-array v9, v7, [I

    shr-int/lit8 v10, v3, 0x4

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 14
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    new-array v8, v7, [I

    shr-int/lit8 v9, v3, 0x2

    const/4 v10, 0x3

    and-int/2addr v9, v10

    aput v9, v8, v6

    const/16 v9, 0x1e

    .line 15
    invoke-static {v9, v8}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x1d

    new-array v11, v7, [I

    and-int/2addr v3, v10

    aput v3, v11, v6

    .line 16
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x5

    .line 17
    aget-byte v3, v1, v3

    const/16 v8, 0x20

    new-array v11, v7, [I

    shr-int/lit8 v12, v3, 0x2

    and-int/2addr v12, v10

    aput v12, v11, v6

    .line 18
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x1f

    new-array v11, v7, [I

    and-int/2addr v3, v10

    aput v3, v11, v6

    .line 19
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x6

    .line 20
    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    add-int/2addr v3, v7

    const/16 v8, 0x4d

    new-array v11, v7, [I

    aput v3, v11, v6

    .line 21
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    const/4 v8, 0x4

    if-eq v3, v7, :cond_4

    if-eq v3, v4, :cond_3

    if-eq v3, v10, :cond_2

    if-eq v3, v8, :cond_1

    move v3, v6

    move v4, v3

    :goto_0
    move v10, v4

    goto :goto_1

    :cond_1
    move v4, v6

    move v3, v7

    move v10, v3

    goto :goto_1

    :cond_2
    move v3, v6

    move v4, v3

    move v10, v7

    goto :goto_1

    :cond_3
    move v3, v6

    move v4, v7

    goto :goto_0

    :cond_4
    move v3, v6

    move v10, v3

    move v4, v7

    :goto_1
    const/16 v11, 0x12

    new-array v12, v7, [I

    aput v3, v12, v6

    .line 22
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v11, v7, [I

    aput v4, v11, v6

    .line 23
    invoke-static {v3, v11}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v7, [I

    aput v10, v4, v6

    .line 24
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x7

    .line 25
    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    const/4 v4, 0x7

    if-gez v3, :cond_5

    move v3, v6

    goto :goto_2

    :cond_5
    if-le v3, v4, :cond_6

    move v3, v4

    :cond_6
    :goto_2
    const/16 v10, 0x15

    new-array v11, v7, [I

    aput v3, v11, v6

    .line 26
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x8

    .line 27
    aget-byte v10, v1, v3

    add-int/lit8 v11, p2, 0x9

    .line 28
    aget-byte v12, v1, v11

    const-string v13, "persist.fyt.reversetemp"

    .line 29
    invoke-static {v13, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 30
    aget-byte v10, v1, v11

    .line 31
    aget-byte v12, v1, v3

    :cond_7
    and-int/2addr v2, v8

    const/16 v3, 0x77

    const/16 v8, -0x55

    const/16 v11, 0x3c

    const/4 v13, -0x3

    const/4 v14, -0x2

    const/4 v15, -0x1

    const/16 v4, 0x1b

    if-eqz v2, :cond_b

    if-eq v10, v8, :cond_a

    if-eqz v10, :cond_9

    if-eq v10, v3, :cond_8

    new-array v3, v7, [I

    and-int/2addr v10, v5

    aput v10, v3, v6

    .line 32
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array v3, v7, [I

    aput v14, v3, v6

    .line 33
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array v3, v7, [I

    aput v15, v3, v6

    .line 34
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v3, v7, [I

    aput v13, v3, v6

    .line 35
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    if-eqz v10, :cond_e

    if-eq v10, v9, :cond_d

    if-eq v10, v11, :cond_c

    new-array v3, v7, [I

    and-int/2addr v10, v5

    aput v10, v3, v6

    .line 36
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    new-array v3, v7, [I

    aput v13, v3, v6

    .line 37
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array v3, v7, [I

    aput v14, v3, v6

    .line 38
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_e
    new-array v3, v7, [I

    aput v15, v3, v6

    .line 39
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v3, 0x1c

    if-eqz v2, :cond_12

    if-eq v12, v8, :cond_11

    if-eqz v12, :cond_10

    const/16 v4, 0x77

    if-eq v12, v4, :cond_f

    new-array v4, v7, [I

    and-int/lit16 v10, v12, 0xff

    aput v10, v4, v6

    .line 40
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_f
    new-array v4, v7, [I

    aput v14, v4, v6

    .line 41
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_10
    new-array v4, v7, [I

    aput v15, v4, v6

    .line 42
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_11
    new-array v4, v7, [I

    aput v13, v4, v6

    .line 43
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_12
    if-eqz v12, :cond_15

    if-eq v12, v9, :cond_14

    if-eq v12, v11, :cond_13

    new-array v4, v7, [I

    and-int/lit16 v10, v12, 0xff

    aput v10, v4, v6

    .line 44
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_13
    new-array v4, v7, [I

    aput v13, v4, v6

    .line 45
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_14
    new-array v4, v7, [I

    aput v14, v4, v6

    .line 46
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_15
    new-array v4, v7, [I

    aput v15, v4, v6

    .line 47
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_4
    add-int/lit8 v3, p2, 0xa

    .line 48
    aget-byte v3, v1, v3

    const/16 v4, 0x57

    new-array v10, v7, [I

    and-int/2addr v3, v5

    aput v3, v10, v6

    .line 49
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0xb

    .line 50
    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    if-gez v3, :cond_16

    move v4, v6

    goto :goto_5

    :cond_16
    const/4 v4, 0x7

    if-le v3, v4, :cond_17

    goto :goto_5

    :cond_17
    move v4, v3

    :goto_5
    const/16 v3, 0x19

    new-array v10, v7, [I

    aput v4, v10, v6

    .line 51
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0xc

    .line 52
    aget-byte v3, v1, v3

    const/16 v4, 0x28

    if-eqz v2, :cond_1b

    if-eq v3, v8, :cond_1a

    if-eqz v3, :cond_19

    const/16 v2, 0x77

    if-eq v3, v2, :cond_18

    new-array v2, v7, [I

    and-int/2addr v3, v5

    aput v3, v2, v6

    .line 53
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_18
    new-array v2, v7, [I

    aput v14, v2, v6

    .line 54
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_19
    new-array v2, v7, [I

    aput v15, v2, v6

    .line 55
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_1a
    new-array v2, v7, [I

    aput v13, v2, v6

    .line 56
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_1b
    if-eqz v3, :cond_1e

    if-eq v3, v9, :cond_1d

    if-eq v3, v11, :cond_1c

    new-array v2, v7, [I

    and-int/2addr v3, v5

    aput v3, v2, v6

    .line 57
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_1c
    new-array v2, v7, [I

    aput v13, v2, v6

    .line 58
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_1d
    new-array v2, v7, [I

    aput v14, v2, v6

    .line 59
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_1e
    new-array v2, v7, [I

    aput v15, v2, v6

    .line 60
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    .line 61
    :goto_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_26

    add-int/lit8 v2, p2, 0xd

    .line 62
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    const/16 v2, 0x50

    if-lt v1, v2, :cond_1f

    mul-int/lit8 v1, v1, 0x5

    add-int/lit16 v1, v1, 0x3e8

    add-int/lit16 v1, v1, -0x190

    goto :goto_7

    :cond_1f
    mul-int/lit8 v1, v1, 0x5

    rsub-int v1, v1, 0x190

    rsub-int v1, v1, 0x3e8

    :goto_7
    const/16 v2, 0x258

    if-le v1, v2, :cond_26

    .line 63
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_a

    :cond_20
    add-int/lit8 v2, p2, 0x4

    .line 64
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 65
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 66
    iput v2, v0, Lk0/w7;->c:I

    move v2, v6

    .line 67
    :goto_8
    iget-object v3, v0, Lk0/w7;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_22

    .line 68
    iget v4, v0, Lk0/w7;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v6

    if-ne v4, v8, :cond_21

    if-eqz v4, :cond_22

    .line 69
    iput v2, v0, Lk0/w7;->b:I

    goto :goto_9

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_22
    :goto_9
    and-int/2addr v1, v5

    if-eqz v1, :cond_23

    .line 70
    array-length v1, v3

    if-ge v2, v1, :cond_26

    .line 71
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_a

    .line 72
    :cond_23
    iget v1, v0, Lk0/w7;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_24

    if-eq v1, v5, :cond_24

    .line 73
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 74
    :cond_24
    iput v5, v0, Lk0/w7;->b:I

    goto :goto_a

    .line 75
    :cond_25
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_26
    :goto_a
    return-void
.end method

.method public W2()V
    .locals 0

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

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const/16 p1, 0x22

    .line 1
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto/16 :goto_0

    :pswitch_2
    const/16 p1, 0x21

    .line 2
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto/16 :goto_0

    :pswitch_3
    const/16 p1, 0x20

    .line 3
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto/16 :goto_0

    :pswitch_4
    const/16 p1, 0x19

    .line 4
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto/16 :goto_0

    :pswitch_5
    const/16 p1, 0x18

    .line 5
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto/16 :goto_0

    :pswitch_6
    const/16 p1, 0x17

    .line 6
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto/16 :goto_0

    :pswitch_7
    const/16 p1, 0x16

    .line 7
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto/16 :goto_0

    :pswitch_8
    const/16 p1, 0x15

    .line 8
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto/16 :goto_0

    :pswitch_9
    const/16 p1, 0x14

    .line 9
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto/16 :goto_0

    :pswitch_a
    const/16 p1, 0x13

    .line 10
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto/16 :goto_0

    :pswitch_b
    const/16 p1, 0x12

    .line 11
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto/16 :goto_0

    :pswitch_c
    const/16 p1, 0x11

    .line 12
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto :goto_0

    :pswitch_d
    const/16 p1, 0x10

    .line 13
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto :goto_0

    :pswitch_e
    const/16 p1, 0xf

    .line 14
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto :goto_0

    :pswitch_f
    const/16 p1, 0xe

    .line 15
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto :goto_0

    :pswitch_10
    const/16 p1, 0xd

    .line 16
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto :goto_0

    :pswitch_11
    const/16 p1, 0xc

    .line 17
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto :goto_0

    :pswitch_12
    const/16 p1, 0xa

    .line 18
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto :goto_0

    :pswitch_13
    const/16 p1, 0x9

    .line 19
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto :goto_0

    :pswitch_14
    const/16 p1, 0x8

    .line 20
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto :goto_0

    :pswitch_15
    const/4 p1, 0x7

    .line 21
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto :goto_0

    :pswitch_16
    const/4 p1, 0x6

    .line 22
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto :goto_0

    :pswitch_17
    const/4 p1, 0x5

    .line 23
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto :goto_0

    :pswitch_18
    const/4 p1, 0x4

    .line 24
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto :goto_0

    :pswitch_19
    const/4 p1, 0x3

    .line 25
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto :goto_0

    :pswitch_1a
    const/4 p1, 0x2

    .line 26
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto :goto_0

    :pswitch_1b
    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    goto :goto_0

    :pswitch_1c
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lk0/w7;->a3(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final a3(I)V
    .locals 5

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x2

    aput v4, v1, v2

    const/16 v2, 0x3c

    aput v2, v1, v4

    int-to-byte p1, p1

    const/4 v2, 0x3

    aput p1, v1, v2

    const/4 p1, 0x4

    aput v3, v1, p1

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        0x3c
        0x0
        0x0
    .end array-data
.end method

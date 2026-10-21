.class public Lk0/mj;
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
    .locals 11

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/mj;->c:I

    const/4 v1, 0x7

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

    iput-object v2, p0, Lk0/mj;->d:[[I

    .line 4
    iput v0, p0, Lk0/mj;->f:I

    const/16 v0, 0x10

    new-array v0, v0, [[I

    new-array v2, v3, [I

    .line 5
    fill-array-data v2, :array_7

    aput-object v2, v0, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v8

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v9

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v10

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_f

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_10

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_12

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/mj;->g:[[I

    .line 6
    iput v5, p0, Lk0/mj;->h:I

    .line 7
    iput v5, p0, Lk0/mj;->i:I

    .line 8
    new-instance v0, Lk0/mj$a;

    invoke-direct {v0, p0}, Lk0/mj$a;-><init>(Lk0/mj;)V

    iput-object v0, p0, Lk0/mj;->j:Ljava/lang/Runnable;

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
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_6
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x19
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
        0x4
        0x15
    .end array-data

    :array_b
    .array-data 4
        0xa
        0x28
    .end array-data

    :array_c
    .array-data 4
        0xb
        0x29
    .end array-data

    :array_d
    .array-data 4
        0xc
        0x2a
    .end array-data

    :array_e
    .array-data 4
        0xd
        0x2b
    .end array-data

    :array_f
    .array-data 4
        0xe
        0x2c
    .end array-data

    :array_10
    .array-data 4
        0xf
        0x2d
    .end array-data

    :array_11
    .array-data 4
        0x1f
        0x35
    .end array-data

    :array_12
    .array-data 4
        0x27
        0x9
    .end array-data

    :array_13
    .array-data 4
        0x43
        0x40
    .end array-data

    :array_14
    .array-data 4
        0x56
        0x16
    .end array-data

    :array_15
    .array-data 4
        0x5f
        0x36
    .end array-data

    :array_16
    .array-data 4
        0x60
        0x27
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

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/mj;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0xa
        0x4
    .end array-data
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x5a

    const/4 v4, 0x7

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_26

    const/16 v3, -0x10

    const/4 v8, 0x2

    if-eq v2, v3, :cond_25

    const/16 v3, 0x11

    const/16 v10, 0x1a

    const/4 v12, 0x4

    const/16 v13, 0xff

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x8

    if-eq v2, v10, :cond_1b

    const/16 v10, 0x31

    if-eq v2, v10, :cond_11

    const/16 v9, 0x61

    if-eq v2, v9, :cond_10

    const/16 v9, 0x21

    if-eq v2, v9, :cond_b

    const/16 v9, 0x22

    if-eq v2, v9, :cond_0

    goto/16 :goto_e

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 3
    aget-byte v1, v1, v5

    if-eq v2, v7, :cond_6

    if-eq v2, v8, :cond_1

    goto/16 :goto_e

    .line 4
    :cond_1
    iget v2, v0, Lk0/mj;->i:I

    if-eq v1, v2, :cond_27

    if-le v1, v2, :cond_3

    move v2, v6

    .line 5
    :goto_0
    iget v3, v0, Lk0/mj;->i:I

    sub-int v3, v1, v3

    const/16 v4, 0x1f

    if-ge v2, v3, :cond_2

    .line 6
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_3
    if-ge v1, v2, :cond_5

    move v2, v6

    .line 8
    :goto_1
    iget v3, v0, Lk0/mj;->i:I

    sub-int/2addr v3, v1

    const/16 v4, 0x1e

    if-ge v2, v3, :cond_4

    .line 9
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_4
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    .line 11
    :cond_5
    :goto_2
    iput v1, v0, Lk0/mj;->i:I

    goto/16 :goto_e

    .line 12
    :cond_6
    iget v2, v0, Lk0/mj;->h:I

    if-eq v1, v2, :cond_27

    if-le v1, v2, :cond_8

    move v2, v6

    .line 13
    :goto_3
    iget v3, v0, Lk0/mj;->h:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_7

    .line 14
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 15
    :cond_7
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_8
    if-ge v1, v2, :cond_a

    move v2, v6

    .line 16
    :goto_4
    iget v4, v0, Lk0/mj;->h:I

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_9

    .line 17
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 18
    :cond_9
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    .line 19
    :cond_a
    :goto_5
    iput v1, v0, Lk0/mj;->h:I

    goto/16 :goto_e

    :cond_b
    add-int/lit8 v2, p2, 0x2

    .line 20
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    iput v2, v0, Lk0/mj;->f:I

    move v2, v6

    .line 21
    :goto_6
    iget-object v3, v0, Lk0/mj;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 22
    iget v4, v0, Lk0/mj;->f:I

    aget-object v8, v3, v2

    aget v8, v8, v6

    if-ne v4, v8, :cond_c

    if-eqz v4, :cond_d

    .line 23
    iput v2, v0, Lk0/mj;->e:I

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 24
    :cond_d
    :goto_7
    iget v4, v0, Lk0/mj;->f:I

    if-eqz v4, :cond_e

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    if-eqz v4, :cond_e

    .line 25
    array-length v1, v3

    if-ge v2, v1, :cond_27

    .line 26
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    .line 27
    :cond_e
    iget v2, v0, Lk0/mj;->e:I

    if-eq v2, v13, :cond_f

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    and-int/2addr v1, v13

    if-nez v1, :cond_f

    .line 28
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 29
    :cond_f
    iput v13, v0, Lk0/mj;->e:I

    goto/16 :goto_e

    :cond_10
    const/16 v2, 0x6d

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x3

    .line 30
    aget-byte v8, v1, v5

    shr-int/2addr v8, v4

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    .line 31
    aget-byte v8, v1, v5

    shr-int/2addr v8, v12

    and-int/2addr v8, v4

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    .line 32
    aget-byte v8, v1, v5

    shr-int/2addr v8, v7

    and-int/2addr v8, v4

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v7, [I

    .line 33
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 34
    aget-byte v1, v1, v5

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_11
    add-int/lit8 v2, p2, 0x2

    .line 35
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 36
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 37
    aget-byte v4, v1, v4

    add-int/lit8 v10, p2, 0x6

    .line 38
    aget-byte v10, v1, v10

    add-int/lit8 v14, p2, 0x7

    .line 39
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x8

    .line 40
    aget-byte v16, v1, v15

    add-int/lit8 v17, p2, 0x9

    .line 41
    aget-byte v18, v1, v17

    const/16 v9, 0xa

    new-array v11, v7, [I

    shr-int/lit8 v19, v2, 0x6

    and-int/lit8 v19, v19, 0x1

    aput v19, v11, v6

    .line 42
    invoke-static {v9, v11}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xd

    new-array v11, v7, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v7

    aput v2, v11, v6

    .line 43
    invoke-static {v9, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v9, v7, [I

    shr-int/lit8 v11, v3, 0x6

    and-int/2addr v11, v7

    aput v11, v9, v6

    .line 44
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v9, v3, 0x4

    and-int/2addr v9, v7

    aput v9, v2, v6

    const/16 v9, 0xc

    .line 45
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v11, v7, [I

    shr-int/2addr v3, v8

    and-int/2addr v3, v7

    aput v3, v11, v6

    .line 46
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v7, [I

    shr-int/lit8 v8, v4, 0x5

    and-int/2addr v8, v7

    aput v8, v3, v6

    .line 47
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v7, [I

    shr-int/2addr v4, v12

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 48
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v10, 0xff

    if-eq v2, v5, :cond_15

    if-eq v2, v9, :cond_14

    const/4 v3, 0x5

    if-eq v2, v3, :cond_13

    const/4 v3, 0x6

    if-eq v2, v3, :cond_12

    move v3, v6

    move v4, v3

    :goto_8
    move v5, v4

    goto :goto_9

    :cond_12
    move v3, v6

    move v5, v3

    move v4, v7

    goto :goto_9

    :cond_13
    move v3, v6

    move v4, v7

    goto :goto_8

    :cond_14
    move v4, v6

    move v3, v7

    move v5, v3

    goto :goto_9

    :cond_15
    move v3, v6

    move v4, v3

    move v5, v7

    :goto_9
    new-array v8, v7, [I

    aput v3, v8, v6

    const/16 v3, 0x12

    .line 49
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v8, v7, [I

    aput v4, v8, v6

    .line 50
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v7, [I

    aput v5, v4, v6

    .line 51
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 52
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    and-int/lit16 v4, v14, 0xff

    aput v4, v3, v6

    .line 53
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 54
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 55
    aget-byte v16, v1, v17

    .line 56
    aget-byte v18, v1, v15

    :cond_16
    move/from16 v1, v16

    move/from16 v2, v18

    and-int/2addr v1, v13

    const/4 v3, -0x3

    const/4 v4, -0x2

    const/16 v5, 0xfe

    const/16 v8, 0x1b

    if-ne v1, v5, :cond_17

    new-array v1, v7, [I

    aput v4, v1, v6

    .line 57
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_17
    if-ne v1, v13, :cond_18

    new-array v1, v7, [I

    aput v3, v1, v6

    .line 58
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_18
    new-array v9, v7, [I

    aput v1, v9, v6

    .line 59
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    :goto_a
    and-int/lit16 v1, v2, 0xff

    const/16 v2, 0x1c

    if-ne v1, v5, :cond_19

    new-array v1, v7, [I

    aput v4, v1, v6

    .line 60
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_19
    if-ne v1, v13, :cond_1a

    new-array v1, v7, [I

    aput v3, v1, v6

    .line 61
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_1a
    new-array v3, v7, [I

    aput v1, v3, v6

    .line 62
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_1b
    add-int/lit8 v2, p2, 0x3

    .line 63
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    const-string v4, "persist.syu.reversefrontdoor"

    .line 64
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1c

    new-array v4, v7, [I

    shr-int/lit8 v9, v2, 0x7

    and-int/2addr v9, v7

    aput v9, v4, v6

    .line 65
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v7

    aput v9, v4, v6

    .line 66
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1c
    new-array v4, v7, [I

    shr-int/lit8 v9, v2, 0x7

    and-int/2addr v9, v7

    aput v9, v4, v6

    .line 67
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v7

    aput v9, v4, v6

    .line 68
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    :goto_b
    new-array v4, v7, [I

    shr-int/lit8 v9, v2, 0x5

    and-int/2addr v9, v7

    aput v9, v4, v6

    .line 69
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v7

    aput v5, v4, v6

    .line 70
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v7

    aput v5, v4, v6

    const/4 v5, 0x5

    .line 71
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v7

    aput v2, v4, v6

    .line 72
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 73
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_e

    :cond_1d
    add-int/lit8 v2, p2, 0x4

    .line 74
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    iput v2, v0, Lk0/mj;->c:I

    move v2, v6

    .line 75
    :goto_c
    iget-object v3, v0, Lk0/mj;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1f

    .line 76
    iget v4, v0, Lk0/mj;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v6

    if-ne v4, v8, :cond_1e

    if-eqz v4, :cond_1f

    .line 77
    iput v2, v0, Lk0/mj;->b:I

    goto :goto_d

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 78
    :cond_1f
    :goto_d
    iget v4, v0, Lk0/mj;->c:I

    const/4 v8, 0x5

    if-eq v4, v8, :cond_22

    if-eqz v4, :cond_20

    add-int/lit8 v4, p2, 0x5

    .line 79
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    if-eqz v4, :cond_20

    .line 80
    array-length v1, v3

    if-ge v2, v1, :cond_27

    .line 81
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    .line 82
    :cond_20
    iget v2, v0, Lk0/mj;->b:I

    if-eq v2, v13, :cond_21

    const/4 v4, 0x5

    add-int/lit8 v4, p2, 0x5

    aget-byte v1, v1, v4

    and-int/2addr v1, v13

    if-nez v1, :cond_21

    .line 83
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 84
    :cond_21
    iput v13, v0, Lk0/mj;->b:I

    goto/16 :goto_e

    :cond_22
    move v2, v8

    add-int/lit8 v3, p2, 0x5

    .line 85
    aget-byte v1, v1, v3

    and-int/2addr v1, v13

    if-ne v1, v7, :cond_27

    .line 86
    sget v1, Lh0/c;->E:I

    if-eq v1, v5, :cond_24

    if-eq v1, v12, :cond_23

    if-eq v1, v2, :cond_24

    goto/16 :goto_e

    :cond_23
    const/16 v1, 0x12

    .line 87
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 88
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    .line 89
    :cond_24
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    .line 90
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    goto :goto_e

    .line 91
    :cond_25
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_e

    :cond_26
    const/16 v2, 0x63

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 92
    aget-byte v8, v1, v8

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x3

    .line 93
    aget-byte v8, v1, v8

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x4

    .line 94
    aget-byte v8, v1, v8

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x5

    .line 95
    aget-byte v8, v1, v8

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x7

    .line 96
    aget-byte v8, v1, v8

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x8

    .line 97
    aget-byte v9, v1, v8

    shr-int/lit8 v5, v9, 0x3

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    .line 98
    aget-byte v5, v1, v8

    shr-int/2addr v5, v6

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 99
    aget-byte v1, v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_27
    :goto_e
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/mj;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x72

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
    .locals 5

    const/4 p3, 0x3

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    aput p4, p1, v2

    aput v3, p1, v4

    const/16 p4, 0xad

    aput p4, p1, v3

    .line 1
    aget p4, p2, v2

    aput p4, p1, p3

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    new-array p1, p1, [I

    aput p4, p1, v2

    aput v1, p1, v4

    const/16 p4, 0x6f

    aput p4, p1, v3

    .line 2
    aget p4, p2, v2

    aput p4, p1, p3

    aget p2, p2, v4

    aput p2, p1, v1

    const/16 p2, 0xff

    aput p2, p1, v0

    const/4 p3, 0x6

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [I

    aput p4, p1, v2

    aput v3, p1, v4

    const/16 p4, 0x3d

    aput p4, p1, v3

    .line 3
    aget p4, p2, v2

    aput p4, p1, p3

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

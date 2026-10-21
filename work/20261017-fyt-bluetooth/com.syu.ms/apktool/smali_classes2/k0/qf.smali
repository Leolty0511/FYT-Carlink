.class public Lk0/qf;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I


# direct methods
.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/qf;->c:I

    const/16 v2, 0x14

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v9, 0x6

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v10, 0x7

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v11, 0x8

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v12, 0x9

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v13, 0xa

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    const/16 v14, 0xb

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    const/16 v15, 0xc

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    const/16 v16, 0xd

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    const/16 v16, 0xe

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    const/16 v16, 0xf

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    const/16 v16, 0x10

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    const/16 v16, 0x11

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    const/16 v16, 0x12

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    const/16 v16, 0x13

    aput-object v4, v2, v16

    iput-object v2, v0, Lk0/qf;->d:[[I

    .line 4
    iput v1, v0, Lk0/qf;->f:I

    new-array v2, v15, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_14

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    aput-object v1, v2, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    aput-object v1, v2, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    aput-object v1, v2, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    aput-object v1, v2, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    aput-object v1, v2, v8

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    aput-object v1, v2, v9

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    aput-object v1, v2, v10

    new-array v1, v3, [I

    fill-array-data v1, :array_1c

    aput-object v1, v2, v11

    new-array v1, v3, [I

    fill-array-data v1, :array_1d

    aput-object v1, v2, v12

    new-array v1, v3, [I

    fill-array-data v1, :array_1e

    aput-object v1, v2, v13

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    aput-object v1, v2, v14

    iput-object v2, v0, Lk0/qf;->g:[[I

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
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x14
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_d
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_e
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_f
    .array-data 4
        0x84
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x85
        0x43
    .end array-data

    :array_11
    .array-data 4
        0x86
        0x44
    .end array-data

    :array_12
    .array-data 4
        0x87
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x88
        0x2
    .end array-data

    :array_14
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_15
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_16
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_17
    .array-data 4
        0x4
        0x4b
    .end array-data

    :array_18
    .array-data 4
        0x5
        0x4a
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_1a
    .array-data 4
        0x7
        0x16
    .end array-data

    :array_1b
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_1c
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_1d
    .array-data 4
        0x10
        0x3
    .end array-data

    :array_1e
    .array-data 4
        0x11
        0x4
    .end array-data

    :array_1f
    .array-data 4
        0x12
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

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->l:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    .line 8
    iput v2, v0, Lk0/mt;->b:I

    .line 9
    iput v1, v0, Lk0/mt;->c:I

    .line 10
    iput v1, v0, Lk0/mt;->d:I

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x10

    const/16 v4, 0x11

    const/4 v5, 0x7

    const/4 v6, 0x2

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v4, :cond_12

    const/16 v10, 0x12

    if-eq v2, v10, :cond_11

    const/16 v11, 0x1c

    if-eq v2, v11, :cond_f

    const/16 v4, 0x20

    if-eq v2, v4, :cond_9

    const/16 v4, 0x28

    if-eq v2, v4, :cond_3

    const/16 v3, 0x6a

    if-eq v2, v3, :cond_2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    const/16 v3, 0x31

    if-eq v2, v3, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, v1, v2

    add-int/lit8 v2, p2, 0x4

    .line 4
    aget-byte v2, v1, v2

    add-int/lit8 v2, p2, 0x5

    .line 5
    aget-byte v1, v1, v2

    const/16 v2, 0x7c

    new-array v3, v9, [I

    and-int/2addr v1, v7

    aput v1, v3, v8

    .line 6
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    .line 7
    :cond_1
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_2
    const/16 v2, 0x7d

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 8
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v9, [I

    .line 9
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v9

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 10
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 11
    aget-byte v4, v1, v4

    add-int/lit8 v6, p2, 0x4

    .line 12
    aget-byte v12, v1, v6

    add-int/lit8 v13, p2, 0x5

    .line 13
    aget-byte v14, v1, v13

    add-int/lit8 v15, p2, 0x6

    .line 14
    aget-byte v15, v1, v15

    const/16 v11, 0xa

    new-array v7, v9, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v7, v8

    .line 15
    invoke-static {v11, v7}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xb

    new-array v11, v9, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v8

    .line 16
    invoke-static {v7, v11}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xc

    new-array v11, v9, [I

    shr-int/lit8 v16, v2, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v8

    .line 17
    invoke-static {v7, v11}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xd

    new-array v11, v9, [I

    shr-int/lit8 v16, v2, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v8

    .line 18
    invoke-static {v7, v11}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xe

    new-array v11, v9, [I

    shr-int/lit8 v16, v2, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v8

    .line 19
    invoke-static {v7, v11}, Lk0/qt;->y0(I[I)V

    new-array v7, v9, [I

    shr-int/lit8 v11, v2, 0x1

    and-int/2addr v11, v9

    aput v11, v7, v8

    const/16 v11, 0xf

    .line 20
    invoke-static {v11, v7}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x26

    new-array v11, v9, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v9

    aput v2, v11, v8

    .line 21
    invoke-static {v7, v11}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v7, v4, 0x7

    and-int/2addr v7, v9

    aput v7, v2, v8

    .line 22
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v7, v9, [I

    shr-int/lit8 v10, v4, 0x6

    and-int/2addr v10, v9

    aput v10, v7, v8

    .line 23
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v7, v9, [I

    shr-int/lit8 v10, v4, 0x5

    and-int/lit8 v11, v10, 0x1

    aput v11, v7, v8

    .line 24
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v7, v9, [I

    and-int/2addr v5, v10

    aput v5, v7, v8

    .line 25
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v5, v9, [I

    shr-int/lit8 v7, v15, 0x7

    and-int/2addr v7, v9

    aput v7, v5, v8

    .line 26
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v5, v15, 0x6

    and-int/2addr v5, v9

    aput v5, v2, v8

    .line 27
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v9, [I

    shr-int/lit8 v5, v15, 0x2

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 28
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x38

    new-array v3, v9, [I

    shr-int/lit8 v5, v15, 0x1

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 29
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v9, [I

    const/16 v5, 0xf

    and-int/2addr v4, v5

    aput v4, v3, v8

    .line 30
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 31
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 32
    aget-byte v2, v1, v13

    const/16 v3, 0xff

    and-int/lit16 v12, v2, 0xff

    .line 33
    aget-byte v1, v1, v6

    and-int/lit16 v14, v1, 0xff

    :cond_4
    and-int/lit16 v1, v12, 0xff

    const/4 v2, -0x3

    const/4 v3, -0x2

    const/16 v4, 0x1f

    const/16 v5, 0x1b

    if-nez v12, :cond_5

    new-array v1, v9, [I

    aput v3, v1, v8

    .line 34
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    if-ne v12, v4, :cond_6

    new-array v1, v9, [I

    aput v2, v1, v8

    .line 35
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_6
    new-array v6, v9, [I

    aput v1, v6, v8

    .line 36
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    :goto_0
    and-int/lit16 v1, v14, 0xff

    if-nez v14, :cond_7

    new-array v1, v9, [I

    aput v3, v1, v8

    const/16 v3, 0x1c

    .line 37
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_7
    const/16 v3, 0x1c

    if-ne v14, v4, :cond_8

    new-array v1, v9, [I

    aput v2, v1, v8

    .line 38
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_8
    new-array v2, v9, [I

    aput v1, v2, v8

    .line 39
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 40
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 41
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 42
    iput v2, v0, Lk0/qf;->c:I

    move v2, v8

    .line 43
    :goto_1
    iget-object v3, v0, Lk0/qf;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_b

    .line 44
    iget v4, v0, Lk0/qf;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_a

    if-eqz v4, :cond_b

    .line 45
    iput v2, v0, Lk0/qf;->b:I

    goto :goto_2

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_b
    :goto_2
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v9, :cond_c

    .line 46
    array-length v1, v3

    if-ge v2, v1, :cond_17

    .line 47
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_c
    if-nez v1, :cond_17

    .line 48
    iget v1, v0, Lk0/qf;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_d

    const/16 v2, 0xff

    if-eq v1, v2, :cond_e

    .line 49
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_d
    const/16 v2, 0xff

    .line 50
    :cond_e
    :goto_3
    iput v2, v0, Lk0/qf;->b:I

    goto/16 :goto_6

    :cond_f
    add-int/lit8 v2, p2, 0x2

    .line 51
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 52
    aget-byte v3, v1, v3

    add-int/lit8 v3, p2, 0x4

    .line 53
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x5

    .line 54
    aget-byte v5, v1, v5

    add-int/lit8 v7, p2, 0x6

    .line 55
    aget-byte v7, v1, v7

    add-int/lit8 v10, p2, 0x7

    .line 56
    aget-byte v10, v1, v10

    add-int/lit8 v11, p2, 0x8

    .line 57
    aget-byte v11, v1, v11

    add-int/lit8 v12, p2, 0x9

    .line 58
    aget-byte v1, v1, v12

    if-eq v2, v6, :cond_10

    if-eq v2, v4, :cond_10

    goto/16 :goto_6

    :cond_10
    const/16 v2, 0x6b

    new-array v4, v9, [I

    const/16 v12, 0xff

    and-int/2addr v3, v12

    aput v3, v4, v8

    .line 59
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v9, [I

    and-int/lit16 v4, v5, 0xff

    aput v4, v3, v8

    .line 60
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v9, [I

    and-int/lit16 v4, v7, 0xff

    aput v4, v3, v8

    .line 61
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v9, [I

    shr-int/lit8 v4, v10, 0x0

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 62
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v9, [I

    shr-int/lit8 v4, v10, 0x1

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 63
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v9, [I

    shr-int/lit8 v4, v10, 0x2

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 64
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v9, [I

    const/16 v4, 0xff

    and-int/lit16 v5, v11, 0xff

    aput v5, v3, v8

    .line 65
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v9, [I

    and-int/2addr v1, v4

    aput v1, v3, v8

    .line 66
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_11
    move v4, v7

    const/16 v2, 0x75

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x2

    .line 67
    aget-byte v6, v1, v6

    and-int/2addr v6, v4

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x3

    .line 68
    aget-byte v6, v1, v6

    and-int/2addr v6, v4

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x4

    .line 69
    aget-byte v6, v1, v6

    and-int/2addr v6, v4

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x5

    .line 70
    aget-byte v6, v1, v6

    and-int/2addr v6, v4

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x6

    .line 71
    aget-byte v6, v1, v6

    and-int/2addr v6, v4

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x7

    .line 72
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_12
    add-int/lit8 v2, p2, 0x3

    .line 73
    aget-byte v7, v1, v2

    if-ne v7, v9, :cond_17

    .line 74
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-eq v7, v9, :cond_17

    add-int/lit8 v6, p2, 0x2

    .line 75
    aget-byte v7, v1, v6

    if-ne v7, v5, :cond_13

    goto :goto_6

    .line 76
    :cond_13
    aget-byte v5, v1, v6

    if-eq v5, v3, :cond_17

    aget-byte v3, v1, v6

    if-ne v3, v4, :cond_14

    goto :goto_6

    .line 77
    :cond_14
    aget-byte v3, v1, v6

    .line 78
    aget-byte v1, v1, v2

    const/16 v1, 0xff

    and-int/2addr v1, v3

    .line 79
    iput v1, v0, Lk0/qf;->f:I

    move v1, v8

    .line 80
    :goto_4
    iget-object v2, v0, Lk0/qf;->g:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_16

    .line 81
    iget v3, v0, Lk0/qf;->f:I

    aget-object v4, v2, v1

    aget v4, v4, v8

    if-ne v3, v4, :cond_15

    if-eqz v3, :cond_16

    .line 82
    iput v1, v0, Lk0/qf;->e:I

    goto :goto_5

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 83
    :cond_16
    :goto_5
    array-length v3, v2

    if-ge v1, v3, :cond_17

    .line 84
    aget-object v2, v2, v1

    aget v2, v2, v9

    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 85
    iget-object v2, v0, Lk0/qf;->g:[[I

    aget-object v1, v2, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    :cond_17
    :goto_6
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

    const/16 p3, 0x7f

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

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    if-eq p1, p4, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, 0x8b

    aput p3, p1, v4

    aput v2, p1, v2

    .line 1
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, 0x84

    aput p3, p1, v4

    aput v2, p1, v2

    .line 2
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, 0x8a

    aput p3, p1, v4

    aput v2, p1, v2

    .line 3
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, 0x74

    aput p3, p1, v4

    aput v2, p1, v2

    .line 4
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, 0x71

    aput p3, p1, v4

    aput v2, p1, v2

    .line 5
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.class public Lk0/cl;
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

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/16 v1, 0xff

    .line 2
    iput v1, v0, Lk0/cl;->c:I

    const/16 v2, 0xd

    new-array v3, v2, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 3
    fill-array-data v5, :array_0

    const/4 v6, 0x0

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    const/4 v7, 0x1

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    const/4 v8, 0x3

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    const/4 v9, 0x4

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_5

    const/4 v10, 0x5

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_6

    const/4 v11, 0x6

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_7

    const/4 v12, 0x7

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_8

    const/16 v13, 0x8

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_9

    const/16 v14, 0x9

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_a

    const/16 v15, 0xa

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_b

    const/16 v16, 0xb

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_c

    const/16 v17, 0xc

    aput-object v5, v3, v17

    iput-object v3, v0, Lk0/cl;->d:[[I

    .line 4
    iput v1, v0, Lk0/cl;->f:I

    const/16 v1, 0x14

    new-array v1, v1, [[I

    new-array v3, v4, [I

    .line 5
    fill-array-data v3, :array_d

    aput-object v3, v1, v6

    new-array v3, v4, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v7

    new-array v3, v4, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v4

    new-array v3, v4, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v8

    new-array v3, v4, [I

    fill-array-data v3, :array_11

    aput-object v3, v1, v9

    new-array v3, v4, [I

    fill-array-data v3, :array_12

    aput-object v3, v1, v10

    new-array v3, v4, [I

    fill-array-data v3, :array_13

    aput-object v3, v1, v11

    new-array v3, v4, [I

    fill-array-data v3, :array_14

    aput-object v3, v1, v12

    new-array v3, v4, [I

    fill-array-data v3, :array_15

    aput-object v3, v1, v13

    new-array v3, v4, [I

    fill-array-data v3, :array_16

    aput-object v3, v1, v14

    new-array v3, v4, [I

    fill-array-data v3, :array_17

    aput-object v3, v1, v15

    new-array v3, v4, [I

    fill-array-data v3, :array_18

    aput-object v3, v1, v16

    new-array v3, v4, [I

    fill-array-data v3, :array_19

    aput-object v3, v1, v17

    new-array v3, v4, [I

    fill-array-data v3, :array_1a

    aput-object v3, v1, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_1b

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1c

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1d

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1e

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1f

    const/16 v3, 0x12

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_20

    const/16 v3, 0x13

    aput-object v2, v1, v3

    iput-object v1, v0, Lk0/cl;->g:[[I

    .line 6
    iput v6, v0, Lk0/cl;->h:I

    .line 7
    iput v6, v0, Lk0/cl;->i:I

    .line 8
    iput v6, v0, Lk0/cl;->j:I

    .line 9
    new-instance v1, Lk0/cl$a;

    invoke-direct {v1, v0}, Lk0/cl$a;-><init>(Lk0/cl;)V

    iput-object v1, v0, Lk0/cl;->k:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lk0/cl$b;

    invoke-direct {v1, v0}, Lk0/cl$b;-><init>(Lk0/cl;)V

    iput-object v1, v0, Lk0/cl;->l:Ljava/lang/Runnable;

    return-void

    nop

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
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xc
        0x19
    .end array-data

    :array_b
    .array-data 4
        0x17
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_f
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_11
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_12
    .array-data 4
        0x17
        0x22
    .end array-data

    :array_13
    .array-data 4
        0x18
        0x23
    .end array-data

    :array_14
    .array-data 4
        0x19
        0x20
    .end array-data

    :array_15
    .array-data 4
        0x1a
        0x21
    .end array-data

    :array_16
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_17
    .array-data 4
        0x24
        0x36
    .end array-data

    :array_18
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_19
    .array-data 4
        0x2a
        0x1d
    .end array-data

    :array_1a
    .array-data 4
        0x2f
        0x9
    .end array-data

    :array_1b
    .array-data 4
        0x33
        0x18
    .end array-data

    :array_1c
    .array-data 4
        0x34
        0x12
    .end array-data

    :array_1d
    .array-data 4
        0x35
        0x1a
    .end array-data

    :array_1e
    .array-data 4
        0x37
        0x37
    .end array-data

    :array_1f
    .array-data 4
        0x39
        0x19
    .end array-data

    :array_20
    .array-data 4
        0x61
        0x3f
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

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

    .line 6
    iput v2, v0, Lk0/mt;->q:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    iput v2, v0, Lk0/mt;->h:I

    .line 9
    sget v3, Lk0/nt;->a:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 10
    :sswitch_0
    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 11
    :sswitch_1
    iput v1, v0, Lk0/mt;->i:I

    .line 12
    :goto_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/cl;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x701bc -> :sswitch_1
        0x5401bc -> :sswitch_1
        0x5501bc -> :sswitch_1
        0x5601bc -> :sswitch_0
    .end sparse-switch
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

    if-eq v2, v3, :cond_23

    const/16 v3, 0x41

    const/4 v5, 0x5

    const/16 v6, 0xff

    if-eq v2, v3, :cond_22

    const/16 v7, 0x61

    const/4 v8, 0x7

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v2, v7, :cond_21

    const/16 v7, 0x63

    if-eq v2, v7, :cond_20

    const/16 v13, 0x11

    const/16 v14, 0x419

    const/4 v15, 0x0

    if-eq v2, v13, :cond_1a

    const/16 v13, 0x12

    if-eq v2, v13, :cond_18

    const/16 v7, 0x21

    if-eq v2, v7, :cond_13

    const/16 v7, 0x22

    const/16 v13, 0x8

    if-eq v2, v7, :cond_8

    const/16 v7, 0x31

    if-eq v2, v7, :cond_1

    const/16 v3, 0x32

    if-eq v2, v3, :cond_0

    goto/16 :goto_f

    :cond_0
    add-int/lit8 v2, p2, 0x6

    .line 2
    aget-byte v2, v1, v2

    shl-int/2addr v2, v13

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x7

    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    or-int/2addr v1, v2

    const/16 v2, 0x407

    new-array v3, v12, [I

    aput v1, v3, v11

    .line 3
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 4
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v4, [I

    aput v12, v3, v11

    aput v1, v3, v12

    invoke-static {v2, v14, v3, v15, v15}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_1
    new-array v2, v12, [I

    add-int/lit8 v7, p2, 0x2

    .line 5
    aget-byte v8, v1, v7

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v12

    aput v8, v2, v11

    const/16 v8, 0xa

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v13, v12, [I

    .line 6
    aget-byte v7, v1, v7

    shr-int/2addr v7, v11

    and-int/2addr v7, v10

    aput v7, v13, v11

    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v7, v12, [I

    add-int/lit8 v13, p2, 0x3

    .line 7
    aget-byte v14, v1, v13

    shr-int/2addr v14, v9

    and-int/2addr v14, v12

    aput v14, v7, v11

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v7, v12, [I

    .line 8
    aget-byte v13, v1, v13

    shr-int/2addr v13, v10

    and-int/2addr v13, v12

    aput v13, v7, v11

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    add-int/lit8 v7, p2, 0x4

    .line 9
    aget-byte v13, v1, v7

    shr-int/2addr v13, v9

    and-int/2addr v13, v12

    aput v13, v2, v11

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v12, [I

    .line 10
    aget-byte v7, v1, v7

    shr-int/2addr v7, v5

    and-int/2addr v7, v12

    aput v7, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 11
    aget-byte v2, v1, v2

    if-eq v2, v12, :cond_5

    if-eq v2, v4, :cond_4

    if-eq v2, v10, :cond_3

    if-eq v2, v9, :cond_2

    move v2, v11

    move v3, v2

    :goto_0
    move v7, v3

    goto :goto_1

    :cond_2
    move v3, v11

    move v2, v12

    move v7, v2

    goto :goto_1

    :cond_3
    move v2, v11

    move v3, v2

    move v7, v12

    goto :goto_1

    :cond_4
    move v2, v11

    move v3, v12

    goto :goto_0

    :cond_5
    move v2, v11

    move v7, v2

    move v3, v12

    :goto_1
    new-array v9, v12, [I

    aput v2, v9, v11

    const/16 v2, 0x12

    .line 12
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v9, v12, [I

    aput v3, v9, v11

    .line 13
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v12, [I

    aput v7, v3, v11

    .line 14
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v12, [I

    add-int/lit8 v7, p2, 0x7

    .line 15
    aget-byte v7, v1, v7

    and-int/2addr v7, v6

    aput v7, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 16
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    const/16 v3, 0xfe

    const/16 v7, 0x1b

    if-ne v2, v3, :cond_6

    new-array v2, v12, [I

    const/4 v3, -0x2

    aput v3, v2, v11

    .line 17
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    if-ne v2, v6, :cond_7

    new-array v2, v12, [I

    const/4 v3, -0x3

    aput v3, v2, v11

    .line 18
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v3, v12, [I

    mul-int/2addr v2, v5

    aput v2, v3, v11

    .line 19
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x62

    new-array v3, v12, [I

    add-int/lit8 v5, p2, 0xa

    .line 20
    aget-byte v6, v1, v5

    shr-int/2addr v6, v10

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    .line 21
    aget-byte v3, v1, v5

    shr-int/2addr v3, v4

    and-int/2addr v3, v12

    aput v3, v2, v11

    const/16 v3, 0x63

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v12, [I

    .line 22
    aget-byte v4, v1, v5

    shr-int/2addr v4, v12

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v12, [I

    .line 23
    aget-byte v1, v1, v5

    shr-int/2addr v1, v11

    and-int/2addr v1, v12

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_8
    add-int/lit8 v2, p2, 0x2

    .line 24
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 25
    aget-byte v1, v1, v3

    if-eq v2, v12, :cond_e

    if-eq v2, v4, :cond_9

    goto/16 :goto_f

    .line 26
    :cond_9
    iget v2, v0, Lk0/cl;->i:I

    if-eq v1, v2, :cond_24

    if-le v1, v2, :cond_b

    move v2, v11

    .line 27
    :goto_3
    iget v3, v0, Lk0/cl;->i:I

    sub-int v3, v1, v3

    const/16 v4, 0x1f

    if-ge v2, v3, :cond_a

    .line 28
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 29
    :cond_a
    invoke-static {v4, v12}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_b
    if-ge v1, v2, :cond_d

    move v2, v11

    .line 30
    :goto_4
    iget v3, v0, Lk0/cl;->i:I

    sub-int/2addr v3, v1

    const/16 v4, 0x1e

    if-ge v2, v3, :cond_c

    .line 31
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 32
    :cond_c
    invoke-static {v4, v12}, Ll0/b0;->l0(II)V

    .line 33
    :cond_d
    :goto_5
    iput v1, v0, Lk0/cl;->i:I

    goto/16 :goto_f

    .line 34
    :cond_e
    iget v2, v0, Lk0/cl;->h:I

    if-eq v1, v2, :cond_24

    if-le v1, v2, :cond_10

    move v2, v11

    .line 35
    :goto_6
    iget v3, v0, Lk0/cl;->h:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_f

    .line 36
    invoke-static {v8, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 37
    :cond_f
    invoke-static {v8, v12}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_10
    if-ge v1, v2, :cond_12

    move v2, v11

    .line 38
    :goto_7
    iget v3, v0, Lk0/cl;->h:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_11

    .line 39
    invoke-static {v13, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 40
    :cond_11
    invoke-static {v13, v12}, Ll0/b0;->l0(II)V

    .line 41
    :cond_12
    :goto_8
    iput v1, v0, Lk0/cl;->h:I

    goto/16 :goto_f

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 42
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    iput v2, v0, Lk0/cl;->f:I

    add-int/lit8 v2, p2, 0x3

    .line 43
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    move v2, v11

    .line 44
    :goto_9
    iget-object v3, v0, Lk0/cl;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_15

    .line 45
    iget v4, v0, Lk0/cl;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v11

    if-ne v4, v5, :cond_14

    if-eqz v4, :cond_15

    .line 46
    iput v2, v0, Lk0/cl;->e:I

    goto :goto_a

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_15
    :goto_a
    and-int/2addr v1, v6

    if-ne v1, v12, :cond_16

    .line 47
    array-length v1, v3

    if-ge v2, v1, :cond_24

    .line 48
    aget-object v1, v3, v2

    aget v1, v1, v12

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_16
    if-nez v1, :cond_24

    .line 49
    iget v1, v0, Lk0/cl;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_17

    if-eq v1, v6, :cond_17

    .line 50
    aget-object v1, v3, v1

    aget v1, v1, v12

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 51
    :cond_17
    iput v6, v0, Lk0/cl;->e:I

    goto/16 :goto_f

    :cond_18
    add-int/lit8 v2, p2, 0x4

    .line 52
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    const-string v2, "persist.syu.reversefrontdoor"

    .line 53
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_19

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 54
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 55
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_19
    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 56
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 57
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_b
    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 58
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 59
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/2addr v1, v10

    and-int/2addr v1, v12

    aput v1, v2, v11

    .line 60
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_1a
    add-int/lit8 v2, p2, 0x4

    .line 61
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    iput v2, v0, Lk0/cl;->c:I

    add-int/lit8 v2, p2, 0x5

    .line 62
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    move v3, v11

    .line 63
    :goto_c
    iget-object v5, v0, Lk0/cl;->d:[[I

    array-length v7, v5

    if-ge v3, v7, :cond_1c

    .line 64
    iget v7, v0, Lk0/cl;->c:I

    aget-object v8, v5, v3

    aget v8, v8, v11

    if-ne v7, v8, :cond_1b

    if-eqz v7, :cond_1c

    .line 65
    iput v3, v0, Lk0/cl;->b:I

    goto :goto_d

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1c
    :goto_d
    and-int/2addr v2, v6

    if-ne v2, v12, :cond_1d

    .line 66
    array-length v2, v5

    if-ge v3, v2, :cond_1f

    .line 67
    aget-object v2, v5, v3

    aget v2, v2, v12

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_1d
    if-nez v2, :cond_1f

    .line 68
    iget v2, v0, Lk0/cl;->b:I

    array-length v3, v5

    if-ge v2, v3, :cond_1e

    if-eq v2, v6, :cond_1e

    .line 69
    aget-object v2, v5, v2

    aget v2, v2, v12

    invoke-static {v2, v12}, Ll0/b0;->l0(II)V

    .line 70
    :cond_1e
    iput v6, v0, Lk0/cl;->b:I

    :cond_1f
    :goto_e
    add-int/lit8 v2, p2, 0x9

    .line 71
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    add-int/lit8 v3, p2, 0x8

    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    const/16 v5, 0x21c

    invoke-static {v2, v3, v12, v5}, Lk0/qt;->i(IIZI)V

    .line 72
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v4, [I

    aput v10, v3, v11

    add-int/lit8 v4, p2, 0x2

    aget-byte v1, v1, v4

    shr-int/2addr v1, v10

    and-int/2addr v1, v12

    aput v1, v3, v12

    invoke-static {v2, v14, v3, v15, v15}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_20
    const/16 v2, 0x81

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x2

    .line 73
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v12, [I

    .line 74
    aget-byte v4, v1, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x3

    .line 75
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x4

    .line 76
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x5

    .line 77
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x6

    .line 78
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_21
    const/16 v2, 0x66

    new-array v3, v12, [I

    add-int/lit8 v5, p2, 0x2

    .line 79
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v10

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v12, [I

    .line 80
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v10

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v12, [I

    .line 81
    aget-byte v6, v1, v5

    shr-int/2addr v6, v10

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v12, [I

    .line 82
    aget-byte v6, v1, v5

    shr-int/2addr v6, v4

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v12, [I

    .line 83
    aget-byte v6, v1, v5

    shr-int/2addr v6, v12

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v12, [I

    .line 84
    aget-byte v5, v1, v5

    shr-int/2addr v5, v11

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v12, [I

    add-int/lit8 v5, p2, 0x3

    .line 85
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v10

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v12, [I

    .line 86
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v10

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v12, [I

    .line 87
    aget-byte v6, v1, v5

    shr-int/2addr v6, v4

    and-int/2addr v6, v10

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v12, [I

    .line 88
    aget-byte v6, v1, v5

    shr-int/2addr v6, v12

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v12, [I

    .line 89
    aget-byte v5, v1, v5

    shr-int/2addr v5, v11

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v12, [I

    add-int/lit8 v5, p2, 0x4

    .line 90
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v12, [I

    .line 91
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v12, [I

    .line 92
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v10

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v12, [I

    .line 93
    aget-byte v6, v1, v5

    shr-int/2addr v6, v10

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v12, [I

    .line 94
    aget-byte v6, v1, v5

    shr-int/lit8 v4, v6, 0x2

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v12, [I

    .line 95
    aget-byte v4, v1, v5

    shr-int/2addr v4, v12

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v12, [I

    .line 96
    aget-byte v4, v1, v5

    shr-int/2addr v4, v11

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x5

    .line 97
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v12, [I

    .line 98
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    const/16 v5, 0x7f

    and-int/2addr v4, v5

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x6

    .line 99
    aget-byte v6, v1, v4

    shr-int/2addr v6, v9

    and-int/lit8 v6, v6, 0xf

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v12, [I

    .line 100
    aget-byte v4, v1, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x7

    .line 101
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v10

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v12, [I

    .line 102
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x8

    .line 103
    aget-byte v6, v1, v4

    shr-int/2addr v6, v9

    and-int/lit8 v6, v6, 0xf

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    .line 104
    aget-byte v3, v1, v4

    shr-int/2addr v3, v11

    and-int/lit8 v3, v3, 0xf

    aput v3, v2, v11

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x9

    .line 105
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_22
    add-int/lit8 v2, p2, 0x2

    .line 106
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->k1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 107
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 108
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 109
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->k1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto :goto_f

    .line 110
    :cond_23
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_24
    :goto_f
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/cl;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/cl;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x87

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
    .locals 8

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    const/4 v5, 0x7

    const/4 v6, 0x6

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 p1, 0xb

    new-array p1, p1, [I

    aput p3, p1, v4

    const/16 p3, 0x8

    aput p3, p1, v3

    const/16 v7, 0x6d

    aput v7, p1, v2

    .line 1
    aget v7, p2, v4

    aput v7, p1, v1

    aget v3, p2, v3

    aput v3, p1, v0

    aget v2, p2, v2

    aput v2, p1, p4

    aget p4, p2, v1

    aput p4, p1, v6

    aget p2, p2, v0

    aput p2, p1, v5

    aput v4, p1, p3

    const/16 p2, 0x9

    aput v4, p1, p2

    const/16 p2, 0xa

    aput v4, p1, p2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v6, [I

    aput p3, p1, v4

    aput v1, p1, v3

    const/16 p3, 0x6a

    aput p3, p1, v2

    aput p4, p1, v1

    .line 2
    aget p2, p2, v4

    aput p2, p1, v0

    aput v3, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v5, [I

    aput p3, p1, v4

    aput v0, p1, v3

    const/16 p3, 0x6f

    aput p3, p1, v2

    .line 3
    aget p3, p2, v4

    aput p3, p1, v1

    aget p3, p2, v3

    aput p3, p1, v0

    aget p3, p2, v2

    aput p3, p1, p4

    aget p2, p2, v1

    aput p2, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, p4, [I

    aput p3, p1, v4

    aput v2, p1, v3

    const/16 p3, 0x3d

    aput p3, p1, v2

    .line 4
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

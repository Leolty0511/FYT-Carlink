.class public Lk0/lj;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:B

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/lj;->c:I

    const/4 v0, 0x5

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/lj;->d:[[I

    .line 4
    iput v4, p0, Lk0/lj;->e:I

    .line 5
    iput-byte v0, p0, Lk0/lj;->f:B

    .line 6
    new-instance v0, Lk0/lj$a;

    invoke-direct {v0, p0}, Lk0/lj$a;-><init>(Lk0/lj;)V

    iput-object v0, p0, Lk0/lj;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/lj$b;

    invoke-direct {v0, p0}, Lk0/lj$b;-><init>(Lk0/lj;)V

    iput-object v0, p0, Lk0/lj;->h:Ljava/lang/Runnable;

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
        0x8
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_4
    .array-data 4
        0xb
        0x2
    .end array-data
.end method

.method public static synthetic a3(Lk0/lj;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/lj;->h:Ljava/lang/Runnable;

    return-object p0
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

    iget-object v1, p0, Lk0/lj;->g:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x7c

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v3, :cond_1e

    const/16 v3, -0x7a

    const/4 v12, 0x2

    if-eq v2, v3, :cond_1d

    const/16 v3, -0x10

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x31

    const/16 v13, 0x12

    const/16 v14, 0xb

    const/16 v15, 0xd

    if-eq v2, v3, :cond_e

    const/16 v3, 0x11

    if-eq v2, v3, :cond_8

    if-eq v2, v13, :cond_6

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    .line 2
    :pswitch_0
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x48

    if-eq v2, v3, :cond_0

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_1f

    .line 3
    :cond_0
    iget v2, v0, Lk0/lj;->e:I

    add-int/lit8 v3, p2, 0x2

    aget-byte v4, v1, v3

    shr-int/2addr v4, v7

    and-int/lit8 v4, v4, 0x7

    if-eq v2, v4, :cond_4

    .line 4
    aget-byte v1, v1, v3

    shr-int/2addr v1, v7

    and-int/lit8 v1, v1, 0x7

    iput v1, v0, Lk0/lj;->e:I

    if-ne v1, v10, :cond_1

    .line 5
    invoke-virtual/range {p0 .. p0}, Lk0/lj;->c3()V

    goto/16 :goto_9

    :cond_1
    if-ne v1, v12, :cond_2

    .line 6
    invoke-virtual/range {p0 .. p0}, Lk0/lj;->b3()V

    goto/16 :goto_9

    :cond_2
    if-ne v1, v6, :cond_1f

    .line 7
    sget v1, Lu0/b;->D:I

    if-eq v1, v14, :cond_3

    if-ne v1, v15, :cond_1f

    .line 8
    :cond_3
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    .line 9
    invoke-static {v5, v10}, Ll0/b0;->l0(II)V

    .line 10
    sget-object v1, Lu0/b;->c:Lu0/h;

    invoke-interface {v1, v9}, Lu0/h;->c(I)V

    goto/16 :goto_9

    .line 11
    :cond_4
    aget-byte v2, v1, v3

    shr-int/2addr v2, v7

    and-int/lit8 v2, v2, 0x7

    if-ne v2, v10, :cond_5

    sget v2, Lu0/b;->D:I

    if-eq v2, v14, :cond_5

    .line 12
    invoke-virtual/range {p0 .. p0}, Lk0/lj;->c3()V

    goto/16 :goto_9

    .line 13
    :cond_5
    aget-byte v1, v1, v3

    shr-int/2addr v1, v7

    and-int/lit8 v1, v1, 0x7

    if-ne v1, v12, :cond_1f

    sget v1, Lu0/b;->D:I

    if-eq v1, v15, :cond_1f

    .line 14
    invoke-virtual/range {p0 .. p0}, Lk0/lj;->b3()V

    goto/16 :goto_9

    :pswitch_1
    const/16 v2, 0x8e

    .line 15
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, -0x2

    invoke-direct {v3, v1, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2, v3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_9

    :pswitch_2
    const/16 v2, 0x76

    .line 16
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, -0x2

    invoke-direct {v3, v1, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2, v3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_9

    :pswitch_3
    const/16 v2, 0x90

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 17
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 18
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 19
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 20
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 21
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 22
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v10, [I

    .line 23
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/lit8 v1, v1, 0x7

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_6
    add-int/lit8 v2, p2, 0x4

    .line 24
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 25
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 26
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 27
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_7
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 28
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 29
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 30
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 31
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v10

    aput v1, v2, v9

    .line 32
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_8
    add-int/lit8 v2, p2, 0x4

    .line 33
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    iput v2, v0, Lk0/lj;->c:I

    move v2, v9

    .line 34
    :goto_1
    iget-object v3, v0, Lk0/lj;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_a

    .line 35
    iget v4, v0, Lk0/lj;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_9

    if-eqz v4, :cond_a

    .line 36
    iput v2, v0, Lk0/lj;->b:I

    goto :goto_2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 37
    :cond_a
    :goto_2
    iget v4, v0, Lk0/lj;->c:I

    if-eqz v4, :cond_b

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    if-eqz v4, :cond_b

    .line 38
    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 39
    aget-object v2, v3, v2

    aget v2, v2, v10

    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 40
    :cond_b
    iget v2, v0, Lk0/lj;->b:I

    if-eq v2, v8, :cond_c

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    if-nez v4, :cond_c

    .line 41
    aget-object v2, v3, v2

    aget v2, v2, v10

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 42
    :cond_c
    iput v8, v0, Lk0/lj;->b:I

    :cond_d
    :goto_3
    add-int/lit8 v2, p2, 0x9

    .line 43
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    const/16 v3, 0x21c

    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    :cond_e
    add-int/lit8 v2, p2, 0x2

    .line 44
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 45
    aget-byte v3, v1, v3

    add-int/lit8 v16, p2, 0x4

    .line 46
    aget-byte v16, v1, v16

    add-int/lit8 v17, p2, 0x6

    .line 47
    aget-byte v13, v1, v17

    add-int/lit8 v17, p2, 0x7

    .line 48
    aget-byte v4, v1, v17

    add-int/lit8 v17, p2, 0x8

    .line 49
    aget-byte v5, v1, v17

    add-int/lit8 v17, p2, 0x9

    .line 50
    aget-byte v1, v1, v17

    const/16 v8, 0xa

    new-array v11, v10, [I

    shr-int/lit8 v18, v2, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v11, v9

    .line 51
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    new-array v8, v10, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v10

    aput v2, v8, v9

    .line 52
    invoke-static {v15, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v8, v3, 0x6

    and-int/2addr v8, v10

    aput v8, v2, v9

    .line 53
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v8, v3, 0x4

    and-int/2addr v8, v10

    aput v8, v2, v9

    const/16 v8, 0xc

    .line 54
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v11, v10, [I

    shr-int/2addr v3, v12

    and-int/2addr v3, v10

    aput v3, v11, v9

    .line 55
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v10, [I

    shr-int/lit8 v11, v16, 0x5

    and-int/2addr v11, v10

    aput v11, v3, v9

    .line 56
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v16, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/16 v3, 0xf

    .line 57
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xff

    and-int/lit16 v3, v13, 0xff

    if-eq v3, v6, :cond_12

    if-eq v3, v8, :cond_11

    const/4 v2, 0x5

    if-eq v3, v2, :cond_10

    const/4 v2, 0x6

    if-eq v3, v2, :cond_f

    move v2, v9

    move v3, v2

    :goto_4
    move v6, v3

    goto :goto_5

    :cond_f
    move v2, v9

    move v6, v2

    move v3, v10

    goto :goto_5

    :cond_10
    move v2, v9

    move v3, v10

    goto :goto_4

    :cond_11
    move v3, v9

    move v2, v10

    move v6, v2

    goto :goto_5

    :cond_12
    move v2, v9

    move v3, v2

    move v6, v10

    :goto_5
    new-array v7, v10, [I

    aput v2, v7, v9

    const/16 v2, 0x12

    .line 58
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v7, v10, [I

    aput v3, v7, v9

    .line 59
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v10, [I

    aput v6, v3, v9

    .line 60
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v10, [I

    const/16 v6, 0xff

    and-int/2addr v4, v6

    aput v4, v3, v9

    .line 61
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 62
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, -0x3

    const/4 v4, -0x2

    const/16 v7, 0xfe

    const/16 v8, 0x1c

    const/16 v11, 0x1b

    if-nez v2, :cond_17

    and-int/lit16 v2, v5, 0xff

    if-ne v2, v7, :cond_13

    new-array v2, v10, [I

    aput v4, v2, v9

    .line 63
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_13
    if-ne v2, v6, :cond_14

    new-array v2, v10, [I

    aput v3, v2, v9

    .line 64
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_14
    new-array v5, v10, [I

    aput v2, v5, v9

    .line 65
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    :goto_6
    and-int/2addr v1, v6

    if-ne v1, v7, :cond_15

    new-array v1, v10, [I

    aput v4, v1, v9

    .line 66
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_15
    if-ne v1, v6, :cond_16

    new-array v1, v10, [I

    aput v3, v1, v9

    .line 67
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_16
    new-array v2, v10, [I

    aput v1, v2, v9

    .line 68
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_17
    and-int/2addr v1, v6

    if-ne v1, v7, :cond_18

    new-array v1, v10, [I

    aput v4, v1, v9

    .line 69
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_18
    if-ne v1, v6, :cond_19

    new-array v1, v10, [I

    aput v3, v1, v9

    .line 70
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_19
    new-array v2, v10, [I

    aput v1, v2, v9

    .line 71
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_7
    and-int/lit16 v1, v5, 0xff

    if-ne v1, v7, :cond_1a

    new-array v1, v10, [I

    aput v4, v1, v9

    .line 72
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1a
    if-ne v1, v6, :cond_1b

    new-array v1, v10, [I

    aput v3, v1, v9

    .line 73
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1b
    new-array v2, v10, [I

    aput v1, v2, v9

    .line 74
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 75
    :cond_1c
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1d
    const/16 v2, 0x78

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 76
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    const/16 v5, 0xf

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 77
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v10, [I

    .line 78
    aget-byte v5, v1, v4

    const/4 v8, 0x5

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v10, [I

    .line 79
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v10, [I

    .line 80
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v10, [I

    .line 81
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v10, [I

    .line 82
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v10, [I

    .line 83
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 84
    aget-byte v5, v1, v4

    const/4 v8, 0x5

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v10, [I

    .line 85
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v10, [I

    .line 86
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v10, [I

    .line 87
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v10, [I

    .line 88
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v10, [I

    .line 89
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 90
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 91
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 92
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 93
    aget-byte v5, v1, v4

    const/4 v8, 0x6

    shr-int/2addr v5, v8

    and-int/2addr v5, v6

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v10, [I

    .line 94
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v6

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v10, [I

    .line 95
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v6

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v10, [I

    .line 96
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 97
    aget-byte v1, v1, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1e
    move v4, v8

    const/16 v2, 0x63

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 98
    aget-byte v5, v1, v5

    and-int/2addr v5, v4

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 99
    aget-byte v5, v1, v4

    shl-int/lit8 v5, v5, 0x8

    const v8, 0xff00

    and-int/2addr v5, v8

    add-int/lit8 v11, p2, 0x3

    aget-byte v12, v1, v11

    const/16 v13, 0xff

    and-int/2addr v12, v13

    or-int/2addr v5, v12

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x5

    .line 100
    aget-byte v12, v1, v5

    and-int/2addr v12, v13

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 101
    aget-byte v2, v1, v5

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_8

    :pswitch_4
    const/16 v2, 0x70

    new-array v3, v10, [I

    .line 102
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    aget-byte v5, v1, v11

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_5
    const/16 v2, 0x6f

    new-array v3, v10, [I

    .line 103
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    aget-byte v5, v1, v11

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_6
    const/16 v2, 0x6e

    new-array v3, v10, [I

    .line 104
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    aget-byte v5, v1, v11

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_7
    const/16 v2, 0x6d

    new-array v3, v10, [I

    .line 105
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    aget-byte v5, v1, v11

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_8
    const/16 v2, 0x6c

    new-array v3, v10, [I

    .line 106
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    aget-byte v5, v1, v11

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_9
    const/16 v2, 0x6b

    new-array v3, v10, [I

    .line 107
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    aget-byte v5, v1, v11

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :pswitch_a
    const/16 v2, 0x6a

    new-array v3, v10, [I

    .line 108
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    aget-byte v5, v1, v11

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :pswitch_b
    const/16 v2, 0x69

    new-array v3, v10, [I

    .line 109
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    aget-byte v5, v1, v11

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :pswitch_c
    const/16 v2, 0x68

    new-array v3, v10, [I

    .line 110
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    aget-byte v5, v1, v11

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :pswitch_d
    const/16 v2, 0x67

    new-array v3, v10, [I

    .line 111
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    aget-byte v5, v1, v11

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :pswitch_e
    const/16 v2, 0x66

    new-array v3, v10, [I

    .line 112
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    aget-byte v5, v1, v11

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :pswitch_f
    const/16 v2, 0x65

    new-array v3, v10, [I

    .line 113
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    aget-byte v5, v1, v11

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_8
    const/16 v2, 0x71

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 114
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v10, [I

    .line 115
    aget-byte v5, v1, v4

    const/4 v8, 0x6

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v10, [I

    .line 116
    aget-byte v5, v1, v4

    const/4 v8, 0x5

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v10, [I

    .line 117
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v10, [I

    .line 118
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_1f
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch -0x5a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/lj;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/lj;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x99

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
    .locals 10

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    sget p1, Lk0/nt;->W:I

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0x3d

    const/16 v1, 0xe3

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v5, :cond_5

    .line 2
    aget p1, p2, v4

    const/16 v6, 0xf

    const/16 v7, 0xd

    if-ne p1, v7, :cond_1

    new-array p1, v2, [I

    aput v1, p1, v4

    aput v3, p1, v5

    aput v0, p1, v3

    aput v6, p1, p4

    .line 3
    aget p2, p2, v5

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_1
    aget p1, p2, v4

    const/16 v8, 0x10

    const/16 v9, 0xe

    if-ne p1, v9, :cond_2

    new-array p1, v2, [I

    aput v1, p1, v4

    aput v3, p1, v5

    aput v0, p1, v3

    aput v8, p1, p4

    .line 5
    aget p2, p2, v5

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_2
    aget p1, p2, v4

    if-ne p1, v6, :cond_3

    new-array p1, v2, [I

    aput v1, p1, v4

    aput v3, p1, v5

    aput v0, p1, v3

    aput v7, p1, p4

    .line 7
    aget p2, p2, v5

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 8
    :cond_3
    aget p1, p2, v4

    if-ne p1, v8, :cond_4

    new-array p1, v2, [I

    aput v1, p1, v4

    aput v3, p1, v5

    aput v0, p1, v3

    aput v9, p1, p4

    .line 9
    aget p2, p2, v5

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p1, v2, [I

    aput v1, p1, v4

    aput v3, p1, v5

    aput v0, p1, v3

    .line 10
    aget v0, p2, v4

    aput v0, p1, p4

    aget p2, p2, v5

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p1, v2, [I

    aput v1, p1, v4

    aput v3, p1, v5

    aput v0, p1, v3

    .line 11
    aget v0, p2, v4

    aput v0, p1, p4

    aget p2, p2, v5

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public final b3()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.wc.tianlaicd.WC08TianlaiCar6Cd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final c3()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.wc.tianlaicd.WC08TianlaiCarRadioAct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

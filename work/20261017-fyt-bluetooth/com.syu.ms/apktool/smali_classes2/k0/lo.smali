.class public Lk0/lo;
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

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/lo;->c:I

    const/16 v1, 0xb

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

    const/4 v5, 0x6

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v5, 0x7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v5, 0x8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v5, 0x9

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/lo;->d:[[I

    .line 4
    iput v0, p0, Lk0/lo;->e:I

    .line 5
    iput-byte v4, p0, Lk0/lo;->f:B

    .line 6
    new-instance v0, Lk0/lo$a;

    invoke-direct {v0, p0}, Lk0/lo$a;-><init>(Lk0/lo;)V

    iput-object v0, p0, Lk0/lo;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/lo$b;

    invoke-direct {v0, p0}, Lk0/lo$b;-><init>(Lk0/lo;)V

    iput-object v0, p0, Lk0/lo;->h:Ljava/lang/Runnable;

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_9
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_a
    .array-data 4
        0x16
        0x2
    .end array-data
.end method

.method public static synthetic a3(Lk0/lo;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/lo;->h:Ljava/lang/Runnable;

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

    iget-object v1, p0, Lk0/lo;->g:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x7f

    const/16 v4, 0x10

    const/16 v5, 0x64

    const v6, 0xff00

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x28

    const/16 v10, 0xa

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    if-eq v2, v3, :cond_17

    const/16 v3, 0x30

    if-eq v2, v3, :cond_16

    const/16 v3, 0x41

    if-eq v2, v3, :cond_13

    const/16 v5, 0x7f

    if-eq v2, v5, :cond_12

    const/16 v5, 0x12

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 4
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 5
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->l1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 6
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    add-int/lit8 v6, p2, 0x3

    .line 7
    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    add-int/lit8 v10, p2, 0x4

    .line 8
    aget-byte v10, v1, v10

    and-int/2addr v10, v7

    add-int/lit8 v12, p2, 0x5

    .line 9
    aget-byte v13, v1, v12

    and-int/2addr v13, v7

    add-int/lit8 v16, p2, 0x6

    .line 10
    aget-byte v11, v1, v16

    and-int/2addr v11, v7

    const/16 v7, 0xb

    new-array v15, v9, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v8

    .line 11
    invoke-static {v7, v15}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xc

    new-array v15, v9, [I

    shr-int/lit8 v17, v2, 0x4

    and-int/lit8 v17, v17, 0x3

    aput v17, v15, v8

    .line 12
    invoke-static {v7, v15}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xd

    new-array v15, v9, [I

    shr-int/lit8 v17, v2, 0x3

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v8

    .line 13
    invoke-static {v7, v15}, Lk0/qt;->y0(I[I)V

    new-array v7, v9, [I

    shr-int/lit8 v15, v2, 0x2

    and-int/2addr v15, v9

    aput v15, v7, v8

    const/16 v15, 0xe

    .line 14
    invoke-static {v15, v7}, Lk0/qt;->y0(I[I)V

    new-array v7, v9, [I

    shr-int/lit8 v15, v2, 0x1

    and-int/2addr v15, v9

    aput v15, v7, v8

    .line 15
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    new-array v4, v9, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v9

    aput v2, v4, v8

    .line 16
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v6, 0x0

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 17
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v9, [I

    shr-int/lit8 v4, v6, 0x1

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 18
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v9, [I

    const/4 v4, 0x2

    shr-int/lit8 v4, v6, 0x2

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 19
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v9, [I

    const/16 v4, 0xff

    and-int/lit16 v5, v10, 0xff

    aput v5, v3, v8

    .line 20
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 21
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    aget-byte v2, v1, v16

    and-int/lit16 v13, v2, 0xff

    .line 23
    aget-byte v2, v1, v12

    and-int/lit16 v11, v2, 0xff

    :cond_0
    and-int/lit16 v2, v13, 0xff

    const/4 v3, -0x2

    const/4 v5, -0x1

    const/16 v6, 0x1b

    if-eqz v2, :cond_3

    const/16 v7, 0xfe

    if-eq v2, v7, :cond_2

    if-eq v2, v4, :cond_1

    new-array v4, v9, [I

    aput v2, v4, v8

    .line 24
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v2, v9, [I

    const/4 v4, -0x3

    aput v4, v2, v8

    .line 25
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v2, v9, [I

    aput v3, v2, v8

    .line 26
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v2, v9, [I

    aput v5, v2, v8

    .line 27
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v2, 0xff

    and-int/lit16 v4, v11, 0xff

    const/16 v6, 0x1c

    if-eqz v4, :cond_6

    const/16 v7, 0xfe

    if-eq v4, v7, :cond_5

    if-eq v4, v2, :cond_4

    new-array v2, v9, [I

    aput v4, v2, v8

    .line 28
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array v2, v9, [I

    const/4 v3, -0x3

    aput v3, v2, v8

    .line 29
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v2, v9, [I

    aput v3, v2, v8

    .line 30
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    new-array v2, v9, [I

    aput v5, v2, v8

    .line 31
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v2, 0x37

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 32
    aget-byte v1, v1, v4

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v14

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 33
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 34
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 35
    iput v2, v0, Lk0/lo;->c:I

    move v2, v8

    .line 36
    :goto_2
    iget-object v3, v0, Lk0/lo;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_8

    .line 37
    iget v4, v0, Lk0/lo;->c:I

    aget-object v6, v3, v2

    aget v6, v6, v8

    if-ne v4, v6, :cond_7

    if-eqz v4, :cond_8

    .line 38
    iput v2, v0, Lk0/lo;->b:I

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 39
    :cond_8
    :goto_3
    iget v4, v0, Lk0/lo;->c:I

    if-eq v4, v14, :cond_10

    if-eq v4, v13, :cond_e

    const/16 v6, 0x9

    if-eq v4, v6, :cond_c

    if-eq v4, v10, :cond_c

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v9, :cond_9

    .line 40
    array-length v1, v3

    if-ge v2, v1, :cond_1c

    .line 41
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_9
    if-nez v1, :cond_1c

    .line 42
    iget v1, v0, Lk0/lo;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_a

    const/16 v2, 0xff

    if-eq v1, v2, :cond_b

    .line 43
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_4

    :cond_a
    const/16 v2, 0xff

    .line 44
    :cond_b
    :goto_4
    iput v2, v0, Lk0/lo;->b:I

    goto/16 :goto_7

    :cond_c
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v9, :cond_1c

    .line 45
    sget v1, Lh0/c;->E:I

    if-eq v1, v14, :cond_d

    if-eq v1, v12, :cond_d

    .line 46
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    .line 47
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_d
    const/16 v1, 0x1a

    .line 48
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 49
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_e
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v9, :cond_1c

    .line 50
    sget v1, Lu0/b;->D:I

    if-eq v1, v9, :cond_f

    const/16 v1, 0x22

    .line 51
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 52
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_f
    const/16 v1, 0x44

    .line 53
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 54
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_10
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v9, :cond_1c

    .line 55
    sget v1, Lu0/b;->D:I

    if-eq v1, v9, :cond_11

    const/16 v1, 0x23

    .line 56
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 57
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_11
    const/16 v1, 0x43

    .line 58
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 59
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 60
    :cond_12
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_13
    const/4 v3, 0x2

    add-int/lit8 v2, p2, 0x2

    .line 61
    aget-byte v4, v1, v2

    if-eq v4, v3, :cond_15

    if-eq v4, v14, :cond_14

    goto/16 :goto_7

    :cond_14
    const/16 v3, 0x408

    new-array v4, v9, [I

    .line 62
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v6

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v2

    aput v1, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_15
    add-int/lit8 v2, p2, 0xe

    .line 63
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v6

    add-int/lit8 v3, p2, 0xf

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    div-int/2addr v1, v5

    const/16 v2, 0x407

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 64
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 65
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x14f0

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 66
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const-string v3, "persist.syu.reversefrontdoor"

    .line 67
    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_18

    new-array v3, v9, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 68
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v9

    aput v4, v3, v8

    const/4 v4, 0x2

    .line 69
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_18
    new-array v3, v9, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 70
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v9

    aput v4, v3, v8

    const/4 v4, 0x2

    .line 71
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array v3, v9, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 72
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 73
    invoke-static {v14, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 74
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    const/4 v4, 0x2

    shr-int/2addr v2, v4

    and-int/2addr v2, v9

    aput v2, v3, v8

    .line 75
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 76
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1a

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_19

    goto :goto_6

    :cond_19
    mul-int/2addr v1, v10

    add-int/lit16 v1, v1, 0x258

    .line 77
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_7

    .line 78
    :cond_1a
    :goto_6
    invoke-static {v8}, Lu0/d;->A3(I)V

    goto :goto_7

    :cond_1b
    const/16 v2, 0x63

    new-array v3, v9, [I

    add-int/lit8 v7, p2, 0x2

    .line 79
    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v6

    add-int/lit8 v10, p2, 0x3

    aget-byte v10, v1, v10

    const/16 v11, 0xff

    and-int/2addr v10, v11

    or-int/2addr v7, v10

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v9, [I

    add-int/lit8 v7, p2, 0x4

    .line 80
    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v6

    add-int/lit8 v10, p2, 0x5

    aget-byte v10, v1, v10

    const/16 v11, 0xff

    and-int/2addr v10, v11

    or-int/2addr v7, v10

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x8

    .line 81
    aget-byte v3, v1, v3

    shl-int/2addr v3, v4

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x7

    aget-byte v1, v1, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    or-int/2addr v1, v3

    aput v1, v2, v8

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :cond_1c
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/lo;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/lo;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x67

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
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1
    invoke-static {p2, p1}, Lk0/qt;->l0([II)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x5

    new-array p3, p3, [I

    const/16 p4, 0xe3

    const/4 v0, 0x0

    aput p4, p3, v0

    const/16 p4, 0x95

    const/4 v1, 0x1

    aput p4, p3, v1

    aput p1, p3, p1

    const/4 p1, 0x3

    .line 2
    aget p4, p2, v0

    aput p4, p3, p1

    const/4 p1, 0x4

    aget p2, p2, v1

    aput p2, p3, p1

    invoke-static {p3}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

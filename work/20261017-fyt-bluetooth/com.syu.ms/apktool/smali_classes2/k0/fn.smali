.class public Lk0/fn;
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

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/fn;->c:I

    const/16 v1, 0xa

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

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

    iput-object v2, p0, Lk0/fn;->d:[[I

    .line 4
    iput v0, p0, Lk0/fn;->f:I

    const/16 v2, 0x10

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_a

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    const/16 v4, 0xb

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    const/16 v4, 0xc

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    const/16 v4, 0xd

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    const/16 v4, 0xe

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    const/16 v3, 0xf

    aput-object v1, v2, v3

    iput-object v2, p0, Lk0/fn;->g:[[I

    .line 6
    iput v0, p0, Lk0/fn;->h:I

    .line 7
    new-instance v0, Lk0/fn$a;

    invoke-direct {v0, p0}, Lk0/fn$a;-><init>(Lk0/fn;)V

    iput-object v0, p0, Lk0/fn;->i:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/fn$b;

    invoke-direct {v0, p0}, Lk0/fn$b;-><init>(Lk0/fn;)V

    iput-object v0, p0, Lk0/fn;->j:Ljava/lang/Runnable;

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_6
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_9
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_c
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_d
    .array-data 4
        0x4
        0x27
    .end array-data

    :array_e
    .array-data 4
        0x5
        0x40
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x7
        0x4
    .end array-data

    :array_11
    .array-data 4
        0x8
        0x36
    .end array-data

    :array_12
    .array-data 4
        0x9
        0x1f
    .end array-data

    :array_13
    .array-data 4
        0xa
        0x1e
    .end array-data

    :array_14
    .array-data 4
        0xb
        0x28
    .end array-data

    :array_15
    .array-data 4
        0xc
        0x29
    .end array-data

    :array_16
    .array-data 4
        0xd
        0x2a
    .end array-data

    :array_17
    .array-data 4
        0xe
        0x2b
    .end array-data

    :array_18
    .array-data 4
        0xf
        0x2c
    .end array-data

    :array_19
    .array-data 4
        0x10
        0x2d
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

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/fn;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x30

    const/4 v4, 0x2

    const/16 v5, 0xff

    const/4 v6, 0x0

    if-eq v2, v3, :cond_25

    const/16 v3, 0x7d

    const/16 v7, 0x64

    const v10, 0xff00

    const/16 v11, 0x8

    const/4 v12, 0x6

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x1

    if-eq v2, v3, :cond_20

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x71

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x72

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x9

    const/4 v8, 0x7

    const/4 v9, 0x5

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_d

    :pswitch_0
    const/16 v2, 0x65

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v14

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x6

    .line 3
    aget-byte v4, v1, v4

    shl-int/2addr v4, v11

    and-int/2addr v4, v10

    add-int/lit8 v7, p2, 0x5

    aget-byte v1, v1, v7

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 4
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 5
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v15

    aput v3, v2, v6

    .line 6
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v15

    aput v3, v2, v6

    .line 7
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v15

    aput v3, v2, v6

    .line 8
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v15

    aput v3, v2, v6

    .line 9
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v15

    aput v3, v2, v6

    .line 10
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v15

    aput v3, v2, v6

    .line 11
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v15

    aput v3, v2, v6

    .line 12
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v15

    aput v1, v2, v6

    .line 13
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_2
    const/16 v2, 0x63

    new-array v3, v15, [I

    add-int/lit8 v9, p2, 0x2

    .line 14
    aget-byte v9, v1, v9

    shr-int/lit8 v4, v9, 0x2

    and-int/2addr v4, v15

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    add-int/lit8 v3, p2, 0x8

    .line 15
    aget-byte v3, v1, v3

    shl-int/2addr v3, v11

    and-int/2addr v3, v10

    add-int/lit8 v4, p2, 0x7

    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    or-int/2addr v1, v3

    aput v1, v2, v6

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 16
    aget-byte v2, v1, v2

    add-int/lit8 v7, p2, 0x3

    .line 17
    aget-byte v1, v1, v7

    and-int/2addr v2, v5

    .line 18
    iput v2, v0, Lk0/fn;->f:I

    move v2, v6

    .line 19
    :goto_1
    iget-object v7, v0, Lk0/fn;->g:[[I

    array-length v9, v7

    if-ge v2, v9, :cond_2

    .line 20
    iget v9, v0, Lk0/fn;->f:I

    aget-object v10, v7, v2

    aget v10, v10, v6

    if-ne v9, v10, :cond_1

    if-eqz v9, :cond_2

    .line 21
    iput v2, v0, Lk0/fn;->e:I

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 22
    :cond_2
    :goto_2
    iget v9, v0, Lk0/fn;->f:I

    if-eq v9, v4, :cond_b

    if-eq v9, v14, :cond_9

    if-eq v9, v3, :cond_7

    const/16 v3, 0xa

    if-eq v9, v3, :cond_5

    and-int/2addr v1, v5

    if-ne v1, v15, :cond_3

    .line 23
    array-length v1, v7

    if-ge v2, v1, :cond_26

    .line 24
    aget-object v1, v7, v2

    aget v1, v1, v15

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_3
    if-nez v1, :cond_26

    .line 25
    iget v1, v0, Lk0/fn;->e:I

    array-length v2, v7

    if-ge v1, v2, :cond_4

    if-eq v1, v5, :cond_4

    .line 26
    aget-object v1, v7, v1

    aget v1, v1, v15

    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    .line 27
    :cond_4
    iput v5, v0, Lk0/fn;->e:I

    goto/16 :goto_d

    :cond_5
    move v2, v6

    :goto_3
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_6

    const/16 v3, 0x1e

    .line 28
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    const/16 v1, 0x1e

    .line 29
    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_7
    move v2, v6

    :goto_4
    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x1f

    if-ge v2, v3, :cond_8

    .line 30
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 31
    :cond_8
    invoke-static {v4, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_9
    move v2, v6

    :goto_5
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_a

    .line 32
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 33
    :cond_a
    invoke-static {v11, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_b
    move v2, v6

    :goto_6
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_c

    .line 34
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 35
    :cond_c
    invoke-static {v8, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 36
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x3

    .line 37
    aget-byte v7, v1, v4

    and-int/2addr v7, v5

    add-int/lit8 v8, p2, 0x4

    .line 38
    aget-byte v10, v1, v8

    and-int/2addr v10, v5

    add-int/lit8 v9, p2, 0x5

    .line 39
    aget-byte v11, v1, v9

    and-int/2addr v11, v5

    if-nez v3, :cond_d

    if-nez v7, :cond_d

    if-nez v10, :cond_d

    if-nez v11, :cond_d

    .line 40
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_7

    .line 41
    :cond_d
    sget v6, Ll0/c0;->g:I

    if-ne v6, v3, :cond_e

    sget v6, Ll0/c0;->h:I

    if-ne v6, v7, :cond_e

    sget v6, Ll0/c0;->i:I

    if-ne v6, v10, :cond_e

    sget v6, Ll0/c0;->j:I

    if-eq v6, v11, :cond_f

    .line 42
    :cond_e
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_f

    .line 43
    invoke-static {v15}, Lu0/d;->C2(I)V

    .line 44
    sput v13, Ll0/c0;->k:I

    .line 45
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 46
    :cond_f
    :goto_7
    sput v3, Ll0/c0;->g:I

    .line 47
    sput v7, Ll0/c0;->h:I

    .line 48
    sput v10, Ll0/c0;->i:I

    .line 49
    sput v11, Ll0/c0;->j:I

    .line 50
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 51
    aget-byte v2, v1, v4

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 52
    aget-byte v2, v1, v8

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 53
    aget-byte v1, v1, v9

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_d

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 54
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 55
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 56
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 57
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_d

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 58
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 59
    aget-byte v3, v1, v3

    add-int/lit8 v7, p2, 0x4

    .line 60
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x5

    .line 61
    aget-byte v8, v1, v8

    add-int/lit8 v10, p2, 0x6

    .line 62
    aget-byte v1, v1, v10

    new-array v10, v15, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v15

    aput v11, v10, v6

    const/16 v11, 0xb

    .line 63
    invoke-static {v11, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v15, [I

    shr-int/lit8 v11, v2, 0x4

    and-int/2addr v11, v14

    aput v11, v10, v6

    const/16 v11, 0xc

    .line 64
    invoke-static {v11, v10}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xd

    new-array v11, v15, [I

    shr-int/lit8 v12, v2, 0x3

    and-int/2addr v12, v15

    aput v12, v11, v6

    .line 65
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xe

    new-array v11, v15, [I

    shr-int/lit8 v12, v2, 0x2

    and-int/2addr v12, v15

    aput v12, v11, v6

    .line 66
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x10

    new-array v11, v15, [I

    shr-int/2addr v2, v15

    and-int/2addr v2, v15

    aput v2, v11, v6

    .line 67
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v3, 0xff

    if-eq v2, v15, :cond_14

    if-eq v2, v4, :cond_13

    if-eq v2, v14, :cond_12

    if-eq v2, v13, :cond_11

    if-eq v2, v9, :cond_10

    move v2, v6

    move v3, v2

    :goto_8
    move v4, v3

    goto :goto_9

    :cond_10
    move v3, v6

    move v4, v3

    move v2, v15

    goto :goto_9

    :cond_11
    move v3, v6

    move v2, v15

    move v4, v2

    goto :goto_9

    :cond_12
    move v2, v6

    move v3, v2

    move v4, v15

    goto :goto_9

    :cond_13
    move v2, v6

    move v3, v15

    goto :goto_8

    :cond_14
    move v2, v6

    move v4, v2

    move v3, v15

    :goto_9
    const/16 v9, 0x41

    new-array v10, v15, [I

    aput v2, v10, v6

    .line 68
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    new-array v9, v15, [I

    aput v2, v9, v6

    const/16 v2, 0x12

    .line 69
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v9, v15, [I

    aput v3, v9, v6

    .line 70
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v15, [I

    aput v4, v3, v6

    .line 71
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v15, [I

    and-int/lit16 v4, v7, 0xff

    aput v4, v3, v6

    .line 72
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 73
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v3, 0x1c

    const/16 v4, 0x1b

    if-eqz v2, :cond_15

    new-array v2, v15, [I

    and-int/2addr v1, v5

    aput v1, v2, v6

    .line 74
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v15, [I

    and-int/lit16 v2, v8, 0xff

    aput v2, v1, v6

    .line 75
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_15
    new-array v2, v15, [I

    and-int/lit16 v7, v8, 0xff

    aput v7, v2, v6

    .line 76
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    and-int/2addr v1, v5

    aput v1, v2, v6

    .line 77
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 78
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 79
    aget-byte v1, v1, v4

    and-int/2addr v2, v5

    .line 80
    iput v2, v0, Lk0/fn;->c:I

    move v2, v6

    .line 81
    :goto_a
    iget-object v4, v0, Lk0/fn;->d:[[I

    array-length v7, v4

    if-ge v2, v7, :cond_17

    .line 82
    iget v7, v0, Lk0/fn;->c:I

    aget-object v8, v4, v2

    aget v8, v8, v6

    if-ne v7, v8, :cond_16

    if-eqz v7, :cond_17

    .line 83
    iput v2, v0, Lk0/fn;->b:I

    goto :goto_b

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 84
    :cond_17
    :goto_b
    iget v7, v0, Lk0/fn;->c:I

    if-eq v7, v3, :cond_1a

    and-int/2addr v1, v5

    if-ne v1, v15, :cond_18

    .line 85
    array-length v1, v4

    if-ge v2, v1, :cond_26

    .line 86
    aget-object v1, v4, v2

    aget v1, v1, v15

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_18
    if-nez v1, :cond_26

    .line 87
    iget v1, v0, Lk0/fn;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_19

    if-eq v1, v5, :cond_19

    .line 88
    aget-object v1, v4, v1

    aget v1, v1, v15

    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    .line 89
    :cond_19
    iput v5, v0, Lk0/fn;->b:I

    goto/16 :goto_d

    :cond_1a
    and-int/2addr v1, v5

    if-ne v1, v15, :cond_26

    .line 90
    sget v1, Lh0/c;->E:I

    if-eq v1, v14, :cond_1c

    if-eq v1, v13, :cond_1b

    if-eq v1, v9, :cond_1c

    const/16 v1, 0x12

    .line 91
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 92
    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_1b
    const/16 v1, 0x12

    .line 93
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 94
    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_1c
    const/16 v1, 0x1a

    .line 95
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 96
    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_1d
    const/16 v2, 0x6a

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x2

    .line 97
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x3

    .line 98
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_1e
    const/16 v2, 0x67

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x2

    .line 99
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x3

    .line 100
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x4

    .line 101
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    .line 102
    :cond_1f
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_20
    add-int/lit8 v2, p2, 0x2

    .line 103
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    const/16 v3, 0x419

    const/4 v8, 0x0

    if-eq v2, v15, :cond_23

    if-eq v2, v14, :cond_22

    if-eq v2, v12, :cond_21

    goto/16 :goto_d

    .line 104
    :cond_21
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v5, v4, [I

    const/16 v7, 0xc

    aput v7, v5, v6

    add-int/lit8 v7, p2, 0x3

    aget-byte v9, v1, v7

    shr-int/2addr v9, v12

    and-int/2addr v9, v15

    aput v9, v5, v15

    invoke-static {v2, v3, v5, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v5, v4, [I

    aput v14, v5, v6

    .line 105
    aget-byte v7, v1, v7

    shr-int/2addr v7, v6

    and-int/2addr v7, v15

    aput v7, v5, v15

    invoke-static {v2, v3, v5, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v4, v4, [I

    aput v13, v4, v6

    add-int/lit8 v5, p2, 0x4

    .line 106
    aget-byte v1, v1, v5

    shr-int/2addr v1, v6

    and-int/lit8 v1, v1, 0xf

    aput v1, v4, v15

    invoke-static {v2, v3, v4, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_d

    :cond_22
    add-int/lit8 v2, p2, 0x4

    .line 107
    aget-byte v2, v1, v2

    shl-int/2addr v2, v11

    and-int/2addr v2, v10

    add-int/lit8 v9, p2, 0x3

    aget-byte v1, v1, v9

    and-int/2addr v1, v5

    or-int/2addr v1, v2

    div-int/2addr v1, v7

    const/16 v2, 0x407

    new-array v5, v15, [I

    aput v1, v5, v6

    .line 108
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    .line 109
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v4, [I

    aput v15, v4, v6

    aput v1, v4, v15

    invoke-static {v2, v3, v4, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_d

    :cond_23
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 110
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_24

    add-int/lit8 v2, p2, 0x3

    .line 111
    aget-byte v7, v1, v2

    shr-int/2addr v7, v14

    and-int/2addr v7, v15

    aget-byte v2, v1, v2

    shr-int/2addr v2, v13

    and-int/2addr v2, v15

    invoke-static {v7, v2, v6}, Ll0/c0;->b(III)V

    goto :goto_c

    :cond_24
    add-int/lit8 v2, p2, 0x3

    .line 112
    aget-byte v7, v1, v2

    shr-int/2addr v7, v14

    and-int/2addr v7, v15

    aget-byte v2, v1, v2

    shr-int/2addr v2, v13

    and-int/2addr v2, v15

    invoke-static {v7, v2, v6}, Ll0/c0;->a(III)V

    .line 113
    :goto_c
    sget v2, Lu0/b;->w:I

    shl-int/2addr v2, v12

    and-int/lit8 v2, v2, 0x40

    add-int/lit8 v7, p2, 0x3

    aget-byte v1, v1, v7

    and-int/2addr v1, v5

    or-int/2addr v1, v2

    .line 114
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v4, [I

    const/16 v5, 0xb

    aput v5, v4, v6

    aput v1, v4, v15

    invoke-static {v2, v3, v4, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_d

    :cond_25
    add-int/lit8 v2, p2, 0x3

    .line 115
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    const/16 v3, 0x21c

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->l(IIZI)V

    :cond_26
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/fn;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/fn;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6c

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
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0x83

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 2
    aget p4, p2, p4

    int-to-byte p4, p4

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v0

    int-to-byte p2, p2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

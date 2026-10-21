.class public Lk0/fl;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/fl;->c:I

    const/16 v1, 0xa

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

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/fl;->d:[[I

    .line 4
    iput v0, p0, Lk0/fl;->e:I

    .line 5
    new-instance v0, Lk0/fl$a;

    invoke-direct {v0, p0}, Lk0/fl$a;-><init>(Lk0/fl;)V

    iput-object v0, p0, Lk0/fl;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/fl$b;

    invoke-direct {v0, p0}, Lk0/fl$b;-><init>(Lk0/fl;)V

    iput-object v0, p0, Lk0/fl;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/fl$c;

    invoke-direct {v0, p0}, Lk0/fl$c;-><init>(Lk0/fl;)V

    iput-object v0, p0, Lk0/fl;->h:Ljava/lang/Runnable;

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
        0x6
        0x1a
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_7
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x10
        0x10
    .end array-data

    :array_9
    .array-data 4
        0x30
        0x12
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

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->b:I

    .line 6
    iput v2, v0, Lk0/mt;->c:I

    .line 7
    iput v2, v0, Lk0/mt;->d:I

    .line 8
    iput v2, v0, Lk0/mt;->o:I

    .line 9
    iput v1, v0, Lk0/mt;->i:I

    .line 10
    iget-object v0, p0, Lk0/fl;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/fl;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x10

    const/4 v4, 0x2

    if-eq v2, v3, :cond_1a

    const/16 v5, 0x1a

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v5, :cond_19

    const/16 v11, 0x31

    const/16 v12, 0x41

    const/16 v13, 0xd

    const/16 v14, 0xc

    const/16 v15, 0x12

    const/4 v3, 0x5

    const/16 v6, 0xff

    if-eq v2, v11, :cond_11

    if-eq v2, v12, :cond_10

    const/16 v11, 0x11

    if-eq v2, v11, :cond_2

    if-eq v2, v15, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v2, p2, 0x4

    .line 2
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v10, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v10

    aput v5, v2, v9

    .line 4
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v10

    aput v5, v2, v9

    .line 5
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v2, v10, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v10

    aput v5, v2, v9

    .line 6
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v10

    aput v5, v2, v9

    .line 7
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v10, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v10

    aput v4, v2, v9

    .line 8
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v10

    aput v4, v2, v9

    .line 9
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v10

    aput v1, v2, v9

    .line 10
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_2
    add-int/lit8 v2, p2, 0x4

    .line 11
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x5

    .line 12
    aget-byte v4, v1, v4

    and-int/2addr v2, v6

    .line 13
    iput v2, v0, Lk0/fl;->c:I

    move v2, v9

    .line 14
    :goto_1
    iget-object v11, v0, Lk0/fl;->d:[[I

    array-length v12, v11

    if-ge v2, v12, :cond_4

    .line 15
    iget v12, v0, Lk0/fl;->c:I

    aget-object v16, v11, v2

    aget v5, v16, v9

    if-ne v12, v5, :cond_3

    if-eqz v12, :cond_4

    .line 16
    iput v2, v0, Lk0/fl;->b:I

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x1a

    goto :goto_1

    .line 17
    :cond_4
    :goto_2
    iget v5, v0, Lk0/fl;->c:I

    const v12, 0x3701be

    const v3, 0x3601be

    if-eq v5, v7, :cond_b

    if-eq v5, v8, :cond_7

    and-int/lit16 v3, v4, 0xff

    if-ne v3, v10, :cond_5

    .line 18
    array-length v3, v11

    if-ge v2, v3, :cond_f

    .line 19
    aget-object v2, v11, v2

    aget v2, v2, v10

    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_3

    :cond_5
    if-nez v3, :cond_f

    .line 20
    iget v2, v0, Lk0/fl;->b:I

    array-length v3, v11

    if-ge v2, v3, :cond_6

    if-eq v2, v6, :cond_6

    .line 21
    aget-object v2, v11, v2

    aget v2, v2, v10

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 22
    :cond_6
    iput v6, v0, Lk0/fl;->b:I

    goto/16 :goto_3

    :cond_7
    and-int/lit16 v2, v4, 0xff

    if-ne v2, v10, :cond_f

    .line 23
    sget v2, Lk0/nt;->a:I

    if-eq v2, v3, :cond_8

    if-eq v2, v12, :cond_8

    .line 24
    invoke-static {v13, v9}, Ll0/b0;->l0(II)V

    .line 25
    invoke-static {v13, v10}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 26
    :cond_8
    sget v2, Lh0/c;->E:I

    if-eq v2, v8, :cond_a

    .line 27
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    invoke-virtual {v2}, Lu0/i;->r3()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 28
    invoke-static {v15, v9}, Ll0/b0;->l0(II)V

    .line 29
    invoke-static {v15, v10}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 30
    :cond_9
    invoke-static {v13, v9}, Ll0/b0;->l0(II)V

    .line 31
    invoke-static {v13, v10}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 32
    :cond_a
    invoke-static {v15, v9}, Ll0/b0;->l0(II)V

    .line 33
    invoke-static {v15, v10}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_b
    and-int/lit16 v2, v4, 0xff

    if-ne v2, v10, :cond_f

    .line 34
    sget v2, Lk0/nt;->a:I

    if-eq v2, v3, :cond_c

    if-eq v2, v12, :cond_c

    .line 35
    invoke-static {v14, v9}, Ll0/b0;->l0(II)V

    .line 36
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 37
    :cond_c
    sget v2, Lh0/c;->E:I

    if-eq v2, v7, :cond_e

    if-eq v2, v8, :cond_e

    const/4 v3, 0x5

    if-eq v2, v3, :cond_e

    .line 38
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    invoke-virtual {v2}, Lu0/i;->r3()Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x1a

    .line 39
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    .line 40
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 41
    :cond_d
    invoke-static {v14, v9}, Ll0/b0;->l0(II)V

    .line 42
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_e
    const/16 v2, 0x1a

    .line 43
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    .line 44
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    :cond_f
    :goto_3
    add-int/lit8 v2, p2, 0x9

    .line 45
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_6

    :cond_10
    add-int/lit8 v2, p2, 0x2

    .line 46
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->Y0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 47
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->Y0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 48
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->Y0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 49
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->Y0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_6

    :cond_11
    add-int/lit8 v2, p2, 0x2

    .line 50
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 51
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 52
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x6

    .line 53
    aget-byte v5, v1, v5

    add-int/lit8 v11, p2, 0x7

    .line 54
    aget-byte v11, v1, v11

    add-int/lit8 v17, p2, 0x8

    .line 55
    aget-byte v6, v1, v17

    add-int/lit8 v17, p2, 0x9

    .line 56
    aget-byte v1, v1, v17

    const/16 v1, 0xa

    new-array v15, v10, [I

    const/16 v16, 0x6

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v10

    aput v2, v15, v9

    .line 57
    invoke-static {v1, v15}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v3, 0x7

    and-int/2addr v2, v10

    aput v2, v1, v9

    .line 58
    invoke-static {v13, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v3, 0x6

    and-int/2addr v2, v10

    aput v2, v1, v9

    const/16 v2, 0xb

    .line 59
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x44

    new-array v2, v10, [I

    shr-int/lit8 v13, v3, 0x5

    and-int/2addr v13, v10

    aput v13, v2, v9

    .line 60
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v3, 0x4

    and-int/2addr v2, v10

    aput v2, v1, v9

    .line 61
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x24

    new-array v2, v10, [I

    shr-int/2addr v3, v7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 62
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v4, 0x4

    and-int/2addr v2, v10

    aput v2, v1, v9

    .line 63
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    if-eq v5, v7, :cond_16

    const/4 v1, 0x5

    if-eq v5, v1, :cond_15

    const/4 v1, 0x6

    if-eq v5, v1, :cond_14

    const/16 v1, 0xb

    if-eq v5, v1, :cond_13

    if-eq v5, v14, :cond_12

    move v1, v9

    move v2, v1

    :goto_4
    move v3, v2

    goto :goto_5

    :cond_12
    move v1, v9

    move v2, v10

    goto :goto_4

    :cond_13
    move v1, v9

    move v2, v1

    move v3, v10

    goto :goto_5

    :cond_14
    move v2, v9

    move v3, v2

    move v1, v10

    goto :goto_5

    :cond_15
    move v3, v9

    move v1, v10

    move v2, v1

    goto :goto_5

    :cond_16
    move v1, v9

    move v3, v1

    move v2, v10

    :goto_5
    const/16 v4, 0x13

    new-array v5, v10, [I

    aput v1, v5, v9

    .line 64
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v4, v10, [I

    aput v2, v4, v9

    .line 65
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    aput v3, v1, v9

    const/16 v2, 0x12

    .line 66
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v2, v10, [I

    const/16 v3, 0xff

    and-int/lit16 v4, v11, 0xff

    aput v4, v2, v9

    .line 67
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v1, v6, 0xff

    const/16 v2, 0xfe

    const/16 v4, 0x1b

    if-ne v1, v2, :cond_17

    new-array v1, v10, [I

    const/4 v2, -0x2

    aput v2, v1, v9

    .line 68
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_17
    if-ne v1, v3, :cond_18

    new-array v1, v10, [I

    const/4 v2, -0x3

    aput v2, v1, v9

    .line 69
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_18
    new-array v2, v10, [I

    const/4 v3, 0x5

    mul-int/2addr v1, v3

    aput v1, v2, v9

    .line 70
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 71
    aget-byte v2, v1, v2

    shr-int/2addr v2, v10

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_1b

    add-int/lit8 v2, p2, 0x4

    .line 72
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v10

    .line 73
    aget-byte v5, v1, v2

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    shl-int/2addr v3, v7

    and-int/lit8 v3, v3, 0x8

    shl-int/2addr v5, v8

    and-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    .line 74
    sget v5, Lu0/b;->w:I

    const/4 v6, 0x6

    shl-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x40

    or-int/2addr v3, v5

    .line 75
    sget-object v5, Lk0/nt;->f:[Lo1/x;

    const/16 v6, 0x419

    new-array v4, v4, [I

    const/16 v7, 0xb

    aput v7, v4, v9

    aput v3, v4, v10

    const/4 v3, 0x0

    invoke-static {v5, v6, v4, v3, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 76
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v10

    aget-byte v1, v1, v2

    shr-int/2addr v1, v10

    and-int/2addr v1, v10

    invoke-static {v3, v1, v9}, Ll0/c0;->N1(III)V

    goto :goto_6

    .line 77
    :cond_1a
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_1b
    :goto_6
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/fl;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/fl;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/fl;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

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
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/4 p3, 0x1

    const/4 v0, 0x2

    aput v0, p1, p3

    const/16 v1, 0x3d

    aput v1, p1, v0

    const/4 v0, 0x3

    .line 1
    aget p4, p2, p4

    aput p4, p1, v0

    const/4 p4, 0x4

    aget p2, p2, p3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

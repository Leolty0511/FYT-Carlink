.class public Lk0/tk;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/tk;->c:I

    const/16 v0, 0xb

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_a

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/tk;->d:[[I

    .line 4
    iput v3, p0, Lk0/tk;->e:I

    .line 5
    new-instance v0, Lk0/tk$a;

    invoke-direct {v0, p0}, Lk0/tk$a;-><init>(Lk0/tk;)V

    iput-object v0, p0, Lk0/tk;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/tk$b;

    invoke-direct {v0, p0}, Lk0/tk$b;-><init>(Lk0/tk;)V

    iput-object v0, p0, Lk0/tk;->g:Ljava/lang/Runnable;

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
        -0x1
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
        0xf
        0xd
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

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/tk;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x5a

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_14

    const/16 v3, -0x10

    const/4 v7, 0x2

    if-eq v2, v3, :cond_13

    const/16 v3, 0x13

    const/16 v8, 0xb

    const v9, 0xff00

    if-eq v2, v3, :cond_12

    const/16 v10, 0x32

    const/16 v11, 0x10

    if-eq v2, v10, :cond_11

    const/16 v9, 0x72

    const/4 v10, 0x4

    if-eq v2, v9, :cond_a

    const/16 v9, 0x73

    if-eq v2, v9, :cond_0

    goto/16 :goto_7

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    const/16 v9, 0x31

    new-array v12, v6, [I

    shr-int/lit8 v13, v2, 0x0

    and-int/2addr v13, v6

    aput v13, v12, v5

    .line 3
    invoke-static {v9, v12}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x35

    new-array v12, v6, [I

    shr-int/lit8 v13, v2, 0x1

    and-int/2addr v13, v6

    aput v13, v12, v5

    .line 4
    invoke-static {v9, v12}, Lk0/qt;->y0(I[I)V

    new-array v9, v6, [I

    shr-int/lit8 v12, v2, 0x2

    and-int/2addr v12, v6

    aput v12, v9, v5

    const/16 v12, 0xe

    .line 5
    invoke-static {v12, v9}, Lk0/qt;->y0(I[I)V

    new-array v9, v6, [I

    shr-int/lit8 v12, v2, 0x3

    and-int/2addr v12, v6

    aput v12, v9, v5

    const/16 v12, 0xd

    .line 6
    invoke-static {v12, v9}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xc

    new-array v12, v6, [I

    shr-int/lit8 v13, v2, 0x4

    const/4 v14, 0x3

    and-int/2addr v13, v14

    aput v13, v12, v5

    .line 7
    invoke-static {v9, v12}, Lk0/qt;->y0(I[I)V

    new-array v9, v6, [I

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v6

    aput v2, v9, v5

    const/16 v2, 0xa

    .line 8
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v9, p2, 0x3

    .line 9
    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    const/16 v12, 0x41

    new-array v13, v6, [I

    shr-int/lit8 v15, v9, 0x4

    and-int/2addr v15, v6

    aput v15, v13, v5

    .line 10
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    new-array v12, v6, [I

    shr-int/lit8 v13, v9, 0x5

    and-int/2addr v13, v6

    aput v13, v12, v5

    .line 11
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    new-array v11, v6, [I

    shr-int/lit8 v12, v9, 0x6

    and-int/2addr v12, v6

    aput v12, v11, v5

    .line 12
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x43

    new-array v11, v6, [I

    shr-int/lit8 v12, v9, 0x7

    and-int/2addr v12, v6

    aput v12, v11, v5

    .line 13
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x1d

    new-array v11, v6, [I

    shr-int/lit8 v12, v9, 0x0

    and-int/2addr v12, v14

    aput v12, v11, v5

    .line 14
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x1e

    new-array v11, v6, [I

    shr-int/2addr v9, v7

    and-int/2addr v9, v14

    aput v9, v11, v5

    .line 15
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v8, p2, 0x4

    .line 16
    aget-byte v9, v1, v8

    and-int/2addr v9, v4

    add-int/lit8 v11, p2, 0x5

    .line 17
    aget-byte v12, v1, v11

    and-int/2addr v12, v4

    const-string v13, "persist.fyt.reversetemp"

    .line 18
    invoke-static {v13, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 19
    aget-byte v9, v1, v11

    and-int/2addr v9, v4

    .line 20
    aget-byte v8, v1, v8

    and-int/lit16 v12, v8, 0xff

    :cond_1
    const/16 v8, 0x1b

    if-eqz v9, :cond_4

    if-eq v9, v6, :cond_3

    if-eq v9, v4, :cond_2

    new-array v11, v6, [I

    mul-int/2addr v9, v2

    aput v9, v11, v5

    .line 21
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v9, v6, [I

    const/4 v11, -0x3

    aput v11, v9, v5

    .line 22
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v9, v6, [I

    const/4 v11, -0x2

    aput v11, v9, v5

    .line 23
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array v9, v6, [I

    const/4 v11, -0x1

    aput v11, v9, v5

    .line 24
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v8, 0x1c

    if-eqz v12, :cond_7

    if-eq v12, v6, :cond_6

    if-eq v12, v4, :cond_5

    new-array v9, v6, [I

    mul-int/2addr v12, v2

    aput v12, v9, v5

    .line 25
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v2, v6, [I

    const/4 v9, -0x3

    aput v9, v2, v5

    .line 26
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    new-array v2, v6, [I

    const/4 v9, -0x2

    aput v9, v2, v5

    .line 27
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    new-array v2, v6, [I

    const/4 v9, -0x1

    aput v9, v2, v5

    .line 28
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/lit8 v2, p2, 0x6

    .line 29
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    const/16 v8, 0x12

    new-array v9, v6, [I

    shr-int/lit8 v11, v2, 0x4

    and-int/2addr v11, v6

    aput v11, v9, v5

    .line 30
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    new-array v8, v6, [I

    shr-int/lit8 v9, v2, 0x5

    and-int/2addr v9, v6

    aput v9, v8, v5

    .line 31
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v8, v6, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v6

    aput v9, v8, v5

    .line 32
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x15

    new-array v8, v6, [I

    shr-int/2addr v2, v5

    and-int/lit8 v2, v2, 0xf

    aput v2, v8, v5

    .line 33
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 34
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    const/16 v3, 0x16

    new-array v8, v6, [I

    shr-int/lit8 v9, v2, 0x4

    and-int/2addr v9, v6

    aput v9, v8, v5

    .line 35
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x17

    new-array v8, v6, [I

    shr-int/lit8 v9, v2, 0x5

    and-int/2addr v9, v6

    aput v9, v8, v5

    .line 36
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x18

    new-array v8, v6, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v6

    aput v9, v8, v5

    .line 37
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x19

    new-array v8, v6, [I

    shr-int/2addr v2, v5

    and-int/lit8 v2, v2, 0xf

    aput v2, v8, v5

    .line 38
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    .line 39
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_8

    add-int/lit8 v2, p2, 0x8

    .line 40
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    mul-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x258

    .line 41
    invoke-static {v2}, Lu0/d;->B3(I)V

    :cond_8
    add-int/lit8 v2, p2, 0x9

    .line 42
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    const-string v2, "persist.syu.reversefrontdoor"

    .line 43
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_9

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 44
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 45
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 46
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 47
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 48
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 49
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 50
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 51
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_a
    const/16 v2, 0x407

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x3

    .line 52
    aget-byte v9, v1, v8

    and-int/2addr v9, v4

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 53
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v7, v7, [I

    aput v6, v7, v5

    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    aput v8, v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v7, v8, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v2, p2, 0x6

    .line 54
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x7

    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    const/16 v7, 0x8c

    invoke-static {v2, v3, v7}, Lk0/qt;->p(III)V

    add-int/lit8 v2, p2, 0x4

    .line 55
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    iput v2, v0, Lk0/tk;->c:I

    move v2, v5

    .line 56
    :goto_3
    iget-object v3, v0, Lk0/tk;->d:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_c

    .line 57
    iget v7, v0, Lk0/tk;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_b

    if-eqz v7, :cond_c

    .line 58
    iput v2, v0, Lk0/tk;->b:I

    goto :goto_4

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 59
    :cond_c
    :goto_4
    iget v2, v0, Lk0/tk;->c:I

    if-eqz v2, :cond_d

    .line 60
    iget v2, v0, Lk0/tk;->b:I

    array-length v7, v3

    if-ge v2, v7, :cond_d

    .line 61
    aget-object v2, v3, v2

    aget v2, v2, v6

    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    .line 62
    iget-object v2, v0, Lk0/tk;->d:[[I

    iget v3, v0, Lk0/tk;->b:I

    aget-object v2, v2, v3

    aget v2, v2, v6

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    :cond_d
    add-int/lit8 v2, p2, 0x8

    .line 63
    aget-byte v2, v1, v2

    shr-int/2addr v2, v10

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 64
    aget-byte v2, v1, v2

    shr-int/2addr v2, v10

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0xa

    .line 65
    aget-byte v2, v1, v2

    shr-int/2addr v2, v10

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0xb

    .line 66
    aget-byte v2, v1, v2

    shr-int/2addr v2, v10

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0xc

    .line 67
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    add-int/lit8 v7, p2, 0xd

    .line 68
    aget-byte v8, v1, v7

    and-int/2addr v8, v4

    add-int/lit8 v9, p2, 0xe

    .line 69
    aget-byte v11, v1, v9

    and-int/2addr v11, v4

    add-int/lit8 v12, p2, 0xf

    .line 70
    aget-byte v13, v1, v12

    and-int/2addr v4, v13

    .line 71
    div-int/lit8 v13, v3, 0x9

    .line 72
    div-int/lit8 v14, v8, 0x9

    .line 73
    div-int/lit8 v15, v11, 0x9

    .line 74
    div-int/lit8 v10, v4, 0x9

    const/16 v6, 0x7f

    if-le v3, v6, :cond_e

    if-le v8, v6, :cond_e

    if-le v11, v6, :cond_e

    if-le v4, v6, :cond_e

    .line 75
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_5

    .line 76
    :cond_e
    sget v3, Ll0/c0;->g:I

    if-ne v3, v13, :cond_f

    sget v3, Ll0/c0;->h:I

    if-ne v3, v14, :cond_f

    sget v3, Ll0/c0;->i:I

    if-ne v3, v15, :cond_f

    sget v3, Ll0/c0;->j:I

    if-eq v3, v10, :cond_10

    .line 77
    :cond_f
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_10

    const/4 v3, 0x1

    .line 78
    invoke-static {v3}, Lu0/d;->C2(I)V

    const/4 v3, 0x4

    .line 79
    sput v3, Ll0/c0;->k:I

    .line 80
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_10
    :goto_5
    const/4 v3, 0x4

    .line 81
    :goto_6
    sput v13, Ll0/c0;->g:I

    .line 82
    sput v14, Ll0/c0;->h:I

    .line 83
    sput v15, Ll0/c0;->i:I

    .line 84
    sput v10, Ll0/c0;->j:I

    .line 85
    aget-byte v2, v1, v2

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 86
    aget-byte v2, v1, v7

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 87
    aget-byte v2, v1, v9

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 88
    aget-byte v1, v1, v12

    shr-int/2addr v1, v3

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_7

    :cond_11
    const/16 v2, 0x67

    const/4 v3, 0x1

    new-array v6, v3, [I

    add-int/lit8 v7, p2, 0x8

    .line 89
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v6, v5

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v6, v3, [I

    add-int/lit8 v7, p2, 0x9

    .line 90
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v6, v5

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v6, v3, [I

    add-int/lit8 v3, p2, 0xa

    .line 91
    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v9

    add-int/lit8 v7, p2, 0xb

    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    or-int/2addr v3, v7

    aput v3, v6, v5

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    const/4 v3, 0x1

    new-array v3, v3, [I

    add-int/lit8 v6, p2, 0xd

    .line 92
    aget-byte v6, v1, v6

    shl-int/2addr v6, v11

    const/high16 v7, 0xff0000

    and-int/2addr v6, v7

    add-int/lit8 v7, p2, 0xe

    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v9

    or-int/2addr v6, v7

    add-int/lit8 v7, p2, 0xf

    aget-byte v1, v1, v7

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_12
    const/16 v2, 0x62

    const/4 v3, 0x1

    new-array v6, v3, [I

    add-int/lit8 v3, p2, 0x2

    .line 93
    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v9

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    or-int/2addr v3, v7

    aput v3, v6, v5

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    const/4 v3, 0x1

    new-array v6, v3, [I

    add-int/lit8 v3, p2, 0x4

    .line 94
    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v9

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    or-int/2addr v3, v7

    aput v3, v6, v5

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    const/4 v3, 0x1

    new-array v6, v3, [I

    add-int/lit8 v3, p2, 0x6

    .line 95
    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v9

    add-int/lit8 v7, p2, 0x7

    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    or-int/2addr v3, v7

    aput v3, v6, v5

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    const/4 v3, 0x1

    new-array v6, v3, [I

    add-int/lit8 v7, p2, 0xa

    .line 96
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v6, v5

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v3, [I

    add-int/lit8 v6, p2, 0xb

    .line 97
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    .line 98
    :cond_13
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_7

    :cond_14
    const/16 v2, 0x6b

    const/4 v3, 0x1

    new-array v6, v3, [I

    add-int/lit8 v7, p2, 0x2

    .line 99
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v6, v5

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v6, v3, [I

    add-int/lit8 v7, p2, 0x3

    .line 100
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v6, v5

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v6, v3, [I

    add-int/lit8 v7, p2, 0x4

    .line 101
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v6, v5

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v6, v3, [I

    add-int/lit8 v7, p2, 0x5

    .line 102
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v6, v5

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v6, v3, [I

    add-int/lit8 v7, p2, 0x6

    .line 103
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v6, v5

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v3, [I

    add-int/lit8 v6, p2, 0x7

    .line 104
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_7
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/tk;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/tk;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x71

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
    .locals 6

    const/16 p3, 0x4c

    const/4 p4, 0x4

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v5}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v1, [I

    aput v0, p1, v3

    aput v4, p1, v5

    const/16 p3, 0xad

    aput p3, p1, v4

    .line 2
    aget p3, p2, v3

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p2, v5}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v1, [I

    aput v0, p1, v3

    aput v4, p1, v5

    aput p3, p1, v4

    const/16 p3, 0xb

    aput p3, p1, v2

    .line 4
    aget p2, p2, v3

    and-int/2addr p2, v5

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p2, v5}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v1, [I

    aput v0, p1, v3

    aput v4, p1, v5

    aput p3, p1, v4

    const/16 p3, 0xa

    aput p3, p1, v2

    .line 6
    aget p2, p2, v3

    and-int/2addr p2, v5

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0, p2, v5}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v1, [I

    aput v0, p1, v3

    aput v4, p1, v5

    aput p3, p1, v4

    const/16 p3, 0x9

    aput p3, p1, v2

    .line 8
    aget p2, p2, v3

    and-int/2addr p2, v5

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    :goto_0
    return-void
.end method

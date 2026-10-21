.class public Lk0/c9;
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

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/c9;->c:I

    const/4 v1, 0x7

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

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/c9;->d:[[I

    .line 4
    iput v0, p0, Lk0/c9;->e:I

    .line 5
    new-instance v0, Lk0/c9$a;

    invoke-direct {v0, p0}, Lk0/c9$a;-><init>(Lk0/c9;)V

    iput-object v0, p0, Lk0/c9;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/c9$b;

    invoke-direct {v0, p0}, Lk0/c9$b;-><init>(Lk0/c9;)V

    iput-object v0, p0, Lk0/c9;->g:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x18
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x7
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x8
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
    iput v1, v0, Lk0/mt;->f:I

    .line 3
    iput v1, v0, Lk0/mt;->g:I

    .line 4
    iput v1, v0, Lk0/mt;->e:I

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/c9;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->i:I

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v3, 0x5

    const/16 v4, 0x1c

    const/4 v5, 0x6

    const/4 v6, 0x7

    const/4 v7, 0x4

    const/16 v8, 0xff

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v2, v12, :cond_10

    const/16 v13, 0x65

    if-eq v2, v9, :cond_d

    const/16 v14, 0x8

    if-eq v2, v4, :cond_4

    const/16 v4, 0x24

    if-eq v2, v4, :cond_2

    const/16 v4, 0x30

    if-eq v2, v4, :cond_1

    if-eq v2, v13, :cond_0

    goto/16 :goto_e

    :cond_0
    const/16 v2, 0x63

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x2

    .line 2
    aget-byte v6, v1, v5

    shl-int/2addr v6, v14

    const v7, 0xff00

    and-int/2addr v6, v7

    add-int/lit8 v10, p2, 0x3

    aget-byte v13, v1, v10

    and-int/2addr v13, v8

    or-int/2addr v6, v13

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v4, v12, [I

    .line 3
    aget-byte v5, v1, v5

    shl-int/2addr v5, v14

    and-int/2addr v5, v7

    aget-byte v6, v1, v10

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x4

    .line 4
    aget-byte v6, v1, v5

    shl-int/2addr v6, v14

    and-int/2addr v6, v7

    add-int/lit8 v3, p2, 0x5

    aget-byte v10, v1, v3

    and-int/2addr v10, v8

    or-int/2addr v6, v10

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x407

    new-array v4, v12, [I

    .line 5
    aget-byte v6, v1, v5

    shl-int/2addr v6, v14

    and-int/2addr v6, v7

    aget-byte v10, v1, v3

    and-int/2addr v10, v8

    or-int/2addr v6, v10

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 6
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    new-array v6, v9, [I

    aput v12, v6, v11

    aget-byte v5, v1, v5

    shl-int/2addr v5, v14

    and-int/2addr v5, v7

    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    or-int/2addr v1, v5

    aput v1, v6, v12

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v4, v6, v1, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_e

    .line 7
    :cond_1
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_2
    add-int/lit8 v2, p2, 0x2

    .line 8
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 9
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    new-array v2, v12, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v12

    aput v4, v2, v11

    .line 10
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v12

    aput v4, v2, v11

    .line 11
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v2, v12, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v12

    aput v4, v2, v11

    .line 12
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v12

    aput v4, v2, v11

    .line 13
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v12, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v12

    aput v4, v2, v11

    .line 14
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v12

    aput v4, v2, v11

    .line 15
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v12

    aput v4, v2, v11

    .line 16
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v12

    aput v1, v2, v11

    .line 17
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_4
    add-int/lit8 v2, p2, 0x2

    .line 18
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 19
    aget-byte v1, v1, v3

    and-int/2addr v2, v8

    .line 20
    iput v2, v0, Lk0/c9;->c:I

    move v2, v11

    .line 21
    :goto_1
    iget-object v3, v0, Lk0/c9;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_6

    .line 22
    iget v4, v0, Lk0/c9;->c:I

    aget-object v7, v3, v2

    aget v7, v7, v11

    if-ne v4, v7, :cond_5

    if-eqz v4, :cond_6

    .line 23
    iput v2, v0, Lk0/c9;->b:I

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 24
    :cond_6
    :goto_2
    iget v4, v0, Lk0/c9;->c:I

    if-eq v4, v5, :cond_b

    if-eq v4, v6, :cond_9

    and-int/2addr v1, v8

    if-ne v1, v12, :cond_7

    .line 25
    array-length v1, v3

    if-ge v2, v1, :cond_23

    .line 26
    aget-object v1, v3, v2

    aget v1, v1, v12

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_7
    if-nez v1, :cond_23

    .line 27
    iget v1, v0, Lk0/c9;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_8

    if-eq v1, v8, :cond_8

    .line 28
    aget-object v1, v3, v1

    aget v1, v1, v12

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 29
    :cond_8
    iput v8, v0, Lk0/c9;->b:I

    goto/16 :goto_e

    :cond_9
    move v2, v11

    :goto_3
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_a

    .line 30
    invoke-static {v14, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 31
    :cond_a
    invoke-static {v14, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_b
    move v2, v11

    :goto_4
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_c

    .line 32
    invoke-static {v6, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 33
    :cond_c
    invoke-static {v6, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 34
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 35
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 36
    aget-byte v4, v1, v4

    add-int/lit8 v6, p2, 0x5

    .line 37
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x6

    .line 38
    aget-byte v7, v1, v7

    add-int/lit8 v9, p2, 0x7

    .line 39
    aget-byte v9, v1, v9

    add-int/lit8 v14, p2, 0x8

    .line 40
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x9

    .line 41
    aget-byte v1, v1, v15

    const/16 v15, 0x64

    new-array v8, v12, [I

    and-int/lit8 v16, v2, 0x3

    aput v16, v8, v11

    .line 42
    invoke-static {v15, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v12, [I

    shr-int/lit8 v15, v2, 0x2

    and-int/2addr v15, v10

    aput v15, v8, v11

    .line 43
    invoke-static {v13, v8}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x66

    new-array v13, v12, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v10

    aput v15, v13, v11

    .line 44
    invoke-static {v8, v13}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x67

    new-array v13, v12, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v10

    aput v2, v13, v11

    .line 45
    invoke-static {v8, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v8, v12, [I

    and-int/lit8 v13, v3, 0x3

    aput v13, v8, v11

    .line 46
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v8, v12, [I

    shr-int/lit8 v13, v3, 0x2

    and-int/2addr v13, v10

    aput v13, v8, v11

    .line 47
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v8, v12, [I

    shr-int/lit8 v13, v3, 0x4

    and-int/2addr v13, v10

    aput v13, v8, v11

    .line 48
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v8, v12, [I

    shr-int/2addr v3, v5

    and-int/2addr v3, v10

    aput v3, v8, v11

    .line 49
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v12, [I

    aput v4, v3, v11

    .line 50
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v12, [I

    aput v6, v3, v11

    .line 51
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v12, [I

    aput v7, v3, v11

    .line 52
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v9, 0x7

    and-int/2addr v2, v12

    if-ne v2, v12, :cond_e

    const/16 v2, 0x6f

    new-array v3, v12, [I

    and-int/lit8 v4, v9, -0x1

    aput v4, v3, v11

    .line 53
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_e
    const/16 v2, 0x6f

    new-array v3, v12, [I

    and-int/lit8 v4, v9, 0x7f

    aput v4, v3, v11

    .line 54
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_5
    shr-int/lit8 v2, v14, 0x7

    and-int/2addr v2, v12

    if-ne v2, v12, :cond_f

    const/16 v2, 0x70

    new-array v3, v12, [I

    const/16 v4, 0xff

    and-int/lit16 v5, v14, 0xff

    add-int/lit16 v5, v5, -0x100

    aput v5, v3, v11

    .line 55
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_f
    const/16 v2, 0x70

    new-array v3, v12, [I

    and-int/lit8 v4, v14, 0x7f

    aput v4, v3, v11

    .line 56
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_6
    const/16 v2, 0x71

    new-array v3, v12, [I

    const/16 v4, 0xff

    and-int/2addr v1, v4

    aput v1, v3, v11

    .line 57
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_10
    add-int/lit8 v2, p2, 0x3

    .line 58
    aget-byte v2, v1, v2

    add-int/lit8 v8, p2, 0x4

    .line 59
    aget-byte v8, v1, v8

    add-int/lit8 v13, p2, 0x5

    .line 60
    aget-byte v13, v1, v13

    const/16 v14, 0x15

    new-array v15, v12, [I

    and-int/lit8 v16, v2, 0x7

    aput v16, v15, v11

    .line 61
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v14, v2, 0x3

    and-int/2addr v14, v6

    if-eq v14, v12, :cond_15

    if-eq v14, v9, :cond_14

    if-eq v14, v10, :cond_13

    if-eq v14, v7, :cond_12

    if-eq v14, v3, :cond_11

    move v3, v11

    move v10, v3

    :goto_7
    move v15, v10

    goto :goto_8

    :cond_11
    move v10, v11

    move v15, v10

    move v3, v12

    goto :goto_8

    :cond_12
    move v10, v11

    move v3, v12

    move v15, v3

    goto :goto_8

    :cond_13
    move v3, v11

    move v10, v3

    move v15, v12

    goto :goto_8

    :cond_14
    move v3, v11

    move v10, v12

    goto :goto_7

    :cond_15
    move v3, v11

    move v15, v3

    move v10, v12

    :goto_8
    const/16 v9, 0x4d

    new-array v6, v12, [I

    aput v14, v6, v11

    .line 62
    invoke-static {v9, v6}, Lk0/qt;->y0(I[I)V

    new-array v6, v12, [I

    aput v3, v6, v11

    const/16 v3, 0x12

    .line 63
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x13

    new-array v9, v12, [I

    aput v10, v9, v11

    .line 64
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x14

    new-array v9, v12, [I

    aput v15, v9, v11

    .line 65
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x31

    new-array v9, v12, [I

    shr-int/lit8 v10, v13, 0x6

    and-int/2addr v10, v12

    aput v10, v9, v11

    .line 66
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xd

    new-array v9, v12, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v12

    aput v2, v9, v11

    .line 67
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 68
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v5, -0x3

    const/4 v6, -0x2

    const/16 v9, 0x1b

    const/16 v10, 0xf

    if-eqz v2, :cond_1a

    and-int/lit8 v2, v8, 0xf

    if-eq v2, v12, :cond_17

    if-eq v2, v10, :cond_16

    new-array v14, v12, [I

    add-int/lit8 v2, v2, 0x11

    aput v2, v14, v11

    .line 69
    invoke-static {v4, v14}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_16
    new-array v2, v12, [I

    aput v5, v2, v11

    .line 70
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_17
    new-array v2, v12, [I

    aput v6, v2, v11

    .line 71
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_9
    shr-int/lit8 v2, v8, 0x4

    and-int/2addr v2, v10

    if-eq v2, v12, :cond_19

    if-eq v2, v10, :cond_18

    new-array v4, v12, [I

    add-int/lit8 v2, v2, 0x11

    aput v2, v4, v11

    .line 72
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_18
    new-array v2, v12, [I

    aput v5, v2, v11

    .line 73
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_19
    new-array v2, v12, [I

    aput v6, v2, v11

    .line 74
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1a
    and-int/lit8 v2, v8, 0xf

    if-eq v2, v12, :cond_1c

    if-eq v2, v10, :cond_1b

    new-array v14, v12, [I

    add-int/lit8 v2, v2, 0x11

    aput v2, v14, v11

    .line 75
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_1b
    new-array v2, v12, [I

    aput v5, v2, v11

    .line 76
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_1c
    new-array v2, v12, [I

    aput v6, v2, v11

    .line 77
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_a
    shr-int/lit8 v2, v8, 0x4

    and-int/2addr v2, v10

    if-eq v2, v12, :cond_1e

    if-eq v2, v10, :cond_1d

    new-array v5, v12, [I

    add-int/lit8 v2, v2, 0x11

    aput v2, v5, v11

    .line 78
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1d
    new-array v2, v12, [I

    aput v5, v2, v11

    .line 79
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1e
    new-array v2, v12, [I

    aput v6, v2, v11

    .line 80
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_b
    const/16 v2, 0xb

    new-array v4, v12, [I

    and-int/lit8 v5, v13, 0x3

    aput v5, v4, v11

    .line 81
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v4, v12, [I

    shr-int/lit8 v5, v13, 0x2

    and-int/2addr v5, v12

    aput v5, v4, v11

    .line 82
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v4, v12, [I

    shr-int/lit8 v5, v13, 0x3

    and-int/2addr v5, v12

    aput v5, v4, v11

    .line 83
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v4, v12, [I

    shr-int/lit8 v5, v13, 0x4

    and-int/2addr v5, v12

    aput v5, v4, v11

    .line 84
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v12, [I

    shr-int/lit8 v5, v13, 0x5

    and-int/2addr v5, v12

    aput v5, v4, v11

    .line 85
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v4, v12, [I

    const/4 v5, 0x7

    shr-int/lit8 v5, v13, 0x7

    and-int/2addr v5, v12

    aput v5, v4, v11

    .line 86
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/4 v2, 0x2

    add-int/lit8 v2, p2, 0x2

    .line 87
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const-string v2, "persist.fyt.temperature"

    .line 88
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0x80

    if-ne v1, v4, :cond_1f

    .line 89
    invoke-static {v11}, Lu0/d;->A3(I)V

    goto :goto_e

    :cond_1f
    if-ne v2, v12, :cond_21

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_20

    rsub-int v1, v1, 0x100

    mul-int/2addr v1, v3

    rsub-int v1, v1, 0x528

    goto :goto_c

    :cond_20
    and-int/lit8 v1, v1, 0x7f

    mul-int/2addr v1, v3

    add-int/lit16 v1, v1, 0x528

    :goto_c
    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_21
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_22

    rsub-int v1, v1, 0x100

    mul-int/lit8 v1, v1, 0xa

    rsub-int v1, v1, 0x3e8

    goto :goto_d

    :cond_22
    and-int/lit8 v1, v1, 0x7f

    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x3e8

    .line 90
    :goto_d
    invoke-static {v1}, Lu0/d;->B3(I)V

    :cond_23
    :goto_e
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/c9;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/c9;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

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

    const/16 p4, 0x71

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

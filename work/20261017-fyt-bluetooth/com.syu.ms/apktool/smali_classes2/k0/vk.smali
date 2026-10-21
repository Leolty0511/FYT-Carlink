.class public Lk0/vk;
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

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/vk;->c:I

    const/16 v1, 0x8

    new-array v1, v1, [[I

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

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v7, 0x6

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v7, 0x7

    aput-object v3, v1, v7

    iput-object v1, p0, Lk0/vk;->d:[[I

    .line 4
    iput v0, p0, Lk0/vk;->f:I

    new-array v0, v6, [[I

    new-array v1, v2, [I

    .line 5
    fill-array-data v1, :array_8

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/vk;->g:[[I

    .line 6
    iput v4, p0, Lk0/vk;->h:I

    .line 7
    iput v4, p0, Lk0/vk;->i:I

    .line 8
    new-instance v0, Lk0/vk$a;

    invoke-direct {v0, p0}, Lk0/vk$a;-><init>(Lk0/vk;)V

    iput-object v0, p0, Lk0/vk;->j:Ljava/lang/Runnable;

    .line 9
    iput v4, p0, Lk0/vk;->k:I

    .line 10
    new-instance v0, Lk0/vk$b;

    invoke-direct {v0, p0}, Lk0/vk$b;-><init>(Lk0/vk;)V

    iput-object v0, p0, Lk0/vk;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/vk$c;

    invoke-direct {v0, p0}, Lk0/vk$c;-><init>(Lk0/vk;)V

    iput-object v0, p0, Lk0/vk;->m:Ljava/lang/Runnable;

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
        0xc
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_a
    .array-data 4
        0x2b
        0x5
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
    iput v1, v0, Lk0/mt;->g:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    .line 7
    iget-object v0, p0, Lk0/vk;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/vk;->l:Ljava/lang/Runnable;

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

    const/16 v3, -0x10

    const/4 v4, 0x2

    if-eq v2, v3, :cond_21

    const/16 v3, 0x31

    const/16 v5, 0xd

    const/16 v6, 0x8

    const/16 v7, 0x12

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x4

    const/16 v12, 0xff

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x11

    if-eq v2, v3, :cond_12

    const/4 v3, 0x7

    if-eq v2, v7, :cond_10

    const/16 v5, 0x21

    if-eq v2, v5, :cond_b

    const/16 v5, 0x22

    if-eq v2, v5, :cond_0

    goto/16 :goto_e

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 3
    aget-byte v1, v1, v5

    if-eq v2, v14, :cond_6

    if-eq v2, v4, :cond_1

    goto/16 :goto_e

    .line 4
    :cond_1
    iget v2, v0, Lk0/vk;->i:I

    if-eq v1, v2, :cond_22

    if-le v1, v2, :cond_3

    move v2, v13

    .line 5
    :goto_0
    iget v3, v0, Lk0/vk;->i:I

    sub-int v3, v1, v3

    const/16 v4, 0x1f

    if-ge v2, v3, :cond_2

    .line 6
    invoke-static {v4, v13}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v4, v14}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_3
    if-ge v1, v2, :cond_5

    move v2, v13

    .line 8
    :goto_1
    iget v3, v0, Lk0/vk;->i:I

    sub-int/2addr v3, v1

    const/16 v4, 0x1e

    if-ge v2, v3, :cond_4

    .line 9
    invoke-static {v4, v13}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_4
    invoke-static {v4, v14}, Ll0/b0;->l0(II)V

    .line 11
    :cond_5
    :goto_2
    iput v1, v0, Lk0/vk;->i:I

    goto/16 :goto_e

    .line 12
    :cond_6
    iget v2, v0, Lk0/vk;->h:I

    if-eq v1, v2, :cond_22

    if-le v1, v2, :cond_8

    move v2, v13

    .line 13
    :goto_3
    iget v4, v0, Lk0/vk;->h:I

    sub-int v4, v1, v4

    if-ge v2, v4, :cond_7

    .line 14
    invoke-static {v3, v13}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 15
    :cond_7
    invoke-static {v3, v14}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_8
    if-ge v1, v2, :cond_a

    move v2, v13

    .line 16
    :goto_4
    iget v3, v0, Lk0/vk;->h:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_9

    .line 17
    invoke-static {v6, v13}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 18
    :cond_9
    invoke-static {v6, v14}, Ll0/b0;->l0(II)V

    .line 19
    :cond_a
    :goto_5
    iput v1, v0, Lk0/vk;->h:I

    goto/16 :goto_e

    :cond_b
    add-int/lit8 v2, p2, 0x2

    .line 20
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 21
    aget-byte v1, v1, v3

    and-int/2addr v2, v12

    .line 22
    iput v2, v0, Lk0/vk;->f:I

    move v2, v13

    .line 23
    :goto_6
    iget-object v3, v0, Lk0/vk;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 24
    iget v4, v0, Lk0/vk;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v13

    if-ne v4, v5, :cond_c

    if-eqz v4, :cond_d

    .line 25
    iput v2, v0, Lk0/vk;->e:I

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    and-int/2addr v1, v12

    if-ne v1, v14, :cond_e

    .line 26
    array-length v1, v3

    if-ge v2, v1, :cond_22

    .line 27
    aget-object v1, v3, v2

    aget v1, v1, v14

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_e
    if-nez v1, :cond_22

    .line 28
    iget v1, v0, Lk0/vk;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_f

    if-eq v1, v12, :cond_f

    .line 29
    aget-object v1, v3, v1

    aget v1, v1, v14

    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    .line 30
    :cond_f
    iput v12, v0, Lk0/vk;->e:I

    goto/16 :goto_e

    :cond_10
    const-string v2, "persist.syu.reversefrontdoor"

    .line 31
    invoke-static {v2, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_11

    new-array v2, v14, [I

    add-int/lit8 v5, p2, 0x4

    .line 32
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v14

    aput v6, v2, v13

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    .line 33
    aget-byte v4, v1, v5

    shr-int/lit8 v3, v4, 0x7

    and-int/2addr v3, v14

    aput v3, v2, v13

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_11
    new-array v2, v14, [I

    add-int/lit8 v5, p2, 0x4

    .line 34
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v14

    aput v6, v2, v13

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    .line 35
    aget-byte v5, v1, v5

    shr-int/lit8 v3, v5, 0x7

    and-int/2addr v3, v14

    aput v3, v2, v13

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array v2, v14, [I

    add-int/lit8 v3, p2, 0x4

    .line 36
    aget-byte v4, v1, v3

    shr-int/2addr v4, v9

    and-int/2addr v4, v14

    aput v4, v2, v13

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    .line 37
    aget-byte v1, v1, v3

    shr-int/2addr v1, v11

    and-int/2addr v1, v14

    aput v1, v2, v13

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_12
    add-int/lit8 v2, p2, 0x4

    .line 38
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 39
    aget-byte v3, v1, v3

    and-int/2addr v2, v12

    .line 40
    iput v2, v0, Lk0/vk;->c:I

    move v2, v13

    .line 41
    :goto_9
    iget-object v4, v0, Lk0/vk;->d:[[I

    array-length v8, v4

    if-ge v2, v8, :cond_14

    .line 42
    iget v8, v0, Lk0/vk;->c:I

    aget-object v15, v4, v2

    aget v15, v15, v13

    if-ne v8, v15, :cond_13

    if-eqz v8, :cond_14

    .line 43
    iput v2, v0, Lk0/vk;->b:I

    goto :goto_a

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 44
    :cond_14
    :goto_a
    iget v8, v0, Lk0/vk;->c:I

    if-eq v8, v11, :cond_17

    and-int/2addr v3, v12

    if-ne v3, v14, :cond_15

    .line 45
    array-length v3, v4

    if-ge v2, v3, :cond_19

    .line 46
    aget-object v2, v4, v2

    aget v2, v2, v14

    invoke-static {v2, v13}, Ll0/b0;->l0(II)V

    goto :goto_b

    :cond_15
    if-nez v3, :cond_19

    .line 47
    iget v2, v0, Lk0/vk;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_16

    if-eq v2, v12, :cond_16

    .line 48
    aget-object v2, v4, v2

    aget v2, v2, v14

    invoke-static {v2, v14}, Ll0/b0;->l0(II)V

    .line 49
    :cond_16
    iput v12, v0, Lk0/vk;->b:I

    goto :goto_b

    :cond_17
    and-int/lit16 v2, v3, 0xff

    if-ne v2, v14, :cond_19

    .line 50
    sget v2, Lh0/c;->E:I

    if-eq v2, v10, :cond_18

    if-eq v2, v11, :cond_18

    if-eq v2, v9, :cond_18

    .line 51
    invoke-static {v5, v13}, Ll0/b0;->l0(II)V

    .line 52
    invoke-static {v5, v14}, Ll0/b0;->l0(II)V

    goto :goto_b

    .line 53
    :cond_18
    invoke-static {v7, v13}, Ll0/b0;->l0(II)V

    .line 54
    invoke-static {v7, v14}, Ll0/b0;->l0(II)V

    :cond_19
    :goto_b
    add-int/lit8 v2, p2, 0x9

    .line 55
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    and-int/2addr v1, v12

    const/16 v3, 0x21c

    invoke-static {v2, v1, v14, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_e

    :cond_1a
    const/16 v2, 0xa

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x2

    .line 56
    aget-byte v15, v1, v4

    shr-int/2addr v15, v8

    and-int/2addr v15, v14

    aput v15, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    .line 57
    aget-byte v3, v1, v4

    shr-int/2addr v3, v10

    and-int/2addr v3, v14

    aput v3, v2, v13

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v3, v14, [I

    .line 58
    aget-byte v4, v1, v4

    shr-int/2addr v4, v13

    and-int/2addr v4, v14

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x3

    .line 59
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v14

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x4

    .line 60
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v14

    aput v5, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v14, [I

    .line 61
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v14

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 62
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    if-eq v2, v10, :cond_1e

    if-eq v2, v11, :cond_1d

    if-eq v2, v9, :cond_1c

    if-eq v2, v8, :cond_1b

    move v2, v13

    move v3, v2

    :goto_c
    move v4, v3

    goto :goto_d

    :cond_1b
    move v2, v13

    move v4, v2

    move v3, v14

    goto :goto_d

    :cond_1c
    move v2, v13

    move v3, v14

    goto :goto_c

    :cond_1d
    move v3, v13

    move v2, v14

    move v4, v2

    goto :goto_d

    :cond_1e
    move v2, v13

    move v3, v2

    move v4, v14

    :goto_d
    new-array v5, v14, [I

    aput v2, v5, v13

    .line 63
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v14, [I

    aput v3, v5, v13

    .line 64
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v14, [I

    aput v4, v3, v13

    .line 65
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x7

    .line 66
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 67
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    const/16 v2, 0xfe

    const/16 v3, 0x1b

    if-ne v1, v2, :cond_1f

    new-array v1, v14, [I

    const/4 v2, -0x2

    aput v2, v1, v13

    .line 68
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_1f
    if-ne v1, v12, :cond_20

    new-array v1, v14, [I

    const/4 v2, -0x3

    aput v2, v1, v13

    .line 69
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_20
    new-array v2, v14, [I

    aput v1, v2, v13

    .line 70
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    .line 71
    :cond_21
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_22
    :goto_e
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/vk;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/vk;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/vk;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

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

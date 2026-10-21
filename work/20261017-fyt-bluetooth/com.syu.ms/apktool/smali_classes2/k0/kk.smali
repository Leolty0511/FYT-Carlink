.class public Lk0/kk;
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
    .locals 10

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/kk;->c:I

    const/4 v1, 0x7

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

    iput-object v2, p0, Lk0/kk;->d:[[I

    .line 4
    iput v0, p0, Lk0/kk;->f:I

    const/16 v2, 0x8

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_7

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v9

    new-array v3, v3, [I

    fill-array-data v3, :array_e

    aput-object v3, v2, v1

    iput-object v2, p0, Lk0/kk;->g:[[I

    .line 6
    iput v0, p0, Lk0/kk;->h:I

    .line 7
    new-instance v0, Lk0/kk$a;

    invoke-direct {v0, p0}, Lk0/kk$a;-><init>(Lk0/kk;)V

    iput-object v0, p0, Lk0/kk;->i:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/kk$b;

    invoke-direct {v0, p0}, Lk0/kk$b;-><init>(Lk0/kk;)V

    iput-object v0, p0, Lk0/kk;->j:Ljava/lang/Runnable;

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
        0x5
        0x12
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x1a
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
        0xc
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x2c
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x45
        0x7
    .end array-data

    :array_a
    .array-data 4
        0x46
        0x8
    .end array-data

    :array_b
    .array-data 4
        0x57
        0x4
    .end array-data

    :array_c
    .array-data 4
        0x58
        0x3
    .end array-data

    :array_d
    .array-data 4
        0x59
        0x1b
    .end array-data

    :array_e
    .array-data 4
        0x5a
        0x1c
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
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v1, 0x16

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    new-array v0, v2, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x1

    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 8
    iput v2, v0, Lk0/mt;->f:I

    .line 9
    iput v2, v0, Lk0/mt;->g:I

    .line 10
    iput v2, v0, Lk0/mt;->b:I

    .line 11
    iput v2, v0, Lk0/mt;->c:I

    .line 12
    iput v2, v0, Lk0/mt;->d:I

    .line 13
    iput v2, v0, Lk0/mt;->o:I

    .line 14
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/kk;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x8e
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x85
        0x1
    .end array-data
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x5a

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_15

    const/16 v3, -0x10

    const/4 v7, 0x2

    if-eq v2, v3, :cond_14

    const/16 v3, 0x11

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v2, v3, :cond_e

    const/16 v3, 0x21

    if-eq v2, v3, :cond_a

    const/16 v3, 0x31

    if-eq v2, v3, :cond_0

    goto/16 :goto_9

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v3, v1, v3

    add-int/lit8 v11, p2, 0x4

    .line 4
    aget-byte v11, v1, v11

    add-int/lit8 v12, p2, 0x6

    .line 5
    aget-byte v12, v1, v12

    add-int/lit8 v13, p2, 0x7

    .line 6
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x8

    .line 7
    aget-byte v15, v1, v14

    add-int/lit8 v16, p2, 0x9

    .line 8
    aget-byte v17, v1, v16

    const/16 v4, 0xa

    new-array v8, v6, [I

    shr-int/lit8 v18, v2, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v8, v5

    .line 9
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xd

    new-array v8, v6, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v6

    aput v2, v8, v5

    .line 10
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v4, v6, [I

    shr-int/lit8 v8, v3, 0x6

    and-int/2addr v8, v6

    aput v8, v4, v5

    .line 11
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v3, 0x4

    and-int/2addr v4, v6

    aput v4, v2, v5

    const/16 v4, 0xc

    .line 12
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v8, v6, [I

    shr-int/2addr v3, v7

    and-int/2addr v3, v6

    aput v3, v8, v5

    .line 13
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v6, [I

    shr-int/lit8 v7, v11, 0x5

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 14
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v6, [I

    shr-int/lit8 v7, v11, 0x4

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 15
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    if-eq v12, v10, :cond_4

    if-eq v12, v4, :cond_3

    const/4 v2, 0x5

    if-eq v12, v2, :cond_2

    const/4 v2, 0x6

    if-eq v12, v2, :cond_1

    move v2, v5

    move v3, v2

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_1
    move v3, v5

    move v4, v3

    move v2, v6

    goto :goto_1

    :cond_2
    move v4, v5

    move v2, v6

    move v3, v2

    goto :goto_1

    :cond_3
    move v2, v5

    move v3, v6

    goto :goto_0

    :cond_4
    move v2, v5

    move v4, v2

    move v3, v6

    :goto_1
    const/16 v7, 0x13

    new-array v8, v6, [I

    aput v2, v8, v5

    .line 16
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v7, v6, [I

    aput v3, v7, v5

    .line 17
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v6, [I

    aput v4, v3, v5

    .line 18
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v6, [I

    const/16 v4, 0xff

    and-int/lit16 v7, v12, 0xff

    aput v7, v3, v5

    .line 19
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v6, [I

    and-int/lit16 v7, v13, 0xff

    aput v7, v3, v5

    .line 20
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 21
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 22
    aget-byte v15, v1, v16

    .line 23
    aget-byte v17, v1, v14

    :cond_5
    move/from16 v1, v17

    and-int/lit16 v2, v15, 0xff

    const/4 v3, -0x3

    const/4 v7, -0x2

    const/16 v8, 0xfe

    const/16 v9, 0x1b

    if-ne v2, v8, :cond_6

    new-array v2, v6, [I

    aput v7, v2, v5

    .line 24
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    if-ne v2, v4, :cond_7

    new-array v2, v6, [I

    aput v3, v2, v5

    .line 25
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v10, v6, [I

    aput v2, v10, v5

    .line 26
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    :goto_2
    and-int/2addr v1, v4

    const/16 v2, 0x1c

    if-ne v1, v8, :cond_8

    new-array v1, v6, [I

    aput v7, v1, v5

    .line 27
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_8
    if-ne v1, v4, :cond_9

    new-array v1, v6, [I

    aput v3, v1, v5

    .line 28
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_9
    new-array v3, v6, [I

    aput v1, v3, v5

    .line 29
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 31
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 32
    iput v2, v0, Lk0/kk;->e:I

    move v2, v5

    .line 33
    :goto_3
    iget-object v3, v0, Lk0/kk;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_c

    .line 34
    iget v4, v0, Lk0/kk;->e:I

    aget-object v7, v3, v2

    aget v7, v7, v5

    if-ne v4, v7, :cond_b

    if-eqz v4, :cond_c

    .line 35
    iput v2, v0, Lk0/kk;->f:I

    goto :goto_4

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v6, :cond_d

    .line 36
    array-length v1, v3

    if-ge v2, v1, :cond_16

    .line 37
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_d
    if-nez v1, :cond_16

    .line 38
    array-length v1, v3

    if-gt v2, v1, :cond_16

    .line 39
    iget v1, v0, Lk0/kk;->f:I

    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_e
    add-int/lit8 v2, p2, 0x4

    .line 40
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 41
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v2, v4

    .line 42
    iput v2, v0, Lk0/kk;->c:I

    move v2, v5

    .line 43
    :goto_5
    iget-object v4, v0, Lk0/kk;->d:[[I

    array-length v8, v4

    if-ge v2, v8, :cond_10

    .line 44
    iget v8, v0, Lk0/kk;->c:I

    aget-object v11, v4, v2

    aget v11, v11, v5

    if-ne v8, v11, :cond_f

    if-eqz v8, :cond_10

    .line 45
    iput v2, v0, Lk0/kk;->b:I

    goto :goto_6

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    :goto_6
    const/16 v8, 0xff

    and-int/2addr v3, v8

    if-ne v3, v6, :cond_11

    .line 46
    array-length v3, v4

    if-ge v2, v3, :cond_12

    .line 47
    aget-object v2, v4, v2

    aget v2, v2, v6

    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_11
    if-nez v3, :cond_12

    .line 48
    array-length v3, v4

    if-gt v2, v3, :cond_12

    .line 49
    iget v2, v0, Lk0/kk;->b:I

    aget-object v2, v4, v2

    aget v2, v2, v6

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    :cond_12
    :goto_7
    add-int/lit8 v2, p2, 0x6

    .line 50
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 51
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_13

    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 52
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 53
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_13
    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 54
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 55
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 56
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 57
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v6

    aput v2, v3, v5

    const/4 v2, 0x5

    .line 58
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 59
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_9

    .line 60
    :cond_14
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_9

    :cond_15
    const/16 v2, 0x62

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 61
    aget-byte v4, v1, v4

    const/16 v7, 0xff

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 62
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 63
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x5

    .line 64
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x6

    .line 65
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x7

    .line 66
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x8

    .line 67
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_16
    :goto_9
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/kk;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/kk;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x69

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

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v1, [I

    aput v0, p1, v2

    aput v4, p1, v3

    const/16 v0, 0xad

    aput v0, p1, v4

    .line 2
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v1, [I

    aput v0, p1, v2

    aput v4, p1, v3

    const/16 v0, 0x3d

    aput v0, p1, v4

    .line 4
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method

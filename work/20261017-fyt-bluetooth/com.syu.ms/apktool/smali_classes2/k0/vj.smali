.class public Lk0/vj;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/vj;->c:I

    const/4 v0, 0x0

    new-array v0, v0, [[I

    .line 3
    iput-object v0, p0, Lk0/vj;->d:[[I

    return-void
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
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x0

    const v2, 0x201bb

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x0

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v2, "com.syu.canbus"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 8
    iput v1, v0, Lk0/mt;->e:I

    .line 9
    iput v1, v0, Lk0/mt;->f:I

    .line 10
    iput v1, v0, Lk0/mt;->g:I

    .line 11
    iput v1, v0, Lk0/mt;->o:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x3
        0x1a
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x3
        0x6a
        0x5
        0x1
        0x0
    .end array-data
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

    if-eq v2, v3, :cond_10

    const/16 v3, 0x31

    const/16 v5, 0x12

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v3, :cond_8

    const/16 v3, 0x36

    const/4 v12, 0x4

    if-eq v2, v3, :cond_7

    const/16 v3, 0x11

    if-eq v2, v3, :cond_2

    if-eq v2, v5, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/lit8 v2, p2, 0x4

    .line 2
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 4
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 5
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 6
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 7
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 8
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 9
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 10
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v11

    aput v1, v2, v10

    .line 11
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v2, p2, 0x4

    .line 12
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    iput v2, v0, Lk0/vj;->c:I

    move v2, v10

    .line 13
    :goto_1
    iget-object v3, v0, Lk0/vj;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 14
    iget v4, v0, Lk0/vj;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v10

    if-ne v4, v5, :cond_3

    if-eqz v4, :cond_4

    .line 15
    iput v2, v0, Lk0/vj;->b:I

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 16
    :cond_4
    :goto_2
    iget v4, v0, Lk0/vj;->c:I

    if-eqz v4, :cond_5

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    if-eqz v4, :cond_5

    .line 17
    array-length v1, v3

    if-ge v2, v1, :cond_11

    .line 18
    aget-object v1, v3, v2

    aget v1, v1, v11

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_5

    .line 19
    :cond_5
    iget v2, v0, Lk0/vj;->b:I

    if-eq v2, v9, :cond_6

    add-int/lit8 v4, p2, 0x5

    aget-byte v1, v1, v4

    and-int/2addr v1, v9

    if-nez v1, :cond_6

    .line 20
    aget-object v1, v3, v2

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 21
    :cond_6
    iput v9, v0, Lk0/vj;->b:I

    goto/16 :goto_5

    :cond_7
    add-int/lit8 v2, p2, 0x2

    .line 22
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 23
    aget-byte v1, v1, v3

    const/16 v3, 0x62

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 24
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x63

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 25
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x64

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 26
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x65

    new-array v4, v11, [I

    shr-int/2addr v2, v12

    and-int/2addr v2, v11

    aput v2, v4, v10

    .line 27
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v11, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 28
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v11, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v11

    aput v1, v3, v10

    .line 29
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_8
    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 31
    aget-byte v3, v1, v3

    add-int/lit8 v12, p2, 0x4

    .line 32
    aget-byte v12, v1, v12

    add-int/lit8 v13, p2, 0x6

    .line 33
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x7

    .line 34
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x8

    .line 35
    aget-byte v1, v1, v15

    const/16 v15, 0xa

    new-array v5, v11, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v11

    aput v2, v5, v10

    .line 36
    invoke-static {v15, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v5, v11, [I

    shr-int/lit8 v15, v3, 0x6

    and-int/2addr v15, v11

    aput v15, v5, v10

    .line 37
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v11

    aput v5, v2, v10

    const/16 v5, 0xc

    .line 38
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x37

    new-array v15, v11, [I

    and-int/2addr v3, v11

    aput v3, v15, v10

    .line 39
    invoke-static {v2, v15}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x44

    new-array v3, v11, [I

    shr-int/lit8 v12, v12, 0x7

    and-int/2addr v12, v11

    aput v12, v3, v10

    .line 40
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v11, [I

    and-int/lit16 v12, v14, 0xff

    aput v12, v3, v10

    .line 41
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v13, 0xff

    if-eq v2, v4, :cond_d

    if-eq v2, v6, :cond_c

    if-eq v2, v7, :cond_b

    if-eq v2, v8, :cond_a

    if-eq v2, v5, :cond_9

    move v2, v10

    move v3, v2

    :goto_3
    move v4, v3

    goto :goto_4

    :cond_9
    move v3, v10

    move v2, v11

    move v4, v2

    goto :goto_4

    :cond_a
    move v2, v10

    move v4, v2

    move v3, v11

    goto :goto_4

    :cond_b
    move v2, v10

    move v3, v11

    goto :goto_3

    :cond_c
    move v2, v10

    move v3, v2

    move v4, v11

    goto :goto_4

    :cond_d
    move v3, v10

    move v4, v3

    move v2, v11

    :goto_4
    new-array v5, v11, [I

    aput v2, v5, v10

    const/16 v2, 0x12

    .line 42
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v11, [I

    aput v3, v5, v10

    .line 43
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v11, [I

    aput v4, v3, v10

    .line 44
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v1, 0xff

    const/4 v3, -0x2

    const/16 v4, 0x1b

    if-ne v1, v3, :cond_e

    new-array v1, v11, [I

    aput v3, v1, v10

    .line 45
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_e
    const/4 v3, -0x1

    if-ne v1, v3, :cond_f

    new-array v1, v11, [I

    const/4 v2, -0x3

    aput v2, v1, v10

    .line 46
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_f
    new-array v1, v11, [I

    aput v2, v1, v10

    .line 47
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    .line 48
    :cond_10
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_11
    :goto_5
    return-void
.end method

.method public W2()V
    .locals 0

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
    .locals 0

    return-void
.end method

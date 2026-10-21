.class public Lk0/ze;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:[I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lk0/ze;->b:[I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk0/ze;->c:I

    return-void

    nop

    :array_0
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static a3(II)I
    .locals 2

    shl-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xf00

    or-int/2addr p0, v0

    .line 1
    sget v0, Lk0/nt;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    shr-int/lit8 p1, p1, 0x3

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_0

    add-int/lit16 p0, p0, -0x800

    .line 2
    div-int/lit8 p0, p0, 0xb

    add-int/lit8 p0, p0, 0x23

    goto :goto_0

    .line 3
    :cond_0
    div-int/lit8 p0, p0, 0xb

    rsub-int/lit8 p0, p0, 0x23

    :goto_0
    return p0

    :cond_1
    shr-int/lit8 p1, p1, 0x3

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_2

    add-int/lit16 p0, p0, -0x800

    .line 4
    div-int/lit8 p0, p0, 0x14

    rsub-int/lit8 p0, p0, 0x14

    goto :goto_1

    .line 5
    :cond_2
    div-int/lit8 p0, p0, 0x14

    add-int/lit8 p0, p0, 0x14

    :goto_1
    return p0
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
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v2, "com.syu.canbus"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x0

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->e:I

    .line 5
    iput v1, v0, Lk0/mt;->f:I

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/4 v2, 0x3

    const/16 v3, 0xff

    if-eq v1, v2, :cond_12

    const/16 v4, 0x24

    const/4 v5, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v1, v4, :cond_10

    const/16 v4, 0x26

    if-eq v1, v4, :cond_f

    const/16 v4, 0x41

    if-eq v1, v4, :cond_e

    const/16 v5, 0x55

    if-eq v1, v5, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v5, p1, v1

    add-int/lit8 v10, p2, 0x3

    .line 3
    aget-byte v11, p1, v10

    add-int/lit8 v12, p2, 0x4

    .line 4
    aget-byte v12, p1, v12

    add-int/lit8 v13, p2, 0x5

    .line 5
    aget-byte v13, p1, v13

    add-int/lit8 v14, p2, 0x6

    .line 6
    aget-byte v14, p1, v14

    add-int/lit8 v15, p2, 0x7

    .line 7
    aget-byte v15, p1, v15

    const-string v2, "persist.fyt.reversetemp"

    .line 8
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    aget-byte v5, p1, v10

    .line 10
    aget-byte v11, p1, v1

    :cond_1
    and-int/lit16 v1, v5, 0xff

    const/4 v2, -0x1

    const/16 v5, 0x1b

    const/16 v10, 0x23

    const/16 v7, 0xa

    if-le v1, v10, :cond_2

    if-ge v1, v4, :cond_2

    new-array v6, v9, [I

    aput v1, v6, v8

    .line 11
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    if-ge v1, v7, :cond_3

    new-array v1, v9, [I

    aput v2, v1, v8

    .line 12
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    :cond_3
    :goto_0
    and-int/lit16 v1, v11, 0xff

    const/16 v5, 0x1c

    if-le v1, v10, :cond_4

    if-ge v1, v4, :cond_4

    new-array v2, v9, [I

    aput v1, v2, v8

    .line 13
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    if-ge v1, v7, :cond_5

    new-array v1, v9, [I

    aput v2, v1, v8

    .line 14
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    :cond_5
    :goto_1
    and-int/lit8 v1, v12, 0xf

    const/16 v2, 0x15

    new-array v4, v9, [I

    aput v1, v4, v8

    .line 15
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x4

    shr-int/lit8 v2, v12, 0x4

    const/16 v4, 0xf

    and-int/2addr v2, v4

    const/4 v5, 0x6

    if-eq v2, v9, :cond_a

    const/4 v6, 0x2

    if-eq v2, v6, :cond_9

    const/4 v6, 0x3

    if-eq v2, v6, :cond_8

    if-eq v2, v1, :cond_7

    if-eq v2, v5, :cond_6

    move v1, v8

    move v6, v1

    :goto_2
    move v10, v6

    goto :goto_3

    :cond_6
    move v1, v8

    move v6, v1

    move v10, v9

    goto :goto_3

    :cond_7
    move v1, v8

    move v6, v9

    goto :goto_2

    :cond_8
    move v1, v8

    move v10, v1

    move v6, v9

    goto :goto_3

    :cond_9
    move v10, v8

    move v1, v9

    move v6, v1

    goto :goto_3

    :cond_a
    move v6, v8

    move v10, v6

    move v1, v9

    :goto_3
    const/16 v11, 0x13

    new-array v12, v9, [I

    aput v1, v12, v8

    .line 16
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v11, v9, [I

    aput v6, v11, v8

    .line 17
    invoke-static {v1, v11}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x12

    new-array v6, v9, [I

    aput v10, v6, v8

    .line 18
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    aput v10, v1, v8

    .line 19
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x4d

    new-array v4, v9, [I

    aput v2, v4, v8

    .line 20
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1d

    new-array v2, v9, [I

    and-int/lit8 v4, v13, 0x3

    aput v4, v2, v8

    .line 21
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1e

    new-array v2, v9, [I

    const/4 v4, 0x4

    shr-int/lit8 v4, v13, 0x4

    const/4 v6, 0x3

    and-int/2addr v4, v6

    aput v4, v2, v8

    .line 22
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v9, [I

    and-int/lit8 v4, v14, 0x1

    aput v4, v2, v8

    .line 23
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v2, v9, [I

    shr-int/lit8 v4, v14, 0x1

    and-int/2addr v4, v9

    aput v4, v2, v8

    .line 24
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v2, v9, [I

    shr-int/lit8 v4, v14, 0x2

    and-int/2addr v4, v9

    if-ne v4, v9, :cond_b

    move v4, v8

    goto :goto_4

    :cond_b
    move v4, v9

    :goto_4
    aput v4, v2, v8

    .line 25
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v2, v9, [I

    shr-int/lit8 v4, v14, 0x6

    and-int/2addr v4, v9

    aput v4, v2, v8

    .line 26
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v2, v9, [I

    shr-int/lit8 v4, v15, 0x0

    const/4 v5, 0x3

    and-int/2addr v4, v5

    if-ne v4, v9, :cond_c

    goto :goto_5

    :cond_c
    move v9, v8

    :goto_5
    aput v9, v2, v8

    .line 27
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x9

    .line 28
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_d

    .line 29
    invoke-static {v8}, Lu0/d;->A3(I)V

    goto/16 :goto_6

    :cond_d
    mul-int/2addr v1, v7

    add-int/lit16 v1, v1, 0x258

    .line 30
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_6

    :cond_e
    const/16 v1, 0x408

    new-array v2, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 31
    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    const v6, 0xff00

    and-int/2addr v4, v6

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, p1, v7

    and-int/2addr v7, v3

    add-int/2addr v4, v7

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x407

    new-array v2, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 32
    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, p1, v5

    and-int/2addr v3, v5

    add-int/2addr v4, v3

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_f
    add-int/lit8 v1, p2, 0x2

    .line 33
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    const/4 v2, 0x3

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    invoke-static {v1, v2}, Lk0/ze;->a3(II)I

    move-result v1

    .line 34
    invoke-static {v1}, Lk0/qt;->j0(I)V

    goto/16 :goto_6

    :cond_10
    const/4 v1, 0x2

    add-int/lit8 v2, p2, 0x2

    .line 35
    aget-byte v1, p1, v2

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 36
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 37
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v9

    aput v3, v2, v8

    const/4 v3, 0x4

    .line 38
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v9

    aput v3, v2, v8

    const/4 v3, 0x3

    .line 39
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.syu.reversefrontdoor"

    .line 40
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_11

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 41
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v9

    aput v1, v2, v8

    const/4 v1, 0x2

    .line 42
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_11
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 43
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v9

    aput v1, v2, v8

    const/4 v1, 0x2

    .line 44
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_12
    add-int/lit8 v1, p2, 0x2

    .line 45
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lk0/ze;->b3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->D2(I)V

    add-int/lit8 v1, p2, 0x3

    .line 46
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lk0/ze;->b3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->E2(I)V

    add-int/lit8 v1, p2, 0x4

    .line 47
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lk0/ze;->b3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->F2(I)V

    add-int/lit8 v1, p2, 0x5

    .line 48
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lk0/ze;->b3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    add-int/lit8 v1, p2, 0x6

    .line 49
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lk0/ze;->b3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->R2(I)V

    add-int/lit8 v1, p2, 0x7

    .line 50
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lk0/ze;->b3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->S2(I)V

    add-int/lit8 v1, p2, 0x8

    .line 51
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lk0/ze;->b3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->T2(I)V

    add-int/lit8 v1, p2, 0x9

    .line 52
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lk0/ze;->b3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    :goto_6
    return-void
.end method

.method public W2()V
    .locals 0

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
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p2, p1}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2
    aget p1, p2, p1

    invoke-virtual {p0, p1}, Lk0/ze;->c3(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b3(I)I
    .locals 3

    const/4 v0, 0x3

    const/16 v1, 0xa

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method public final c3(I)V
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0x8

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v2, v3

    const/4 v5, 0x1

    const/16 v6, 0x33

    aput v6, v2, v5

    const/4 v7, 0x2

    const/4 v8, 0x5

    aput v8, v2, v7

    const/4 v9, 0x3

    aput p1, v2, v9

    .line 1
    iget-object v10, v0, Lk0/ze;->b:[I

    iget v11, v0, Lk0/ze;->c:I

    rem-int/2addr v11, v7

    aget v10, v10, v11

    const/4 v11, 0x4

    aput v10, v2, v11

    const/16 v10, 0x25

    aput v10, v2, v8

    const/4 v12, 0x6

    aput v3, v2, v12

    const/4 v13, 0x7

    const/16 v14, 0xaa

    aput v14, v2, v13

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v1, [I

    aput v4, v2, v3

    aput v6, v2, v5

    aput v8, v2, v7

    aput p1, v2, v9

    .line 2
    iget-object v15, v0, Lk0/ze;->b:[I

    iget v9, v0, Lk0/ze;->c:I

    rem-int/2addr v9, v7

    aget v9, v15, v9

    aput v9, v2, v11

    aput v10, v2, v8

    aput v3, v2, v12

    aput v14, v2, v13

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v1, v1, [I

    aput v4, v1, v3

    aput v6, v1, v5

    aput v8, v1, v7

    const/4 v2, 0x3

    aput p1, v1, v2

    .line 3
    iget-object v2, v0, Lk0/ze;->b:[I

    iget v4, v0, Lk0/ze;->c:I

    rem-int/2addr v4, v7

    aget v2, v2, v4

    aput v2, v1, v11

    aput v10, v1, v8

    aput v3, v1, v12

    aput v14, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget v1, v0, Lk0/ze;->c:I

    add-int/2addr v1, v5

    iput v1, v0, Lk0/ze;->c:I

    .line 5
    rem-int/2addr v1, v7

    iput v1, v0, Lk0/ze;->c:I

    return-void
.end method

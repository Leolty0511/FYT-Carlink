.class public Lk0/xi;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/xi;->c:I

    const/16 v1, 0x15

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    const/4 v3, 0x1

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    const/4 v3, 0x3

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v3, 0xb

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v3, 0xc

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v3, 0xd

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v3, 0xe

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v3, 0xf

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v3, 0x10

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v3, 0x11

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v3, 0x12

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v3, 0x13

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v2, 0x14

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/xi;->d:[[I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lk0/xi;->e:I

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
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x14
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x17
        0xc
    .end array-data

    :array_d
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_e
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_f
    .array-data 4
        0x83
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x84
        0x4
    .end array-data

    :array_11
    .array-data 4
        0x85
        0x3
    .end array-data

    :array_12
    .array-data 4
        0x86
        0x4
    .end array-data

    :array_13
    .array-data 4
        0x87
        0x0
    .end array-data

    :array_14
    .array-data 4
        0x88
        0x2
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

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->j:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x20

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_10

    const/16 v3, 0x24

    const/4 v8, 0x4

    if-eq v2, v3, :cond_e

    const/16 v3, 0x29

    const/16 v10, 0xf

    if-eq v2, v3, :cond_c

    const/16 v3, 0x30

    if-eq v2, v3, :cond_b

    const/16 v3, 0x35

    if-eq v2, v3, :cond_a

    const/16 v3, 0x55

    if-eq v2, v3, :cond_0

    goto/16 :goto_8

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 3
    aget-byte v3, v1, v3

    add-int/lit8 v11, p2, 0x6

    .line 4
    aget-byte v11, v1, v11

    and-int/lit16 v12, v2, 0xff

    const/4 v13, -0x3

    const/4 v14, -0x2

    const/16 v15, 0x50

    const/16 v5, 0x1b

    const/16 v4, 0x10

    if-ne v2, v4, :cond_1

    new-array v9, v7, [I

    aput v14, v9, v6

    .line 5
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    if-ne v2, v15, :cond_2

    new-array v9, v7, [I

    aput v13, v9, v6

    .line 6
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v9, v7, [I

    aput v12, v9, v6

    .line 7
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v5, 0x1c

    if-ne v2, v4, :cond_3

    new-array v2, v7, [I

    aput v14, v2, v6

    .line 8
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    if-ne v2, v15, :cond_4

    new-array v2, v7, [I

    aput v13, v2, v6

    .line 9
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array v2, v7, [I

    aput v12, v2, v6

    .line 10
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v2, 0x15

    new-array v5, v7, [I

    shr-int/lit8 v9, v3, 0x0

    and-int/2addr v9, v10

    aput v9, v5, v6

    .line 11
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v5, v7, [I

    shr-int/2addr v3, v8

    and-int/2addr v3, v10

    aput v3, v5, v6

    .line 12
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    if-eq v3, v7, :cond_9

    const/4 v2, 0x2

    if-eq v3, v2, :cond_8

    const/4 v2, 0x3

    if-eq v3, v2, :cond_7

    if-eq v3, v8, :cond_6

    const/4 v2, 0x6

    if-eq v3, v2, :cond_5

    move v2, v6

    move v3, v2

    :goto_2
    move v5, v3

    goto :goto_3

    :cond_5
    move v3, v6

    move v5, v3

    move v2, v7

    goto :goto_3

    :cond_6
    move v3, v6

    move v2, v7

    move v5, v2

    goto :goto_3

    :cond_7
    move v2, v6

    move v3, v2

    move v5, v7

    goto :goto_3

    :cond_8
    move v2, v6

    move v3, v7

    goto :goto_2

    :cond_9
    move v2, v6

    move v5, v2

    move v3, v7

    :goto_3
    const/16 v8, 0x12

    new-array v9, v7, [I

    aput v2, v9, v6

    .line 13
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v8, v7, [I

    aput v3, v8, v6

    .line 14
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    aput v5, v3, v6

    .line 15
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v3, v7, [I

    shr-int/lit8 v5, v11, 0x1

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 16
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v7, [I

    shr-int/lit8 v5, v11, 0x3

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 17
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v11, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 18
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v11, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 19
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 20
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x258

    .line 21
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_8

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 22
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 23
    aget-byte v1, v1, v3

    const/16 v3, 0x408

    new-array v4, v7, [I

    const/16 v5, 0xff

    and-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v5

    or-int/2addr v1, v2

    aput v1, v4, v6

    .line 24
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 25
    :cond_b
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_c
    const/4 v3, 0x2

    add-int/lit8 v2, p2, 0x3

    .line 26
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x168

    if-eqz v4, :cond_d

    add-int/lit8 v3, p2, 0x2

    .line 27
    aget-byte v3, v1, v3

    aget-byte v1, v1, v2

    and-int/2addr v1, v10

    invoke-static {v3, v1, v6, v5}, Lk0/qt;->j(IIII)V

    goto/16 :goto_8

    .line 28
    :cond_d
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xf00

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    rsub-int v1, v1, 0x1000

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v10

    .line 29
    invoke-static {v2, v1, v7, v5}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_8

    :cond_e
    const/4 v2, 0x2

    add-int/lit8 v3, p2, 0x2

    .line 30
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    const-string v3, "persist.syu.reversefrontdoor"

    .line 31
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_f

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 32
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 33
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_f
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x2

    .line 34
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 35
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 36
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x3

    .line 37
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x5

    .line 38
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 39
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_10
    add-int/lit8 v2, p2, 0x2

    .line 40
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 41
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 42
    iput v2, v0, Lk0/xi;->c:I

    move v2, v6

    .line 43
    :goto_5
    iget-object v3, v0, Lk0/xi;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_12

    .line 44
    iget v4, v0, Lk0/xi;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v6

    if-ne v4, v5, :cond_11

    if-eqz v4, :cond_12

    .line 45
    iput v2, v0, Lk0/xi;->b:I

    goto :goto_6

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    :goto_6
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v7, :cond_13

    .line 46
    array-length v1, v3

    if-ge v2, v1, :cond_16

    .line 47
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_13
    if-nez v1, :cond_16

    .line 48
    iget v1, v0, Lk0/xi;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_14

    const/16 v2, 0xff

    if-eq v1, v2, :cond_15

    .line 49
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_14
    const/16 v2, 0xff

    .line 50
    :cond_15
    :goto_7
    iput v2, v0, Lk0/xi;->b:I

    :cond_16
    :goto_8
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

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
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 2
    aget p1, p2, p1

    invoke-virtual {p0, p1}, Lk0/xi;->a3(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a3(I)V
    .locals 6

    .line 1
    iget v0, p0, Lk0/xi;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    iput v0, p0, Lk0/xi;->e:I

    const/4 v3, 0x7

    new-array v3, v3, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x33

    aput v4, v3, v1

    const/4 v1, 0x4

    aput v1, v3, v2

    int-to-byte p1, p1

    const/4 v2, 0x3

    aput p1, v3, v2

    if-nez v0, :cond_0

    const/16 p1, 0x22

    goto :goto_0

    :cond_0
    const/16 p1, 0xcc

    :goto_0
    aput p1, v3, v1

    const/4 p1, 0x5

    aput v5, v3, p1

    const/4 p1, 0x6

    aput v5, v3, p1

    .line 2
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

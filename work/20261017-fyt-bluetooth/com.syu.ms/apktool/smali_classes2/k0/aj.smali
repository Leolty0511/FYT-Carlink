.class public Lk0/aj;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/aj;->c:I

    const/4 v1, 0x7

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

    const/4 v2, 0x6

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/aj;->d:[[I

    .line 4
    new-instance v0, Lk0/aj$a;

    invoke-direct {v0, p0}, Lk0/aj$a;-><init>(Lk0/aj;)V

    iput-object v0, p0, Lk0/aj;->e:Ljava/lang/Runnable;

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
        0x6
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_5
    .array-data 4
        0xb
        0x3
    .end array-data

    :array_6
    .array-data 4
        0xc
        0x4
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

    const/4 v1, 0x1

    iput v1, v0, Lk0/mt;->f:I

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->o:I

    const/4 v2, 0x2

    .line 4
    iput v2, v0, Lk0/mt;->h:I

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/aj;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/16 v2, 0xff

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_11

    const/16 v1, 0x28

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x2

    if-eq v0, v1, :cond_f

    const/16 v1, 0x30

    if-eq v0, v1, :cond_e

    const/16 v1, 0x68

    const v9, 0xff00

    if-eq v0, v1, :cond_d

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_c

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_b

    const/16 p3, 0x23

    if-eq v0, p3, :cond_1

    const/16 p3, 0x24

    if-eq v0, p3, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 p3, p2, 0x3

    .line 2
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x4

    .line 3
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x5

    .line 4
    aget-byte v1, p1, v1

    add-int/lit8 p2, p2, 0x6

    .line 5
    aget-byte p1, p1, p2

    .line 6
    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->R2(I)V

    .line 7
    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->S2(I)V

    .line 8
    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->T2(I)V

    .line 9
    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_6

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 10
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 11
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 12
    aget-byte v1, p1, v1

    add-int/2addr p2, v7

    .line 13
    aget-byte p1, p1, p2

    const/16 p2, 0xa

    new-array v2, v5, [I

    shr-int/lit8 v9, p3, 0x7

    and-int/2addr v9, v5

    aput v9, v2, v4

    .line 14
    invoke-static {p2, v2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xb

    new-array v2, v5, [I

    shr-int/lit8 v9, p3, 0x6

    and-int/2addr v9, v5

    aput v9, v2, v4

    .line 15
    invoke-static {p2, v2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array v2, v5, [I

    shr-int/lit8 v9, p3, 0x5

    and-int/2addr v9, v5

    aput v9, v2, v4

    .line 16
    invoke-static {p2, v2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xd

    new-array v2, v5, [I

    shr-int/lit8 v9, p3, 0x3

    and-int/2addr v9, v5

    aput v9, v2, v4

    .line 17
    invoke-static {p2, v2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x10

    new-array v2, v5, [I

    shr-int/2addr p3, v5

    and-int/2addr p3, v5

    aput p3, v2, v4

    .line 18
    invoke-static {p2, v2}, Lk0/qt;->y0(I[I)V

    and-int/lit8 p2, v0, 0xf

    if-eq p2, v5, :cond_6

    if-eq p2, v8, :cond_5

    if-eq p2, v3, :cond_4

    if-eq p2, v6, :cond_3

    if-eq p2, v7, :cond_2

    move p2, v4

    move p3, p2

    :goto_0
    move v2, p3

    goto :goto_1

    :cond_2
    move p3, v4

    move v2, p3

    move p2, v5

    goto :goto_1

    :cond_3
    move p3, v4

    move p2, v5

    move v2, p2

    goto :goto_1

    :cond_4
    move p2, v4

    move p3, p2

    move v2, v5

    goto :goto_1

    :cond_5
    move p2, v4

    move p3, v5

    goto :goto_0

    :cond_6
    move p2, v4

    move v2, p2

    move p3, v5

    :goto_1
    const/16 v3, 0x41

    new-array v6, v5, [I

    if-ne v0, v7, :cond_7

    move v0, v5

    goto :goto_2

    :cond_7
    move v0, v4

    :goto_2
    aput v0, v6, v4

    .line 19
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x12

    new-array v3, v5, [I

    aput p2, v3, v4

    .line 20
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array v0, v5, [I

    aput p3, v0, v4

    .line 21
    invoke-static {p2, v0}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x14

    new-array p3, v5, [I

    aput v2, p3, v4

    .line 22
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v5, [I

    and-int/lit8 v0, v1, 0xf

    aput v0, p3, v4

    .line 23
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    and-int/lit16 p2, p1, 0xff

    if-eqz p2, :cond_a

    const/16 p3, 0x1e

    if-eq p2, p3, :cond_9

    if-lez p2, :cond_8

    if-ge p2, p3, :cond_8

    sub-int/2addr p1, v5

    mul-int/2addr p1, v7

    add-int/lit16 p1, p1, 0xa0

    goto :goto_3

    :cond_8
    const/4 p1, -0x1

    goto :goto_3

    :cond_9
    const/4 p1, -0x3

    goto :goto_3

    :cond_a
    const/4 p1, -0x2

    :goto_3
    const/16 p2, 0x1b

    new-array p3, v5, [I

    aput p1, p3, v4

    .line 24
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    .line 25
    :cond_b
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v8

    sub-int/2addr p3, v8

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_c
    const/16 p3, 0x407

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x3

    .line 26
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v9

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    shl-int/2addr p1, v4

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_d
    const/16 p3, 0x408

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x3

    .line 27
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v9

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    shl-int/2addr p1, v4

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_e
    add-int/lit8 p3, p2, 0x2

    .line 28
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    const/16 p2, 0x15e0

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_6

    :cond_f
    add-int/2addr p2, v8

    .line 29
    aget-byte p1, p1, p2

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 30
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 31
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 32
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    const-string p2, "persist.syu.reversefrontdoor"

    .line 33
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_10

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 34
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 35
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_10
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 36
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 37
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_11
    add-int/lit8 p3, p2, 0x2

    .line 38
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 39
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 40
    iput p2, p0, Lk0/aj;->c:I

    move p2, v4

    .line 41
    :goto_4
    iget-object p3, p0, Lk0/aj;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_13

    .line 42
    iget v0, p0, Lk0/aj;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_12

    if-eqz v0, :cond_13

    .line 43
    iput p2, p0, Lk0/aj;->b:I

    goto :goto_5

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_13
    :goto_5
    and-int/2addr p1, v2

    if-eqz p1, :cond_14

    .line 44
    array-length p1, p3

    if-ge p2, p1, :cond_16

    .line 45
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_6

    .line 46
    :cond_14
    iget p1, p0, Lk0/aj;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_15

    if-eq p1, v2, :cond_15

    .line 47
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 48
    :cond_15
    iput v2, p0, Lk0/aj;->b:I

    :cond_16
    :goto_6
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/aj;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

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

    const/16 p2, 0x3eb

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    new-array p2, p1, [I

    .line 1
    fill-array-data p2, :array_0

    invoke-static {p2}, Lz/k;->s([I)V

    const-wide/16 p2, 0x96

    .line 2
    invoke-static {p2, p3}, La/i;->a0(J)V

    new-array p1, p1, [I

    .line 3
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x8c
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x8c
        0x1
        0x0
    .end array-data
.end method

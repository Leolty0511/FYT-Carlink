.class public Lk0/tp;
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
    iput v0, p0, Lk0/tp;->c:I

    const/16 v1, 0x9

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

    const/16 v2, 0x8

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/tp;->d:[[I

    .line 4
    new-instance v0, Lk0/tp$a;

    invoke-direct {v0, p0}, Lk0/tp$a;-><init>(Lk0/tp;)V

    iput-object v0, p0, Lk0/tp;->e:Ljava/lang/Runnable;

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
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x14
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
    .locals 4

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/tp;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    iput v1, v0, Lk0/mt;->j:I

    .line 9
    iput v1, v0, Lk0/mt;->o:I

    .line 10
    sget v1, Lk0/nt;->a:I

    const v3, 0xa201c6

    if-ne v1, v3, :cond_0

    .line 11
    iput v2, v0, Lk0/mt;->i:I

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_11

    const/16 v1, 0x22

    const/4 v6, 0x5

    if-eq v0, v1, :cond_10

    const/16 v1, 0x24

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq v0, v1, :cond_e

    const/16 v1, 0x31

    const/16 v9, 0x64

    const v10, 0xff00

    if-eq v0, v1, :cond_d

    const/16 v1, 0x7d

    const/16 v11, 0xb

    if-eq v0, v1, :cond_9

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_8

    const/16 p3, 0x28

    if-eq v0, p3, :cond_1

    const/16 p3, 0x29

    if-eq v0, p3, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const/16 p2, 0x1e77

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_5

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/lit8 v0, p2, 0x3

    .line 4
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    add-int/lit8 v1, p2, 0x4

    .line 5
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    add-int/2addr p2, v6

    .line 6
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const/16 p2, 0xa

    new-array v2, v5, [I

    shr-int/lit8 v3, p3, 0x7

    and-int/2addr v3, v5

    aput v3, v2, v4

    .line 7
    invoke-static {p2, v2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v2, p3, 0x6

    and-int/2addr v2, v5

    aput v2, p2, v4

    .line 8
    invoke-static {v11, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array v2, v5, [I

    shr-int/lit8 v3, p3, 0x5

    and-int/2addr v3, v5

    aput v3, v2, v4

    .line 9
    invoke-static {p2, v2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x41

    new-array v2, v5, [I

    shr-int/2addr p3, v5

    and-int/2addr p3, v5

    aput p3, v2, v4

    .line 10
    invoke-static {p2, v2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x12

    new-array p3, v5, [I

    shr-int/lit8 v2, v0, 0x7

    and-int/2addr v2, v5

    aput v2, p3, v4

    .line 11
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array p3, v5, [I

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v5

    aput v2, p3, v4

    .line 12
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x14

    new-array p3, v5, [I

    shr-int/lit8 v2, v0, 0x5

    and-int/2addr v2, v5

    aput v2, p3, v4

    .line 13
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v5, [I

    and-int/lit8 v0, v0, 0xf

    aput v0, p3, v4

    .line 14
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x1d

    const/4 p3, -0x1

    const/4 v0, -0x3

    const/4 v2, -0x2

    const/16 v3, 0x1f

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    if-lt v1, v5, :cond_2

    if-gt v1, p2, :cond_2

    sub-int/2addr v1, v5

    mul-int/2addr v1, v6

    add-int/lit16 v1, v1, 0xb4

    goto :goto_0

    :cond_2
    move v1, p3

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    const/16 v7, 0x1b

    new-array v8, v5, [I

    aput v1, v8, v4

    .line 15
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-lt p1, v5, :cond_7

    if-gt p1, p2, :cond_7

    sub-int/2addr p1, v5

    mul-int/2addr p1, v6

    add-int/lit16 p3, p1, 0xb4

    goto :goto_1

    :cond_5
    move p3, v0

    goto :goto_1

    :cond_6
    move p3, v2

    :cond_7
    :goto_1
    const/16 p1, 0x1c

    new-array p2, v5, [I

    aput p3, p2, v4

    .line 16
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    .line 17
    :cond_8
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v8

    sub-int/2addr p3, v8

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_9
    add-int/lit8 p3, p2, 0x2

    .line 18
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    const/16 v0, 0x419

    const/4 v1, 0x0

    if-eq p3, v5, :cond_b

    if-eq p3, v2, :cond_a

    goto/16 :goto_5

    :cond_a
    add-int/lit8 p3, p2, 0x4

    .line 19
    aget-byte p3, p1, p3

    shl-int/lit8 p3, p3, 0x8

    and-int/2addr p3, v10

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, p3

    div-int/2addr p1, v9

    const/16 p2, 0x407

    new-array p3, v5, [I

    aput p1, p3, v4

    .line 20
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 21
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    new-array p3, v8, [I

    aput v5, p3, v4

    aput p1, p3, v5

    invoke-static {p2, v0, p3, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_5

    .line 22
    :cond_b
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    new-array v6, v8, [I

    aput v11, v6, v4

    add-int/2addr p2, v2

    aget-byte v8, p1, p2

    and-int/2addr v3, v8

    aput v3, v6, v5

    invoke-static {p3, v0, v6, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const-string p3, "persist.fyt.leftrightlighttype"

    .line 23
    invoke-static {p3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_c

    .line 24
    aget-byte p3, p1, p2

    shr-int/2addr p3, v2

    and-int/2addr p3, v5

    aget-byte p1, p1, p2

    shr-int/2addr p1, v7

    and-int/2addr p1, v5

    invoke-static {p3, p1, v4}, Ll0/c0;->b(III)V

    goto/16 :goto_5

    .line 25
    :cond_c
    aget-byte p3, p1, p2

    shr-int/2addr p3, v2

    and-int/2addr p3, v5

    aget-byte p1, p1, p2

    shr-int/2addr p1, v7

    and-int/2addr p1, v5

    invoke-static {p3, p1, v4}, Ll0/c0;->a(III)V

    goto/16 :goto_5

    :cond_d
    const/16 p3, 0x62

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 26
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x3

    .line 27
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x4

    .line 28
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    aput v0, p3, v4

    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x5

    .line 29
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v10

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x7

    .line 30
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v10

    add-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_e
    add-int/2addr p2, v8

    .line 31
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 32
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_f

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 33
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 34
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_f
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 35
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 36
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 37
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 38
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 39
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v8

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 40
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_10
    add-int/lit8 p3, p2, 0x2

    .line 41
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 42
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 43
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v6

    .line 44
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto :goto_5

    :cond_11
    add-int/lit8 p3, p2, 0x2

    .line 45
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 46
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 47
    iput p2, p0, Lk0/tp;->c:I

    move p2, v4

    .line 48
    :goto_3
    iget-object p3, p0, Lk0/tp;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_13

    .line 49
    iget v0, p0, Lk0/tp;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_12

    if-eqz v0, :cond_13

    .line 50
    iput p2, p0, Lk0/tp;->b:I

    goto :goto_4

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_13
    :goto_4
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_14

    .line 51
    array-length p1, p3

    if-ge p2, p1, :cond_16

    .line 52
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_14
    if-nez p1, :cond_16

    .line 53
    iget p1, p0, Lk0/tp;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_15

    if-eq p1, v3, :cond_15

    .line 54
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 55
    :cond_15
    iput v3, p0, Lk0/tp;->b:I

    :cond_16
    :goto_5
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

    .line 3
    iget-object v0, p0, Lk0/tp;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x67

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
    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0xe0

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 1
    aget p4, p2, p4

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

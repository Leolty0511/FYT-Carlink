.class public Lk0/ms;
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
    iput v0, p0, Lk0/ms;->c:I

    const/16 v1, 0x1d

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

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v4, 0xe

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v4, 0x14

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v4, 0x15

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v4, 0x16

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v4, 0x17

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v4, 0x18

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v4, 0x19

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v4, 0x1b

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_1c

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/ms;->d:[[I

    .line 4
    iput v0, p0, Lk0/ms;->e:I

    .line 5
    new-instance v0, Lk0/ms$a;

    invoke-direct {v0, p0}, Lk0/ms$a;-><init>(Lk0/ms;)V

    iput-object v0, p0, Lk0/ms;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/ms$b;

    invoke-direct {v0, p0}, Lk0/ms$b;-><init>(Lk0/ms;)V

    iput-object v0, p0, Lk0/ms;->g:Ljava/lang/Runnable;

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
        0x5
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x15
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x19
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x7
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x8
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x1d
    .end array-data

    :array_b
    .array-data 4
        0xc
        0xc
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x12
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x35
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x12
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x1a
    .end array-data

    :array_10
    .array-data 4
        0x11
        0xd
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x36
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x6
    .end array-data

    :array_13
    .array-data 4
        0x14
        0x5
    .end array-data

    :array_14
    .array-data 4
        0x15
        0x3e
    .end array-data

    :array_15
    .array-data 4
        0x16
        -0x1
    .end array-data

    :array_16
    .array-data 4
        0x17
        0x3f
    .end array-data

    :array_17
    .array-data 4
        0x18
        -0x1
    .end array-data

    :array_18
    .array-data 4
        0x19
        0x37
    .end array-data

    :array_19
    .array-data 4
        0x1a
        0x10
    .end array-data

    :array_1a
    .array-data 4
        0x1b
        0x36
    .end array-data

    :array_1b
    .array-data 4
        0x1c
        0x26
    .end array-data

    :array_1c
    .array-data 4
        0x33
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
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->i:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->j:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 7

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x7d

    if-eq p3, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    const/16 v0, 0xff

    and-int/2addr p3, v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p3, v3, :cond_d

    const v4, 0xff00

    const/16 v5, 0x8

    if-eq p3, v1, :cond_c

    if-eq p3, v5, :cond_b

    const/16 v6, 0xa

    if-eq p3, v6, :cond_a

    const/16 v1, 0x80

    if-eq p3, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    add-int/lit8 p3, p2, 0x3

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v0

    add-int/lit8 p2, p2, 0x4

    .line 4
    aget-byte p1, p1, p2

    and-int/2addr p1, v0

    and-int/lit16 p2, p3, 0xff

    .line 5
    iput p2, p0, Lk0/ms;->c:I

    move p2, v2

    .line 6
    :goto_0
    iget-object p3, p0, Lk0/ms;->d:[[I

    array-length v1, p3

    if-ge p2, v1, :cond_3

    .line 7
    iget v1, p0, Lk0/ms;->c:I

    aget-object v4, p3, p2

    aget v4, v4, v2

    if-ne v1, v4, :cond_2

    if-eqz v1, :cond_3

    .line 8
    iput p2, p0, Lk0/ms;->b:I

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 9
    :cond_3
    :goto_1
    iget v1, p0, Lk0/ms;->c:I

    const/16 v4, 0x16

    if-eq v1, v4, :cond_9

    const/16 v4, 0x18

    if-eq v1, v4, :cond_6

    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    .line 10
    array-length p1, p3

    if-ge p2, p1, :cond_f

    .line 11
    aget-object p1, p3, p2

    aget p1, p1, v3

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_2

    .line 12
    :cond_4
    iget p1, p0, Lk0/ms;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_5

    if-eq p1, v0, :cond_5

    .line 13
    aget-object p1, p3, p1

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 14
    :cond_5
    iput v0, p0, Lk0/ms;->b:I

    goto/16 :goto_2

    :cond_6
    and-int/2addr p1, v0

    if-ne p1, v3, :cond_f

    .line 15
    invoke-static {}, Lk0/qt;->k0()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "com.syu.fourcamera2"

    .line 16
    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "persist.lsec.fourcamera2.show"

    .line 17
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_f

    .line 18
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p1

    const/16 p2, 0x24f

    invoke-virtual {p1, p2}, Lc/e;->c(I)Z

    goto/16 :goto_2

    .line 19
    :cond_7
    sget p1, Lu0/b;->o:I

    if-nez p1, :cond_8

    .line 20
    invoke-static {v3}, Lk0/qt;->a(I)V

    goto/16 :goto_2

    .line 21
    :cond_8
    invoke-static {v2}, Lk0/qt;->a(I)V

    goto/16 :goto_2

    :cond_9
    and-int/2addr p1, v0

    if-ne p1, v3, :cond_f

    const-string p1, "com.syu.carlink"

    .line 22
    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 23
    invoke-static {p1}, Lo1/u;->g(Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    const/16 p3, 0x408

    new-array v3, v3, [I

    add-int/lit8 v6, p2, 0x4

    .line 24
    aget-byte v6, p1, v6

    shl-int/lit8 v5, v6, 0x8

    and-int/2addr v4, v5

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    and-int/2addr p1, v0

    or-int/2addr p1, v4

    aput p1, v3, v2

    invoke-static {p3, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_b
    add-int/lit8 p3, p2, 0x3

    .line 25
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x4

    .line 26
    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    .line 27
    invoke-static {p3, p1, v3, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_2

    :cond_c
    add-int/lit8 p3, p2, 0x4

    .line 28
    aget-byte p3, p1, p3

    shl-int/2addr p3, v5

    and-int/2addr p3, v4

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    and-int/2addr p1, v0

    or-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x64

    const/16 p2, 0x407

    new-array p3, v3, [I

    aput p1, p3, v2

    .line 29
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 30
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x419

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v3, v0, v2

    aput p1, v0, v3

    const/4 p1, 0x0

    invoke-static {p2, p3, v0, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 31
    invoke-static {p3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_e

    add-int/2addr p2, v1

    .line 32
    aget-byte p3, p1, p2

    shr-int/2addr p3, v1

    and-int/2addr p3, v3

    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x4

    and-int/2addr p1, v3

    invoke-static {p3, p1, v2}, Ll0/c0;->b(III)V

    goto :goto_2

    :cond_e
    add-int/2addr p2, v1

    .line 33
    aget-byte p3, p1, p2

    shr-int/2addr p3, v1

    and-int/2addr p3, v3

    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x4

    and-int/2addr p1, v3

    invoke-static {p3, p1, v2}, Ll0/c0;->a(III)V

    :cond_f
    :goto_2
    return-void
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

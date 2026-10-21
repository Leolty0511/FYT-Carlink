.class public Lk0/ci;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ci;->c:I

    const/4 v1, 0x4

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

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/ci;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/ci;->e:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_3
    .array-data 4
        0x6
        0xc
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
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 8

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_d

    const/16 p3, 0x20

    const/16 v1, 0xff

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, p3, :cond_8

    const/16 p3, 0x24

    const/4 v6, 0x4

    if-eq v0, p3, :cond_6

    const/16 p3, 0x26

    const/16 v7, 0x21c

    if-eq v0, p3, :cond_5

    const/16 p3, 0x7d

    if-eq v0, p3, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    if-eq p3, v5, :cond_3

    const/16 v0, 0x8

    if-eq p3, v3, :cond_2

    if-eq p3, v0, :cond_1

    goto/16 :goto_3

    :cond_1
    add-int/lit8 p3, p2, 0x3

    .line 3
    aget-byte p3, p1, p3

    add-int/2addr p2, v6

    .line 4
    aget-byte p1, p1, p2

    .line 5
    invoke-static {p3, p1, v5, v7}, Lk0/qt;->i(IIZI)V

    .line 6
    iput-boolean v5, p0, Lk0/ci;->e:Z

    goto/16 :goto_3

    :cond_2
    add-int/lit8 p3, p2, 0x4

    .line 7
    aget-byte p3, p1, p3

    shl-int/2addr p3, v0

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    or-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x64

    const/16 p2, 0x407

    new-array p3, v5, [I

    aput p1, p3, v4

    .line 8
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 9
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x419

    new-array v0, v2, [I

    aput v5, v0, v4

    aput p1, v0, v5

    const/4 p1, 0x0

    invoke-static {p2, p3, v0, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 10
    invoke-static {p3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_4

    add-int/2addr p2, v3

    .line 11
    aget-byte p3, p1, p2

    shr-int/2addr p3, v3

    and-int/2addr p3, v5

    aget-byte p1, p1, p2

    shr-int/2addr p1, v6

    and-int/2addr p1, v5

    invoke-static {p3, p1, v4}, Ll0/c0;->b(III)V

    goto/16 :goto_3

    :cond_4
    add-int/2addr p2, v3

    .line 12
    aget-byte p3, p1, p2

    shr-int/2addr p3, v3

    and-int/2addr p3, v5

    aget-byte p1, p1, p2

    shr-int/2addr p1, v6

    and-int/2addr p1, v5

    invoke-static {p3, p1, v4}, Ll0/c0;->a(III)V

    goto/16 :goto_3

    .line 13
    :cond_5
    iget-boolean p3, p0, Lk0/ci;->e:Z

    if-nez p3, :cond_e

    add-int/lit8 p3, p2, 0x3

    .line 14
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    invoke-static {p3, p1, v4, v7}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_3

    :cond_6
    add-int/2addr p2, v2

    .line 15
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 16
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_7

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 17
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 18
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_7
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 19
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 20
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 21
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 22
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v5

    aput p1, p2, v4

    const/4 p1, 0x5

    .line 23
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    add-int/lit8 p3, p2, 0x2

    .line 24
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 25
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 26
    iput p2, p0, Lk0/ci;->c:I

    move p2, v4

    .line 27
    :goto_1
    iget-object p3, p0, Lk0/ci;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_a

    .line 28
    iget v0, p0, Lk0/ci;->c:I

    aget-object v2, p3, p2

    aget v2, v2, v4

    if-ne v0, v2, :cond_9

    if-eqz v0, :cond_a

    .line 29
    iput p2, p0, Lk0/ci;->b:I

    goto :goto_2

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    and-int/2addr p1, v1

    if-eqz p1, :cond_b

    .line 30
    array-length p1, p3

    if-ge p2, p1, :cond_e

    .line 31
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 32
    :cond_b
    iget p1, p0, Lk0/ci;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_c

    if-eq p1, v1, :cond_c

    .line 33
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 34
    :cond_c
    iput v1, p0, Lk0/ci;->b:I

    goto :goto_3

    .line 35
    :cond_d
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_e
    :goto_3
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

    const/16 p3, 0x8

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

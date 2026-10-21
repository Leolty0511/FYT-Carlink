.class public Lk0/wg;
.super Lk0/lt;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 7

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/16 v2, 0x71

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 4
    aget-byte v0, p1, v0

    const/4 v3, 0x4

    add-int/2addr p2, v3

    .line 5
    aget-byte p1, p1, p2

    const/16 p2, 0xa

    new-array v4, v2, [I

    shr-int/lit8 v5, p3, 0x7

    and-int/2addr v5, v2

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 6
    invoke-static {p2, v4}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xb

    new-array v4, v2, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v2

    aput v5, v4, v6

    .line 7
    invoke-static {p2, v4}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array v4, v2, [I

    shr-int/lit8 v5, p3, 0x5

    and-int/2addr v5, v2

    aput v5, v4, v6

    .line 8
    invoke-static {p2, v4}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x10

    new-array v4, v2, [I

    shr-int/2addr p3, v3

    and-int/2addr p3, v2

    aput p3, v4, v6

    .line 9
    invoke-static {p2, v4}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v2, [I

    and-int/lit8 v4, v0, 0xf

    aput v4, p3, v6

    .line 10
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 p2, v0, 0x4

    and-int/lit8 p2, p2, 0xf

    if-eq p2, v2, :cond_6

    if-eq p2, v1, :cond_5

    const/4 p3, 0x3

    if-eq p2, p3, :cond_4

    if-eq p2, v3, :cond_3

    const/4 p3, 0x5

    if-eq p2, p3, :cond_2

    move p2, v6

    move p3, p2

    :goto_0
    move v0, p3

    goto :goto_1

    :cond_2
    move p2, v2

    move p3, v6

    goto :goto_0

    :cond_3
    move p2, v2

    move v0, p2

    move p3, v6

    goto :goto_1

    :cond_4
    move v0, v2

    move p2, v6

    move p3, p2

    goto :goto_1

    :cond_5
    move p3, v2

    move v0, p3

    move p2, v6

    goto :goto_1

    :cond_6
    move p3, v2

    move p2, v6

    move v0, p2

    :goto_1
    const/16 v1, 0x12

    new-array v3, v2, [I

    aput p2, v3, v6

    .line 11
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array v1, v2, [I

    aput p3, v1, v6

    .line 12
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x14

    new-array p3, v2, [I

    aput v0, p3, v6

    .line 13
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x1b

    new-array p3, v2, [I

    and-int/lit16 p1, p1, 0xff

    aput p1, p3, v6

    .line 14
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    :goto_2
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

    const/16 p3, 0x61

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

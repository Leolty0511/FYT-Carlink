.class public Lk0/ed;
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
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x72
        0x4
        0x4
        0x1
        0x1
        0x2
    .end array-data
.end method

.method public U2([BII)V
    .locals 9

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 4
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 5
    aget-byte v2, p1, v1

    add-int/lit8 p2, p2, 0x5

    .line 6
    aget-byte v3, p1, p2

    const/16 v4, 0xa

    const/4 v5, 0x1

    new-array v6, v5, [I

    shr-int/lit8 v7, p3, 0x7

    and-int/2addr v7, v5

    const/4 v8, 0x0

    aput v7, v6, v8

    .line 7
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xb

    new-array v6, v5, [I

    shr-int/lit8 v7, p3, 0x6

    and-int/2addr v7, v5

    aput v7, v6, v8

    .line 8
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xc

    new-array v6, v5, [I

    shr-int/lit8 v7, p3, 0x5

    and-int/2addr v7, v5

    aput v7, v6, v8

    .line 9
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xd

    new-array v6, v5, [I

    shr-int/lit8 v7, p3, 0x4

    and-int/2addr v7, v5

    aput v7, v6, v8

    .line 10
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xe

    new-array v6, v5, [I

    shr-int/lit8 v7, p3, 0x2

    and-int/2addr v7, v5

    aput v7, v6, v8

    .line 11
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x41

    new-array v6, v5, [I

    shr-int/lit8 v7, p3, 0x1

    and-int/2addr v7, v5

    aput v7, v6, v8

    .line 12
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x10

    new-array v6, v5, [I

    shr-int/2addr p3, v8

    and-int/2addr p3, v5

    aput p3, v6, v8

    .line 13
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v4, v5, [I

    shr-int/lit8 v6, v0, 0x7

    and-int/2addr v6, v5

    aput v6, v4, v8

    .line 14
    invoke-static {p3, v4}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v4, v5, [I

    shr-int/lit8 v6, v0, 0x6

    and-int/2addr v6, v5

    aput v6, v4, v8

    .line 15
    invoke-static {p3, v4}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v4, v5, [I

    shr-int/lit8 v6, v0, 0x5

    and-int/lit8 v7, v6, 0x1

    aput v7, v4, v8

    .line 16
    invoke-static {p3, v4}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x4d

    new-array v4, v5, [I

    and-int/lit8 v6, v6, 0x7

    aput v6, v4, v8

    .line 17
    invoke-static {p3, v4}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v4, v5, [I

    and-int/lit8 v0, v0, 0xf

    aput v0, v4, v8

    .line 18
    invoke-static {p3, v4}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 19
    invoke-static {p3, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 20
    aget-byte v2, p1, p2

    .line 21
    aget-byte v3, p1, v1

    :cond_2
    and-int/lit16 p1, v2, 0xff

    const/4 p2, -0x3

    const/4 p3, -0x2

    const/16 v0, 0x1b

    const/16 v1, 0x1f

    if-nez p1, :cond_3

    new-array p1, v5, [I

    aput p3, p1, v8

    .line 22
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    new-array p1, v5, [I

    aput p2, p1, v8

    .line 23
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    if-ge p1, v1, :cond_5

    new-array v2, v5, [I

    add-int/lit8 p1, p1, 0x24

    aput p1, v2, v8

    .line 24
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    :cond_5
    :goto_0
    and-int/lit16 p1, v3, 0xff

    const/16 v0, 0x1c

    if-nez p1, :cond_6

    new-array p1, v5, [I

    aput p3, p1, v8

    .line 25
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    if-ne p1, v1, :cond_7

    new-array p1, v5, [I

    aput p2, p1, v8

    .line 26
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    if-ge p1, v1, :cond_8

    new-array p2, v5, [I

    add-int/lit8 p1, p1, 0x24

    aput p1, p2, v8

    .line 27
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    :cond_8
    :goto_1
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

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1
    invoke-virtual {p0, p2, p1}, Lk0/ed;->b3([II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2
    aget p1, p2, p1

    aget p2, p2, p3

    invoke-virtual {p0, p1, p2}, Lk0/ed;->a3(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x71

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3([II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.class public Lk0/zk;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/zk;->c:I

    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/zk;->d:[[I

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x3
    .end array-data

    :array_7
    .array-data 4
        0xb
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
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iput v1, v0, Lk0/mt;->q:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    iput v1, v0, Lk0/mt;->h:I

    return-void
.end method

.method public U2([BII)V
    .locals 11

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    const/4 v2, 0x2

    if-eq v0, v1, :cond_b

    const/16 p3, 0x11

    const/4 v1, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/16 v5, 0x12

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, p3, :cond_2

    if-eq v0, v5, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/2addr p2, v4

    .line 2
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {p2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 4
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 5
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 6
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 7
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 8
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 9
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 10
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v7

    aput p1, p2, v6

    .line 11
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_2
    add-int/lit8 p3, p2, 0x4

    .line 12
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x5

    .line 13
    aget-byte v0, p1, v0

    const/16 v2, 0xff

    and-int/2addr p3, v2

    .line 14
    iput p3, p0, Lk0/zk;->c:I

    move p3, v6

    .line 15
    :goto_1
    iget-object v8, p0, Lk0/zk;->d:[[I

    array-length v9, v8

    if-ge p3, v9, :cond_4

    .line 16
    iget v9, p0, Lk0/zk;->c:I

    aget-object v10, v8, p3

    aget v10, v10, v6

    if-ne v9, v10, :cond_3

    if-eqz v9, :cond_4

    .line 17
    iput p3, p0, Lk0/zk;->b:I

    goto :goto_2

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 18
    :cond_4
    :goto_2
    iget v9, p0, Lk0/zk;->c:I

    if-eq v9, v3, :cond_7

    and-int/2addr v0, v2

    if-ne v0, v7, :cond_5

    .line 19
    array-length v0, v8

    if-ge p3, v0, :cond_a

    .line 20
    aget-object p3, v8, p3

    aget p3, p3, v7

    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_5
    if-nez v0, :cond_a

    .line 21
    iget p3, p0, Lk0/zk;->b:I

    array-length v0, v8

    if-ge p3, v0, :cond_6

    if-eq p3, v2, :cond_6

    .line 22
    aget-object p3, v8, p3

    aget p3, p3, v7

    invoke-static {p3, v7}, Ll0/b0;->l0(II)V

    .line 23
    :cond_6
    iput v2, p0, Lk0/zk;->b:I

    goto :goto_3

    :cond_7
    and-int/lit16 p3, v0, 0xff

    if-ne p3, v7, :cond_a

    .line 24
    sget p3, Lh0/c;->E:I

    if-eq p3, v1, :cond_9

    if-eq p3, v4, :cond_8

    if-eq p3, v3, :cond_9

    .line 25
    invoke-static {v5, v6}, Ll0/b0;->l0(II)V

    .line 26
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 27
    :cond_8
    invoke-static {v5, v6}, Ll0/b0;->l0(II)V

    .line 28
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_9
    const/16 p3, 0x1a

    .line 29
    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    .line 30
    invoke-static {p3, v7}, Ll0/b0;->l0(II)V

    :cond_a
    :goto_3
    add-int/lit8 p3, p2, 0x9

    .line 31
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    add-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    const/16 p2, 0x21c

    invoke-static {p3, p1, v7, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_4

    .line 32
    :cond_b
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/4 p3, 0x7

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

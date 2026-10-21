.class public Lk0/ag;
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

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->e:I

    .line 5
    iput v1, v0, Lk0/mt;->f:I

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    const/16 v0, 0x21

    if-eq p3, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 v0, p2, 0x3

    .line 3
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x4

    .line 4
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p2, p2, 0x5

    .line 5
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xa

    const/4 v5, 0x1

    new-array v6, v5, [I

    shr-int/lit8 v7, p3, 0x7

    and-int/2addr v7, v5

    const/4 v8, 0x0

    aput v7, v6, v8

    .line 6
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xb

    new-array v6, v5, [I

    shr-int/lit8 v7, p3, 0x6

    and-int/2addr v7, v5

    aput v7, v6, v8

    .line 7
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xc

    new-array v6, v5, [I

    shr-int/lit8 v7, p3, 0x5

    and-int/2addr v7, v5

    aput v7, v6, v8

    .line 8
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x10

    new-array v6, v5, [I

    shr-int/2addr p3, v8

    and-int/2addr p3, v5

    aput p3, v6, v8

    .line 9
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 p3, v0, 0x7

    and-int/2addr p3, v5

    shr-int/lit8 v4, v0, 0x6

    and-int/2addr v4, v5

    shr-int/lit8 v6, v0, 0x5

    and-int/2addr v6, v5

    const/16 v7, 0x12

    new-array v9, v5, [I

    aput p3, v9, v8

    .line 10
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x13

    new-array v9, v5, [I

    aput v4, v9, v8

    .line 11
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x14

    new-array v9, v5, [I

    aput v6, v9, v8

    .line 12
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x41

    if-ne p3, v5, :cond_1

    if-nez v4, :cond_1

    if-nez v6, :cond_1

    new-array p3, v5, [I

    aput v5, p3, v8

    .line 13
    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array p3, v5, [I

    aput v8, p3, v8

    .line 14
    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 p3, 0x15

    new-array v4, v5, [I

    const/16 v6, 0xf

    and-int/2addr v0, v6

    aput v0, v4, v8

    .line 15
    invoke-static {p3, v4}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 16
    invoke-static {p3, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 17
    aget-byte p2, p1, p2

    and-int/lit16 v2, p2, 0xff

    .line 18
    aget-byte p1, p1, v1

    and-int/lit16 v3, p1, 0xff

    :cond_2
    and-int/lit16 p1, v2, 0xff

    const/4 p2, -0x3

    const/4 p3, -0x2

    const/16 v0, 0x1b

    if-eq p1, v5, :cond_4

    if-eq p1, v6, :cond_3

    new-array v1, v5, [I

    aput p1, v1, v8

    .line 19
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    new-array p1, v5, [I

    aput p2, p1, v8

    .line 20
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array p1, v5, [I

    aput p3, p1, v8

    .line 21
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    :goto_1
    and-int/lit16 p1, v3, 0xff

    const/16 v0, 0x1c

    if-eq p1, v5, :cond_6

    if-eq p1, v6, :cond_5

    new-array p2, v5, [I

    aput p1, p2, v8

    .line 22
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array p1, v5, [I

    aput p2, p1, v8

    .line 23
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array p1, v5, [I

    aput p3, p1, v8

    .line 24
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    :goto_2
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
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    const/4 p3, 0x2

    if-lt p1, p3, :cond_1

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p4, 0xe3

    const/4 v0, 0x0

    aput p4, p1, v0

    const/16 p4, 0x85

    const/4 v1, 0x1

    aput p4, p1, v1

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 2
    aget p4, p2, v0

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v1

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

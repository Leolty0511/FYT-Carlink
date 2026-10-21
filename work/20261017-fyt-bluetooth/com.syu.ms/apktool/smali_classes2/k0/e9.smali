.class public Lk0/e9;
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

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->f:I

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 6
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->e:I

    .line 7
    iput v1, v0, Lk0/mt;->g:I

    .line 8
    iput v2, v0, Lk0/mt;->o:I

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte p3, p1, p2

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p3, v5, :cond_2

    const/16 v6, 0x24

    if-eq p3, v6, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/2addr p2, v3

    .line 2
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 4
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 5
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 6
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 7
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 8
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 9
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 10
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 11
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_2
    add-int/lit8 p3, p2, 0x2

    .line 12
    aget-byte p3, p1, p3

    add-int/lit8 v6, p2, 0x3

    .line 13
    aget-byte v6, p1, v6

    add-int/lit8 v7, p2, 0x4

    .line 14
    aget-byte v7, p1, v7

    add-int/2addr p2, v0

    .line 15
    aget-byte p1, p1, p2

    const/16 p2, 0x15

    new-array v8, v5, [I

    and-int/lit8 v9, v6, 0x7

    aput v9, v8, v4

    .line 16
    invoke-static {p2, v8}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 p2, v6, 0x3

    and-int/lit8 p2, p2, 0x7

    if-eq p2, v5, :cond_7

    if-eq p2, v3, :cond_6

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_4

    if-eq p2, v0, :cond_3

    move v2, v4

    move v8, v2

    :goto_1
    move v9, v8

    goto :goto_2

    :cond_3
    move v8, v4

    move v9, v8

    move v2, v5

    goto :goto_2

    :cond_4
    move v8, v4

    move v2, v5

    move v9, v2

    goto :goto_2

    :cond_5
    move v2, v4

    move v8, v2

    move v9, v5

    goto :goto_2

    :cond_6
    move v2, v4

    move v8, v5

    goto :goto_1

    :cond_7
    move v2, v4

    move v9, v2

    move v8, v5

    :goto_2
    const/16 v10, 0x12

    new-array v11, v5, [I

    aput v2, v11, v4

    .line 17
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v10, v5, [I

    aput v8, v10, v4

    .line 18
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v8, v5, [I

    aput v9, v8, v4

    .line 19
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v8, v5, [I

    aput p2, v8, v4

    .line 20
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xd

    new-array v2, v5, [I

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v5

    aput v6, v2, v4

    .line 21
    invoke-static {p2, v2}, Lk0/qt;->y0(I[I)V

    const-string p2, "persist.fyt.reversetemp"

    .line 22
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const/16 v2, 0x1c

    const/16 v6, 0x1b

    const/16 v8, 0xf

    if-eqz p2, :cond_8

    new-array p2, v5, [I

    and-int/lit8 v9, v7, 0xf

    aput v9, p2, v4

    .line 23
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v1, v7, 0x4

    and-int/2addr v1, v8

    aput v1, p2, v4

    .line 24
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array p2, v5, [I

    and-int/lit8 v9, v7, 0xf

    aput v9, p2, v4

    .line 25
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v1, v7, 0x4

    and-int/2addr v1, v8

    aput v1, p2, v4

    .line 26
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 p2, 0xb

    new-array v1, v5, [I

    and-int/lit8 v2, p1, 0x3

    if-ne v2, v3, :cond_9

    move v2, v5

    goto :goto_4

    :cond_9
    move v2, v4

    :goto_4
    aput v2, v1, v4

    .line 27
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array v1, v5, [I

    shr-int/lit8 v2, p1, 0x2

    and-int/2addr v2, v5

    aput v2, v1, v4

    .line 28
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x3e

    new-array v1, v5, [I

    shr-int/lit8 v2, p1, 0x3

    and-int/2addr v2, v5

    aput v2, v1, v4

    .line 29
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v1, p1, 0x4

    and-int/2addr v1, v5

    aput v1, p2, v4

    .line 30
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x10

    new-array v1, v5, [I

    shr-int/2addr p1, v0

    and-int/2addr p1, v5

    aput p1, v1, v4

    .line 31
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    .line 32
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 33
    invoke-static {p3}, Ll0/f0;->h(B)V

    :cond_a
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

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7c

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
    const/4 p1, 0x2

    .line 1
    invoke-static {p2, p1}, Lk0/qt;->l0([II)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x5

    new-array p3, p3, [I

    const/16 p4, 0xe3

    const/4 v0, 0x0

    aput p4, p3, v0

    const/16 p4, 0x71

    const/4 v1, 0x1

    aput p4, p3, v1

    aput p1, p3, p1

    const/4 p1, 0x3

    .line 2
    aget p4, p2, v0

    aput p4, p3, p1

    const/4 p1, 0x4

    aget p2, p2, v1

    aput p2, p3, p1

    invoke-static {p3}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

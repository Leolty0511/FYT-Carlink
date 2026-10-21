.class public Lk0/q2;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/q2;->c:I

    const/16 v1, 0x8

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

    const/4 v2, 0x7

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/q2;->d:[[I

    .line 4
    new-instance v0, Lk0/q2$a;

    invoke-direct {v0, p0}, Lk0/q2$a;-><init>(Lk0/q2;)V

    iput-object v0, p0, Lk0/q2;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/q2$b;

    invoke-direct {v0, p0}, Lk0/q2$b;-><init>(Lk0/q2;)V

    iput-object v0, p0, Lk0/q2;->f:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x10
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x11
        0x43
    .end array-data

    :array_2
    .array-data 4
        0x12
        0x44
    .end array-data

    :array_3
    .array-data 4
        0x13
        0x7
    .end array-data

    :array_4
    .array-data 4
        0x14
        0x8
    .end array-data

    :array_5
    .array-data 4
        0x15
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x16
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x17
        0x1a
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

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lk0/q2;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/q2;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/q2;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/q2;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 11

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p3, v1, :cond_f

    const/16 v2, 0xff

    const/4 v3, 0x0

    if-eq p3, v0, :cond_a

    const/4 v4, 0x3

    if-eq p3, v4, :cond_1

    const/4 v3, 0x4

    if-eq p3, v3, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_10

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 4
    aget-byte p1, p1, p2

    and-int/lit16 p2, p1, 0xc0

    shr-int/lit8 p2, p2, 0x6

    and-int/2addr p2, v2

    .line 5
    invoke-static {p2, v1}, Ll0/e0;->n(II)I

    move-result p2

    invoke-static {p2}, Lu0/d;->R2(I)V

    and-int/lit8 p2, p1, 0xc

    shr-int/2addr p2, v0

    and-int/2addr p2, v2

    .line 6
    invoke-static {p2, v0}, Ll0/e0;->n(II)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    .line 7
    invoke-static {p2, v0}, Ll0/e0;->n(II)I

    move-result p2

    invoke-static {p2}, Lu0/d;->T2(I)V

    and-int/2addr p1, v4

    and-int/2addr p1, v2

    .line 8
    invoke-static {p1, v1}, Ll0/e0;->n(II)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    and-int/lit16 p1, p3, 0xc0

    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v2

    .line 9
    invoke-static {p1, v1}, Ll0/e0;->n(II)I

    move-result p1

    invoke-static {p1}, Lu0/d;->D2(I)V

    and-int/lit8 p1, p3, 0xc

    shr-int/2addr p1, v0

    and-int/2addr p1, v2

    .line 10
    invoke-static {p1, v1}, Ll0/e0;->n(II)I

    move-result p2

    invoke-static {p2}, Lu0/d;->E2(I)V

    .line 11
    invoke-static {p1, v1}, Ll0/e0;->n(II)I

    move-result p1

    invoke-static {p1}, Lu0/d;->F2(I)V

    and-int/lit8 p1, p3, 0x3

    and-int/2addr p1, v2

    .line 12
    invoke-static {p1, v1}, Ll0/e0;->n(II)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_5

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 13
    aget-byte v0, p1, p3

    and-int/2addr v0, v2

    const-string v4, "persist.fyt.reversetemp"

    .line 14
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v0, p2, 0x3

    .line 15
    aget-byte v0, p1, v0

    and-int/2addr v0, v2

    :cond_2
    const/4 v5, -0x1

    const/4 v6, -0x3

    const/4 v7, -0x2

    const/16 v8, 0x1b

    const/16 v9, 0x1e

    if-lez v0, :cond_3

    if-ge v0, v9, :cond_3

    new-array v10, v1, [I

    mul-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0xaa

    aput v0, v10, v3

    .line 16
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    if-eq v0, v9, :cond_4

    new-array v0, v1, [I

    aput v5, v0, v3

    .line 17
    invoke-static {v8, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array v0, v1, [I

    aput v6, v0, v3

    .line 18
    invoke-static {v8, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    new-array v0, v1, [I

    aput v7, v0, v3

    .line 19
    invoke-static {v8, v0}, Lk0/qt;->y0(I[I)V

    .line 20
    :goto_0
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    aget-byte p3, p1, p3

    goto :goto_1

    :cond_6
    add-int/lit8 p3, p2, 0x3

    .line 22
    aget-byte p3, p1, p3

    :goto_1
    and-int/2addr p3, v2

    const/16 v0, 0x1c

    if-lez p3, :cond_7

    if-ge p3, v9, :cond_7

    new-array v4, v1, [I

    mul-int/lit8 p3, p3, 0x5

    add-int/lit16 p3, p3, 0xaa

    aput p3, v4, v3

    .line 23
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_9

    if-eq p3, v9, :cond_8

    new-array p3, v1, [I

    aput v5, p3, v3

    .line 24
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array p3, v1, [I

    aput v6, p3, v3

    .line 25
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    new-array p3, v1, [I

    aput v7, p3, v3

    .line 26
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 p3, 0x15

    new-array v0, v1, [I

    add-int/lit8 v4, p2, 0x4

    .line 27
    aget-byte v4, p1, v4

    and-int/2addr v2, v4

    aput v2, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p2, p2, 0x5

    .line 28
    aget-byte p1, p1, p2

    new-array p2, v1, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v1

    aput p3, p2, v3

    const/16 p3, 0xc

    .line 29
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x41

    new-array p3, v1, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v1

    aput v0, p3, v3

    .line 30
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x10

    new-array p3, v1, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v1

    aput v0, p3, v3

    .line 31
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x14

    new-array p3, v1, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v1

    aput v0, p3, v3

    .line 32
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array p3, v1, [I

    shr-int/lit8 v0, p1, 0x3

    and-int/2addr v0, v1

    aput v0, p3, v3

    .line 33
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xd

    new-array p3, v1, [I

    shr-int/lit8 v0, p1, 0x2

    and-int/2addr v0, v1

    aput v0, p3, v3

    .line 34
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xe

    new-array p3, v1, [I

    shr-int/lit8 v0, p1, 0x1

    and-int/2addr v0, v1

    aput v0, p3, v3

    .line 35
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xb

    new-array p3, v1, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v1

    aput p1, p3, v3

    .line 36
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    .line 37
    :cond_a
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_10

    add-int/2addr p2, v0

    .line 38
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    .line 39
    iput p1, p0, Lk0/q2;->c:I

    move p2, v3

    .line 40
    :goto_3
    iget-object p3, p0, Lk0/q2;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_c

    .line 41
    iget v0, p0, Lk0/q2;->c:I

    aget-object v4, p3, p2

    aget v4, v4, v3

    if-ne v0, v4, :cond_b

    if-eqz v0, :cond_c

    .line 42
    iput p2, p0, Lk0/q2;->b:I

    goto :goto_4

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    if-eqz p1, :cond_d

    .line 43
    array-length p1, p3

    if-ge p2, p1, :cond_10

    .line 44
    aget-object p1, p3, p2

    aget p1, p1, v1

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_5

    .line 45
    :cond_d
    iget p1, p0, Lk0/q2;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_e

    if-eq p1, v2, :cond_e

    .line 46
    aget-object p1, p3, p1

    aget p1, p1, v1

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    .line 47
    :cond_e
    iput v2, p0, Lk0/q2;->b:I

    goto :goto_5

    .line 48
    :cond_f
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_10

    add-int/2addr p2, v0

    .line 49
    aget-byte p1, p1, p2

    invoke-static {p1}, Ll0/f0;->c(B)V

    :cond_10
    :goto_5
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/q2;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/q2;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/q2;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/q2;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    :cond_0
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

    return-void
.end method

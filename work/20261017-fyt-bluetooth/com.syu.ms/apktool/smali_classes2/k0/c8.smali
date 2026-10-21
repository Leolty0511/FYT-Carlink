.class public Lk0/c8;
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
    iput v0, p0, Lk0/c8;->c:I

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

    iput-object v1, p0, Lk0/c8;->d:[[I

    .line 4
    new-instance v0, Lk0/c8$a;

    invoke-direct {v0, p0}, Lk0/c8$a;-><init>(Lk0/c8;)V

    iput-object v0, p0, Lk0/c8;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/c8$b;

    invoke-direct {v0, p0}, Lk0/c8$b;-><init>(Lk0/c8;)V

    iput-object v0, p0, Lk0/c8;->f:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x11
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x14
        0x7
    .end array-data

    :array_4
    .array-data 4
        0x15
        0x8
    .end array-data

    :array_5
    .array-data 4
        0x16
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x31
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
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lk0/c8;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/c8;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/c8;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/c8;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 8

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, 0x10

    if-eq p3, v0, :cond_a

    const/16 v1, 0x29

    const/16 v2, 0xff

    const/4 v3, 0x0

    if-eq p3, v1, :cond_9

    const/16 v1, 0x32

    if-eq p3, v1, :cond_8

    const/16 v1, 0x12

    const/4 v4, 0x1

    if-eq p3, v1, :cond_4

    const/16 v1, 0x13

    if-eq p3, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    add-int/lit8 v5, p2, 0x5

    .line 3
    aget-byte v5, p1, v5

    and-int/2addr v5, v2

    and-int/lit8 v5, v5, 0xf

    const/16 v6, 0x1b

    if-nez p3, :cond_1

    new-array p3, v4, [I

    const/4 v5, -0x2

    aput v5, p3, v3

    .line 4
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    const/16 v7, 0xfe

    if-ne p3, v7, :cond_2

    new-array p3, v4, [I

    const/4 v5, -0x1

    aput v5, p3, v3

    .line 5
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    if-ne p3, v2, :cond_3

    new-array p3, v4, [I

    const/4 v5, -0x3

    aput v5, p3, v3

    .line 6
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v7, v4, [I

    aput p3, v7, v3

    .line 7
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x37

    new-array v6, v4, [I

    aput v5, v6, v3

    .line 8
    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    :goto_0
    add-int/lit8 p3, p2, 0x3

    .line 9
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    const/16 v5, 0xc

    new-array v6, v4, [I

    shr-int/lit8 v7, p3, 0x7

    and-int/2addr v7, v4

    aput v7, v6, v3

    .line 10
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x41

    new-array v6, v4, [I

    shr-int/lit8 v7, p3, 0x6

    and-int/2addr v7, v4

    aput v7, v6, v3

    .line 11
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    new-array v5, v4, [I

    shr-int/lit8 v6, p3, 0x5

    and-int/2addr v6, v4

    aput v6, v5, v3

    .line 12
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v5, v4, [I

    shr-int/lit8 v6, p3, 0x4

    and-int/2addr v6, v4

    aput v6, v5, v3

    .line 13
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    shr-int/lit8 v5, p3, 0x3

    and-int/2addr v5, v4

    aput v5, v0, v3

    .line 14
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xd

    new-array v1, v4, [I

    shr-int/lit8 v5, p3, 0x2

    and-int/2addr v5, v4

    aput v5, v1, v3

    .line 15
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x34

    new-array v1, v4, [I

    shr-int/lit8 v5, p3, 0x1

    and-int/2addr v5, v4

    aput v5, v1, v3

    .line 16
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb

    new-array v1, v4, [I

    shr-int/2addr p3, v3

    and-int/2addr p3, v4

    aput p3, v1, v3

    .line 17
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 18
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    and-int/lit8 p3, p3, 0xf

    const/16 v0, 0x15

    new-array v1, v4, [I

    aput p3, v1, v3

    .line 19
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    .line 20
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_b

    add-int/lit8 p2, p2, 0x7

    .line 21
    aget-byte p1, p1, p2

    invoke-static {p1}, Ll0/f0;->g(B)V

    goto/16 :goto_3

    .line 22
    :cond_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_b

    add-int/lit8 p2, p2, 0x2

    .line 23
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    .line 24
    iput p1, p0, Lk0/c8;->c:I

    move p2, v3

    .line 25
    :goto_1
    iget-object p3, p0, Lk0/c8;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_6

    .line 26
    iget v0, p0, Lk0/c8;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_5

    if-eqz v0, :cond_6

    .line 27
    iput p2, p0, Lk0/c8;->b:I

    goto :goto_2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    .line 28
    array-length p1, p3

    if-ge p2, p1, :cond_b

    .line 29
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 30
    :cond_7
    array-length p1, p3

    if-gt p2, p1, :cond_b

    .line 31
    iget p1, p0, Lk0/c8;->b:I

    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 32
    :cond_8
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_b

    add-int/lit8 p3, p2, 0x2

    .line 33
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 34
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 35
    aget-byte v1, p1, v1

    and-int/2addr p3, v2

    and-int/2addr v0, v2

    invoke-static {v1, p3, v0}, Ll0/e0;->o(III)I

    move-result v1

    invoke-static {v1}, Lu0/d;->R2(I)V

    add-int/lit8 v1, p2, 0x5

    .line 36
    aget-byte v1, p1, v1

    invoke-static {v1, p3, v0}, Ll0/e0;->o(III)I

    move-result v1

    invoke-static {v1}, Lu0/d;->S2(I)V

    add-int/lit8 v1, p2, 0x6

    .line 37
    aget-byte v1, p1, v1

    invoke-static {v1, p3, v0}, Ll0/e0;->o(III)I

    move-result v1

    invoke-static {v1}, Lu0/d;->T2(I)V

    add-int/lit8 p2, p2, 0x7

    .line 38
    aget-byte p1, p1, p2

    invoke-static {p1, p3, v0}, Ll0/e0;->o(III)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto :goto_3

    :cond_9
    add-int/lit8 p3, p2, 0x2

    .line 39
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    const/16 p2, 0x1e40

    const/16 v0, 0x1630

    invoke-static {p3, p1, p2, v3, v0}, Lk0/qt;->m(IIIZI)V

    goto :goto_3

    .line 40
    :cond_a
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_b

    add-int/lit8 p3, p2, 0x2

    .line 41
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x5

    aget-byte p1, p1, p2

    invoke-static {p3, v0, p1}, Ll0/f0;->b(BBB)V

    :cond_b
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/c8;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/c8;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/c8;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/c8;->e:Ljava/lang/Runnable;

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

.class public Lk0/f;
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

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/f;->c:I

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

    iput-object v1, p0, Lk0/f;->d:[[I

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

    return-void
.end method

.method public U2([BII)V
    .locals 8

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/4 v0, -0x4

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p3, v0, :cond_7

    const/4 v0, -0x3

    if-eq p3, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 p3, p2, 0x3

    .line 2
    aget-byte p3, p1, p3

    const/16 v4, 0xc

    new-array v5, v3, [I

    and-int/lit16 v6, p3, 0x80

    if-nez v6, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    aput v6, v5, v2

    .line 3
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x41

    new-array v5, v3, [I

    shr-int/lit8 v6, p3, 0x6

    and-int/2addr v6, v3

    aput v6, v5, v2

    .line 4
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x10

    new-array v5, v3, [I

    shr-int/lit8 v6, p3, 0x5

    and-int/2addr v6, v3

    aput v6, v5, v2

    .line 5
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x14

    new-array v5, v3, [I

    shr-int/lit8 v6, p3, 0x4

    and-int/2addr v6, v3

    aput v6, v5, v2

    .line 6
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x13

    new-array v5, v3, [I

    shr-int/lit8 v6, p3, 0x3

    and-int/2addr v6, v3

    aput v6, v5, v2

    .line 7
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xd

    new-array v5, v3, [I

    shr-int/lit8 v6, p3, 0x2

    and-int/2addr v6, v3

    aput v6, v5, v2

    .line 8
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x34

    new-array v5, v3, [I

    shr-int/lit8 v6, p3, 0x1

    and-int/2addr v6, v3

    aput v6, v5, v2

    .line 9
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xb

    new-array v5, v3, [I

    shr-int/2addr p3, v2

    and-int/2addr p3, v3

    aput p3, v5, v2

    .line 10
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 11
    aget-byte p3, p1, p3

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x7

    and-int/2addr v5, v3

    aput v5, v4, v2

    const/16 v5, 0x37

    .line 12
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    and-int/lit8 p3, p3, 0xf

    const/4 v4, 0x7

    if-le p3, v4, :cond_2

    move p3, v4

    :cond_2
    const/16 v4, 0x15

    new-array v6, v3, [I

    aput p3, v6, v2

    .line 13
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 14
    aget-byte p3, p1, p3

    const/16 v4, 0x25

    new-array v6, v3, [I

    shr-int/lit8 v7, p3, 0x7

    and-int/2addr v7, v3

    aput v7, v6, v2

    .line 15
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    and-int/lit8 p3, p3, 0xf

    add-int/lit8 p2, p2, 0x2

    .line 16
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    .line 17
    sget-object p2, Lk0/nt;->g:[I

    aget p2, p2, v5

    const/16 v4, 0x1b

    if-nez p2, :cond_6

    if-eqz p1, :cond_5

    const/16 p2, 0xfe

    if-eq p1, p2, :cond_4

    if-eq p1, v1, :cond_3

    new-array p2, v3, [I

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p1, p3

    aput p1, p2, v2

    .line 18
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_3
    new-array p1, v3, [I

    aput v0, p1, v2

    .line 19
    invoke-static {v4, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_4
    new-array p1, v3, [I

    const/4 p2, -0x1

    aput p2, p1, v2

    .line 20
    invoke-static {v4, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_5
    new-array p1, v3, [I

    const/4 p2, -0x2

    aput p2, p1, v2

    .line 21
    invoke-static {v4, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_6
    new-array p2, v3, [I

    add-int/lit8 p1, p1, -0x64

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p1, p3

    aput p1, p2, v2

    .line 22
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 23
    aget-byte p3, p1, p3

    const/16 v0, 0x12

    if-eq p3, v0, :cond_8

    goto :goto_3

    .line 24
    :cond_8
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_d

    add-int/lit8 p2, p2, 0x3

    .line 25
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    .line 26
    iput p1, p0, Lk0/f;->c:I

    move p2, v2

    .line 27
    :goto_1
    iget-object p3, p0, Lk0/f;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_a

    .line 28
    iget v0, p0, Lk0/f;->c:I

    aget-object v4, p3, p2

    aget v4, v4, v2

    if-ne v0, v4, :cond_9

    if-eqz v0, :cond_a

    .line 29
    iput p2, p0, Lk0/f;->b:I

    goto :goto_2

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    if-eqz p1, :cond_b

    .line 30
    array-length p1, p3

    if-ge p2, p1, :cond_d

    .line 31
    aget-object p1, p3, p2

    aget p1, p1, v3

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 32
    :cond_b
    iget p1, p0, Lk0/f;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_c

    if-eq p1, v1, :cond_c

    .line 33
    aget-object p1, p3, p1

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 34
    :cond_c
    iput v1, p0, Lk0/f;->b:I

    :cond_d
    :goto_3
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

    const/16 p2, 0x3eb

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Lk0/nt;->c:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 2
    sget p1, Lu0/b;->o:I

    if-nez p1, :cond_2

    .line 3
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lk0/qt;->f()V

    :cond_2
    :goto_0
    return-void
.end method

.class public Lk0/uj;
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
    iput v0, p0, Lk0/uj;->c:I

    const/4 v0, 0x7

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

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/uj;->d:[[I

    return-void

    nop

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
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x4
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 0

    return-void
.end method

.method public U2([BII)V
    .locals 6

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    if-eq v0, v1, :cond_8

    const/16 p3, 0x72

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p3, :cond_4

    const/16 p3, 0x73

    if-eq v0, p3, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 3
    aget-byte v0, p1, v0

    add-int/lit8 v3, p2, 0x4

    .line 4
    aget-byte v3, p1, v3

    add-int/lit8 p2, p2, 0x6

    .line 5
    aget-byte p1, p1, p2

    const/16 p2, 0xa

    new-array v4, v2, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v2

    aput v5, v4, v1

    .line 6
    invoke-static {p2, v4}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array v4, v2, [I

    shr-int/lit8 v5, p3, 0x4

    and-int/lit8 v5, v5, 0x3

    aput v5, v4, v1

    .line 7
    invoke-static {p2, v4}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xd

    new-array v4, v2, [I

    shr-int/lit8 p3, p3, 0x3

    and-int/2addr p3, v2

    aput p3, v4, v1

    .line 8
    invoke-static {p2, v4}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xb

    new-array p3, v2, [I

    shr-int/lit8 v4, v0, 0x6

    and-int/2addr v4, v2

    aput v4, p3, v1

    .line 9
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x10

    new-array p3, v2, [I

    shr-int/lit8 v4, v0, 0x5

    and-int/2addr v4, v2

    aput v4, p3, v1

    .line 10
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x41

    new-array p3, v2, [I

    shr-int/lit8 v0, v0, 0x4

    and-int/2addr v0, v2

    aput v0, p3, v1

    .line 11
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    and-int/lit16 p2, v3, 0xff

    const/4 p3, -0x1

    const/16 v0, 0x1b

    if-nez v3, :cond_1

    new-array p2, v2, [I

    aput p3, p2, v1

    .line 12
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    if-ne v3, v2, :cond_2

    new-array p2, v2, [I

    const/4 p3, -0x2

    aput p3, p2, v1

    .line 13
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    if-ne v3, p3, :cond_3

    new-array p2, v2, [I

    const/4 p3, -0x3

    aput p3, p2, v1

    .line 14
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array p3, v2, [I

    aput p2, p3, v1

    .line 15
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 p2, 0x12

    new-array p3, v2, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v2

    aput v0, p3, v1

    .line 16
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array p3, v2, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v2

    aput v0, p3, v1

    .line 17
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x14

    new-array p3, v2, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v2

    aput v0, p3, v1

    .line 18
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v2, [I

    shr-int/2addr p1, v1

    and-int/lit8 p1, p1, 0xf

    aput p1, p3, v1

    .line 19
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_4
    add-int/lit8 p2, p2, 0x4

    .line 20
    aget-byte p1, p1, p2

    const/16 p2, 0xff

    and-int/2addr p1, p2

    iput p1, p0, Lk0/uj;->c:I

    move p1, v1

    .line 21
    :goto_1
    iget-object p3, p0, Lk0/uj;->d:[[I

    array-length v0, p3

    if-ge p1, v0, :cond_6

    .line 22
    iget v0, p0, Lk0/uj;->c:I

    aget-object v3, p3, p1

    aget v3, v3, v1

    if-ne v0, v3, :cond_5

    if-eqz v0, :cond_6

    .line 23
    iput p1, p0, Lk0/uj;->b:I

    goto :goto_2

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 24
    :cond_6
    :goto_2
    iget v0, p0, Lk0/uj;->c:I

    if-eqz v0, :cond_7

    .line 25
    array-length p2, p3

    if-ge p1, p2, :cond_9

    .line 26
    aget-object p1, p3, p1

    aget p1, p1, v2

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 27
    :cond_7
    iget p1, p0, Lk0/uj;->b:I

    aget-object p1, p3, p1

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    .line 28
    iput p2, p0, Lk0/uj;->b:I

    goto :goto_3

    .line 29
    :cond_8
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_9
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

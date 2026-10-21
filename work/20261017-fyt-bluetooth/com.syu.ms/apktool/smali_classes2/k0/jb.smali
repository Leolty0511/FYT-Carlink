.class public Lk0/jb;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/jb;->d:I

    const/4 v0, 0x5

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

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/jb;->e:[[I

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
        0x8
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_4
    .array-data 4
        0xc
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
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x15
        0x3
    .end array-data
.end method

.method public U2([BII)V
    .locals 6

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    if-eq v0, v1, :cond_7

    const/16 p3, 0x11

    const/16 v1, 0xff

    if-eq v0, p3, :cond_1

    const/16 p3, 0x41

    if-eq v0, p3, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_8

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/h0;->o(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 4
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/h0;->o(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 5
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/h0;->o(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 6
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/h0;->o(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 7
    aget-byte v0, p1, p3

    and-int/2addr v0, v1

    invoke-static {v0}, Ll0/h0;->o(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->D2(I)V

    .line 8
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/h0;->o(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 9
    aget-byte p3, p1, p2

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/h0;->o(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 10
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    invoke-static {p1}, Ll0/h0;->o(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto :goto_3

    .line 11
    :cond_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_8

    add-int/lit8 p3, p2, 0x4

    .line 12
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x5

    .line 13
    aget-byte v0, p1, v0

    and-int/2addr p3, v1

    .line 14
    iput p3, p0, Lk0/jb;->c:I

    const/4 p3, 0x0

    move v2, p3

    .line 15
    :goto_0
    iget-object v3, p0, Lk0/jb;->e:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 16
    iget v4, p0, Lk0/jb;->c:I

    aget-object v5, v3, v2

    aget v5, v5, p3

    if-ne v4, v5, :cond_2

    if-eqz v4, :cond_3

    .line 17
    iput v2, p0, Lk0/jb;->b:I

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    and-int/2addr v0, v1

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 18
    array-length v0, v3

    if-ge v2, v0, :cond_6

    .line 19
    aget-object v0, v3, v2

    aget v0, v0, v4

    invoke-static {v0, p3}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 20
    :cond_4
    iget p3, p0, Lk0/jb;->b:I

    array-length v0, v3

    if-ge p3, v0, :cond_5

    if-eq p3, v1, :cond_5

    .line 21
    aget-object p3, v3, p3

    aget p3, p3, v4

    invoke-static {p3, v4}, Ll0/b0;->l0(II)V

    .line 22
    :cond_5
    iput v1, p0, Lk0/jb;->b:I

    :cond_6
    :goto_2
    add-int/lit8 p3, p2, 0x9

    .line 23
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_3

    .line 24
    :cond_7
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

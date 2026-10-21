.class public Lk0/k1;
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
    iput v0, p0, Lk0/k1;->c:I

    const/16 v1, 0x9

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

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v2, 0x8

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/k1;->d:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x22
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x23
    .end array-data

    :array_5
    .array-data 4
        0x5
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x8
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
    .locals 0

    return-void
.end method

.method public U2([BII)V
    .locals 5

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xff

    if-eq p3, v0, :cond_4

    const/16 v0, 0x30

    if-eq p3, v0, :cond_2

    const/16 v0, 0x22

    if-eq p3, v0, :cond_1

    const/16 v0, 0x23

    if-eq p3, v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_9

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/k1;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 4
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/k1;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 5
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/k1;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/lit8 p2, p2, 0x5

    .line 6
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lk0/k1;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_2

    .line 7
    :cond_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_9

    add-int/lit8 p3, p2, 0x2

    .line 8
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/k1;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 9
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/k1;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 10
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/k1;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p2, p2, 0x5

    .line 11
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lk0/k1;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_9

    add-int/lit8 p2, p2, 0x2

    .line 13
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_3

    .line 14
    invoke-static {v2}, Lk0/qt;->a(I)V

    goto :goto_2

    .line 15
    :cond_3
    invoke-static {v1}, Lk0/qt;->a(I)V

    goto :goto_2

    .line 16
    :cond_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_9

    add-int/lit8 p3, p2, 0x2

    .line 17
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 18
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 19
    iput p2, p0, Lk0/k1;->c:I

    move p2, v1

    .line 20
    :goto_0
    iget-object p3, p0, Lk0/k1;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_6

    .line 21
    iget v0, p0, Lk0/k1;->c:I

    aget-object v4, p3, p2

    aget v4, v4, v1

    if-ne v0, v4, :cond_5

    if-eqz v0, :cond_6

    .line 22
    iput p2, p0, Lk0/k1;->b:I

    goto :goto_1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    and-int/2addr p1, v3

    if-eqz p1, :cond_7

    .line 23
    array-length p1, p3

    if-ge p2, p1, :cond_9

    .line 24
    aget-object p1, p3, p2

    aget p1, p1, v2

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 25
    :cond_7
    iget p1, p0, Lk0/k1;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_8

    if-eq p1, v3, :cond_8

    .line 26
    aget-object p1, p3, p1

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    .line 27
    :cond_8
    iput v3, p0, Lk0/k1;->b:I

    :cond_9
    :goto_2
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

.method public final a3(I)I
    .locals 2

    const/16 v0, 0xf

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    :cond_2
    :goto_0
    return v0
.end method

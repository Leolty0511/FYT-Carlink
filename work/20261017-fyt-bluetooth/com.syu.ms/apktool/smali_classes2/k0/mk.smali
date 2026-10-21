.class public Lk0/mk;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:B


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/mk;->c:I

    const/4 v1, 0x7

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/mk;->d:[[I

    .line 4
    iput-byte v0, p0, Lk0/mk;->e:B

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
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x4
    .end array-data
.end method


# virtual methods
.method public O2([I)V
    .locals 5

    if-eqz p1, :cond_d

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0x44

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 3
    aget v2, p1, v0

    const/16 v3, 0xa

    const/4 v4, 0x7

    if-ne v2, v3, :cond_2

    new-array p1, v4, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 5
    :cond_2
    aget v2, p1, v0

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    new-array p1, v4, [I

    .line 6
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 7
    :cond_3
    aget v2, p1, v0

    if-ne v2, v0, :cond_4

    new-array p1, v4, [I

    .line 8
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 9
    :cond_4
    aget v2, p1, v0

    if-ne v2, v1, :cond_5

    new-array p1, v4, [I

    .line 10
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 11
    :cond_5
    aget v1, p1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    new-array p1, v4, [I

    .line 12
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 13
    :cond_6
    aget v1, p1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    new-array p1, v4, [I

    .line 14
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 15
    :cond_7
    aget v1, p1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    new-array p1, v4, [I

    .line 16
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 17
    :cond_8
    aget v1, p1, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_9

    new-array p1, v4, [I

    .line 18
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 19
    :cond_9
    aget v1, p1, v0

    if-ne v1, v4, :cond_a

    new-array p1, v4, [I

    .line 20
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 21
    :cond_a
    aget v1, p1, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    new-array p1, v4, [I

    .line 22
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 23
    :cond_b
    aget v1, p1, v0

    const/16 v2, 0xb

    if-ne v1, v2, :cond_c

    new-array p1, v4, [I

    .line 24
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 25
    :cond_c
    aget p1, p1, v0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_d

    new-array p1, v4, [I

    .line 26
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_d
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x0
        0x0
        0x10
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x0
        0x0
        0x20
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x20
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x10
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x2
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x1
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x0
        0x20
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x0
        0x10
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x0
        0x2
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x0
        0x1
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x22
        0x22
        0x22
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x11
        0x11
        0x11
    .end array-data
.end method

.method public S2()V
    .locals 2

    .line 1
    invoke-super {p0}, Lk0/lt;->S2()V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    return-void
.end method

.method public U2([BII)V
    .locals 11

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, 0x11

    const/4 v1, 0x5

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p3, v0, :cond_4

    const/16 v0, 0x1a

    const/4 v5, 0x4

    if-eq p3, v0, :cond_2

    const/16 v0, 0x31

    const/16 v1, 0x41

    if-eq p3, v0, :cond_1

    if-eq p3, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    invoke-static {p3}, Ll0/h0;->s(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    invoke-static {p3}, Ll0/h0;->s(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 4
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    invoke-static {p3}, Ll0/h0;->s(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 5
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    invoke-static {p3}, Ll0/h0;->s(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 6
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    invoke-static {p3}, Ll0/h0;->s(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 7
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    invoke-static {p1}, Ll0/h0;->s(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_3

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 8
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 9
    aget-byte v0, p1, v0

    add-int/lit8 v6, p2, 0x4

    .line 10
    aget-byte v6, p1, v6

    add-int/lit8 v7, p2, 0x5

    .line 11
    aget-byte v7, p1, v7

    add-int/lit8 v7, p2, 0x6

    .line 12
    aget-byte v7, p1, v7

    add-int/lit8 v8, p2, 0x7

    .line 13
    aget-byte v8, p1, v8

    add-int/lit8 p2, p2, 0x8

    .line 14
    aget-byte p1, p1, p2

    const/16 p2, 0x35

    new-array v9, v4, [I

    shr-int/lit8 v10, p3, 0x0

    and-int/2addr v10, v4

    aput v10, v9, v3

    .line 15
    invoke-static {p2, v9}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xa

    new-array v9, v4, [I

    shr-int/lit8 p3, p3, 0x6

    and-int/2addr p3, v4

    aput p3, v9, v3

    .line 16
    invoke-static {p2, v9}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array p3, v4, [I

    shr-int/2addr v0, v5

    and-int/2addr v0, v4

    aput v0, p3, v3

    .line 17
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x10

    new-array p3, v4, [I

    shr-int/lit8 v0, v6, 0x5

    and-int/2addr v0, v4

    aput v0, p3, v3

    .line 18
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, v6, 0x4

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 19
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x4d

    new-array p3, v4, [I

    and-int/lit16 v0, v7, 0xff

    aput v0, p3, v3

    .line 20
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v4, [I

    aput v8, p3, v3

    .line 21
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x1b

    new-array p3, v4, [I

    and-int/2addr p1, v2

    aput p1, p3, v3

    .line 22
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_2
    add-int/lit8 p3, p2, 0x3

    .line 23
    aget-byte p3, p1, p3

    const-string v0, "persist.syu.reversefrontdoor"

    .line 24
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_3

    new-array v0, v4, [I

    shr-int/lit8 v6, p3, 0x7

    and-int/2addr v6, v4

    aput v6, v0, v3

    .line 25
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    shr-int/lit8 v6, p3, 0x6

    and-int/2addr v6, v4

    aput v6, v0, v3

    .line 26
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v0, v4, [I

    shr-int/lit8 v6, p3, 0x6

    and-int/2addr v6, v4

    aput v6, v0, v3

    .line 27
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    shr-int/lit8 v6, p3, 0x7

    and-int/2addr v6, v4

    aput v6, v0, v3

    .line 28
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v0, v4, [I

    shr-int/lit8 v6, p3, 0x5

    and-int/2addr v6, v4

    aput v6, v0, v3

    const/4 v6, 0x3

    .line 29
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    shr-int/lit8 v6, p3, 0x4

    and-int/2addr v6, v4

    aput v6, v0, v3

    .line 30
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    shr-int/lit8 v5, p3, 0x3

    and-int/2addr v5, v4

    aput v5, v0, v3

    .line 31
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    shr-int/2addr p3, v2

    and-int/2addr p3, v4

    aput p3, v0, v3

    .line 32
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x6

    .line 33
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_3

    :cond_4
    add-int/lit8 p3, p2, 0x4

    .line 34
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 35
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 36
    iput p2, p0, Lk0/mk;->c:I

    move p2, v3

    .line 37
    :goto_1
    iget-object p3, p0, Lk0/mk;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_6

    .line 38
    iget v0, p0, Lk0/mk;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_5

    if-eqz v0, :cond_6

    .line 39
    iput p2, p0, Lk0/mk;->b:I

    goto :goto_2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    and-int/2addr p1, v2

    if-eqz p1, :cond_7

    .line 40
    array-length p1, p3

    if-ge p2, p1, :cond_9

    .line 41
    iget-byte p1, p0, Lk0/mk;->e:B

    if-nez p1, :cond_9

    add-int/2addr p1, v4

    int-to-byte p1, p1

    .line 42
    iput-byte p1, p0, Lk0/mk;->e:B

    .line 43
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 44
    :cond_7
    iget p1, p0, Lk0/mk;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_8

    if-eq p1, v2, :cond_8

    .line 45
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 46
    iput-byte v3, p0, Lk0/mk;->e:B

    .line 47
    :cond_8
    iput v2, p0, Lk0/mk;->b:I

    :cond_9
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 0

    .line 1
    invoke-super {p0}, Lk0/lt;->W2()V

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p4, 0xe3

    const/4 v0, 0x0

    aput p4, p1, v0

    const/4 p4, 0x2

    aput p4, p1, p3

    const/16 v1, 0x3d

    aput v1, p1, p4

    const/4 p4, 0x3

    .line 1
    aget v0, p2, v0

    aput v0, p1, p4

    const/4 p4, 0x4

    aget p2, p2, p3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

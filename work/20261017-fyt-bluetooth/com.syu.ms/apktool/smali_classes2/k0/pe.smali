.class public Lk0/pe;
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
    iput v0, p0, Lk0/pe;->c:I

    const/16 v1, 0xb

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

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v2, 0xa

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/pe;->d:[[I

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
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x10
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x43
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x44
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1d
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x1
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

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 9

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, -0x60

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/16 v3, 0xff

    if-eq p3, v0, :cond_c

    const/16 v0, -0x30

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq p3, v0, :cond_a

    const/16 v0, 0x20

    if-eq p3, v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_e

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    add-int/2addr p2, v6

    .line 4
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 5
    iput p2, p0, Lk0/pe;->c:I

    move p2, v7

    .line 6
    :goto_0
    iget-object p3, p0, Lk0/pe;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_2

    .line 7
    iget v0, p0, Lk0/pe;->c:I

    aget-object v2, p3, p2

    aget v2, v2, v7

    if-ne v0, v2, :cond_1

    if-eqz v0, :cond_2

    .line 8
    iput p2, p0, Lk0/pe;->b:I

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    iget v0, p0, Lk0/pe;->c:I

    if-eq v0, v4, :cond_8

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    and-int/2addr p1, v3

    if-eqz p1, :cond_3

    .line 10
    array-length p1, p3

    if-ge p2, p1, :cond_e

    .line 11
    aget-object p1, p3, p2

    aget p1, p1, v8

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_3

    :cond_3
    if-nez p1, :cond_e

    .line 12
    iget p1, p0, Lk0/pe;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_4

    if-eq p1, v3, :cond_4

    .line 13
    aget-object p1, p3, p1

    aget p1, p1, v8

    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    .line 14
    :cond_4
    iput v3, p0, Lk0/pe;->b:I

    goto/16 :goto_3

    :cond_5
    and-int/2addr p1, v3

    if-ne p1, v8, :cond_e

    .line 15
    sget p1, Lh0/c;->E:I

    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_7

    const/16 p1, 0xc

    .line 16
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 17
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_3

    :cond_6
    const/16 p1, 0x12

    .line 18
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 19
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_3

    :cond_7
    const/16 p1, 0x1a

    .line 20
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 21
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_3

    :cond_8
    and-int/2addr p1, v3

    if-ne p1, v8, :cond_e

    .line 22
    sget p1, Lu0/b;->D:I

    const/16 p2, 0x8

    if-eq p1, p2, :cond_9

    if-eq p1, v1, :cond_9

    const/16 p1, 0xd

    .line 23
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 24
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_3

    :cond_9
    const/16 p1, 0x10

    .line 25
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 26
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_a
    add-int/2addr p2, v2

    .line 27
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const-string p2, "persist.syu.reversefrontdoor"

    .line 28
    invoke-static {p2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_b

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x0

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 29
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 30
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_b
    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 31
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x0

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 32
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 33
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 34
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/2addr p1, v5

    and-int/2addr p1, v8

    aput p1, p2, v7

    .line 35
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    .line 36
    :cond_c
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_e

    add-int/lit8 p3, p2, 0x3

    .line 37
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/2addr p2, v2

    .line 38
    aget-byte p1, p1, p2

    and-int/lit8 p2, p3, 0x7f

    if-nez p1, :cond_d

    mul-int/2addr p2, v1

    add-int/lit16 p2, p2, 0x3e8

    .line 39
    invoke-static {p2}, Lu0/d;->A3(I)V

    goto :goto_3

    :cond_d
    mul-int/2addr p2, v1

    rsub-int p1, p2, 0x3e8

    .line 40
    invoke-static {p1}, Lu0/d;->A3(I)V

    :cond_e
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

    const/16 p3, 0x9

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

.class public Lk0/g5;
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
    iput v0, p0, Lk0/g5;->c:I

    const/4 v1, 0x7

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

    const/4 v2, 0x6

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/g5;->d:[[I

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
        0x9
        0x12
    .end array-data

    :array_5
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0xb
        0xc
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
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v2, :cond_16

    const/4 v3, 0x2

    const/16 v4, 0xa

    if-eq p3, v3, :cond_4

    if-eq p3, v4, :cond_0

    goto/16 :goto_b

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/lit8 p3, p3, 0xf

    const/16 v0, 0x62

    new-array v3, v2, [I

    if-le p3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, p3

    :goto_0
    aput v4, v3, v1

    .line 3
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v2, [I

    add-int/lit8 p2, p2, 0x3

    .line 4
    aget-byte v3, p1, p2

    and-int/2addr v3, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    aput v3, v0, v1

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    .line 5
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1b

    .line 6
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 7
    invoke-static {v2}, Lk0/qt;->b(I)V

    goto/16 :goto_b

    .line 8
    :cond_3
    invoke-static {v1}, Lk0/qt;->b(I)V

    goto/16 :goto_b

    :cond_4
    add-int/lit8 p3, p2, 0x2

    .line 9
    aget-byte p3, p1, p3

    new-array v5, v2, [I

    shr-int/lit8 v6, p3, 0x7

    and-int/2addr v6, v2

    aput v6, v5, v1

    .line 10
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xb

    new-array v6, v2, [I

    shr-int/lit8 v7, p3, 0x6

    and-int/2addr v7, v2

    aput v7, v6, v1

    .line 11
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    new-array v5, v2, [I

    and-int/lit8 v6, p3, 0x20

    if-nez v6, :cond_5

    move v6, v1

    goto :goto_2

    :cond_5
    move v6, v2

    :goto_2
    aput v6, v5, v1

    const/16 v6, 0xc

    .line 12
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xd

    new-array v7, v2, [I

    shr-int/lit8 v8, p3, 0x3

    and-int/2addr v8, v2

    aput v8, v7, v1

    .line 13
    invoke-static {v5, v7}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x41

    new-array v7, v2, [I

    shr-int/2addr p3, v2

    and-int/2addr p3, v2

    aput p3, v7, v1

    .line 14
    invoke-static {v5, v7}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 15
    aget-byte p3, p1, p3

    shr-int/lit8 v5, p3, 0x4

    and-int/lit8 v5, v5, 0xf

    if-eq v5, v3, :cond_b

    const/4 v3, 0x4

    if-eq v5, v3, :cond_a

    const/4 v3, 0x6

    if-eq v5, v3, :cond_9

    const/16 v3, 0x8

    if-eq v5, v3, :cond_8

    if-eq v5, v4, :cond_7

    if-eq v5, v6, :cond_6

    move v3, v1

    move v5, v3

    :goto_3
    move v6, v5

    goto :goto_4

    :cond_6
    move v6, v1

    move v3, v2

    move v5, v3

    goto :goto_4

    :cond_7
    move v5, v1

    move v3, v2

    move v6, v3

    goto :goto_4

    :cond_8
    move v5, v1

    move v6, v5

    move v3, v2

    goto :goto_4

    :cond_9
    move v3, v1

    move v5, v2

    goto :goto_3

    :cond_a
    move v3, v1

    move v6, v3

    move v5, v2

    goto :goto_4

    :cond_b
    move v3, v1

    move v5, v3

    move v6, v2

    :goto_4
    const/16 v7, 0x13

    new-array v8, v2, [I

    aput v3, v8, v1

    .line 16
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x12

    new-array v7, v2, [I

    aput v5, v7, v1

    .line 17
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v5, v2, [I

    aput v6, v5, v1

    .line 18
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x15

    new-array v5, v2, [I

    and-int/lit8 p3, p3, 0x1f

    aput p3, v5, v1

    .line 19
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 20
    aget-byte v3, p1, p3

    add-int/lit8 v5, p2, 0x5

    .line 21
    aget-byte v6, p1, v5

    const-string v7, "persist.fyt.reversetemp"

    .line 22
    invoke-static {v7, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 23
    aget-byte v3, p1, v5

    .line 24
    aget-byte v6, p1, p3

    :cond_c
    const/4 p3, -0x2

    const/4 v5, -0x3

    const/16 v7, 0x7f

    const/16 v8, 0x1b

    const/4 v9, -0x1

    const/16 v10, 0x20

    if-eq v3, v9, :cond_10

    if-eqz v3, :cond_f

    if-eq v3, v7, :cond_e

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x11

    new-array v11, v2, [I

    if-le v3, v10, :cond_d

    move v3, v10

    :cond_d
    aput v3, v11, v1

    .line 25
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_e
    new-array v3, v2, [I

    aput v9, v3, v1

    .line 26
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_f
    new-array v3, v2, [I

    aput p3, v3, v1

    .line 27
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_10
    new-array v3, v2, [I

    aput v5, v3, v1

    .line 28
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 v3, 0x1c

    if-eq v6, v9, :cond_14

    if-eqz v6, :cond_13

    if-eq v6, v7, :cond_12

    and-int/lit8 p3, v6, 0xf

    add-int/lit8 p3, p3, 0x11

    new-array v2, v2, [I

    if-le p3, v10, :cond_11

    goto :goto_6

    :cond_11
    move v10, p3

    :goto_6
    aput v10, v2, v1

    .line 29
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_12
    new-array p3, v2, [I

    aput v9, p3, v1

    .line 30
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_13
    new-array v2, v2, [I

    aput p3, v2, v1

    .line 31
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_14
    new-array p3, v2, [I

    aput v5, p3, v1

    .line 32
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    .line 33
    :goto_7
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1b

    add-int/lit8 p2, p2, 0x7

    .line 34
    aget-byte p1, p1, p2

    and-int/2addr p1, v0

    and-int/lit16 p2, p1, 0x80

    if-eqz p2, :cond_15

    and-int/2addr p1, v7

    mul-int/2addr p1, v4

    rsub-int p1, p1, 0x3e8

    goto :goto_8

    :cond_15
    mul-int/2addr p1, v4

    add-int/lit16 p1, p1, 0x3e8

    .line 35
    :goto_8
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto :goto_b

    .line 36
    :cond_16
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1b

    add-int/lit8 p3, p2, 0x2

    .line 37
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 38
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 39
    iput p2, p0, Lk0/g5;->c:I

    move p2, v1

    .line 40
    :goto_9
    iget-object p3, p0, Lk0/g5;->d:[[I

    array-length v3, p3

    if-ge p2, v3, :cond_18

    .line 41
    iget v3, p0, Lk0/g5;->c:I

    aget-object v4, p3, p2

    aget v4, v4, v1

    if-ne v3, v4, :cond_17

    if-eqz v3, :cond_18

    .line 42
    iput p2, p0, Lk0/g5;->b:I

    goto :goto_a

    :cond_17
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_18
    :goto_a
    and-int/2addr p1, v0

    if-eqz p1, :cond_19

    .line 43
    array-length p1, p3

    if-ge p2, p1, :cond_1b

    .line 44
    aget-object p1, p3, p2

    aget p1, p1, v2

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto :goto_b

    .line 45
    :cond_19
    iget p1, p0, Lk0/g5;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_1a

    if-eq p1, v0, :cond_1a

    .line 46
    aget-object p1, p3, p1

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    .line 47
    :cond_1a
    iput v0, p0, Lk0/g5;->b:I

    :cond_1b
    :goto_b
    return-void
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x64

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

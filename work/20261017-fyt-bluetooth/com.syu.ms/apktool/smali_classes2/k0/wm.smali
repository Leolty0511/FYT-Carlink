.class public Lk0/wm;
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
    iput v0, p0, Lk0/wm;->c:I

    const/16 v1, 0x19

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

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v3, 0xb

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v3, 0xc

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v3, 0xd

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v3, 0xe

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v3, 0xf

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v3, 0x10

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v3, 0x11

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v3, 0x12

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v3, 0x13

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v3, 0x14

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_15

    const/16 v3, 0x15

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_16

    const/16 v3, 0x16

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_17

    const/16 v3, 0x17

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_18

    const/16 v2, 0x18

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/wm;->d:[[I

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
        0x1d
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x41
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x12
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x13
        0x20
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x21
    .end array-data

    :array_b
    .array-data 4
        0x15
        0xc
    .end array-data

    :array_c
    .array-data 4
        0x16
        0x40
    .end array-data

    :array_d
    .array-data 4
        0x17
        0x36
    .end array-data

    :array_e
    .array-data 4
        0x18
        0x4e
    .end array-data

    :array_f
    .array-data 4
        0x19
        0x37
    .end array-data

    :array_10
    .array-data 4
        0x20
        0x7
    .end array-data

    :array_11
    .array-data 4
        0x21
        0x8
    .end array-data

    :array_12
    .array-data 4
        0x22
        0x19
    .end array-data

    :array_13
    .array-data 4
        0x23
        0x9
    .end array-data

    :array_14
    .array-data 4
        0x24
        0x12
    .end array-data

    :array_15
    .array-data 4
        0x25
        0x18
    .end array-data

    :array_16
    .array-data 4
        0x26
        0x5
    .end array-data

    :array_17
    .array-data 4
        0x27
        0x12
    .end array-data

    :array_18
    .array-data 4
        0x28
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v1, v0, Lk0/mt;->j:I

    .line 8
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 9

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x21

    const/16 v1, 0x20

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p3, v1, :cond_d

    const/16 v1, 0xb

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-eq p3, v0, :cond_2

    const/16 v0, 0x7d

    if-eq p3, v0, :cond_0

    goto/16 :goto_7

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-eq p3, v5, :cond_1

    goto/16 :goto_7

    :cond_1
    add-int/2addr p2, v2

    .line 3
    aget-byte p3, p1, p2

    shr-int/2addr p3, v2

    and-int/2addr p3, v5

    aget-byte v0, p1, p2

    shr-int/2addr v0, v6

    and-int/2addr v0, v5

    invoke-static {p3, v0, v4}, Ll0/c0;->a(III)V

    .line 4
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v2, v7, [I

    aput v1, v2, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v2, v5

    const/4 p1, 0x0

    invoke-static {p3, v0, v2, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 5
    aget-byte v8, p1, v0

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v5

    aput v8, p3, v4

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v1, v5, [I

    .line 6
    aget-byte v8, p1, v0

    shr-int/2addr v8, v6

    and-int/2addr v8, v2

    aput v8, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v1, v5, [I

    .line 7
    aget-byte v8, p1, v0

    shr-int/2addr v8, v2

    and-int/2addr v8, v5

    aput v8, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x41

    new-array v1, v5, [I

    .line 8
    aget-byte v8, p1, v0

    shr-int/2addr v8, v4

    and-int/2addr v8, v5

    aput v8, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v1, v5, [I

    .line 9
    aget-byte v0, p1, v0

    shr-int/2addr v0, v5

    and-int/2addr v0, v5

    aput v0, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 10
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-eq p3, v5, :cond_7

    if-eq p3, v7, :cond_6

    if-eq p3, v2, :cond_5

    if-eq p3, v6, :cond_4

    const/4 v0, 0x5

    if-eq p3, v0, :cond_3

    move p3, v4

    move v0, p3

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v4

    move v1, v0

    move p3, v5

    goto :goto_1

    :cond_4
    move v0, v4

    move p3, v5

    move v1, p3

    goto :goto_1

    :cond_5
    move p3, v4

    move v0, p3

    move v1, v5

    goto :goto_1

    :cond_6
    move p3, v4

    move v0, v5

    goto :goto_0

    :cond_7
    move p3, v4

    move v1, p3

    move v0, v5

    :goto_1
    const/16 v2, 0x12

    new-array v6, v5, [I

    aput p3, v6, v4

    .line 11
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v2, v5, [I

    aput v0, v2, v4

    .line 12
    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v5, [I

    aput v1, v0, v4

    .line 13
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x4

    .line 14
    aget-byte v1, p1, v1

    shr-int/2addr v1, v4

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 15
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 p2, p2, 0x6

    .line 16
    aget-byte v1, p1, p2

    and-int/2addr v1, v3

    const-string v2, "persist.fyt.reversetemp"

    .line 17
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 18
    aget-byte p2, p1, p2

    and-int/lit16 v0, p2, 0xff

    .line 19
    aget-byte p1, p1, p3

    and-int/lit16 v1, p1, 0xff

    :cond_8
    const/4 p1, -0x3

    const/4 p2, -0x2

    const/16 p3, 0x1e

    const/16 v2, 0x1b

    if-nez v0, :cond_9

    new-array v0, v5, [I

    aput p2, v0, v4

    .line 20
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    if-ne v0, p3, :cond_a

    new-array v0, v5, [I

    aput p1, v0, v4

    .line 21
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    new-array v3, v5, [I

    aput v0, v3, v4

    .line 22
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v0, 0x1c

    if-nez v1, :cond_b

    new-array p1, v5, [I

    aput p2, p1, v4

    .line 23
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_b
    if-ne v1, p3, :cond_c

    new-array p2, v5, [I

    aput p1, p2, v4

    .line 24
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_c
    new-array p1, v5, [I

    aput v1, p1, v4

    .line 25
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_d
    add-int/lit8 p3, p2, 0x2

    .line 26
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 27
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 28
    iput p2, p0, Lk0/wm;->c:I

    move p2, v4

    .line 29
    :goto_3
    iget-object p3, p0, Lk0/wm;->d:[[I

    array-length v2, p3

    if-ge p2, v2, :cond_f

    .line 30
    iget v2, p0, Lk0/wm;->c:I

    aget-object v6, p3, p2

    aget v6, v6, v4

    if-ne v2, v6, :cond_e

    if-eqz v2, :cond_f

    .line 31
    iput p2, p0, Lk0/wm;->b:I

    goto :goto_4

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 32
    :cond_f
    :goto_4
    iget v2, p0, Lk0/wm;->c:I

    if-eq v2, v1, :cond_15

    if-eq v2, v0, :cond_13

    const/16 v0, 0x27

    if-eq v2, v0, :cond_12

    and-int/2addr p1, v3

    if-ne p1, v5, :cond_10

    .line 33
    array-length p1, p3

    if-ge p2, p1, :cond_17

    .line 34
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_10
    if-nez p1, :cond_17

    .line 35
    iget p1, p0, Lk0/wm;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_11

    if-eq p1, v3, :cond_11

    .line 36
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 37
    :cond_11
    iput v3, p0, Lk0/wm;->b:I

    goto :goto_7

    :cond_12
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_17

    const-string p1, "com.syu.carlink"

    .line 38
    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_17

    .line 39
    invoke-static {p1}, Lo1/u;->g(Ljava/lang/String;)I

    goto :goto_7

    :cond_13
    move p2, v4

    :goto_5
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x8

    if-ge p2, p3, :cond_14

    .line 40
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 41
    :cond_14
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_15
    move p2, v4

    :goto_6
    and-int/lit16 p3, p1, 0xff

    const/4 v0, 0x7

    if-ge p2, p3, :cond_16

    .line 42
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 43
    :cond_16
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    :cond_17
    :goto_7
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

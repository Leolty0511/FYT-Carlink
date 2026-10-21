.class public Lk0/jg;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:[[I


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/jg;->e:I

    const/4 v0, 0x5

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v7, 0x4

    aput-object v3, v1, v7

    iput-object v1, p0, Lk0/jg;->f:[[I

    const/16 v1, 0x14

    new-array v1, v1, [[I

    new-array v3, v2, [I

    .line 4
    fill-array-data v3, :array_5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v3, 0xb

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v3, 0xc

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v3, 0xd

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v3, 0xe

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v3, 0xf

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_15

    const/16 v3, 0x10

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_16

    const/16 v3, 0x11

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_17

    const/16 v3, 0x12

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_18

    const/16 v2, 0x13

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/jg;->g:[[I

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
        0x12
        0x43
    .end array-data

    :array_3
    .array-data 4
        0x13
        0x44
    .end array-data

    :array_4
    .array-data 4
        0x15
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_6
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x4
        0xc
    .end array-data

    :array_9
    .array-data 4
        0x5
        0xb
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x16
    .end array-data

    :array_b
    .array-data 4
        0x7
        0x18
    .end array-data

    :array_c
    .array-data 4
        0x8
        0x36
    .end array-data

    :array_d
    .array-data 4
        0x9
        0x37
    .end array-data

    :array_e
    .array-data 4
        0xa
        0x40
    .end array-data

    :array_f
    .array-data 4
        0xb
        0x1
    .end array-data

    :array_10
    .array-data 4
        0xc
        0x3
    .end array-data

    :array_11
    .array-data 4
        0xd
        0x4
    .end array-data

    :array_12
    .array-data 4
        0xe
        0x41
    .end array-data

    :array_13
    .array-data 4
        0xf
        0x42
    .end array-data

    :array_14
    .array-data 4
        0x10
        0x43
    .end array-data

    :array_15
    .array-data 4
        0x11
        0x44
    .end array-data

    :array_16
    .array-data 4
        0x12
        0x43
    .end array-data

    :array_17
    .array-data 4
        0x13
        0x44
    .end array-data

    :array_18
    .array-data 4
        0x14
        0x5
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 7

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, 0x3

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_a

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x71

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 4
    aget-byte v0, p1, v0

    add-int/lit8 v2, p2, 0x4

    .line 5
    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x5

    .line 6
    aget-byte p1, p1, p2

    const/16 p2, 0xb

    new-array v5, v4, [I

    shr-int/lit8 v6, p3, 0x6

    and-int/2addr v6, v4

    aput v6, v5, v3

    .line 7
    invoke-static {p2, v5}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array v5, v4, [I

    shr-int/lit8 v6, p3, 0x2

    and-int/2addr v1, v6

    aput v1, v5, v3

    .line 8
    invoke-static {p2, v5}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x10

    new-array v1, v4, [I

    shr-int/lit8 v5, p3, 0x1

    and-int/2addr v5, v4

    aput v5, v1, v3

    .line 9
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x35

    new-array v1, v4, [I

    shr-int/2addr p3, v3

    and-int/2addr p3, v4

    aput p3, v1, v3

    .line 10
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x41

    new-array p3, v4, [I

    shr-int/lit8 v1, v0, 0x5

    and-int/2addr v1, v4

    aput v1, p3, v3

    .line 11
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v4, [I

    and-int/lit8 v0, v0, 0xf

    aput v0, p3, v3

    .line 12
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x12

    new-array p3, v4, [I

    shr-int/lit8 v0, v2, 0x6

    and-int/2addr v0, v4

    aput v0, p3, v3

    .line 13
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array p3, v4, [I

    shr-int/lit8 v0, v2, 0x4

    and-int/2addr v0, v4

    aput v0, p3, v3

    .line 14
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x14

    new-array p3, v4, [I

    shr-int/lit8 v0, v2, 0x5

    and-int/2addr v0, v4

    aput v0, p3, v3

    .line 15
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    and-int/lit16 p2, p1, 0xff

    const/16 p3, 0x1b

    if-eq p1, v4, :cond_4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x1d

    if-ne p1, v0, :cond_3

    new-array p1, v4, [I

    const/4 p2, -0x3

    aput p2, p1, v3

    .line 16
    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_3
    new-array p1, v4, [I

    aput p2, p1, v3

    .line 17
    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_4
    :goto_0
    new-array p1, v4, [I

    const/4 p2, -0x2

    aput p2, p1, v3

    .line 18
    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_5
    add-int/lit8 p3, p2, 0x2

    .line 19
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 20
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 21
    iput p2, p0, Lk0/jg;->d:I

    move p2, v3

    .line 22
    :goto_1
    iget-object p3, p0, Lk0/jg;->g:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_7

    .line 23
    iget v0, p0, Lk0/jg;->d:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_6

    if-eqz v0, :cond_7

    .line 24
    iput p2, p0, Lk0/jg;->e:I

    goto :goto_2

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    and-int/2addr p1, v2

    if-eqz p1, :cond_8

    .line 25
    array-length p1, p3

    if-ge p2, p1, :cond_f

    .line 26
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_5

    .line 27
    :cond_8
    iget p1, p0, Lk0/jg;->e:I

    array-length p2, p3

    if-ge p1, p2, :cond_9

    if-eq p1, v2, :cond_9

    .line 28
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 29
    :cond_9
    iput v2, p0, Lk0/jg;->e:I

    goto :goto_5

    :cond_a
    add-int/lit8 p3, p2, 0x2

    .line 30
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 31
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 32
    iput p2, p0, Lk0/jg;->c:I

    move p2, v3

    .line 33
    :goto_3
    iget-object p3, p0, Lk0/jg;->f:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_c

    .line 34
    iget v0, p0, Lk0/jg;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_b

    if-eqz v0, :cond_c

    .line 35
    iput p2, p0, Lk0/jg;->b:I

    goto :goto_4

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    and-int/2addr p1, v2

    if-eqz p1, :cond_d

    .line 36
    array-length p1, p3

    if-ge p2, p1, :cond_f

    .line 37
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_5

    .line 38
    :cond_d
    iget p1, p0, Lk0/jg;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_e

    if-eq p1, v2, :cond_e

    .line 39
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 40
    :cond_e
    iput v2, p0, Lk0/jg;->b:I

    :cond_f
    :goto_5
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

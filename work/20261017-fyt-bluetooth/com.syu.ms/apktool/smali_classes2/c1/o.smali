.class public Lc1/o;
.super Lc1/p;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lc1/p;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lc1/o;->b:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc1/o;->c:I

    .line 4
    iput v0, p0, Lc1/o;->d:I

    .line 5
    iput v0, p0, Lc1/o;->e:I

    .line 6
    iput v0, p0, Lc1/o;->g:I

    const/16 v1, 0x19

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 7
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

    iput-object v1, p0, Lc1/o;->h:[[I

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
        0x51
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x50
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
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
        0x5
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x15
    .end array-data

    :array_a
    .array-data 4
        0xb
        0xd
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x12
    .end array-data

    :array_c
    .array-data 4
        0xd
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0xe
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x10
        0xb
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x4f
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x6
    .end array-data

    :array_13
    .array-data 4
        0x14
        0x52
    .end array-data

    :array_14
    .array-data 4
        0x15
        0x24
    .end array-data

    :array_15
    .array-data 4
        0x16
        0x19
    .end array-data

    :array_16
    .array-data 4
        0x17
        0x26
    .end array-data

    :array_17
    .array-data 4
        0x18
        0x37
    .end array-data

    :array_18
    .array-data 4
        0x19
        -0x1
    .end array-data
.end method


# virtual methods
.method public L2()V
    .locals 0

    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 2

    .line 1
    sget-object v0, Lz/a;->p:Lo1/f0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo1/f0;->e(Lo1/q;)V

    return-void
.end method

.method public O2([BII)V
    .locals 3

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x20

    if-eq p3, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 3
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 4
    iput p2, p0, Lc1/o;->g:I

    const/4 p2, 0x0

    move p3, p2

    .line 5
    :goto_0
    iget-object v0, p0, Lc1/o;->h:[[I

    array-length v1, v0

    if-ge p3, v1, :cond_2

    .line 6
    iget v1, p0, Lc1/o;->g:I

    aget-object v2, v0, p3

    aget v2, v2, p2

    if-ne v1, v2, :cond_1

    if-eqz v1, :cond_2

    .line 7
    iput p3, p0, Lc1/o;->f:I

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 8
    array-length p1, v0

    if-ge p3, p1, :cond_4

    .line 9
    aget-object p1, v0, p3

    aget p1, p1, v1

    invoke-static {p1, p2}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 10
    :cond_3
    array-length p1, v0

    if-gt p3, p1, :cond_4

    .line 11
    iget p1, p0, Lc1/o;->f:I

    aget-object p1, v0, p1

    aget p1, p1, v1

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    :cond_4
    :goto_2
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    const/4 p3, 0x1

    new-array p3, p3, [I

    .line 1
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, p2

    const/4 v1, 0x0

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b([B)V
    .locals 6

    if-eqz p1, :cond_d

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget v0, p0, Lc1/o;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lc1/o;->c:I

    .line 4
    iput v2, p0, Lc1/o;->d:I

    .line 5
    iput v2, p0, Lc1/o;->e:I

    .line 6
    :cond_1
    iget-object v0, p0, Lc1/o;->b:[B

    iget v1, p0, Lc1/o;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lc1/o;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lc1/o;->c:I

    .line 8
    iget p1, p0, Lc1/o;->e:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lc1/o;->b:[B

    aget-byte p1, p1, v3

    move v0, v1

    .line 10
    :goto_0
    iget v4, p0, Lc1/o;->e:I

    if-ge v0, v4, :cond_3

    .line 11
    iget-object v4, p0, Lc1/o;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 12
    iget-object v0, p0, Lc1/o;->b:[B

    aget-byte v5, v0, v4

    if-ne p1, v5, :cond_4

    sub-int/2addr v4, v3

    .line 13
    invoke-virtual {p0, v0, v3, v4}, Lc1/o;->O2([BII)V

    .line 14
    iget p1, p0, Lc1/o;->e:I

    add-int/2addr p1, v3

    iput p1, p0, Lc1/o;->d:I

    goto :goto_1

    .line 15
    :cond_4
    iput v3, p0, Lc1/o;->d:I

    .line 16
    :goto_1
    iput v2, p0, Lc1/o;->e:I

    .line 17
    :cond_5
    iget p1, p0, Lc1/o;->c:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lc1/o;->d:I

    if-ge v0, p1, :cond_a

    .line 18
    iget-object v1, p0, Lc1/o;->b:[B

    aget-byte v4, v1, v0

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_9

    add-int/lit8 v4, v0, 0x2

    .line 19
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lc1/o;->e:I

    add-int/lit8 v5, v0, 0x3

    add-int/2addr v4, v5

    .line 20
    iput v4, p0, Lc1/o;->e:I

    .line 21
    iget v5, p0, Lc1/o;->c:I

    if-lt v4, v5, :cond_6

    sub-int/2addr v4, v0

    .line 22
    iput v4, p0, Lc1/o;->e:I

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v0, 0x1

    .line 23
    aget-byte v1, v1, v4

    add-int/lit8 v0, v0, 0x2

    .line 24
    :goto_3
    iget v4, p0, Lc1/o;->e:I

    if-ge v0, v4, :cond_7

    .line 25
    iget-object v4, p0, Lc1/o;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    xor-int/lit16 v0, v1, 0xff

    int-to-byte v0, v0

    .line 26
    iget-object v1, p0, Lc1/o;->b:[B

    aget-byte v5, v1, v4

    if-ne v0, v5, :cond_8

    .line 27
    iget v0, p0, Lc1/o;->d:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v5, v4}, Lc1/o;->O2([BII)V

    .line 28
    iget v0, p0, Lc1/o;->e:I

    iput v0, p0, Lc1/o;->d:I

    goto :goto_4

    .line 29
    :cond_8
    iget v0, p0, Lc1/o;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lc1/o;->d:I

    .line 30
    :goto_4
    iput v2, p0, Lc1/o;->e:I

    .line 31
    :cond_9
    iget v0, p0, Lc1/o;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lc1/o;->d:I

    goto :goto_2

    :cond_a
    :goto_5
    if-eqz v0, :cond_c

    .line 32
    iget p1, p0, Lc1/o;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lc1/o;->c:I

    if-eqz p1, :cond_b

    .line 33
    iget-object v1, p0, Lc1/o;->b:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    :cond_b
    iput v2, p0, Lc1/o;->d:I

    :cond_c
    return-void

    :cond_d
    :goto_6
    const-wide/16 v0, 0x64

    .line 35
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

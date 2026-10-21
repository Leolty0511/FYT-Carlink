.class public Ll0/e;
.super Ll0/a;
.source "SourceFile"


# instance fields
.field public final c:[B

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ll0/a;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Ll0/e;->c:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ll0/e;->d:I

    .line 4
    iput v0, p0, Ll0/e;->e:I

    .line 5
    iput v0, p0, Ll0/e;->f:I

    return-void
.end method


# virtual methods
.method public b([B)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Ll0/a;->b([B)V

    if-eqz p1, :cond_b

    .line 2
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget v0, p0, Ll0/e;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 4
    iput v2, p0, Ll0/e;->d:I

    .line 5
    iput v2, p0, Ll0/e;->e:I

    .line 6
    iput v2, p0, Ll0/e;->f:I

    .line 7
    :cond_1
    iget-object v0, p0, Ll0/e;->c:[B

    iget v1, p0, Ll0/e;->d:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v0, p0, Ll0/e;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Ll0/e;->d:I

    .line 9
    iget p1, p0, Ll0/e;->f:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object p1, p0, Ll0/e;->c:[B

    aget-byte p1, p1, v3

    move v0, v1

    .line 11
    :goto_0
    iget v4, p0, Ll0/e;->f:I

    if-ge v0, v4, :cond_3

    .line 12
    iget-object v4, p0, Ll0/e;->c:[B

    aget-byte v4, v4, v0

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    int-to-byte p1, v0

    .line 13
    iget-object v0, p0, Ll0/e;->c:[B

    aget-byte v5, v0, v4

    if-ne p1, v5, :cond_4

    .line 14
    sget-object p1, Lk0/nt;->d:Lk0/lt;

    sub-int/2addr v4, v3

    invoke-virtual {p1, v0, v3, v4}, Lk0/lt;->U2([BII)V

    .line 15
    iget p1, p0, Ll0/e;->f:I

    add-int/2addr p1, v3

    iput p1, p0, Ll0/e;->e:I

    goto :goto_1

    .line 16
    :cond_4
    iput v3, p0, Ll0/e;->e:I

    .line 17
    :goto_1
    iput v2, p0, Ll0/e;->f:I

    .line 18
    :cond_5
    iget p1, p0, Ll0/e;->d:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Ll0/e;->e:I

    if-ge v0, p1, :cond_9

    .line 19
    iget-object v1, p0, Ll0/e;->c:[B

    aget-byte v4, v1, v0

    const/16 v5, -0x45

    if-ne v4, v5, :cond_8

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    const/16 v5, 0x55

    if-ne v4, v5, :cond_8

    const/4 v4, 0x4

    .line 20
    iput v4, p0, Ll0/e;->f:I

    add-int/2addr v4, v0

    .line 21
    iput v4, p0, Ll0/e;->f:I

    .line 22
    iget v5, p0, Ll0/e;->d:I

    if-lt v4, v5, :cond_6

    sub-int/2addr v4, v0

    .line 23
    iput v4, p0, Ll0/e;->f:I

    goto :goto_4

    .line 24
    :cond_6
    aget-byte v5, v1, v0

    xor-int/2addr v5, v2

    add-int/lit8 v6, v0, 0x1

    .line 25
    aget-byte v6, v1, v6

    xor-int/2addr v5, v6

    add-int/lit8 v6, v0, 0x2

    .line 26
    aget-byte v6, v1, v6

    xor-int/2addr v5, v6

    add-int/lit8 v6, v0, 0x3

    .line 27
    aget-byte v6, v1, v6

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v0, 0x4

    .line 28
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    if-ne v5, v6, :cond_7

    .line 29
    sget-object v5, Lk0/nt;->d:Lk0/lt;

    sub-int/2addr v4, v0

    invoke-virtual {v5, v1, v0, v4}, Lk0/lt;->U2([BII)V

    .line 30
    iget v0, p0, Ll0/e;->f:I

    iput v0, p0, Ll0/e;->e:I

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 31
    iput v0, p0, Ll0/e;->e:I

    .line 32
    :goto_3
    iput v2, p0, Ll0/e;->f:I

    .line 33
    :cond_8
    iget v0, p0, Ll0/e;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Ll0/e;->e:I

    goto :goto_2

    :cond_9
    :goto_4
    if-eqz v0, :cond_b

    .line 34
    iget p1, p0, Ll0/e;->d:I

    sub-int/2addr p1, v0

    iput p1, p0, Ll0/e;->d:I

    if-eqz p1, :cond_a

    .line 35
    iget-object v1, p0, Ll0/e;->c:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    :cond_a
    iput v2, p0, Ll0/e;->e:I

    :cond_b
    :goto_5
    return-void
.end method

.method public varargs f([I)V
    .locals 8

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    .line 2
    new-array v2, v0, [I

    const/16 v3, 0xe9

    const/4 v4, 0x0

    .line 3
    aput v3, v2, v4

    const/16 v3, 0x55

    const/4 v5, 0x1

    .line 4
    aput v3, v2, v5

    move v3, v5

    :goto_0
    add-int/lit8 v6, v0, -0x1

    if-ge v1, v6, :cond_0

    .line 5
    array-length v7, p1

    if-ge v3, v7, :cond_0

    .line 6
    aget v6, p1, v3

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    :goto_1
    array-length v0, p1

    if-ge v5, v0, :cond_1

    .line 8
    aget v0, p1, v5

    add-int/2addr v4, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    not-int p1, v4

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    int-to-byte p1, v0

    .line 9
    aput p1, v2, v6

    .line 10
    invoke-static {v2}, Ll0/a;->d([I)V

    return-void
.end method

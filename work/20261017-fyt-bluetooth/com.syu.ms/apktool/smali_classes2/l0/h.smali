.class public Ll0/h;
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
    iput-object v0, p0, Ll0/h;->c:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ll0/h;->d:I

    .line 4
    iput v0, p0, Ll0/h;->e:I

    .line 5
    iput v0, p0, Ll0/h;->f:I

    return-void
.end method


# virtual methods
.method public b([B)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Ll0/a;->b([B)V

    if-eqz p1, :cond_d

    .line 2
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    iget v0, p0, Ll0/h;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 4
    iput v2, p0, Ll0/h;->d:I

    .line 5
    iput v2, p0, Ll0/h;->e:I

    .line 6
    iput v2, p0, Ll0/h;->f:I

    .line 7
    :cond_1
    iget-object v0, p0, Ll0/h;->c:[B

    iget v1, p0, Ll0/h;->d:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v0, p0, Ll0/h;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Ll0/h;->d:I

    .line 9
    iget p1, p0, Ll0/h;->f:I

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object p1, p0, Ll0/h;->c:[B

    aget-byte p1, p1, v4

    move v0, v1

    .line 11
    :goto_0
    iget v5, p0, Ll0/h;->f:I

    if-ge v0, v5, :cond_3

    .line 12
    iget-object v5, p0, Ll0/h;->c:[B

    aget-byte v5, v5, v0

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sub-int/2addr p1, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v0, p0, Ll0/h;->c:[B

    aget-byte v5, v0, v5

    if-ne p1, v5, :cond_4

    .line 14
    sget-object p1, Lk0/nt;->d:Lk0/lt;

    aget-byte v5, v0, v4

    add-int/2addr v5, v4

    invoke-virtual {p1, v0, v4, v5}, Lk0/lt;->U2([BII)V

    .line 15
    iget p1, p0, Ll0/h;->f:I

    add-int/2addr p1, v3

    iput p1, p0, Ll0/h;->e:I

    goto :goto_1

    .line 16
    :cond_4
    iput v4, p0, Ll0/h;->e:I

    .line 17
    :goto_1
    iput v2, p0, Ll0/h;->f:I

    .line 18
    :cond_5
    iget p1, p0, Ll0/h;->d:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Ll0/h;->e:I

    if-ge v0, p1, :cond_b

    .line 19
    iget-object v1, p0, Ll0/h;->c:[B

    aget-byte v5, v1, v0

    const/16 v6, 0x10

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v1, v5

    if-ne v5, v3, :cond_a

    .line 20
    iget v5, p0, Ll0/h;->f:I

    const/16 v6, 0x200

    if-le v5, v6, :cond_6

    .line 21
    iput v2, p0, Ll0/h;->f:I

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v0, 0x2

    .line 22
    aget-byte v5, v1, v5

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Ll0/h;->f:I

    .line 23
    iget v6, p0, Ll0/h;->d:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v0

    .line 24
    iput v5, p0, Ll0/h;->f:I

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v0, 0x2

    .line 25
    aget-byte v1, v1, v5

    add-int/lit8 v0, v0, 0x3

    .line 26
    :goto_3
    iget v5, p0, Ll0/h;->f:I

    if-ge v0, v5, :cond_8

    .line 27
    iget-object v5, p0, Ll0/h;->c:[B

    aget-byte v5, v5, v0

    add-int/2addr v1, v5

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, -0x1

    and-int/lit16 v0, v1, 0xff

    int-to-byte v0, v0

    .line 28
    iget-object v1, p0, Ll0/h;->c:[B

    aget-byte v5, v1, v5

    if-ne v0, v5, :cond_9

    .line 29
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    iget v5, p0, Ll0/h;->e:I

    add-int/lit8 v6, v5, 0x2

    add-int/2addr v5, v4

    aget-byte v5, v1, v5

    add-int/2addr v5, v4

    invoke-virtual {v0, v1, v6, v5}, Lk0/lt;->U2([BII)V

    .line 30
    iget v0, p0, Ll0/h;->f:I

    iput v0, p0, Ll0/h;->e:I

    goto :goto_4

    .line 31
    :cond_9
    iget v0, p0, Ll0/h;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Ll0/h;->e:I

    .line 32
    :goto_4
    iput v2, p0, Ll0/h;->f:I

    .line 33
    :cond_a
    :goto_5
    iget v0, p0, Ll0/h;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Ll0/h;->e:I

    goto :goto_2

    :cond_b
    :goto_6
    if-eqz v0, :cond_d

    .line 34
    iget p1, p0, Ll0/h;->d:I

    sub-int/2addr p1, v0

    iput p1, p0, Ll0/h;->d:I

    if-lez p1, :cond_c

    .line 35
    iget-object v1, p0, Ll0/h;->c:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    :cond_c
    iput v2, p0, Ll0/h;->e:I

    :cond_d
    :goto_7
    return-void
.end method

.method public varargs f([I)V
    .locals 7

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x5

    .line 2
    new-array v0, v0, [I

    const/16 v1, 0xe9

    const/4 v2, 0x0

    .line 3
    aput v1, v0, v2

    const/16 v1, 0x10

    const/4 v3, 0x1

    .line 4
    aput v1, v0, v3

    const/4 v1, 0x2

    .line 5
    aput v3, v0, v1

    move v4, v2

    :goto_0
    if-gt v4, v1, :cond_0

    add-int/lit8 v5, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    .line 6
    aget v6, p1, v4

    aput v6, v0, v5

    goto :goto_0

    :cond_0
    :goto_1
    const/4 p1, 0x6

    if-ge v3, p1, :cond_1

    .line 7
    aget p1, v0, v3

    add-int/2addr v2, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    and-int/lit16 v1, v2, 0xff

    .line 8
    aput v1, v0, p1

    const/4 p1, 0x7

    const/16 v1, 0x8

    shr-int/2addr v2, v1

    and-int/lit16 v2, v2, 0xff

    .line 9
    aput v2, v0, p1

    const/16 p1, 0x2a

    .line 10
    aput p1, v0, v1

    .line 11
    invoke-static {v0}, Ll0/a;->d([I)V

    return-void
.end method

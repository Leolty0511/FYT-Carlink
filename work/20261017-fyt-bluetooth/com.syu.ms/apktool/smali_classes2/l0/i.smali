.class public Ll0/i;
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
    iput-object v0, p0, Ll0/i;->c:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ll0/i;->d:I

    .line 4
    iput v0, p0, Ll0/i;->e:I

    .line 5
    iput v0, p0, Ll0/i;->f:I

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
    iget v0, p0, Ll0/i;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 4
    iput v2, p0, Ll0/i;->d:I

    .line 5
    iput v2, p0, Ll0/i;->e:I

    .line 6
    iput v2, p0, Ll0/i;->f:I

    .line 7
    :cond_1
    iget-object v0, p0, Ll0/i;->c:[B

    iget v1, p0, Ll0/i;->d:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v0, p0, Ll0/i;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Ll0/i;->d:I

    .line 9
    iget p1, p0, Ll0/i;->f:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object p1, p0, Ll0/i;->c:[B

    aget-byte p1, p1, v3

    move v0, v1

    .line 11
    :goto_0
    iget v4, p0, Ll0/i;->f:I

    if-ge v0, v4, :cond_3

    .line 12
    iget-object v4, p0, Ll0/i;->c:[B

    aget-byte v4, v4, v0

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    not-int p1, p1

    int-to-byte p1, p1

    .line 13
    iget-object v0, p0, Ll0/i;->c:[B

    aget-byte v0, v0, v4

    if-ne p1, v0, :cond_4

    .line 14
    invoke-virtual {p0}, Ll0/i;->g()V

    .line 15
    sget-object p1, Lk0/nt;->d:Lk0/lt;

    iget-object v0, p0, Ll0/i;->c:[B

    iget v4, p0, Ll0/i;->f:I

    sub-int/2addr v4, v3

    invoke-virtual {p1, v0, v3, v4}, Lk0/lt;->U2([BII)V

    .line 16
    iget p1, p0, Ll0/i;->f:I

    add-int/2addr p1, v3

    iput p1, p0, Ll0/i;->e:I

    goto :goto_1

    .line 17
    :cond_4
    iput v3, p0, Ll0/i;->e:I

    .line 18
    :goto_1
    iput v2, p0, Ll0/i;->f:I

    .line 19
    :cond_5
    iget p1, p0, Ll0/i;->d:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Ll0/i;->e:I

    if-ge v0, p1, :cond_b

    .line 20
    iget-object v1, p0, Ll0/i;->c:[B

    aget-byte v4, v1, v0

    const/16 v5, -0x56

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v0, 0x2

    .line 21
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Ll0/i;->f:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_6

    .line 22
    iput v2, p0, Ll0/i;->f:I

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    .line 23
    iput v4, p0, Ll0/i;->f:I

    .line 24
    iget v5, p0, Ll0/i;->d:I

    if-lt v4, v5, :cond_7

    sub-int/2addr v4, v0

    .line 25
    iput v4, p0, Ll0/i;->f:I

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v0, 0x1

    .line 26
    aget-byte v1, v1, v4

    add-int/lit8 v0, v0, 0x2

    .line 27
    :goto_3
    iget v4, p0, Ll0/i;->f:I

    if-ge v0, v4, :cond_8

    .line 28
    iget-object v4, p0, Ll0/i;->c:[B

    aget-byte v4, v4, v0

    add-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    not-int v0, v1

    int-to-byte v0, v0

    .line 29
    iget-object v1, p0, Ll0/i;->c:[B

    aget-byte v1, v1, v4

    if-ne v0, v1, :cond_9

    .line 30
    invoke-virtual {p0}, Ll0/i;->g()V

    .line 31
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    iget-object v1, p0, Ll0/i;->c:[B

    iget v4, p0, Ll0/i;->e:I

    add-int/lit8 v5, v4, 0x1

    iget v6, p0, Ll0/i;->f:I

    sub-int/2addr v6, v4

    sub-int/2addr v6, v3

    invoke-virtual {v0, v1, v5, v6}, Lk0/lt;->U2([BII)V

    .line 32
    iget v0, p0, Ll0/i;->f:I

    iput v0, p0, Ll0/i;->e:I

    goto :goto_4

    .line 33
    :cond_9
    iget v0, p0, Ll0/i;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Ll0/i;->e:I

    .line 34
    :goto_4
    iput v2, p0, Ll0/i;->f:I

    .line 35
    :cond_a
    :goto_5
    iget v0, p0, Ll0/i;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Ll0/i;->e:I

    goto :goto_2

    :cond_b
    :goto_6
    if-eqz v0, :cond_d

    .line 36
    iget p1, p0, Ll0/i;->d:I

    sub-int/2addr p1, v0

    iput p1, p0, Ll0/i;->d:I

    if-lez p1, :cond_c

    .line 37
    iget-object v1, p0, Ll0/i;->c:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    :cond_c
    iput v2, p0, Ll0/i;->e:I

    :cond_d
    :goto_7
    return-void
.end method

.method public varargs f([I)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe9

    .line 3
    aput v3, v1, v2

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    aget v3, p1, v2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1}, Ll0/a;->d([I)V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    .line 2
    invoke-static {v0}, Ll0/a;->d([I)V

    return-void

    :array_0
    .array-data 4
        0xe9
        0xff
    .end array-data
.end method

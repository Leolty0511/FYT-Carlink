.class public Ll0/l;
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
    iput-object v0, p0, Ll0/l;->c:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ll0/l;->d:I

    .line 4
    iput v0, p0, Ll0/l;->e:I

    .line 5
    iput v0, p0, Ll0/l;->f:I

    return-void
.end method


# virtual methods
.method public b([B)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Ll0/a;->b([B)V

    if-eqz p1, :cond_e

    .line 2
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    iget v0, p0, Ll0/l;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 4
    iput v2, p0, Ll0/l;->d:I

    .line 5
    iput v2, p0, Ll0/l;->e:I

    .line 6
    iput v2, p0, Ll0/l;->f:I

    .line 7
    :cond_1
    iget-object v0, p0, Ll0/l;->c:[B

    iget v1, p0, Ll0/l;->d:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v0, p0, Ll0/l;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Ll0/l;->d:I

    .line 9
    iget p1, p0, Ll0/l;->f:I

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object p1, p0, Ll0/l;->c:[B

    aget-byte p1, p1, v2

    move v0, v1

    .line 11
    :goto_0
    iget v3, p0, Ll0/l;->f:I

    if-ge v0, v3, :cond_3

    .line 12
    iget-object v3, p0, Ll0/l;->c:[B

    aget-byte v3, v3, v0

    add-int/2addr p1, v3

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    rsub-int p1, p1, 0x100

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v0, p0, Ll0/l;->c:[B

    aget-byte v3, v0, v3

    const/4 v4, 0x2

    if-ne p1, v3, :cond_4

    .line 14
    sget-object p1, Lk0/nt;->d:Lk0/lt;

    aget-byte v3, v0, v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v4, v3}, Lk0/lt;->U2([BII)V

    .line 15
    iget p1, p0, Ll0/l;->f:I

    add-int/2addr p1, v1

    iput p1, p0, Ll0/l;->e:I

    goto :goto_1

    .line 16
    :cond_4
    iput v4, p0, Ll0/l;->e:I

    .line 17
    :goto_1
    iput v2, p0, Ll0/l;->f:I

    .line 18
    :cond_5
    iget p1, p0, Ll0/l;->d:I

    add-int/lit8 p1, p1, -0x3

    :goto_2
    iget v0, p0, Ll0/l;->e:I

    if-ge v0, p1, :cond_c

    .line 19
    iget-object v3, p0, Ll0/l;->c:[B

    aget-byte v4, v3, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v3, v4

    const/16 v5, 0x55

    if-ne v4, v5, :cond_b

    .line 20
    iget v4, p0, Ll0/l;->f:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_6

    .line 21
    iput v2, p0, Ll0/l;->f:I

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v0, 0xd

    .line 22
    iput v4, p0, Ll0/l;->f:I

    .line 23
    iget v5, p0, Ll0/l;->d:I

    if-lt v4, v5, :cond_7

    sub-int/2addr v4, v0

    .line 24
    iput v4, p0, Ll0/l;->f:I

    goto :goto_6

    :cond_7
    if-gez v4, :cond_8

    goto :goto_6

    .line 25
    :cond_8
    aget-byte v3, v3, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 26
    iget v4, p0, Ll0/l;->f:I

    if-ge v0, v4, :cond_9

    .line 27
    iget-object v4, p0, Ll0/l;->c:[B

    aget-byte v4, v4, v0

    add-int/2addr v3, v4

    int-to-byte v3, v3

    goto :goto_3

    :cond_9
    rsub-int v0, v3, 0x100

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 28
    iget-object v3, p0, Ll0/l;->c:[B

    aget-byte v4, v3, v4

    if-ne v0, v4, :cond_a

    .line 29
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    iget v4, p0, Ll0/l;->e:I

    add-int/lit8 v5, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    aget-byte v4, v3, v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v0, v3, v5, v4}, Lk0/lt;->U2([BII)V

    .line 30
    iget v0, p0, Ll0/l;->f:I

    iput v0, p0, Ll0/l;->e:I

    goto :goto_4

    .line 31
    :cond_a
    iget v0, p0, Ll0/l;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Ll0/l;->e:I

    .line 32
    :goto_4
    iput v2, p0, Ll0/l;->f:I

    .line 33
    :cond_b
    :goto_5
    iget v0, p0, Ll0/l;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Ll0/l;->e:I

    goto :goto_2

    :cond_c
    :goto_6
    if-eqz v0, :cond_e

    .line 34
    iget p1, p0, Ll0/l;->d:I

    sub-int/2addr p1, v0

    iput p1, p0, Ll0/l;->d:I

    if-lez p1, :cond_d

    .line 35
    iget-object v1, p0, Ll0/l;->c:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    :cond_d
    iput v2, p0, Ll0/l;->e:I

    :cond_e
    :goto_7
    return-void
.end method

.method public varargs f([I)V
    .locals 0

    return-void
.end method

.class public Ll0/b;
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
    iput-object v0, p0, Ll0/b;->c:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ll0/b;->d:I

    .line 4
    iput v0, p0, Ll0/b;->e:I

    .line 5
    iput v0, p0, Ll0/b;->f:I

    return-void
.end method


# virtual methods
.method public b([B)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Ll0/a;->b([B)V

    if-eqz p1, :cond_7

    .line 2
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget v0, p0, Ll0/b;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 4
    iput v2, p0, Ll0/b;->d:I

    .line 5
    iput v2, p0, Ll0/b;->e:I

    .line 6
    iput v2, p0, Ll0/b;->f:I

    .line 7
    :cond_1
    iget-object v0, p0, Ll0/b;->c:[B

    iget v1, p0, Ll0/b;->d:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v0, p0, Ll0/b;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Ll0/b;->d:I

    .line 9
    :goto_0
    iget p1, p0, Ll0/b;->e:I

    if-ge p1, v0, :cond_7

    .line 10
    iget-object v1, p0, Ll0/b;->c:[B

    aget-byte v3, v1, p1

    const/16 v4, -0x78

    if-ne v3, v4, :cond_6

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, v1, v3

    const/16 v4, -0x60

    if-ne v3, v4, :cond_6

    .line 11
    iget v3, p0, Ll0/b;->f:I

    const/16 v4, 0x200

    if-le v3, v4, :cond_2

    .line 12
    iput v2, p0, Ll0/b;->f:I

    goto :goto_2

    :cond_2
    add-int/lit8 v3, p1, 0xf

    .line 13
    iput v3, p0, Ll0/b;->f:I

    .line 14
    iget v4, p0, Ll0/b;->d:I

    if-lt v3, v4, :cond_3

    .line 15
    iput v2, p0, Ll0/b;->e:I

    goto :goto_3

    :cond_3
    add-int/lit8 v3, p1, 0x2

    .line 16
    aget-byte v1, v1, v3

    add-int/lit8 p1, p1, 0x3

    .line 17
    :goto_1
    iget v3, p0, Ll0/b;->f:I

    if-ge p1, v3, :cond_4

    .line 18
    iget-object v3, p0, Ll0/b;->c:[B

    aget-byte v3, v3, p1

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 19
    :cond_4
    iget-object p1, p0, Ll0/b;->c:[B

    aget-byte v3, p1, v3

    if-ne v1, v3, :cond_5

    .line 20
    sget-object v1, Lk0/nt;->d:Lk0/lt;

    iget v3, p0, Ll0/b;->e:I

    add-int/lit8 v3, v3, 0x2

    const/16 v4, 0xd

    invoke-virtual {v1, p1, v3, v4}, Lk0/lt;->U2([BII)V

    .line 21
    iput v2, p0, Ll0/b;->e:I

    .line 22
    iput v2, p0, Ll0/b;->f:I

    .line 23
    iput v2, p0, Ll0/b;->d:I

    .line 24
    :cond_5
    iput v2, p0, Ll0/b;->e:I

    .line 25
    iput v2, p0, Ll0/b;->f:I

    .line 26
    iput v2, p0, Ll0/b;->d:I

    .line 27
    :cond_6
    :goto_2
    iget p1, p0, Ll0/b;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ll0/b;->e:I

    goto :goto_0

    :cond_7
    :goto_3
    return-void
.end method

.method public varargs f([I)V
    .locals 7

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    add-int/2addr v0, v1

    .line 2
    new-array v2, v0, [I

    const/16 v3, 0xe9

    const/4 v4, 0x0

    .line 3
    aput v3, v2, v4

    const/16 v3, 0x5a

    const/4 v5, 0x1

    .line 4
    aput v3, v2, v5

    const/16 v3, 0xa5

    const/4 v6, 0x2

    .line 5
    aput v3, v2, v6

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, -0x2

    .line 6
    aget v3, p1, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    aput v4, v2, v3

    move v0, v5

    .line 8
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 9
    aget v1, v2, v3

    aget v4, p1, v0

    add-int/2addr v1, v4

    aput v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_1
    aget p1, v2, v3

    sub-int/2addr p1, v5

    and-int/lit16 p1, p1, 0xff

    aput p1, v2, v3

    .line 11
    invoke-static {v2}, Ll0/a;->d([I)V

    return-void
.end method

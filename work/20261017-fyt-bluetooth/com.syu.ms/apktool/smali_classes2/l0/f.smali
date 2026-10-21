.class public Ll0/f;
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
    iput-object v0, p0, Ll0/f;->c:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ll0/f;->d:I

    .line 4
    iput v0, p0, Ll0/f;->e:I

    .line 5
    iput v0, p0, Ll0/f;->f:I

    return-void
.end method


# virtual methods
.method public b([B)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Ll0/a;->b([B)V

    if-eqz p1, :cond_9

    .line 2
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget v0, p0, Ll0/f;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 4
    iput v2, p0, Ll0/f;->d:I

    .line 5
    iput v2, p0, Ll0/f;->e:I

    .line 6
    iput v2, p0, Ll0/f;->f:I

    .line 7
    :cond_1
    iget-object v0, p0, Ll0/f;->c:[B

    iget v1, p0, Ll0/f;->d:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v0, p0, Ll0/f;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Ll0/f;->d:I

    const/16 p1, 0x8

    if-ge v0, p1, :cond_2

    return-void

    .line 9
    :cond_2
    :goto_0
    iget v1, p0, Ll0/f;->e:I

    if-ge v1, v0, :cond_7

    .line 10
    iget-object v3, p0, Ll0/f;->c:[B

    aget-byte v4, v3, v1

    const/4 v5, -0x6

    if-ne v4, v5, :cond_6

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v3, v4

    const/16 v5, -0x10

    if-ne v4, v5, :cond_6

    const/4 v4, 0x7

    .line 11
    iput v4, p0, Ll0/f;->f:I

    add-int/2addr v4, v1

    .line 12
    iput v4, p0, Ll0/f;->f:I

    .line 13
    iget v5, p0, Ll0/f;->d:I

    if-lt v4, v5, :cond_3

    sub-int/2addr v4, v1

    .line 14
    iput v4, p0, Ll0/f;->f:I

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x2

    .line 15
    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x3

    .line 16
    :goto_1
    iget v4, p0, Ll0/f;->f:I

    if-ge v3, v4, :cond_4

    .line 17
    iget-object v4, p0, Ll0/f;->c:[B

    iget v5, p0, Ll0/f;->e:I

    add-int/2addr v5, v3

    aget-byte v4, v4, v5

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    rsub-int v1, v1, 0xff

    and-int/lit16 v1, v1, 0xff

    .line 18
    iget-object v3, p0, Ll0/f;->c:[B

    iget v5, p0, Ll0/f;->e:I

    add-int/lit8 v6, v5, 0x7

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    if-ne v1, v6, :cond_5

    .line 19
    sget-object v1, Lk0/nt;->d:Lk0/lt;

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v5, v4}, Lk0/lt;->U2([BII)V

    .line 20
    iget v1, p0, Ll0/f;->f:I

    iput v1, p0, Ll0/f;->e:I

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 21
    iput v5, p0, Ll0/f;->e:I

    .line 22
    :goto_2
    iput v2, p0, Ll0/f;->f:I

    .line 23
    :cond_6
    iget v1, p0, Ll0/f;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ll0/f;->e:I

    goto :goto_0

    :cond_7
    :goto_3
    if-eqz v1, :cond_9

    .line 24
    iget v0, p0, Ll0/f;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Ll0/f;->d:I

    if-eqz v0, :cond_8

    .line 25
    iget-object v3, p0, Ll0/f;->c:[B

    invoke-static {v3, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    iget-object v1, p0, Ll0/f;->c:[B

    iget v3, p0, Ll0/f;->e:I

    invoke-static {v1, v3, p1}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 27
    :cond_8
    iput v2, p0, Ll0/f;->e:I

    :cond_9
    :goto_4
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

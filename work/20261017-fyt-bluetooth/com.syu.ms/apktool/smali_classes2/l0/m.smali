.class public Ll0/m;
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
    iput-object v0, p0, Ll0/m;->c:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ll0/m;->d:I

    .line 4
    iput v0, p0, Ll0/m;->e:I

    .line 5
    iput v0, p0, Ll0/m;->f:I

    return-void
.end method


# virtual methods
.method public b([B)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Ll0/a;->b([B)V

    if-eqz p1, :cond_d

    .line 2
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    iget v0, p0, Ll0/m;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 4
    iput v2, p0, Ll0/m;->d:I

    .line 5
    iput v2, p0, Ll0/m;->e:I

    .line 6
    iput v2, p0, Ll0/m;->f:I

    .line 7
    :cond_1
    iget-object v0, p0, Ll0/m;->c:[B

    iget v1, p0, Ll0/m;->d:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v0, p0, Ll0/m;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Ll0/m;->d:I

    .line 9
    iget p1, p0, Ll0/m;->f:I

    const/4 v1, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object p1, p0, Ll0/m;->c:[B

    aget-byte p1, p1, v4

    move v0, v3

    .line 11
    :goto_0
    iget v5, p0, Ll0/m;->f:I

    add-int/lit8 v6, v5, -0x1

    if-ge v0, v6, :cond_3

    .line 12
    iget-object v5, p0, Ll0/m;->c:[B

    aget-byte v5, v5, v0

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    and-int/lit8 p1, p1, -0x1

    int-to-byte p1, p1

    .line 13
    iget-object v0, p0, Ll0/m;->c:[B

    sub-int/2addr v5, v4

    aget-byte v5, v0, v5

    if-ne p1, v5, :cond_4

    .line 14
    aget-byte p1, v0, v4

    aget-byte v0, v0, v1

    invoke-virtual {p0, p1, v0}, Ll0/m;->g(BB)V

    .line 15
    sget-object p1, Lk0/nt;->d:Lk0/lt;

    iget-object v0, p0, Ll0/m;->c:[B

    iget v5, p0, Ll0/m;->f:I

    sub-int/2addr v5, v4

    invoke-virtual {p1, v0, v4, v5}, Lk0/lt;->U2([BII)V

    .line 16
    iget p1, p0, Ll0/m;->f:I

    add-int/2addr p1, v4

    iput p1, p0, Ll0/m;->e:I

    goto :goto_1

    .line 17
    :cond_4
    iput v4, p0, Ll0/m;->e:I

    .line 18
    :goto_1
    iput v2, p0, Ll0/m;->f:I

    .line 19
    :cond_5
    iget p1, p0, Ll0/m;->d:I

    sub-int/2addr p1, v3

    :goto_2
    iget v0, p0, Ll0/m;->e:I

    if-ge v0, p1, :cond_b

    .line 20
    iget-object v3, p0, Ll0/m;->c:[B

    aget-byte v5, v3, v0

    const/16 v6, -0x5f

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v0, 0x3

    .line 21
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Ll0/m;->f:I

    const/16 v6, 0x200

    if-le v5, v6, :cond_6

    .line 22
    iput v2, p0, Ll0/m;->f:I

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v0, 0x1

    add-int/2addr v5, v6

    .line 23
    iput v5, p0, Ll0/m;->f:I

    .line 24
    iget v6, p0, Ll0/m;->d:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v0

    .line 25
    iput v5, p0, Ll0/m;->f:I

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v0, 0x1

    .line 26
    aget-byte v3, v3, v5

    add-int/lit8 v0, v0, 0x2

    .line 27
    :goto_3
    iget v5, p0, Ll0/m;->f:I

    add-int/lit8 v6, v5, -0x1

    if-ge v0, v6, :cond_8

    .line 28
    iget-object v5, p0, Ll0/m;->c:[B

    aget-byte v5, v5, v0

    add-int/2addr v3, v5

    int-to-byte v3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    and-int/lit8 v0, v3, -0x1

    int-to-byte v0, v0

    .line 29
    iget-object v3, p0, Ll0/m;->c:[B

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v3, v5

    if-ne v0, v5, :cond_9

    .line 30
    iget v0, p0, Ll0/m;->e:I

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v3, v5

    add-int/2addr v0, v1

    aget-byte v0, v3, v0

    invoke-virtual {p0, v5, v0}, Ll0/m;->g(BB)V

    .line 31
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    iget-object v3, p0, Ll0/m;->c:[B

    iget v5, p0, Ll0/m;->e:I

    add-int/lit8 v6, v5, 0x1

    iget v7, p0, Ll0/m;->f:I

    sub-int/2addr v7, v5

    sub-int/2addr v7, v4

    invoke-virtual {v0, v3, v6, v7}, Lk0/lt;->U2([BII)V

    .line 32
    iget v0, p0, Ll0/m;->f:I

    iput v0, p0, Ll0/m;->e:I

    goto :goto_4

    .line 33
    :cond_9
    iget v0, p0, Ll0/m;->e:I

    add-int/2addr v0, v4

    iput v0, p0, Ll0/m;->e:I

    .line 34
    :goto_4
    iput v2, p0, Ll0/m;->f:I

    .line 35
    :cond_a
    :goto_5
    iget v0, p0, Ll0/m;->e:I

    add-int/2addr v0, v4

    iput v0, p0, Ll0/m;->e:I

    goto :goto_2

    :cond_b
    :goto_6
    if-eqz v0, :cond_d

    .line 36
    iget p1, p0, Ll0/m;->d:I

    sub-int/2addr p1, v0

    iput p1, p0, Ll0/m;->d:I

    if-lez p1, :cond_c

    .line 37
    iget-object v1, p0, Ll0/m;->c:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    :cond_c
    iput v2, p0, Ll0/m;->e:I

    :cond_d
    :goto_7
    return-void
.end method

.method public varargs f([I)V
    .locals 7

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x3

    .line 2
    new-array v1, v0, [I

    const/16 v2, 0xe9

    const/4 v3, 0x0

    .line 3
    aput v2, v1, v3

    const/16 v2, 0xa1

    const/4 v4, 0x1

    .line 4
    aput v2, v1, v4

    const/4 v2, 0x2

    :goto_0
    add-int/lit8 v5, v0, -0x2

    if-ge v2, v5, :cond_0

    add-int/lit8 v5, v2, -0x1

    .line 5
    aget v5, p1, v5

    aput v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    aput v3, v1, v5

    move v2, v4

    .line 7
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 8
    aget v3, v1, v5

    aget v6, p1, v2

    add-int/2addr v3, v6

    aput v3, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_1
    aget p1, v1, v5

    and-int/lit16 p1, p1, 0xff

    aput p1, v1, v5

    sub-int/2addr v0, v4

    const/16 p1, 0xaf

    .line 10
    aput p1, v1, v0

    .line 11
    invoke-static {v1}, Ll0/a;->d([I)V

    .line 12
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WR---->: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v4, v0}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    return-void
.end method

.method public g(BB)V
    .locals 4

    const/4 v0, 0x6

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 p1, 0x2

    aput p2, v1, p1

    const/4 p1, 0x3

    aput v0, v1, p1

    const/4 p1, 0x4

    aput v2, v1, p1

    const/4 p1, 0x5

    aput v3, v1, p1

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

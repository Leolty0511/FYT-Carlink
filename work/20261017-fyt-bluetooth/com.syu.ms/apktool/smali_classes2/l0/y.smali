.class public Ll0/y;
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
    iput-object v0, p0, Ll0/y;->c:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ll0/y;->d:I

    .line 4
    iput v0, p0, Ll0/y;->e:I

    .line 5
    iput v0, p0, Ll0/y;->f:I

    return-void
.end method


# virtual methods
.method public b([B)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Ll0/a;->b([B)V

    if-eqz p1, :cond_f

    .line 2
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    iget v0, p0, Ll0/y;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 4
    iput v2, p0, Ll0/y;->d:I

    .line 5
    iput v2, p0, Ll0/y;->e:I

    .line 6
    iput v2, p0, Ll0/y;->f:I

    .line 7
    :cond_1
    iget-object v0, p0, Ll0/y;->c:[B

    iget v1, p0, Ll0/y;->d:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v0, p0, Ll0/y;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Ll0/y;->d:I

    .line 9
    iget p1, p0, Ll0/y;->f:I

    const/16 v1, 0xc

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object p1, p0, Ll0/y;->c:[B

    aget-byte p1, p1, v4

    move v0, v3

    .line 11
    :goto_0
    iget v5, p0, Ll0/y;->f:I

    if-ge v0, v5, :cond_3

    .line 12
    iget-object v5, p0, Ll0/y;->c:[B

    aget-byte v5, v5, v0

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    not-int p1, p1

    int-to-byte p1, p1

    .line 13
    iget-object v0, p0, Ll0/y;->c:[B

    aget-byte v0, v0, v5

    if-ne p1, v0, :cond_5

    .line 14
    invoke-static {v1}, Lg/f;->f(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v0, Lutil/log/LogType;->e:Lutil/log/LogType;

    iget-object v5, p0, Ll0/y;->c:[B

    iget v6, p0, Ll0/y;->f:I

    add-int/2addr v6, v4

    invoke-static {v5, v2, v6}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 16
    :cond_4
    sget-object p1, Lk0/nt;->d:Lk0/lt;

    iget-object v0, p0, Ll0/y;->c:[B

    iget v5, p0, Ll0/y;->f:I

    sub-int/2addr v5, v4

    invoke-virtual {p1, v0, v4, v5}, Lk0/lt;->U2([BII)V

    .line 17
    iget p1, p0, Ll0/y;->f:I

    add-int/2addr p1, v4

    iput p1, p0, Ll0/y;->e:I

    goto :goto_1

    .line 18
    :cond_5
    iput v4, p0, Ll0/y;->e:I

    .line 19
    :goto_1
    iput v2, p0, Ll0/y;->f:I

    .line 20
    :cond_6
    iget p1, p0, Ll0/y;->d:I

    sub-int/2addr p1, v3

    :goto_2
    iget v0, p0, Ll0/y;->e:I

    if-ge v0, p1, :cond_d

    .line 21
    iget-object v3, p0, Ll0/y;->c:[B

    aget-byte v5, v3, v0

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_c

    add-int/lit8 v5, v0, 0x2

    .line 22
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Ll0/y;->f:I

    const/16 v6, 0x200

    if-le v5, v6, :cond_7

    .line 23
    iput v2, p0, Ll0/y;->f:I

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v0, 0x3

    add-int/2addr v5, v6

    .line 24
    iput v5, p0, Ll0/y;->f:I

    .line 25
    iget v6, p0, Ll0/y;->d:I

    if-lt v5, v6, :cond_8

    sub-int/2addr v5, v0

    .line 26
    iput v5, p0, Ll0/y;->f:I

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v0, 0x1

    .line 27
    aget-byte v3, v3, v5

    add-int/lit8 v0, v0, 0x2

    .line 28
    :goto_3
    iget v5, p0, Ll0/y;->f:I

    if-ge v0, v5, :cond_9

    .line 29
    iget-object v5, p0, Ll0/y;->c:[B

    aget-byte v5, v5, v0

    add-int/2addr v3, v5

    int-to-byte v3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    not-int v0, v3

    int-to-byte v0, v0

    .line 30
    iget-object v3, p0, Ll0/y;->c:[B

    aget-byte v3, v3, v5

    if-ne v0, v3, :cond_b

    .line 31
    invoke-static {v1}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    iget-object v5, p0, Ll0/y;->c:[B

    iget v6, p0, Ll0/y;->e:I

    iget v7, p0, Ll0/y;->f:I

    sub-int/2addr v7, v6

    add-int/2addr v7, v4

    invoke-static {v5, v6, v7}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 33
    :cond_a
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    iget-object v3, p0, Ll0/y;->c:[B

    iget v5, p0, Ll0/y;->e:I

    add-int/lit8 v6, v5, 0x1

    iget v7, p0, Ll0/y;->f:I

    sub-int/2addr v7, v5

    sub-int/2addr v7, v4

    invoke-virtual {v0, v3, v6, v7}, Lk0/lt;->U2([BII)V

    .line 34
    iget v0, p0, Ll0/y;->f:I

    iput v0, p0, Ll0/y;->e:I

    goto :goto_4

    .line 35
    :cond_b
    iget v0, p0, Ll0/y;->e:I

    add-int/2addr v0, v4

    iput v0, p0, Ll0/y;->e:I

    .line 36
    :goto_4
    iput v2, p0, Ll0/y;->f:I

    .line 37
    :cond_c
    :goto_5
    iget v0, p0, Ll0/y;->e:I

    add-int/2addr v0, v4

    iput v0, p0, Ll0/y;->e:I

    goto :goto_2

    :cond_d
    :goto_6
    if-eqz v0, :cond_f

    .line 38
    iget p1, p0, Ll0/y;->d:I

    sub-int/2addr p1, v0

    iput p1, p0, Ll0/y;->d:I

    if-eqz p1, :cond_e

    .line 39
    iget-object v1, p0, Ll0/y;->c:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    :cond_e
    iput v2, p0, Ll0/y;->e:I

    :cond_f
    :goto_7
    return-void
.end method

.method public varargs f([I)V
    .locals 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    .line 2
    new-array v2, v0, [I

    const/16 v3, 0x91

    const/4 v4, 0x0

    .line 3
    aput v3, v2, v4

    const/16 v3, 0x2d

    const/4 v5, 0x1

    .line 4
    aput v3, v2, v5

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    .line 5
    aget v3, p1, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    aput v4, v2, v3

    move v0, v5

    .line 7
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 8
    aget v1, v2, v3

    aget v4, p1, v0

    add-int/2addr v1, v4

    aput v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_1
    aget p1, v2, v3

    xor-int/lit16 p1, p1, 0xff

    aput p1, v2, v3

    .line 10
    invoke-static {v2}, Ll0/a;->d([I)V

    .line 11
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v0, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WR---->: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v5, v3}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    return-void
.end method

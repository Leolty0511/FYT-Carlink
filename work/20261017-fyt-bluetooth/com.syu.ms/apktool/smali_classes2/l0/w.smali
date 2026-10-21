.class public Ll0/w;
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
    iput-object v0, p0, Ll0/w;->c:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ll0/w;->d:I

    .line 4
    iput v0, p0, Ll0/w;->e:I

    .line 5
    iput v0, p0, Ll0/w;->f:I

    return-void
.end method


# virtual methods
.method public b([B)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Ll0/a;->b([B)V

    if-eqz p1, :cond_10

    .line 2
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    iget v0, p0, Ll0/w;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 4
    iput v2, p0, Ll0/w;->d:I

    .line 5
    iput v2, p0, Ll0/w;->e:I

    .line 6
    iput v2, p0, Ll0/w;->f:I

    .line 7
    :cond_1
    iget-object v0, p0, Ll0/w;->c:[B

    iget v3, p0, Ll0/w;->d:I

    array-length v4, p1

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v0, p0, Ll0/w;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Ll0/w;->d:I

    .line 9
    iget p1, p0, Ll0/w;->f:I

    const/16 v3, 0xc

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object p1, p0, Ll0/w;->c:[B

    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x2

    move v5, v0

    .line 11
    :goto_0
    iget v6, p0, Ll0/w;->f:I

    if-ge v5, v6, :cond_3

    .line 12
    iget-object v6, p0, Ll0/w;->c:[B

    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    add-int/2addr p1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 13
    iget-object v7, p0, Ll0/w;->c:[B

    aget-byte v8, v7, v6

    and-int/lit16 v8, v8, 0xff

    if-ne v5, v8, :cond_5

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v6, v4

    aget-byte v5, v7, v6

    and-int/lit16 v5, v5, 0xff

    if-ne p1, v5, :cond_5

    .line 14
    invoke-static {v3}, Lg/f;->f(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v5, Lutil/log/LogType;->e:Lutil/log/LogType;

    iget-object v6, p0, Ll0/w;->c:[B

    iget v7, p0, Ll0/w;->f:I

    add-int/2addr v7, v4

    invoke-static {v6, v2, v7}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 16
    :cond_4
    sget-object p1, Lk0/nt;->d:Lk0/lt;

    iget-object v5, p0, Ll0/w;->c:[B

    iget v6, p0, Ll0/w;->f:I

    sub-int/2addr v6, v4

    invoke-virtual {p1, v5, v4, v6}, Lk0/lt;->U2([BII)V

    .line 17
    iget p1, p0, Ll0/w;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Ll0/w;->e:I

    goto :goto_1

    .line 18
    :cond_5
    iput v4, p0, Ll0/w;->e:I

    .line 19
    :goto_1
    iput v2, p0, Ll0/w;->f:I

    .line 20
    :cond_6
    iget p1, p0, Ll0/w;->d:I

    add-int/lit8 p1, p1, -0x3

    :goto_2
    iget v0, p0, Ll0/w;->e:I

    if-ge v0, p1, :cond_d

    .line 21
    iget-object v5, p0, Ll0/w;->c:[B

    aget-byte v6, v5, v0

    const/4 v7, -0x3

    if-ne v6, v7, :cond_c

    add-int/lit8 v6, v0, 0x1

    .line 22
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    iput v6, p0, Ll0/w;->f:I

    const/16 v7, 0x200

    if-le v6, v7, :cond_7

    .line 23
    iput v2, p0, Ll0/w;->f:I

    goto :goto_5

    :cond_7
    add-int/lit8 v7, v0, -0x1

    add-int/2addr v6, v7

    .line 24
    iput v6, p0, Ll0/w;->f:I

    .line 25
    iget v7, p0, Ll0/w;->d:I

    if-lt v6, v7, :cond_8

    sub-int/2addr v6, v0

    .line 26
    iput v6, p0, Ll0/w;->f:I

    goto :goto_6

    :cond_8
    add-int/lit8 v6, v0, 0x1

    .line 27
    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v0, v0, 0x2

    .line 28
    :goto_3
    iget v6, p0, Ll0/w;->f:I

    if-ge v0, v6, :cond_9

    .line 29
    iget-object v6, p0, Ll0/w;->c:[B

    aget-byte v6, v6, v0

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    shr-int/lit8 v0, v5, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 30
    iget-object v7, p0, Ll0/w;->c:[B

    aget-byte v8, v7, v6

    and-int/lit16 v8, v8, 0xff

    if-ne v0, v8, :cond_b

    and-int/lit16 v0, v5, 0xff

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v7, v6

    and-int/lit16 v5, v5, 0xff

    if-ne v0, v5, :cond_b

    .line 31
    invoke-static {v3}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v5, Lutil/log/LogType;->e:Lutil/log/LogType;

    iget-object v6, p0, Ll0/w;->c:[B

    iget v7, p0, Ll0/w;->e:I

    iget v8, p0, Ll0/w;->f:I

    sub-int/2addr v8, v7

    add-int/2addr v8, v4

    invoke-static {v6, v7, v8}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 33
    :cond_a
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    iget-object v5, p0, Ll0/w;->c:[B

    iget v6, p0, Ll0/w;->e:I

    add-int/lit8 v7, v6, 0x1

    iget v8, p0, Ll0/w;->f:I

    sub-int/2addr v8, v6

    sub-int/2addr v8, v4

    invoke-virtual {v0, v5, v7, v8}, Lk0/lt;->U2([BII)V

    .line 34
    iget v0, p0, Ll0/w;->f:I

    add-int/2addr v0, v4

    iput v0, p0, Ll0/w;->e:I

    goto :goto_4

    .line 35
    :cond_b
    iget v0, p0, Ll0/w;->e:I

    add-int/2addr v0, v4

    iput v0, p0, Ll0/w;->e:I

    .line 36
    :goto_4
    iput v2, p0, Ll0/w;->f:I

    .line 37
    :cond_c
    :goto_5
    iget v0, p0, Ll0/w;->e:I

    add-int/2addr v0, v4

    iput v0, p0, Ll0/w;->e:I

    goto/16 :goto_2

    :cond_d
    :goto_6
    if-eqz v0, :cond_f

    if-ge v0, v1, :cond_f

    .line 38
    iget p1, p0, Ll0/w;->d:I

    if-lt p1, v0, :cond_f

    sub-int/2addr p1, v0

    .line 39
    iput p1, p0, Ll0/w;->d:I

    if-lez p1, :cond_e

    .line 40
    iget-object v1, p0, Ll0/w;->c:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    :cond_e
    iput v2, p0, Ll0/w;->e:I

    goto :goto_7

    :cond_f
    if-eqz v0, :cond_10

    if-lt v0, v1, :cond_10

    .line 42
    iput v2, p0, Ll0/w;->d:I

    .line 43
    iput v2, p0, Ll0/w;->e:I

    .line 44
    iput v2, p0, Ll0/w;->f:I

    :cond_10
    :goto_7
    return-void
.end method

.method public varargs f([I)V
    .locals 8

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x3

    .line 2
    new-array v1, v0, [I

    const/16 v2, 0xe9

    const/4 v3, 0x0

    .line 3
    aput v2, v1, v3

    const/16 v2, 0xfd

    const/4 v4, 0x1

    .line 4
    aput v2, v1, v4

    const/4 v2, 0x2

    move v5, v4

    :goto_0
    add-int/lit8 v6, v0, -0x2

    if-ge v2, v6, :cond_0

    .line 5
    array-length v7, p1

    if-ge v5, v7, :cond_0

    .line 6
    aget v6, p1, v5

    aput v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    .line 7
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_1

    .line 8
    aget v5, p1, v2

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    shr-int/lit8 p1, v3, 0x8

    and-int/lit16 p1, p1, 0xff

    .line 9
    aput p1, v1, v6

    sub-int/2addr v0, v4

    and-int/lit16 p1, v3, 0xff

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

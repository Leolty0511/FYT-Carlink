.class public Ll0/p;
.super Ll0/a;
.source "SourceFile"


# instance fields
.field public final c:[B

.field public d:I

.field public e:I

.field public f:I

.field public g:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ll0/a;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Ll0/p;->c:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ll0/p;->d:I

    .line 4
    iput v0, p0, Ll0/p;->e:I

    .line 5
    iput v0, p0, Ll0/p;->f:I

    return-void
.end method


# virtual methods
.method public b([B)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Ll0/a;->b([B)V

    if-eqz p1, :cond_15

    .line 2
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_a

    .line 3
    :cond_0
    iget v0, p0, Ll0/p;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 4
    iput v2, p0, Ll0/p;->d:I

    .line 5
    iput v2, p0, Ll0/p;->e:I

    .line 6
    iput v2, p0, Ll0/p;->f:I

    .line 7
    :cond_1
    iget-object v0, p0, Ll0/p;->c:[B

    iget v1, p0, Ll0/p;->d:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v0, p0, Ll0/p;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Ll0/p;->d:I

    .line 9
    iget p1, p0, Ll0/p;->f:I

    const/4 v1, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p1, :cond_8

    if-lt p1, v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object p1, p0, Ll0/p;->c:[B

    aget-byte p1, p1, v5

    move v0, v4

    .line 11
    :goto_0
    iget v6, p0, Ll0/p;->f:I

    if-ge v0, v6, :cond_3

    .line 12
    iget-object v6, p0, Ll0/p;->c:[B

    aget-byte v6, v6, v0

    add-int/2addr p1, v6

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    and-int/lit8 p1, p1, -0x1

    int-to-byte p1, p1

    .line 13
    iget-object v0, p0, Ll0/p;->c:[B

    aget-byte v6, v0, v6

    if-ne p1, v6, :cond_7

    .line 14
    iget-byte p1, p0, Ll0/p;->g:B

    const/16 v6, 0xfd

    const/16 v7, 0xc

    if-ne p1, v6, :cond_5

    new-array p1, v1, [B

    aput-byte v3, p1, v2

    .line 15
    invoke-static {v0, v2, p1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    invoke-static {v7}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v6, Lutil/log/LogType;->e:Lutil/log/LogType;

    invoke-static {p1, v2, v1}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 18
    :cond_4
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {v0, p1, v2, v1}, Lk0/lt;->U2([BII)V

    goto :goto_1

    .line 19
    :cond_5
    iget p1, p0, Ll0/p;->e:I

    add-int/lit8 v6, p1, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v8, v6, 0x1

    .line 20
    new-array v9, v8, [B

    int-to-byte v10, v6

    .line 21
    aput-byte v10, v9, v2

    .line 22
    aget-byte v10, v0, p1

    aput-byte v10, v9, v5

    add-int/2addr p1, v4

    sub-int/2addr v6, v4

    .line 23
    invoke-static {v0, p1, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    invoke-static {v7}, Lg/f;->f(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 25
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v0, Lutil/log/LogType;->e:Lutil/log/LogType;

    invoke-static {v9, v2, v8}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v0, v6}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 26
    :cond_6
    sget-object p1, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {p1, v9, v2, v8}, Lk0/lt;->U2([BII)V

    .line 27
    :goto_1
    iget p1, p0, Ll0/p;->f:I

    add-int/2addr p1, v5

    iput p1, p0, Ll0/p;->e:I

    goto :goto_2

    .line 28
    :cond_7
    iput v5, p0, Ll0/p;->e:I

    .line 29
    :goto_2
    iput v2, p0, Ll0/p;->f:I

    .line 30
    :cond_8
    iget p1, p0, Ll0/p;->d:I

    sub-int/2addr p1, v4

    :goto_3
    iget v0, p0, Ll0/p;->e:I

    if-ge v0, p1, :cond_13

    .line 31
    iget-object v6, p0, Ll0/p;->c:[B

    aget-byte v7, v6, v0

    const/4 v8, -0x3

    if-ne v7, v8, :cond_c

    .line 32
    aget-byte v7, v6, v0

    iput-byte v7, p0, Ll0/p;->g:B

    .line 33
    iput v3, p0, Ll0/p;->f:I

    add-int v7, v3, v0

    .line 34
    iput v7, p0, Ll0/p;->f:I

    .line 35
    iget v8, p0, Ll0/p;->d:I

    if-lt v7, v8, :cond_9

    .line 36
    iput v2, p0, Ll0/p;->f:I

    goto/16 :goto_9

    :cond_9
    add-int/lit8 v7, v0, 0x1

    .line 37
    aget-byte v6, v6, v7

    add-int/lit8 v0, v0, 0x2

    .line 38
    :goto_4
    iget v7, p0, Ll0/p;->f:I

    if-ge v0, v7, :cond_a

    .line 39
    iget-object v7, p0, Ll0/p;->c:[B

    aget-byte v7, v7, v0

    add-int/2addr v6, v7

    int-to-byte v6, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    and-int/lit8 v0, v6, -0x1

    int-to-byte v0, v0

    .line 40
    iget-object v6, p0, Ll0/p;->c:[B

    aget-byte v7, v6, v7

    if-ne v0, v7, :cond_b

    new-array v0, v1, [B

    aput-byte v3, v0, v2

    .line 41
    iget v7, p0, Ll0/p;->e:I

    invoke-static {v6, v7, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    sget-object v6, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {v6, v0, v2, v1}, Lk0/lt;->U2([BII)V

    .line 43
    iget v0, p0, Ll0/p;->f:I

    iput v0, p0, Ll0/p;->e:I

    goto :goto_5

    .line 44
    :cond_b
    iget v0, p0, Ll0/p;->e:I

    add-int/2addr v0, v5

    iput v0, p0, Ll0/p;->e:I

    .line 45
    :goto_5
    iput v2, p0, Ll0/p;->f:I

    goto :goto_8

    .line 46
    :cond_c
    aget-byte v7, v6, v0

    const/4 v8, -0x4

    if-eq v7, v8, :cond_d

    aget-byte v7, v6, v0

    const/4 v8, -0x2

    if-ne v7, v8, :cond_12

    :cond_d
    add-int/lit8 v7, v0, 0x1

    .line 47
    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    iput v7, p0, Ll0/p;->f:I

    const/16 v8, 0x200

    if-le v7, v8, :cond_e

    .line 48
    iput v2, p0, Ll0/p;->f:I

    goto :goto_8

    :cond_e
    add-int/2addr v7, v0

    .line 49
    iput v7, p0, Ll0/p;->f:I

    .line 50
    iget v8, p0, Ll0/p;->d:I

    if-lt v7, v8, :cond_f

    sub-int/2addr v7, v0

    .line 51
    iput v7, p0, Ll0/p;->f:I

    goto :goto_9

    :cond_f
    add-int/lit8 v7, v0, 0x1

    .line 52
    aget-byte v6, v6, v7

    add-int/lit8 v0, v0, 0x2

    .line 53
    :goto_6
    iget v7, p0, Ll0/p;->f:I

    if-ge v0, v7, :cond_10

    .line 54
    iget-object v7, p0, Ll0/p;->c:[B

    aget-byte v7, v7, v0

    add-int/2addr v6, v7

    int-to-byte v6, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    and-int/lit8 v0, v6, -0x1

    int-to-byte v0, v0

    .line 55
    iget-object v6, p0, Ll0/p;->c:[B

    aget-byte v7, v6, v7

    if-ne v0, v7, :cond_11

    .line 56
    iget v0, p0, Ll0/p;->e:I

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v7, 0x1

    .line 57
    new-array v9, v8, [B

    int-to-byte v10, v7

    .line 58
    aput-byte v10, v9, v2

    .line 59
    aget-byte v10, v6, v0

    aput-byte v10, v9, v5

    add-int/2addr v0, v4

    sub-int/2addr v7, v4

    .line 60
    invoke-static {v6, v0, v9, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {v0, v9, v2, v8}, Lk0/lt;->U2([BII)V

    .line 62
    iget v0, p0, Ll0/p;->f:I

    iput v0, p0, Ll0/p;->e:I

    goto :goto_7

    .line 63
    :cond_11
    iget v0, p0, Ll0/p;->e:I

    add-int/2addr v0, v5

    iput v0, p0, Ll0/p;->e:I

    .line 64
    :goto_7
    iput v2, p0, Ll0/p;->f:I

    .line 65
    :cond_12
    :goto_8
    iget v0, p0, Ll0/p;->e:I

    add-int/2addr v0, v5

    iput v0, p0, Ll0/p;->e:I

    goto/16 :goto_3

    :cond_13
    :goto_9
    if-eqz v0, :cond_15

    .line 66
    iget p1, p0, Ll0/p;->d:I

    sub-int/2addr p1, v0

    iput p1, p0, Ll0/p;->d:I

    if-lez p1, :cond_14

    .line 67
    iget-object v1, p0, Ll0/p;->c:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    :cond_14
    iput v2, p0, Ll0/p;->e:I

    :cond_15
    :goto_a
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

    const/16 v3, 0xfd

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
    aput v4, v2, v6

    move v0, v5

    .line 8
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 9
    aget v1, v2, v6

    aget v3, p1, v0

    add-int/2addr v1, v3

    aput v1, v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_1
    aget p1, v2, v6

    and-int/lit8 p1, p1, -0x1

    aput p1, v2, v6

    .line 11
    invoke-static {v2}, Ll0/a;->d([I)V

    .line 12
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v0, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WR---->: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v5, v6}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    return-void
.end method

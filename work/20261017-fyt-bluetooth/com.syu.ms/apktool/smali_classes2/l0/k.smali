.class public Ll0/k;
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
    iput-object v0, p0, Ll0/k;->c:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ll0/k;->d:I

    .line 4
    iput v0, p0, Ll0/k;->e:I

    .line 5
    iput v0, p0, Ll0/k;->f:I

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
    iget v0, p0, Ll0/k;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 4
    iput v2, p0, Ll0/k;->d:I

    .line 5
    iput v2, p0, Ll0/k;->e:I

    .line 6
    iput v2, p0, Ll0/k;->f:I

    .line 7
    :cond_1
    iget-object v0, p0, Ll0/k;->c:[B

    iget v1, p0, Ll0/k;->d:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v0, p0, Ll0/k;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Ll0/k;->d:I

    .line 9
    iget p1, p0, Ll0/k;->f:I

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object p1, p0, Ll0/k;->c:[B

    aget-byte p1, p1, v2

    move v0, v1

    .line 11
    :goto_0
    iget v3, p0, Ll0/k;->f:I

    if-ge v0, v3, :cond_3

    .line 12
    iget-object v3, p0, Ll0/k;->c:[B

    aget-byte v3, v3, v0

    xor-int/2addr p1, v3

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    and-int/lit8 p1, p1, -0x1

    int-to-byte p1, p1

    .line 13
    iget-object v0, p0, Ll0/k;->c:[B

    aget-byte v4, v0, v3

    if-ne p1, v4, :cond_4

    .line 14
    sget-object p1, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {p1, v0, v2, v3}, Lk0/lt;->U2([BII)V

    .line 15
    iget p1, p0, Ll0/k;->f:I

    add-int/2addr p1, v1

    iput p1, p0, Ll0/k;->e:I

    goto :goto_1

    .line 16
    :cond_4
    iput v1, p0, Ll0/k;->e:I

    .line 17
    :goto_1
    iput v2, p0, Ll0/k;->f:I

    .line 18
    :cond_5
    iget p1, p0, Ll0/k;->d:I

    add-int/lit8 p1, p1, -0x2

    :goto_2
    iget v0, p0, Ll0/k;->e:I

    if-ge v0, p1, :cond_b

    .line 19
    iget-object v3, p0, Ll0/k;->c:[B

    aget-byte v4, v3, v0

    const/16 v5, 0x8

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v0, 0x1

    .line 20
    aget-byte v4, v3, v4

    iput v4, p0, Ll0/k;->f:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_6

    .line 21
    iput v2, p0, Ll0/k;->f:I

    goto/16 :goto_5

    :cond_6
    add-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    .line 22
    iput v4, p0, Ll0/k;->f:I

    .line 23
    iget v5, p0, Ll0/k;->d:I

    if-lt v4, v5, :cond_7

    sub-int/2addr v4, v0

    .line 24
    iput v4, p0, Ll0/k;->f:I

    goto/16 :goto_6

    .line 25
    :cond_7
    aget-byte v3, v3, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 26
    iget v4, p0, Ll0/k;->f:I

    if-ge v0, v4, :cond_8

    .line 27
    iget-object v4, p0, Ll0/k;->c:[B

    aget-byte v4, v4, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    goto :goto_3

    :cond_8
    and-int/lit8 v0, v3, -0x1

    int-to-byte v0, v0

    .line 28
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v4, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "re---->111111:mChecksumIndex ==   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Ll0/k;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 29
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "re---->111111:checksum ==   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 30
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "re---->1111111:this.DATA_MISC[mChecksumIndex] ==   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ll0/k;->c:[B

    iget v7, p0, Ll0/k;->f:I

    aget-byte v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 31
    iget-object v3, p0, Ll0/k;->c:[B

    iget v4, p0, Ll0/k;->f:I

    aget-byte v5, v3, v4

    if-ne v0, v5, :cond_9

    .line 32
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    iget v5, p0, Ll0/k;->e:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v5, v4}, Lk0/lt;->U2([BII)V

    .line 33
    iget v0, p0, Ll0/k;->f:I

    iput v0, p0, Ll0/k;->e:I

    goto :goto_4

    .line 34
    :cond_9
    iget v0, p0, Ll0/k;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Ll0/k;->e:I

    .line 35
    :goto_4
    iput v2, p0, Ll0/k;->f:I

    .line 36
    :cond_a
    :goto_5
    iget v0, p0, Ll0/k;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Ll0/k;->e:I

    goto/16 :goto_2

    :cond_b
    :goto_6
    if-eqz v0, :cond_d

    .line 37
    iget p1, p0, Ll0/k;->d:I

    sub-int/2addr p1, v0

    iput p1, p0, Ll0/k;->d:I

    if-eqz p1, :cond_c

    .line 38
    iget-object v1, p0, Ll0/k;->c:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    :cond_c
    iput v2, p0, Ll0/k;->e:I

    :cond_d
    :goto_7
    return-void
.end method

.method public varargs f([I)V
    .locals 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    new-array v2, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xe9

    .line 3
    aput v4, v2, v3

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, -0x1

    .line 4
    aget v4, p1, v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v2}, Ll0/a;->d([I)V

    .line 6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WR---->: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v1

    invoke-static {v2, v1, v0}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    return-void
.end method

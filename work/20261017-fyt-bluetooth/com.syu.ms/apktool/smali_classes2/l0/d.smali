.class public Ll0/d;
.super Ll0/a;
.source "SourceFile"


# instance fields
.field public final c:[B

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ll0/a;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Ll0/d;->c:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ll0/d;->d:I

    .line 4
    iput v0, p0, Ll0/d;->e:I

    return-void
.end method


# virtual methods
.method public b([B)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Ll0/a;->b([B)V

    if-eqz p1, :cond_6

    .line 2
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    iget-object v0, p0, Ll0/d;->c:[B

    iget v1, p0, Ll0/d;->d:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget v0, p0, Ll0/d;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Ll0/d;->d:I

    const/16 p1, 0xb

    if-ge v0, p1, :cond_1

    .line 5
    iput v3, p0, Ll0/d;->e:I

    goto :goto_2

    .line 6
    :cond_1
    :goto_0
    iget v1, p0, Ll0/d;->e:I

    if-ge v1, v0, :cond_4

    add-int/lit8 v2, v1, 0xa

    .line 7
    iget v4, p0, Ll0/d;->d:I

    if-gt v2, v4, :cond_3

    .line 8
    iget-object v2, p0, Ll0/d;->c:[B

    aget-byte v4, v2, v1

    const/16 v5, 0x55

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v1, 0xa

    aget-byte v4, v2, v4

    const/16 v5, -0x56

    if-ne v4, v5, :cond_2

    .line 9
    sget-object v4, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {v4, v2, v1, p1}, Lk0/lt;->U2([BII)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 10
    iput v1, p0, Ll0/d;->e:I

    .line 11
    :cond_3
    :goto_1
    iget v1, p0, Ll0/d;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ll0/d;->e:I

    goto :goto_0

    .line 12
    :cond_4
    :goto_2
    iget p1, p0, Ll0/d;->e:I

    if-eqz p1, :cond_6

    .line 13
    iget v0, p0, Ll0/d;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Ll0/d;->d:I

    if-lez v0, :cond_5

    .line 14
    iget-object v1, p0, Ll0/d;->c:[B

    invoke-static {v1, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    :cond_5
    iput v3, p0, Ll0/d;->e:I

    :cond_6
    :goto_3
    return-void
.end method

.method public varargs f([I)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe9

    .line 3
    aput v3, v1, v2

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 4
    aget v4, p1, v3

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1}, Ll0/a;->d([I)V

    .line 6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write---->: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v2

    invoke-static {v1, v2, v0}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    return-void
.end method

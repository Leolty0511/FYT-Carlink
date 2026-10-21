.class public Ll0/j;
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
    iput-object v0, p0, Ll0/j;->c:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ll0/j;->d:I

    .line 4
    iput v0, p0, Ll0/j;->e:I

    .line 5
    iput v0, p0, Ll0/j;->f:I

    return-void
.end method


# virtual methods
.method public b([B)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Ll0/a;->b([B)V

    if-eqz p1, :cond_b

    .line 2
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget v0, p0, Ll0/j;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 4
    iput v2, p0, Ll0/j;->d:I

    .line 5
    iput v2, p0, Ll0/j;->e:I

    .line 6
    iput v2, p0, Ll0/j;->f:I

    .line 7
    :cond_1
    iget-object v0, p0, Ll0/j;->c:[B

    iget v1, p0, Ll0/j;->d:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v0, p0, Ll0/j;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Ll0/j;->d:I

    .line 9
    iget p1, p0, Ll0/j;->f:I

    const/16 v1, 0xa

    const/16 v3, -0x56

    if-eqz p1, :cond_4

    if-lt p1, v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Ll0/j;->c:[B

    add-int/lit8 v4, p1, -0x1

    aget-byte v4, v0, v4

    if-ne v4, v3, :cond_3

    aget-byte p1, v0, p1

    if-ne p1, v3, :cond_3

    .line 11
    sget-object p1, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {p1, v0, v2, v1}, Lk0/lt;->U2([BII)V

    .line 12
    iget p1, p0, Ll0/j;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ll0/j;->e:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    .line 13
    iput p1, p0, Ll0/j;->e:I

    .line 14
    :goto_0
    iput v2, p0, Ll0/j;->f:I

    .line 15
    :cond_4
    iget p1, p0, Ll0/j;->d:I

    add-int/lit8 p1, p1, -0x3

    :goto_1
    iget v0, p0, Ll0/j;->e:I

    if-ge v0, p1, :cond_9

    .line 16
    iget-object v4, p0, Ll0/j;->c:[B

    aget-byte v5, v4, v0

    const/16 v6, 0x55

    if-ne v5, v6, :cond_8

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v4, v5

    if-ne v5, v6, :cond_8

    .line 17
    iget v5, p0, Ll0/j;->f:I

    const/16 v6, 0x200

    if-le v5, v6, :cond_5

    .line 18
    iput v2, p0, Ll0/j;->f:I

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v0, 0x9

    .line 19
    iput v5, p0, Ll0/j;->f:I

    .line 20
    iget v6, p0, Ll0/j;->d:I

    if-lt v5, v6, :cond_6

    sub-int/2addr v5, v0

    .line 21
    iput v5, p0, Ll0/j;->f:I

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v5, -0x1

    .line 22
    aget-byte v6, v4, v6

    if-ne v6, v3, :cond_7

    aget-byte v5, v4, v5

    if-ne v5, v3, :cond_7

    .line 23
    sget-object v5, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {v5, v4, v0, v1}, Lk0/lt;->U2([BII)V

    .line 24
    iget v0, p0, Ll0/j;->f:I

    iput v0, p0, Ll0/j;->e:I

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 25
    iput v0, p0, Ll0/j;->e:I

    .line 26
    :goto_2
    iput v2, p0, Ll0/j;->f:I

    .line 27
    :cond_8
    :goto_3
    iget v0, p0, Ll0/j;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ll0/j;->e:I

    goto :goto_1

    :cond_9
    :goto_4
    if-eqz v0, :cond_b

    .line 28
    iget p1, p0, Ll0/j;->d:I

    sub-int/2addr p1, v0

    iput p1, p0, Ll0/j;->d:I

    if-lez p1, :cond_a

    .line 29
    iget-object v1, p0, Ll0/j;->c:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    :cond_a
    iput v2, p0, Ll0/j;->e:I

    :cond_b
    :goto_5
    return-void
.end method

.method public varargs f([I)V
    .locals 0

    return-void
.end method

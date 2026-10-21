.class public abstract Lz/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lz/j;->a:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lz/j;->b:I

    .line 4
    iput v0, p0, Lz/j;->c:I

    .line 5
    iput v0, p0, Lz/j;->d:I

    return-void
.end method


# virtual methods
.method public abstract a([BII)V
.end method

.method public b([B)V
    .locals 7

    if-eqz p1, :cond_e

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget v0, p0, Lz/j;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lz/j;->b:I

    .line 4
    iput v2, p0, Lz/j;->c:I

    .line 5
    iput v2, p0, Lz/j;->d:I

    .line 6
    :cond_1
    iget-object v0, p0, Lz/j;->a:[B

    iget v1, p0, Lz/j;->b:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lz/j;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lz/j;->b:I

    .line 8
    iget p1, p0, Lz/j;->d:I

    const/4 v1, 0x3

    const/4 v3, 0x4

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lz/j;->a:[B

    const/4 v0, 0x2

    aget-byte p1, p1, v0

    move v4, v1

    .line 10
    :goto_0
    iget v5, p0, Lz/j;->d:I

    if-ge v4, v5, :cond_3

    .line 11
    iget-object v5, p0, Lz/j;->a:[B

    aget-byte v5, v5, v4

    xor-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v4, p0, Lz/j;->a:[B

    aget-byte v6, v4, v5

    if-ne p1, v6, :cond_4

    sub-int/2addr v5, v3

    .line 13
    invoke-virtual {p0, v4, v3, v5}, Lz/j;->a([BII)V

    .line 14
    iget p1, p0, Lz/j;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lz/j;->c:I

    goto :goto_1

    .line 15
    :cond_4
    iput v0, p0, Lz/j;->c:I

    .line 16
    :goto_1
    iput v2, p0, Lz/j;->d:I

    .line 17
    :cond_5
    iget p1, p0, Lz/j;->b:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lz/j;->c:I

    if-ge v0, p1, :cond_b

    .line 18
    iget-object v1, p0, Lz/j;->a:[B

    aget-byte v4, v1, v0

    const/16 v5, -0x78

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    const/16 v5, 0x55

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v0, 0x2

    .line 19
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, v0, 0x3

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    iput v4, p0, Lz/j;->d:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_6

    .line 20
    iput v2, p0, Lz/j;->d:I

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v0, 0x4

    add-int/2addr v4, v5

    .line 21
    iput v4, p0, Lz/j;->d:I

    .line 22
    iget v5, p0, Lz/j;->b:I

    if-lt v4, v5, :cond_7

    sub-int/2addr v4, v0

    .line 23
    iput v4, p0, Lz/j;->d:I

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v0, 0x2

    .line 24
    aget-byte v1, v1, v4

    add-int/lit8 v0, v0, 0x3

    .line 25
    :goto_3
    iget v4, p0, Lz/j;->d:I

    if-ge v0, v4, :cond_8

    .line 26
    iget-object v4, p0, Lz/j;->a:[B

    aget-byte v4, v4, v0

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 27
    :cond_8
    iget-object v0, p0, Lz/j;->a:[B

    aget-byte v5, v0, v4

    if-ne v1, v5, :cond_9

    .line 28
    iget v1, p0, Lz/j;->c:I

    add-int/lit8 v5, v1, 0x4

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p0, v0, v5, v4}, Lz/j;->a([BII)V

    .line 29
    iget v0, p0, Lz/j;->d:I

    iput v0, p0, Lz/j;->c:I

    goto :goto_4

    .line 30
    :cond_9
    iget v0, p0, Lz/j;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz/j;->c:I

    .line 31
    :goto_4
    iput v2, p0, Lz/j;->d:I

    .line 32
    :cond_a
    :goto_5
    iget v0, p0, Lz/j;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz/j;->c:I

    goto :goto_2

    :cond_b
    :goto_6
    if-eqz v0, :cond_d

    .line 33
    iget p1, p0, Lz/j;->b:I

    sub-int/2addr p1, v0

    iput p1, p0, Lz/j;->b:I

    if-eqz p1, :cond_c

    .line 34
    iget-object v1, p0, Lz/j;->a:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_c
    iput v2, p0, Lz/j;->c:I

    :cond_d
    return-void

    :cond_e
    :goto_7
    const-wide/16 v0, 0x64

    .line 36
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

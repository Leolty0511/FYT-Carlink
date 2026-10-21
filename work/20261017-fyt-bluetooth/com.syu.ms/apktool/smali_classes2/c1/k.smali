.class public Lc1/k;
.super Lc1/p;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final b:[B

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc1/p;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lc1/k;->b:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc1/k;->c:I

    .line 4
    iput v0, p0, Lc1/k;->d:I

    .line 5
    iput v0, p0, Lc1/k;->e:I

    return-void
.end method


# virtual methods
.method public L2()V
    .locals 0

    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 2

    .line 1
    sget-object v0, Lz/a;->p:Lo1/f0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo1/f0;->e(Lo1/q;)V

    return-void
.end method

.method public O2([BII)V
    .locals 8

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "radar data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ln1/b;->s(Ljava/lang/String;)V

    .line 2
    aget-byte p3, p1, p2

    const/16 v0, 0x22

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p3, v0, :cond_5

    const/16 v0, 0x23

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq p3, v0, :cond_1

    const/16 v0, 0x26

    if-eq p3, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 p3, 0x9

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 3
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v2

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    aput p1, v0, v3

    invoke-static {p3, v0}, Lc1/b;->i(I[I)V

    goto/16 :goto_0

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 4
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    .line 5
    sget-object v0, Lc1/a;->d:[I

    aget v6, v0, v3

    if-eq v6, p3, :cond_2

    .line 6
    aput p3, v0, v3

    const/16 v6, 0xe

    new-array v7, v3, [I

    aput p3, v7, v2

    .line 7
    invoke-static {v6, v7}, Lu0/d;->I3(I[I)V

    :cond_2
    add-int/lit8 p3, p2, 0x3

    .line 8
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    .line 9
    aget v6, v0, v5

    if-eq v6, p3, :cond_3

    .line 10
    aput p3, v0, v5

    const/16 v5, 0xf

    new-array v6, v3, [I

    aput p3, v6, v2

    .line 11
    invoke-static {v5, v6}, Lu0/d;->I3(I[I)V

    :cond_3
    add-int/lit8 p3, p2, 0x4

    .line 12
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    .line 13
    aget v5, v0, v4

    if-eq v5, p3, :cond_4

    .line 14
    aput p3, v0, v4

    const/16 v4, 0x10

    new-array v5, v3, [I

    aput p3, v5, v2

    .line 15
    invoke-static {v4, v5}, Lu0/d;->I3(I[I)V

    :cond_4
    add-int/2addr p2, v1

    .line 16
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/4 p2, 0x4

    .line 17
    aget p3, v0, p2

    if-eq p3, p1, :cond_9

    .line 18
    aput p1, v0, p2

    const/16 p2, 0x11

    new-array p3, v3, [I

    aput p1, p3, v2

    .line 19
    invoke-static {p2, p3}, Lu0/d;->I3(I[I)V

    goto :goto_0

    :cond_5
    add-int/lit8 p3, p2, 0x2

    .line 20
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    .line 21
    sget-object v0, Lc1/a;->d:[I

    aget v4, v0, v1

    if-eq v4, p3, :cond_6

    .line 22
    aput p3, v0, v1

    const/16 v4, 0x12

    new-array v5, v3, [I

    aput p3, v5, v2

    .line 23
    invoke-static {v4, v5}, Lu0/d;->I3(I[I)V

    :cond_6
    add-int/lit8 p3, p2, 0x3

    .line 24
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    const/4 v4, 0x6

    .line 25
    aget v5, v0, v4

    if-eq v5, p3, :cond_7

    .line 26
    aput p3, v0, v4

    const/16 v4, 0x13

    new-array v5, v3, [I

    aput p3, v5, v2

    .line 27
    invoke-static {v4, v5}, Lu0/d;->I3(I[I)V

    :cond_7
    add-int/lit8 p3, p2, 0x4

    .line 28
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    const/4 v4, 0x7

    .line 29
    aget v5, v0, v4

    if-eq v5, p3, :cond_8

    .line 30
    aput p3, v0, v4

    const/16 v4, 0x14

    new-array v5, v3, [I

    aput p3, v5, v2

    .line 31
    invoke-static {v4, v5}, Lu0/d;->I3(I[I)V

    :cond_8
    add-int/2addr p2, v1

    .line 32
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x8

    .line 33
    aget p3, v0, p2

    if-eq p3, p1, :cond_9

    .line 34
    aput p1, v0, p2

    const/16 p2, 0x15

    new-array p3, v3, [I

    aput p1, p3, v2

    .line 35
    invoke-static {p2, p3}, Lu0/d;->I3(I[I)V

    :cond_9
    :goto_0
    return-void
.end method

.method public P0(Ly/b;I)V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 1

    const/4 p1, 0x0

    const/4 p3, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p2, p3, [I

    .line 1
    sget-object p3, Lc1/a;->d:[I

    const/16 v0, 0x8

    aget p3, p3, v0

    aput p3, p2, p1

    invoke-static {v0, p2}, Lc1/b;->i(I[I)V

    goto :goto_0

    :pswitch_1
    new-array p2, p3, [I

    .line 2
    sget-object p3, Lc1/a;->d:[I

    const/4 v0, 0x7

    aget p3, p3, v0

    aput p3, p2, p1

    invoke-static {v0, p2}, Lc1/b;->i(I[I)V

    goto :goto_0

    :pswitch_2
    new-array p2, p3, [I

    .line 3
    sget-object p3, Lc1/a;->d:[I

    const/4 v0, 0x6

    aget p3, p3, v0

    aput p3, p2, p1

    invoke-static {v0, p2}, Lc1/b;->i(I[I)V

    goto :goto_0

    :pswitch_3
    new-array p2, p3, [I

    .line 4
    sget-object p3, Lc1/a;->d:[I

    const/4 v0, 0x5

    aget p3, p3, v0

    aput p3, p2, p1

    invoke-static {v0, p2}, Lc1/b;->i(I[I)V

    goto :goto_0

    :pswitch_4
    new-array p2, p3, [I

    .line 5
    sget-object p3, Lc1/a;->d:[I

    const/4 v0, 0x4

    aget p3, p3, v0

    aput p3, p2, p1

    invoke-static {v0, p2}, Lc1/b;->i(I[I)V

    goto :goto_0

    :pswitch_5
    new-array p2, p3, [I

    .line 6
    sget-object p3, Lc1/a;->d:[I

    const/4 v0, 0x3

    aget p3, p3, v0

    aput p3, p2, p1

    invoke-static {v0, p2}, Lc1/b;->i(I[I)V

    goto :goto_0

    :pswitch_6
    new-array p2, p3, [I

    .line 7
    sget-object p3, Lc1/a;->d:[I

    const/4 v0, 0x2

    aget p3, p3, v0

    aput p3, p2, p1

    invoke-static {v0, p2}, Lc1/b;->i(I[I)V

    goto :goto_0

    :pswitch_7
    new-array p2, p3, [I

    .line 8
    sget-object v0, Lc1/a;->d:[I

    aget v0, v0, p3

    aput v0, p2, p1

    invoke-static {p3, p2}, Lc1/b;->i(I[I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b([B)V
    .locals 6

    if-eqz p1, :cond_e

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget v0, p0, Lc1/k;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lc1/k;->c:I

    .line 4
    iput v2, p0, Lc1/k;->d:I

    .line 5
    iput v2, p0, Lc1/k;->e:I

    .line 6
    :cond_1
    iget-object v0, p0, Lc1/k;->b:[B

    iget v1, p0, Lc1/k;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lc1/k;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lc1/k;->c:I

    .line 8
    iget p1, p0, Lc1/k;->e:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lc1/k;->b:[B

    aget-byte p1, p1, v3

    move v0, v1

    .line 10
    :goto_0
    iget v4, p0, Lc1/k;->e:I

    if-ge v0, v4, :cond_3

    .line 11
    iget-object v4, p0, Lc1/k;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    not-int p1, p1

    int-to-byte p1, p1

    .line 12
    iget-object v0, p0, Lc1/k;->b:[B

    aget-byte v5, v0, v4

    if-ne p1, v5, :cond_4

    sub-int/2addr v4, v3

    .line 13
    invoke-virtual {p0, v0, v3, v4}, Lc1/k;->O2([BII)V

    .line 14
    iget p1, p0, Lc1/k;->e:I

    add-int/2addr p1, v3

    iput p1, p0, Lc1/k;->d:I

    goto :goto_1

    .line 15
    :cond_4
    iput v3, p0, Lc1/k;->d:I

    .line 16
    :goto_1
    iput v2, p0, Lc1/k;->e:I

    .line 17
    :cond_5
    iget p1, p0, Lc1/k;->c:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lc1/k;->d:I

    if-ge v0, p1, :cond_b

    .line 18
    iget-object v1, p0, Lc1/k;->b:[B

    aget-byte v4, v1, v0

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v0, 0x2

    .line 19
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lc1/k;->e:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_6

    .line 20
    iput v2, p0, Lc1/k;->e:I

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v0, 0x3

    add-int/2addr v4, v5

    .line 21
    iput v4, p0, Lc1/k;->e:I

    .line 22
    iget v5, p0, Lc1/k;->c:I

    if-lt v4, v5, :cond_7

    sub-int/2addr v4, v0

    .line 23
    iput v4, p0, Lc1/k;->e:I

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v0, 0x1

    .line 24
    aget-byte v1, v1, v4

    add-int/lit8 v0, v0, 0x2

    .line 25
    :goto_3
    iget v4, p0, Lc1/k;->e:I

    if-ge v0, v4, :cond_8

    .line 26
    iget-object v4, p0, Lc1/k;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    not-int v0, v1

    int-to-byte v0, v0

    .line 27
    iget-object v1, p0, Lc1/k;->b:[B

    aget-byte v5, v1, v4

    if-ne v0, v5, :cond_9

    .line 28
    iget v0, p0, Lc1/k;->d:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v5, v4}, Lc1/k;->O2([BII)V

    .line 29
    iget v0, p0, Lc1/k;->e:I

    iput v0, p0, Lc1/k;->d:I

    goto :goto_4

    .line 30
    :cond_9
    iget v0, p0, Lc1/k;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lc1/k;->d:I

    .line 31
    :goto_4
    iput v2, p0, Lc1/k;->e:I

    .line 32
    :cond_a
    :goto_5
    iget v0, p0, Lc1/k;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lc1/k;->d:I

    goto :goto_2

    :cond_b
    :goto_6
    if-eqz v0, :cond_d

    .line 33
    iget p1, p0, Lc1/k;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lc1/k;->c:I

    if-eqz p1, :cond_c

    .line 34
    iget-object v1, p0, Lc1/k;->b:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_c
    iput v2, p0, Lc1/k;->d:I

    :cond_d
    return-void

    :cond_e
    :goto_7
    const-wide/16 v0, 0x64

    .line 36
    invoke-static {v0, v1}, La/i;->a0(J)V

    .line 37
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string v0, "radar data is null"

    invoke-virtual {p1, v0}, Ln1/b;->s(Ljava/lang/String;)V

    return-void
.end method

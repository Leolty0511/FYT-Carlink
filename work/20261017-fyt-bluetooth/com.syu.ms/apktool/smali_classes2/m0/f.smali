.class public Lm0/f;
.super Lm0/a;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:[B

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lm0/f;->a:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lm0/f;->b:I

    .line 4
    iput v0, p0, Lm0/f;->c:I

    .line 5
    iput v0, p0, Lm0/f;->d:I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lm0/f;->e:I

    iput v0, p0, Lm0/f;->f:I

    .line 7
    new-instance v0, Lm0/f$a;

    invoke-direct {v0, p0}, Lm0/f$a;-><init>(Lm0/f;)V

    iput-object v0, p0, Lm0/f;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic N2(Lm0/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/f;->e:I

    return p0
.end method

.method public static synthetic O2(Lm0/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/f;->f:I

    return p0
.end method

.method public static synthetic P2(Lm0/f;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/f;->f:I

    return p1
.end method

.method public static synthetic Q2(Lm0/f;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/f;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/f;->f:I

    return v0
.end method

.method public static synthetic R2(Lm0/f;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm0/f;->T2()V

    return-void
.end method

.method public static synthetic S2(Lm0/f;[B)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lm0/f;->W2([B)V

    return-void
.end method


# virtual methods
.method public K2()V
    .locals 0

    return-void
.end method

.method public L2()V
    .locals 1

    .line 1
    iget v0, p0, Lm0/f;->e:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm0/f;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lm0/f;->e:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lm0/f;->h:[B

    const/4 v0, 0x0

    .line 5
    sput v0, Lm0/b;->e:I

    return-void
.end method

.method public final T2()V
    .locals 0

    .line 1
    invoke-static {}, Lm0/d;->f()V

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte p3, p1, p2

    const/4 v0, 0x4

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-array p1, v4, [I

    const/4 p2, 0x5

    aput p2, p1, v5

    .line 2
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    new-array p1, v4, [B

    const/16 p2, -0x1c

    aput-byte p2, p1, v5

    .line 3
    invoke-virtual {p0, p1}, Lm0/f;->X2([B)V

    .line 4
    iput v1, p0, Lm0/f;->e:I

    goto/16 :goto_1

    :pswitch_1
    new-array p1, v4, [I

    aput v0, p1, v5

    .line 5
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    new-array p1, v3, [B

    const/16 p2, -0x1d

    aput-byte p2, p1, v5

    .line 6
    iget p2, p0, Lm0/f;->g:I

    shr-int/lit8 p3, p2, 0x8

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p1, v4

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v2

    invoke-virtual {p0, p1}, Lm0/f;->X2([B)V

    goto/16 :goto_1

    .line 7
    :pswitch_2
    iput v4, p0, Lm0/f;->e:I

    .line 8
    iget-object p3, p0, Lm0/f;->h:[B

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, p2, 0x3

    .line 9
    aget-byte v7, p1, v6

    add-int/2addr p2, v0

    aget-byte v0, p1, p2

    invoke-static {v7, v0}, Lo1/p0;->c(BB)I

    move-result v0

    shl-int/lit8 v7, v0, 0x8

    .line 10
    array-length v8, p3

    if-ge v7, v8, :cond_3

    .line 11
    array-length v8, p3

    sub-int/2addr v8, v7

    const/16 v9, 0x100

    if-le v8, v9, :cond_1

    move v8, v9

    :cond_1
    add-int/lit8 v9, v8, 0x3

    .line 12
    new-array v9, v9, [B

    const/16 v10, -0x1e

    .line 13
    aput-byte v10, v9, v5

    add-int v10, v7, v8

    .line 14
    array-length v11, p3

    if-ne v10, v11, :cond_2

    .line 15
    aput-byte v1, v9, v4

    aput-byte v1, v9, v2

    goto :goto_0

    .line 16
    :cond_2
    aget-byte v1, p1, v6

    aput-byte v1, v9, v4

    aget-byte p1, p1, p2

    aput-byte p1, v9, v2

    .line 17
    :goto_0
    invoke-static {p3, v7, v9, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    invoke-virtual {p0, v9}, Lm0/f;->X2([B)V

    :cond_3
    new-array p1, v3, [I

    aput v3, p1, v5

    add-int/2addr v0, v4

    aput v0, p1, v4

    .line 19
    array-length p2, p3

    add-int/lit16 p2, p2, 0xff

    shr-int/lit8 p2, p2, 0x8

    aput p2, p1, v2

    const/4 p2, 0x0

    invoke-static {v5, p1, p2, p2}, Lm0/d;->k(I[I[F[Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    new-array p1, v4, [I

    aput v2, p1, v5

    .line 20
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    .line 21
    iget p1, p0, Lm0/f;->e:I

    if-eq p1, v4, :cond_4

    new-array p1, v4, [B

    const/16 p2, -0x1f

    aput-byte p2, p1, v5

    .line 22
    invoke-virtual {p0, p1}, Lm0/f;->X2([B)V

    goto :goto_1

    .line 23
    :cond_4
    iput v1, p0, Lm0/f;->e:I

    new-array p1, v4, [I

    const/4 p2, 0x6

    aput p2, p1, v5

    .line 24
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final V2(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget v0, p0, Lm0/f;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lo1/p0;->f(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lm0/f;->h:[B

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    new-array p1, v0, [I

    aput v1, p1, v1

    .line 3
    invoke-static {v1, p1}, Lm0/d;->j(I[I)V

    return-void

    :cond_1
    move p1, v1

    move v2, p1

    .line 4
    :goto_0
    iget-object v3, p0, Lm0/f;->h:[B

    array-length v4, v3

    if-ge p1, v4, :cond_2

    .line 5
    aget-byte v3, v3, p1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const p1, 0xffff

    and-int/2addr p1, v2

    .line 6
    iput p1, p0, Lm0/f;->g:I

    new-array p1, v0, [I

    aput v0, p1, v1

    .line 7
    invoke-static {v1, p1}, Lm0/d;->j(I[I)V

    .line 8
    sput v0, Lm0/b;->e:I

    .line 9
    invoke-virtual {p0}, Lm0/f;->T2()V

    .line 10
    iput v1, p0, Lm0/f;->f:I

    iput v1, p0, Lm0/f;->e:I

    .line 11
    iget-object p1, p0, Lm0/f;->i:Ljava/lang/Runnable;

    invoke-static {p1}, Lm0/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final varargs W2([B)V
    .locals 8

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    new-array v1, v0, [B

    const/16 v2, -0x56

    const/4 v3, 0x0

    .line 2
    aput-byte v2, v1, v3

    const/16 v2, 0x55

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 3
    aget-byte v2, p1, v3

    const/4 v5, 0x2

    aput-byte v2, v1, v5

    .line 4
    array-length v2, p1

    sub-int/2addr v2, v4

    int-to-byte v2, v2

    const/4 v6, 0x3

    aput-byte v2, v1, v6

    move v2, v4

    .line 5
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_0

    add-int/lit8 v6, v2, 0x3

    .line 6
    aget-byte v7, p1, v2

    aput-byte v7, v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-ge v5, p1, :cond_1

    .line 7
    aget-byte p1, v1, v5

    add-int/2addr v3, p1

    int-to-byte v3, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    not-int v0, v3

    int-to-byte v0, v0

    .line 8
    aput-byte v0, v1, p1

    .line 9
    invoke-static {v1}, Lm0/d;->m([B)V

    return-void
.end method

.method public final varargs X2([B)V
    .locals 8

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x5

    new-array v1, v0, [B

    const/16 v2, -0x56

    const/4 v3, 0x0

    .line 2
    aput-byte v2, v1, v3

    const/16 v2, 0x55

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 3
    aget-byte v2, p1, v3

    const/4 v5, 0x2

    aput-byte v2, v1, v5

    sub-int/2addr v0, v4

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    const/4 v6, 0x3

    .line 4
    aput-byte v2, v1, v6

    int-to-byte v2, v0

    const/4 v6, 0x4

    aput-byte v2, v1, v6

    move v2, v4

    .line 5
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_0

    add-int/lit8 v6, v2, 0x4

    .line 6
    aget-byte v7, p1, v2

    aput-byte v7, v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v5, v0, :cond_1

    .line 7
    aget-byte p1, v1, v5

    add-int/2addr v3, p1

    int-to-byte v3, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    not-int p1, v3

    add-int/2addr p1, v4

    int-to-byte p1, p1

    .line 8
    aput-byte p1, v1, v0

    .line 9
    invoke-static {v1}, Lm0/d;->m([B)V

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1
    invoke-static {p4, p1}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2
    aget-object p1, p4, p1

    invoke-virtual {p0, p1}, Lm0/f;->V2(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b([B)V
    .locals 6

    .line 1
    sget-object v0, Lz/a;->x:Lo1/q;

    invoke-interface {v0, p1}, Lo1/q;->b([B)V

    if-eqz p1, :cond_d

    .line 2
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    iget v0, p0, Lm0/f;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 4
    iput v2, p0, Lm0/f;->b:I

    .line 5
    iput v2, p0, Lm0/f;->c:I

    .line 6
    iput v2, p0, Lm0/f;->d:I

    .line 7
    :cond_1
    iget-object v0, p0, Lm0/f;->a:[B

    iget v1, p0, Lm0/f;->b:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v0, p0, Lm0/f;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lm0/f;->b:I

    .line 9
    iget p1, p0, Lm0/f;->d:I

    const/4 v1, 0x2

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object p1, p0, Lm0/f;->a:[B

    aget-byte p1, p1, v1

    const/4 v0, 0x3

    .line 11
    :goto_0
    iget v3, p0, Lm0/f;->d:I

    if-ge v0, v3, :cond_3

    .line 12
    iget-object v3, p0, Lm0/f;->a:[B

    aget-byte v3, v3, v0

    add-int/2addr p1, v3

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    not-int p1, p1

    add-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    .line 13
    iget-object v0, p0, Lm0/f;->a:[B

    aget-byte v4, v0, v3

    if-ne p1, v4, :cond_4

    sub-int/2addr v3, v1

    .line 14
    invoke-virtual {p0, v0, v1, v3}, Lm0/f;->U2([BII)V

    .line 15
    iget p1, p0, Lm0/f;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lm0/f;->c:I

    goto :goto_1

    .line 16
    :cond_4
    iput v1, p0, Lm0/f;->c:I

    .line 17
    :goto_1
    iput v2, p0, Lm0/f;->d:I

    .line 18
    :cond_5
    iget p1, p0, Lm0/f;->b:I

    add-int/lit8 p1, p1, -0x4

    :goto_2
    iget v0, p0, Lm0/f;->c:I

    if-ge v0, p1, :cond_b

    .line 19
    iget-object v3, p0, Lm0/f;->a:[B

    aget-byte v4, v3, v0

    const/16 v5, -0x56

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v3, v4

    const/16 v5, 0x55

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v0, 0x3

    .line 20
    aget-byte v4, v3, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, v0, 0x4

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    iput v4, p0, Lm0/f;->d:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_6

    .line 21
    iput v2, p0, Lm0/f;->d:I

    goto :goto_5

    :cond_6
    add-int/2addr v4, v0

    .line 22
    iput v4, p0, Lm0/f;->d:I

    .line 23
    iget v5, p0, Lm0/f;->b:I

    if-lt v4, v5, :cond_7

    sub-int/2addr v4, v0

    .line 24
    iput v4, p0, Lm0/f;->d:I

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v0, 0x2

    .line 25
    aget-byte v3, v3, v4

    add-int/lit8 v0, v0, 0x3

    .line 26
    :goto_3
    iget v4, p0, Lm0/f;->d:I

    if-ge v0, v4, :cond_8

    .line 27
    iget-object v4, p0, Lm0/f;->a:[B

    aget-byte v4, v4, v0

    add-int/2addr v3, v4

    int-to-byte v3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    not-int v0, v3

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 28
    iget-object v3, p0, Lm0/f;->a:[B

    aget-byte v5, v3, v4

    if-ne v0, v5, :cond_9

    .line 29
    iget v0, p0, Lm0/f;->c:I

    add-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v0

    sub-int/2addr v4, v1

    invoke-virtual {p0, v3, v5, v4}, Lm0/f;->U2([BII)V

    .line 30
    iget v0, p0, Lm0/f;->d:I

    iput v0, p0, Lm0/f;->c:I

    goto :goto_4

    .line 31
    :cond_9
    iget v0, p0, Lm0/f;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm0/f;->c:I

    .line 32
    :goto_4
    iput v2, p0, Lm0/f;->d:I

    .line 33
    :cond_a
    :goto_5
    iget v0, p0, Lm0/f;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm0/f;->c:I

    goto :goto_2

    :cond_b
    :goto_6
    if-eqz v0, :cond_d

    .line 34
    iget p1, p0, Lm0/f;->b:I

    sub-int/2addr p1, v0

    iput p1, p0, Lm0/f;->b:I

    if-eqz p1, :cond_c

    .line 35
    iget-object v1, p0, Lm0/f;->a:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    :cond_c
    iput v2, p0, Lm0/f;->c:I

    :cond_d
    :goto_7
    return-void
.end method

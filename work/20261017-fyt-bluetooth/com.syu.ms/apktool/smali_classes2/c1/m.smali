.class public Lc1/m;
.super Lc1/p;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public final f:[I

.field public final g:[I

.field public final h:[I

.field public final i:[I

.field public final j:[I

.field public final k:[I

.field public final l:[I

.field public final m:[I

.field public final n:[I

.field public o:Lo1/l0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc1/p;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lc1/m;->b:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc1/m;->c:I

    .line 4
    iput v0, p0, Lc1/m;->d:I

    .line 5
    iput v0, p0, Lc1/m;->e:I

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Lc1/m;->f:[I

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Lc1/m;->g:[I

    new-array v1, v0, [I

    .line 8
    iput-object v1, p0, Lc1/m;->h:[I

    new-array v1, v0, [I

    .line 9
    iput-object v1, p0, Lc1/m;->i:[I

    new-array v1, v0, [I

    .line 10
    iput-object v1, p0, Lc1/m;->j:[I

    new-array v1, v0, [I

    .line 11
    iput-object v1, p0, Lc1/m;->k:[I

    new-array v1, v0, [I

    .line 12
    iput-object v1, p0, Lc1/m;->l:[I

    new-array v1, v0, [I

    .line 13
    iput-object v1, p0, Lc1/m;->m:[I

    new-array v0, v0, [I

    .line 14
    iput-object v0, p0, Lc1/m;->n:[I

    .line 15
    new-instance v0, Lo1/l0;

    invoke-direct {v0}, Lo1/l0;-><init>()V

    iput-object v0, p0, Lc1/m;->o:Lo1/l0;

    return-void
.end method


# virtual methods
.method public L2()V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0, v1, v1, v1}, Lc1/m;->Z0(I[I[F[Ljava/lang/String;)V

    .line 2
    sget-object v0, Lc1/a;->d:[I

    const/4 v1, 0x1

    const/16 v2, 0x12

    aput v1, v0, v2

    new-array v1, v1, [I

    const/4 v3, 0x0

    .line 3
    aget v0, v0, v2

    aput v0, v1, v3

    invoke-static {v2, v1}, Lc1/b;->i(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
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

.method public final O2([BII)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc1/m;->o:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    .line 2
    aget-byte p1, p1, p2

    const/16 v0, 0x62

    const/4 v1, 0x2

    const/16 v2, 0xff

    const/4 v3, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x63

    if-eq p1, v0, :cond_2

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-le p3, v1, :cond_1

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    .line 3
    invoke-virtual {p0, p2, p3}, Lc1/m;->R2(II)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lc1/m;->b:[B

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_5

    .line 5
    sget-object p1, Lc1/a;->d:[I

    const/16 p2, 0xf

    const/4 p3, 0x0

    aput p3, p1, p2

    new-array p1, v3, [I

    aput p3, p1, p3

    .line 6
    invoke-static {p2, p1}, Lc1/b;->i(I[I)V

    goto :goto_0

    :cond_2
    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    .line 7
    invoke-virtual {p0, p2, p3}, Lc1/m;->Q2(II)V

    goto :goto_0

    :cond_3
    if-le p3, v1, :cond_4

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    .line 8
    invoke-virtual {p0, p2, p3}, Lc1/m;->S2(II)V

    goto :goto_0

    .line 9
    :cond_4
    iget-object p1, p0, Lc1/m;->b:[B

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    const/16 p2, 0xaa

    if-ne p1, p2, :cond_5

    const/4 p1, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p0, v3, p1, p1, p1}, Lc1/m;->Z0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method public P0(Ly/b;I)V
    .locals 0

    return-void
.end method

.method public final varargs P2(I[I)V
    .locals 7

    .line 1
    array-length v0, p2

    const/4 v1, 0x5

    add-int/2addr v0, v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 2
    new-array v3, v0, [B

    const/16 v4, -0x56

    const/4 v5, 0x0

    .line 3
    aput-byte v4, v3, v5

    const/16 v4, 0x41

    .line 4
    aput-byte v4, v3, v2

    const/4 v4, 0x2

    const/16 v6, -0x5f

    .line 5
    aput-byte v6, v3, v4

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    const/4 v6, 0x3

    .line 6
    aput-byte v4, v3, v6

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v4, 0x4

    .line 7
    aput-byte p1, v3, v4

    move p1, v5

    .line 8
    :goto_0
    array-length v4, p2

    if-ge p1, v4, :cond_0

    add-int v4, v1, p1

    .line 9
    aget v6, p2, p1

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v2

    .line 10
    aput-byte v5, v3, v0

    :goto_1
    if-ge v5, v0, :cond_1

    .line 11
    aget-byte p1, v3, v0

    aget-byte p2, v3, v5

    add-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, v3, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 12
    :cond_1
    sget-object p1, Lz/a;->f:Lo1/e0;

    invoke-virtual {p1, v3}, Lo1/e0;->i([B)V

    return-void
.end method

.method public Q2(II)V
    .locals 17

    move-object/from16 v6, p0

    move/from16 v0, p2

    .line 1
    iget-object v1, v6, Lc1/m;->b:[B

    aget-byte v2, v1, p1

    and-int/lit16 v2, v2, 0xff

    const/16 v7, 0x9

    const/16 v8, 0xd

    const/4 v9, 0x5

    const/4 v10, 0x6

    const/16 v11, 0x8

    const/4 v12, 0x4

    const/4 v13, 0x7

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v2, v14, :cond_0

    if-eq v2, v12, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    aget-byte v0, v1, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, p1, 0x1

    .line 3
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v16, p1, 0x2

    aget-byte v5, v1, v16

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v11

    or-int/2addr v2, v5

    add-int/lit8 v5, p1, 0x3

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    .line 4
    iget-object v2, v6, Lc1/m;->f:[I

    aput v1, v2, v0

    new-array v2, v3, [I

    aput v0, v2, v15

    aput v1, v2, v4

    .line 5
    invoke-static {v9, v2}, Lc1/b;->i(I[I)V

    .line 6
    iget-object v1, v6, Lc1/m;->b:[B

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    shl-int/2addr v2, v11

    add-int/lit8 v5, p1, 0x5

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    .line 7
    iget-object v2, v6, Lc1/m;->g:[I

    aput v1, v2, v0

    new-array v1, v3, [I

    aput v0, v1, v15

    .line 8
    aget v2, v2, v0

    aput v2, v1, v4

    invoke-static {v10, v1}, Lc1/b;->i(I[I)V

    .line 9
    iget-object v1, v6, Lc1/m;->b:[B

    add-int/lit8 v2, p1, 0x6

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x32

    .line 10
    iget-object v2, v6, Lc1/m;->h:[I

    aput v1, v2, v0

    new-array v2, v3, [I

    aput v0, v2, v15

    aput v1, v2, v4

    .line 11
    invoke-static {v13, v2}, Lc1/b;->i(I[I)V

    .line 12
    iget-object v1, v6, Lc1/m;->b:[B

    add-int/lit8 v2, p1, 0x7

    aget-byte v1, v1, v2

    shr-int/2addr v1, v13

    and-int/2addr v1, v4

    .line 13
    iget-object v5, v6, Lc1/m;->i:[I

    aput v1, v5, v0

    new-array v5, v3, [I

    aput v0, v5, v15

    aput v1, v5, v4

    .line 14
    invoke-static {v11, v5}, Lc1/b;->i(I[I)V

    .line 15
    iget-object v1, v6, Lc1/m;->b:[B

    aget-byte v1, v1, v2

    shr-int/2addr v1, v10

    and-int/2addr v1, v4

    .line 16
    iget-object v5, v6, Lc1/m;->n:[I

    aput v1, v5, v0

    new-array v5, v3, [I

    aput v0, v5, v15

    aput v1, v5, v4

    .line 17
    invoke-static {v8, v5}, Lc1/b;->i(I[I)V

    .line 18
    iget-object v1, v6, Lc1/m;->b:[B

    aget-byte v1, v1, v2

    shr-int/2addr v1, v12

    and-int/2addr v1, v4

    .line 19
    iget-object v5, v6, Lc1/m;->j:[I

    aput v1, v5, v0

    new-array v5, v3, [I

    aput v0, v5, v15

    aput v1, v5, v4

    .line 20
    invoke-static {v7, v5}, Lc1/b;->i(I[I)V

    .line 21
    iget-object v1, v6, Lc1/m;->b:[B

    aget-byte v1, v1, v2

    shr-int/2addr v1, v14

    and-int/2addr v1, v4

    .line 22
    iget-object v5, v6, Lc1/m;->k:[I

    aput v1, v5, v0

    new-array v5, v3, [I

    aput v0, v5, v15

    aput v1, v5, v4

    const/16 v1, 0xa

    .line 23
    invoke-static {v1, v5}, Lc1/b;->i(I[I)V

    .line 24
    iget-object v1, v6, Lc1/m;->b:[B

    aget-byte v1, v1, v2

    shr-int/2addr v1, v3

    and-int/2addr v1, v4

    .line 25
    iget-object v5, v6, Lc1/m;->l:[I

    aput v1, v5, v0

    new-array v5, v3, [I

    aput v0, v5, v15

    aput v1, v5, v4

    const/16 v1, 0xb

    .line 26
    invoke-static {v1, v5}, Lc1/b;->i(I[I)V

    .line 27
    iget-object v1, v6, Lc1/m;->b:[B

    aget-byte v1, v1, v2

    and-int/2addr v1, v14

    .line 28
    iget-object v5, v6, Lc1/m;->m:[I

    aput v1, v5, v0

    new-array v5, v3, [I

    aput v0, v5, v15

    aput v1, v5, v4

    const/16 v0, 0xc

    .line 29
    invoke-static {v0, v5}, Lc1/b;->i(I[I)V

    .line 30
    iget-object v0, v6, Lc1/m;->b:[B

    aget-byte v1, v0, v2

    shr-int/2addr v1, v13

    and-int/2addr v1, v4

    aget-byte v5, v0, v2

    shr-int/2addr v5, v12

    and-int/2addr v5, v4

    aget-byte v7, v0, v2

    shr-int/2addr v7, v14

    and-int/2addr v7, v4

    aget-byte v8, v0, v2

    shr-int/lit8 v3, v8, 0x2

    and-int/2addr v4, v3

    aget-byte v0, v0, v2

    and-int/lit8 v8, v0, 0x3

    move-object/from16 v0, p0

    move v2, v5

    move v3, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lc1/m;->T2(IIIII)V

    goto/16 :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    goto/16 :goto_0

    :cond_2
    if-le v0, v3, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 31
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, p1, 0x2

    .line 32
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v11

    or-int/2addr v2, v5

    add-int/lit8 v5, p1, 0x4

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    .line 33
    iget-object v2, v6, Lc1/m;->f:[I

    aput v1, v2, v0

    new-array v2, v3, [I

    aput v0, v2, v15

    aput v1, v2, v4

    .line 34
    invoke-static {v9, v2}, Lc1/b;->i(I[I)V

    .line 35
    iget-object v1, v6, Lc1/m;->b:[B

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    shl-int/2addr v2, v11

    add-int/lit8 v5, p1, 0x6

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    .line 36
    iget-object v2, v6, Lc1/m;->g:[I

    aput v1, v2, v0

    new-array v1, v3, [I

    aput v0, v1, v15

    .line 37
    aget v2, v2, v0

    aput v2, v1, v4

    invoke-static {v10, v1}, Lc1/b;->i(I[I)V

    .line 38
    iget-object v1, v6, Lc1/m;->b:[B

    add-int/lit8 v2, p1, 0x7

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x32

    .line 39
    iget-object v2, v6, Lc1/m;->h:[I

    aput v1, v2, v0

    new-array v2, v3, [I

    aput v0, v2, v15

    aput v1, v2, v4

    .line 40
    invoke-static {v13, v2}, Lc1/b;->i(I[I)V

    .line 41
    iget-object v1, v6, Lc1/m;->b:[B

    add-int/lit8 v2, p1, 0x8

    aget-byte v1, v1, v2

    shr-int/2addr v1, v13

    and-int/2addr v1, v4

    .line 42
    iget-object v5, v6, Lc1/m;->i:[I

    aput v1, v5, v0

    new-array v5, v3, [I

    aput v0, v5, v15

    aput v1, v5, v4

    .line 43
    invoke-static {v11, v5}, Lc1/b;->i(I[I)V

    .line 44
    iget-object v1, v6, Lc1/m;->b:[B

    aget-byte v1, v1, v2

    shr-int/2addr v1, v10

    and-int/2addr v1, v4

    .line 45
    iget-object v5, v6, Lc1/m;->n:[I

    aput v1, v5, v0

    new-array v5, v3, [I

    aput v0, v5, v15

    aput v1, v5, v4

    .line 46
    invoke-static {v8, v5}, Lc1/b;->i(I[I)V

    .line 47
    iget-object v1, v6, Lc1/m;->b:[B

    aget-byte v1, v1, v2

    shr-int/2addr v1, v12

    and-int/2addr v1, v4

    .line 48
    iget-object v5, v6, Lc1/m;->j:[I

    aput v1, v5, v0

    new-array v5, v3, [I

    aput v0, v5, v15

    aput v1, v5, v4

    .line 49
    invoke-static {v7, v5}, Lc1/b;->i(I[I)V

    .line 50
    iget-object v1, v6, Lc1/m;->b:[B

    aget-byte v1, v1, v2

    shr-int/2addr v1, v14

    and-int/2addr v1, v4

    .line 51
    iget-object v5, v6, Lc1/m;->k:[I

    aput v1, v5, v0

    new-array v5, v3, [I

    aput v0, v5, v15

    aput v1, v5, v4

    const/16 v1, 0xa

    .line 52
    invoke-static {v1, v5}, Lc1/b;->i(I[I)V

    .line 53
    iget-object v1, v6, Lc1/m;->b:[B

    aget-byte v1, v1, v2

    shr-int/2addr v1, v3

    and-int/2addr v1, v4

    .line 54
    iget-object v5, v6, Lc1/m;->l:[I

    aput v1, v5, v0

    new-array v5, v3, [I

    aput v0, v5, v15

    aput v1, v5, v4

    const/16 v1, 0xb

    .line 55
    invoke-static {v1, v5}, Lc1/b;->i(I[I)V

    .line 56
    iget-object v1, v6, Lc1/m;->b:[B

    aget-byte v1, v1, v2

    and-int/2addr v1, v14

    .line 57
    iget-object v5, v6, Lc1/m;->m:[I

    aput v1, v5, v0

    new-array v5, v3, [I

    aput v0, v5, v15

    aput v1, v5, v4

    const/16 v0, 0xc

    .line 58
    invoke-static {v0, v5}, Lc1/b;->i(I[I)V

    .line 59
    iget-object v0, v6, Lc1/m;->b:[B

    aget-byte v1, v0, v2

    shr-int/2addr v1, v13

    and-int/2addr v1, v4

    aget-byte v5, v0, v2

    shr-int/2addr v5, v12

    and-int/2addr v5, v4

    aget-byte v7, v0, v2

    shr-int/2addr v7, v14

    and-int/2addr v7, v4

    aget-byte v8, v0, v2

    shr-int/lit8 v3, v8, 0x2

    and-int/2addr v4, v3

    aget-byte v0, v0, v2

    and-int/lit8 v8, v0, 0x3

    move-object/from16 v0, p0

    move v2, v5

    move v3, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lc1/m;->T2(IIIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public R2(II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lc1/m;->b:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    const/4 p2, 0x3

    if-eq v1, v7, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v1, p2, :cond_0

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, p1, 0x1

    .line 3
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v8, p1, 0x2

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v3, v8

    add-int/2addr p1, p2

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v3

    .line 4
    iget-object p2, p0, Lc1/m;->f:[I

    aput p1, p2, v1

    new-array p2, v6, [I

    aput v1, p2, v5

    aput p1, p2, v7

    .line 5
    invoke-static {v2, p2}, Lc1/b;->i(I[I)V

    .line 6
    sget-object p1, Lc1/a;->d:[I

    aput v7, p1, v4

    new-array p1, v7, [I

    aput v7, p1, v5

    .line 7
    invoke-static {v4, p1}, Lc1/b;->i(I[I)V

    goto :goto_0

    :cond_1
    if-ne p2, v6, :cond_2

    goto :goto_0

    :cond_2
    if-le p2, v6, :cond_3

    add-int/lit8 p2, p1, 0x1

    .line 8
    aget-byte p2, v0, p2

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v1, p1, 0x2

    .line 9
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v8, p1, 0x3

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v1, v8

    add-int/2addr p1, v3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    .line 10
    iget-object v0, p0, Lc1/m;->f:[I

    aput p1, v0, p2

    new-array v0, v6, [I

    aput p2, v0, v5

    aput p1, v0, v7

    .line 11
    invoke-static {v2, v0}, Lc1/b;->i(I[I)V

    .line 12
    sget-object p1, Lc1/a;->d:[I

    aput v7, p1, v4

    new-array p1, v7, [I

    aput v7, p1, v5

    .line 13
    invoke-static {v4, p1}, Lc1/b;->i(I[I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public S2(II)V
    .locals 8

    .line 1
    iget-object p2, p0, Lc1/m;->b:[B

    aget-byte v0, p2, p1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lc1/a;->d:[I

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x2

    aput v2, v0, v3

    add-int/lit8 v2, p1, 0x2

    .line 3
    aget-byte v4, p2, v2

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x3

    aput v4, v0, v5

    const/4 v4, 0x1

    new-array v6, v4, [I

    .line 4
    aget-byte p2, p2, v1

    and-int/lit16 p2, p2, 0xff

    const/4 v7, 0x0

    aput p2, v6, v7

    invoke-static {v3, v6}, Lc1/b;->i(I[I)V

    new-array p2, v4, [I

    .line 5
    iget-object v3, p0, Lc1/m;->b:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    aput v3, p2, v7

    invoke-static {v5, p2}, Lc1/b;->i(I[I)V

    .line 6
    iget-object p2, p0, Lc1/m;->b:[B

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0x13

    aput v3, v0, v5

    add-int/lit8 v3, p1, 0x4

    .line 7
    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v6, 0x14

    aput v3, v0, v6

    new-array v3, v4, [I

    .line 8
    aget-byte p2, p2, v1

    and-int/lit16 p2, p2, 0xff

    aput p2, v3, v7

    invoke-static {v5, v3}, Lc1/b;->i(I[I)V

    new-array p2, v4, [I

    .line 9
    iget-object v1, p0, Lc1/m;->b:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aput v1, p2, v7

    invoke-static {v6, p2}, Lc1/b;->i(I[I)V

    .line 10
    iget-object p2, p0, Lc1/m;->b:[B

    add-int/lit8 p1, p1, 0xb

    aget-byte v1, p2, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x32

    .line 11
    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    const/4 p2, 0x4

    aput p1, v0, p2

    new-array p1, v4, [I

    aput v1, p1, v7

    .line 12
    invoke-static {p2, p1}, Lc1/b;->i(I[I)V

    :goto_0
    return-void
.end method

.method public T2(IIIII)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eq p2, v0, :cond_0

    if-eq p3, v0, :cond_0

    if-eq p4, v0, :cond_0

    if-eq p5, v0, :cond_0

    const/4 p1, 0x2

    if-eq p5, p1, :cond_0

    const/4 p1, 0x3

    if-ne p5, p1, :cond_1

    :cond_0
    const-string p1, "com.syu.tire"

    .line 1
    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 2
    invoke-static {p1}, Lo1/u;->f(Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 6

    const/4 p3, 0x5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    :pswitch_1
    new-array p3, v2, [I

    .line 1
    sget-object v0, Lc1/a;->d:[I

    const/16 v2, 0x14

    aget v0, v0, v2

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto/16 :goto_9

    :pswitch_2
    new-array p3, v2, [I

    .line 2
    sget-object v0, Lc1/a;->d:[I

    const/16 v2, 0x13

    aget v0, v0, v2

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto/16 :goto_9

    :pswitch_3
    new-array p3, v2, [I

    .line 3
    sget-object v0, Lc1/a;->d:[I

    const/16 v2, 0x12

    aget v0, v0, v2

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto/16 :goto_9

    :pswitch_4
    new-array p3, v2, [I

    .line 4
    sget-object v0, Lc1/a;->d:[I

    const/16 v2, 0xf

    aget v0, v0, v2

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto/16 :goto_9

    :pswitch_5
    move v3, v2

    :goto_0
    if-ge v3, p3, :cond_0

    new-array v4, v0, [I

    aput v3, v4, v1

    .line 5
    iget-object v5, p0, Lc1/m;->n:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_6
    move v3, v2

    :goto_1
    if-ge v3, p3, :cond_0

    new-array v4, v0, [I

    aput v3, v4, v1

    .line 6
    iget-object v5, p0, Lc1/m;->m:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_7
    move v3, v2

    :goto_2
    if-ge v3, p3, :cond_0

    new-array v4, v0, [I

    aput v3, v4, v1

    .line 7
    iget-object v5, p0, Lc1/m;->l:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_8
    move v3, v2

    :goto_3
    if-ge v3, p3, :cond_0

    new-array v4, v0, [I

    aput v3, v4, v1

    .line 8
    iget-object v5, p0, Lc1/m;->k:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :pswitch_9
    move v3, v2

    :goto_4
    if-ge v3, p3, :cond_0

    new-array v4, v0, [I

    aput v3, v4, v1

    .line 9
    iget-object v5, p0, Lc1/m;->j:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :pswitch_a
    move v3, v2

    :goto_5
    if-ge v3, p3, :cond_0

    new-array v4, v0, [I

    aput v3, v4, v1

    .line 10
    iget-object v5, p0, Lc1/m;->i:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :pswitch_b
    move v3, v2

    :goto_6
    if-ge v3, p3, :cond_0

    new-array v4, v0, [I

    aput v3, v4, v1

    .line 11
    iget-object v5, p0, Lc1/m;->h:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :pswitch_c
    move v3, v2

    :goto_7
    if-ge v3, p3, :cond_0

    new-array v4, v0, [I

    aput v3, v4, v1

    .line 12
    iget-object v5, p0, Lc1/m;->g:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :pswitch_d
    move v3, v2

    :goto_8
    if-ge v3, p3, :cond_0

    new-array v4, v0, [I

    aput v3, v4, v1

    .line 13
    iget-object v5, p0, Lc1/m;->f:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :pswitch_e
    new-array p3, v2, [I

    .line 14
    sget-object v0, Lc1/a;->d:[I

    const/4 v2, 0x4

    aget v0, v0, v2

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_9

    :pswitch_f
    new-array p3, v2, [I

    .line 15
    sget-object v0, Lc1/a;->d:[I

    const/16 v2, 0xa

    aget v0, v0, v2

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_9

    :pswitch_10
    new-array p3, v2, [I

    .line 16
    sget-object v2, Lc1/a;->d:[I

    aget v0, v2, v0

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_0
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 5

    const/16 p3, 0xc

    const/16 p4, 0x66

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/16 v2, 0x62

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array p1, p3, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-virtual {p0, v2, p1}, Lc1/m;->P2(I[I)V

    goto/16 :goto_0

    :pswitch_1
    const/16 p1, 0x11

    new-array p2, v4, [I

    .line 2
    invoke-virtual {p0, p1, p2}, Lc1/m;->P2(I[I)V

    goto/16 :goto_0

    .line 3
    :pswitch_2
    invoke-virtual {p0, p2, v3}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    aget p1, p2, v4

    sput p1, Lc1/a;->f:I

    goto :goto_0

    :pswitch_3
    new-array p1, v4, [I

    .line 5
    invoke-virtual {p0, p4, p1}, Lc1/m;->P2(I[I)V

    goto :goto_0

    :pswitch_4
    new-array p1, v3, [I

    .line 6
    aget p2, p2, v4

    aput p2, p1, v4

    invoke-virtual {p0, p4, p1}, Lc1/m;->P2(I[I)V

    goto :goto_0

    :pswitch_5
    new-array p1, v3, [I

    aput v4, p1, v4

    .line 7
    invoke-virtual {p0, p4, p1}, Lc1/m;->P2(I[I)V

    goto :goto_0

    :pswitch_6
    new-array p1, p3, [I

    aput v4, p1, v4

    .line 8
    sget-object p3, Lc1/a;->d:[I

    aget p4, p3, v0

    aput p4, p1, v3

    aget p4, p3, v1

    aput p4, p1, v0

    aget p4, p3, v0

    aput p4, p1, v1

    const/4 p4, 0x4

    aget p3, p3, v1

    aput p3, p1, p4

    const/4 p3, 0x5

    aput v4, p1, p3

    const/4 p3, 0x6

    aput v4, p1, p3

    const/4 p3, 0x7

    aput v4, p1, p3

    const/16 p3, 0x8

    aput v4, p1, p3

    const/16 p3, 0x9

    aput v4, p1, p3

    const/16 p3, 0xa

    aput v4, p1, p3

    const/16 p3, 0xb

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-virtual {p0, v2, p1}, Lc1/m;->P2(I[I)V

    goto :goto_0

    :pswitch_7
    new-array p1, v1, [I

    aput v3, p1, v4

    .line 9
    aget p3, p2, v4

    aput p3, p1, v3

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-virtual {p0, v2, p1}, Lc1/m;->P2(I[I)V

    goto :goto_0

    :pswitch_8
    new-array p1, v3, [I

    aput v4, p1, v4

    .line 10
    invoke-virtual {p0, v2, p1}, Lc1/m;->P2(I[I)V

    goto :goto_0

    :pswitch_9
    const/16 p1, 0x63

    new-array p2, v3, [I

    aput v4, p2, v4

    .line 11
    invoke-virtual {p0, p1, p2}, Lc1/m;->P2(I[I)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x20
        0x12
        0x20
        0x12
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x78
    .end array-data
.end method

.method public b([B)V
    .locals 7

    if-eqz p1, :cond_d

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget v0, p0, Lc1/m;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lc1/m;->c:I

    .line 4
    iput v2, p0, Lc1/m;->d:I

    .line 5
    iput v2, p0, Lc1/m;->e:I

    .line 6
    :cond_1
    iget-object v0, p0, Lc1/m;->b:[B

    iget v1, p0, Lc1/m;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lc1/m;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lc1/m;->c:I

    .line 8
    iget p1, p0, Lc1/m;->e:I

    const/4 v1, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lc1/m;->b:[B

    aget-byte p1, p1, v2

    move v0, v4

    .line 10
    :goto_0
    iget v5, p0, Lc1/m;->e:I

    if-ge v0, v5, :cond_3

    .line 11
    iget-object v5, p0, Lc1/m;->b:[B

    aget-byte v5, v5, v0

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lc1/m;->b:[B

    aget-byte v6, v0, v5

    if-ne p1, v6, :cond_4

    sub-int/2addr v5, v3

    .line 13
    invoke-virtual {p0, v0, v3, v5}, Lc1/m;->O2([BII)V

    .line 14
    iget p1, p0, Lc1/m;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lc1/m;->d:I

    goto :goto_1

    .line 15
    :cond_4
    iput v1, p0, Lc1/m;->d:I

    .line 16
    :goto_1
    iput v2, p0, Lc1/m;->e:I

    .line 17
    :cond_5
    iget p1, p0, Lc1/m;->c:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lc1/m;->d:I

    if-ge v0, p1, :cond_a

    .line 18
    iget-object v1, p0, Lc1/m;->b:[B

    aget-byte v5, v1, v0

    const/16 v6, -0x56

    if-ne v5, v6, :cond_9

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v1, v5

    const/16 v6, -0x5f

    if-ne v5, v6, :cond_9

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, v1, v5

    const/16 v6, 0x41

    if-ne v5, v6, :cond_9

    add-int/lit8 v5, v0, 0x3

    .line 19
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lc1/m;->e:I

    add-int/lit8 v6, v0, -0x1

    add-int/2addr v5, v6

    .line 20
    iput v5, p0, Lc1/m;->e:I

    .line 21
    iget v6, p0, Lc1/m;->c:I

    if-lt v5, v6, :cond_6

    sub-int/2addr v5, v0

    .line 22
    iput v5, p0, Lc1/m;->e:I

    goto :goto_5

    .line 23
    :cond_6
    aget-byte v1, v1, v0

    .line 24
    :goto_3
    iget v5, p0, Lc1/m;->e:I

    if-ge v0, v5, :cond_7

    .line 25
    iget-object v5, p0, Lc1/m;->b:[B

    aget-byte v5, v5, v0

    add-int/2addr v1, v5

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 26
    :cond_7
    iget-object v0, p0, Lc1/m;->b:[B

    aget-byte v6, v0, v5

    if-ne v1, v6, :cond_8

    .line 27
    iget v1, p0, Lc1/m;->d:I

    add-int/lit8 v6, v1, 0x4

    sub-int/2addr v5, v1

    sub-int/2addr v5, v3

    invoke-virtual {p0, v0, v6, v5}, Lc1/m;->O2([BII)V

    .line 28
    iget v0, p0, Lc1/m;->e:I

    iput v0, p0, Lc1/m;->d:I

    goto :goto_4

    .line 29
    :cond_8
    iget v0, p0, Lc1/m;->d:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc1/m;->d:I

    .line 30
    :goto_4
    iput v2, p0, Lc1/m;->e:I

    .line 31
    :cond_9
    iget v0, p0, Lc1/m;->d:I

    add-int/2addr v0, v4

    iput v0, p0, Lc1/m;->d:I

    goto :goto_2

    :cond_a
    :goto_5
    if-eqz v0, :cond_c

    .line 32
    iget p1, p0, Lc1/m;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lc1/m;->c:I

    if-eqz p1, :cond_b

    .line 33
    iget-object v1, p0, Lc1/m;->b:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    :cond_b
    iput v2, p0, Lc1/m;->d:I

    :cond_c
    return-void

    :cond_d
    :goto_6
    const-wide/16 v0, 0x64

    .line 35
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

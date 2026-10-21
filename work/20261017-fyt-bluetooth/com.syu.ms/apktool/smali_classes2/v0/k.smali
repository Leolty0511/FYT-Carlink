.class public Lv0/k;
.super Lv0/m;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:[B

.field public d:Lv0/n;

.field public e:Lo1/g0;

.field public final f:I

.field public final g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lv0/m;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lv0/k;->a:[B

    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 3
    iput-object v1, p0, Lv0/k;->b:[B

    new-array v0, v0, [B

    .line 4
    iput-object v0, p0, Lv0/k;->c:[B

    .line 5
    new-instance v0, Lv0/n;

    invoke-direct {v0}, Lv0/n;-><init>()V

    iput-object v0, p0, Lv0/k;->d:Lv0/n;

    .line 6
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lv0/k;->e:Lo1/g0;

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lv0/k;->f:I

    .line 8
    iput v0, p0, Lv0/k;->g:I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lv0/k;->h:I

    .line 10
    iput v0, p0, Lv0/k;->i:I

    .line 11
    iput v0, p0, Lv0/k;->j:I

    .line 12
    iput v0, p0, Lv0/k;->k:I

    .line 13
    iput v0, p0, Lv0/k;->l:I

    .line 14
    iput v0, p0, Lv0/k;->m:I

    return-void
.end method


# virtual methods
.method public K2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv0/k;->e:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lv0/k;->e:Lo1/g0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lv0/k;->N2(I)V

    .line 3
    iget-object v0, p0, Lv0/k;->e:Lo1/g0;

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lv0/k;->O2(I)V

    return-void
.end method

.method public L2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/k;->e:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    return-void
.end method

.method public M2(Lv0/f;)V
    .locals 16

    move-object/from16 v0, p1

    .line 1
    iget v1, v0, Lv0/f;->a:I

    const v2, 0x2140500

    const/4 v3, 0x7

    const-string v4, ""

    const/16 v5, 0x11

    const/4 v6, 0x6

    const/16 v7, 0x8

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v1, v2, :cond_9

    const v2, 0x2140700

    if-eq v1, v2, :cond_5

    const v2, 0x2140c00

    if-eq v1, v2, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget-byte v1, v0, Lv0/f;->c:B

    if-eqz v1, :cond_1

    goto/16 :goto_7

    .line 3
    :cond_1
    iget v1, v0, Lv0/f;->d:I

    invoke-static {v3, v1}, Lv0/d;->d(II)V

    new-array v1, v5, [B

    move v2, v11

    move v3, v2

    .line 4
    :goto_0
    iget-byte v5, v0, Lv0/f;->e:B

    if-ge v2, v5, :cond_4

    .line 5
    iget-object v5, v0, Lv0/f;->f:[Lv0/e;

    aget-object v12, v5, v2

    iget-byte v12, v12, Lv0/e;->a:B

    if-ne v12, v8, :cond_2

    move v5, v11

    .line 6
    :goto_1
    iget-object v12, v0, Lv0/f;->f:[Lv0/e;

    aget-object v13, v12, v2

    iget v13, v13, Lv0/e;->b:I

    if-ge v5, v13, :cond_3

    .line 7
    aget-object v4, v12, v2

    iget-object v4, v4, Lv0/e;->c:[B

    aget-byte v4, v4, v5

    aput-byte v4, v1, v5

    .line 8
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 9
    :cond_2
    aget-object v12, v5, v2

    iget-byte v12, v12, Lv0/e;->a:B

    if-ne v12, v6, :cond_3

    .line 10
    aget-object v3, v5, v2

    iget-object v3, v3, Lv0/e;->c:[B

    aget-byte v3, v3, v11

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    .line 11
    aget-object v12, v5, v2

    iget-object v12, v12, Lv0/e;->c:[B

    aget-byte v12, v12, v10

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v3, v12

    .line 12
    aget-object v12, v5, v2

    iget-object v12, v12, Lv0/e;->c:[B

    aget-byte v12, v12, v9

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v7

    or-int/2addr v3, v12

    .line 13
    aget-object v5, v5, v2

    iget-object v5, v5, Lv0/e;->c:[B

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/16 v0, 0x9

    .line 14
    invoke-static {v0, v3, v4}, Lv0/d;->f(IILjava/lang/String;)V

    goto/16 :goto_7

    .line 15
    :cond_5
    iget-byte v1, v0, Lv0/f;->c:B

    if-eqz v1, :cond_6

    goto/16 :goto_7

    :cond_6
    move v1, v11

    move v2, v1

    .line 16
    :goto_2
    iget-byte v3, v0, Lv0/f;->e:B

    if-ge v1, v3, :cond_13

    .line 17
    iget-object v3, v0, Lv0/f;->f:[Lv0/e;

    aget-object v4, v3, v1

    iget-byte v4, v4, Lv0/e;->a:B

    if-ne v4, v10, :cond_7

    move v3, v11

    .line 18
    :goto_3
    iget-object v4, v0, Lv0/f;->f:[Lv0/e;

    aget-object v5, v4, v1

    iget v5, v5, Lv0/e;->b:I

    if-ge v3, v5, :cond_8

    .line 19
    aget-object v2, v4, v1

    iget-object v2, v2, Lv0/e;->c:[B

    aget-byte v2, v2, v11

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 20
    aget-object v5, v4, v1

    iget-object v5, v5, Lv0/e;->c:[B

    aget-byte v5, v5, v10

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v2, v5

    .line 21
    aget-object v5, v4, v1

    iget-object v5, v5, Lv0/e;->c:[B

    aget-byte v5, v5, v9

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v7

    or-int/2addr v2, v5

    .line 22
    aget-object v4, v4, v1

    iget-object v4, v4, Lv0/e;->c:[B

    aget-byte v4, v4, v8

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 23
    :cond_7
    aget-object v4, v3, v1

    iget-byte v4, v4, Lv0/e;->a:B

    if-ne v4, v9, :cond_8

    .line 24
    aget-object v3, v3, v1

    iget-object v3, v3, Lv0/e;->c:[B

    aget-byte v3, v3, v11

    const/16 v4, 0xb

    .line 25
    invoke-static {v4, v2, v3}, Lv0/d;->e(III)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 26
    :cond_9
    iget-byte v1, v0, Lv0/f;->c:B

    if-eqz v1, :cond_b

    if-eq v1, v10, :cond_a

    goto/16 :goto_7

    :cond_a
    const/16 v0, 0xa

    .line 27
    invoke-static {v0, v10}, Lv0/d;->d(II)V

    goto/16 :goto_7

    :cond_b
    const/4 v1, 0x4

    .line 28
    iget v2, v0, Lv0/f;->d:I

    invoke-static {v1, v2}, Lv0/d;->d(II)V

    new-array v1, v5, [B

    move v2, v11

    move v5, v2

    move v12, v5

    move v13, v12

    move v14, v13

    .line 29
    :goto_4
    iget-byte v15, v0, Lv0/f;->e:B

    if-ge v2, v15, :cond_11

    .line 30
    iget-object v15, v0, Lv0/f;->f:[Lv0/e;

    aget-object v3, v15, v2

    iget-byte v3, v3, Lv0/e;->a:B

    if-ne v3, v9, :cond_c

    .line 31
    aget-object v3, v15, v2

    iget-object v3, v3, Lv0/e;->c:[B

    aget-byte v3, v3, v11

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    .line 32
    aget-object v5, v15, v2

    iget-object v5, v5, Lv0/e;->c:[B

    aget-byte v5, v5, v10

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    .line 33
    aget-object v5, v15, v2

    iget-object v5, v5, Lv0/e;->c:[B

    aget-byte v5, v5, v9

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v7

    or-int/2addr v3, v5

    .line 34
    aget-object v5, v15, v2

    iget-object v5, v5, Lv0/e;->c:[B

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v3

    goto :goto_6

    .line 35
    :cond_c
    aget-object v3, v15, v2

    iget-byte v3, v3, Lv0/e;->a:B

    if-ne v3, v8, :cond_d

    .line 36
    aget-object v3, v15, v2

    iget-object v3, v3, Lv0/e;->c:[B

    aget-byte v12, v3, v11

    goto :goto_6

    .line 37
    :cond_d
    aget-object v3, v15, v2

    iget-byte v3, v3, Lv0/e;->a:B

    if-ne v3, v6, :cond_e

    .line 38
    aget-object v3, v15, v2

    iget-object v3, v3, Lv0/e;->c:[B

    aget-byte v3, v3, v11

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v7

    or-int/2addr v3, v14

    .line 39
    aget-object v14, v15, v2

    iget-object v14, v14, Lv0/e;->c:[B

    aget-byte v14, v14, v10

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v14, v3

    .line 40
    invoke-static {v6, v14}, Lv0/d;->d(II)V

    goto :goto_6

    .line 41
    :cond_e
    aget-object v3, v15, v2

    iget-byte v3, v3, Lv0/e;->a:B

    const/4 v6, 0x7

    if-ne v3, v6, :cond_f

    move v3, v11

    .line 42
    :goto_5
    iget-object v15, v0, Lv0/f;->f:[Lv0/e;

    aget-object v6, v15, v2

    iget v6, v6, Lv0/e;->b:I

    if-ge v3, v6, :cond_10

    .line 43
    aget-object v4, v15, v2

    iget-object v4, v4, Lv0/e;->c:[B

    aget-byte v4, v4, v3

    aput-byte v4, v1, v3

    .line 44
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x7

    goto :goto_5

    .line 45
    :cond_f
    aget-object v3, v15, v2

    iget-byte v3, v3, Lv0/e;->a:B

    const/16 v6, 0xc

    if-ne v3, v6, :cond_10

    .line 46
    aget-object v3, v15, v2

    iget-object v3, v3, Lv0/e;->c:[B

    aget-byte v13, v3, v11

    :cond_10
    :goto_6
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x7

    const/4 v6, 0x6

    goto/16 :goto_4

    :cond_11
    const/16 v6, 0xc

    if-nez v15, :cond_12

    .line 47
    invoke-static {v6, v10}, Lv0/d;->d(II)V

    goto :goto_7

    :cond_12
    new-array v0, v8, [I

    aput v5, v0, v11

    aput v12, v0, v10

    aput v13, v0, v9

    new-array v1, v10, [Ljava/lang/String;

    aput-object v4, v1, v11

    .line 48
    invoke-static {v7, v0, v1}, Lv0/d;->h(I[I[Ljava/lang/String;)V

    :cond_13
    :goto_7
    return-void
.end method

.method public final N2(I)V
    .locals 2

    .line 1
    iput p1, p0, Lv0/k;->h:I

    const/16 v0, 0xd

    .line 2
    invoke-static {v0, p1}, Lv0/d;->d(II)V

    .line 3
    iget-object p1, p0, Lv0/k;->e:Lo1/g0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    iget v1, p0, Lv0/k;->h:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lv0/k;->e:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final O2(I)V
    .locals 2

    .line 1
    iput p1, p0, Lv0/k;->i:I

    const/16 v0, 0xe

    .line 2
    invoke-static {v0, p1}, Lv0/d;->d(II)V

    .line 3
    iget-object p1, p0, Lv0/k;->e:Lo1/g0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    iget v1, p0, Lv0/k;->i:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lv0/k;->e:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public P2(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    .line 1
    iget-object v2, p0, Lv0/k;->d:Lv0/n;

    iget-object v2, v2, Lv0/n;->b:[I

    aget v3, v2, v1

    if-ne v3, p1, :cond_0

    .line 2
    aput v0, v2, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public Q2([BI)B
    .locals 4

    const/4 v0, 0x0

    move v2, p2

    move v1, v0

    :goto_0
    if-lez v2, :cond_0

    sub-int v3, p2, v2

    .line 1
    aget-byte v3, p1, v3

    add-int/2addr v0, v3

    int-to-byte v0, v0

    add-int/2addr v1, v0

    int-to-byte v1, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    xor-int p1, v0, v1

    int-to-byte p1, p1

    return p1
.end method

.method public final R2([BII)V
    .locals 9

    add-int/lit8 v0, p2, 0x2

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x80

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/16 v5, 0xff

    const/4 v6, 0x1

    if-eq v0, v1, :cond_a

    const/16 v1, -0x7f

    if-eq v0, v1, :cond_7

    const/16 v1, -0x7c

    if-eq v0, v1, :cond_6

    const/16 v1, -0x78

    if-eq v0, v1, :cond_5

    const/16 v1, -0x3a

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v0, p3, -0x3

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    add-int/2addr p2, v4

    add-int/lit8 v0, p2, 0x1

    .line 2
    aget-byte p2, p1, p2

    and-int/2addr p2, v5

    shl-int/lit8 p2, p2, 0x18

    add-int/lit8 v1, v0, 0x1

    .line 3
    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    add-int/lit8 v0, v1, 0x1

    .line 4
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p2, v1

    add-int/lit8 v1, v0, 0x1

    .line 5
    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    or-int/2addr p2, v0

    const v0, 0x20a0200

    if-eq p2, v0, :cond_4

    const/high16 v0, 0x2110000

    if-eq p2, v0, :cond_3

    const p3, 0x2140d00

    if-eq p2, p3, :cond_2

    goto/16 :goto_1

    .line 6
    :cond_2
    aget-byte p1, p1, v1

    invoke-static {v6, p1, p2}, Lv0/d;->e(III)V

    goto/16 :goto_1

    :cond_3
    add-int/lit8 p3, p3, -0x7

    .line 7
    new-array v0, p3, [B

    .line 8
    invoke-static {p1, v1, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .line 10
    invoke-static {v6, p2, p1}, Lv0/d;->f(IILjava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    add-int/lit8 p3, v1, 0x1

    .line 11
    aget-byte v0, p1, v1

    and-int/2addr v0, v5

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p3, 0x1

    .line 12
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p3, v0

    add-int/lit8 v0, v1, 0x1

    .line 13
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p3, v1

    add-int/lit8 v1, v0, 0x1

    .line 14
    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    or-int/2addr p3, v0

    add-int/lit8 v0, v1, 0x1

    .line 15
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x8

    .line 16
    aget-byte p1, p1, v0

    and-int/2addr p1, v5

    or-int/2addr p1, v1

    new-array v0, v4, [I

    aput p3, v0, v3

    aput p1, v0, v6

    aput p2, v0, v2

    .line 17
    invoke-static {v6, v0}, Lv0/d;->g(I[I)V

    goto/16 :goto_1

    :cond_5
    add-int/lit8 p3, p2, 0x3

    .line 18
    aget-byte p3, p1, p3

    if-nez p3, :cond_d

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p2, 0x1

    .line 19
    aget-byte p2, p1, p2

    and-int/2addr p2, v5

    shl-int/lit8 p2, p2, 0x18

    add-int/lit8 v0, p3, 0x1

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p2, p3

    add-int/lit8 p3, v0, 0x1

    .line 21
    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    .line 22
    aget-byte p1, p1, p3

    and-int/2addr p1, v5

    or-int/2addr p1, p2

    .line 23
    invoke-static {v2, p1}, Lv0/d;->d(II)V

    goto/16 :goto_1

    .line 24
    :cond_6
    aget-byte v0, p1, p2

    and-int/2addr v0, v5

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p2, v6

    .line 25
    aget-byte p2, p1, p2

    and-int/2addr p2, v5

    or-int/2addr p2, v0

    .line 26
    invoke-virtual {p0, p2}, Lv0/k;->S2(I)I

    move-result v0

    .line 27
    invoke-virtual {p0, p2}, Lv0/k;->P2(I)V

    sub-int/2addr p3, v6

    .line 28
    aget-byte p1, p1, p3

    invoke-static {v4, p1, v0}, Lv0/d;->e(III)V

    goto/16 :goto_1

    .line 29
    :cond_7
    aget-byte p3, p1, p2

    and-int/2addr p3, v5

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, p2, 0x1

    .line 30
    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    or-int/2addr p3, v0

    .line 31
    invoke-virtual {p0, p3}, Lv0/k;->T2(I)I

    move-result v0

    if-ne v0, v5, :cond_8

    goto/16 :goto_1

    :cond_8
    add-int/2addr p2, v4

    add-int/lit8 v1, p2, 0x1

    .line 32
    aget-byte p2, p1, p2

    .line 33
    new-instance v2, Lv0/f;

    invoke-direct {v2}, Lv0/f;-><init>()V

    .line 34
    iput-byte p2, v2, Lv0/f;->c:B

    .line 35
    iget-object v4, p0, Lv0/k;->d:Lv0/n;

    iget-object v6, v4, Lv0/n;->a:[B

    aget-byte v6, v6, v0

    iput v6, v2, Lv0/f;->b:I

    .line 36
    iget-object v4, v4, Lv0/n;->c:[I

    aget v4, v4, v0

    iput v4, v2, Lv0/f;->a:I

    if-nez p2, :cond_9

    add-int/lit8 p2, v1, 0x1

    .line 37
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x18

    iput v1, v2, Lv0/f;->d:I

    add-int/lit8 v4, p2, 0x1

    .line 38
    aget-byte p2, p1, p2

    and-int/2addr p2, v5

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p2, v1

    iput p2, v2, Lv0/f;->d:I

    add-int/lit8 v1, v4, 0x1

    .line 39
    aget-byte v4, p1, v4

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr p2, v4

    iput p2, v2, Lv0/f;->d:I

    add-int/lit8 v4, v1, 0x1

    .line 40
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    or-int/2addr p2, v1

    iput p2, v2, Lv0/f;->d:I

    add-int/lit8 p2, v4, 0x1

    .line 41
    aget-byte v1, p1, v4

    iput-byte v1, v2, Lv0/f;->e:B

    move v1, v3

    .line 42
    :goto_0
    iget-byte v4, v2, Lv0/f;->e:B

    if-ge v1, v4, :cond_9

    add-int/lit8 v4, p2, 0x1

    .line 43
    aget-byte p2, p1, p2

    and-int/2addr p2, v5

    shl-int/lit8 p2, p2, 0x8

    add-int/lit8 v6, v4, 0x1

    .line 44
    aget-byte v4, p1, v4

    and-int/2addr v4, v5

    or-int/2addr p2, v4

    .line 45
    iget-object v4, v2, Lv0/f;->f:[Lv0/e;

    new-instance v7, Lv0/e;

    invoke-direct {v7}, Lv0/e;-><init>()V

    aput-object v7, v4, v1

    .line 46
    iget-object v4, v2, Lv0/f;->f:[Lv0/e;

    aget-object v7, v4, v1

    iget-object v8, p0, Lv0/k;->d:Lv0/n;

    iget-object v8, v8, Lv0/n;->d:[Lv0/a;

    aget-object v8, v8, v0

    iget-object v8, v8, Lv0/a;->a:[B

    aget-byte v8, v8, v1

    iput-byte v8, v7, Lv0/e;->a:B

    .line 47
    aget-object v7, v4, v1

    iput p2, v7, Lv0/e;->b:I

    .line 48
    aget-object v4, v4, v1

    iget-object v4, v4, Lv0/e;->c:[B

    invoke-static {p1, v6, v4, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_9
    invoke-virtual {p0, v2}, Lv0/k;->M2(Lv0/f;)V

    .line 50
    invoke-virtual {p0, p3}, Lv0/k;->P2(I)V

    goto :goto_1

    .line 51
    :cond_a
    aget-byte v0, p1, p2

    and-int/2addr v0, v5

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    .line 52
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    or-int/2addr v0, v1

    .line 53
    invoke-virtual {p0, v0}, Lv0/k;->S2(I)I

    move-result v1

    .line 54
    invoke-virtual {p0, v0}, Lv0/k;->P2(I)V

    const/high16 v0, 0x1010000

    if-eq v1, v0, :cond_c

    const/high16 v0, 0x2010000

    if-eq v1, v0, :cond_c

    const p3, 0x2140401

    if-eq v1, p3, :cond_b

    goto :goto_1

    :cond_b
    add-int/lit8 p3, p2, 0x5

    add-int/lit8 v0, p3, 0x1

    .line 55
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v1, v0, 0x1

    .line 56
    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    or-int/2addr p3, v0

    .line 57
    new-array v0, p3, [B

    .line 58
    invoke-static {p1, v1, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/lang/String;-><init>([B)V

    const/16 v0, 0xf

    add-int/lit8 p2, p2, 0x4

    .line 60
    aget-byte p1, p1, p2

    invoke-static {v0, p1, p3}, Lv0/d;->f(IILjava/lang/String;)V

    goto :goto_1

    :cond_c
    new-array v0, v4, [I

    aput v1, v0, v3

    add-int/lit8 p2, p2, 0x4

    .line 61
    aget-byte p2, p1, p2

    aput p2, v0, v6

    sub-int/2addr p3, v6

    aget-byte p1, p1, p3

    aput p1, v0, v2

    invoke-static {v3, v0}, Lv0/d;->g(I[I)V

    :cond_d
    :goto_1
    return-void
.end method

.method public S2(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 1
    iget-object v1, p0, Lv0/k;->d:Lv0/n;

    iget-object v2, v1, Lv0/n;->b:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 2
    iget-object p1, v1, Lv0/n;->c:[I

    aget p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0xff

    return p1
.end method

.method public T2(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 1
    iget-object v1, p0, Lv0/k;->d:Lv0/n;

    iget-object v1, v1, Lv0/n;->b:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0xff

    return p1
.end method

.method public U2([I)V
    .locals 9

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    .line 2
    aget v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    const/4 v3, 0x2

    .line 3
    aget v4, p1, v3

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    if-eqz v4, :cond_2

    const/4 v8, 0x3

    if-eq v4, v2, :cond_0

    if-eq v4, v3, :cond_0

    if-eq v4, v8, :cond_0

    if-eq v4, v7, :cond_2

    goto :goto_1

    .line 4
    :cond_0
    new-instance v2, Lv0/g;

    invoke-direct {v2}, Lv0/g;-><init>()V

    .line 5
    aget v3, p1, v8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    .line 6
    aget v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v3, v7

    .line 7
    aget v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v3, v6

    .line 8
    aget v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    const/16 v5, 0xb

    const/16 v6, 0xc

    .line 9
    aget v5, p1, v5

    int-to-byte v5, v5

    iput-byte v5, v2, Lv0/g;->c:B

    .line 10
    :goto_0
    iget-byte v5, v2, Lv0/g;->c:B

    if-ge v0, v5, :cond_1

    .line 11
    iget-object v5, v2, Lv0/g;->d:[Lv0/e;

    new-instance v7, Lv0/e;

    invoke-direct {v7}, Lv0/e;-><init>()V

    aput-object v7, v5, v0

    .line 12
    iget-object v5, v2, Lv0/g;->d:[Lv0/e;

    aget-object v5, v5, v0

    add-int/lit8 v7, v6, 0x1

    aget v6, p1, v6

    int-to-byte v6, v6

    iput-byte v6, v5, Lv0/e;->a:B

    add-int/lit8 v0, v0, 0x1

    move v6, v7

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0, v3, v4, v1, v2}, Lv0/k;->V2(IIILv0/g;)V

    goto :goto_1

    .line 14
    :cond_2
    aget v0, p1, v7

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 15
    aget v2, p1, v6

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    .line 16
    aget v2, p1, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x7

    .line 17
    aget p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v4, v1, v0}, Lv0/k;->V2(IIILv0/g;)V

    :goto_1
    return-void
.end method

.method public V2(IIILv0/g;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    .line 1
    iget-object v2, p0, Lv0/k;->d:Lv0/n;

    iget-object v3, v2, Lv0/n;->b:[I

    aget v3, v3, v1

    if-nez v3, :cond_0

    .line 2
    iget-object v2, v2, Lv0/n;->d:[Lv0/a;

    new-instance v3, Lv0/a;

    invoke-direct {v3}, Lv0/a;-><init>()V

    aput-object v3, v2, v1

    .line 3
    iget-object v2, p0, Lv0/k;->d:Lv0/n;

    iget-object v3, v2, Lv0/n;->b:[I

    aput p3, v3, v1

    .line 4
    iget-object p3, v2, Lv0/n;->c:[I

    aput p1, p3, v1

    .line 5
    iget-object p1, v2, Lv0/n;->a:[B

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    if-eqz p4, :cond_1

    .line 6
    :goto_1
    iget-byte p1, p4, Lv0/g;->c:B

    if-ge v0, p1, :cond_1

    .line 7
    iget-object p1, p0, Lv0/k;->d:Lv0/n;

    iget-object p1, p1, Lv0/n;->d:[Lv0/a;

    aget-object p1, p1, v1

    iget-object p1, p1, Lv0/a;->a:[B

    iget-object p2, p4, Lv0/g;->d:[Lv0/e;

    aget-object p2, p2, v0

    iget-byte p2, p2, Lv0/e;->a:B

    aput-byte p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized W2([B)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    sget-object v0, Lz/a;->g:Lo1/e0;

    invoke-virtual {v0, p1}, Lo1/e0;->i([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lv0/m;->Y1(Ly/b;II)V

    const/16 p1, 0xd

    if-eq p2, p1, :cond_1

    const/16 p1, 0xe

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p2, p0, Lv0/k;->i:I

    invoke-static {p1, p2}, Lv0/d;->d(II)V

    goto :goto_0

    .line 3
    :cond_1
    iget p2, p0, Lv0/k;->h:I

    invoke-static {p1, p2}, Lv0/d;->d(II)V

    :goto_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 4

    const/4 p3, 0x3

    const/4 p4, 0x0

    if-eq p1, p3, :cond_4

    const/4 p3, 0x4

    if-eq p1, p3, :cond_3

    .line 1
    invoke-virtual {p0, p2}, Lv0/k;->U2([I)V

    .line 2
    iget-object p1, p0, Lv0/k;->c:[B

    const/16 p3, -0x40

    aput-byte p3, p1, p4

    const/4 p1, 0x1

    move v0, p4

    .line 3
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 4
    aget v1, p2, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xc0

    const/16 v3, -0x25

    if-eq v1, v2, :cond_1

    const/16 v2, 0xdb

    if-eq v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lv0/k;->c:[B

    add-int/lit8 v2, p1, 0x1

    aget v3, p2, v0

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    move p1, v2

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lv0/k;->c:[B

    add-int/lit8 v2, p1, 0x1

    aput-byte v3, v1, p1

    add-int/lit8 p1, v2, 0x1

    const/16 v3, -0x23

    .line 7
    aput-byte v3, v1, v2

    goto :goto_1

    .line 8
    :cond_1
    iget-object v1, p0, Lv0/k;->c:[B

    add-int/lit8 v2, p1, 0x1

    aput-byte v3, v1, p1

    add-int/lit8 p1, v2, 0x1

    const/16 v3, -0x24

    .line 9
    aput-byte v3, v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object p2, p0, Lv0/k;->c:[B

    add-int/lit8 v0, p1, 0x1

    aput-byte p3, p2, p1

    .line 11
    new-array p1, v0, [B

    .line 12
    invoke-static {p2, p4, p1, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    invoke-virtual {p0, p1}, Lv0/k;->W2([B)V

    goto :goto_2

    .line 14
    :cond_3
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lv0/k;->O2(I)V

    goto :goto_2

    .line 15
    :cond_4
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lv0/k;->N2(I)V

    :goto_2
    return-void
.end method

.method public b([B)V
    .locals 9

    if-eqz p1, :cond_12

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    iget v0, p0, Lv0/k;->j:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lv0/k;->j:I

    .line 4
    iput v2, p0, Lv0/k;->k:I

    .line 5
    iput v2, p0, Lv0/k;->l:I

    .line 6
    :cond_1
    iget-object v0, p0, Lv0/k;->a:[B

    iget v1, p0, Lv0/k;->j:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lv0/k;->j:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lv0/k;->j:I

    .line 8
    :goto_0
    iget p1, p0, Lv0/k;->k:I

    if-ge p1, v0, :cond_f

    .line 9
    iget-object v1, p0, Lv0/k;->a:[B

    aget-byte v1, v1, p1

    const/16 v3, -0x40

    const/4 v4, 0x1

    if-ne v1, v3, :cond_e

    add-int/lit8 p1, p1, 0x1

    move v1, v2

    :goto_1
    if-ge p1, v0, :cond_a

    .line 10
    iget v5, p0, Lv0/k;->m:I

    const/16 v6, -0x25

    if-nez v5, :cond_4

    .line 11
    iget-object v5, p0, Lv0/k;->a:[B

    aget-byte v7, v5, p1

    if-ne v7, v6, :cond_2

    .line 12
    iput v4, p0, Lv0/k;->m:I

    goto :goto_5

    .line 13
    :cond_2
    aget-byte v6, v5, p1

    if-ne v6, v3, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 14
    iput p1, p0, Lv0/k;->l:I

    goto :goto_6

    .line 15
    :cond_3
    iget-object v6, p0, Lv0/k;->b:[B

    aget-byte v5, v5, p1

    aput-byte v5, v6, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    if-ne v5, v4, :cond_9

    .line 16
    iget-object v5, p0, Lv0/k;->a:[B

    aget-byte v7, v5, p1

    const/16 v8, -0x23

    if-ne v7, v8, :cond_6

    add-int/lit8 v7, p1, 0x1

    .line 17
    aget-byte v5, v5, v7

    if-ne v5, v3, :cond_5

    add-int/lit8 p1, p1, -0x1

    .line 18
    iput p1, p0, Lv0/k;->l:I

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 19
    :cond_5
    iget-object v5, p0, Lv0/k;->b:[B

    aput-byte v6, v5, v1

    goto :goto_4

    .line 20
    :cond_6
    aget-byte v6, v5, p1

    const/16 v7, -0x24

    if-ne v6, v7, :cond_8

    add-int/lit8 v6, p1, 0x1

    .line 21
    aget-byte v6, v5, v6

    if-ne v6, v3, :cond_7

    add-int/lit8 p1, p1, -0x1

    .line 22
    iput p1, p0, Lv0/k;->l:I

    .line 23
    aput-byte v3, v5, p1

    goto :goto_3

    .line 24
    :cond_7
    iget-object v5, p0, Lv0/k;->b:[B

    aput-byte v3, v5, v1

    goto :goto_4

    .line 25
    :cond_8
    iget-object v6, p0, Lv0/k;->b:[B

    aget-byte v5, v5, p1

    aput-byte v5, v6, v1

    .line 26
    :goto_4
    iput v2, p0, Lv0/k;->m:I

    goto :goto_2

    :cond_9
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 27
    :cond_a
    :goto_6
    iget p1, p0, Lv0/k;->l:I

    if-nez p1, :cond_b

    goto :goto_8

    .line 28
    :cond_b
    iget-object p1, p0, Lv0/k;->b:[B

    sub-int/2addr v1, v4

    invoke-virtual {p0, p1, v1}, Lv0/k;->Q2([BI)B

    move-result p1

    .line 29
    iget-object v3, p0, Lv0/k;->a:[B

    iget v5, p0, Lv0/k;->l:I

    aget-byte v3, v3, v5

    if-ne p1, v3, :cond_d

    .line 30
    iget-object p1, p0, Lv0/k;->b:[B

    invoke-virtual {p0, p1, v2, v1}, Lv0/k;->R2([BII)V

    .line 31
    iget p1, p0, Lv0/k;->m:I

    if-ne p1, v4, :cond_c

    .line 32
    iput v2, p0, Lv0/k;->m:I

    .line 33
    iget p1, p0, Lv0/k;->l:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lv0/k;->k:I

    goto :goto_7

    .line 34
    :cond_c
    iget p1, p0, Lv0/k;->l:I

    add-int/2addr p1, v4

    iput p1, p0, Lv0/k;->k:I

    goto :goto_7

    .line 35
    :cond_d
    iget p1, p0, Lv0/k;->k:I

    add-int/2addr p1, v4

    iput p1, p0, Lv0/k;->k:I

    .line 36
    :goto_7
    iput v2, p0, Lv0/k;->l:I

    .line 37
    :cond_e
    iget p1, p0, Lv0/k;->k:I

    add-int/2addr p1, v4

    iput p1, p0, Lv0/k;->k:I

    goto/16 :goto_0

    .line 38
    :cond_f
    :goto_8
    iget p1, p0, Lv0/k;->k:I

    if-eqz p1, :cond_11

    .line 39
    iget v0, p0, Lv0/k;->j:I

    sub-int/2addr v0, p1

    iput v0, p0, Lv0/k;->j:I

    if-eqz v0, :cond_10

    .line 40
    iget-object v1, p0, Lv0/k;->a:[B

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    :cond_10
    iput v2, p0, Lv0/k;->k:I

    :cond_11
    return-void

    :cond_12
    :goto_9
    const-wide/16 v0, 0x64

    .line 42
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

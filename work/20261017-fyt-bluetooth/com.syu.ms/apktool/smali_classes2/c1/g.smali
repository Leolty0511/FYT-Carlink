.class public Lc1/g;
.super Lc1/p;
.source "SourceFile"

# interfaces
.implements Lo1/r;


# instance fields
.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Lo1/r;

.field public final i:[I

.field public final j:[I

.field public final k:[I

.field public final l:[I

.field public final m:[I

.field public final n:[I

.field public final o:[I

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc1/p;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lc1/g;->b:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc1/g;->c:I

    .line 4
    iput v0, p0, Lc1/g;->d:I

    .line 5
    iput v0, p0, Lc1/g;->e:I

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Lc1/g;->i:[I

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Lc1/g;->j:[I

    new-array v1, v0, [I

    .line 8
    iput-object v1, p0, Lc1/g;->k:[I

    new-array v1, v0, [I

    .line 9
    iput-object v1, p0, Lc1/g;->l:[I

    new-array v1, v0, [I

    .line 10
    iput-object v1, p0, Lc1/g;->m:[I

    new-array v1, v0, [I

    .line 11
    iput-object v1, p0, Lc1/g;->n:[I

    new-array v0, v0, [I

    .line 12
    iput-object v0, p0, Lc1/g;->o:[I

    .line 13
    new-instance v0, Lc1/g$a;

    invoke-direct {v0, p0}, Lc1/g$a;-><init>(Lc1/g;)V

    iput-object v0, p0, Lc1/g;->p:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lc1/g$b;

    invoke-direct {v0, p0}, Lc1/g$b;-><init>(Lc1/g;)V

    iput-object v0, p0, Lc1/g;->q:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic O2(Lc1/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lc1/g;->f:I

    return p0
.end method

.method public static synthetic P2(Lc1/g;I)I
    .locals 0

    .line 1
    iput p1, p0, Lc1/g;->f:I

    return p1
.end method

.method public static synthetic Q2(Lc1/g;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc1/g;->S2(I)V

    return-void
.end method

.method public static synthetic R2(Lc1/g;[I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc1/g;->U2([I)V

    return-void
.end method


# virtual methods
.method public L2()V
    .locals 3

    .line 1
    sget-object v0, Lz/a;->B:Lo1/r;

    iput-object v0, p0, Lc1/g;->h:Lo1/r;

    .line 2
    sput-object p0, Lz/a;->B:Lo1/r;

    .line 3
    iget-object v0, p0, Lc1/g;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lc1/b;->c(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->u:Lo1/y;

    iget-object v1, p0, Lc1/g;->p:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

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
    iget-object v0, p0, Lc1/g;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lc1/b;->e(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lc1/g;->h:Lo1/r;

    sput-object v0, Lz/a;->B:Lo1/r;

    .line 3
    sget-object v0, Ly0/g;->u:Lo1/y;

    iget-object v1, p0, Lc1/g;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final S2(I)V
    .locals 2

    .line 1
    iget v0, p0, Lc1/g;->g:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lc1/g;->g:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 3
    invoke-static {v1, v0}, Lc1/b;->i(I[I)V

    :cond_0
    return-void
.end method

.method public final T2([BII)V
    .locals 11

    const/4 p3, 0x0

    .line 1
    iput p3, p0, Lc1/g;->f:I

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lc1/g;->S2(I)V

    .line 3
    aget-byte v1, p1, p2

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-nez v1, :cond_0

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v5, :cond_0

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_0

    new-array v1, v5, [Ljava/lang/Object;

    add-int/2addr p2, v3

    .line 4
    aget-byte v2, p1, p2

    shr-int/2addr v2, v4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p3

    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0xf

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Ver %d.%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    add-int/lit8 v1, p2, 0x3

    .line 5
    aget-byte v1, p1, v1

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, p1, v6

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, p1, v7

    invoke-static {v1, v6, v7}, Lo1/p0;->d(BBB)I

    move-result v1

    and-int/lit16 v6, v1, 0xff

    if-lt v6, v0, :cond_8

    if-le v6, v4, :cond_1

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v6, v6, -0x1

    .line 6
    iget-object v7, p0, Lc1/g;->i:[I

    aget v8, v7, v6

    if-eq v8, v1, :cond_2

    .line 7
    aput v1, v7, v6

    new-array v7, v5, [I

    aput v6, v7, p3

    aput v1, v7, v0

    .line 8
    invoke-static {v0, v7}, Lc1/b;->i(I[I)V

    .line 9
    :cond_2
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    .line 10
    iget-object v7, p0, Lc1/g;->j:[I

    aget v8, v7, v6

    if-eq v8, v1, :cond_3

    .line 11
    aput v1, v7, v6

    new-array v7, v5, [I

    aput v6, v7, p3

    aput v1, v7, v0

    .line 12
    invoke-static {v5, v7}, Lc1/b;->i(I[I)V

    :cond_3
    add-int/lit8 v1, p2, 0x1

    .line 13
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 14
    iget-object v7, p0, Lc1/g;->k:[I

    aget v8, v7, v6

    const/4 v9, 0x3

    if-eq v8, v1, :cond_4

    .line 15
    aput v1, v7, v6

    new-array v7, v5, [I

    aput v6, v7, p3

    aput v1, v7, v0

    .line 16
    invoke-static {v9, v7}, Lc1/b;->i(I[I)V

    :cond_4
    add-int/2addr p2, v5

    .line 17
    aget-byte v1, p1, p2

    const/4 v7, 0x6

    shr-int/2addr v1, v7

    and-int/2addr v1, v9

    .line 18
    iget-object v8, p0, Lc1/g;->l:[I

    aget v10, v8, v6

    if-eq v10, v1, :cond_5

    .line 19
    aput v1, v8, v6

    new-array v8, v5, [I

    aput v6, v8, p3

    aput v1, v8, v0

    .line 20
    invoke-static {v4, v8}, Lc1/b;->i(I[I)V

    .line 21
    :cond_5
    aget-byte v1, p1, p2

    shr-int/2addr v1, v4

    and-int/2addr v1, v9

    .line 22
    iget-object v4, p0, Lc1/g;->m:[I

    aget v8, v4, v6

    if-eq v8, v1, :cond_6

    .line 23
    aput v1, v4, v6

    new-array v4, v5, [I

    aput v6, v4, p3

    aput v1, v4, v0

    .line 24
    invoke-static {v3, v4}, Lc1/b;->i(I[I)V

    .line 25
    :cond_6
    aget-byte v1, p1, p2

    shr-int/2addr v1, v5

    and-int/2addr v1, v9

    .line 26
    iget-object v3, p0, Lc1/g;->n:[I

    aget v4, v3, v6

    if-eq v4, v1, :cond_7

    .line 27
    aput v1, v3, v6

    new-array v3, v5, [I

    aput v6, v3, p3

    aput v1, v3, v0

    .line 28
    invoke-static {v7, v3}, Lc1/b;->i(I[I)V

    .line 29
    :cond_7
    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    .line 30
    iget-object p2, p0, Lc1/g;->o:[I

    aget v1, p2, v6

    if-eq v1, p1, :cond_8

    .line 31
    aput p1, p2, v6

    new-array p2, v5, [I

    aput v6, p2, p3

    aput p1, p2, v0

    .line 32
    invoke-static {v2, p2}, Lc1/b;->i(I[I)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final varargs U2([I)V
    .locals 5

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 2
    aput v2, v1, v2

    const/16 v3, 0xcc

    const/4 v4, 0x1

    aput v3, v1, v4

    sub-int/2addr v0, v4

    const/4 v3, 0x2

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, -0x2

    .line 3
    aget v4, p1, v4

    aput v4, v1, v3

    .line 4
    aget v4, v1, v3

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    neg-int p1, v2

    .line 5
    aput p1, v1, v0

    .line 6
    invoke-static {v1}, Lz/k;->o([I)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 6

    const/4 p3, 0x2

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    new-array v4, p3, [I

    aput v3, v4, v1

    .line 1
    iget-object v5, p0, Lc1/g;->o:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_1
    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_0

    new-array v4, p3, [I

    aput v3, v4, v1

    .line 2
    iget-object v5, p0, Lc1/g;->n:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_2
    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_0

    new-array v4, p3, [I

    aput v3, v4, v1

    .line 3
    iget-object v5, p0, Lc1/g;->m:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_3
    move v3, v1

    :goto_3
    if-ge v3, v0, :cond_0

    new-array v4, p3, [I

    aput v3, v4, v1

    .line 4
    iget-object v5, p0, Lc1/g;->l:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :pswitch_4
    move v3, v1

    :goto_4
    if-ge v3, v0, :cond_0

    new-array v4, p3, [I

    aput v3, v4, v1

    .line 5
    iget-object v5, p0, Lc1/g;->k:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :pswitch_5
    move v3, v1

    :goto_5
    if-ge v3, v0, :cond_0

    new-array v4, p3, [I

    aput v3, v4, v1

    .line 6
    iget-object v5, p0, Lc1/g;->j:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :pswitch_6
    move v3, v1

    :goto_6
    if-ge v3, v0, :cond_0

    new-array v4, p3, [I

    aput v3, v4, v1

    .line 7
    iget-object v5, p0, Lc1/g;->i:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :pswitch_7
    new-array p3, v2, [I

    .line 8
    iget v0, p0, Lc1/g;->g:I

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_0
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method public z1([BII)V
    .locals 4

    .line 1
    iget v0, p0, Lc1/g;->c:I

    add-int/2addr v0, p3

    const/4 v1, 0x0

    const/16 v2, 0x400

    if-le v0, v2, :cond_0

    .line 2
    iput v1, p0, Lc1/g;->c:I

    .line 3
    iput v1, p0, Lc1/g;->d:I

    .line 4
    iput v1, p0, Lc1/g;->e:I

    .line 5
    :cond_0
    iget-object v0, p0, Lc1/g;->b:[B

    iget v2, p0, Lc1/g;->c:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget p1, p0, Lc1/g;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lc1/g;->c:I

    .line 7
    iget p2, p0, Lc1/g;->e:I

    const/4 p3, 0x1

    if-eqz p2, :cond_4

    if-lt p2, p1, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lc1/g;->b:[B

    aget-byte p1, p1, v1

    move p2, p3

    .line 9
    :goto_0
    iget v0, p0, Lc1/g;->e:I

    if-ge p2, v0, :cond_2

    .line 10
    iget-object v0, p0, Lc1/g;->b:[B

    aget-byte v0, v0, p2

    add-int/2addr p1, v0

    int-to-byte p1, p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    neg-int p1, p1

    int-to-byte p1, p1

    .line 11
    iget-object p2, p0, Lc1/g;->b:[B

    aget-byte v2, p2, v0

    if-ne p1, v2, :cond_3

    sub-int/2addr v0, p3

    .line 12
    invoke-virtual {p0, p2, p3, v0}, Lc1/g;->T2([BII)V

    .line 13
    iget p1, p0, Lc1/g;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lc1/g;->d:I

    goto :goto_1

    .line 14
    :cond_3
    iput p3, p0, Lc1/g;->d:I

    .line 15
    :goto_1
    iput v1, p0, Lc1/g;->e:I

    .line 16
    :cond_4
    iget p1, p0, Lc1/g;->c:I

    :goto_2
    iget p2, p0, Lc1/g;->d:I

    if-ge p2, p1, :cond_9

    .line 17
    iget-object v0, p0, Lc1/g;->b:[B

    aget-byte v2, v0, p2

    const/16 v3, 0x55

    if-ne v2, v3, :cond_8

    add-int/lit8 v2, p2, 0x7

    .line 18
    iput v2, p0, Lc1/g;->e:I

    .line 19
    iget v3, p0, Lc1/g;->c:I

    if-lt v2, v3, :cond_5

    sub-int/2addr v2, p2

    .line 20
    iput v2, p0, Lc1/g;->e:I

    goto :goto_5

    .line 21
    :cond_5
    aget-byte v0, v0, p2

    :goto_3
    add-int/lit8 p2, p2, 0x1

    .line 22
    iget v2, p0, Lc1/g;->e:I

    if-ge p2, v2, :cond_6

    .line 23
    iget-object v2, p0, Lc1/g;->b:[B

    aget-byte v2, v2, p2

    add-int/2addr v0, v2

    int-to-byte v0, v0

    goto :goto_3

    :cond_6
    neg-int p2, v0

    int-to-byte p2, p2

    .line 24
    iget-object v0, p0, Lc1/g;->b:[B

    aget-byte v3, v0, v2

    if-ne p2, v3, :cond_7

    .line 25
    iget p2, p0, Lc1/g;->d:I

    add-int/lit8 v3, p2, 0x1

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    invoke-virtual {p0, v0, v3, v2}, Lc1/g;->T2([BII)V

    .line 26
    iget p2, p0, Lc1/g;->e:I

    iput p2, p0, Lc1/g;->d:I

    goto :goto_4

    .line 27
    :cond_7
    iget p2, p0, Lc1/g;->d:I

    add-int/2addr p2, p3

    iput p2, p0, Lc1/g;->d:I

    .line 28
    :goto_4
    iput v1, p0, Lc1/g;->e:I

    .line 29
    :cond_8
    iget p2, p0, Lc1/g;->d:I

    add-int/2addr p2, p3

    iput p2, p0, Lc1/g;->d:I

    goto :goto_2

    :cond_9
    :goto_5
    if-eqz p2, :cond_b

    .line 30
    iget p1, p0, Lc1/g;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Lc1/g;->c:I

    if-eqz p1, :cond_a

    .line 31
    iget-object p3, p0, Lc1/g;->b:[B

    invoke-static {p3, p2, p3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    :cond_a
    iput v1, p0, Lc1/g;->d:I

    :cond_b
    return-void
.end method

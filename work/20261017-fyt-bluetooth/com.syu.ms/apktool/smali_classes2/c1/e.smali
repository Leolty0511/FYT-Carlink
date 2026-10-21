.class public Lc1/e;
.super Lc1/p;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public final f:I

.field public final g:[I

.field public final h:[I

.field public final i:[I

.field public final j:[I

.field public final k:[I

.field public final l:[I

.field public m:I

.field public n:Lo1/l0;

.field public final o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc1/p;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lc1/e;->b:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc1/e;->c:I

    .line 4
    iput v0, p0, Lc1/e;->d:I

    .line 5
    iput v0, p0, Lc1/e;->e:I

    const/16 v0, 0x13

    .line 6
    iput v0, p0, Lc1/e;->f:I

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Lc1/e;->g:[I

    new-array v1, v0, [I

    .line 8
    iput-object v1, p0, Lc1/e;->h:[I

    new-array v1, v0, [I

    .line 9
    iput-object v1, p0, Lc1/e;->i:[I

    new-array v1, v0, [I

    .line 10
    iput-object v1, p0, Lc1/e;->j:[I

    new-array v1, v0, [I

    .line 11
    iput-object v1, p0, Lc1/e;->k:[I

    new-array v0, v0, [I

    .line 12
    iput-object v0, p0, Lc1/e;->l:[I

    .line 13
    new-instance v0, Lo1/l0;

    invoke-direct {v0}, Lo1/l0;-><init>()V

    iput-object v0, p0, Lc1/e;->n:Lo1/l0;

    .line 14
    new-instance v0, Lc1/e$a;

    invoke-direct {v0, p0}, Lc1/e$a;-><init>(Lc1/e;)V

    iput-object v0, p0, Lc1/e;->o:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic O2(Lc1/e;)Lo1/l0;
    .locals 0

    .line 1
    iget-object p0, p0, Lc1/e;->n:Lo1/l0;

    return-object p0
.end method

.method public static synthetic P2(Lc1/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lc1/e;->m:I

    return p0
.end method

.method public static synthetic Q2(Lc1/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Lc1/e;->m:I

    return p1
.end method


# virtual methods
.method public L2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc1/e;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lc1/b;->c(Ljava/lang/Runnable;)V

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

    .line 2
    iget-object v0, p0, Lc1/e;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lc1/b;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final R2([BII)V
    .locals 12

    .line 1
    iget-object p3, p0, Lc1/e;->n:Lo1/l0;

    invoke-virtual {p3}, Lo1/l0;->a()V

    .line 2
    aget-byte p3, p1, p2

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/16 v2, 0x10

    const/16 v3, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    add-int/lit8 p3, p2, 0x1

    .line 3
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x2

    .line 4
    aget-byte v0, p1, v0

    add-int/lit8 v4, p2, 0x3

    .line 5
    aget-byte v4, p1, v4

    add-int/lit8 v8, p2, 0x4

    .line 6
    aget-byte v8, p1, v8

    add-int/2addr p2, v1

    .line 7
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    and-int/lit16 p3, v0, 0xff

    shl-int/lit8 p3, p3, 0x18

    and-int/lit16 v0, v4, 0xff

    shl-int/2addr v0, v2

    or-int/2addr p3, v0

    and-int/lit16 v0, v8, 0xff

    shl-int/2addr v0, v3

    or-int/2addr p3, v0

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p3

    .line 8
    iget-object p3, p0, Lc1/e;->l:[I

    aput p1, p3, p2

    const/4 p1, 0x7

    new-array v0, v6, [I

    aput p2, v0, v5

    .line 9
    aget p2, p3, p2

    aput p2, v0, v7

    invoke-static {p1, v0}, Lc1/b;->i(I[I)V

    goto/16 :goto_1

    :pswitch_1
    add-int/lit8 p3, p2, 0x1

    .line 10
    aget-byte p3, p1, p3

    const v3, 0xffff

    const/16 v8, 0x11

    if-eqz p3, :cond_2

    if-eq p3, v7, :cond_1

    if-eq p3, v2, :cond_3

    if-eq p3, v8, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v8

    goto :goto_0

    :cond_1
    move v2, v7

    goto :goto_0

    :cond_2
    move v2, v5

    :cond_3
    :goto_0
    const/16 p3, 0x13

    if-ge v2, p3, :cond_9

    add-int/lit8 p3, p2, 0x2

    .line 11
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 v3, p2, 0x3

    .line 12
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x32

    const/4 v8, 0x4

    add-int/2addr p2, v8

    .line 13
    aget-byte p1, p1, p2

    shr-int/lit8 p2, p1, 0x3

    and-int/2addr p2, v7

    shr-int/lit8 v9, p1, 0x4

    and-int/2addr v9, v7

    shr-int/2addr p1, v1

    and-int/2addr p1, v7

    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v5

    int-to-float v10, p3

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v1

    const-string v1, "%d PRESSURE %.2f KPA, TEMP %d C, BLOWBY %d, VOLTAGE %d, SIGNAL %d"

    .line 15
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TPMS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lc1/e;->g:[I

    aget v1, v0, v2

    if-eq v1, p3, :cond_4

    .line 17
    aput p3, v0, v2

    new-array v0, v6, [I

    aput v2, v0, v5

    aput p3, v0, v7

    .line 18
    invoke-static {v5, v0}, Lc1/b;->i(I[I)V

    .line 19
    :cond_4
    iget-object p3, p0, Lc1/e;->h:[I

    aget v0, p3, v2

    if-eq v0, v3, :cond_5

    .line 20
    aput v3, p3, v2

    new-array p3, v6, [I

    aput v2, p3, v5

    aput v3, p3, v7

    .line 21
    invoke-static {v7, p3}, Lc1/b;->i(I[I)V

    .line 22
    :cond_5
    iget-object p3, p0, Lc1/e;->i:[I

    aget v0, p3, v2

    if-eq v0, p2, :cond_6

    .line 23
    aput p2, p3, v2

    new-array p3, v6, [I

    aput v2, p3, v5

    aput p2, p3, v7

    .line 24
    invoke-static {v6, p3}, Lc1/b;->i(I[I)V

    .line 25
    :cond_6
    iget-object p2, p0, Lc1/e;->j:[I

    aget p3, p2, v2

    if-eq p3, v9, :cond_7

    .line 26
    aput v9, p2, v2

    new-array p2, v6, [I

    aput v2, p2, v5

    aput v9, p2, v7

    .line 27
    invoke-static {v4, p2}, Lc1/b;->i(I[I)V

    .line 28
    :cond_7
    iget-object p2, p0, Lc1/e;->k:[I

    aget p3, p2, v2

    if-eq p3, p1, :cond_9

    .line 29
    aput p1, p2, v2

    new-array p2, v6, [I

    aput v2, p2, v5

    aput p1, p2, v7

    .line 30
    invoke-static {v8, p2}, Lc1/b;->i(I[I)V

    goto :goto_1

    :pswitch_2
    add-int/lit8 p3, p2, 0x1

    .line 31
    aget-byte p3, p1, p3

    add-int/lit8 v1, p2, 0x2

    .line 32
    aget-byte v1, p1, v1

    add-int/2addr p2, v4

    .line 33
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    const/16 p3, 0x30

    if-ne p2, p3, :cond_9

    new-array p2, v6, [I

    and-int/lit16 p3, v1, 0xff

    aput p3, p2, v5

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, v7

    .line 34
    invoke-static {v0, p2}, Lc1/b;->i(I[I)V

    goto :goto_1

    :pswitch_3
    add-int/lit8 p3, p2, 0x1

    .line 35
    aget-byte p3, p1, p3

    add-int/2addr p2, v6

    .line 36
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    const/16 p3, 0x16

    if-ne p2, p3, :cond_8

    and-int/lit16 p3, p1, 0xff

    if-nez p3, :cond_8

    new-array p1, v6, [I

    .line 37
    fill-array-data p1, :array_0

    invoke-static {v3, p1}, Lc1/b;->i(I[I)V

    new-array p1, v6, [I

    .line 38
    fill-array-data p1, :array_1

    invoke-static {v3, p1}, Lc1/b;->i(I[I)V

    new-array p1, v6, [I

    .line 39
    fill-array-data p1, :array_2

    invoke-static {v3, p1}, Lc1/b;->i(I[I)V

    new-array p1, v6, [I

    .line 40
    fill-array-data p1, :array_3

    invoke-static {v3, p1}, Lc1/b;->i(I[I)V

    goto :goto_1

    :cond_8
    new-array p3, v6, [I

    aput p2, p3, v5

    and-int/lit16 p1, p1, 0xff

    aput p1, p3, v7

    .line 41
    invoke-static {v3, p3}, Lc1/b;->i(I[I)V

    :cond_9
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x16
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x16
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x16
        0x10
    .end array-data

    :array_3
    .array-data 4
        0x16
        0x11
    .end array-data
.end method

.method public final varargs S2(I[I)V
    .locals 7

    .line 1
    array-length v0, p2

    const/4 v1, 0x4

    add-int/2addr v0, v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 2
    new-array v3, v0, [B

    const/16 v4, 0x55

    const/4 v5, 0x0

    .line 3
    aput-byte v4, v3, v5

    const/16 v4, -0x56

    .line 4
    aput-byte v4, v3, v2

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    const/4 v6, 0x2

    .line 5
    aput-byte v4, v3, v6

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v4, 0x3

    .line 6
    aput-byte p1, v3, v4

    move p1, v5

    .line 7
    :goto_0
    array-length v4, p2

    if-ge p1, v4, :cond_0

    add-int v4, v1, p1

    .line 8
    aget v6, p2, p1

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v2

    .line 9
    aget-byte p1, v3, v5

    aput-byte p1, v3, v0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 10
    aget-byte p1, v3, v0

    aget-byte p2, v3, v2

    xor-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_1
    sget-object p1, Lz/a;->f:Lo1/e0;

    invoke-virtual {p1, v3}, Lo1/e0;->i([B)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 6

    const/16 p3, 0x13

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_4

    if-eq p2, v0, :cond_3

    const/4 v3, 0x3

    if-eq p2, v3, :cond_2

    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    const/16 p3, 0x12

    if-eq p2, p3, :cond_0

    goto/16 :goto_5

    :cond_0
    new-array p3, v2, [I

    .line 1
    iget v0, p0, Lc1/e;->m:I

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_5

    :cond_1
    move v3, v1

    :goto_0
    if-ge v3, p3, :cond_6

    new-array v4, v0, [I

    aput v3, v4, v1

    .line 2
    iget-object v5, p0, Lc1/e;->k:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_1
    if-ge v3, p3, :cond_6

    new-array v4, v0, [I

    aput v3, v4, v1

    .line 3
    iget-object v5, p0, Lc1/e;->j:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_2
    if-ge v3, p3, :cond_6

    new-array v4, v0, [I

    aput v3, v4, v1

    .line 4
    iget-object v5, p0, Lc1/e;->i:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_3
    if-ge v3, p3, :cond_6

    new-array v4, v0, [I

    aput v3, v4, v1

    .line 5
    iget-object v5, p0, Lc1/e;->h:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_4
    if-ge v3, p3, :cond_6

    new-array v4, v0, [I

    aput v3, v4, v1

    .line 6
    iget-object v5, p0, Lc1/e;->g:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 2

    const/4 p3, 0x3

    const/4 p4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p1, v0, [I

    aput v0, p1, v1

    .line 1
    invoke-virtual {p0, p4, p1}, Lc1/e;->S2(I[I)V

    goto :goto_0

    .line 2
    :pswitch_1
    invoke-virtual {p0, p2, p4}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p4, [I

    .line 3
    aget p4, p2, v1

    aput p4, p1, v1

    aget p2, p2, v0

    aput p2, p1, v0

    invoke-virtual {p0, p3, p1}, Lc1/e;->S2(I[I)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x7

    new-array p2, v0, [I

    aput v1, p2, v1

    .line 4
    invoke-virtual {p0, p1, p2}, Lc1/e;->S2(I[I)V

    goto :goto_0

    .line 5
    :pswitch_3
    invoke-virtual {p0, p2, p4}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    aget p1, p2, v1

    new-array p3, v0, [I

    aget p2, p2, v0

    aput p2, p3, v1

    invoke-virtual {p0, p1, p3}, Lc1/e;->S2(I[I)V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x6

    new-array p2, v0, [I

    aput v1, p2, v1

    .line 7
    invoke-virtual {p0, p1, p2}, Lc1/e;->S2(I[I)V

    goto :goto_0

    :pswitch_5
    new-array p1, v0, [I

    aput v1, p1, v1

    .line 8
    invoke-virtual {p0, p3, p1}, Lc1/e;->S2(I[I)V

    goto :goto_0

    .line 9
    :pswitch_6
    invoke-virtual {p0, p2, v0}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    .line 10
    aget p2, p2, v1

    aput p2, p1, v1

    invoke-virtual {p0, p4, p1}, Lc1/e;->S2(I[I)V

    goto :goto_0

    .line 11
    :pswitch_7
    invoke-virtual {p0, p2, v0}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    .line 12
    aget p2, p2, v1

    aput p2, p1, v1

    invoke-virtual {p0, v0, p1}, Lc1/e;->S2(I[I)V

    :cond_0
    :goto_0
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

.method public b([B)V
    .locals 7

    if-eqz p1, :cond_e

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget v0, p0, Lc1/e;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lc1/e;->c:I

    .line 4
    iput v2, p0, Lc1/e;->d:I

    .line 5
    iput v2, p0, Lc1/e;->e:I

    .line 6
    :cond_1
    iget-object v0, p0, Lc1/e;->b:[B

    iget v1, p0, Lc1/e;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lc1/e;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lc1/e;->c:I

    .line 8
    iget p1, p0, Lc1/e;->e:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lc1/e;->b:[B

    aget-byte p1, p1, v2

    move v0, v3

    .line 10
    :goto_0
    iget v4, p0, Lc1/e;->e:I

    if-ge v0, v4, :cond_3

    .line 11
    iget-object v4, p0, Lc1/e;->b:[B

    aget-byte v4, v4, v0

    xor-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lc1/e;->b:[B

    aget-byte v5, v0, v4

    if-ne p1, v5, :cond_4

    sub-int/2addr v4, v1

    .line 13
    invoke-virtual {p0, v0, v1, v4}, Lc1/e;->R2([BII)V

    .line 14
    iget p1, p0, Lc1/e;->e:I

    add-int/2addr p1, v3

    iput p1, p0, Lc1/e;->d:I

    goto :goto_1

    .line 15
    :cond_4
    iput v3, p0, Lc1/e;->d:I

    .line 16
    :goto_1
    iput v2, p0, Lc1/e;->e:I

    .line 17
    :cond_5
    iget p1, p0, Lc1/e;->c:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lc1/e;->d:I

    if-ge v0, p1, :cond_b

    .line 18
    iget-object v4, p0, Lc1/e;->b:[B

    aget-byte v5, v4, v0

    const/16 v6, 0x55

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v4, v5

    const/16 v6, -0x56

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v0, 0x2

    .line 19
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lc1/e;->e:I

    const/4 v6, 0x4

    if-ge v5, v6, :cond_6

    .line 20
    iput v2, p0, Lc1/e;->e:I

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v0, -0x1

    add-int/2addr v5, v6

    .line 21
    iput v5, p0, Lc1/e;->e:I

    .line 22
    iget v6, p0, Lc1/e;->c:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v0

    .line 23
    iput v5, p0, Lc1/e;->e:I

    goto :goto_6

    .line 24
    :cond_7
    aget-byte v4, v4, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 25
    iget v5, p0, Lc1/e;->e:I

    if-ge v0, v5, :cond_8

    .line 26
    iget-object v5, p0, Lc1/e;->b:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    goto :goto_3

    .line 27
    :cond_8
    iget-object v0, p0, Lc1/e;->b:[B

    aget-byte v6, v0, v5

    if-ne v4, v6, :cond_9

    .line 28
    iget v4, p0, Lc1/e;->d:I

    add-int/lit8 v6, v4, 0x2

    sub-int/2addr v5, v4

    sub-int/2addr v5, v1

    invoke-virtual {p0, v0, v6, v5}, Lc1/e;->R2([BII)V

    .line 29
    iget v0, p0, Lc1/e;->e:I

    iput v0, p0, Lc1/e;->d:I

    goto :goto_4

    .line 30
    :cond_9
    iget v0, p0, Lc1/e;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lc1/e;->d:I

    .line 31
    :goto_4
    iput v2, p0, Lc1/e;->e:I

    .line 32
    :cond_a
    :goto_5
    iget v0, p0, Lc1/e;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lc1/e;->d:I

    goto :goto_2

    :cond_b
    :goto_6
    if-eqz v0, :cond_d

    .line 33
    iget p1, p0, Lc1/e;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lc1/e;->c:I

    if-eqz p1, :cond_c

    .line 34
    iget-object v1, p0, Lc1/e;->b:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_c
    iput v2, p0, Lc1/e;->d:I

    :cond_d
    return-void

    :cond_e
    :goto_7
    const-wide/16 v0, 0x64

    .line 36
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_8
    return-void
.end method

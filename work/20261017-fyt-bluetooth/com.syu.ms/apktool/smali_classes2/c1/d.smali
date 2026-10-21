.class public Lc1/d;
.super Lc1/p;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static t:I = 0x5


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

.field public final o:[I

.field public p:I

.field public q:I

.field public r:Lo1/l0;

.field public final s:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc1/p;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lc1/d;->b:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc1/d;->c:I

    .line 4
    iput v0, p0, Lc1/d;->d:I

    .line 5
    iput v0, p0, Lc1/d;->e:I

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Lc1/d;->f:[I

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Lc1/d;->g:[I

    new-array v1, v0, [I

    .line 8
    iput-object v1, p0, Lc1/d;->h:[I

    new-array v1, v0, [I

    .line 9
    iput-object v1, p0, Lc1/d;->i:[I

    new-array v1, v0, [I

    .line 10
    iput-object v1, p0, Lc1/d;->j:[I

    new-array v1, v0, [I

    .line 11
    iput-object v1, p0, Lc1/d;->k:[I

    new-array v1, v0, [I

    .line 12
    iput-object v1, p0, Lc1/d;->l:[I

    new-array v1, v0, [I

    .line 13
    iput-object v1, p0, Lc1/d;->m:[I

    new-array v1, v0, [I

    .line 14
    iput-object v1, p0, Lc1/d;->n:[I

    new-array v0, v0, [I

    .line 15
    iput-object v0, p0, Lc1/d;->o:[I

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lc1/d;->q:I

    .line 17
    new-instance v0, Lo1/l0;

    invoke-direct {v0}, Lo1/l0;-><init>()V

    iput-object v0, p0, Lc1/d;->r:Lo1/l0;

    .line 18
    new-instance v0, Lc1/d$a;

    invoke-direct {v0, p0}, Lc1/d$a;-><init>(Lc1/d;)V

    iput-object v0, p0, Lc1/d;->s:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic O2()I
    .locals 1

    .line 1
    sget v0, Lc1/d;->t:I

    return v0
.end method

.method public static synthetic P2(I)I
    .locals 0

    .line 1
    sput p0, Lc1/d;->t:I

    return p0
.end method

.method public static synthetic Q2()I
    .locals 2

    .line 1
    sget v0, Lc1/d;->t:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lc1/d;->t:I

    return v0
.end method

.method public static synthetic R2(Lc1/d;)Lo1/l0;
    .locals 0

    .line 1
    iget-object p0, p0, Lc1/d;->r:Lo1/l0;

    return-object p0
.end method

.method public static synthetic S2(Lc1/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lc1/d;->p:I

    return p0
.end method

.method public static synthetic T2(Lc1/d;I)I
    .locals 0

    .line 1
    iput p1, p0, Lc1/d;->p:I

    return p1
.end method


# virtual methods
.method public L2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc1/d;->s:Ljava/lang/Runnable;

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
    iget-object v0, p0, Lc1/d;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Lc1/b;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public P0(Ly/b;I)V
    .locals 0

    return-void
.end method

.method public final U2([BII)V
    .locals 10

    const-string v0, "YAT"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lo1/b0;->g(Ljava/lang/String;[BII)V

    .line 2
    iget-object v0, p0, Lc1/d;->r:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    .line 3
    aget-byte v0, p1, p2

    const/16 v1, 0x62

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x63

    if-eq v0, v1, :cond_4

    const/16 v1, 0x66

    if-eq v0, v1, :cond_3

    const/16 p3, 0x67

    if-eq v0, p3, :cond_0

    goto/16 :goto_1

    :cond_0
    add-int/2addr p2, v3

    .line 4
    aget-byte p1, p1, p2

    const/16 p2, -0x56

    const/16 p3, 0xe

    if-eq p1, p2, :cond_2

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    goto/16 :goto_1

    :cond_1
    new-array p1, v3, [I

    aput v2, p1, v2

    .line 5
    invoke-static {p3, p1}, Lc1/b;->i(I[I)V

    goto/16 :goto_1

    :cond_2
    new-array p1, v3, [I

    aput v3, p1, v2

    .line 6
    invoke-static {p3, p1}, Lc1/b;->i(I[I)V

    goto/16 :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0, p2, p3}, Lc1/d;->W2(II)V

    goto/16 :goto_1

    .line 8
    :cond_4
    invoke-virtual {p0, p2, p3}, Lc1/d;->W2(II)V

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v0, p2, 0x1

    .line 9
    aget-byte v0, p1, v0

    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    add-int/2addr p2, v5

    .line 10
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p1, p1, -0x32

    .line 11
    sget-object p2, Lc1/a;->d:[I

    aput p1, p2, v1

    new-array p2, v3, [I

    aput p1, p2, v2

    .line 12
    invoke-static {v1, p2}, Lc1/b;->i(I[I)V

    goto/16 :goto_1

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 13
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p2, v4

    .line 14
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 15
    iget-object p2, p0, Lc1/d;->f:[I

    aget v0, p2, v1

    if-eq v0, p3, :cond_6

    .line 16
    aput p3, p2, v1

    new-array p2, v5, [I

    aput v1, p2, v2

    aput p3, p2, v3

    .line 17
    invoke-static {v5, p2}, Lc1/b;->i(I[I)V

    .line 18
    :cond_6
    iget-object p2, p0, Lc1/d;->g:[I

    aget p3, p2, v1

    if-eq p3, p1, :cond_e

    .line 19
    aput p1, p2, v1

    new-array p2, v5, [I

    aput v1, p2, v2

    aput p1, p2, v3

    .line 20
    invoke-static {v4, p2}, Lc1/b;->i(I[I)V

    goto/16 :goto_1

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 21
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p2, v4

    .line 22
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 23
    iget-object p2, p0, Lc1/d;->f:[I

    aget v0, p2, v4

    if-eq v0, p3, :cond_7

    .line 24
    aput p3, p2, v4

    new-array p2, v5, [I

    aput v4, p2, v2

    aput p3, p2, v3

    .line 25
    invoke-static {v5, p2}, Lc1/b;->i(I[I)V

    .line 26
    :cond_7
    iget-object p2, p0, Lc1/d;->g:[I

    aget p3, p2, v4

    if-eq p3, p1, :cond_e

    .line 27
    aput p1, p2, v4

    new-array p2, v5, [I

    aput v4, p2, v2

    aput p1, p2, v3

    .line 28
    invoke-static {v4, p2}, Lc1/b;->i(I[I)V

    goto/16 :goto_1

    :pswitch_3
    add-int/lit8 p3, p2, 0x2

    .line 29
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p2, v4

    .line 30
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 31
    iget-object p2, p0, Lc1/d;->f:[I

    aget v0, p2, v5

    if-eq v0, p3, :cond_8

    .line 32
    aput p3, p2, v5

    new-array p2, v5, [I

    aput v5, p2, v2

    aput p3, p2, v3

    .line 33
    invoke-static {v5, p2}, Lc1/b;->i(I[I)V

    .line 34
    :cond_8
    iget-object p2, p0, Lc1/d;->g:[I

    aget p3, p2, v5

    if-eq p3, p1, :cond_e

    .line 35
    aput p1, p2, v5

    new-array p2, v5, [I

    aput v5, p2, v2

    aput p1, p2, v3

    .line 36
    invoke-static {v4, p2}, Lc1/b;->i(I[I)V

    goto/16 :goto_1

    :pswitch_4
    add-int/lit8 p3, p2, 0x2

    .line 37
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p2, v4

    .line 38
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 39
    iget-object p2, p0, Lc1/d;->f:[I

    aget v0, p2, v3

    if-eq v0, p3, :cond_9

    .line 40
    aput p3, p2, v3

    new-array p2, v5, [I

    aput v3, p2, v2

    aput p3, p2, v3

    .line 41
    invoke-static {v5, p2}, Lc1/b;->i(I[I)V

    .line 42
    :cond_9
    iget-object p2, p0, Lc1/d;->g:[I

    aget p3, p2, v3

    if-eq p3, p1, :cond_e

    .line 43
    aput p1, p2, v3

    new-array p2, v5, [I

    aput v3, p2, v2

    aput p1, p2, v3

    .line 44
    invoke-static {v4, p2}, Lc1/b;->i(I[I)V

    goto/16 :goto_1

    :pswitch_5
    add-int/lit8 p3, p2, 0x2

    .line 45
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p2, v4

    .line 46
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 47
    iget-object p2, p0, Lc1/d;->f:[I

    aget v0, p2, v2

    if-eq v0, p3, :cond_a

    .line 48
    aput p3, p2, v2

    new-array p2, v5, [I

    aput v2, p2, v2

    aput p3, p2, v3

    .line 49
    invoke-static {v5, p2}, Lc1/b;->i(I[I)V

    .line 50
    :cond_a
    iget-object p2, p0, Lc1/d;->g:[I

    aget p3, p2, v2

    if-eq p3, p1, :cond_e

    .line 51
    aput p1, p2, v2

    new-array p2, v5, [I

    aput v2, p2, v2

    aput p1, p2, v3

    .line 52
    invoke-static {v4, p2}, Lc1/b;->i(I[I)V

    goto :goto_1

    :pswitch_6
    move v0, v2

    :goto_0
    add-int/lit8 v6, p3, -0x1

    .line 53
    div-int/2addr v6, v5

    if-ge v0, v6, :cond_d

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, p2

    add-int/lit8 v7, v6, 0x2

    .line 54
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v4

    .line 55
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    .line 56
    iget-object v8, p0, Lc1/d;->f:[I

    aget v9, v8, v0

    if-eq v9, v7, :cond_b

    .line 57
    aput v7, v8, v0

    new-array v8, v5, [I

    aput v0, v8, v2

    aput v7, v8, v3

    .line 58
    invoke-static {v5, v8}, Lc1/b;->i(I[I)V

    .line 59
    :cond_b
    iget-object v7, p0, Lc1/d;->g:[I

    aget v8, v7, v0

    if-eq v8, v6, :cond_c

    .line 60
    aput v6, v7, v0

    new-array v7, v5, [I

    aput v0, v7, v2

    aput v6, v7, v3

    .line 61
    invoke-static {v4, v7}, Lc1/b;->i(I[I)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_d
    add-int/2addr p2, p3

    sub-int/2addr p2, v3

    .line 62
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p1, p1, -0x32

    .line 63
    sget-object p2, Lc1/a;->d:[I

    aput p1, p2, v1

    new-array p2, v3, [I

    aput p1, p2, v2

    .line 64
    invoke-static {v1, p2}, Lc1/b;->i(I[I)V

    :cond_e
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final varargs V2(I[I)V
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

.method public W2(II)V
    .locals 17

    move-object/from16 v6, p0

    move/from16 v0, p2

    .line 1
    iget-object v1, v6, Lc1/d;->b:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v3, v1, v2

    const/16 v4, -0x80

    const/16 v10, 0x10

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x7

    const/16 v15, 0x8

    const/4 v8, 0x3

    const/16 v16, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x1

    if-eq v3, v4, :cond_14

    const/16 v4, -0x56

    const/16 v9, 0xf

    if-eq v3, v4, :cond_13

    const/16 v4, 0x20

    if-eq v3, v4, :cond_14

    const/16 v4, 0x40

    if-eq v3, v4, :cond_14

    const/16 v4, 0x60

    if-eq v3, v4, :cond_14

    const/4 v4, -0x1

    if-eq v3, v4, :cond_12

    if-eqz v3, :cond_9

    if-eq v3, v7, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v3, v8, :cond_0

    if-eq v3, v13, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, p1, 0x2

    .line 3
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v10

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v15

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x4

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    .line 4
    iget-object v2, v6, Lc1/d;->h:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_1

    .line 5
    aput v1, v2, v0

    new-array v2, v5, [I

    aput v0, v2, v16

    aput v1, v2, v7

    .line 6
    invoke-static {v12, v2}, Lc1/b;->i(I[I)V

    .line 7
    :cond_1
    iget-object v1, v6, Lc1/d;->b:[B

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    shl-int/2addr v2, v15

    add-int/lit8 v3, p1, 0x6

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    .line 8
    iget-object v2, v6, Lc1/d;->i:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_2

    .line 9
    aput v1, v2, v0

    new-array v2, v5, [I

    aput v0, v2, v16

    aput v1, v2, v7

    .line 10
    invoke-static {v11, v2}, Lc1/b;->i(I[I)V

    .line 11
    :cond_2
    iget-object v1, v6, Lc1/d;->b:[B

    add-int/lit8 v2, p1, 0x7

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x32

    .line 12
    iget-object v2, v6, Lc1/d;->j:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_3

    .line 13
    aput v1, v2, v0

    new-array v2, v5, [I

    aput v0, v2, v16

    aput v1, v2, v7

    .line 14
    invoke-static {v14, v2}, Lc1/b;->i(I[I)V

    .line 15
    :cond_3
    iget-object v1, v6, Lc1/d;->b:[B

    add-int/lit8 v2, p1, 0x8

    aget-byte v1, v1, v2

    shr-int/2addr v1, v14

    and-int/2addr v1, v7

    .line 16
    iget-object v3, v6, Lc1/d;->k:[I

    aget v4, v3, v0

    if-eq v4, v1, :cond_4

    .line 17
    aput v1, v3, v0

    new-array v3, v5, [I

    aput v0, v3, v16

    aput v1, v3, v7

    .line 18
    invoke-static {v15, v3}, Lc1/b;->i(I[I)V

    .line 19
    :cond_4
    iget-object v3, v6, Lc1/d;->b:[B

    aget-byte v3, v3, v2

    shr-int/2addr v3, v13

    and-int/2addr v3, v7

    .line 20
    iget-object v4, v6, Lc1/d;->l:[I

    aget v9, v4, v0

    if-eq v9, v3, :cond_5

    .line 21
    aput v3, v4, v0

    new-array v4, v5, [I

    aput v0, v4, v16

    aput v3, v4, v7

    const/16 v9, 0x9

    .line 22
    invoke-static {v9, v4}, Lc1/b;->i(I[I)V

    .line 23
    :cond_5
    iget-object v4, v6, Lc1/d;->b:[B

    aget-byte v4, v4, v2

    shr-int/2addr v4, v8

    and-int/2addr v4, v7

    .line 24
    iget-object v9, v6, Lc1/d;->m:[I

    aget v10, v9, v0

    if-eq v10, v4, :cond_6

    .line 25
    aput v4, v9, v0

    new-array v9, v5, [I

    aput v0, v9, v16

    aput v4, v9, v7

    const/16 v10, 0xa

    .line 26
    invoke-static {v10, v9}, Lc1/b;->i(I[I)V

    .line 27
    :cond_6
    iget-object v9, v6, Lc1/d;->b:[B

    aget-byte v9, v9, v2

    shr-int/2addr v9, v5

    and-int/2addr v9, v7

    .line 28
    iget-object v10, v6, Lc1/d;->n:[I

    aget v11, v10, v0

    if-eq v11, v9, :cond_7

    .line 29
    aput v9, v10, v0

    new-array v10, v5, [I

    aput v0, v10, v16

    aput v9, v10, v7

    const/16 v11, 0xb

    .line 30
    invoke-static {v11, v10}, Lc1/b;->i(I[I)V

    .line 31
    :cond_7
    iget-object v10, v6, Lc1/d;->b:[B

    aget-byte v2, v10, v2

    and-int/2addr v8, v2

    .line 32
    iget-object v2, v6, Lc1/d;->o:[I

    aget v10, v2, v0

    if-eq v10, v8, :cond_8

    .line 33
    aput v8, v2, v0

    new-array v2, v5, [I

    aput v0, v2, v16

    aput v8, v2, v7

    const/16 v0, 0xd

    .line 34
    invoke-static {v0, v2}, Lc1/b;->i(I[I)V

    :cond_8
    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move v4, v9

    move v5, v8

    .line 35
    invoke-virtual/range {v0 .. v5}, Lc1/d;->X2(IIIII)V

    goto/16 :goto_1

    :cond_9
    if-le v0, v8, :cond_1d

    add-int/lit8 v0, p1, 0x2

    .line 36
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, p1, 0x3

    .line 37
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v10

    add-int/lit8 v3, p1, 0x4

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v15

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x5

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    .line 38
    iget-object v2, v6, Lc1/d;->h:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_a

    .line 39
    aput v1, v2, v0

    new-array v2, v5, [I

    aput v0, v2, v16

    aput v1, v2, v7

    .line 40
    invoke-static {v12, v2}, Lc1/b;->i(I[I)V

    .line 41
    :cond_a
    iget-object v1, v6, Lc1/d;->b:[B

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    shl-int/2addr v2, v15

    add-int/lit8 v3, p1, 0x7

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    .line 42
    iget-object v2, v6, Lc1/d;->i:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_b

    .line 43
    aput v1, v2, v0

    new-array v2, v5, [I

    aput v0, v2, v16

    aput v1, v2, v7

    .line 44
    invoke-static {v11, v2}, Lc1/b;->i(I[I)V

    .line 45
    :cond_b
    iget-object v1, v6, Lc1/d;->b:[B

    add-int/lit8 v2, p1, 0x8

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x32

    .line 46
    iget-object v2, v6, Lc1/d;->j:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_c

    .line 47
    aput v1, v2, v0

    new-array v2, v5, [I

    aput v0, v2, v16

    aput v1, v2, v7

    .line 48
    invoke-static {v14, v2}, Lc1/b;->i(I[I)V

    .line 49
    :cond_c
    iget-object v1, v6, Lc1/d;->b:[B

    const/16 v2, 0x9

    add-int/lit8 v3, p1, 0x9

    aget-byte v1, v1, v3

    shr-int/2addr v1, v14

    and-int/2addr v1, v7

    .line 50
    iget-object v2, v6, Lc1/d;->k:[I

    aget v4, v2, v0

    if-eq v4, v1, :cond_d

    .line 51
    aput v1, v2, v0

    new-array v2, v5, [I

    aput v0, v2, v16

    aput v1, v2, v7

    .line 52
    invoke-static {v15, v2}, Lc1/b;->i(I[I)V

    .line 53
    :cond_d
    iget-object v2, v6, Lc1/d;->b:[B

    aget-byte v2, v2, v3

    shr-int/2addr v2, v13

    and-int/2addr v2, v7

    .line 54
    iget-object v4, v6, Lc1/d;->l:[I

    aget v9, v4, v0

    if-eq v9, v2, :cond_e

    .line 55
    aput v2, v4, v0

    new-array v4, v5, [I

    aput v0, v4, v16

    aput v2, v4, v7

    const/16 v9, 0x9

    .line 56
    invoke-static {v9, v4}, Lc1/b;->i(I[I)V

    .line 57
    :cond_e
    iget-object v4, v6, Lc1/d;->b:[B

    aget-byte v4, v4, v3

    shr-int/2addr v4, v8

    and-int/2addr v4, v7

    .line 58
    iget-object v9, v6, Lc1/d;->m:[I

    aget v10, v9, v0

    if-eq v10, v4, :cond_f

    .line 59
    aput v4, v9, v0

    new-array v9, v5, [I

    aput v0, v9, v16

    aput v4, v9, v7

    const/16 v10, 0xa

    .line 60
    invoke-static {v10, v9}, Lc1/b;->i(I[I)V

    .line 61
    :cond_f
    iget-object v9, v6, Lc1/d;->b:[B

    aget-byte v9, v9, v3

    shr-int/2addr v9, v5

    and-int/2addr v9, v7

    .line 62
    iget-object v10, v6, Lc1/d;->n:[I

    aget v11, v10, v0

    if-eq v11, v9, :cond_10

    .line 63
    aput v9, v10, v0

    new-array v10, v5, [I

    aput v0, v10, v16

    aput v9, v10, v7

    const/16 v11, 0xb

    .line 64
    invoke-static {v11, v10}, Lc1/b;->i(I[I)V

    .line 65
    :cond_10
    iget-object v10, v6, Lc1/d;->b:[B

    aget-byte v3, v10, v3

    and-int/2addr v8, v3

    .line 66
    iget-object v3, v6, Lc1/d;->o:[I

    aget v10, v3, v0

    if-eq v10, v8, :cond_11

    .line 67
    aput v8, v3, v0

    new-array v3, v5, [I

    aput v0, v3, v16

    aput v8, v3, v7

    const/16 v0, 0xd

    .line 68
    invoke-static {v0, v3}, Lc1/b;->i(I[I)V

    :cond_11
    move-object/from16 v0, p0

    move v3, v4

    move v4, v9

    move v5, v8

    .line 69
    invoke-virtual/range {v0 .. v5}, Lc1/d;->X2(IIIII)V

    goto/16 :goto_1

    :cond_12
    new-array v0, v7, [I

    aput v16, v0, v16

    .line 70
    invoke-static {v9, v0}, Lc1/b;->i(I[I)V

    .line 71
    iget-object v0, v6, Lc1/d;->b:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1d

    new-array v0, v7, [I

    aput v16, v0, v16

    .line 72
    invoke-static {v10, v0}, Lc1/b;->i(I[I)V

    goto/16 :goto_1

    :cond_13
    new-array v0, v7, [I

    aput v7, v0, v16

    .line 73
    invoke-static {v9, v0}, Lc1/b;->i(I[I)V

    .line 74
    iget-object v0, v6, Lc1/d;->b:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1d

    new-array v0, v7, [I

    aput v7, v0, v16

    .line 75
    invoke-static {v10, v0}, Lc1/b;->i(I[I)V

    goto/16 :goto_1

    :cond_14
    if-le v0, v8, :cond_1d

    add-int/lit8 v0, p1, 0x2

    .line 76
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, p1, 0x3

    .line 77
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v10

    add-int/lit8 v3, p1, 0x4

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v15

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x5

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    .line 78
    iget-object v2, v6, Lc1/d;->h:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_15

    .line 79
    aput v1, v2, v0

    new-array v2, v5, [I

    aput v0, v2, v16

    aput v1, v2, v7

    .line 80
    invoke-static {v12, v2}, Lc1/b;->i(I[I)V

    .line 81
    :cond_15
    iget-object v1, v6, Lc1/d;->b:[B

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    shl-int/2addr v2, v15

    add-int/lit8 v3, p1, 0x7

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    .line 82
    iget-object v2, v6, Lc1/d;->i:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_16

    .line 83
    aput v1, v2, v0

    new-array v2, v5, [I

    aput v0, v2, v16

    aput v1, v2, v7

    .line 84
    invoke-static {v11, v2}, Lc1/b;->i(I[I)V

    .line 85
    :cond_16
    iget-object v1, v6, Lc1/d;->b:[B

    add-int/lit8 v2, p1, 0x8

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x32

    .line 86
    iget-object v2, v6, Lc1/d;->j:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_17

    .line 87
    aput v1, v2, v0

    new-array v2, v5, [I

    aput v0, v2, v16

    aput v1, v2, v7

    .line 88
    invoke-static {v14, v2}, Lc1/b;->i(I[I)V

    .line 89
    :cond_17
    iget-object v1, v6, Lc1/d;->b:[B

    const/16 v2, 0x9

    add-int/lit8 v3, p1, 0x9

    aget-byte v1, v1, v3

    shr-int/2addr v1, v14

    and-int/2addr v1, v7

    .line 90
    iget-object v2, v6, Lc1/d;->k:[I

    aget v4, v2, v0

    if-eq v4, v1, :cond_18

    .line 91
    aput v1, v2, v0

    new-array v2, v5, [I

    aput v0, v2, v16

    aput v1, v2, v7

    .line 92
    invoke-static {v15, v2}, Lc1/b;->i(I[I)V

    .line 93
    :cond_18
    iget-object v1, v6, Lc1/d;->b:[B

    aget-byte v1, v1, v3

    shr-int/2addr v1, v13

    and-int/2addr v1, v7

    .line 94
    iget-object v2, v6, Lc1/d;->l:[I

    aget v4, v2, v0

    if-eq v4, v1, :cond_19

    .line 95
    aput v1, v2, v0

    new-array v2, v5, [I

    aput v0, v2, v16

    aput v1, v2, v7

    const/16 v1, 0x9

    .line 96
    invoke-static {v1, v2}, Lc1/b;->i(I[I)V

    .line 97
    :cond_19
    iget-object v1, v6, Lc1/d;->b:[B

    aget-byte v1, v1, v3

    shr-int/2addr v1, v8

    and-int/2addr v1, v7

    .line 98
    iget-object v2, v6, Lc1/d;->m:[I

    aget v4, v2, v0

    if-eq v4, v1, :cond_1a

    .line 99
    aput v1, v2, v0

    new-array v2, v5, [I

    aput v0, v2, v16

    aput v1, v2, v7

    const/16 v1, 0xa

    .line 100
    invoke-static {v1, v2}, Lc1/b;->i(I[I)V

    .line 101
    :cond_1a
    iget-object v1, v6, Lc1/d;->b:[B

    aget-byte v1, v1, v3

    shr-int/2addr v1, v5

    and-int/2addr v1, v7

    .line 102
    iget-object v2, v6, Lc1/d;->n:[I

    aget v4, v2, v0

    if-eq v4, v1, :cond_1b

    .line 103
    aput v1, v2, v0

    new-array v2, v5, [I

    aput v0, v2, v16

    aput v1, v2, v7

    const/16 v1, 0xb

    .line 104
    invoke-static {v1, v2}, Lc1/b;->i(I[I)V

    .line 105
    :cond_1b
    iget-object v1, v6, Lc1/d;->b:[B

    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    .line 106
    iget-object v2, v6, Lc1/d;->o:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_1c

    .line 107
    aput v1, v2, v0

    new-array v2, v5, [I

    aput v0, v2, v16

    aput v1, v2, v7

    const/16 v3, 0xd

    .line 108
    invoke-static {v3, v2}, Lc1/b;->i(I[I)V

    goto :goto_0

    :cond_1c
    const/16 v3, 0xd

    :goto_0
    new-array v2, v5, [I

    aput v0, v2, v16

    aput v1, v2, v7

    .line 109
    invoke-static {v3, v2}, Lc1/b;->i(I[I)V

    :cond_1d
    :goto_1
    return-void
.end method

.method public X2(IIIII)V
    .locals 2

    .line 1
    iget v0, p0, Lc1/d;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lc1/a;->f:I

    if-ne v0, v1, :cond_1

    if-eq p1, v1, :cond_0

    if-eq p2, v1, :cond_0

    if-eq p3, v1, :cond_0

    if-eq p4, v1, :cond_0

    if-eq p5, v1, :cond_0

    const/4 p1, 0x2

    if-ne p5, p1, :cond_1

    :cond_0
    const-string p1, "com.syu.tire"

    .line 2
    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 3
    invoke-static {p1}, Lo1/u;->f(Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 6

    const/16 p3, 0xd

    const/4 v0, 0x2

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, p3, :cond_1

    const/16 p3, 0x12

    if-eq p2, p3, :cond_0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    move p3, v3

    :goto_0
    if-ge p3, v1, :cond_2

    new-array v4, v0, [I

    aput p3, v4, v3

    .line 1
    iget-object v5, p0, Lc1/d;->n:[I

    aget v5, v5, p3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :pswitch_1
    move p3, v3

    :goto_1
    if-ge p3, v1, :cond_2

    new-array v4, v0, [I

    aput p3, v4, v3

    .line 2
    iget-object v5, p0, Lc1/d;->m:[I

    aget v5, v5, p3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :pswitch_2
    move p3, v3

    :goto_2
    if-ge p3, v1, :cond_2

    new-array v4, v0, [I

    aput p3, v4, v3

    .line 3
    iget-object v5, p0, Lc1/d;->l:[I

    aget v5, v5, p3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :pswitch_3
    move p3, v3

    :goto_3
    if-ge p3, v1, :cond_2

    new-array v4, v0, [I

    aput p3, v4, v3

    .line 4
    iget-object v5, p0, Lc1/d;->k:[I

    aget v5, v5, p3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :pswitch_4
    move p3, v3

    :goto_4
    if-ge p3, v1, :cond_2

    new-array v4, v0, [I

    aput p3, v4, v3

    .line 5
    iget-object v5, p0, Lc1/d;->j:[I

    aget v5, v5, p3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :pswitch_5
    move p3, v3

    :goto_5
    if-ge p3, v1, :cond_2

    new-array v4, v0, [I

    aput p3, v4, v3

    .line 6
    iget-object v5, p0, Lc1/d;->i:[I

    aget v5, v5, p3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :pswitch_6
    move p3, v3

    :goto_6
    if-ge p3, v1, :cond_2

    new-array v4, v0, [I

    aput p3, v4, v3

    .line 7
    iget-object v5, p0, Lc1/d;->h:[I

    aget v5, v5, p3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :pswitch_7
    new-array p3, v2, [I

    .line 8
    sget-object v0, Lc1/a;->d:[I

    aget v0, v0, p2

    aput v0, p3, v3

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_a

    :pswitch_8
    move p3, v3

    :goto_7
    if-ge p3, v1, :cond_2

    new-array v4, v0, [I

    aput p3, v4, v3

    .line 9
    iget-object v5, p0, Lc1/d;->g:[I

    aget v5, v5, p3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :pswitch_9
    move p3, v3

    :goto_8
    if-ge p3, v1, :cond_2

    new-array v4, v0, [I

    aput p3, v4, v3

    .line 10
    iget-object v5, p0, Lc1/d;->f:[I

    aget v5, v5, p3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_0
    new-array p3, v2, [I

    .line 11
    iget v0, p0, Lc1/d;->p:I

    aput v0, p3, v3

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_a

    :cond_1
    move p3, v3

    :goto_9
    if-ge p3, v1, :cond_2

    new-array v4, v0, [I

    aput p3, v4, v3

    .line 12
    iget-object v5, p0, Lc1/d;->o:[I

    aget v5, v5, p3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    :cond_2
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x2
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
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 5

    const/16 p3, 0x65

    const/16 p4, 0x63

    const/16 v0, 0x66

    const/16 v1, 0x62

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1
    :pswitch_1
    invoke-virtual {p0, p2, v3}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    aget p1, p2, v4

    sput p1, Lc1/a;->f:I

    goto/16 :goto_0

    .line 3
    :pswitch_2
    invoke-virtual {p0, p2, v3}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lc1/d;->q:I

    aget p3, p2, v4

    if-eq p1, p3, :cond_0

    aget p1, p2, v4

    iput p1, p0, Lc1/d;->q:I

    goto/16 :goto_0

    .line 4
    :pswitch_3
    invoke-virtual {p0, p4, p2}, Lc1/d;->V2(I[I)V

    goto/16 :goto_0

    .line 5
    :pswitch_4
    invoke-virtual {p0, p2, v2}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v3, [I

    aget p3, p2, v4

    shl-int/lit8 p3, p3, 0x5

    and-int/lit16 p3, p3, 0xe0

    aget p2, p2, v3

    and-int/lit8 p2, p2, 0x1f

    or-int/2addr p2, p3

    aput p2, p1, v4

    invoke-virtual {p0, v0, p1}, Lc1/d;->V2(I[I)V

    goto/16 :goto_0

    .line 6
    :pswitch_5
    invoke-virtual {p0, p2, v2}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v3, [I

    aget p3, p2, v4

    shl-int/lit8 p3, p3, 0x5

    and-int/lit16 p3, p3, 0xe0

    aget p2, p2, v3

    and-int/lit8 p2, p2, 0x1f

    or-int/2addr p2, p3

    aput p2, p1, v4

    invoke-virtual {p0, v0, p1}, Lc1/d;->V2(I[I)V

    goto/16 :goto_0

    .line 7
    :pswitch_6
    invoke-virtual {p0, p2, v3}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v3, [I

    aget p2, p2, v4

    aput p2, p1, v4

    invoke-virtual {p0, v0, p1}, Lc1/d;->V2(I[I)V

    goto/16 :goto_0

    :pswitch_7
    new-array p1, v3, [I

    aput v4, p1, v4

    .line 8
    invoke-virtual {p0, v0, p1}, Lc1/d;->V2(I[I)V

    goto/16 :goto_0

    .line 9
    :pswitch_8
    invoke-virtual {p0, p2, v2}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v3, [I

    aget p4, p2, v4

    aget p2, p2, v3

    add-int/2addr p4, p2

    aput p4, p1, v4

    invoke-virtual {p0, p3, p1}, Lc1/d;->V2(I[I)V

    goto/16 :goto_0

    .line 10
    :pswitch_9
    invoke-virtual {p0, p2, v3}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v3, [I

    aget p2, p2, v4

    aput p2, p1, v4

    invoke-virtual {p0, p3, p1}, Lc1/d;->V2(I[I)V

    goto/16 :goto_0

    :pswitch_a
    new-array p1, v3, [I

    aput v4, p1, v4

    .line 11
    invoke-virtual {p0, p3, p1}, Lc1/d;->V2(I[I)V

    goto/16 :goto_0

    .line 12
    :pswitch_b
    invoke-virtual {p0, p2, v2}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v3, [I

    aget p3, p2, v4

    aget p2, p2, v3

    add-int/2addr p3, p2

    aput p3, p1, v4

    invoke-virtual {p0, p4, p1}, Lc1/d;->V2(I[I)V

    goto/16 :goto_0

    .line 13
    :pswitch_c
    invoke-virtual {p0, p2, v3}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v3, [I

    aget p2, p2, v4

    aput p2, p1, v4

    invoke-virtual {p0, p4, p1}, Lc1/d;->V2(I[I)V

    goto :goto_0

    .line 14
    :pswitch_d
    iget p1, p0, Lc1/d;->q:I

    if-ne p1, v3, :cond_0

    new-array p1, v3, [I

    aput v4, p1, v4

    .line 15
    invoke-virtual {p0, p4, p1}, Lc1/d;->V2(I[I)V

    goto :goto_0

    .line 16
    :pswitch_e
    invoke-virtual {p0, p2, v3}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v2, [I

    const/4 p3, 0x6

    aput p3, p1, v4

    aget p2, p2, v4

    add-int/lit8 p2, p2, 0x32

    aput p2, p1, v3

    invoke-virtual {p0, v1, p1}, Lc1/d;->V2(I[I)V

    goto :goto_0

    :pswitch_f
    const/4 p1, 0x3

    .line 17
    invoke-virtual {p0, p2, p1}, Lc1/p;->M2([II)Z

    move-result p3

    if-eqz p3, :cond_0

    new-array p1, p1, [I

    .line 18
    aget p3, p2, v4

    aput p3, p1, v4

    aget p3, p2, v3

    aput p3, p1, v3

    aget p2, p2, v2

    aput p2, p1, v2

    invoke-virtual {p0, v1, p1}, Lc1/d;->V2(I[I)V

    goto :goto_0

    :pswitch_10
    const/16 p1, 0xa

    .line 19
    invoke-virtual {p0, p2, p1}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    .line 20
    aget p3, p2, p1

    add-int/lit8 p3, p3, 0x32

    aput p3, p2, p1

    .line 21
    invoke-virtual {p0, v1, p2}, Lc1/d;->V2(I[I)V

    goto :goto_0

    .line 22
    :pswitch_11
    invoke-virtual {p0, p2, v3}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v3, [I

    .line 23
    aget p2, p2, v4

    aput p2, p1, v4

    invoke-virtual {p0, v1, p1}, Lc1/d;->V2(I[I)V

    goto :goto_0

    :pswitch_12
    new-array p1, v3, [I

    aput v4, p1, v4

    .line 24
    invoke-virtual {p0, v1, p1}, Lc1/d;->V2(I[I)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
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
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
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
    iget v0, p0, Lc1/d;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lc1/d;->c:I

    .line 4
    iput v2, p0, Lc1/d;->d:I

    .line 5
    iput v2, p0, Lc1/d;->e:I

    .line 6
    :cond_1
    iget-object v0, p0, Lc1/d;->b:[B

    iget v1, p0, Lc1/d;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lc1/d;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lc1/d;->c:I

    .line 8
    iget p1, p0, Lc1/d;->e:I

    const/4 v1, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lc1/d;->b:[B

    aget-byte p1, p1, v2

    move v0, v4

    .line 10
    :goto_0
    iget v5, p0, Lc1/d;->e:I

    if-ge v0, v5, :cond_3

    .line 11
    iget-object v5, p0, Lc1/d;->b:[B

    aget-byte v5, v5, v0

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lc1/d;->b:[B

    aget-byte v6, v0, v5

    if-ne p1, v6, :cond_4

    sub-int/2addr v5, v3

    .line 13
    invoke-virtual {p0, v0, v3, v5}, Lc1/d;->U2([BII)V

    .line 14
    iget p1, p0, Lc1/d;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lc1/d;->d:I

    goto :goto_1

    .line 15
    :cond_4
    iput v1, p0, Lc1/d;->d:I

    .line 16
    :goto_1
    iput v2, p0, Lc1/d;->e:I

    .line 17
    :cond_5
    iget p1, p0, Lc1/d;->c:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lc1/d;->d:I

    if-ge v0, p1, :cond_b

    .line 18
    iget-object v1, p0, Lc1/d;->b:[B

    aget-byte v5, v1, v0

    const/16 v6, -0x56

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v1, v5

    const/16 v6, -0x5f

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, v1, v5

    const/16 v6, 0x41

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v0, 0x3

    .line 19
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lc1/d;->e:I

    const/4 v6, 0x6

    if-ge v5, v6, :cond_6

    .line 20
    iput v2, p0, Lc1/d;->e:I

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v0, -0x1

    add-int/2addr v5, v6

    .line 21
    iput v5, p0, Lc1/d;->e:I

    .line 22
    iget v6, p0, Lc1/d;->c:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v0

    .line 23
    iput v5, p0, Lc1/d;->e:I

    goto :goto_6

    .line 24
    :cond_7
    aget-byte v1, v1, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 25
    iget v5, p0, Lc1/d;->e:I

    if-ge v0, v5, :cond_8

    .line 26
    iget-object v5, p0, Lc1/d;->b:[B

    aget-byte v5, v5, v0

    add-int/2addr v1, v5

    int-to-byte v1, v1

    goto :goto_3

    .line 27
    :cond_8
    iget-object v0, p0, Lc1/d;->b:[B

    aget-byte v6, v0, v5

    if-ne v1, v6, :cond_9

    .line 28
    iget v1, p0, Lc1/d;->d:I

    add-int/lit8 v6, v1, 0x4

    sub-int/2addr v5, v1

    sub-int/2addr v5, v3

    invoke-virtual {p0, v0, v6, v5}, Lc1/d;->U2([BII)V

    .line 29
    iget v0, p0, Lc1/d;->e:I

    iput v0, p0, Lc1/d;->d:I

    goto :goto_4

    .line 30
    :cond_9
    iget v0, p0, Lc1/d;->d:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc1/d;->d:I

    .line 31
    :goto_4
    iput v2, p0, Lc1/d;->e:I

    .line 32
    :cond_a
    :goto_5
    iget v0, p0, Lc1/d;->d:I

    add-int/2addr v0, v4

    iput v0, p0, Lc1/d;->d:I

    goto :goto_2

    :cond_b
    :goto_6
    if-eqz v0, :cond_d

    .line 33
    iget p1, p0, Lc1/d;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lc1/d;->c:I

    if-eqz p1, :cond_c

    .line 34
    iget-object v1, p0, Lc1/d;->b:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_c
    iput v2, p0, Lc1/d;->d:I

    :cond_d
    return-void

    :cond_e
    :goto_7
    const-wide/16 v0, 0x64

    .line 36
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

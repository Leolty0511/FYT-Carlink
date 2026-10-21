.class public Lc1/f;
.super Lc1/p;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static r:I = 0x5


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

.field public o:I

.field public p:Lo1/l0;

.field public final q:Ljava/lang/Runnable;


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
    iput-object v0, p0, Lc1/f;->b:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc1/f;->c:I

    .line 4
    iput v0, p0, Lc1/f;->d:I

    .line 5
    iput v0, p0, Lc1/f;->e:I

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Lc1/f;->f:[I

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Lc1/f;->g:[I

    new-array v1, v0, [I

    .line 8
    iput-object v1, p0, Lc1/f;->h:[I

    new-array v1, v0, [I

    .line 9
    iput-object v1, p0, Lc1/f;->i:[I

    new-array v1, v0, [I

    .line 10
    iput-object v1, p0, Lc1/f;->j:[I

    new-array v1, v0, [I

    .line 11
    iput-object v1, p0, Lc1/f;->k:[I

    new-array v1, v0, [I

    .line 12
    iput-object v1, p0, Lc1/f;->l:[I

    new-array v1, v0, [I

    .line 13
    iput-object v1, p0, Lc1/f;->m:[I

    new-array v0, v0, [I

    .line 14
    iput-object v0, p0, Lc1/f;->n:[I

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lc1/f;->o:I

    .line 16
    new-instance v0, Lo1/l0;

    invoke-direct {v0}, Lo1/l0;-><init>()V

    iput-object v0, p0, Lc1/f;->p:Lo1/l0;

    .line 17
    new-instance v0, Lc1/f$b;

    invoke-direct {v0, p0}, Lc1/f$b;-><init>(Lc1/f;)V

    iput-object v0, p0, Lc1/f;->q:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic O2(Lc1/f;I[I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc1/f;->X2(I[I)V

    return-void
.end method

.method public static synthetic P2()I
    .locals 1

    .line 1
    sget v0, Lc1/f;->r:I

    return v0
.end method

.method public static synthetic Q2(I)I
    .locals 0

    .line 1
    sput p0, Lc1/f;->r:I

    return p0
.end method

.method public static synthetic R2()I
    .locals 2

    .line 1
    sget v0, Lc1/f;->r:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lc1/f;->r:I

    return v0
.end method

.method public static synthetic S2(Lc1/f;)Lo1/l0;
    .locals 0

    .line 1
    iget-object p0, p0, Lc1/f;->p:Lo1/l0;

    return-object p0
.end method

.method public static synthetic T2(Lc1/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lc1/f;->o:I

    return p0
.end method

.method public static synthetic U2(Lc1/f;I)I
    .locals 0

    .line 1
    iput p1, p0, Lc1/f;->o:I

    return p1
.end method


# virtual methods
.method public L2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc1/f;->q:Ljava/lang/Runnable;

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
    iget-object v0, p0, Lc1/f;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lc1/b;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public P0(Ly/b;I)V
    .locals 0

    return-void
.end method

.method public V2(B)Ljava/lang/String;
    .locals 17

    move/from16 v0, p1

    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    const-string v5, "4"

    const-string v6, "5"

    const-string v7, "6"

    const-string v8, "7"

    const-string v9, "8"

    const-string v10, "9"

    const-string v11, "A"

    const-string v12, "B"

    const-string v13, "C"

    const-string v14, "D"

    const-string v15, "E"

    const-string v16, "F"

    .line 1
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v3, v0, 0xf0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xff

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v0, v0, 0xf

    and-int/lit16 v0, v0, 0xff

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final W2([BII)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc1/f;->p:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    .line 2
    aget-byte v0, p1, p2

    const/16 v1, 0xaa

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/2addr p2, v3

    .line 3
    aget-byte p1, p1, p2

    if-ne p1, v1, :cond_2

    .line 4
    sget-object p1, Lc1/a;->d:[I

    aput v3, p1, v3

    new-array p1, v3, [I

    aput v3, p1, v2

    .line 5
    invoke-static {v3, p1}, Lc1/b;->i(I[I)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x2

    if-le p3, p1, :cond_0

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    .line 6
    invoke-virtual {p0, p2, p3}, Lc1/f;->b3(II)V

    .line 7
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    new-instance p2, Lc1/f$a;

    invoke-direct {p2, p0}, Lc1/f$a;-><init>(Lc1/f;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lc1/f;->b:[B

    add-int/2addr p2, v3

    aget-byte p3, p1, p2

    const/16 v0, 0x10

    if-ne p3, v1, :cond_1

    .line 9
    sget-object p1, Lc1/a;->d:[I

    aput v3, p1, v0

    new-array p1, v3, [I

    aput v3, p1, v2

    .line 10
    invoke-static {v0, p1}, Lc1/b;->i(I[I)V

    goto :goto_0

    .line 11
    :cond_1
    aget-byte p1, p1, p2

    const/16 p2, 0xff

    if-ne p1, p2, :cond_2

    .line 12
    sget-object p1, Lc1/a;->d:[I

    aput v2, p1, v0

    new-array p1, v3, [I

    aput v2, p1, v2

    .line 13
    invoke-static {v0, p1}, Lc1/b;->i(I[I)V

    goto :goto_0

    :pswitch_2
    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    .line 14
    invoke-virtual {p0, p2, p3}, Lc1/f;->Z2(II)V

    goto :goto_0

    :pswitch_3
    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    .line 15
    invoke-virtual {p0, p2, p3}, Lc1/f;->Y2(II)V

    goto :goto_0

    :pswitch_4
    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    .line 16
    invoke-virtual {p0, p2, p3}, Lc1/f;->a3(II)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final varargs X2(I[I)V
    .locals 6

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

    const/4 v2, 0x2

    const/16 v4, -0x5f

    .line 5
    aput-byte v4, v3, v2

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x3

    .line 6
    aput-byte v2, v3, v4

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x4

    .line 7
    aput-byte p1, v3, v2

    move p1, v5

    .line 8
    :goto_0
    array-length v2, p2

    if-ge p1, v2, :cond_0

    add-int v2, v1, p1

    .line 9
    aget v4, p2, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, v0, -0x1

    .line 10
    aput-byte v5, v3, p1

    move p2, v5

    :goto_1
    if-ge p2, p1, :cond_1

    .line 11
    aget-byte v1, v3, p1

    aget-byte v2, v3, p2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v3, p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    if-ge v5, v0, :cond_2

    .line 13
    aget-byte p2, v3, v5

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Lc1/f;->V2(B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const-string p2, "\n"

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    sget-object p1, Lz/a;->f:Lo1/e0;

    invoke-virtual {p1, v3}, Lo1/e0;->i([B)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 6

    const/16 p3, 0x12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p3, :cond_0

    const/4 p3, 0x5

    const/4 v2, 0x2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    move v3, v1

    :goto_0
    if-ge v3, p3, :cond_1

    new-array v4, v2, [I

    aput v3, v4, v0

    .line 1
    iget-object v5, p0, Lc1/f;->n:[I

    aget v5, v5, v3

    aput v5, v4, v1

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_1
    move v3, v1

    :goto_1
    if-ge v3, p3, :cond_1

    new-array v4, v2, [I

    aput v3, v4, v0

    .line 2
    iget-object v5, p0, Lc1/f;->m:[I

    aget v5, v5, v3

    aput v5, v4, v1

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_2
    move v3, v1

    :goto_2
    if-ge v3, p3, :cond_1

    new-array v4, v2, [I

    aput v3, v4, v0

    .line 3
    iget-object v5, p0, Lc1/f;->l:[I

    aget v5, v5, v3

    aput v5, v4, v1

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_3
    move v3, v1

    :goto_3
    if-ge v3, p3, :cond_1

    new-array v4, v2, [I

    aput v3, v4, v0

    .line 4
    iget-object v5, p0, Lc1/f;->k:[I

    aget v5, v5, v3

    aput v5, v4, v1

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :pswitch_4
    move v3, v1

    :goto_4
    if-ge v3, p3, :cond_1

    new-array v4, v2, [I

    aput v3, v4, v0

    .line 5
    iget-object v5, p0, Lc1/f;->j:[I

    aget v5, v5, v3

    aput v5, v4, v1

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :pswitch_5
    move v3, v1

    :goto_5
    if-ge v3, p3, :cond_1

    new-array v4, v2, [I

    aput v3, v4, v0

    .line 6
    iget-object v5, p0, Lc1/f;->i:[I

    aget v5, v5, v3

    aput v5, v4, v1

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :pswitch_6
    move v3, v1

    :goto_6
    if-ge v3, p3, :cond_1

    new-array v4, v2, [I

    aput v3, v4, v0

    .line 7
    iget-object v5, p0, Lc1/f;->h:[I

    aget v5, v5, v3

    aput v5, v4, v1

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :pswitch_7
    move v3, v1

    :goto_7
    if-ge v3, p3, :cond_1

    new-array v4, v2, [I

    aput v3, v4, v0

    .line 8
    iget-object v5, p0, Lc1/f;->g:[I

    aget v5, v5, v3

    aput v5, v4, v1

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :pswitch_8
    move v3, v1

    :goto_8
    if-ge v3, p3, :cond_1

    new-array v4, v2, [I

    aput v3, v4, v0

    .line 9
    iget-object v5, p0, Lc1/f;->f:[I

    aget v5, v5, v3

    aput v5, v4, v1

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :pswitch_9
    new-array p3, v1, [I

    .line 10
    sget-object v1, Lc1/a;->d:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_9

    :pswitch_a
    new-array p3, v1, [I

    .line 11
    sget-object v1, Lc1/a;->d:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_9

    :pswitch_b
    new-array p3, v1, [I

    .line 12
    sget-object v1, Lc1/a;->d:[I

    aget v1, v1, v2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_9

    :cond_0
    new-array p3, v1, [I

    .line 13
    iget v1, p0, Lc1/f;->o:I

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_1
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
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

.method public Y2(II)V
    .locals 17

    move-object/from16 v6, p0

    move/from16 v0, p2

    .line 1
    iget-object v1, v6, Lc1/f;->b:[B

    aget-byte v2, v1, p1

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/16 v7, 0x9

    const/16 v8, 0xd

    const/4 v9, 0x6

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eq v2, v3, :cond_0

    if-eq v2, v15, :cond_0

    if-eq v2, v13, :cond_0

    if-eq v2, v12, :cond_0

    goto/16 :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 2
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, p1, 0x2

    .line 3
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/2addr v2, v10

    add-int/lit8 v16, p1, 0x3

    aget-byte v1, v1, v16

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    .line 4
    iget-object v2, v6, Lc1/f;->g:[I

    aput v1, v2, v0

    new-array v1, v15, [I

    aput v0, v1, v14

    .line 5
    aget v2, v2, v0

    aput v2, v1, v3

    invoke-static {v9, v1}, Lc1/b;->i(I[I)V

    .line 6
    iget-object v1, v6, Lc1/f;->b:[B

    add-int/lit8 v2, p1, 0x4

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x32

    .line 7
    iget-object v2, v6, Lc1/f;->h:[I

    aput v1, v2, v0

    new-array v2, v15, [I

    aput v0, v2, v14

    aput v1, v2, v3

    .line 8
    invoke-static {v11, v2}, Lc1/b;->i(I[I)V

    .line 9
    iget-object v1, v6, Lc1/f;->b:[B

    add-int/lit8 v2, p1, 0x5

    aget-byte v1, v1, v2

    shr-int/2addr v1, v11

    and-int/2addr v1, v3

    .line 10
    iget-object v11, v6, Lc1/f;->i:[I

    aput v1, v11, v0

    new-array v11, v15, [I

    aput v0, v11, v14

    aput v1, v11, v3

    .line 11
    invoke-static {v10, v11}, Lc1/b;->i(I[I)V

    .line 12
    iget-object v1, v6, Lc1/f;->b:[B

    aget-byte v1, v1, v2

    shr-int/2addr v1, v9

    and-int/2addr v1, v3

    .line 13
    iget-object v9, v6, Lc1/f;->n:[I

    aput v1, v9, v0

    new-array v9, v15, [I

    aput v0, v9, v14

    aput v1, v9, v3

    .line 14
    invoke-static {v8, v9}, Lc1/b;->i(I[I)V

    .line 15
    iget-object v1, v6, Lc1/f;->b:[B

    aget-byte v1, v1, v2

    shr-int/2addr v1, v12

    and-int/2addr v1, v3

    .line 16
    iget-object v8, v6, Lc1/f;->j:[I

    aput v1, v8, v0

    new-array v8, v15, [I

    aput v0, v8, v14

    aput v1, v8, v3

    .line 17
    invoke-static {v7, v8}, Lc1/b;->i(I[I)V

    .line 18
    iget-object v1, v6, Lc1/f;->b:[B

    aget-byte v1, v1, v2

    shr-int/2addr v1, v13

    and-int/2addr v1, v3

    .line 19
    iget-object v7, v6, Lc1/f;->k:[I

    aput v1, v7, v0

    new-array v7, v15, [I

    aput v0, v7, v14

    aput v1, v7, v3

    .line 20
    invoke-static {v5, v7}, Lc1/b;->i(I[I)V

    .line 21
    iget-object v1, v6, Lc1/f;->b:[B

    aget-byte v1, v1, v2

    shr-int/2addr v1, v15

    and-int/2addr v1, v3

    .line 22
    iget-object v5, v6, Lc1/f;->l:[I

    aput v1, v5, v0

    new-array v5, v15, [I

    aput v0, v5, v14

    aput v1, v5, v3

    .line 23
    invoke-static {v4, v5}, Lc1/b;->i(I[I)V

    .line 24
    iget-object v1, v6, Lc1/f;->b:[B

    aget-byte v1, v1, v2

    shr-int/2addr v1, v3

    and-int/2addr v1, v3

    .line 25
    iget-object v4, v6, Lc1/f;->m:[I

    aput v1, v4, v0

    new-array v4, v15, [I

    aput v0, v4, v14

    aput v1, v4, v3

    const/16 v0, 0xc

    .line 26
    invoke-static {v0, v4}, Lc1/b;->i(I[I)V

    .line 27
    iget-object v0, v6, Lc1/f;->b:[B

    aget-byte v1, v0, v2

    const/4 v4, 0x7

    shr-int/2addr v1, v4

    and-int/2addr v1, v3

    aget-byte v4, v0, v2

    shr-int/2addr v4, v12

    and-int/2addr v4, v3

    aget-byte v5, v0, v2

    shr-int/2addr v5, v13

    and-int/2addr v5, v3

    aget-byte v7, v0, v2

    shr-int/2addr v7, v15

    and-int/2addr v7, v3

    aget-byte v0, v0, v2

    shr-int/2addr v0, v3

    and-int/lit8 v8, v0, 0x1

    move-object/from16 v0, p0

    move v2, v4

    move v3, v5

    move v4, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lc1/f;->c3(IIIII)V

    goto/16 :goto_0

    :cond_1
    if-ne v0, v15, :cond_2

    goto/16 :goto_0

    :cond_2
    if-le v0, v15, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 28
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, p1, 0x2

    .line 29
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/2addr v2, v10

    add-int/lit8 v11, p1, 0x3

    aget-byte v1, v1, v11

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    .line 30
    iget-object v2, v6, Lc1/f;->g:[I

    aput v1, v2, v0

    new-array v1, v15, [I

    aput v0, v1, v14

    .line 31
    aget v2, v2, v0

    aput v2, v1, v3

    invoke-static {v9, v1}, Lc1/b;->i(I[I)V

    .line 32
    iget-object v1, v6, Lc1/f;->b:[B

    add-int/lit8 v2, p1, 0x4

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x32

    .line 33
    iget-object v2, v6, Lc1/f;->h:[I

    aput v1, v2, v0

    new-array v2, v15, [I

    aput v0, v2, v14

    aput v1, v2, v3

    const/4 v1, 0x7

    .line 34
    invoke-static {v1, v2}, Lc1/b;->i(I[I)V

    .line 35
    iget-object v2, v6, Lc1/f;->b:[B

    add-int/lit8 v11, p1, 0x5

    aget-byte v2, v2, v11

    shr-int/2addr v2, v1

    and-int/lit8 v1, v2, 0x1

    .line 36
    iget-object v2, v6, Lc1/f;->i:[I

    aput v1, v2, v0

    new-array v2, v15, [I

    aput v0, v2, v14

    aput v1, v2, v3

    .line 37
    invoke-static {v10, v2}, Lc1/b;->i(I[I)V

    .line 38
    iget-object v1, v6, Lc1/f;->b:[B

    aget-byte v1, v1, v11

    shr-int/2addr v1, v9

    and-int/2addr v1, v3

    .line 39
    iget-object v2, v6, Lc1/f;->n:[I

    aput v1, v2, v0

    new-array v2, v15, [I

    aput v0, v2, v14

    aput v1, v2, v3

    .line 40
    invoke-static {v8, v2}, Lc1/b;->i(I[I)V

    .line 41
    iget-object v1, v6, Lc1/f;->b:[B

    aget-byte v1, v1, v11

    shr-int/2addr v1, v12

    and-int/2addr v1, v3

    .line 42
    iget-object v2, v6, Lc1/f;->j:[I

    aput v1, v2, v0

    new-array v2, v15, [I

    aput v0, v2, v14

    aput v1, v2, v3

    .line 43
    invoke-static {v7, v2}, Lc1/b;->i(I[I)V

    .line 44
    iget-object v1, v6, Lc1/f;->b:[B

    aget-byte v1, v1, v11

    shr-int/2addr v1, v13

    and-int/2addr v1, v3

    .line 45
    iget-object v2, v6, Lc1/f;->k:[I

    aput v1, v2, v0

    new-array v2, v15, [I

    aput v0, v2, v14

    aput v1, v2, v3

    .line 46
    invoke-static {v5, v2}, Lc1/b;->i(I[I)V

    .line 47
    iget-object v1, v6, Lc1/f;->b:[B

    aget-byte v1, v1, v11

    shr-int/2addr v1, v15

    and-int/2addr v1, v3

    .line 48
    iget-object v2, v6, Lc1/f;->l:[I

    aput v1, v2, v0

    new-array v2, v15, [I

    aput v0, v2, v14

    aput v1, v2, v3

    .line 49
    invoke-static {v4, v2}, Lc1/b;->i(I[I)V

    .line 50
    iget-object v1, v6, Lc1/f;->b:[B

    aget-byte v1, v1, v11

    shr-int/2addr v1, v3

    and-int/2addr v1, v3

    .line 51
    iget-object v2, v6, Lc1/f;->m:[I

    aput v1, v2, v0

    new-array v2, v15, [I

    aput v0, v2, v14

    aput v1, v2, v3

    const/16 v0, 0xc

    .line 52
    invoke-static {v0, v2}, Lc1/b;->i(I[I)V

    .line 53
    iget-object v0, v6, Lc1/f;->b:[B

    aget-byte v1, v0, v11

    const/4 v2, 0x7

    shr-int/2addr v1, v2

    and-int/2addr v1, v3

    aget-byte v2, v0, v11

    shr-int/2addr v2, v12

    and-int/2addr v2, v3

    aget-byte v4, v0, v11

    shr-int/2addr v4, v13

    and-int/2addr v4, v3

    aget-byte v5, v0, v11

    shr-int/2addr v5, v15

    and-int/2addr v5, v3

    aget-byte v0, v0, v11

    shr-int/2addr v0, v3

    and-int/lit8 v7, v0, 0x1

    move-object/from16 v0, p0

    move v3, v4

    move v4, v5

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lc1/f;->c3(IIIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 2

    const/4 p3, 0x2

    const/16 p4, 0x62

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1
    :pswitch_0
    invoke-virtual {p0, p2, v0}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    aget p1, p2, v1

    sput p1, Lc1/a;->f:I

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x66

    new-array p2, v1, [I

    .line 3
    invoke-virtual {p0, p1, p2}, Lc1/f;->X2(I[I)V

    goto :goto_1

    :pswitch_2
    if-eqz p2, :cond_1

    .line 4
    array-length p1, p2

    if-lez p1, :cond_1

    .line 5
    array-length p1, p2

    new-array p3, p1, [I

    :goto_0
    if-ge v1, p1, :cond_0

    .line 6
    aget p4, p2, v1

    aput p4, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x65

    .line 7
    invoke-virtual {p0, p1, p3}, Lc1/f;->X2(I[I)V

    goto :goto_1

    :pswitch_3
    const/16 p1, 0x64

    new-array p3, v0, [I

    .line 8
    aget p2, p2, v1

    aput p2, p3, v1

    invoke-virtual {p0, p1, p3}, Lc1/f;->X2(I[I)V

    goto :goto_1

    :pswitch_4
    new-array p1, p3, [I

    const/4 p3, 0x6

    aput p3, p1, v1

    .line 9
    aget p2, p2, v1

    aput p2, p1, v0

    invoke-virtual {p0, p4, p1}, Lc1/f;->X2(I[I)V

    goto :goto_1

    :pswitch_5
    const/4 p1, 0x5

    new-array p1, p1, [I

    aput v0, p1, v1

    .line 10
    aget v1, p2, v1

    aput v1, p1, v0

    aget v0, p2, v0

    aput v0, p1, p3

    aget p3, p2, p3

    const/4 v0, 0x3

    aput p3, p1, v0

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-virtual {p0, p4, p1}, Lc1/f;->X2(I[I)V

    goto :goto_1

    :pswitch_6
    new-array p1, v0, [I

    aput v1, p1, v1

    .line 11
    invoke-virtual {p0, p4, p1}, Lc1/f;->X2(I[I)V

    goto :goto_1

    :pswitch_7
    const/16 p1, 0x63

    new-array p2, v0, [I

    aput v1, p2, v1

    .line 12
    invoke-virtual {p0, p1, p2}, Lc1/f;->X2(I[I)V

    :cond_1
    :goto_1
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

.method public Z2(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lc1/f;->b:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v1, :cond_1

    if-eq v1, v4, :cond_0

    if-eq v1, v5, :cond_0

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    const/4 p2, 0x4

    if-eq v1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-byte p2, v0, p1

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v1, p1, 0x2

    .line 3
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v6, p1, 0x3

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, p1, 0x4

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v1, v6

    add-int/2addr p1, v3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    .line 4
    iget-object v0, p0, Lc1/f;->f:[I

    aput p1, v0, p2

    new-array v0, v5, [I

    aput p2, v0, v2

    aput p1, v0, v4

    .line 5
    invoke-static {v3, v0}, Lc1/b;->i(I[I)V

    goto :goto_0

    :cond_1
    if-ne p2, v5, :cond_2

    goto :goto_0

    :cond_2
    if-le p2, v5, :cond_3

    add-int/lit8 p2, p1, 0x1

    .line 6
    aget-byte p2, v0, p2

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v1, p1, 0x2

    .line 7
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v6, p1, 0x3

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, p1, 0x4

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v1, v6

    add-int/2addr p1, v3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    .line 8
    iget-object v0, p0, Lc1/f;->f:[I

    aput p1, v0, p2

    new-array v0, v5, [I

    aput p2, v0, v2

    aput p1, v0, v4

    .line 9
    invoke-static {v3, v0}, Lc1/b;->i(I[I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a3(II)V
    .locals 7

    .line 1
    iget-object p2, p0, Lc1/f;->b:[B

    aget-byte v0, p2, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x2

    .line 2
    aget-byte v0, p2, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 3
    sget-object v2, Lc1/a;->d:[I

    add-int/lit8 v3, p1, 0x1

    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x4

    aput v4, v2, v5

    const/4 v4, 0x2

    .line 4
    aput v0, v2, v4

    add-int/lit8 v6, p1, 0x4

    .line 5
    aget-byte v6, p2, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v1, v6

    add-int/lit8 p1, p1, 0x5

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    const/4 v1, 0x3

    .line 6
    aput p1, v2, v1

    const/4 v2, 0x1

    new-array v6, v2, [I

    .line 7
    aget-byte p2, p2, v3

    and-int/lit16 p2, p2, 0xff

    const/4 v3, 0x0

    aput p2, v6, v3

    invoke-static {v5, v6}, Lc1/b;->i(I[I)V

    new-array p2, v2, [I

    aput v0, p2, v3

    .line 8
    invoke-static {v4, p2}, Lc1/b;->i(I[I)V

    new-array p2, v2, [I

    aput p1, p2, v3

    .line 9
    invoke-static {v1, p2}, Lc1/b;->i(I[I)V

    :goto_0
    return-void
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
    iget v0, p0, Lc1/f;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lc1/f;->c:I

    .line 4
    iput v2, p0, Lc1/f;->d:I

    .line 5
    iput v2, p0, Lc1/f;->e:I

    .line 6
    :cond_1
    iget-object v0, p0, Lc1/f;->b:[B

    iget v1, p0, Lc1/f;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lc1/f;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lc1/f;->c:I

    .line 8
    iget p1, p0, Lc1/f;->e:I

    const/4 v1, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lc1/f;->b:[B

    aget-byte p1, p1, v2

    move v0, v4

    .line 10
    :goto_0
    iget v5, p0, Lc1/f;->e:I

    if-ge v0, v5, :cond_3

    .line 11
    iget-object v5, p0, Lc1/f;->b:[B

    aget-byte v5, v5, v0

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lc1/f;->b:[B

    aget-byte v6, v0, v5

    if-ne p1, v6, :cond_4

    sub-int/2addr v5, v3

    .line 13
    invoke-virtual {p0, v0, v3, v5}, Lc1/f;->W2([BII)V

    .line 14
    iget p1, p0, Lc1/f;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lc1/f;->d:I

    goto :goto_1

    .line 15
    :cond_4
    iput v1, p0, Lc1/f;->d:I

    .line 16
    :goto_1
    iput v2, p0, Lc1/f;->e:I

    .line 17
    :cond_5
    iget p1, p0, Lc1/f;->c:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lc1/f;->d:I

    if-ge v0, p1, :cond_a

    .line 18
    iget-object v1, p0, Lc1/f;->b:[B

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

    iput v5, p0, Lc1/f;->e:I

    add-int/lit8 v6, v0, -0x1

    add-int/2addr v5, v6

    .line 20
    iput v5, p0, Lc1/f;->e:I

    .line 21
    iget v6, p0, Lc1/f;->c:I

    if-lt v5, v6, :cond_6

    sub-int/2addr v5, v0

    .line 22
    iput v5, p0, Lc1/f;->e:I

    goto :goto_5

    .line 23
    :cond_6
    aget-byte v1, v1, v0

    .line 24
    :goto_3
    iget v5, p0, Lc1/f;->e:I

    if-ge v0, v5, :cond_7

    .line 25
    iget-object v5, p0, Lc1/f;->b:[B

    aget-byte v5, v5, v0

    add-int/2addr v1, v5

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 26
    :cond_7
    iget-object v0, p0, Lc1/f;->b:[B

    aget-byte v6, v0, v5

    if-ne v1, v6, :cond_8

    .line 27
    iget v1, p0, Lc1/f;->d:I

    add-int/lit8 v6, v1, 0x4

    sub-int/2addr v5, v1

    sub-int/2addr v5, v3

    invoke-virtual {p0, v0, v6, v5}, Lc1/f;->W2([BII)V

    .line 28
    iget v0, p0, Lc1/f;->e:I

    iput v0, p0, Lc1/f;->d:I

    goto :goto_4

    .line 29
    :cond_8
    iget v0, p0, Lc1/f;->d:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc1/f;->d:I

    .line 30
    :goto_4
    iput v2, p0, Lc1/f;->e:I

    .line 31
    :cond_9
    iget v0, p0, Lc1/f;->d:I

    add-int/2addr v0, v4

    iput v0, p0, Lc1/f;->d:I

    goto :goto_2

    :cond_a
    :goto_5
    if-eqz v0, :cond_c

    .line 32
    iget p1, p0, Lc1/f;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lc1/f;->c:I

    if-eqz p1, :cond_b

    .line 33
    iget-object v1, p0, Lc1/f;->b:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    :cond_b
    iput v2, p0, Lc1/f;->d:I

    :cond_c
    return-void

    :cond_d
    :goto_6
    const-wide/16 v0, 0x64

    .line 35
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

.method public b3(II)V
    .locals 5

    .line 1
    iget-object p2, p0, Lc1/f;->b:[B

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x4

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 2
    aget-byte p1, p2, p1

    const/4 p2, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object p1, p0, Lc1/f;->f:[I

    aput v0, p1, p2

    new-array p1, v3, [I

    const/4 p2, 0x4

    aput p2, p1, v2

    aput v0, p1, v4

    .line 4
    invoke-static {v1, p1}, Lc1/b;->i(I[I)V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object p1, p0, Lc1/f;->f:[I

    aput v0, p1, v3

    new-array p1, v3, [I

    aput p2, p1, v2

    aput v0, p1, v4

    .line 6
    invoke-static {v1, p1}, Lc1/b;->i(I[I)V

    goto :goto_0

    .line 7
    :pswitch_2
    iget-object p1, p0, Lc1/f;->f:[I

    aput v0, p1, v4

    new-array p1, v3, [I

    aput v3, p1, v2

    aput v0, p1, v4

    .line 8
    invoke-static {v1, p1}, Lc1/b;->i(I[I)V

    goto :goto_0

    .line 9
    :pswitch_3
    iget-object p1, p0, Lc1/f;->f:[I

    aput v0, p1, v2

    new-array p1, v3, [I

    aput v4, p1, v2

    aput v0, p1, v4

    .line 10
    invoke-static {v1, p1}, Lc1/b;->i(I[I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c3(IIIII)V
    .locals 2

    .line 1
    iget v0, p0, Lc1/f;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lc1/a;->f:I

    if-ne v0, v1, :cond_1

    if-eq p1, v1, :cond_0

    if-eq p2, v1, :cond_0

    if-eq p3, v1, :cond_0

    if-eq p4, v1, :cond_0

    if-ne p5, v1, :cond_1

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

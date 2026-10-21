.class public Lc1/h;
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
    iput-object v0, p0, Lc1/h;->b:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc1/h;->c:I

    .line 4
    iput v0, p0, Lc1/h;->d:I

    .line 5
    iput v0, p0, Lc1/h;->e:I

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Lc1/h;->f:[I

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Lc1/h;->g:[I

    new-array v1, v0, [I

    .line 8
    iput-object v1, p0, Lc1/h;->h:[I

    new-array v1, v0, [I

    .line 9
    iput-object v1, p0, Lc1/h;->i:[I

    new-array v1, v0, [I

    .line 10
    iput-object v1, p0, Lc1/h;->j:[I

    new-array v1, v0, [I

    .line 11
    iput-object v1, p0, Lc1/h;->k:[I

    new-array v1, v0, [I

    .line 12
    iput-object v1, p0, Lc1/h;->l:[I

    new-array v1, v0, [I

    .line 13
    iput-object v1, p0, Lc1/h;->m:[I

    new-array v0, v0, [I

    .line 14
    iput-object v0, p0, Lc1/h;->n:[I

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lc1/h;->o:I

    .line 16
    new-instance v0, Lo1/l0;

    invoke-direct {v0}, Lo1/l0;-><init>()V

    iput-object v0, p0, Lc1/h;->p:Lo1/l0;

    .line 17
    new-instance v0, Lc1/h$a;

    invoke-direct {v0, p0}, Lc1/h$a;-><init>(Lc1/h;)V

    iput-object v0, p0, Lc1/h;->q:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic O2()I
    .locals 1

    .line 1
    sget v0, Lc1/h;->r:I

    return v0
.end method

.method public static synthetic P2(I)I
    .locals 0

    .line 1
    sput p0, Lc1/h;->r:I

    return p0
.end method

.method public static synthetic Q2()I
    .locals 2

    .line 1
    sget v0, Lc1/h;->r:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lc1/h;->r:I

    return v0
.end method

.method public static synthetic R2(Lc1/h;I[I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc1/h;->U2(I[I)V

    return-void
.end method


# virtual methods
.method public L2()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0, v1, v1, v1}, Lc1/h;->Z0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
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

.method public P0(Ly/b;I)V
    .locals 0

    return-void
.end method

.method public S2(B)Ljava/lang/String;
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

.method public final T2([BII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc1/h;->p:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    .line 2
    aget-byte p1, p1, p2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x21

    if-eq p1, v0, :cond_2

    const/16 v0, 0x41

    if-eq p1, v0, :cond_1

    const/16 v0, 0x61

    if-eq p1, v0, :cond_1

    const/16 v0, 0x71

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 3
    invoke-virtual {p0, p2, p3}, Lc1/h;->V2(II)V

    goto :goto_0

    :cond_1
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 4
    invoke-virtual {p0, p2, p3}, Lc1/h;->W2(II)V

    goto :goto_0

    :cond_2
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 5
    invoke-virtual {p0, p2, p3}, Lc1/h;->X2(II)V

    goto :goto_0

    .line 6
    :cond_3
    sget-object p1, Lc1/a;->d:[I

    iget-object p3, p0, Lc1/h;->b:[B

    add-int/2addr p2, v1

    aget-byte p2, p3, p2

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x14

    aput p2, p1, p3

    new-array p2, v1, [I

    const/4 v0, 0x0

    .line 7
    aget p1, p1, p3

    aput p1, p2, v0

    invoke-static {p3, p2}, Lc1/b;->i(I[I)V

    :goto_0
    return-void
.end method

.method public final varargs U2(I[I)V
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

    const/16 v4, -0x4f

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

    move p2, v5

    :goto_2
    if-ge p2, v0, :cond_2

    .line 13
    aget-byte v1, v3, p2

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lc1/h;->S2(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    const-string p2, "\n"

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    sget-object p1, Lz/a;->f:Lo1/e0;

    invoke-virtual {p1, v3}, Lo1/e0;->i([B)V

    .line 17
    invoke-static {v3, v5, v0}, Lo1/b0;->h([BII)V

    return-void
.end method

.method public V2(II)V
    .locals 10

    .line 1
    iget-object p2, p0, Lc1/h;->b:[B

    aget-byte v0, p2, p1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    aget-byte v0, p2, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v4, p1, 0x2

    .line 3
    aget-byte v5, p2, v4

    and-int/2addr v5, v1

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    add-int/lit8 v7, p1, 0x1

    aget-byte p2, p2, v7

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p2, v5

    .line 4
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tire = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  DATA = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lc1/h;->b:[B

    aget-byte v7, v9, v7

    and-int/2addr v7, v1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lc1/h;->b:[B

    aget-byte v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ln1/b;->s(Ljava/lang/String;)V

    .line 5
    iget-object v4, p0, Lc1/h;->g:[I

    aput p2, v4, v0

    const/4 p2, 0x6

    new-array v5, v2, [I

    const/4 v7, 0x0

    aput v0, v5, v7

    .line 6
    aget v4, v4, v0

    aput v4, v5, v3

    invoke-static {p2, v5}, Lc1/b;->i(I[I)V

    .line 7
    iget-object p2, p0, Lc1/h;->b:[B

    add-int/lit8 v4, p1, 0x3

    aget-byte p2, p2, v4

    and-int/lit16 p2, p2, 0xff

    .line 8
    iget-object v4, p0, Lc1/h;->h:[I

    aput p2, v4, v0

    new-array v4, v2, [I

    aput v0, v4, v7

    aput p2, v4, v3

    const/4 p2, 0x7

    .line 9
    invoke-static {p2, v4}, Lc1/b;->i(I[I)V

    .line 10
    iget-object v4, p0, Lc1/h;->b:[B

    add-int/lit8 p1, p1, 0x4

    aget-byte v4, v4, p1

    shr-int/lit8 v4, v4, 0x4

    and-int/2addr v4, v3

    .line 11
    iget-object v5, p0, Lc1/h;->i:[I

    aput v4, v5, v0

    new-array v4, v2, [I

    aput v0, v4, v7

    aput v3, v4, v3

    .line 12
    invoke-static {v6, v4}, Lc1/b;->i(I[I)V

    .line 13
    iget-object v4, p0, Lc1/h;->b:[B

    aget-byte v4, v4, p1

    shr-int/lit8 v4, v4, 0x5

    and-int/2addr v4, v3

    .line 14
    iget-object v5, p0, Lc1/h;->n:[I

    aput v4, v5, v0

    const/16 v5, 0xd

    new-array v6, v2, [I

    aput v0, v6, v7

    aput v4, v6, v3

    .line 15
    invoke-static {v5, v6}, Lc1/b;->i(I[I)V

    .line 16
    iget-object v4, p0, Lc1/h;->b:[B

    aget-byte v4, v4, p1

    shr-int/2addr v4, v3

    and-int/2addr v4, v3

    .line 17
    iget-object v5, p0, Lc1/h;->j:[I

    aput v4, v5, v0

    const/16 v5, 0x9

    new-array v6, v2, [I

    aput v0, v6, v7

    aput v4, v6, v3

    .line 18
    invoke-static {v5, v6}, Lc1/b;->i(I[I)V

    .line 19
    iget-object v4, p0, Lc1/h;->b:[B

    aget-byte v4, v4, p1

    and-int/2addr v4, v3

    .line 20
    iget-object v5, p0, Lc1/h;->k:[I

    aput v4, v5, v0

    const/16 v5, 0xa

    new-array v6, v2, [I

    aput v0, v6, v7

    aput v4, v6, v3

    .line 21
    invoke-static {v5, v6}, Lc1/b;->i(I[I)V

    .line 22
    iget-object v4, p0, Lc1/h;->b:[B

    aget-byte v4, v4, p1

    shr-int/2addr v4, v2

    and-int/2addr v4, v3

    .line 23
    iget-object v5, p0, Lc1/h;->l:[I

    aput v4, v5, v0

    const/16 v5, 0xb

    new-array v6, v2, [I

    aput v0, v6, v7

    aput v4, v6, v3

    .line 24
    invoke-static {v5, v6}, Lc1/b;->i(I[I)V

    .line 25
    iget-object v4, p0, Lc1/h;->b:[B

    aget-byte v4, v4, p1

    shr-int/2addr v4, v1

    and-int/2addr v4, v3

    .line 26
    iget-object v5, p0, Lc1/h;->m:[I

    aput v4, v5, v0

    const/16 v5, 0xc

    new-array v6, v2, [I

    aput v0, v6, v7

    aput v4, v6, v3

    .line 27
    invoke-static {v5, v6}, Lc1/b;->i(I[I)V

    .line 28
    iget-object v0, p0, Lc1/h;->b:[B

    aget-byte v4, v0, p1

    shr-int/lit8 p2, v4, 0x7

    and-int/lit8 v5, p2, 0x1

    aget-byte p2, v0, p1

    shr-int/lit8 p2, p2, 0x4

    and-int/lit8 v6, p2, 0x1

    aget-byte p2, v0, p1

    shr-int/2addr p2, v1

    and-int/lit8 v7, p2, 0x1

    aget-byte p2, v0, p1

    shr-int/2addr p2, v2

    and-int/lit8 v8, p2, 0x1

    aget-byte p1, v0, p1

    shr-int/2addr p1, v3

    and-int/lit8 v9, p1, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lc1/h;->Y2(IIIII)V

    :goto_0
    return-void
.end method

.method public W2(II)V
    .locals 4

    .line 1
    iget-object p2, p0, Lc1/h;->b:[B

    aget-byte v0, p2, p1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v2, p1, 0x1

    .line 2
    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x2

    add-int/2addr p1, v3

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v2

    .line 3
    iget-object p2, p0, Lc1/h;->f:[I

    aput p1, p2, v0

    new-array p2, v3, [I

    const/4 v2, 0x0

    aput v0, p2, v2

    aput p1, p2, v1

    const/4 v1, 0x5

    .line 4
    invoke-static {v1, p2}, Lc1/b;->i(I[I)V

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ** tire = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " **  value = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ln1/b;->s(Ljava/lang/String;)V

    return-void
.end method

.method public X2(II)V
    .locals 7

    .line 1
    iget-object p2, p0, Lc1/h;->b:[B

    aget-byte v0, p2, p1

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget-object v0, Lc1/a;->d:[I

    add-int/lit8 v1, p1, 0x3

    aget-byte p2, p2, v1

    and-int/lit16 p2, p2, 0xff

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ** Send = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget v5, v0, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ln1/b;->s(Ljava/lang/String;)V

    const/4 p2, 0x1

    new-array v2, p2, [I

    .line 4
    aget v5, v0, v1

    const/4 v6, 0x0

    aput v5, v2, v6

    invoke-static {v1, v2}, Lc1/b;->i(I[I)V

    .line 5
    iget-object v1, p0, Lc1/h;->b:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0xa

    aput v1, v0, v4

    new-array v1, p2, [I

    .line 6
    aget v2, v0, v4

    aput v2, v1, v6

    invoke-static {v4, v1}, Lc1/b;->i(I[I)V

    .line 7
    iget-object v1, p0, Lc1/h;->b:[B

    add-int/2addr p1, v4

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 p1, p1, 0xa

    aput p1, v0, v3

    .line 8
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " 000 DataTpms.DATA[U_LOW_PRESSURE_STATE] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p1, p2, [I

    .line 9
    aget p2, v0, v3

    aput p2, p1, v6

    invoke-static {v3, p1}, Lc1/b;->i(I[I)V

    :goto_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 6

    const/16 p3, 0x12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p3, :cond_1

    const/16 p3, 0x14

    if-eq p2, p3, :cond_0

    const/4 p3, 0x4

    const/4 v2, 0x2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    move v3, v0

    :goto_0
    if-ge v3, p3, :cond_2

    new-array v4, v2, [I

    aput v3, v4, v0

    .line 1
    iget-object v5, p0, Lc1/h;->n:[I

    aget v5, v5, v3

    aput v5, v4, v1

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_1
    move v3, v0

    :goto_1
    if-ge v3, p3, :cond_2

    new-array v4, v2, [I

    aput v3, v4, v0

    .line 2
    iget-object v5, p0, Lc1/h;->m:[I

    aget v5, v5, v3

    aput v5, v4, v1

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_2
    move v3, v0

    :goto_2
    if-ge v3, p3, :cond_2

    new-array v4, v2, [I

    aput v3, v4, v0

    .line 3
    iget-object v5, p0, Lc1/h;->l:[I

    aget v5, v5, v3

    aput v5, v4, v1

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_3
    move v3, v0

    :goto_3
    if-ge v3, p3, :cond_2

    new-array v4, v2, [I

    aput v3, v4, v0

    .line 4
    iget-object v5, p0, Lc1/h;->k:[I

    aget v5, v5, v3

    aput v5, v4, v1

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :pswitch_4
    move v3, v0

    :goto_4
    if-ge v3, p3, :cond_2

    new-array v4, v2, [I

    aput v3, v4, v0

    .line 5
    iget-object v5, p0, Lc1/h;->j:[I

    aget v5, v5, v3

    aput v5, v4, v1

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :pswitch_5
    move v3, v0

    :goto_5
    if-ge v3, p3, :cond_2

    new-array v4, v2, [I

    aput v3, v4, v0

    .line 6
    iget-object v5, p0, Lc1/h;->i:[I

    aget v5, v5, v3

    aput v5, v4, v1

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :pswitch_6
    move v3, v0

    :goto_6
    if-ge v3, p3, :cond_2

    new-array v4, v2, [I

    aput v3, v4, v0

    .line 7
    iget-object v5, p0, Lc1/h;->h:[I

    aget v5, v5, v3

    aput v5, v4, v1

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :pswitch_7
    move v3, v0

    :goto_7
    if-ge v3, p3, :cond_2

    new-array v4, v2, [I

    aput v3, v4, v0

    .line 8
    iget-object v5, p0, Lc1/h;->g:[I

    aget v5, v5, v3

    aput v5, v4, v1

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :pswitch_8
    move p3, v1

    :goto_8
    const/4 v3, 0x5

    if-ge p3, v3, :cond_2

    new-array v3, v2, [I

    aput p3, v3, v0

    .line 9
    iget-object v4, p0, Lc1/h;->f:[I

    aget v4, v4, p3

    aput v4, v3, v1

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 p3, p3, 0x1

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

    const/4 v2, 0x3

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
    sget-object v1, Lc1/a;->d:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_9

    :cond_1
    new-array p3, v1, [I

    .line 14
    iget v1, p0, Lc1/h;->o:I

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_2
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

.method public Y2(IIIII)V
    .locals 2

    .line 1
    iget v0, p0, Lc1/h;->o:I

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

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 3

    const/16 p3, 0x31

    const/4 p4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/16 p1, 0x81

    new-array p2, v0, [I

    aput v1, p2, v1

    .line 1
    invoke-virtual {p0, p1, p2}, Lc1/h;->U2(I[I)V

    goto/16 :goto_0

    :pswitch_1
    const/16 p1, 0x11

    new-array p2, v0, [I

    aput v1, p2, v1

    .line 2
    invoke-virtual {p0, p1, p2}, Lc1/h;->U2(I[I)V

    goto/16 :goto_0

    .line 3
    :pswitch_2
    invoke-virtual {p0, p2, v0}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    aget p1, p2, v1

    sput p1, Lc1/a;->f:I

    goto/16 :goto_0

    :pswitch_3
    if-eqz p2, :cond_0

    .line 5
    array-length p1, p2

    if-lez p1, :cond_0

    const/16 p1, 0x61

    new-array p3, v0, [I

    .line 6
    aget p2, p2, v1

    aput p2, p3, v1

    invoke-virtual {p0, p1, p3}, Lc1/h;->U2(I[I)V

    goto/16 :goto_0

    :pswitch_4
    if-eqz p2, :cond_0

    .line 7
    array-length p1, p2

    if-le p1, p4, :cond_0

    const/16 p1, 0x51

    const/4 p3, 0x3

    new-array p3, p3, [I

    .line 8
    aget v2, p2, v1

    aput v2, p3, v1

    aget v1, p2, v0

    aput v1, p3, v0

    aget p2, p2, p4

    aput p2, p3, p4

    invoke-virtual {p0, p1, p3}, Lc1/h;->U2(I[I)V

    goto :goto_0

    :pswitch_5
    if-eqz p2, :cond_0

    .line 9
    array-length p1, p2

    if-lez p1, :cond_0

    const/16 p1, 0x41

    new-array p3, v0, [I

    .line 10
    aget p2, p2, v1

    aput p2, p3, v1

    invoke-virtual {p0, p1, p3}, Lc1/h;->U2(I[I)V

    goto :goto_0

    :pswitch_6
    if-eqz p2, :cond_0

    .line 11
    array-length p1, p2

    if-le p1, v0, :cond_0

    new-array p1, p4, [I

    .line 12
    aget p4, p2, v1

    aput p4, p1, v1

    aget p2, p2, v0

    aput p2, p1, v0

    invoke-virtual {p0, p3, p1}, Lc1/h;->U2(I[I)V

    goto :goto_0

    :pswitch_7
    if-eqz p2, :cond_0

    .line 13
    array-length p1, p2

    if-le p1, v0, :cond_0

    new-array p1, p4, [I

    .line 14
    aget p4, p2, v1

    aput p4, p1, v1

    aget p2, p2, v0

    div-int/lit8 p2, p2, 0xa

    aput p2, p1, v0

    invoke-virtual {p0, p3, p1}, Lc1/h;->U2(I[I)V

    goto :goto_0

    :pswitch_8
    const/16 p1, 0x21

    new-array p2, v0, [I

    aput v1, p2, v1

    .line 15
    invoke-virtual {p0, p1, p2}, Lc1/h;->U2(I[I)V

    goto :goto_0

    :pswitch_9
    if-eqz p2, :cond_0

    .line 16
    array-length p1, p2

    if-lez p1, :cond_0

    const/16 p1, 0x71

    new-array p3, v0, [I

    .line 17
    aget p2, p2, v1

    aput p2, p3, v1

    invoke-virtual {p0, p1, p3}, Lc1/h;->U2(I[I)V

    :cond_0
    :goto_0
    return-void

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
.end method

.method public b([B)V
    .locals 8

    if-eqz p1, :cond_d

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget v0, p0, Lc1/h;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lc1/h;->c:I

    .line 4
    iput v2, p0, Lc1/h;->d:I

    .line 5
    iput v2, p0, Lc1/h;->e:I

    .line 6
    :cond_1
    iget-object v0, p0, Lc1/h;->b:[B

    iget v1, p0, Lc1/h;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lc1/h;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lc1/h;->c:I

    .line 8
    iget p1, p0, Lc1/h;->e:I

    const/4 v1, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lc1/h;->b:[B

    aget-byte p1, p1, v2

    move v0, v4

    .line 10
    :goto_0
    iget v5, p0, Lc1/h;->e:I

    if-ge v0, v5, :cond_3

    .line 11
    iget-object v5, p0, Lc1/h;->b:[B

    aget-byte v5, v5, v0

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lc1/h;->b:[B

    aget-byte v6, v0, v5

    if-ne p1, v6, :cond_4

    sub-int/2addr v5, v3

    .line 13
    invoke-virtual {p0, v0, v3, v5}, Lc1/h;->T2([BII)V

    .line 14
    iget p1, p0, Lc1/h;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lc1/h;->d:I

    goto :goto_1

    .line 15
    :cond_4
    iput v1, p0, Lc1/h;->d:I

    .line 16
    :goto_1
    iput v2, p0, Lc1/h;->e:I

    .line 17
    :cond_5
    iget p1, p0, Lc1/h;->c:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lc1/h;->d:I

    if-ge v0, p1, :cond_a

    .line 18
    iget-object v1, p0, Lc1/h;->b:[B

    aget-byte v5, v1, v0

    const/16 v6, -0x56

    if-ne v5, v6, :cond_9

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v1, v5

    const/16 v6, -0x5f

    if-ne v5, v6, :cond_9

    add-int/lit8 v5, v0, 0x3

    .line 19
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lc1/h;->e:I

    add-int/lit8 v6, v0, -0x1

    add-int/2addr v5, v6

    .line 20
    iput v5, p0, Lc1/h;->e:I

    .line 21
    iget v6, p0, Lc1/h;->c:I

    if-lt v5, v6, :cond_6

    sub-int/2addr v5, v0

    .line 22
    iput v5, p0, Lc1/h;->e:I

    goto :goto_5

    .line 23
    :cond_6
    aget-byte v1, v1, v0

    .line 24
    :goto_3
    iget v5, p0, Lc1/h;->e:I

    if-ge v0, v5, :cond_7

    .line 25
    iget-object v5, p0, Lc1/h;->b:[B

    aget-byte v5, v5, v0

    add-int/2addr v1, v5

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 26
    :cond_7
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checksum :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,  DATA[mChecksumIndex] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lc1/h;->b:[B

    iget v7, p0, Lc1/h;->e:I

    aget-byte v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ln1/b;->s(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lc1/h;->b:[B

    iget v5, p0, Lc1/h;->e:I

    aget-byte v6, v0, v5

    if-ne v1, v6, :cond_8

    .line 28
    iget v1, p0, Lc1/h;->d:I

    add-int/lit8 v6, v1, 0x4

    sub-int/2addr v5, v1

    sub-int/2addr v5, v3

    invoke-virtual {p0, v0, v6, v5}, Lc1/h;->T2([BII)V

    .line 29
    iget v0, p0, Lc1/h;->e:I

    iput v0, p0, Lc1/h;->d:I

    goto :goto_4

    .line 30
    :cond_8
    iget v0, p0, Lc1/h;->d:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc1/h;->d:I

    .line 31
    :goto_4
    iput v2, p0, Lc1/h;->e:I

    .line 32
    :cond_9
    iget v0, p0, Lc1/h;->d:I

    add-int/2addr v0, v4

    iput v0, p0, Lc1/h;->d:I

    goto/16 :goto_2

    :cond_a
    :goto_5
    if-eqz v0, :cond_c

    .line 33
    iget p1, p0, Lc1/h;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lc1/h;->c:I

    if-eqz p1, :cond_b

    .line 34
    iget-object v1, p0, Lc1/h;->b:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_b
    iput v2, p0, Lc1/h;->d:I

    :cond_c
    return-void

    :cond_d
    :goto_6
    const-wide/16 v0, 0x64

    .line 36
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

.class public Lm0/p;
.super Lm0/a;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final a:Z

.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:[B

.field public j:[B

.field public k:[B

.field public l:[B

.field public m:I

.field public n:I

.field public o:[B

.field public p:I

.field public q:I

.field public r:I

.field public s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm0/p;->a:Z

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 3
    iput-object v1, p0, Lm0/p;->b:[B

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lm0/p;->c:I

    .line 5
    iput v1, p0, Lm0/p;->d:I

    .line 6
    iput v1, p0, Lm0/p;->e:I

    const/4 v2, -0x1

    .line 7
    iput v2, p0, Lm0/p;->f:I

    iput v1, p0, Lm0/p;->g:I

    const/16 v2, 0x80

    .line 8
    iput v2, p0, Lm0/p;->h:I

    add-int/lit8 v2, v2, 0x2

    .line 9
    new-array v2, v2, [B

    iput-object v2, p0, Lm0/p;->i:[B

    const/16 v2, 0x40

    new-array v2, v2, [B

    .line 10
    iput-object v2, p0, Lm0/p;->j:[B

    const/16 v2, 0xa

    new-array v2, v2, [B

    .line 11
    iput-object v2, p0, Lm0/p;->l:[B

    .line 12
    iput v1, p0, Lm0/p;->n:I

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    .line 13
    iput-object v0, p0, Lm0/p;->o:[B

    .line 14
    iput v1, p0, Lm0/p;->p:I

    .line 15
    iput v1, p0, Lm0/p;->q:I

    .line 16
    iput v1, p0, Lm0/p;->r:I

    .line 17
    new-instance v0, Lm0/p$a;

    invoke-direct {v0, p0}, Lm0/p$a;-><init>(Lm0/p;)V

    iput-object v0, p0, Lm0/p;->s:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic N2(Lm0/p;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/p;->f:I

    return p0
.end method

.method public static synthetic O2(Lm0/p;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/p;->n:I

    return p0
.end method


# virtual methods
.method public K2()V
    .locals 0

    return-void
.end method

.method public L2()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lm0/p;->f:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lm0/p;->k:[B

    const/4 v0, 0x0

    .line 3
    sput v0, Lm0/b;->e:I

    return-void
.end method

.method public final P2()V
    .locals 3

    .line 1
    sget-object v0, Lz/a;->b:Lo1/e0;

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->b([I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lo1/e0;->i([B)V

    new-array v1, v1, [I

    .line 2
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->b([I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lo1/e0;->i([B)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x56
        0xaa
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x56
        0x55
    .end array-data
.end method

.method public Q2([BII)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOUL :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SOUL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 2
    aget-byte v1, p1, p2

    const/16 v2, -0x15

    if-eq v1, v2, :cond_1

    const/16 v2, -0x13

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p3, v0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lm0/p;->R2([BII)V

    goto :goto_0

    .line 4
    :cond_1
    iput v0, p0, Lm0/p;->f:I

    sub-int/2addr p3, v0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lm0/p;->R2([BII)V

    :goto_0
    return-void
.end method

.method public final R2([BII)V
    .locals 8

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, -0x15

    const/16 v1, 0x82

    const/16 v2, 0xec

    const/4 v3, 0x3

    const/16 v4, 0x80

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq p3, v0, :cond_2

    const/16 v0, -0x13

    if-eq p3, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p3

    add-int/2addr p1, v6

    iput p1, p0, Lm0/p;->r:I

    .line 3
    iget-object p2, p0, Lm0/p;->i:[B

    shr-int/lit8 p3, p1, 0x8

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p2, v7

    and-int/lit16 p3, p1, 0xff

    int-to-byte p3, p3

    .line 4
    aput-byte p3, p2, v6

    .line 5
    iget-object p3, p0, Lm0/p;->k:[B

    mul-int/2addr p1, v4

    invoke-static {p3, p1, p2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget p1, p0, Lm0/p;->r:I

    add-int/lit8 p2, p1, 0x1

    const p3, 0xffff

    and-int/2addr p2, p3

    iget v0, p0, Lm0/p;->n:I

    and-int/2addr p3, v0

    if-ne p2, p3, :cond_1

    new-array p1, v6, [I

    aput v3, p1, v7

    .line 7
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    new-array p1, v6, [I

    .line 8
    iget p2, p0, Lm0/p;->n:I

    mul-int/lit8 p3, p2, 0x64

    div-int/2addr p3, p2

    aput p3, p1, v7

    invoke-static {v7, p1}, Lm0/d;->j(I[I)V

    goto :goto_0

    :cond_1
    new-array p2, v6, [I

    mul-int/lit8 p1, p1, 0x64

    .line 9
    div-int/2addr p1, v0

    aput p1, p2, v7

    invoke-static {v7, p2}, Lm0/d;->j(I[I)V

    .line 10
    :goto_0
    iget-object p1, p0, Lm0/p;->i:[B

    invoke-virtual {p0, v2, v1, p1}, Lm0/p;->T2(II[B)V

    goto :goto_1

    :cond_2
    add-int/2addr p2, v5

    .line 11
    aget-byte p3, p1, p2

    if-nez p3, :cond_3

    new-array p1, v6, [I

    const/4 p2, 0x4

    aput p2, p1, v7

    .line 12
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    goto :goto_1

    .line 13
    :cond_3
    aget-byte p3, p1, p2

    if-ne p3, v6, :cond_4

    new-array p1, v6, [I

    aput v6, p1, v7

    .line 14
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    .line 15
    iget-object p1, p0, Lm0/p;->i:[B

    aput-byte v7, p1, v7

    .line 16
    aput-byte v7, p1, v6

    .line 17
    iget-object p2, p0, Lm0/p;->k:[B

    iget p3, p0, Lm0/p;->r:I

    mul-int/2addr p3, v4

    invoke-static {p2, p3, p1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v6, [I

    .line 18
    iget p2, p0, Lm0/p;->r:I

    mul-int/lit8 p2, p2, 0x64

    iget p3, p0, Lm0/p;->n:I

    div-int/2addr p2, p3

    aput p2, p1, v7

    invoke-static {v7, p1}, Lm0/d;->j(I[I)V

    .line 19
    iget-object p1, p0, Lm0/p;->i:[B

    invoke-virtual {p0, v2, v1, p1}, Lm0/p;->T2(II[B)V

    goto :goto_1

    .line 20
    :cond_4
    aget-byte p1, p1, p2

    if-ne p1, v5, :cond_5

    new-array p1, v6, [I

    aput v3, p1, v7

    .line 21
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    new-array p1, v6, [I

    .line 22
    iget p2, p0, Lm0/p;->n:I

    mul-int/lit8 p3, p2, 0x64

    div-int/2addr p3, p2

    aput p3, p1, v7

    invoke-static {v7, p1}, Lm0/d;->j(I[I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public varargs S2([I)V
    .locals 6

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x3

    .line 2
    new-array v1, v0, [I

    const/16 v2, 0xe9

    const/4 v3, 0x0

    .line 3
    aput v2, v1, v3

    const/16 v2, 0x2e

    const/4 v4, 0x1

    .line 4
    aput v2, v1, v4

    const/4 v2, 0x2

    :goto_0
    add-int/lit8 v5, v0, -0x1

    if-ge v2, v5, :cond_0

    add-int/lit8 v5, v2, -0x2

    .line 5
    aget v5, p1, v5

    aput v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    aput v3, v1, v5

    .line 7
    :goto_1
    array-length v0, p1

    if-ge v4, v0, :cond_1

    .line 8
    aget v0, v1, v5

    aget v2, p1, v4

    add-int/2addr v0, v2

    aput v0, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_1
    aget p1, v1, v5

    xor-int/lit16 p1, p1, 0xff

    aput p1, v1, v5

    .line 10
    sget-object p1, Ll0/z;->a:Ll0/a;

    invoke-static {v1}, Ll0/a;->d([I)V

    return-void
.end method

.method public final T2(II[B)V
    .locals 6

    .line 1
    array-length p2, p3

    add-int/lit8 p2, p2, 0x6

    new-array v0, p2, [I

    const/16 v1, -0x17

    const/4 v2, 0x0

    .line 2
    aput v1, v0, v2

    const/16 v1, 0x2e

    const/4 v3, 0x1

    .line 3
    aput v1, v0, v3

    const/4 v1, 0x2

    .line 4
    aput v2, v0, v1

    int-to-byte p1, p1

    const/4 v4, 0x3

    .line 5
    aput p1, v0, v4

    const/4 p1, 0x4

    const/16 v4, -0x7e

    .line 6
    aput v4, v0, p1

    .line 7
    array-length p1, p3

    :goto_0
    if-ge v2, p1, :cond_0

    const/4 v4, 0x5

    add-int/2addr v4, v2

    .line 8
    aget-byte v5, p3, v2

    aput v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p1, p2, -0x1

    if-ge v1, p1, :cond_1

    .line 9
    aget p3, v0, p1

    aget v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/2addr p3, v2

    aput p3, v0, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_1
    aget p2, v0, p1

    xor-int/lit16 p2, p2, 0xff

    aput p2, v0, p1

    .line 11
    sget-object p1, Ll0/z;->a:Ll0/a;

    invoke-static {v0}, Ll0/a;->d([I)V

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 7

    const-string p2, "to large"

    const-string p3, "size == 0 or not 136*n"

    const-string v0, "size = "

    if-eqz p1, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string p1, "SOUL"

    const-string v1, "C_UP_FILE_PATH"

    .line 1
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lm0/p;->P2()V

    if-eqz p4, :cond_5

    .line 3
    array-length v1, p4

    if-lez v1, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    aget-object p4, p4, v5

    invoke-direct {v6, p4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result p4

    iput p4, p0, Lm0/p;->p:I

    .line 6
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/p;->p:I

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget p4, p0, Lm0/p;->p:I

    const/4 v1, 0x5

    if-nez p4, :cond_1

    .line 8
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    invoke-virtual {p1, p3}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p1, v4, [I

    aput v1, p1, v5

    .line 10
    invoke-static {v3, p1}, Lm0/d;->j(I[I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    const/high16 p3, 0x200000

    if-le p4, p3, :cond_2

    .line 13
    :try_start_3
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p1, v4, [I

    const/4 p2, 0x6

    aput p2, p1, v5

    .line 15
    invoke-static {v3, p1}, Lm0/d;->j(I[I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    .line 18
    :cond_2
    :try_start_5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lm0/p;->p:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ln1/b;->s(Ljava/lang/String;)V

    .line 19
    iget p2, p0, Lm0/p;->p:I

    div-int/lit16 p3, p2, 0x80

    iput p3, p0, Lm0/p;->n:I

    .line 20
    div-int/lit16 p2, p2, 0x80

    mul-int/lit16 p2, p2, 0x80

    iput p2, p0, Lm0/p;->m:I

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/p;->p:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mBlockConut="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/p;->n:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget p1, p0, Lm0/p;->m:I

    new-array p1, p1, [B

    iput-object p1, p0, Lm0/p;->k:[B

    .line 23
    invoke-virtual {v6, p1}, Ljava/io/InputStream;->read([B)I

    new-array p1, v1, [I

    aput v5, p1, v5

    const/16 p2, 0xea

    aput p2, p1, v4

    aput v3, p1, v3

    const/4 p2, 0x3

    .line 24
    iget p3, p0, Lm0/p;->n:I

    shr-int/lit8 p4, p3, 0x8

    and-int/lit16 p4, p4, 0xff

    aput p4, p1, p2

    and-int/lit16 p2, p3, 0xff

    aput p2, p1, v2

    invoke-virtual {p0, p1}, Lm0/p;->S2([I)V

    .line 25
    iput v5, p0, Lm0/p;->f:I

    new-array p1, v4, [I

    const/16 p2, 0x64

    aput p2, p1, v5

    .line 26
    invoke-static {v4, p1}, Lm0/d;->j(I[I)V

    new-array p1, v4, [I

    .line 27
    iget p3, p0, Lm0/p;->n:I

    div-int/2addr p2, p3

    aput p2, p1, v5

    invoke-static {v5, p1}, Lm0/d;->j(I[I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 28
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    :goto_2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string p2, "requestUpdate"

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    .line 31
    sput v5, Lm0/b;->e:I

    .line 32
    iput v5, p0, Lm0/p;->f:I

    .line 33
    iget-object p1, p0, Lm0/p;->s:Ljava/lang/Runnable;

    invoke-static {p1}, Lm0/d;->b(Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x64

    .line 34
    invoke-static {p1, p2}, La/i;->a0(J)V

    .line 35
    iput v5, p0, Lm0/p;->g:I

    goto :goto_7

    :catchall_0
    move-exception p1

    move-object v1, v6

    goto :goto_5

    :catch_3
    move-exception p1

    move-object v1, v6

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception p1

    .line 36
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, "CAN"

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string p2, "\u8bfb\u53d6\u6587\u4ef6\u5931\u8d25"

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p1, v4, [I

    aput v2, p1, v5

    .line 39
    invoke-static {v3, p1}, Lm0/d;->j(I[I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_3

    .line 40
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    return-void

    :goto_5
    if-eqz v1, :cond_4

    .line 42
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    :catch_6
    move-exception p2

    .line 43
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    :cond_4
    :goto_6
    throw p1

    :cond_5
    :goto_7
    return-void
.end method

.method public b([B)V
    .locals 6

    if-eqz p1, :cond_d

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget v0, p0, Lm0/p;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lm0/p;->c:I

    .line 4
    iput v2, p0, Lm0/p;->d:I

    .line 5
    iput v2, p0, Lm0/p;->e:I

    .line 6
    :cond_1
    iget-object v0, p0, Lm0/p;->b:[B

    iget v1, p0, Lm0/p;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lm0/p;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lm0/p;->c:I

    .line 8
    iget p1, p0, Lm0/p;->e:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lm0/p;->b:[B

    aget-byte p1, p1, v3

    move v0, v1

    .line 10
    :goto_0
    iget v4, p0, Lm0/p;->e:I

    if-ge v0, v4, :cond_3

    .line 11
    iget-object v4, p0, Lm0/p;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    not-int p1, p1

    int-to-byte p1, p1

    .line 12
    iget-object v0, p0, Lm0/p;->b:[B

    aget-byte v5, v0, v4

    if-ne p1, v5, :cond_4

    sub-int/2addr v4, v3

    .line 13
    invoke-virtual {p0, v0, v3, v4}, Lm0/p;->Q2([BII)V

    .line 14
    iget p1, p0, Lm0/p;->e:I

    add-int/2addr p1, v3

    iput p1, p0, Lm0/p;->d:I

    goto :goto_1

    .line 15
    :cond_4
    iput v3, p0, Lm0/p;->d:I

    .line 16
    :goto_1
    iput v2, p0, Lm0/p;->e:I

    .line 17
    :cond_5
    iget p1, p0, Lm0/p;->c:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lm0/p;->d:I

    if-ge v0, p1, :cond_b

    .line 18
    iget-object v1, p0, Lm0/p;->b:[B

    aget-byte v4, v1, v0

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v0, 0x3

    .line 19
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lm0/p;->e:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_6

    .line 20
    iput v2, p0, Lm0/p;->e:I

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v0, 0x4

    add-int/2addr v4, v5

    .line 21
    iput v4, p0, Lm0/p;->e:I

    .line 22
    iget v5, p0, Lm0/p;->c:I

    if-lt v4, v5, :cond_7

    sub-int/2addr v4, v0

    .line 23
    iput v4, p0, Lm0/p;->e:I

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v0, 0x1

    .line 24
    aget-byte v1, v1, v4

    add-int/lit8 v0, v0, 0x2

    .line 25
    :goto_3
    iget v4, p0, Lm0/p;->e:I

    if-ge v0, v4, :cond_8

    .line 26
    iget-object v4, p0, Lm0/p;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    not-int v0, v1

    int-to-byte v0, v0

    .line 27
    iget-object v1, p0, Lm0/p;->b:[B

    aget-byte v5, v1, v4

    if-ne v0, v5, :cond_9

    .line 28
    iget v0, p0, Lm0/p;->d:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v5, v4}, Lm0/p;->Q2([BII)V

    .line 29
    iget v0, p0, Lm0/p;->e:I

    iput v0, p0, Lm0/p;->d:I

    goto :goto_4

    .line 30
    :cond_9
    iget v0, p0, Lm0/p;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lm0/p;->d:I

    .line 31
    :goto_4
    iput v2, p0, Lm0/p;->e:I

    .line 32
    :cond_a
    :goto_5
    iget v0, p0, Lm0/p;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lm0/p;->d:I

    goto :goto_2

    :cond_b
    :goto_6
    if-eqz v0, :cond_d

    .line 33
    iget p1, p0, Lm0/p;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lm0/p;->c:I

    if-eqz p1, :cond_c

    .line 34
    iget-object v1, p0, Lm0/p;->b:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_c
    iput v2, p0, Lm0/p;->d:I

    :cond_d
    :goto_7
    return-void
.end method

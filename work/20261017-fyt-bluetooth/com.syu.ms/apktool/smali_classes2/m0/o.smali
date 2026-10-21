.class public Lm0/o;
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
    iput-boolean v0, p0, Lm0/o;->a:Z

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 3
    iput-object v1, p0, Lm0/o;->b:[B

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lm0/o;->c:I

    .line 5
    iput v1, p0, Lm0/o;->d:I

    .line 6
    iput v1, p0, Lm0/o;->e:I

    const/4 v2, -0x1

    .line 7
    iput v2, p0, Lm0/o;->f:I

    iput v1, p0, Lm0/o;->g:I

    const/16 v2, 0x80

    .line 8
    iput v2, p0, Lm0/o;->h:I

    add-int/lit8 v2, v2, 0x2

    .line 9
    new-array v2, v2, [B

    iput-object v2, p0, Lm0/o;->i:[B

    const/16 v2, 0x40

    new-array v2, v2, [B

    .line 10
    iput-object v2, p0, Lm0/o;->j:[B

    const/16 v2, 0xa

    new-array v2, v2, [B

    .line 11
    iput-object v2, p0, Lm0/o;->l:[B

    .line 12
    iput v1, p0, Lm0/o;->n:I

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    .line 13
    iput-object v0, p0, Lm0/o;->o:[B

    .line 14
    iput v1, p0, Lm0/o;->p:I

    .line 15
    iput v1, p0, Lm0/o;->q:I

    .line 16
    iput v1, p0, Lm0/o;->r:I

    .line 17
    new-instance v0, Lm0/o$a;

    invoke-direct {v0, p0}, Lm0/o$a;-><init>(Lm0/o;)V

    iput-object v0, p0, Lm0/o;->s:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic N2(Lm0/o;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/o;->f:I

    return p0
.end method

.method public static synthetic O2(Lm0/o;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/o;->n:I

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
    iput v0, p0, Lm0/o;->f:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lm0/o;->k:[B

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

    .line 2
    aget-byte v0, p1, p2

    const/16 v1, -0x15

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, -0x13

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p3, v2

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lm0/o;->R2([BII)V

    goto :goto_0

    .line 4
    :cond_1
    iput v2, p0, Lm0/o;->f:I

    sub-int/2addr p3, v2

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lm0/o;->R2([BII)V

    :goto_0
    return-void
.end method

.method public final R2([BII)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data[start] ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "updateCanUpInfo :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SOUL"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "block ="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/o;->r:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mUpgradeStep :"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/o;->f:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
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

    .line 4
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

    iput p1, p0, Lm0/o;->r:I

    .line 5
    iget-object p2, p0, Lm0/o;->i:[B

    shr-int/lit8 p3, p1, 0x8

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p2, v7

    and-int/lit16 p3, p1, 0xff

    int-to-byte p3, p3

    .line 6
    aput-byte p3, p2, v6

    .line 7
    iget-object p3, p0, Lm0/o;->k:[B

    mul-int/2addr p1, v4

    invoke-static {p3, p1, p2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget p1, p0, Lm0/o;->r:I

    add-int/lit8 p2, p1, 0x1

    const p3, 0xffff

    and-int/2addr p2, p3

    iget v0, p0, Lm0/o;->n:I

    and-int/2addr p3, v0

    if-ne p2, p3, :cond_1

    new-array p1, v6, [I

    aput v3, p1, v7

    .line 9
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    new-array p1, v6, [I

    .line 10
    iget p2, p0, Lm0/o;->n:I

    mul-int/lit8 p3, p2, 0x64

    div-int/2addr p3, p2

    aput p3, p1, v7

    invoke-static {v7, p1}, Lm0/d;->j(I[I)V

    goto :goto_0

    :cond_1
    new-array p2, v6, [I

    mul-int/lit8 p1, p1, 0x64

    .line 11
    div-int/2addr p1, v0

    aput p1, p2, v7

    invoke-static {v7, p2}, Lm0/d;->j(I[I)V

    .line 12
    :goto_0
    iget-object p1, p0, Lm0/o;->i:[B

    invoke-virtual {p0, v2, v1, p1}, Lm0/o;->T2(II[B)V

    goto :goto_1

    :cond_2
    add-int/2addr p2, v5

    .line 13
    aget-byte p3, p1, p2

    if-nez p3, :cond_3

    new-array p1, v6, [I

    const/4 p2, 0x4

    aput p2, p1, v7

    .line 14
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    goto :goto_1

    .line 15
    :cond_3
    aget-byte p3, p1, p2

    if-ne p3, v6, :cond_4

    new-array p1, v6, [I

    aput v6, p1, v7

    .line 16
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    .line 17
    iget-object p1, p0, Lm0/o;->i:[B

    aput-byte v7, p1, v7

    .line 18
    aput-byte v7, p1, v6

    .line 19
    iget-object p2, p0, Lm0/o;->k:[B

    iget p3, p0, Lm0/o;->r:I

    mul-int/2addr p3, v4

    invoke-static {p2, p3, p1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v6, [I

    .line 20
    iget p2, p0, Lm0/o;->r:I

    mul-int/lit8 p2, p2, 0x64

    iget p3, p0, Lm0/o;->n:I

    div-int/2addr p2, p3

    aput p2, p1, v7

    invoke-static {v7, p1}, Lm0/d;->j(I[I)V

    .line 21
    iget-object p1, p0, Lm0/o;->i:[B

    invoke-virtual {p0, v2, v1, p1}, Lm0/o;->T2(II[B)V

    goto :goto_1

    .line 22
    :cond_4
    aget-byte p1, p1, p2

    if-ne p1, v5, :cond_5

    new-array p1, v6, [I

    aput v3, p1, v7

    .line 23
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    new-array p1, v6, [I

    .line 24
    iget p2, p0, Lm0/o;->n:I

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

    if-ge v3, v0, :cond_1

    .line 8
    aget v0, v1, v5

    aget v2, p1, v3

    add-int/2addr v0, v2

    aput v0, v1, v5

    add-int/lit8 v3, v3, 0x1

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

    add-int/lit8 p2, p2, 0x5

    new-array v0, p2, [I

    const/16 v1, -0x17

    const/4 v2, 0x0

    .line 2
    aput v1, v0, v2

    const/16 v1, 0x2e

    const/4 v3, 0x1

    .line 3
    aput v1, v0, v3

    int-to-byte p1, p1

    const/4 v1, 0x2

    .line 4
    aput p1, v0, v1

    const/4 p1, 0x3

    const/16 v4, -0x7e

    .line 5
    aput v4, v0, p1

    .line 6
    array-length p1, p3

    :goto_0
    if-ge v2, p1, :cond_0

    const/4 v4, 0x4

    add-int/2addr v4, v2

    .line 7
    aget-byte v5, p3, v2

    aput v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p1, p2, -0x1

    if-ge v1, p1, :cond_1

    .line 8
    aget p3, v0, p1

    aget v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/2addr p3, v2

    aput p3, v0, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_1
    aget p2, v0, p1

    xor-int/lit16 p2, p2, 0xff

    aput p2, v0, p1

    .line 10
    sget-object p1, Ll0/z;->a:Ll0/a;

    invoke-static {v0}, Ll0/a;->d([I)V

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 8

    const-string p2, "to large"

    const-string p3, "size == 0 or not 136*n"

    const-string v0, "size = "

    const-string v1, "CAN"

    if-eqz p1, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string p1, "SOUL"

    const-string v2, "C_UP_FILE_PATH"

    .line 1
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 2
    iput v2, p0, Lm0/o;->r:I

    .line 3
    invoke-virtual {p0}, Lm0/o;->P2()V

    if-eqz p4, :cond_5

    .line 4
    array-length v3, p4

    if-lez v3, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 5
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    aget-object p4, p4, v2

    invoke-direct {v7, p4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result p4

    iput p4, p0, Lm0/o;->p:I

    .line 7
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lm0/o;->p:I

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget p4, p0, Lm0/o;->p:I

    if-nez p4, :cond_1

    .line 9
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    invoke-virtual {p1, p3}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p1, v6, [I

    const/4 p2, 0x5

    aput p2, p1, v2

    .line 11
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    const/high16 p3, 0x200000

    if-le p4, p3, :cond_2

    .line 14
    :try_start_3
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p1, v6, [I

    const/4 p2, 0x6

    aput p2, p1, v2

    .line 16
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    .line 19
    :cond_2
    :try_start_5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lm0/o;->p:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ln1/b;->s(Ljava/lang/String;)V

    .line 20
    iget p2, p0, Lm0/o;->p:I

    div-int/lit16 p3, p2, 0x80

    iput p3, p0, Lm0/o;->n:I

    .line 21
    div-int/lit16 p2, p2, 0x80

    mul-int/lit16 p2, p2, 0x80

    iput p2, p0, Lm0/o;->m:I

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/o;->p:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mBlockConut="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/o;->n:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget p1, p0, Lm0/o;->m:I

    new-array p1, p1, [B

    iput-object p1, p0, Lm0/o;->k:[B

    .line 24
    invoke-virtual {v7, p1}, Ljava/io/InputStream;->read([B)I

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checksum ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lm0/o;->q:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v4, [I

    const/16 p2, 0xea

    aput p2, p1, v2

    aput v5, p1, v6

    .line 26
    iget p2, p0, Lm0/o;->n:I

    shr-int/lit8 p3, p2, 0x8

    and-int/lit16 p3, p3, 0xff

    aput p3, p1, v5

    const/4 p3, 0x3

    and-int/lit16 p2, p2, 0xff

    aput p2, p1, p3

    invoke-virtual {p0, p1}, Lm0/o;->S2([I)V

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mUpgradeStep = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lm0/o;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput v2, p0, Lm0/o;->f:I

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AAmUpgradeStep = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lm0/o;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v6, [I

    const/16 p2, 0x64

    aput p2, p1, v2

    .line 30
    invoke-static {v6, p1}, Lm0/d;->j(I[I)V

    new-array p1, v6, [I

    .line 31
    iget p3, p0, Lm0/o;->n:I

    div-int/2addr p2, p3

    aput p2, p1, v2

    invoke-static {v2, p1}, Lm0/d;->j(I[I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 32
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    :goto_2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string p2, "requestUpdate"

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    .line 35
    sput v2, Lm0/b;->e:I

    .line 36
    iput v2, p0, Lm0/o;->f:I

    .line 37
    iget-object p1, p0, Lm0/o;->s:Ljava/lang/Runnable;

    invoke-static {p1}, Lm0/d;->b(Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x64

    .line 38
    invoke-static {p1, p2}, La/i;->a0(J)V

    .line 39
    iput v2, p0, Lm0/o;->g:I

    goto :goto_7

    :catchall_0
    move-exception p1

    move-object v3, v7

    goto :goto_5

    :catch_3
    move-exception p1

    move-object v3, v7

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception p1

    .line 40
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string p2, "\u8bfb\u53d6\u6587\u4ef6\u5931\u8d25"

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p1, v6, [I

    aput v4, p1, v2

    .line 43
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_3

    .line 44
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    return-void

    :goto_5
    if-eqz v3, :cond_4

    .line 46
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    :catch_6
    move-exception p2

    .line 47
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
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
    iget v0, p0, Lm0/o;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lm0/o;->c:I

    .line 4
    iput v2, p0, Lm0/o;->d:I

    .line 5
    iput v2, p0, Lm0/o;->e:I

    .line 6
    :cond_1
    iget-object v0, p0, Lm0/o;->b:[B

    iget v1, p0, Lm0/o;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lm0/o;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lm0/o;->c:I

    .line 8
    iget p1, p0, Lm0/o;->e:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lm0/o;->b:[B

    aget-byte p1, p1, v3

    move v0, v1

    .line 10
    :goto_0
    iget v4, p0, Lm0/o;->e:I

    if-ge v0, v4, :cond_3

    .line 11
    iget-object v4, p0, Lm0/o;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    not-int p1, p1

    int-to-byte p1, p1

    .line 12
    iget-object v0, p0, Lm0/o;->b:[B

    aget-byte v5, v0, v4

    if-ne p1, v5, :cond_4

    sub-int/2addr v4, v3

    .line 13
    invoke-virtual {p0, v0, v3, v4}, Lm0/o;->Q2([BII)V

    .line 14
    iget p1, p0, Lm0/o;->e:I

    add-int/2addr p1, v3

    iput p1, p0, Lm0/o;->d:I

    goto :goto_1

    .line 15
    :cond_4
    iput v3, p0, Lm0/o;->d:I

    .line 16
    :goto_1
    iput v2, p0, Lm0/o;->e:I

    .line 17
    :cond_5
    iget p1, p0, Lm0/o;->c:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lm0/o;->d:I

    if-ge v0, p1, :cond_b

    .line 18
    iget-object v1, p0, Lm0/o;->b:[B

    aget-byte v4, v1, v0

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v0, 0x2

    .line 19
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lm0/o;->e:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_6

    .line 20
    iput v2, p0, Lm0/o;->e:I

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v0, 0x3

    add-int/2addr v4, v5

    .line 21
    iput v4, p0, Lm0/o;->e:I

    .line 22
    iget v5, p0, Lm0/o;->c:I

    if-lt v4, v5, :cond_7

    sub-int/2addr v4, v0

    .line 23
    iput v4, p0, Lm0/o;->e:I

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v0, 0x1

    .line 24
    aget-byte v1, v1, v4

    add-int/lit8 v0, v0, 0x2

    .line 25
    :goto_3
    iget v4, p0, Lm0/o;->e:I

    if-ge v0, v4, :cond_8

    .line 26
    iget-object v4, p0, Lm0/o;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    not-int v0, v1

    int-to-byte v0, v0

    .line 27
    iget-object v1, p0, Lm0/o;->b:[B

    aget-byte v5, v1, v4

    if-ne v0, v5, :cond_9

    .line 28
    iget v0, p0, Lm0/o;->d:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v5, v4}, Lm0/o;->Q2([BII)V

    .line 29
    iget v0, p0, Lm0/o;->e:I

    iput v0, p0, Lm0/o;->d:I

    goto :goto_4

    .line 30
    :cond_9
    iget v0, p0, Lm0/o;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lm0/o;->d:I

    .line 31
    :goto_4
    iput v2, p0, Lm0/o;->e:I

    .line 32
    :cond_a
    :goto_5
    iget v0, p0, Lm0/o;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lm0/o;->d:I

    goto :goto_2

    :cond_b
    :goto_6
    if-eqz v0, :cond_d

    .line 33
    iget p1, p0, Lm0/o;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lm0/o;->c:I

    if-lez p1, :cond_c

    .line 34
    iget-object v1, p0, Lm0/o;->b:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_c
    iput v2, p0, Lm0/o;->d:I

    :cond_d
    :goto_7
    return-void
.end method

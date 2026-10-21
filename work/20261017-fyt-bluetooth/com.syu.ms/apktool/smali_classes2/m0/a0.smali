.class public Lm0/a0;
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

.field public i:I

.field public j:[B

.field public k:[B

.field public l:I

.field public m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm0/a0;->a:Z

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lm0/a0;->b:[B

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lm0/a0;->c:I

    .line 5
    iput v0, p0, Lm0/a0;->d:I

    .line 6
    iput v0, p0, Lm0/a0;->e:I

    .line 7
    iput v0, p0, Lm0/a0;->f:I

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lm0/a0;->g:I

    iput v0, p0, Lm0/a0;->h:I

    iput v0, p0, Lm0/a0;->i:I

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 9
    iput-object v0, p0, Lm0/a0;->j:[B

    .line 10
    new-instance v0, Lm0/a0$a;

    invoke-direct {v0, p0}, Lm0/a0$a;-><init>(Lm0/a0;)V

    iput-object v0, p0, Lm0/a0;->m:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic N2(Lm0/a0;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/a0;->g:I

    return p0
.end method

.method public static synthetic O2(Lm0/a0;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/a0;->i:I

    return p0
.end method

.method public static synthetic P2(Lm0/a0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/a0;->i:I

    return p1
.end method

.method public static synthetic Q2(Lm0/a0;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/a0;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/a0;->i:I

    return v0
.end method

.method public static synthetic R2(Lm0/a0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm0/a0;->T2()V

    return-void
.end method

.method public static synthetic S2(Lm0/a0;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lm0/a0;->k:[B

    return-object p0
.end method


# virtual methods
.method public K2()V
    .locals 0

    return-void
.end method

.method public L2()V
    .locals 1

    .line 1
    iget v0, p0, Lm0/a0;->g:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm0/a0;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lm0/a0;->g:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lm0/a0;->k:[B

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
    .locals 9

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, -0x1e

    const/4 v1, 0x2

    if-eq p3, v0, :cond_3

    const/16 v0, -0x1c

    if-eq p3, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 p3, 0x85

    new-array p3, p3, [B

    add-int/lit8 v0, p2, 0x2

    .line 2
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x3

    add-int/2addr p2, v3

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    const/16 v4, 0x80

    mul-int/2addr v2, v4

    .line 3
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    const/4 p2, 0x1

    new-array v0, p2, [I

    const/4 v5, 0x0

    const/16 v6, 0x64

    aput v6, v0, v5

    .line 4
    invoke-static {p2, v0}, Lm0/d;->j(I[I)V

    new-array v0, p2, [I

    mul-int/lit8 v6, p1, 0x64

    .line 5
    iget v7, p0, Lm0/a0;->f:I

    const/4 v8, 0x5

    sub-int/2addr v7, v8

    div-int/2addr v7, v4

    div-int/2addr v6, v7

    aput v6, v0, v5

    invoke-static {v5, v0}, Lm0/d;->j(I[I)V

    .line 6
    iget-object v0, p0, Lm0/a0;->k:[B

    if-eqz v0, :cond_4

    .line 7
    iget v6, p0, Lm0/a0;->f:I

    add-int/lit16 v7, v2, 0x80

    if-lt v6, v7, :cond_1

    .line 8
    invoke-static {v0, v2, p3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/16 v0, -0x1d

    aput-byte v0, p3, v5

    aput-byte v0, p3, p2

    const/16 p2, -0x7e

    aput-byte p2, p3, v1

    .line 9
    iget p2, p0, Lm0/a0;->f:I

    sub-int/2addr p2, v8

    div-int/2addr p2, v4

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x4

    if-gt p2, v0, :cond_2

    const/16 p1, 0x1f

    aput-byte p1, p3, v3

    aput-byte p1, p3, v1

    goto :goto_0

    :cond_2
    shr-int/lit8 p2, p1, 0x8

    int-to-byte p2, p2

    aput-byte p2, p3, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p3, v1

    .line 10
    :goto_0
    sget-object p1, Ll0/z;->a:Ll0/a;

    invoke-static {p3}, Lo1/s0;->e([B)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Ll0/a;->f([I)V

    goto :goto_1

    :cond_3
    add-int/2addr p2, v1

    .line 11
    aget-byte p1, p1, p2

    invoke-virtual {p0, p1}, Lm0/a0;->V2(B)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final V2(B)V
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    const/4 v4, 0x3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v3, [I

    const/16 v0, 0x64

    aput v0, p1, v1

    .line 1
    invoke-static {v1, p1}, Lm0/d;->j(I[I)V

    new-array p1, v3, [I

    aput v4, p1, v1

    .line 2
    invoke-static {v2, p1}, Lm0/d;->j(I[I)V

    goto :goto_0

    .line 3
    :cond_1
    iput v3, p0, Lm0/a0;->g:I

    new-array p1, v3, [I

    aput v3, p1, v1

    .line 4
    invoke-static {v2, p1}, Lm0/d;->j(I[I)V

    goto :goto_0

    .line 5
    :cond_2
    iget p1, p0, Lm0/a0;->f:I

    const/4 v5, 0x5

    sub-int/2addr p1, v5

    div-int/lit16 p1, p1, 0x80

    new-array v5, v5, [B

    const/16 v6, -0x1d

    aput-byte v6, v5, v1

    const/16 v1, -0x1b

    aput-byte v1, v5, v3

    aput-byte v2, v5, v2

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v5, v4

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "block ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LG"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object p1, Ll0/z;->a:Ll0/a;

    invoke-static {v5}, Lo1/s0;->e([B)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Ll0/a;->f([I)V

    goto :goto_0

    :cond_3
    new-array p1, v3, [I

    aput v0, p1, v1

    .line 8
    invoke-static {v2, p1}, Lm0/d;->j(I[I)V

    :goto_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 9

    const-string p2, "CAN"

    if-eqz p1, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p4, :cond_3

    .line 1
    array-length p1, p4

    if-lez p1, :cond_3

    const/4 p1, 0x0

    const/4 p3, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    aget-object p4, p4, v2

    invoke-direct {v3, p4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result p1

    iput p1, p0, Lm0/a0;->f:I

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "LGsize = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lm0/a0;->f:I

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size = "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lm0/a0;->f:I

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ln1/b;->s(Ljava/lang/String;)V

    .line 6
    iget p1, p0, Lm0/a0;->f:I

    iput p1, p0, Lm0/a0;->l:I

    new-array p4, p1, [B

    iput-object p4, p0, Lm0/a0;->k:[B

    .line 7
    sget-object v4, Ll0/z;->a:Ll0/a;

    const/16 v5, 0x8

    new-array v5, v5, [I

    const/16 v6, 0xe3

    aput v6, v5, v2

    const/16 v6, 0xe1

    aput v6, v5, v1

    const/4 v6, 0x5

    aput v6, v5, v0

    add-int/lit8 v7, p1, -0x5

    aget-byte v7, p4, v7

    const/4 v8, 0x3

    aput v7, v5, v8

    add-int/lit8 v7, p1, -0x4

    aget-byte v7, p4, v7

    aput v7, v5, p3

    add-int/lit8 v7, p1, -0x3

    aget-byte v7, p4, v7

    aput v7, v5, v6

    const/4 v6, 0x6

    add-int/lit8 v7, p1, -0x2

    aget-byte v7, p4, v7

    aput v7, v5, v6

    const/4 v6, 0x7

    sub-int/2addr p1, v1

    aget-byte p1, p4, p1

    aput p1, v5, v6

    invoke-virtual {v4, v5}, Ll0/a;->f([I)V

    .line 8
    iget-object p1, p0, Lm0/a0;->k:[B

    invoke-virtual {v3, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p1, "requestUpdateLG"

    .line 11
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string p2, "requestUpdate"

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    .line 13
    sput v1, Lm0/b;->e:I

    .line 14
    invoke-virtual {p0}, Lm0/a0;->T2()V

    .line 15
    iput v2, p0, Lm0/a0;->h:I

    iput v2, p0, Lm0/a0;->g:I

    iput v2, p0, Lm0/a0;->i:I

    .line 16
    iget-object p1, p0, Lm0/a0;->m:Ljava/lang/Runnable;

    invoke-static {p1}, Lm0/d;->b(Ljava/lang/Runnable;)V

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v3, p1

    move-object p1, p2

    goto :goto_3

    :catch_2
    move-exception p4

    move-object v3, p1

    move-object p1, p4

    .line 17
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string p2, "\u8bfb\u53d6\u6587\u4ef6\u5931\u8d25"

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p1, v1, [I

    aput p3, p1, v2

    .line 20
    invoke-static {v0, p1}, Lm0/d;->j(I[I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    .line 21
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz v3, :cond_2

    .line 23
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    .line 24
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :cond_2
    :goto_4
    throw p1

    :cond_3
    :goto_5
    return-void
.end method

.method public b([B)V
    .locals 6

    if-eqz p1, :cond_c

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget v0, p0, Lm0/a0;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lm0/a0;->c:I

    .line 4
    iput v2, p0, Lm0/a0;->d:I

    .line 5
    iput v2, p0, Lm0/a0;->e:I

    .line 6
    :cond_1
    iget-object v0, p0, Lm0/a0;->b:[B

    iget v1, p0, Lm0/a0;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lm0/a0;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lm0/a0;->c:I

    .line 8
    iget p1, p0, Lm0/a0;->e:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lm0/a0;->b:[B

    aget-byte p1, p1, v3

    move v0, v1

    .line 10
    :goto_0
    iget v4, p0, Lm0/a0;->e:I

    if-ge v0, v4, :cond_3

    .line 11
    iget-object v4, p0, Lm0/a0;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    not-int p1, p1

    int-to-byte p1, p1

    .line 12
    iget-object v0, p0, Lm0/a0;->b:[B

    aget-byte v5, v0, v4

    if-ne p1, v5, :cond_4

    sub-int/2addr v4, v3

    .line 13
    invoke-virtual {p0, v0, v3, v4}, Lm0/a0;->U2([BII)V

    .line 14
    iget p1, p0, Lm0/a0;->e:I

    add-int/2addr p1, v3

    iput p1, p0, Lm0/a0;->d:I

    goto :goto_1

    .line 15
    :cond_4
    iput v3, p0, Lm0/a0;->d:I

    .line 16
    :goto_1
    iput v2, p0, Lm0/a0;->e:I

    .line 17
    :cond_5
    iget p1, p0, Lm0/a0;->c:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lm0/a0;->d:I

    if-ge v0, p1, :cond_a

    .line 18
    iget-object v1, p0, Lm0/a0;->b:[B

    aget-byte v4, v1, v0

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_9

    add-int/lit8 v4, v0, 0x2

    .line 19
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, 0x3

    iput v4, p0, Lm0/a0;->e:I

    add-int/2addr v4, v0

    .line 20
    iput v4, p0, Lm0/a0;->e:I

    .line 21
    iget v5, p0, Lm0/a0;->c:I

    if-lt v4, v5, :cond_6

    sub-int/2addr v4, v0

    .line 22
    iput v4, p0, Lm0/a0;->e:I

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v0, 0x1

    .line 23
    aget-byte v1, v1, v4

    add-int/lit8 v0, v0, 0x2

    .line 24
    :goto_3
    iget v4, p0, Lm0/a0;->e:I

    if-ge v0, v4, :cond_7

    .line 25
    iget-object v4, p0, Lm0/a0;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    not-int v0, v1

    int-to-byte v0, v0

    .line 26
    iget-object v1, p0, Lm0/a0;->b:[B

    aget-byte v5, v1, v4

    if-ne v0, v5, :cond_8

    .line 27
    iget v0, p0, Lm0/a0;->d:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v5, v4}, Lm0/a0;->U2([BII)V

    .line 28
    iget v0, p0, Lm0/a0;->e:I

    iput v0, p0, Lm0/a0;->d:I

    goto :goto_4

    .line 29
    :cond_8
    iget v0, p0, Lm0/a0;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lm0/a0;->d:I

    .line 30
    :goto_4
    iput v2, p0, Lm0/a0;->e:I

    .line 31
    :cond_9
    iget v0, p0, Lm0/a0;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lm0/a0;->d:I

    goto :goto_2

    :cond_a
    :goto_5
    if-eqz v0, :cond_c

    .line 32
    iget p1, p0, Lm0/a0;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lm0/a0;->c:I

    if-eqz p1, :cond_b

    .line 33
    iget-object v1, p0, Lm0/a0;->b:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    :cond_b
    iput v2, p0, Lm0/a0;->d:I

    :cond_c
    :goto_6
    return-void
.end method

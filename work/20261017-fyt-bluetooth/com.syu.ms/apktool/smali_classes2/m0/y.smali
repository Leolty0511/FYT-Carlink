.class public Lm0/y;
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

.field public k:I

.field public l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm0/y;->a:Z

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lm0/y;->b:[B

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lm0/y;->c:I

    .line 5
    iput v0, p0, Lm0/y;->d:I

    .line 6
    iput v0, p0, Lm0/y;->e:I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lm0/y;->f:I

    iput v0, p0, Lm0/y;->g:I

    .line 8
    iput v0, p0, Lm0/y;->h:I

    const/16 v0, 0x84

    new-array v0, v0, [B

    .line 9
    iput-object v0, p0, Lm0/y;->i:[B

    .line 10
    new-instance v0, Lm0/y$a;

    invoke-direct {v0, p0}, Lm0/y$a;-><init>(Lm0/y;)V

    iput-object v0, p0, Lm0/y;->l:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic N2(Lm0/y;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lm0/y;->j:[B

    return-object p0
.end method

.method public static synthetic O2(Lm0/y;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/y;->k:I

    return p0
.end method

.method public static synthetic P2(Lm0/y;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/y;->f:I

    return p0
.end method

.method public static synthetic Q2(Lm0/y;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/y;->g:I

    return p0
.end method

.method public static synthetic R2(Lm0/y;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/y;->g:I

    return p1
.end method

.method public static synthetic S2(Lm0/y;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/y;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/y;->g:I

    return v0
.end method

.method public static synthetic T2(Lm0/y;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm0/y;->W2()V

    return-void
.end method

.method public static synthetic U2(Lm0/y;[B)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lm0/y;->Y2([B)V

    return-void
.end method


# virtual methods
.method public K2()V
    .locals 0

    return-void
.end method

.method public L2()V
    .locals 1

    .line 1
    iget v0, p0, Lm0/y;->f:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm0/y;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lm0/y;->f:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lm0/y;->j:[B

    const/4 v0, 0x0

    .line 5
    sput v0, Lm0/b;->e:I

    return-void
.end method

.method public final V2()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 1
    invoke-static {v0}, Lm0/d;->m([B)V

    return-void
.end method

.method public final W2()V
    .locals 0

    .line 1
    invoke-static {}, Lm0/d;->f()V

    return-void
.end method

.method public X2([BII)V
    .locals 4

    .line 1
    invoke-static {p1, p2, p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p3

    const-string v0, "CAN"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    aget-byte p3, p1, p2

    const/16 v0, -0x1e

    const/16 v1, 0x8

    const/4 v2, 0x3

    if-eq p3, v0, :cond_1

    const/16 v0, -0x1c

    if-eq p3, v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lm0/y;->V2()V

    add-int/lit8 p3, p2, 0x2

    .line 4
    aget-byte p3, p1, p3

    shl-int/2addr p3, v1

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p3

    iput p1, p0, Lm0/y;->f:I

    .line 5
    invoke-virtual {p0, p1}, Lm0/y;->Z2(I)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    add-int/2addr p2, p3

    .line 6
    aget-byte p1, p1, p2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    if-eq p1, p3, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lm0/y;->V2()V

    new-array p1, v0, [I

    aput v2, p1, p2

    .line 8
    invoke-static {p3, p1}, Lm0/d;->j(I[I)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lm0/y;->V2()V

    new-array p1, v0, [I

    aput v0, p1, p2

    .line 10
    invoke-static {p3, p1}, Lm0/d;->j(I[I)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0}, Lm0/y;->V2()V

    .line 12
    iput v0, p0, Lm0/y;->f:I

    new-array p1, v0, [I

    aput v0, p1, p2

    .line 13
    invoke-static {p3, p1}, Lm0/d;->j(I[I)V

    .line 14
    iget p1, p0, Lm0/y;->h:I

    if-eqz p1, :cond_6

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/16 v3, -0x1b

    aput-byte v3, v1, p2

    aput-byte p3, v1, v0

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v1, p3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 15
    invoke-virtual {p0, v1}, Lm0/y;->Y2([B)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {p0}, Lm0/y;->V2()V

    new-array p1, v0, [I

    aput v1, p1, p2

    .line 17
    invoke-static {p3, p1}, Lm0/d;->j(I[I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final Y2([B)V
    .locals 8

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    const/16 v3, 0x2e

    const/4 v4, 0x0

    .line 3
    aput-byte v3, v2, v4

    const/4 v3, 0x1

    .line 4
    invoke-static {p1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v0, :cond_1

    .line 5
    aget-byte v7, p1, v5

    add-int/2addr v6, v7

    int-to-byte v6, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    xor-int/lit16 v0, v6, 0xff

    int-to-byte v0, v0

    .line 6
    array-length p1, p1

    add-int/2addr p1, v3

    aput-byte v0, v2, p1

    .line 7
    invoke-static {v2}, Lm0/d;->m([B)V

    .line 8
    invoke-static {v2, v4, v1}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SEND"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 6

    const-string p2, "size = "

    const-string p3, "size == 0 or not N*128+4"

    const-string v0, "CAN"

    if-eqz p1, :cond_0

    goto/16 :goto_7

    :cond_0
    if-eqz p4, :cond_5

    .line 1
    array-length p1, p4

    if-lez p1, :cond_5

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    aget-object p4, p4, v4

    invoke-direct {v5, p4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    rem-int/lit16 p4, p1, 0x80

    if-eq p4, v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ln1/b;->s(Ljava/lang/String;)V

    .line 7
    iput p1, p0, Lm0/y;->k:I

    new-array p2, p1, [B

    iput-object p2, p0, Lm0/y;->j:[B

    .line 8
    invoke-virtual {v5, p2}, Ljava/io/InputStream;->read([B)I

    .line 9
    div-int/lit16 p1, p1, 0x80

    iput p1, p0, Lm0/y;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p1, "requestUpdate"

    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 14
    sput v3, Lm0/b;->e:I

    .line 15
    invoke-virtual {p0}, Lm0/y;->W2()V

    .line 16
    iput v4, p0, Lm0/y;->g:I

    iput v4, p0, Lm0/y;->f:I

    .line 17
    iget-object p1, p0, Lm0/y;->l:Ljava/lang/Runnable;

    invoke-static {p1}, Lm0/d;->b(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 18
    :cond_2
    :goto_1
    :try_start_3
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    invoke-virtual {p1, p3}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p1, v3, [I

    const/4 p2, 0x5

    aput p2, p1, v4

    .line 20
    invoke-static {v1, p1}, Lm0/d;->j(I[I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :catch_2
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v5, p1

    move-object p1, p2

    goto :goto_5

    :catch_3
    move-exception p2

    move-object v5, p1

    move-object p1, p2

    .line 23
    :goto_3
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string p2, "\u8bfb\u53d6\u6587\u4ef6\u5931\u8d25"

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p1, v3, [I

    aput v2, p1, v4

    .line 26
    invoke-static {v1, p1}, Lm0/d;->j(I[I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v5, :cond_3

    .line 27
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    return-void

    :catchall_1
    move-exception p1

    :goto_5
    if-eqz v5, :cond_4

    .line 29
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception p2

    .line 30
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    :cond_4
    :goto_6
    throw p1

    :cond_5
    :goto_7
    return-void
.end method

.method public final Z2(I)V
    .locals 9

    .line 1
    iget v0, p0, Lm0/y;->h:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_3

    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ;mUpgradeTotalStep = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lm0/y;->h:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "CAN"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, p1, 0x1

    mul-int/lit16 v6, v0, 0x80

    .line 3
    iget v7, p0, Lm0/y;->k:I

    if-gt v6, v7, :cond_2

    .line 4
    iget-object v6, p0, Lm0/y;->i:[B

    const/16 v7, -0x1d

    aput-byte v7, v6, v3

    const/16 v7, -0x7e

    .line 5
    aput-byte v7, v6, v4

    .line 6
    iget v7, p0, Lm0/y;->h:I

    sub-int/2addr v7, v4

    const/4 v8, 0x3

    if-ne p1, v7, :cond_1

    const/16 v7, 0x1f

    .line 7
    aput-byte v7, v6, v2

    .line 8
    aput-byte v7, v6, v8

    goto :goto_0

    :cond_1
    shr-int/lit8 v7, p1, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 9
    aput-byte v7, v6, v2

    and-int/lit16 v7, p1, 0xff

    int-to-byte v7, v7

    .line 10
    aput-byte v7, v6, v8

    .line 11
    :goto_0
    iget-object v7, p0, Lm0/y;->j:[B

    const/16 v8, 0x80

    mul-int/2addr p1, v8

    invoke-static {v7, p1, v6, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object p1, p0, Lm0/y;->i:[B

    invoke-virtual {p0, p1}, Lm0/y;->Y2([B)V

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5347\u7ea7\u4e2d  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lm0/y;->k:I

    div-int/2addr v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/y;->k:I

    div-int/2addr v1, v8

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p1, v4, [I

    aput v2, p1, v3

    .line 15
    invoke-static {v2, p1}, Lm0/d;->j(I[I)V

    new-array p1, v4, [I

    const/16 v1, 0x64

    aput v1, p1, v3

    .line 16
    invoke-static {v4, p1}, Lm0/d;->j(I[I)V

    new-array p1, v4, [I

    mul-int/2addr v0, v1

    .line 17
    iget v1, p0, Lm0/y;->k:I

    div-int/2addr v1, v8

    div-int/2addr v0, v1

    aput v0, p1, v3

    invoke-static {v3, p1}, Lm0/d;->j(I[I)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    new-array p1, v4, [I

    aput v1, p1, v3

    .line 18
    invoke-static {v2, p1}, Lm0/d;->j(I[I)V

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
    iget v0, p0, Lm0/y;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lm0/y;->c:I

    .line 4
    iput v2, p0, Lm0/y;->d:I

    .line 5
    iput v2, p0, Lm0/y;->e:I

    .line 6
    :cond_1
    array-length v0, p1

    invoke-static {p1, v2, v0}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ABC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lm0/y;->b:[B

    iget v1, p0, Lm0/y;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v0, p0, Lm0/y;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lm0/y;->c:I

    .line 9
    iget p1, p0, Lm0/y;->e:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object p1, p0, Lm0/y;->b:[B

    aget-byte p1, p1, v3

    move v0, v1

    .line 11
    :goto_0
    iget v4, p0, Lm0/y;->e:I

    if-ge v0, v4, :cond_3

    .line 12
    iget-object v4, p0, Lm0/y;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    not-int p1, p1

    int-to-byte p1, p1

    .line 13
    iget-object v0, p0, Lm0/y;->b:[B

    aget-byte v5, v0, v4

    if-ne p1, v5, :cond_4

    sub-int/2addr v4, v3

    .line 14
    invoke-virtual {p0, v0, v3, v4}, Lm0/y;->X2([BII)V

    .line 15
    iget p1, p0, Lm0/y;->e:I

    add-int/2addr p1, v3

    iput p1, p0, Lm0/y;->d:I

    goto :goto_1

    .line 16
    :cond_4
    iput v3, p0, Lm0/y;->d:I

    .line 17
    :goto_1
    iput v2, p0, Lm0/y;->e:I

    .line 18
    :cond_5
    iget p1, p0, Lm0/y;->c:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lm0/y;->d:I

    if-ge v0, p1, :cond_a

    .line 19
    iget-object v1, p0, Lm0/y;->b:[B

    aget-byte v4, v1, v0

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_9

    add-int/lit8 v4, v0, 0x2

    .line 20
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, 0x3

    iput v4, p0, Lm0/y;->e:I

    add-int/2addr v4, v0

    .line 21
    iput v4, p0, Lm0/y;->e:I

    .line 22
    iget v5, p0, Lm0/y;->c:I

    if-lt v4, v5, :cond_6

    sub-int/2addr v4, v0

    .line 23
    iput v4, p0, Lm0/y;->e:I

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v0, 0x1

    .line 24
    aget-byte v1, v1, v4

    add-int/lit8 v0, v0, 0x2

    .line 25
    :goto_3
    iget v4, p0, Lm0/y;->e:I

    if-ge v0, v4, :cond_7

    .line 26
    iget-object v4, p0, Lm0/y;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    not-int v0, v1

    int-to-byte v0, v0

    .line 27
    iget-object v1, p0, Lm0/y;->b:[B

    aget-byte v5, v1, v4

    if-ne v0, v5, :cond_8

    .line 28
    iget v0, p0, Lm0/y;->d:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v5, v4}, Lm0/y;->X2([BII)V

    .line 29
    iget v0, p0, Lm0/y;->e:I

    iput v0, p0, Lm0/y;->d:I

    goto :goto_4

    .line 30
    :cond_8
    iget v0, p0, Lm0/y;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lm0/y;->d:I

    .line 31
    :goto_4
    iput v2, p0, Lm0/y;->e:I

    .line 32
    :cond_9
    iget v0, p0, Lm0/y;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lm0/y;->d:I

    goto :goto_2

    :cond_a
    :goto_5
    if-eqz v0, :cond_c

    .line 33
    iget p1, p0, Lm0/y;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lm0/y;->c:I

    if-eqz p1, :cond_b

    .line 34
    iget-object v1, p0, Lm0/y;->b:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_b
    iput v2, p0, Lm0/y;->d:I

    :cond_c
    :goto_6
    return-void
.end method

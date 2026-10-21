.class public Lm0/q;
.super Lm0/a;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final a:[B

.field public final b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:[B

.field public j:[B

.field public k:[B

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lm0/q;->a:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lm0/q;->b:Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lm0/q;->c:I

    .line 5
    iput v0, p0, Lm0/q;->d:I

    .line 6
    iput v0, p0, Lm0/q;->e:I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lm0/q;->f:I

    iput v0, p0, Lm0/q;->g:I

    const/16 v1, 0x80

    .line 8
    iput v1, p0, Lm0/q;->h:I

    new-array v1, v1, [B

    .line 9
    iput-object v1, p0, Lm0/q;->i:[B

    const/16 v1, 0x40

    new-array v1, v1, [B

    .line 10
    iput-object v1, p0, Lm0/q;->j:[B

    .line 11
    iput v0, p0, Lm0/q;->m:I

    .line 12
    iput v0, p0, Lm0/q;->n:I

    .line 13
    iput v0, p0, Lm0/q;->o:I

    .line 14
    new-instance v0, Lm0/q$a;

    invoke-direct {v0, p0}, Lm0/q$a;-><init>(Lm0/q;)V

    iput-object v0, p0, Lm0/q;->p:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic N2(Lm0/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/q;->n:I

    return p0
.end method

.method public static synthetic O2(Lm0/q;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/q;->n:I

    return p1
.end method

.method public static synthetic P2(Lm0/q;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/q;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/q;->n:I

    return v0
.end method

.method public static synthetic Q2(Lm0/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/q;->o:I

    return p0
.end method

.method public static synthetic R2(Lm0/q;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/q;->o:I

    return p1
.end method

.method public static synthetic S2(Lm0/q;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/q;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/q;->o:I

    return v0
.end method

.method public static synthetic T2(Lm0/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/q;->f:I

    return p0
.end method

.method public static synthetic U2(Lm0/q;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/q;->f:I

    return p1
.end method

.method public static synthetic V2(Lm0/q;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lm0/q;->k:[B

    return-object p0
.end method

.method public static synthetic W2(Lm0/q;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lm0/q;->j:[B

    return-object p0
.end method

.method public static synthetic X2(Lm0/q;I[B)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lm0/q;->g3(I[B)V

    return-void
.end method

.method public static synthetic Y2(Lm0/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/q;->l:I

    return p0
.end method

.method public static synthetic Z2(Lm0/q;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lm0/q;->i:[B

    return-object p0
.end method

.method public static synthetic a3(Lm0/q;II[B)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lm0/q;->f3(II[B)V

    return-void
.end method

.method public static synthetic b3(Lm0/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/q;->g:I

    return p0
.end method

.method public static varargs e3([I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lz/k;->b([I)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    sget-object v0, Lz/a;->b:Lo1/e0;

    invoke-virtual {v0, p0}, Lo1/e0;->i([B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public K2()V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 1
    invoke-static {v2, v1}, Lm0/d;->j(I[I)V

    new-array v1, v0, [I

    aput v2, v1, v2

    .line 2
    invoke-static {v0, v1}, Lm0/d;->j(I[I)V

    new-array v1, v0, [I

    aput v0, v1, v2

    const/4 v0, 0x2

    .line 3
    invoke-static {v0, v1}, Lm0/d;->j(I[I)V

    return-void
.end method

.method public L2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/q;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lm0/q;->f:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lm0/q;->k:[B

    const/4 v0, 0x0

    .line 4
    sput v0, Lm0/b;->e:I

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 6

    const-string p2, "to large"

    const-string p3, "size == 0 or not 136*n"

    const-string v0, "size = "

    if-eqz p1, :cond_0

    goto/16 :goto_b

    :cond_0
    const-string p1, "CAN"

    const-string v1, "C_UP_FILE_PATH"

    .line 1
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lm0/q;->c3()V

    if-eqz p4, :cond_9

    .line 3
    array-length v1, p4

    if-lez v1, :cond_9

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    aget-object p4, p4, v4

    invoke-direct {v5, p4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result p4

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_1

    .line 7
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p2

    invoke-virtual {p2, p3}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p2, v3, [I

    const/4 p3, 0x5

    aput p3, p2, v4

    .line 9
    invoke-static {v2, p2}, Lm0/d;->j(I[I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    return-void

    :cond_1
    const/high16 p3, 0x200000

    if-le p4, p3, :cond_2

    .line 12
    :try_start_3
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p3

    invoke-virtual {p3, p2}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p2, v3, [I

    const/4 p3, 0x6

    aput p3, p2, v4

    .line 14
    invoke-static {v2, p2}, Lm0/d;->j(I[I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    .line 17
    :cond_2
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ln1/b;->s(Ljava/lang/String;)V

    add-int/lit8 p2, p4, -0x1

    .line 19
    rem-int/lit16 p3, p2, 0x400

    if-nez p3, :cond_3

    div-int/lit16 p2, p2, 0x400

    mul-int/lit16 p2, p2, 0x400

    iput p2, p0, Lm0/q;->l:I

    goto :goto_2

    .line 20
    :cond_3
    div-int/lit16 p2, p2, 0x400

    add-int/2addr p2, v3

    mul-int/lit16 p2, p2, 0x400

    iput p2, p0, Lm0/q;->l:I

    .line 21
    :goto_2
    iget p2, p0, Lm0/q;->l:I

    add-int/2addr p2, v3

    iput p2, p0, Lm0/q;->l:I

    .line 22
    new-array p2, p2, [B

    iput-object p2, p0, Lm0/q;->k:[B

    .line 23
    invoke-virtual {v5, p2}, Ljava/io/InputStream;->read([B)I

    move p2, p4

    .line 24
    :goto_3
    iget p3, p0, Lm0/q;->l:I

    if-ge p2, p3, :cond_4

    .line 25
    iget-object p3, p0, Lm0/q;->k:[B

    const/4 v0, -0x1

    aput-byte v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    sub-int/2addr p3, v3

    .line 26
    div-int/lit16 p3, p3, 0x80

    iput p3, p0, Lm0/q;->m:I

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mBufferSize="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/q;->l:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mBlockConut ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/q;->m:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p2, p0, Lm0/q;->k:[B

    aget-byte p2, p2, v4

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    move p3, v3

    move v0, v4

    :goto_4
    if-ge p3, p4, :cond_5

    .line 29
    iget-object v1, p0, Lm0/q;->k:[B

    aget-byte v1, v1, p3

    add-int/2addr v0, v1

    int-to-byte v0, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_5
    xor-int/lit16 p3, v0, 0xff

    int-to-byte p3, p3

    .line 30
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mChecksum = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v0, p3, 0xff

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " checksum="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v0, p2, 0xff

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p3, p2, :cond_6

    new-array p2, v3, [I

    const/4 p3, 0x7

    aput p3, p2, v4

    .line 31
    invoke-static {v2, p2}, Lm0/d;->j(I[I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 32
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void

    .line 34
    :cond_6
    :try_start_7
    iget-object p2, p0, Lm0/q;->k:[B

    const/16 p3, 0x801

    iget-object p4, p0, Lm0/q;->j:[B

    const/16 v0, 0x40

    invoke-static {p2, p3, p4, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0xe3

    .line 35
    iget-object p3, p0, Lm0/q;->j:[B

    invoke-virtual {p0, p2, p3}, Lm0/q;->g3(I[B)V

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mUpgradeStep = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/q;->f:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iput v4, p0, Lm0/q;->f:I

    .line 38
    iget-object p2, p0, Lm0/q;->j:[B

    array-length p3, p2

    invoke-static {p1, p2, v4, p3}, Lo1/b0;->g(Ljava/lang/String;[BII)V

    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AAmUpgradeStep = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/q;->f:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 40
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    :goto_6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string p2, "requestUpdate"

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    .line 43
    sput v3, Lm0/b;->e:I

    .line 44
    invoke-virtual {p0}, Lm0/q;->c3()V

    const-wide/16 p1, 0x64

    .line 45
    invoke-static {p1, p2}, La/i;->a0(J)V

    .line 46
    iput v4, p0, Lm0/q;->g:I

    iput v4, p0, Lm0/q;->n:I

    .line 47
    iget-object p1, p0, Lm0/q;->p:Ljava/lang/Runnable;

    invoke-static {p1}, Lm0/d;->b(Ljava/lang/Runnable;)V

    goto :goto_b

    :catchall_0
    move-exception p1

    move-object v1, v5

    goto :goto_9

    :catch_4
    move-exception p2

    move-object v1, v5

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_9

    :catch_5
    move-exception p2

    .line 48
    :goto_7
    :try_start_9
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string p2, "\u8bfb\u53d6\u6587\u4ef6\u5931\u8d25"

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p1, v3, [I

    const/4 p2, 0x4

    aput p2, p1, v4

    .line 51
    invoke-static {v2, p1}, Lm0/d;->j(I[I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v1, :cond_7

    .line 52
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_8

    :catch_6
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_8
    return-void

    :goto_9
    if-eqz v1, :cond_8

    .line 54
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_a

    :catch_7
    move-exception p2

    .line 55
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    :cond_8
    :goto_a
    throw p1

    :cond_9
    :goto_b
    return-void
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
    iget v0, p0, Lm0/q;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lm0/q;->c:I

    .line 4
    iput v2, p0, Lm0/q;->d:I

    .line 5
    iput v2, p0, Lm0/q;->e:I

    .line 6
    :cond_1
    iget-object v0, p0, Lm0/q;->a:[B

    iget v1, p0, Lm0/q;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lm0/q;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lm0/q;->c:I

    .line 8
    iget p1, p0, Lm0/q;->e:I

    const/4 v1, 0x3

    const/4 v3, 0x4

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lm0/q;->a:[B

    const/4 v0, 0x2

    aget-byte p1, p1, v0

    move v4, v1

    .line 10
    :goto_0
    iget v5, p0, Lm0/q;->e:I

    if-ge v4, v5, :cond_3

    .line 11
    iget-object v5, p0, Lm0/q;->a:[B

    aget-byte v5, v5, v4

    xor-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v4, p0, Lm0/q;->a:[B

    aget-byte v6, v4, v5

    if-ne p1, v6, :cond_4

    sub-int/2addr v5, v3

    .line 13
    invoke-virtual {p0, v4, v3, v5}, Lm0/q;->d3([BII)V

    .line 14
    iget p1, p0, Lm0/q;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lm0/q;->d:I

    goto :goto_1

    .line 15
    :cond_4
    iput v0, p0, Lm0/q;->d:I

    .line 16
    :goto_1
    iput v2, p0, Lm0/q;->e:I

    .line 17
    :cond_5
    iget p1, p0, Lm0/q;->c:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lm0/q;->d:I

    if-ge v0, p1, :cond_b

    .line 18
    iget-object v1, p0, Lm0/q;->a:[B

    aget-byte v4, v1, v0

    const/16 v5, -0x78

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    const/16 v5, 0x55

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v0, 0x2

    .line 19
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, v0, 0x3

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    iput v4, p0, Lm0/q;->e:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_6

    .line 20
    iput v2, p0, Lm0/q;->e:I

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v0, 0x4

    add-int/2addr v4, v5

    .line 21
    iput v4, p0, Lm0/q;->e:I

    .line 22
    iget v5, p0, Lm0/q;->c:I

    if-lt v4, v5, :cond_7

    sub-int/2addr v4, v0

    .line 23
    iput v4, p0, Lm0/q;->e:I

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v0, 0x2

    .line 24
    aget-byte v1, v1, v4

    add-int/lit8 v0, v0, 0x3

    .line 25
    :goto_3
    iget v4, p0, Lm0/q;->e:I

    if-ge v0, v4, :cond_8

    .line 26
    iget-object v4, p0, Lm0/q;->a:[B

    aget-byte v4, v4, v0

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 27
    :cond_8
    iget-object v0, p0, Lm0/q;->a:[B

    aget-byte v5, v0, v4

    if-ne v1, v5, :cond_9

    .line 28
    iget v1, p0, Lm0/q;->d:I

    add-int/lit8 v5, v1, 0x4

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p0, v0, v5, v4}, Lm0/q;->d3([BII)V

    .line 29
    iget v0, p0, Lm0/q;->e:I

    iput v0, p0, Lm0/q;->d:I

    goto :goto_4

    .line 30
    :cond_9
    iget v0, p0, Lm0/q;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm0/q;->d:I

    .line 31
    :goto_4
    iput v2, p0, Lm0/q;->e:I

    .line 32
    :cond_a
    :goto_5
    iget v0, p0, Lm0/q;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm0/q;->d:I

    goto :goto_2

    :cond_b
    :goto_6
    if-eqz v0, :cond_d

    .line 33
    iget p1, p0, Lm0/q;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lm0/q;->c:I

    if-eqz p1, :cond_c

    .line 34
    iget-object v1, p0, Lm0/q;->a:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_c
    iput v2, p0, Lm0/q;->d:I

    :cond_d
    return-void

    :cond_e
    :goto_7
    const-wide/16 v0, 0x64

    .line 36
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

.method public final c3()V
    .locals 2

    const-string v0, "CAN"

    const-string v1, "REQUEST MCU TO CANBUS UPDATE"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    return-void
.end method

.method public d3([BII)V
    .locals 16

    move-object/from16 v0, p0

    add-int/lit8 v1, p2, 0x1

    .line 1
    aget-byte v1, p1, v1

    const/16 v2, 0xe6

    const/16 v3, 0xe5

    const/4 v4, 0x7

    const/16 v5, 0x80

    const/16 v6, 0xe3

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/16 v9, 0xf1

    const/16 v10, 0x64

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array v1, v12, [I

    .line 2
    fill-array-data v1, :array_0

    invoke-static {v1}, Lm0/q;->e3([I)V

    const-wide/16 v1, 0x1f4

    .line 3
    invoke-static {v1, v2}, La/i;->a0(J)V

    .line 4
    iget-object v1, v0, Lm0/q;->p:Ljava/lang/Runnable;

    invoke-static {v1}, Lm0/d;->i(Ljava/lang/Runnable;)V

    new-array v1, v14, [I

    aput v10, v1, v15

    .line 5
    invoke-static {v15, v1}, Lm0/d;->j(I[I)V

    new-array v1, v14, [I

    aput v13, v1, v15

    .line 6
    invoke-static {v11, v1}, Lm0/d;->j(I[I)V

    const/4 v1, -0x1

    .line 7
    iput v1, v0, Lm0/q;->f:I

    .line 8
    iput v15, v0, Lm0/q;->o:I

    .line 9
    iput v15, v0, Lm0/q;->g:I

    goto/16 :goto_0

    .line 10
    :pswitch_1
    iput v15, v0, Lm0/q;->n:I

    .line 11
    iput v12, v0, Lm0/q;->f:I

    .line 12
    iput v15, v0, Lm0/q;->o:I

    add-int/lit8 v1, p2, 0x3

    .line 13
    aget-byte v1, p1, v1

    mul-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, p2, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    const v3, 0xffffff

    and-int/2addr v1, v3

    iput v1, v0, Lm0/q;->g:I

    .line 14
    iget v3, v0, Lm0/q;->l:I

    sub-int/2addr v3, v14

    if-ge v1, v3, :cond_4

    .line 15
    iget-object v3, v0, Lm0/q;->k:[B

    add-int/2addr v1, v14

    iget-object v4, v0, Lm0/q;->i:[B

    invoke-static {v3, v1, v4, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iget v1, v0, Lm0/q;->g:I

    iget-object v3, v0, Lm0/q;->i:[B

    invoke-virtual {v0, v2, v1, v3}, Lm0/q;->f3(II[B)V

    .line 17
    iget v1, v0, Lm0/q;->l:I

    iget v2, v0, Lm0/q;->g:I

    sub-int v3, v1, v2

    if-gt v3, v5, :cond_0

    new-array v2, v14, [I

    mul-int/lit8 v3, v1, 0x64

    sub-int/2addr v1, v14

    .line 18
    div-int/2addr v3, v1

    aput v3, v2, v15

    invoke-static {v15, v2}, Lm0/d;->j(I[I)V

    new-array v1, v14, [I

    aput v13, v1, v15

    .line 19
    invoke-static {v11, v1}, Lm0/d;->j(I[I)V

    goto/16 :goto_0

    :cond_0
    new-array v3, v14, [I

    mul-int/2addr v2, v10

    .line 20
    div-int/2addr v2, v1

    aput v2, v3, v15

    invoke-static {v15, v3}, Lm0/d;->j(I[I)V

    goto/16 :goto_0

    .line 21
    :pswitch_2
    iput v15, v0, Lm0/q;->n:I

    add-int/lit8 v1, p2, 0x3

    .line 22
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v9, :cond_1

    .line 23
    iput v13, v0, Lm0/q;->f:I

    .line 24
    iput v15, v0, Lm0/q;->o:I

    .line 25
    iget-object v1, v0, Lm0/q;->k:[B

    iget-object v3, v0, Lm0/q;->i:[B

    invoke-static {v1, v14, v3, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    iget-object v1, v0, Lm0/q;->i:[B

    invoke-virtual {v0, v2, v15, v1}, Lm0/q;->f3(II[B)V

    new-array v1, v14, [I

    aput v10, v1, v15

    .line 27
    invoke-static {v14, v1}, Lm0/d;->j(I[I)V

    new-array v1, v14, [I

    .line 28
    iget v2, v0, Lm0/q;->m:I

    div-int/2addr v10, v2

    aput v10, v1, v15

    invoke-static {v15, v1}, Lm0/d;->j(I[I)V

    goto/16 :goto_0

    :cond_1
    new-array v1, v4, [I

    aput v6, v1, v15

    aput v3, v1, v14

    aput v12, v1, v11

    .line 29
    iget v2, v0, Lm0/q;->l:I

    add-int/lit8 v3, v2, -0x1

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v13

    add-int/lit8 v3, v2, -0x1

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v12

    add-int/lit8 v3, v2, -0x1

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v8

    sub-int/2addr v2, v14

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    invoke-static {v1}, Lm0/q;->e3([I)V

    goto/16 :goto_0

    .line 30
    :pswitch_3
    iput v15, v0, Lm0/q;->n:I

    add-int/lit8 v1, p2, 0x3

    .line 31
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v9, :cond_2

    .line 32
    iput v11, v0, Lm0/q;->f:I

    .line 33
    iput v15, v0, Lm0/q;->o:I

    new-array v1, v14, [I

    aput v14, v1, v15

    .line 34
    invoke-static {v11, v1}, Lm0/d;->j(I[I)V

    new-array v1, v4, [I

    aput v6, v1, v15

    aput v3, v1, v14

    aput v12, v1, v11

    .line 35
    iget v2, v0, Lm0/q;->l:I

    add-int/lit8 v3, v2, -0x1

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v13

    add-int/lit8 v3, v2, -0x1

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v12

    add-int/lit8 v3, v2, -0x1

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v8

    sub-int/2addr v2, v14

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    invoke-static {v1}, Lm0/q;->e3([I)V

    new-array v1, v14, [I

    aput v11, v1, v15

    .line 36
    invoke-static {v11, v1}, Lm0/d;->j(I[I)V

    new-array v1, v14, [I

    aput v10, v1, v15

    .line 37
    invoke-static {v14, v1}, Lm0/d;->j(I[I)V

    new-array v1, v14, [I

    aput v15, v1, v15

    .line 38
    invoke-static {v15, v1}, Lm0/d;->j(I[I)V

    goto :goto_0

    :cond_2
    new-array v1, v12, [I

    .line 39
    fill-array-data v1, :array_1

    invoke-static {v1}, Lm0/q;->e3([I)V

    goto :goto_0

    .line 40
    :pswitch_4
    iput v15, v0, Lm0/q;->n:I

    add-int/lit8 v1, p2, 0x3

    .line 41
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v9, :cond_3

    .line 42
    iput v14, v0, Lm0/q;->f:I

    .line 43
    iput v15, v0, Lm0/q;->o:I

    new-array v1, v12, [I

    .line 44
    fill-array-data v1, :array_2

    invoke-static {v1}, Lm0/q;->e3([I)V

    goto :goto_0

    .line 45
    :cond_3
    iget-object v1, v0, Lm0/q;->k:[B

    const/16 v2, 0x801

    iget-object v3, v0, Lm0/q;->j:[B

    const/16 v4, 0x40

    invoke-static {v1, v2, v3, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget-object v1, v0, Lm0/q;->j:[B

    invoke-virtual {v0, v6, v1}, Lm0/q;->g3(I[B)V

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1d
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xe7
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xe4
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xe4
        0x1
        0x1
    .end array-data
.end method

.method public final f3(II[B)V
    .locals 5

    .line 1
    array-length v0, p3

    const/4 v1, 0x3

    add-int/2addr v0, v1

    const/4 v2, 0x4

    add-int/2addr v0, v2

    new-array v0, v0, [I

    const/16 v3, -0x1d

    const/4 v4, 0x0

    .line 2
    aput v3, v0, v4

    int-to-byte p1, p1

    const/4 v3, 0x1

    .line 3
    aput p1, v0, v3

    .line 4
    array-length p1, p3

    int-to-byte p1, p1

    add-int/2addr p1, v2

    const/4 v3, 0x2

    aput p1, v0, v3

    shr-int/lit8 p1, p2, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 5
    aput p1, v0, v1

    shr-int/lit8 p1, p2, 0x10

    and-int/lit16 p1, p1, 0xff

    .line 6
    aput p1, v0, v2

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x5

    .line 7
    aput p1, v0, v1

    and-int/lit16 p1, p2, 0xff

    const/4 p2, 0x6

    .line 8
    aput p1, v0, p2

    .line 9
    array-length p1, p3

    :goto_0
    if-ge v4, p1, :cond_0

    const/4 p2, 0x7

    add-int/2addr p2, v4

    .line 10
    aget-byte v1, p3, v4

    aput v1, v0, p2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v0}, Lm0/q;->e3([I)V

    return-void
.end method

.method public final g3(I[B)V
    .locals 5

    .line 1
    array-length v0, p2

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [I

    const/16 v2, -0x1d

    const/4 v3, 0x0

    .line 2
    aput v2, v0, v3

    int-to-byte p1, p1

    const/4 v2, 0x1

    .line 3
    aput p1, v0, v2

    .line 4
    array-length p1, p2

    int-to-byte p1, p1

    const/4 v2, 0x2

    aput p1, v0, v2

    .line 5
    array-length p1, p2

    :goto_0
    if-ge v3, p1, :cond_0

    add-int v2, v1, v3

    .line 6
    aget-byte v4, p2, v3

    aput v4, v0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lm0/q;->e3([I)V

    return-void
.end method

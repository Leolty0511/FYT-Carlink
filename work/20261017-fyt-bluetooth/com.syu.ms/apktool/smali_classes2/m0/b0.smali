.class public Lm0/b0;
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

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm0/b0;->a:Z

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lm0/b0;->b:[B

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lm0/b0;->c:I

    .line 5
    iput v0, p0, Lm0/b0;->d:I

    .line 6
    iput v0, p0, Lm0/b0;->e:I

    .line 7
    iput v0, p0, Lm0/b0;->f:I

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lm0/b0;->g:I

    iput v0, p0, Lm0/b0;->h:I

    .line 9
    new-instance v0, Lm0/b0$a;

    invoke-direct {v0, p0}, Lm0/b0$a;-><init>(Lm0/b0;)V

    iput-object v0, p0, Lm0/b0;->j:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic N2(Lm0/b0;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/b0;->g:I

    return p0
.end method

.method public static synthetic O2(Lm0/b0;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/b0;->h:I

    return p0
.end method

.method public static synthetic P2(Lm0/b0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/b0;->h:I

    return p1
.end method

.method public static synthetic Q2(Lm0/b0;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/b0;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/b0;->h:I

    return v0
.end method

.method public static synthetic R2(Lm0/b0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm0/b0;->S2()V

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
    iget v0, p0, Lm0/b0;->g:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm0/b0;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lm0/b0;->g:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lm0/b0;->i:[B

    const/4 v0, 0x0

    .line 5
    sput v0, Lm0/b;->e:I

    return-void
.end method

.method public final S2()V
    .locals 0

    .line 1
    invoke-static {}, Lm0/d;->f()V

    return-void
.end method

.method public T2([BII)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUL :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAN"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    aget-byte v1, p1, p2

    const/16 v3, -0xe

    const/16 v5, -0x7e

    const/16 v6, -0xd

    const/16 v7, -0x1d

    const/4 v8, 0x5

    const/16 v9, 0x85

    const/16 v10, 0x80

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v1, v3, :cond_1

    const/16 v3, -0xc

    if-eq v1, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array v1, v9, [B

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data[start+2] ="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, p2, 0x2

    aget-byte v15, p1, v9

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "data[start+3] ="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, p2, 0x3

    aget-byte v4, p1, v15

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " size ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lm0/b0;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    aget-byte v2, p1, v9

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, p1, v15

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v14

    or-int/2addr v2, v3

    mul-int/2addr v2, v10

    .line 5
    aget-byte v3, p1, v9

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v4, p1, v15

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v14

    or-int/2addr v3, v4

    new-array v4, v14, [I

    mul-int/lit8 v9, v2, 0x64

    .line 6
    iget v15, v0, Lm0/b0;->f:I

    div-int/2addr v9, v15

    aput v9, v4, v13

    invoke-static {v13, v4}, Lm0/d;->j(I[I)V

    .line 7
    iget-object v4, v0, Lm0/b0;->i:[B

    if-eqz v4, :cond_4

    .line 8
    invoke-static {v4, v2, v1, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v7, v1, v13

    aput-byte v6, v1, v14

    aput-byte v5, v1, v12

    shr-int/lit8 v2, v3, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    and-int/lit16 v2, v3, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    .line 9
    sget-object v2, Ll0/z;->a:Ll0/a;

    invoke-static {v1}, Lo1/s0;->e([B)[I

    move-result-object v1

    invoke-virtual {v2, v1}, Ll0/a;->f([I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v1, p2, 0x2

    .line 10
    aget-byte v1, p1, v1

    const/4 v2, -0x1

    const/16 v3, 0x64

    if-eq v1, v2, :cond_3

    if-eq v1, v14, :cond_3

    if-eq v1, v12, :cond_2

    goto :goto_0

    :cond_2
    new-array v1, v14, [I

    aput v3, v1, v13

    .line 11
    invoke-static {v13, v1}, Lm0/d;->j(I[I)V

    new-array v1, v14, [I

    aput v11, v1, v13

    .line 12
    invoke-static {v12, v1}, Lm0/d;->j(I[I)V

    goto :goto_0

    .line 13
    :cond_3
    iput v14, v0, Lm0/b0;->g:I

    new-array v1, v14, [I

    aput v14, v1, v13

    .line 14
    invoke-static {v12, v1}, Lm0/d;->j(I[I)V

    new-array v1, v14, [I

    aput v3, v1, v13

    .line 15
    invoke-static {v14, v1}, Lm0/d;->j(I[I)V

    .line 16
    iput v14, v0, Lm0/b0;->g:I

    new-array v1, v14, [I

    aput v14, v1, v13

    .line 17
    invoke-static {v12, v1}, Lm0/d;->j(I[I)V

    new-array v1, v14, [I

    aput v3, v1, v13

    .line 18
    invoke-static {v14, v1}, Lm0/d;->j(I[I)V

    new-array v1, v9, [B

    .line 19
    iget-object v2, v0, Lm0/b0;->i:[B

    if-eqz v2, :cond_4

    .line 20
    invoke-static {v2, v13, v1, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v7, v1, v13

    aput-byte v6, v1, v14

    aput-byte v5, v1, v12

    aput-byte v13, v1, v11

    const/4 v2, 0x4

    aput-byte v13, v1, v2

    .line 21
    sget-object v2, Ll0/z;->a:Ll0/a;

    invoke-static {v1}, Lo1/s0;->e([B)[I

    move-result-object v1

    invoke-virtual {v2, v1}, Ll0/a;->f([I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 8

    const-string p2, "size = "

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cmdCode ="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "CAN"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz p4, :cond_4

    .line 2
    array-length p1, p4

    if-lez p1, :cond_4

    const/4 p1, 0x0

    const/4 p3, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    aget-object p4, p4, v3

    invoke-direct {v4, p4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result p1

    iput p1, p0, Lm0/b0;->f:I

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lm0/b0;->f:I

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lm0/b0;->f:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    .line 7
    iget p1, p0, Lm0/b0;->f:I

    rem-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_1

    .line 8
    new-array p1, p1, [B

    iput-object p1, p0, Lm0/b0;->i:[B

    goto :goto_0

    .line 9
    :cond_1
    div-int/lit16 p1, p1, 0x80

    add-int/2addr p1, v2

    mul-int/lit16 p1, p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lm0/b0;->i:[B

    .line 10
    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result p1

    iput p1, p0, Lm0/b0;->f:I

    .line 11
    sget-object p2, Ll0/z;->a:Ll0/a;

    const/16 p4, 0xc

    new-array p4, p4, [I

    const/16 v5, 0xe3

    aput v5, p4, v3

    const/16 v5, 0xf1

    aput v5, p4, v2

    const/16 v5, 0x9

    aput v5, p4, v1

    const/4 v6, 0x3

    aput v3, p4, v6

    shr-int/lit8 v6, p1, 0x18

    and-int/lit16 v6, v6, 0xff

    aput v6, p4, p3

    const/4 v6, 0x5

    shr-int/lit8 v7, p1, 0x10

    and-int/lit16 v7, v7, 0xff

    aput v7, p4, v6

    const/4 v6, 0x6

    shr-int/lit8 v7, p1, 0x8

    and-int/lit16 v7, v7, 0xff

    aput v7, p4, v6

    const/4 v6, 0x7

    and-int/lit16 p1, p1, 0xff

    aput p1, p4, v6

    const/16 p1, 0x8

    aput v3, p4, p1

    aput v3, p4, v5

    const/16 p1, 0xa

    aput v3, p4, p1

    const/16 p1, 0xb

    aput v3, p4, p1

    invoke-virtual {p2, p4}, Ll0/a;->f([I)V

    .line 12
    iget-object p1, p0, Lm0/b0;->i:[B

    invoke-virtual {v4, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string p1, "requestUpdate"

    .line 15
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 17
    sput v2, Lm0/b;->e:I

    .line 18
    invoke-virtual {p0}, Lm0/b0;->S2()V

    .line 19
    iput v3, p0, Lm0/b0;->g:I

    iput v3, p0, Lm0/b0;->h:I

    .line 20
    iget-object p1, p0, Lm0/b0;->j:Ljava/lang/Runnable;

    invoke-static {p1}, Lm0/d;->b(Ljava/lang/Runnable;)V

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v4, p1

    move-object p1, p2

    goto :goto_4

    :catch_2
    move-exception p2

    move-object v4, p1

    move-object p1, p2

    .line 21
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string p2, "\u8bfb\u53d6\u6587\u4ef6\u5931\u8d25"

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p1, v2, [I

    aput p3, p1, v3

    .line 24
    invoke-static {v1, p1}, Lm0/d;->j(I[I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_2

    .line 25
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    return-void

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz v4, :cond_3

    .line 27
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p2

    .line 28
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    :cond_3
    :goto_5
    throw p1

    :cond_4
    :goto_6
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
    iget v0, p0, Lm0/b0;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lm0/b0;->c:I

    .line 4
    iput v2, p0, Lm0/b0;->d:I

    .line 5
    iput v2, p0, Lm0/b0;->e:I

    .line 6
    :cond_1
    iget-object v0, p0, Lm0/b0;->b:[B

    iget v1, p0, Lm0/b0;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lm0/b0;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lm0/b0;->c:I

    .line 8
    iget p1, p0, Lm0/b0;->e:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lm0/b0;->b:[B

    aget-byte p1, p1, v3

    move v0, v1

    .line 10
    :goto_0
    iget v4, p0, Lm0/b0;->e:I

    if-ge v0, v4, :cond_3

    .line 11
    iget-object v4, p0, Lm0/b0;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    not-int p1, p1

    int-to-byte p1, p1

    .line 12
    iget-object v0, p0, Lm0/b0;->b:[B

    aget-byte v5, v0, v4

    if-ne p1, v5, :cond_4

    sub-int/2addr v4, v3

    .line 13
    invoke-virtual {p0, v0, v3, v4}, Lm0/b0;->T2([BII)V

    .line 14
    iget p1, p0, Lm0/b0;->e:I

    add-int/2addr p1, v3

    iput p1, p0, Lm0/b0;->d:I

    goto :goto_1

    .line 15
    :cond_4
    iput v3, p0, Lm0/b0;->d:I

    .line 16
    :goto_1
    iput v2, p0, Lm0/b0;->e:I

    .line 17
    :cond_5
    iget p1, p0, Lm0/b0;->c:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lm0/b0;->d:I

    if-ge v0, p1, :cond_b

    .line 18
    iget-object v1, p0, Lm0/b0;->b:[B

    aget-byte v4, v1, v0

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v0, 0x2

    .line 19
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lm0/b0;->e:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_6

    .line 20
    iput v2, p0, Lm0/b0;->e:I

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v0, 0x3

    add-int/2addr v4, v5

    .line 21
    iput v4, p0, Lm0/b0;->e:I

    .line 22
    iget v5, p0, Lm0/b0;->c:I

    if-lt v4, v5, :cond_7

    sub-int/2addr v4, v0

    .line 23
    iput v4, p0, Lm0/b0;->e:I

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v0, 0x1

    .line 24
    aget-byte v1, v1, v4

    add-int/lit8 v0, v0, 0x2

    .line 25
    :goto_3
    iget v4, p0, Lm0/b0;->e:I

    if-ge v0, v4, :cond_8

    .line 26
    iget-object v4, p0, Lm0/b0;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    not-int v0, v1

    int-to-byte v0, v0

    .line 27
    iget-object v1, p0, Lm0/b0;->b:[B

    aget-byte v5, v1, v4

    if-ne v0, v5, :cond_9

    .line 28
    iget v0, p0, Lm0/b0;->d:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v5, v4}, Lm0/b0;->T2([BII)V

    .line 29
    iget v0, p0, Lm0/b0;->e:I

    iput v0, p0, Lm0/b0;->d:I

    goto :goto_4

    .line 30
    :cond_9
    iget v0, p0, Lm0/b0;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lm0/b0;->d:I

    .line 31
    :goto_4
    iput v2, p0, Lm0/b0;->e:I

    .line 32
    :cond_a
    :goto_5
    iget v0, p0, Lm0/b0;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lm0/b0;->d:I

    goto :goto_2

    :cond_b
    :goto_6
    if-eqz v0, :cond_d

    .line 33
    iget p1, p0, Lm0/b0;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lm0/b0;->c:I

    if-eqz p1, :cond_c

    .line 34
    iget-object v1, p0, Lm0/b0;->b:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_c
    iput v2, p0, Lm0/b0;->d:I

    :cond_d
    :goto_7
    return-void
.end method

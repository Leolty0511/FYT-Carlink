.class public Lm0/i;
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

.field public f:[B

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
    iput-boolean v0, p0, Lm0/i;->a:Z

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 3
    iput-object v1, p0, Lm0/i;->b:[B

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lm0/i;->c:I

    .line 5
    iput v1, p0, Lm0/i;->d:I

    .line 6
    iput v1, p0, Lm0/i;->e:I

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    .line 7
    iput-object v0, p0, Lm0/i;->f:[B

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lm0/i;->g:I

    iput v1, p0, Lm0/i;->h:I

    iput v1, p0, Lm0/i;->i:I

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 9
    iput-object v0, p0, Lm0/i;->j:[B

    .line 10
    new-instance v0, Lm0/i$a;

    invoke-direct {v0, p0}, Lm0/i$a;-><init>(Lm0/i;)V

    iput-object v0, p0, Lm0/i;->m:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic N2(Lm0/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/i;->g:I

    return p0
.end method

.method public static synthetic O2(Lm0/i;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/i;->g:I

    return p1
.end method

.method public static synthetic P2(Lm0/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/i;->i:I

    return p0
.end method

.method public static synthetic Q2(Lm0/i;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/i;->i:I

    return p1
.end method

.method public static synthetic R2(Lm0/i;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/i;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/i;->i:I

    return v0
.end method

.method public static synthetic S2(Lm0/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm0/i;->V2()V

    return-void
.end method

.method public static synthetic T2(Lm0/i;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lm0/i;->k:[B

    return-object p0
.end method

.method public static synthetic U2(Lm0/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/i;->l:I

    return p0
.end method


# virtual methods
.method public K2()V
    .locals 0

    return-void
.end method

.method public L2()V
    .locals 1

    .line 1
    iget v0, p0, Lm0/i;->g:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm0/i;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lm0/i;->g:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lm0/i;->k:[B

    const/4 v0, 0x0

    .line 5
    sput v0, Lm0/b;->e:I

    return-void
.end method

.method public final V2()V
    .locals 0

    .line 1
    invoke-static {}, Lm0/d;->f()V

    return-void
.end method

.method public W2([BII)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOUL :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "CAN"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    aget-byte p3, p1, p2

    const/16 v0, -0x1e

    const/4 v1, 0x2

    if-eq p3, v0, :cond_5

    const/16 v0, -0x1c

    if-eq p3, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 p3, 0x85

    new-array v0, p3, [B

    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    add-int/2addr p2, v4

    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    const/16 v5, 0x80

    mul-int/2addr v3, v5

    .line 4
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v2

    const/4 p2, 0x1

    new-array v2, p2, [I

    const/4 v6, 0x0

    const/16 v7, 0x64

    aput v7, v2, v6

    .line 5
    invoke-static {p2, v2}, Lm0/d;->j(I[I)V

    .line 6
    iget v2, p0, Lm0/i;->l:I

    add-int/lit8 v7, v2, -0x4

    const/4 v8, 0x4

    if-eqz v7, :cond_1

    new-array v7, p2, [I

    mul-int/lit8 v9, p1, 0x64

    sub-int/2addr v2, v8

    .line 7
    div-int/2addr v2, v5

    div-int/2addr v9, v2

    aput v9, v7, v6

    invoke-static {v6, v7}, Lm0/d;->j(I[I)V

    .line 8
    :cond_1
    iget-object v2, p0, Lm0/i;->k:[B

    if-eqz v2, :cond_6

    .line 9
    iget v7, p0, Lm0/i;->l:I

    add-int/lit16 v9, v3, 0x80

    if-lt v7, v9, :cond_2

    const/4 v7, 0x5

    .line 10
    invoke-static {v2, v3, v0, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    :cond_2
    sget v2, Lk0/nt;->a:I

    const v3, 0xdb01c7

    const/16 v5, -0x7e

    const/16 v7, -0x1d

    if-ne v2, v3, :cond_4

    const/16 v2, 0x86

    new-array v2, v2, [B

    const/16 v3, 0x2e

    aput-byte v3, v0, v6

    aput-byte v7, v0, p2

    aput-byte v5, v0, v1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v8

    .line 12
    invoke-static {v0, v6, v2, v6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v6, v2, p3

    :goto_0
    if-ge p2, p3, :cond_3

    .line 13
    aget-byte p1, v2, p3

    aget-byte v1, v0, p2

    add-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, v2, p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 14
    :cond_3
    aget-byte p1, v2, p3

    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v2, p3

    .line 15
    invoke-static {v2}, Lz/k;->q([B)V

    goto :goto_1

    :cond_4
    aput-byte v7, v0, v6

    aput-byte v7, v0, p2

    aput-byte v5, v0, v1

    shr-int/lit8 p2, p1, 0x8

    int-to-byte p2, p2

    aput-byte p2, v0, v4

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v8

    .line 16
    sget-object p1, Ll0/z;->a:Ll0/a;

    invoke-static {v0}, Lo1/s0;->e([B)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Ll0/a;->f([I)V

    goto :goto_1

    :cond_5
    add-int/2addr p2, v1

    .line 17
    aget-byte p1, p1, p2

    invoke-virtual {p0, p1}, Lm0/i;->X2(B)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final X2(B)V
    .locals 11

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    const/4 v4, 0x3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v4, :cond_0

    goto/16 :goto_2

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

    goto/16 :goto_2

    .line 3
    :cond_1
    iput v2, p0, Lm0/i;->g:I

    new-array p1, v3, [I

    aput v3, p1, v1

    .line 4
    invoke-static {v2, p1}, Lm0/d;->j(I[I)V

    goto/16 :goto_2

    .line 5
    :cond_2
    iget p1, p0, Lm0/i;->l:I

    sub-int/2addr p1, v0

    div-int/lit16 p1, p1, 0x80

    const/4 v5, 0x5

    new-array v6, v5, [B

    const/16 v7, -0x1d

    aput-byte v7, v6, v1

    const/16 v7, -0x1b

    aput-byte v7, v6, v3

    aput-byte v2, v6, v2

    shr-int/lit8 v8, p1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v4

    and-int/lit16 v8, p1, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v0

    .line 6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "block ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v8, "CAN"

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget p1, Lk0/nt;->a:I

    const v9, 0xdb01c7

    if-ne p1, v9, :cond_3

    const-wide/16 v9, 0x1f4

    .line 8
    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "sleep exception"

    .line 9
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_0
    aget-byte p1, v6, v4

    add-int/lit16 p1, p1, 0xe7

    aget-byte v8, v6, v0

    add-int/2addr p1, v8

    and-int/lit16 p1, p1, 0xff

    xor-int/lit16 p1, p1, 0xff

    const/4 v8, 0x6

    new-array v8, v8, [B

    const/16 v9, 0x2e

    aput-byte v9, v8, v1

    aput-byte v7, v8, v3

    aput-byte v2, v8, v2

    .line 11
    aget-byte v1, v6, v4

    aput-byte v1, v8, v4

    aget-byte v1, v6, v0

    aput-byte v1, v8, v0

    int-to-byte p1, p1

    aput-byte p1, v8, v5

    invoke-static {v8}, Lz/k;->q([B)V

    goto :goto_1

    .line 12
    :cond_3
    sget-object p1, Ll0/z;->a:Ll0/a;

    invoke-static {v6}, Lo1/s0;->e([B)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Ll0/a;->f([I)V

    .line 13
    :goto_1
    iput v3, p0, Lm0/i;->g:I

    goto :goto_2

    :cond_4
    new-array p1, v3, [I

    aput v0, p1, v1

    .line 14
    invoke-static {v2, p1}, Lm0/d;->j(I[I)V

    :goto_2
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    const-string v2, "size = "

    const-string v3, "CAN"

    if-eqz p1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz v0, :cond_4

    .line 1
    array-length v4, v0

    if-lez v4, :cond_4

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 2
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    aget-object v0, v0, v8

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ln1/b;->s(Ljava/lang/String;)V

    .line 6
    iput v0, v1, Lm0/i;->l:I

    new-array v2, v0, [B

    iput-object v2, v1, Lm0/i;->k:[B

    .line 7
    invoke-virtual {v9, v2}, Ljava/io/InputStream;->read([B)I

    .line 8
    sget v2, Lk0/nt;->a:I

    const v4, 0xdb01c7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/16 v12, 0x2e

    const/4 v14, 0x3

    if-ne v2, v4, :cond_1

    .line 9
    iget-object v2, v1, Lm0/i;->k:[B

    add-int/lit8 v4, v0, -0x4

    aget-byte v15, v2, v4

    add-int/lit16 v15, v15, 0xe5

    add-int/lit8 v16, v0, -0x3

    aget-byte v17, v2, v16

    add-int v15, v15, v17

    add-int/lit8 v17, v0, -0x2

    aget-byte v18, v2, v17

    add-int v15, v15, v18

    sub-int/2addr v0, v6

    aget-byte v18, v2, v0

    add-int v15, v15, v18

    and-int/lit16 v15, v15, 0xff

    xor-int/lit16 v15, v15, 0xff

    const/16 v13, 0x8

    new-array v13, v13, [B

    aput-byte v12, v13, v8

    const/16 v12, -0x1f

    aput-byte v12, v13, v6

    aput-byte v7, v13, v5

    .line 10
    aget-byte v4, v2, v4

    aput-byte v4, v13, v14

    aget-byte v4, v2, v16

    aput-byte v4, v13, v7

    aget-byte v4, v2, v17

    aput-byte v4, v13, v11

    aget-byte v0, v2, v0

    aput-byte v0, v13, v10

    int-to-byte v0, v15

    const/4 v2, 0x7

    aput-byte v0, v13, v2

    invoke-static {v13}, Lz/k;->q([B)V

    goto :goto_0

    .line 11
    :cond_1
    sget-object v2, Ll0/z;->a:Ll0/a;

    const/4 v4, 0x7

    new-array v4, v4, [I

    aput v12, v4, v8

    const/16 v12, 0xe1

    aput v12, v4, v6

    aput v7, v4, v5

    iget-object v12, v1, Lm0/i;->k:[B

    add-int/lit8 v13, v0, -0x4

    aget-byte v13, v12, v13

    aput v13, v4, v14

    add-int/lit8 v13, v0, -0x3

    aget-byte v13, v12, v13

    aput v13, v4, v7

    add-int/lit8 v13, v0, -0x2

    aget-byte v13, v12, v13

    aput v13, v4, v11

    sub-int/2addr v0, v6

    aget-byte v0, v12, v0

    aput v0, v4, v10

    invoke-virtual {v2, v4}, Ll0/a;->f([I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_0
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 13
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string v0, "requestUpdate"

    .line 14
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Ln1/b;->s(Ljava/lang/String;)V

    .line 16
    sput v6, Lm0/b;->e:I

    .line 17
    invoke-virtual/range {p0 .. p0}, Lm0/i;->V2()V

    .line 18
    iput v8, v1, Lm0/i;->h:I

    iput v8, v1, Lm0/i;->g:I

    iput v8, v1, Lm0/i;->i:I

    .line 19
    iget-object v0, v1, Lm0/i;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lm0/d;->b(Ljava/lang/Runnable;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v4, v9

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v4, v9

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception v0

    .line 20
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v2, "\u8bfb\u53d6\u6587\u4ef6\u5931\u8d25"

    invoke-virtual {v0, v2}, Ln1/b;->s(Ljava/lang/String;)V

    new-array v0, v6, [I

    aput v7, v0, v8

    .line 23
    invoke-static {v5, v0}, Lm0/d;->j(I[I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_2

    .line 24
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 25
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    return-void

    :goto_4
    if-eqz v4, :cond_3

    .line 26
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v3, v0

    .line 27
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :cond_3
    :goto_5
    throw v2

    :cond_4
    :goto_6
    return-void
.end method

.method public b([B)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OBD Update Rcv--> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-static {p1, v0, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_e

    .line 2
    array-length v1, p1

    if-gtz v1, :cond_1

    goto/16 :goto_7

    .line 3
    :cond_1
    iget v1, p0, Lm0/i;->c:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lm0/i;->c:I

    .line 5
    iput v0, p0, Lm0/i;->d:I

    .line 6
    iput v0, p0, Lm0/i;->e:I

    .line 7
    :cond_2
    iget-object v1, p0, Lm0/i;->b:[B

    iget v2, p0, Lm0/i;->c:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lm0/i;->c:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lm0/i;->c:I

    .line 9
    iget p1, p0, Lm0/i;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lm0/i;->b:[B

    aget-byte p1, p1, v3

    move v1, v2

    .line 11
    :goto_0
    iget v4, p0, Lm0/i;->e:I

    if-ge v1, v4, :cond_4

    .line 12
    iget-object v4, p0, Lm0/i;->b:[B

    aget-byte v4, v4, v1

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    not-int p1, p1

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lm0/i;->b:[B

    aget-byte v5, v1, v4

    if-ne p1, v5, :cond_5

    sub-int/2addr v4, v3

    .line 14
    invoke-virtual {p0, v1, v3, v4}, Lm0/i;->W2([BII)V

    .line 15
    iget p1, p0, Lm0/i;->e:I

    add-int/2addr p1, v3

    iput p1, p0, Lm0/i;->d:I

    goto :goto_1

    .line 16
    :cond_5
    iput v3, p0, Lm0/i;->d:I

    .line 17
    :goto_1
    iput v0, p0, Lm0/i;->e:I

    .line 18
    :cond_6
    iget p1, p0, Lm0/i;->c:I

    sub-int/2addr p1, v2

    :goto_2
    iget v1, p0, Lm0/i;->d:I

    if-ge v1, p1, :cond_c

    .line 19
    iget-object v2, p0, Lm0/i;->b:[B

    aget-byte v4, v2, v1

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_b

    add-int/lit8 v4, v1, 0x2

    .line 20
    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lm0/i;->e:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_7

    .line 21
    iput v0, p0, Lm0/i;->e:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x3

    add-int/2addr v4, v5

    .line 22
    iput v4, p0, Lm0/i;->e:I

    .line 23
    iget v5, p0, Lm0/i;->c:I

    if-lt v4, v5, :cond_8

    sub-int/2addr v4, v1

    .line 24
    iput v4, p0, Lm0/i;->e:I

    goto :goto_6

    :cond_8
    add-int/lit8 v4, v1, 0x1

    .line 25
    aget-byte v2, v2, v4

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v4, p0, Lm0/i;->e:I

    if-ge v1, v4, :cond_9

    .line 27
    iget-object v4, p0, Lm0/i;->b:[B

    aget-byte v4, v4, v1

    add-int/2addr v2, v4

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    not-int v1, v2

    int-to-byte v1, v1

    .line 28
    iget-object v2, p0, Lm0/i;->b:[B

    aget-byte v5, v2, v4

    if-ne v1, v5, :cond_a

    .line 29
    iget v1, p0, Lm0/i;->d:I

    add-int/lit8 v5, v1, 0x1

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p0, v2, v5, v4}, Lm0/i;->W2([BII)V

    .line 30
    iget v1, p0, Lm0/i;->e:I

    iput v1, p0, Lm0/i;->d:I

    goto :goto_4

    .line 31
    :cond_a
    iget v1, p0, Lm0/i;->d:I

    add-int/2addr v1, v3

    iput v1, p0, Lm0/i;->d:I

    .line 32
    :goto_4
    iput v0, p0, Lm0/i;->e:I

    .line 33
    :cond_b
    :goto_5
    iget v1, p0, Lm0/i;->d:I

    add-int/2addr v1, v3

    iput v1, p0, Lm0/i;->d:I

    goto :goto_2

    :cond_c
    :goto_6
    if-eqz v1, :cond_e

    .line 34
    iget p1, p0, Lm0/i;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lm0/i;->c:I

    if-lez p1, :cond_d

    .line 35
    iget-object v2, p0, Lm0/i;->b:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    :cond_d
    iput v0, p0, Lm0/i;->d:I

    :cond_e
    :goto_7
    return-void
.end method

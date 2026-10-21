.class public Lm0/r;
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

.field public h:[B

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm0/r;->a:Z

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lm0/r;->b:[B

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lm0/r;->c:I

    .line 5
    iput v0, p0, Lm0/r;->d:I

    .line 6
    iput v0, p0, Lm0/r;->e:I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lm0/r;->f:I

    iput v0, p0, Lm0/r;->g:I

    .line 8
    new-instance v0, Lm0/r$a;

    invoke-direct {v0, p0}, Lm0/r$a;-><init>(Lm0/r;)V

    iput-object v0, p0, Lm0/r;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic N2(Lm0/r;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/r;->f:I

    return p0
.end method

.method public static synthetic O2(Lm0/r;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/r;->g:I

    return p0
.end method

.method public static synthetic P2(Lm0/r;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/r;->g:I

    return p1
.end method

.method public static synthetic Q2(Lm0/r;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/r;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/r;->g:I

    return v0
.end method

.method public static synthetic R2(Lm0/r;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm0/r;->T2()V

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
    iget v0, p0, Lm0/r;->f:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm0/r;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lm0/r;->f:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lm0/r;->h:[B

    const/4 v0, 0x0

    .line 5
    sput v0, Lm0/b;->e:I

    return-void
.end method

.method public S2()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    .line 2
    sget-object v1, Ll0/z;->a:Ll0/a;

    invoke-static {v0}, Ll0/a;->d([I)V

    return-void

    :array_0
    .array-data 4
        0xe9
        0xff
    .end array-data
.end method

.method public final T2()V
    .locals 0

    .line 1
    invoke-static {}, Lm0/d;->f()V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOUL :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAN"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    aget-byte v2, v1, p2

    const/16 v3, 0x69

    if-eq v2, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v2, v1, v2

    const/16 v3, -0x79

    const/4 v4, 0x3

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v7, :cond_3

    if-eq v2, v5, :cond_1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-array v2, v7, [I

    aput v4, v2, v6

    .line 4
    invoke-static {v5, v2}, Lm0/d;->j(I[I)V

    const-wide/16 v5, 0xbb8

    .line 5
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 6
    sget-object v2, Ll0/z;->a:Ll0/a;

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Ll0/a;->f([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array v1, v7, [I

    aput v3, v1, v6

    .line 7
    invoke-static {v5, v1}, Lm0/d;->j(I[I)V

    goto/16 :goto_1

    :pswitch_2
    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x3

    .line 8
    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v6

    invoke-static {v6, v2}, Lm0/d;->j(I[I)V

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v2, p2, 0x3

    .line 9
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v8, p2, 0x4

    .line 10
    aget-byte v9, v1, v8

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    add-int/lit8 v10, p2, 0x5

    aget-byte v11, v1, v10

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v9, v11

    const/4 v11, 0x6

    add-int/lit8 v12, p2, 0x6

    aget-byte v13, v1, v12

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v9, v13

    add-int/lit8 v13, v2, 0x7

    .line 11
    new-array v13, v13, [B

    .line 12
    iget-object v14, v0, Lm0/r;->h:[B

    array-length v15, v14

    add-int v11, v2, v9

    if-ge v15, v11, :cond_2

    return-void

    :cond_2
    const/4 v11, 0x7

    .line 13
    invoke-static {v14, v9, v13, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v9, 0x2e

    .line 14
    aput-byte v9, v13, v6

    const/16 v6, -0x27

    .line 15
    aput-byte v6, v13, v7

    add-int/2addr v2, v3

    int-to-byte v2, v2

    .line 16
    aput-byte v2, v13, v5

    const/16 v2, -0x7d

    .line 17
    aput-byte v2, v13, v4

    .line 18
    aget-byte v2, v1, v8

    aput-byte v2, v13, v3

    .line 19
    aget-byte v2, v1, v10

    const/4 v3, 0x5

    aput-byte v2, v13, v3

    .line 20
    aget-byte v1, v1, v12

    const/4 v2, 0x6

    aput-byte v1, v13, v2

    .line 21
    sget-object v1, Ll0/z;->a:Ll0/a;

    invoke-static {v13}, Lo1/s0;->e([B)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Ll0/a;->f([I)V

    goto :goto_1

    .line 22
    :cond_3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    const-string v2, "\u51c6\u5907"

    invoke-virtual {v1, v2}, Ln1/b;->s(Ljava/lang/String;)V

    .line 23
    iput v7, v0, Lm0/r;->f:I

    .line 24
    sget-object v1, Ll0/z;->a:Ll0/a;

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2}, Ll0/a;->f([I)V

    new-array v1, v7, [I

    aput v7, v1, v6

    .line 25
    invoke-static {v5, v1}, Lm0/d;->j(I[I)V

    new-array v1, v7, [I

    const/16 v2, 0x64

    aput v2, v1, v6

    .line 26
    invoke-static {v7, v1}, Lm0/d;->j(I[I)V

    goto :goto_1

    .line 27
    :cond_4
    :goto_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x3

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x7d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x2e
        0x90
        0x1
        0xd9
    .end array-data

    :array_1
    .array-data 4
        0x2e
        0xd9
        0x1
        0x81
    .end array-data
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 4

    const-string p2, "size = "

    const-string p3, "CAN"

    if-eqz p1, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p4, :cond_3

    .line 1
    array-length p1, p4

    if-lez p1, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    aget-object p4, p4, v1

    invoke-direct {v2, p4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ln1/b;->s(Ljava/lang/String;)V

    .line 6
    new-array p1, p1, [B

    iput-object p1, p0, Lm0/r;->h:[B

    .line 7
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p1, "requestUpdate"

    .line 10
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 12
    sput v0, Lm0/b;->e:I

    .line 13
    invoke-virtual {p0}, Lm0/r;->T2()V

    .line 14
    iput v1, p0, Lm0/r;->f:I

    iput v1, p0, Lm0/r;->g:I

    .line 15
    iget-object p1, p0, Lm0/r;->i:Ljava/lang/Runnable;

    invoke-static {p1}, Lm0/d;->b(Ljava/lang/Runnable;)V

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_3

    :catch_2
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    .line 16
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string p2, "\u8bfb\u53d6\u6587\u4ef6\u5931\u8d25"

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p2, v0, [I

    const/4 p3, 0x4

    aput p3, p2, v1

    .line 19
    invoke-static {p1, p2}, Lm0/d;->j(I[I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 20
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz v2, :cond_2

    .line 22
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    .line 23
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
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
    iget v0, p0, Lm0/r;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lm0/r;->c:I

    .line 4
    iput v2, p0, Lm0/r;->d:I

    .line 5
    iput v2, p0, Lm0/r;->e:I

    .line 6
    :cond_1
    iget-object v0, p0, Lm0/r;->b:[B

    iget v1, p0, Lm0/r;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lm0/r;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lm0/r;->c:I

    .line 8
    iget p1, p0, Lm0/r;->e:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lm0/r;->b:[B

    aget-byte p1, p1, v3

    move v0, v1

    .line 10
    :goto_0
    iget v4, p0, Lm0/r;->e:I

    if-ge v0, v4, :cond_3

    .line 11
    iget-object v4, p0, Lm0/r;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    not-int p1, p1

    int-to-byte p1, p1

    .line 12
    iget-object v0, p0, Lm0/r;->b:[B

    aget-byte v0, v0, v4

    if-ne p1, v0, :cond_4

    .line 13
    invoke-virtual {p0}, Lm0/r;->S2()V

    .line 14
    iget-object p1, p0, Lm0/r;->b:[B

    iget v0, p0, Lm0/r;->e:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, p1, v3, v0}, Lm0/r;->U2([BII)V

    .line 15
    iget p1, p0, Lm0/r;->e:I

    add-int/2addr p1, v3

    iput p1, p0, Lm0/r;->d:I

    goto :goto_1

    .line 16
    :cond_4
    iput v3, p0, Lm0/r;->d:I

    .line 17
    :goto_1
    iput v2, p0, Lm0/r;->e:I

    .line 18
    :cond_5
    iget p1, p0, Lm0/r;->c:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lm0/r;->d:I

    if-ge v0, p1, :cond_a

    .line 19
    iget-object v1, p0, Lm0/r;->b:[B

    aget-byte v4, v1, v0

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_9

    add-int/lit8 v4, v0, 0x2

    .line 20
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, 0x3

    iput v4, p0, Lm0/r;->e:I

    add-int/2addr v4, v0

    .line 21
    iput v4, p0, Lm0/r;->e:I

    .line 22
    iget v5, p0, Lm0/r;->c:I

    if-lt v4, v5, :cond_6

    sub-int/2addr v4, v0

    .line 23
    iput v4, p0, Lm0/r;->e:I

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v0, 0x1

    .line 24
    aget-byte v1, v1, v4

    add-int/lit8 v0, v0, 0x2

    .line 25
    :goto_3
    iget v4, p0, Lm0/r;->e:I

    if-ge v0, v4, :cond_7

    .line 26
    iget-object v4, p0, Lm0/r;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    not-int v0, v1

    int-to-byte v0, v0

    .line 27
    iget-object v1, p0, Lm0/r;->b:[B

    aget-byte v1, v1, v4

    if-ne v0, v1, :cond_8

    .line 28
    invoke-virtual {p0}, Lm0/r;->S2()V

    .line 29
    iget-object v0, p0, Lm0/r;->b:[B

    iget v1, p0, Lm0/r;->d:I

    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Lm0/r;->e:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v3

    invoke-virtual {p0, v0, v4, v5}, Lm0/r;->U2([BII)V

    .line 30
    iget v0, p0, Lm0/r;->e:I

    iput v0, p0, Lm0/r;->d:I

    goto :goto_4

    .line 31
    :cond_8
    iget v0, p0, Lm0/r;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lm0/r;->d:I

    .line 32
    :goto_4
    iput v2, p0, Lm0/r;->e:I

    .line 33
    :cond_9
    iget v0, p0, Lm0/r;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lm0/r;->d:I

    goto :goto_2

    :cond_a
    :goto_5
    if-eqz v0, :cond_c

    .line 34
    iget p1, p0, Lm0/r;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lm0/r;->c:I

    if-eqz p1, :cond_b

    .line 35
    iget-object v1, p0, Lm0/r;->b:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    :cond_b
    iput v2, p0, Lm0/r;->d:I

    :cond_c
    :goto_6
    return-void
.end method

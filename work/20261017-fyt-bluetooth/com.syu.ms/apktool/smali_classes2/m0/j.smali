.class public Lm0/j;
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

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lm0/j;->a:Z

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 3
    iput-object v1, p0, Lm0/j;->b:[B

    .line 4
    iput v0, p0, Lm0/j;->c:I

    .line 5
    iput v0, p0, Lm0/j;->d:I

    .line 6
    iput v0, p0, Lm0/j;->e:I

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    .line 7
    iput-object v1, p0, Lm0/j;->f:[B

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lm0/j;->g:I

    iput v0, p0, Lm0/j;->h:I

    iput v0, p0, Lm0/j;->i:I

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 9
    iput-object v0, p0, Lm0/j;->j:[B

    .line 10
    new-instance v0, Lm0/j$a;

    invoke-direct {v0, p0}, Lm0/j$a;-><init>(Lm0/j;)V

    iput-object v0, p0, Lm0/j;->m:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic N2(Lm0/j;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/j;->g:I

    return p0
.end method

.method public static synthetic O2(Lm0/j;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/j;->i:I

    return p0
.end method

.method public static synthetic P2(Lm0/j;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/j;->i:I

    return p1
.end method

.method public static synthetic Q2(Lm0/j;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/j;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/j;->i:I

    return v0
.end method

.method public static synthetic R2(Lm0/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm0/j;->U2()V

    return-void
.end method

.method public static synthetic S2(Lm0/j;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lm0/j;->k:[B

    return-object p0
.end method

.method public static synthetic T2(Lm0/j;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/j;->l:I

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
    iget v0, p0, Lm0/j;->g:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm0/j;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lm0/j;->g:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lm0/j;->k:[B

    const/4 v0, 0x0

    .line 5
    sput v0, Lm0/b;->e:I

    return-void
.end method

.method public final U2()V
    .locals 0

    .line 1
    invoke-static {}, Lm0/d;->f()V

    return-void
.end method

.method public V2([BII)V
    .locals 17

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

    const/16 v3, -0x1e

    const/4 v4, 0x2

    if-eq v1, v3, :cond_5

    const/16 v3, -0x1c

    if-eq v1, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0x85

    new-array v3, v1, [B

    add-int/lit8 v5, p2, 0x2

    .line 3
    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x3

    add-int/lit8 v8, p2, 0x3

    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v6, v9

    const/16 v9, 0x80

    mul-int/2addr v6, v9

    .line 4
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v5, v8

    const/4 v8, 0x1

    new-array v10, v8, [I

    const/4 v11, 0x0

    const/16 v12, 0x64

    aput v12, v10, v11

    .line 5
    invoke-static {v8, v10}, Lm0/d;->j(I[I)V

    .line 6
    iget v10, v0, Lm0/j;->l:I

    div-int/lit16 v12, v10, 0x80

    .line 7
    rem-int/lit16 v13, v10, 0x80

    if-eqz v13, :cond_1

    add-int/lit8 v12, v12, 0x1

    :cond_1
    if-eqz v10, :cond_2

    new-array v10, v8, [I

    mul-int/lit8 v14, v5, 0x64

    .line 8
    div-int/2addr v14, v12

    aput v14, v10, v11

    invoke-static {v11, v10}, Lm0/d;->j(I[I)V

    .line 9
    :cond_2
    iget-object v10, v0, Lm0/j;->k:[B

    if-eqz v10, :cond_6

    .line 10
    iget v12, v0, Lm0/j;->l:I

    div-int/2addr v12, v9

    const/4 v14, 0x4

    const/16 v15, -0x7e

    const/4 v1, 0x5

    const/16 v16, -0x1d

    if-ge v5, v12, :cond_3

    .line 11
    invoke-static {v10, v6, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v16, v3, v11

    aput-byte v16, v3, v8

    aput-byte v15, v3, v4

    shr-int/lit8 v1, v5, 0x8

    int-to-byte v1, v1

    aput-byte v1, v3, v7

    and-int/lit16 v1, v5, 0xff

    int-to-byte v1, v1

    aput-byte v1, v3, v14

    .line 12
    sget-object v1, Ll0/z;->a:Ll0/a;

    invoke-static {v3}, Lo1/s0;->e([B)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Ll0/a;->f([I)V

    goto :goto_1

    :cond_3
    const/16 v3, 0x85

    new-array v9, v3, [B

    move v10, v11

    :goto_0
    if-ge v10, v3, :cond_4

    const/4 v12, -0x1

    .line 13
    aput-byte v12, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 14
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SOUL : blockstart="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " mLastleftData ="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " mBufferSize="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lm0/j;->l:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v2, v0, Lm0/j;->k:[B

    invoke-static {v2, v6, v9, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v16, v9, v11

    aput-byte v16, v9, v8

    aput-byte v15, v9, v4

    shr-int/lit8 v1, v5, 0x8

    int-to-byte v1, v1

    aput-byte v1, v9, v7

    and-int/lit16 v1, v5, 0xff

    int-to-byte v1, v1

    aput-byte v1, v9, v14

    .line 16
    sget-object v1, Ll0/z;->a:Ll0/a;

    invoke-static {v9}, Lo1/s0;->e([B)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Ll0/a;->f([I)V

    goto :goto_1

    :cond_5
    add-int/lit8 v1, p2, 0x2

    .line 17
    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lm0/j;->W2(B)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final W2(B)V
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_4

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
    iput v3, p0, Lm0/j;->g:I

    new-array p1, v3, [I

    aput v3, p1, v1

    .line 4
    invoke-static {v2, p1}, Lm0/d;->j(I[I)V

    goto :goto_0

    .line 5
    :cond_2
    iget p1, p0, Lm0/j;->l:I

    div-int/lit16 v5, p1, 0x80

    .line 6
    rem-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    const/4 p1, 0x5

    new-array p1, p1, [B

    const/16 v6, -0x1b

    aput-byte v6, p1, v1

    aput-byte v6, p1, v3

    aput-byte v2, p1, v2

    shr-int/lit8 v1, v5, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    and-int/lit16 v1, v5, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "block ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAN"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object v0, Ll0/z;->a:Ll0/a;

    invoke-static {p1}, Lo1/s0;->e([B)[I

    move-result-object p1

    invoke-virtual {v0, p1}, Ll0/a;->f([I)V

    .line 9
    iput v3, p0, Lm0/j;->g:I

    goto :goto_0

    :cond_4
    new-array p1, v3, [I

    aput v0, p1, v1

    .line 10
    invoke-static {v2, p1}, Lm0/d;->j(I[I)V

    :goto_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p4, :cond_3

    .line 1
    array-length p1, p4

    if-lez p1, :cond_3

    const/4 p1, 0x0

    const/4 p2, 0x4

    const/4 p3, 0x2

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
    iput p1, p0, Lm0/j;->l:I

    new-array p4, p1, [B

    iput-object p4, p0, Lm0/j;->k:[B

    .line 5
    invoke-virtual {v2, p4}, Ljava/io/InputStream;->read([B)I

    const-string p4, "CAN"

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBuffer[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lm0/j;->k:[B

    aget-byte v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "mBuffer[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lm0/j;->k:[B

    aget-byte v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "mBuffer[2]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lm0/j;->k:[B

    aget-byte v4, v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object p4, Ll0/z;->a:Ll0/a;

    const/4 v3, 0x7

    new-array v3, v3, [I

    const/16 v4, 0x2e

    aput v4, v3, v1

    const/16 v4, 0xe1

    aput v4, v3, v0

    aput p2, v3, p3

    iget-object v4, p0, Lm0/j;->k:[B

    add-int/lit8 v5, p1, -0x4

    aget-byte v5, v4, v5

    const/4 v6, 0x3

    aput v5, v3, v6

    add-int/lit8 v5, p1, -0x3

    aget-byte v5, v4, v5

    aput v5, v3, p2

    const/4 v5, 0x5

    add-int/lit8 v6, p1, -0x2

    aget-byte v6, v4, v6

    aput v6, v3, v5

    const/4 v5, 0x6

    sub-int/2addr p1, v0

    aget-byte p1, v4, p1

    aput p1, v3, v5

    invoke-virtual {p4, v3}, Ll0/a;->f([I)V
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

    .line 10
    :goto_0
    sput v0, Lm0/b;->e:I

    .line 11
    invoke-virtual {p0}, Lm0/j;->U2()V

    .line 12
    iput v1, p0, Lm0/j;->h:I

    iput v1, p0, Lm0/j;->g:I

    iput v1, p0, Lm0/j;->i:I

    .line 13
    iget-object p1, p0, Lm0/j;->m:Ljava/lang/Runnable;

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
    move-exception p4

    move-object v2, p1

    move-object p1, p4

    .line 14
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p1, v0, [I

    aput p2, p1, v1

    .line 15
    invoke-static {p3, p1}, Lm0/d;->j(I[I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 16
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz v2, :cond_2

    .line 18
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    .line 19
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_2
    :goto_4
    throw p1

    :cond_3
    :goto_5
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
    iget v0, p0, Lm0/j;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lm0/j;->c:I

    .line 4
    iput v2, p0, Lm0/j;->d:I

    .line 5
    iput v2, p0, Lm0/j;->e:I

    .line 6
    :cond_1
    iget-object v0, p0, Lm0/j;->b:[B

    iget v1, p0, Lm0/j;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lm0/j;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lm0/j;->c:I

    .line 8
    iget p1, p0, Lm0/j;->e:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lm0/j;->b:[B

    aget-byte p1, p1, v3

    move v0, v1

    .line 10
    :goto_0
    iget v4, p0, Lm0/j;->e:I

    if-ge v0, v4, :cond_3

    .line 11
    iget-object v4, p0, Lm0/j;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    not-int p1, p1

    int-to-byte p1, p1

    .line 12
    iget-object v0, p0, Lm0/j;->b:[B

    aget-byte v5, v0, v4

    if-ne p1, v5, :cond_4

    sub-int/2addr v4, v3

    .line 13
    invoke-virtual {p0, v0, v3, v4}, Lm0/j;->V2([BII)V

    .line 14
    iget p1, p0, Lm0/j;->e:I

    add-int/2addr p1, v3

    iput p1, p0, Lm0/j;->d:I

    goto :goto_1

    .line 15
    :cond_4
    iput v3, p0, Lm0/j;->d:I

    .line 16
    :goto_1
    iput v2, p0, Lm0/j;->e:I

    .line 17
    :cond_5
    iget p1, p0, Lm0/j;->c:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lm0/j;->d:I

    if-ge v0, p1, :cond_b

    .line 18
    iget-object v1, p0, Lm0/j;->b:[B

    aget-byte v4, v1, v0

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v0, 0x2

    .line 19
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lm0/j;->e:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_6

    .line 20
    iput v2, p0, Lm0/j;->e:I

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v0, 0x3

    add-int/2addr v4, v5

    .line 21
    iput v4, p0, Lm0/j;->e:I

    .line 22
    iget v5, p0, Lm0/j;->c:I

    if-lt v4, v5, :cond_7

    sub-int/2addr v4, v0

    .line 23
    iput v4, p0, Lm0/j;->e:I

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v0, 0x1

    .line 24
    aget-byte v1, v1, v4

    add-int/lit8 v0, v0, 0x2

    .line 25
    :goto_3
    iget v4, p0, Lm0/j;->e:I

    if-ge v0, v4, :cond_8

    .line 26
    iget-object v4, p0, Lm0/j;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    not-int v0, v1

    int-to-byte v0, v0

    .line 27
    iget-object v1, p0, Lm0/j;->b:[B

    aget-byte v5, v1, v4

    if-ne v0, v5, :cond_9

    .line 28
    iget v0, p0, Lm0/j;->d:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v5, v4}, Lm0/j;->V2([BII)V

    .line 29
    iget v0, p0, Lm0/j;->e:I

    iput v0, p0, Lm0/j;->d:I

    goto :goto_4

    .line 30
    :cond_9
    iget v0, p0, Lm0/j;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lm0/j;->d:I

    .line 31
    :goto_4
    iput v2, p0, Lm0/j;->e:I

    .line 32
    :cond_a
    :goto_5
    iget v0, p0, Lm0/j;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lm0/j;->d:I

    goto :goto_2

    :cond_b
    :goto_6
    if-eqz v0, :cond_d

    .line 33
    iget p1, p0, Lm0/j;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lm0/j;->c:I

    if-lez p1, :cond_c

    .line 34
    iget-object v1, p0, Lm0/j;->b:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_c
    iput v2, p0, Lm0/j;->d:I

    :cond_d
    :goto_7
    return-void
.end method

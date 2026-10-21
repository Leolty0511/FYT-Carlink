.class public Lm0/z;
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

.field public m:I

.field public n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lm0/z;->a:Z

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 3
    iput-object v1, p0, Lm0/z;->b:[B

    .line 4
    iput v0, p0, Lm0/z;->c:I

    .line 5
    iput v0, p0, Lm0/z;->d:I

    .line 6
    iput v0, p0, Lm0/z;->e:I

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    .line 7
    iput-object v1, p0, Lm0/z;->f:[B

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lm0/z;->g:I

    iput v0, p0, Lm0/z;->h:I

    iput v0, p0, Lm0/z;->i:I

    const/16 v1, 0x40

    new-array v1, v1, [B

    .line 9
    iput-object v1, p0, Lm0/z;->j:[B

    .line 10
    iput v0, p0, Lm0/z;->m:I

    .line 11
    new-instance v0, Lm0/z$a;

    invoke-direct {v0, p0}, Lm0/z$a;-><init>(Lm0/z;)V

    iput-object v0, p0, Lm0/z;->n:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic O2(Lm0/z;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/z;->g:I

    return p0
.end method

.method public static synthetic P2(Lm0/z;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/z;->i:I

    return p0
.end method

.method public static synthetic Q2(Lm0/z;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/z;->i:I

    return p1
.end method

.method public static synthetic R2(Lm0/z;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/z;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/z;->i:I

    return v0
.end method

.method public static synthetic S2(Lm0/z;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm0/z;->T2()V

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
    iget v0, p0, Lm0/z;->g:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm0/z;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lm0/z;->g:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lm0/z;->k:[B

    const/4 v0, 0x0

    .line 5
    sput v0, Lm0/b;->e:I

    return-void
.end method

.method public N2([B)[B
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 2
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    new-array p1, p1, [B

    shr-int/lit8 v1, v2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    shr-int/lit8 v0, v2, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p1, v1

    const/4 v0, 0x2

    shr-int/lit8 v1, v2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x3

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-object p1
.end method

.method public final T2()V
    .locals 0

    .line 1
    invoke-static {}, Lm0/d;->f()V

    return-void
.end method

.method public U2([BII)V
    .locals 2

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, -0x1f

    const/4 v1, 0x1

    if-eq p3, v0, :cond_1

    const/16 p1, -0x1e

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput v1, p0, Lm0/z;->g:I

    goto :goto_0

    .line 3
    :cond_1
    iput v1, p0, Lm0/z;->g:I

    add-int/lit8 p2, p2, 0x2

    .line 4
    aget-byte p1, p1, p2

    invoke-virtual {p0, p1}, Lm0/z;->X2(B)V

    :goto_0
    return-void
.end method

.method public V2()[B
    .locals 6

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/16 v1, 0x2e

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, -0x20

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const/16 v1, 0x9

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    .line 1
    iget v1, p0, Lm0/z;->l:I

    shr-int/lit8 v3, v1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x4

    aput-byte v3, v0, v4

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x5

    aput-byte v3, v0, v5

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x6

    aput-byte v3, v0, v5

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    :goto_0
    if-ge v2, v4, :cond_0

    add-int/lit8 v1, v2, 0x8

    .line 2
    iget-object v3, p0, Lm0/z;->k:[B

    invoke-virtual {p0, v3}, Lm0/z;->N2([B)[B

    move-result-object v3

    aget-byte v3, v3, v2

    aput-byte v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final W2()V
    .locals 10

    .line 1
    iget v0, p0, Lm0/z;->l:I

    iget v1, p0, Lm0/z;->h:I

    sub-int v2, v0, v1

    if-lez v2, :cond_4

    sub-int v2, v0, v1

    const/16 v3, 0x40

    const/16 v4, -0x20

    const/16 v5, 0x2e

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-le v2, v3, :cond_1

    move v0, v8

    .line 2
    :goto_0
    iget-object v1, p0, Lm0/z;->j:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3
    iget-object v2, p0, Lm0/z;->k:[B

    iget v3, p0, Lm0/z;->h:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lm0/z;->h:I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lm0/z;->h:I

    const/16 v0, 0x44

    new-array v0, v0, [B

    aput-byte v5, v0, v8

    aput-byte v4, v0, v9

    const/16 v1, 0x41

    aput-byte v1, v0, v7

    aput-byte v6, v0, v6

    move v1, v8

    .line 5
    :goto_1
    iget-object v2, p0, Lm0/z;->j:[B

    array-length v3, v2

    if-ge v1, v3, :cond_3

    add-int/lit8 v3, v1, 0x4

    .line 6
    aget-byte v2, v2, v1

    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sub-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x4

    .line 7
    new-array v1, v1, [B

    .line 8
    aput-byte v5, v1, v8

    .line 9
    aput-byte v4, v1, v9

    add-int/lit8 v2, v0, 0x1

    int-to-byte v2, v2

    .line 10
    aput-byte v2, v1, v7

    const/4 v2, 0x4

    .line 11
    aput-byte v2, v1, v6

    move v2, v8

    :goto_2
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v2, 0x4

    .line 12
    iget-object v4, p0, Lm0/z;->k:[B

    iget v5, p0, Lm0/z;->h:I

    add-int/2addr v5, v2

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 13
    :cond_2
    iget v0, p0, Lm0/z;->l:I

    iput v0, p0, Lm0/z;->h:I

    move-object v0, v1

    .line 14
    :cond_3
    iput-object v0, p0, Lm0/z;->f:[B

    .line 15
    sget-object v1, Ll0/z;->a:Ll0/a;

    invoke-static {v0}, Lo1/s0;->e([B)[I

    move-result-object v0

    invoke-virtual {v1, v0}, Ll0/a;->f([I)V

    new-array v0, v9, [I

    aput v7, v0, v8

    .line 16
    invoke-static {v7, v0}, Lm0/d;->j(I[I)V

    new-array v0, v9, [I

    .line 17
    iget v1, p0, Lm0/z;->h:I

    aput v1, v0, v8

    invoke-static {v8, v0}, Lm0/d;->j(I[I)V

    new-array v0, v9, [I

    .line 18
    iget v1, p0, Lm0/z;->l:I

    aput v1, v0, v8

    invoke-static {v9, v0}, Lm0/d;->j(I[I)V

    :cond_4
    return-void
.end method

.method public final X2(B)V
    .locals 4

    const/16 v0, -0x7f

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    const/16 v3, 0xa

    if-eq p1, v3, :cond_2

    const/16 v3, 0xc

    if-eq p1, v3, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    sget p1, Lk0/nt;->a:I

    const v3, 0x8501b7

    if-eq p1, v3, :cond_1

    .line 2
    sget-object p1, Ll0/z;->a:Ll0/a;

    iget-object v3, p0, Lm0/z;->f:[B

    invoke-static {v3}, Lo1/s0;->e([B)[I

    move-result-object v3

    invoke-virtual {p1, v3}, Ll0/a;->f([I)V

    :cond_1
    new-array p1, v1, [I

    const/4 v1, 0x7

    aput v1, p1, v0

    .line 3
    invoke-static {v2, p1}, Lm0/d;->j(I[I)V

    goto :goto_1

    .line 4
    :cond_2
    sget-object p1, Ll0/z;->a:Ll0/a;

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {p1, v3}, Ll0/a;->f([I)V

    new-array p1, v1, [I

    const/4 v1, 0x3

    aput v1, p1, v0

    .line 5
    invoke-static {v2, p1}, Lm0/d;->j(I[I)V

    goto :goto_1

    :cond_3
    new-array p1, v1, [I

    const/4 v1, 0x6

    aput v1, p1, v0

    .line 6
    invoke-static {v2, p1}, Lm0/d;->j(I[I)V

    goto :goto_1

    :cond_4
    new-array p1, v1, [I

    aput v1, p1, v0

    .line 7
    invoke-static {v2, p1}, Lm0/d;->j(I[I)V

    goto :goto_1

    :cond_5
    const-wide/16 v0, 0x64

    .line 8
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CAN"

    const-string v0, "sleep exception"

    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_0
    invoke-virtual {p0}, Lm0/z;->W2()V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x2e
        0xe0
        0x1
        0xa
    .end array-data
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_5

    :cond_0
    if-eqz p4, :cond_3

    .line 1
    array-length p1, p4

    if-lez p1, :cond_3

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    aget-object p4, p4, p3

    invoke-direct {v0, p4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 4
    iput p1, p0, Lm0/z;->l:I

    new-array p1, p1, [B

    iput-object p1, p0, Lm0/z;->k:[B

    .line 5
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_0
    sput p2, Lm0/b;->e:I

    .line 9
    invoke-virtual {p0}, Lm0/z;->T2()V

    .line 10
    iput p3, p0, Lm0/z;->h:I

    iput p3, p0, Lm0/z;->g:I

    iput p3, p0, Lm0/z;->i:I

    .line 11
    iget-object p1, p0, Lm0/z;->n:Ljava/lang/Runnable;

    invoke-static {p1}, Lm0/d;->b(Ljava/lang/Runnable;)V

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_3

    :catch_2
    move-exception p4

    move-object v0, p1

    move-object p1, p4

    .line 12
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x2

    new-array p2, p2, [I

    const/4 p4, 0x4

    aput p4, p2, p3

    .line 13
    invoke-static {p1, p2}, Lm0/d;->j(I[I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 14
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz v0, :cond_2

    .line 16
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    .line 17
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
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
    iget v0, p0, Lm0/z;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lm0/z;->c:I

    .line 4
    iput v2, p0, Lm0/z;->d:I

    .line 5
    iput v2, p0, Lm0/z;->e:I

    .line 6
    :cond_1
    iget-object v0, p0, Lm0/z;->b:[B

    iget v1, p0, Lm0/z;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lm0/z;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lm0/z;->c:I

    .line 8
    iget p1, p0, Lm0/z;->e:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lm0/z;->b:[B

    aget-byte p1, p1, v3

    move v0, v1

    .line 10
    :goto_0
    iget v4, p0, Lm0/z;->e:I

    if-ge v0, v4, :cond_3

    .line 11
    iget-object v4, p0, Lm0/z;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    not-int p1, p1

    int-to-byte p1, p1

    .line 12
    iget-object v0, p0, Lm0/z;->b:[B

    aget-byte v5, v0, v4

    if-ne p1, v5, :cond_4

    sub-int/2addr v4, v3

    .line 13
    invoke-virtual {p0, v0, v3, v4}, Lm0/z;->U2([BII)V

    .line 14
    iget p1, p0, Lm0/z;->e:I

    add-int/2addr p1, v3

    iput p1, p0, Lm0/z;->d:I

    goto :goto_1

    .line 15
    :cond_4
    iput v3, p0, Lm0/z;->d:I

    .line 16
    :goto_1
    iput v2, p0, Lm0/z;->e:I

    .line 17
    :cond_5
    iget p1, p0, Lm0/z;->c:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lm0/z;->d:I

    if-ge v0, p1, :cond_a

    .line 18
    iget-object v1, p0, Lm0/z;->b:[B

    aget-byte v4, v1, v0

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_9

    add-int/lit8 v4, v0, 0x2

    .line 19
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, 0x3

    iput v4, p0, Lm0/z;->e:I

    add-int/2addr v4, v0

    .line 20
    iput v4, p0, Lm0/z;->e:I

    .line 21
    iget v5, p0, Lm0/z;->c:I

    if-lt v4, v5, :cond_6

    sub-int/2addr v4, v0

    .line 22
    iput v4, p0, Lm0/z;->e:I

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v0, 0x1

    .line 23
    aget-byte v1, v1, v4

    add-int/lit8 v0, v0, 0x2

    .line 24
    :goto_3
    iget v4, p0, Lm0/z;->e:I

    if-ge v0, v4, :cond_7

    .line 25
    iget-object v4, p0, Lm0/z;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    not-int v0, v1

    int-to-byte v0, v0

    .line 26
    iget-object v1, p0, Lm0/z;->b:[B

    aget-byte v5, v1, v4

    if-ne v0, v5, :cond_8

    .line 27
    iget v0, p0, Lm0/z;->d:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v5, v4}, Lm0/z;->U2([BII)V

    .line 28
    iget v0, p0, Lm0/z;->e:I

    iput v0, p0, Lm0/z;->d:I

    goto :goto_4

    .line 29
    :cond_8
    iget v0, p0, Lm0/z;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lm0/z;->d:I

    .line 30
    :goto_4
    iput v2, p0, Lm0/z;->e:I

    .line 31
    :cond_9
    iget v0, p0, Lm0/z;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lm0/z;->d:I

    goto :goto_2

    :cond_a
    :goto_5
    if-eqz v0, :cond_c

    .line 32
    iget p1, p0, Lm0/z;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lm0/z;->c:I

    if-eqz p1, :cond_b

    .line 33
    iget-object v1, p0, Lm0/z;->b:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    :cond_b
    iput v2, p0, Lm0/z;->d:I

    :cond_c
    :goto_6
    return-void
.end method

.class public Lm0/u;
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

.field public h:[B

.field public i:[B

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lm0/u;->a:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lm0/u;->b:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lm0/u;->c:I

    .line 5
    iput v1, p0, Lm0/u;->d:I

    .line 6
    iput v1, p0, Lm0/u;->e:I

    .line 7
    iput v1, p0, Lm0/u;->f:I

    iput v1, p0, Lm0/u;->g:I

    const/16 v2, 0x87

    new-array v2, v2, [B

    .line 8
    iput-object v2, p0, Lm0/u;->h:[B

    const/16 v3, -0x34

    aput-byte v3, v2, v1

    const/16 v1, 0x33

    aput-byte v1, v2, v0

    const/4 v0, 0x2

    const/16 v1, -0x7e

    aput-byte v1, v2, v0

    const/4 v0, 0x3

    const/16 v1, -0x1d

    aput-byte v1, v2, v0

    .line 9
    new-instance v0, Lm0/u$a;

    invoke-direct {v0, p0}, Lm0/u$a;-><init>(Lm0/u;)V

    iput-object v0, p0, Lm0/u;->j:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic N2(Lm0/u;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/u;->f:I

    return p0
.end method

.method public static synthetic O2(Lm0/u;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/u;->g:I

    return p0
.end method

.method public static synthetic P2(Lm0/u;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/u;->g:I

    return p1
.end method

.method public static synthetic Q2(Lm0/u;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/u;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/u;->g:I

    return v0
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
    iput v0, p0, Lm0/u;->f:I

    const/4 v0, 0x0

    .line 2
    sput v0, Lm0/b;->e:I

    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public R2([BII)V
    .locals 9

    const-string v0, "UTF-8"

    .line 1
    aget-byte v1, p1, p2

    const/16 v2, -0x20

    const/4 v3, 0x6

    const-string v4, "CAN"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v1, v2, :cond_6

    const/16 v2, -0x12

    const/4 v8, 0x4

    if-eq v1, v2, :cond_4

    const/16 p3, -0x1e

    if-eq v1, p3, :cond_3

    const/16 p3, -0x1d

    if-eq v1, p3, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget p3, p0, Lm0/u;->f:I

    if-lt p3, v6, :cond_7

    add-int/lit8 p3, p2, 0x1

    .line 3
    aget-byte v0, p1, p3

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/2addr p2, v6

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    const/16 v1, 0x190

    if-ge v0, v1, :cond_7

    .line 4
    iget-object v2, p0, Lm0/u;->h:[B

    aget-byte p3, p1, p3

    aput-byte p3, v2, v8

    const/4 p3, 0x5

    aget-byte p1, p1, p2

    aput-byte p1, v2, p3

    .line 5
    iget-object p1, p0, Lm0/u;->i:[B

    mul-int/lit16 p2, v0, 0x80

    const/16 p3, 0x80

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, v5

    move p1, v6

    :goto_0
    const/16 p3, 0x86

    if-ge p1, p3, :cond_1

    .line 6
    iget-object p3, p0, Lm0/u;->h:[B

    aget-byte p3, p3, p1

    add-int/2addr p2, p3

    int-to-byte p2, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lm0/u;->h:[B

    sub-int/2addr p2, v7

    int-to-byte p2, p2

    aput-byte p2, p1, p3

    .line 8
    invoke-static {p1}, Lm0/d;->m([B)V

    new-array p1, v6, [Ljava/lang/Object;

    add-int/lit8 p2, v0, 0x1

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v7

    const-string p3, "%d/%d"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x18f

    if-ne v0, p1, :cond_2

    const-string p1, "UP FINISH"

    .line 10
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-array p1, v7, [I

    aput v6, p1, v5

    .line 11
    invoke-static {v6, p1}, Lm0/d;->j(I[I)V

    new-array p1, v7, [I

    const/16 p3, 0x64

    aput p3, p1, v5

    .line 12
    invoke-static {v7, p1}, Lm0/d;->j(I[I)V

    new-array p1, v7, [I

    mul-int/2addr p2, p3

    .line 13
    div-int/2addr p2, v1

    aput p2, p1, v5

    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    goto/16 :goto_1

    .line 14
    :cond_3
    iget p1, p0, Lm0/u;->f:I

    if-ne p1, v7, :cond_7

    .line 15
    iput v6, p0, Lm0/u;->f:I

    new-array p1, v3, [B

    .line 16
    fill-array-data p1, :array_0

    invoke-static {p1}, Lm0/d;->m([B)V

    const-string p1, "UP STEP 2"

    .line 17
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v7, [I

    aput v7, p1, v5

    .line 18
    invoke-static {v6, p1}, Lm0/d;->j(I[I)V

    goto :goto_1

    .line 19
    :cond_4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VERSION = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    add-int/2addr p2, v7

    sub-int/2addr p3, v7

    invoke-direct {v2, p1, p2, p3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string p1, "ERROR"

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 22
    sget p1, Lm0/b;->e:I

    if-ne p1, v7, :cond_7

    new-array p1, v7, [I

    aput v8, p1, v5

    .line 23
    invoke-static {v6, p1}, Lm0/d;->j(I[I)V

    .line 24
    sput v5, Lm0/b;->e:I

    goto :goto_1

    .line 25
    :cond_5
    sget p1, Lm0/b;->e:I

    if-ne p1, v7, :cond_7

    new-array p1, v7, [I

    const/4 p2, 0x3

    aput p2, p1, v5

    .line 26
    invoke-static {v6, p1}, Lm0/d;->j(I[I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 28
    :cond_6
    iget p1, p0, Lm0/u;->f:I

    if-nez p1, :cond_7

    .line 29
    iput v7, p0, Lm0/u;->f:I

    new-array p1, v3, [B

    .line 30
    fill-array-data p1, :array_1

    invoke-static {p1}, Lm0/d;->m([B)V

    const-string p1, "UP STEP 1"

    .line 31
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v7, [I

    aput v7, p1, v5

    .line 32
    invoke-static {v6, p1}, Lm0/d;->j(I[I)V

    :cond_7
    :goto_1
    return-void

    :array_0
    .array-data 1
        -0x34t
        0x33t
        0x1t
        -0x1et
        -0x1t
        -0x1ft
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x34t
        0x33t
        0x1t
        -0x1ft
        0x1t
        -0x1et
    .end array-data
.end method

.method public final S2(Ljava/lang/String;)V
    .locals 6

    const-string v0, "CAN"

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result p1

    if-eqz p1, :cond_1

    const v1, 0xc800

    if-ge p1, v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-array p1, p1, [B

    iput-object p1, p0, Lm0/u;->i:[B

    .line 4
    invoke-virtual {v5, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p1, "requestUpdate"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sput v3, Lm0/b;->e:I

    .line 9
    invoke-static {}, Lm0/d;->g()V

    .line 10
    iput v4, p0, Lm0/u;->g:I

    iput v4, p0, Lm0/u;->f:I

    .line 11
    iget-object p1, p0, Lm0/u;->j:Ljava/lang/Runnable;

    invoke-static {p1}, Lm0/d;->b(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_1
    :goto_1
    :try_start_3
    const-string p1, "size error"

    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v3, [I

    const/4 v1, 0x5

    aput v1, p1, v4

    .line 13
    invoke-static {v2, p1}, Lm0/d;->j(I[I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    move-object v1, v5

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v1, v5

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    .line 16
    :goto_3
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v3, [I

    const/4 v0, 0x4

    aput v0, p1, v4

    .line 18
    invoke-static {v2, p1}, Lm0/d;->j(I[I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_2

    .line 19
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_4
    return-void

    :goto_5
    if-eqz v1, :cond_3

    .line 21
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    :cond_3
    :goto_6
    throw p1

    :cond_4
    :goto_7
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p4, p1}, Lm0/a;->M2([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2
    aget-object p1, p4, p1

    invoke-virtual {p0, p1}, Lm0/u;->S2(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b([B)V
    .locals 6

    .line 1
    sget-object v0, Lz/a;->x:Lo1/q;

    invoke-interface {v0, p1}, Lo1/q;->b([B)V

    if-eqz p1, :cond_c

    .line 2
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    iget v0, p0, Lm0/u;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 4
    iput v2, p0, Lm0/u;->c:I

    .line 5
    iput v2, p0, Lm0/u;->d:I

    .line 6
    iput v2, p0, Lm0/u;->e:I

    .line 7
    :cond_1
    iget-object v0, p0, Lm0/u;->a:[B

    iget v1, p0, Lm0/u;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v0, p0, Lm0/u;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lm0/u;->c:I

    .line 9
    iget p1, p0, Lm0/u;->e:I

    const/4 v1, 0x2

    const/4 v3, 0x3

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object p1, p0, Lm0/u;->a:[B

    aget-byte p1, p1, v1

    move v0, v3

    .line 11
    :goto_0
    iget v4, p0, Lm0/u;->e:I

    if-ge v0, v4, :cond_3

    .line 12
    iget-object v4, p0, Lm0/u;->a:[B

    aget-byte v4, v4, v0

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, -0x1

    int-to-byte p1, p1

    .line 13
    iget-object v0, p0, Lm0/u;->a:[B

    aget-byte v5, v0, v4

    if-ne p1, v5, :cond_4

    sub-int/2addr v4, v3

    .line 14
    invoke-virtual {p0, v0, v3, v4}, Lm0/u;->R2([BII)V

    .line 15
    iget p1, p0, Lm0/u;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lm0/u;->d:I

    goto :goto_1

    .line 16
    :cond_4
    iput v1, p0, Lm0/u;->d:I

    .line 17
    :goto_1
    iput v2, p0, Lm0/u;->e:I

    .line 18
    :cond_5
    iget p1, p0, Lm0/u;->c:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lm0/u;->d:I

    if-ge v0, p1, :cond_a

    .line 19
    iget-object v1, p0, Lm0/u;->a:[B

    aget-byte v4, v1, v0

    const/16 v5, -0x34

    if-ne v4, v5, :cond_9

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    const/16 v5, 0x33

    if-ne v4, v5, :cond_9

    add-int/lit8 v4, v0, 0x2

    .line 20
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lm0/u;->e:I

    add-int/lit8 v5, v0, 0x4

    add-int/2addr v4, v5

    .line 21
    iput v4, p0, Lm0/u;->e:I

    .line 22
    iget v5, p0, Lm0/u;->c:I

    if-lt v4, v5, :cond_6

    sub-int/2addr v4, v0

    .line 23
    iput v4, p0, Lm0/u;->e:I

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v0, 0x2

    .line 24
    aget-byte v1, v1, v4

    add-int/lit8 v0, v0, 0x3

    .line 25
    :goto_3
    iget v4, p0, Lm0/u;->e:I

    if-ge v0, v4, :cond_7

    .line 26
    iget-object v4, p0, Lm0/u;->a:[B

    aget-byte v4, v4, v0

    add-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v1, -0x1

    int-to-byte v0, v1

    .line 27
    iget-object v1, p0, Lm0/u;->a:[B

    aget-byte v5, v1, v4

    if-ne v0, v5, :cond_8

    .line 28
    iget v0, p0, Lm0/u;->d:I

    add-int/lit8 v5, v0, 0x3

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v5, v4}, Lm0/u;->R2([BII)V

    .line 29
    iget v0, p0, Lm0/u;->e:I

    iput v0, p0, Lm0/u;->d:I

    goto :goto_4

    .line 30
    :cond_8
    iget v0, p0, Lm0/u;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm0/u;->d:I

    .line 31
    :goto_4
    iput v2, p0, Lm0/u;->e:I

    .line 32
    :cond_9
    iget v0, p0, Lm0/u;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm0/u;->d:I

    goto :goto_2

    :cond_a
    :goto_5
    if-eqz v0, :cond_c

    .line 33
    iget p1, p0, Lm0/u;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lm0/u;->c:I

    if-eqz p1, :cond_b

    .line 34
    iget-object v1, p0, Lm0/u;->a:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_b
    iput v2, p0, Lm0/u;->d:I

    :cond_c
    :goto_6
    return-void
.end method

.class public Lm0/x;
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

.field public g:[B

.field public h:[B

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

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
    iput-object v0, p0, Lm0/x;->a:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lm0/x;->b:Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lm0/x;->c:I

    .line 5
    iput v0, p0, Lm0/x;->d:I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lm0/x;->e:I

    iput v0, p0, Lm0/x;->f:I

    const/16 v1, 0x88

    new-array v1, v1, [B

    .line 7
    iput-object v1, p0, Lm0/x;->g:[B

    .line 8
    iput-boolean v0, p0, Lm0/x;->j:Z

    .line 9
    iput-boolean v0, p0, Lm0/x;->k:Z

    .line 10
    iput-boolean v0, p0, Lm0/x;->l:Z

    .line 11
    iput v0, p0, Lm0/x;->m:I

    .line 12
    iput v0, p0, Lm0/x;->n:I

    .line 13
    iput v0, p0, Lm0/x;->o:I

    .line 14
    new-instance v0, Lm0/x$a;

    invoke-direct {v0, p0}, Lm0/x$a;-><init>(Lm0/x;)V

    iput-object v0, p0, Lm0/x;->p:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic N2(Lm0/x;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/x;->e:I

    return p0
.end method

.method public static synthetic O2(Lm0/x;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/x;->f:I

    return p0
.end method

.method public static synthetic P2(Lm0/x;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/x;->f:I

    return p1
.end method

.method public static synthetic Q2(Lm0/x;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/x;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/x;->f:I

    return v0
.end method

.method public static synthetic R2(Lm0/x;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm0/x;->Y2()V

    return-void
.end method

.method public static synthetic S2(Lm0/x;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/x;->o:I

    return p0
.end method

.method public static synthetic T2(Lm0/x;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/x;->o:I

    return p1
.end method

.method public static synthetic U2(Lm0/x;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/x;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/x;->o:I

    return v0
.end method

.method public static synthetic V2(Lm0/x;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lm0/x;->h:[B

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
    iget v0, p0, Lm0/x;->e:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm0/x;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lm0/x;->e:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lm0/x;->h:[B

    const/4 v0, 0x0

    .line 5
    sput v0, Lm0/b;->e:I

    return-void
.end method

.method public W2()V
    .locals 2

    const/4 v0, 0x5

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
        0x19
        0x78
        0x2
        0x17
    .end array-data
.end method

.method public X2()V
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
        0x45
    .end array-data
.end method

.method public final Y2()V
    .locals 2

    const-string v0, "CAN"

    const-string v1, "REQUEST MCU TO CANBUS UPDATE"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lm0/d;->f()V

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 4

    const-string p2, "size == 0 or not 136*n"

    const-string p3, "CAN"

    if-eqz p1, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lm0/x;->e:I

    .line 2
    invoke-virtual {p0}, Lm0/x;->Y2()V

    if-eqz p4, :cond_6

    .line 3
    array-length v0, p4

    if-lez v0, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 4
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    aget-object p4, p4, p1

    invoke-direct {v3, p4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result p4

    iput p4, p0, Lm0/x;->n:I

    if-nez p4, :cond_1

    .line 6
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p4

    invoke-virtual {p4, p2}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p2, v2, [I

    const/4 p4, 0x5

    aput p4, p2, p1

    .line 8
    invoke-static {v1, p2}, Lm0/d;->j(I[I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    return-void

    :cond_1
    const/high16 p2, 0x200000

    if-le p4, p2, :cond_2

    :try_start_3
    const-string p2, "to large"

    .line 11
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p2, v2, [I

    const/4 p4, 0x6

    aput p4, p2, p1

    .line 12
    invoke-static {v1, p2}, Lm0/d;->j(I[I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    .line 15
    :cond_2
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "size = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lm0/x;->n:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget p2, p0, Lm0/x;->n:I

    rem-int/lit16 p4, p2, 0x88

    if-eqz p4, :cond_3

    div-int/lit16 p2, p2, 0x88

    add-int/2addr p2, v2

    mul-int/lit16 p2, p2, 0x88

    iput p2, p0, Lm0/x;->i:I

    goto :goto_2

    .line 17
    :cond_3
    div-int/lit16 p2, p2, 0x88

    mul-int/lit16 p2, p2, 0x88

    iput p2, p0, Lm0/x;->i:I

    .line 18
    :goto_2
    iget p2, p0, Lm0/x;->i:I

    new-array p2, p2, [B

    iput-object p2, p0, Lm0/x;->h:[B

    .line 19
    invoke-virtual {v3, p2}, Ljava/io/InputStream;->read([B)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 20
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 21
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const-string p2, "requestUpdate"

    .line 22
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sput v2, Lm0/b;->e:I

    .line 24
    invoke-virtual {p0}, Lm0/x;->Y2()V

    const-wide/16 p2, 0x64

    .line 25
    invoke-static {p2, p3}, La/i;->a0(J)V

    .line 26
    iput-boolean v2, p0, Lm0/x;->j:Z

    .line 27
    iput p1, p0, Lm0/x;->f:I

    iput p1, p0, Lm0/x;->e:I

    iput p1, p0, Lm0/x;->o:I

    .line 28
    iget-object p1, p0, Lm0/x;->p:Ljava/lang/Runnable;

    invoke-static {p1}, Lm0/d;->b(Ljava/lang/Runnable;)V

    goto :goto_8

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_6

    :catch_3
    move-exception p2

    move-object v0, v3

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_4
    move-exception p2

    .line 29
    :goto_4
    :try_start_7
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p2, v2, [I

    const/4 p3, 0x4

    aput p3, p2, p1

    .line 31
    invoke-static {v1, p2}, Lm0/d;->j(I[I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_4

    .line 32
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_5
    return-void

    :goto_6
    if-eqz v0, :cond_5

    .line 34
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_7

    :catch_6
    move-exception p2

    .line 35
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    :cond_5
    :goto_7
    throw p1

    :cond_6
    :goto_8
    return-void
.end method

.method public varargs Z2([B)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    .line 2
    new-array v0, v0, [I

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "respNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lm0/x;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAN"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x17

    const/4 v3, 0x0

    .line 4
    aput v2, v0, v3

    .line 5
    aput v1, v0, v1

    .line 6
    iget v1, p0, Lm0/x;->d:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 7
    aget v1, v0, v2

    rsub-int v1, v1, 0xff

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    :goto_0
    const/16 v2, 0x8c

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x4

    .line 8
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    .line 9
    aget v2, v0, v1

    add-int/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    shr-int/lit8 p1, v3, 0x8

    and-int/lit16 p1, p1, 0xff

    .line 10
    aput p1, v0, v2

    const/16 p1, 0x8d

    and-int/lit16 v1, v3, 0xff

    .line 11
    aput v1, v0, p1

    .line 12
    sget-object p1, Ll0/z;->a:Ll0/a;

    invoke-static {v0}, Ll0/a;->d([I)V

    return-void
.end method

.method public b([B)V
    .locals 10

    if-eqz p1, :cond_18

    .line 1
    array-length v0, p1

    if-lez v0, :cond_18

    iget-boolean v0, p0, Lm0/x;->j:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget v0, p0, Lm0/x;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lm0/x;->c:I

    .line 4
    :cond_1
    iget-object v0, p0, Lm0/x;->a:[B

    iget v1, p0, Lm0/x;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget v0, p0, Lm0/x;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lm0/x;->c:I

    .line 6
    array-length v0, p1

    invoke-static {p1, v2, v0}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CAN"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lm0/x;->a:[B

    iget v1, p0, Lm0/x;->c:I

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, p1, v3

    const/16 v4, -0x56

    const/4 v5, 0x1

    if-eq v3, v4, :cond_17

    const/16 v6, 0x45

    const/16 v7, 0x52

    const/4 v8, 0x2

    if-eq v3, v6, :cond_12

    const/16 v6, 0x53

    if-eq v3, v6, :cond_8

    const/16 v6, 0x55

    if-eq v3, v6, :cond_2

    .line 8
    iget-boolean p1, p0, Lm0/x;->l:Z

    if-eqz p1, :cond_18

    iput-boolean v2, p0, Lm0/x;->l:Z

    goto/16 :goto_1

    :cond_2
    if-lt v1, v8, :cond_3

    add-int/lit8 v3, v1, -0x2

    .line 9
    aget-byte p1, p1, v3

    if-eq p1, v4, :cond_4

    :cond_3
    if-ne v1, v5, :cond_6

    iget-boolean p1, p0, Lm0/x;->l:Z

    if-eqz p1, :cond_6

    .line 10
    :cond_4
    iput-boolean v2, p0, Lm0/x;->l:Z

    const-string p1, "CANaaa"

    .line 11
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget p1, p0, Lm0/x;->e:I

    if-nez p1, :cond_5

    new-array p1, v5, [I

    aput v5, p1, v2

    .line 13
    invoke-static {v8, p1}, Lm0/d;->j(I[I)V

    :cond_5
    return-void

    .line 14
    :cond_6
    iget p1, p0, Lm0/x;->e:I

    if-nez p1, :cond_7

    .line 15
    iput v5, p0, Lm0/x;->e:I

    .line 16
    invoke-virtual {p0}, Lm0/x;->W2()V

    const-string p1, "updata  1"

    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v5, [I

    aput v5, p1, v2

    .line 18
    invoke-static {v8, p1}, Lm0/d;->j(I[I)V

    .line 19
    :cond_7
    iput v2, p0, Lm0/x;->c:I

    goto/16 :goto_1

    .line 20
    :cond_8
    iget-boolean v3, p0, Lm0/x;->l:Z

    if-eqz v3, :cond_9

    iput-boolean v2, p0, Lm0/x;->l:Z

    :cond_9
    if-lt v1, v8, :cond_a

    sub-int/2addr v1, v8

    .line 21
    aget-byte p1, p1, v1

    const/16 v1, 0x42

    if-ne p1, v1, :cond_a

    const-string p1, "uodata  2"

    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v5, [I

    aput v5, p1, v2

    .line 23
    invoke-static {v8, p1}, Lm0/d;->j(I[I)V

    .line 24
    :cond_a
    iget p1, p0, Lm0/x;->c:I

    const-string v1, "respNum ="

    const-string v3, "/"

    const/16 v4, 0x64

    const/16 v6, 0x88

    if-lt p1, v8, :cond_d

    iget-object v9, p0, Lm0/x;->a:[B

    sub-int/2addr p1, v8

    aget-byte p1, v9, p1

    if-ne p1, v7, :cond_d

    .line 25
    iget p1, p0, Lm0/x;->e:I

    if-lt p1, v5, :cond_c

    sub-int/2addr p1, v8

    .line 26
    iput p1, p0, Lm0/x;->d:I

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/x;->d:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget p1, p0, Lm0/x;->d:I

    add-int/lit8 v1, p1, 0x1

    mul-int/2addr v1, v6

    iget v7, p0, Lm0/x;->i:I

    if-gt v1, v7, :cond_c

    .line 29
    iget-object v1, p0, Lm0/x;->h:[B

    mul-int/2addr p1, v6

    iget-object v7, p0, Lm0/x;->g:[B

    invoke-static {v1, p1, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget p1, p0, Lm0/x;->d:I

    add-int/2addr p1, v5

    iget v1, p0, Lm0/x;->i:I

    div-int/2addr v1, v6

    if-ne p1, v1, :cond_b

    .line 31
    iput-boolean v5, p0, Lm0/x;->k:Z

    .line 32
    :cond_b
    iget-object p1, p0, Lm0/x;->g:[B

    invoke-virtual {p0, p1}, Lm0/x;->Z2([B)V

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updataing  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/x;->d:I

    add-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/x;->i:I

    div-int/2addr v1, v6

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v5, [I

    aput v8, p1, v2

    .line 34
    invoke-static {v8, p1}, Lm0/d;->j(I[I)V

    new-array p1, v5, [I

    aput v4, p1, v2

    .line 35
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    new-array p1, v5, [I

    .line 36
    iget v0, p0, Lm0/x;->d:I

    add-int/2addr v0, v5

    mul-int/2addr v0, v4

    iget v1, p0, Lm0/x;->i:I

    div-int/2addr v1, v6

    div-int/2addr v0, v1

    aput v0, p1, v2

    invoke-static {v2, p1}, Lm0/d;->j(I[I)V

    .line 37
    :cond_c
    iput v2, p0, Lm0/x;->c:I

    goto/16 :goto_1

    .line 38
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aaa mUpgradeStep= "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lm0/x;->e:I

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget p1, p0, Lm0/x;->e:I

    if-lt p1, v5, :cond_11

    add-int/2addr p1, v5

    .line 40
    iput p1, p0, Lm0/x;->e:I

    sub-int/2addr p1, v8

    .line 41
    iput p1, p0, Lm0/x;->d:I

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/x;->d:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aaa mBufferSize= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/x;->i:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (respNum+1) * 136= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/x;->d:I

    add-int/2addr v1, v5

    mul-int/2addr v1, v6

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget p1, p0, Lm0/x;->d:I

    add-int/lit8 v1, p1, 0x1

    mul-int/2addr v1, v6

    iget v7, p0, Lm0/x;->i:I

    if-gt v1, v7, :cond_10

    .line 45
    iget-object v1, p0, Lm0/x;->h:[B

    mul-int/2addr p1, v6

    iget-object v7, p0, Lm0/x;->g:[B

    invoke-static {v1, p1, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget p1, p0, Lm0/x;->d:I

    add-int/2addr p1, v5

    iget v1, p0, Lm0/x;->i:I

    div-int/2addr v1, v6

    if-ne p1, v1, :cond_e

    .line 47
    iput-boolean v5, p0, Lm0/x;->k:Z

    .line 48
    :cond_e
    iget-object p1, p0, Lm0/x;->g:[B

    invoke-virtual {p0, p1}, Lm0/x;->Z2([B)V

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aaa= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/x;->d:I

    add-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/x;->i:I

    div-int/2addr v1, v6

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v5, [I

    aput v8, p1, v2

    .line 50
    invoke-static {v8, p1}, Lm0/d;->j(I[I)V

    new-array p1, v5, [I

    aput v4, p1, v2

    .line 51
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    new-array p1, v5, [I

    .line 52
    iget v1, p0, Lm0/x;->d:I

    add-int/2addr v1, v5

    mul-int/2addr v1, v4

    iget v4, p0, Lm0/x;->i:I

    div-int/2addr v4, v6

    div-int/2addr v1, v4

    aput v1, p1, v2

    invoke-static {v2, p1}, Lm0/d;->j(I[I)V

    .line 53
    iget p1, p0, Lm0/x;->d:I

    add-int/2addr p1, v5

    iget v1, p0, Lm0/x;->i:I

    div-int/2addr v1, v6

    if-ne p1, v1, :cond_f

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aSSSaa= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/x;->d:I

    add-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/x;->i:I

    div-int/2addr v1, v6

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lm0/x;->X2()V

    goto :goto_0

    :cond_f
    const-string p1, "end"

    .line 56
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_10
    invoke-virtual {p0}, Lm0/x;->X2()V

    .line 58
    :cond_11
    :goto_0
    iput v2, p0, Lm0/x;->c:I

    goto :goto_1

    .line 59
    :cond_12
    iget-boolean v3, p0, Lm0/x;->l:Z

    if-eqz v3, :cond_13

    iput-boolean v2, p0, Lm0/x;->l:Z

    .line 60
    :cond_13
    iget v3, p0, Lm0/x;->e:I

    if-ne v3, v5, :cond_14

    .line 61
    iput v2, p0, Lm0/x;->e:I

    return-void

    :cond_14
    if-lt v1, v8, :cond_15

    sub-int/2addr v1, v8

    .line 62
    aget-byte p1, p1, v1

    if-ne p1, v7, :cond_15

    const-string p1, "BBBBBB"

    .line 63
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v5, [I

    const/4 v1, 0x4

    aput v1, p1, v2

    .line 64
    invoke-static {v8, p1}, Lm0/d;->j(I[I)V

    .line 65
    :cond_15
    iget-boolean p1, p0, Lm0/x;->k:Z

    if-eqz p1, :cond_16

    const-string p1, "updata OK "

    .line 66
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v5, [I

    const/4 v0, 0x3

    aput v0, p1, v2

    .line 67
    invoke-static {v8, p1}, Lm0/d;->j(I[I)V

    .line 68
    :cond_16
    iput v2, p0, Lm0/x;->c:I

    goto :goto_1

    .line 69
    :cond_17
    iput-boolean v5, p0, Lm0/x;->l:Z

    :cond_18
    :goto_1
    return-void
.end method

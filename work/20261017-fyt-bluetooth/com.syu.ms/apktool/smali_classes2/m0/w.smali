.class public Lm0/w;
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

.field public f:[B

.field public g:[B

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lm0/w;->a:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lm0/w;->b:Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lm0/w;->c:I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lm0/w;->d:I

    iput v0, p0, Lm0/w;->e:I

    const/16 v1, 0x88

    new-array v1, v1, [B

    .line 6
    iput-object v1, p0, Lm0/w;->f:[B

    .line 7
    iput-boolean v0, p0, Lm0/w;->i:Z

    .line 8
    iput-boolean v0, p0, Lm0/w;->j:Z

    .line 9
    iput-boolean v0, p0, Lm0/w;->k:Z

    .line 10
    iput v0, p0, Lm0/w;->l:I

    .line 11
    new-instance v0, Lm0/w$a;

    invoke-direct {v0, p0}, Lm0/w$a;-><init>(Lm0/w;)V

    iput-object v0, p0, Lm0/w;->m:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic N2(Lm0/w;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/w;->d:I

    return p0
.end method

.method public static synthetic O2(Lm0/w;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/w;->e:I

    return p0
.end method

.method public static synthetic P2(Lm0/w;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/w;->e:I

    return p1
.end method

.method public static synthetic Q2(Lm0/w;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/w;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/w;->e:I

    return v0
.end method

.method public static synthetic R2(Lm0/w;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm0/w;->W2()V

    return-void
.end method

.method public static synthetic S2(Lm0/w;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/w;->l:I

    return p0
.end method

.method public static synthetic T2(Lm0/w;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/w;->l:I

    return p1
.end method

.method public static synthetic U2(Lm0/w;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/w;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/w;->l:I

    return v0
.end method


# virtual methods
.method public K2()V
    .locals 0

    return-void
.end method

.method public L2()V
    .locals 1

    .line 1
    iget v0, p0, Lm0/w;->d:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm0/w;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lm0/w;->d:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lm0/w;->g:[B

    const/4 v0, 0x0

    .line 5
    sput v0, Lm0/b;->e:I

    return-void
.end method

.method public V2()V
    .locals 6

    .line 1
    sget v0, Lk0/nt;->a:I

    const v1, 0x810126

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 2
    fill-array-data v1, :array_0

    .line 3
    invoke-static {v1}, Lz/k;->q([B)V

    .line 4
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WR OBD Update---->: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-static {v1, v5, v0}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_1

    .line 6
    sget-object v1, Ll0/z;->a:Ll0/a;

    invoke-static {v0}, Ll0/a;->d([I)V

    :goto_0
    return-void

    :array_0
    .array-data 1
        0x19t
        0x78t
        0x2t
        0x17t
    .end array-data

    :array_1
    .array-data 4
        0xe9
        0x19
        0x78
        0x2
        0x17
    .end array-data
.end method

.method public final W2()V
    .locals 2

    const-string v0, "CAN"

    const-string v1, "REQUEST MCU TO CANBUS UPDATE"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lm0/d;->f()V

    return-void
.end method

.method public varargs X2([B)V
    .locals 5

    .line 1
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x0

    const v2, 0x810126

    if-ne v0, v2, :cond_0

    .line 2
    invoke-static {p1}, Lz/k;->q([B)V

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WR OBD Update ---->: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-static {p1, v1, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_0
    array-length v0, p1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 5
    new-array v3, v0, [I

    const/16 v4, -0x17

    .line 6
    aput v4, v3, v1

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit8 v1, v2, -0x1

    .line 7
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    sget-object p1, Ll0/z;->a:Ll0/a;

    invoke-static {v3}, Ll0/a;->d([I)V

    :goto_1
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 4

    const-string p2, "size == 0 or not 136*n"

    const-string p3, "CAN"

    if-eqz p1, :cond_0

    goto/16 :goto_7

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm0/w;->W2()V

    if-eqz p4, :cond_5

    .line 2
    array-length p1, p4

    if-lez p1, :cond_5

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    aget-object p4, p4, v2

    invoke-direct {v3, p4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p1, v1, [I

    const/4 p2, 0x5

    aput p2, p1, v2

    .line 7
    invoke-static {v0, p1}, Lm0/d;->j(I[I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    const/high16 p2, 0x200000

    if-le p1, p2, :cond_2

    :try_start_3
    const-string p1, "to large"

    .line 10
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v1, [I

    const/4 p2, 0x6

    aput p2, p1, v2

    .line 11
    invoke-static {v0, p1}, Lm0/d;->j(I[I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    .line 14
    :cond_2
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "size = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iput p1, p0, Lm0/w;->h:I

    new-array p1, p1, [B

    iput-object p1, p0, Lm0/w;->g:[B

    .line 16
    invoke-virtual {v3, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 17
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-string p1, "requestUpdate"

    .line 19
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sput v1, Lm0/b;->e:I

    .line 21
    invoke-virtual {p0}, Lm0/w;->W2()V

    const-wide/16 p1, 0x64

    .line 22
    invoke-static {p1, p2}, La/i;->a0(J)V

    .line 23
    iput-boolean v1, p0, Lm0/w;->i:Z

    .line 24
    iput v2, p0, Lm0/w;->e:I

    iput v2, p0, Lm0/w;->d:I

    iput v2, p0, Lm0/w;->l:I

    .line 25
    iget-object p1, p0, Lm0/w;->m:Ljava/lang/Runnable;

    invoke-static {p1}, Lm0/d;->b(Ljava/lang/Runnable;)V

    goto :goto_7

    :catch_3
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v3, p1

    move-object p1, p2

    goto :goto_5

    :catch_4
    move-exception p2

    move-object v3, p1

    move-object p1, p2

    .line 26
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v1, [I

    const/4 p2, 0x4

    aput p2, p1, v2

    .line 28
    invoke-static {v0, p1}, Lm0/d;->j(I[I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_3

    .line 29
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    return-void

    :catchall_1
    move-exception p1

    :goto_5
    if-eqz v3, :cond_4

    .line 31
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    :catch_6
    move-exception p2

    .line 32
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    :cond_4
    :goto_6
    throw p1

    :cond_5
    :goto_7
    return-void
.end method

.method public b([B)V
    .locals 11

    .line 1
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x0

    const v2, 0x810126

    if-ne v0, v2, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OBD Update Rcv--> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-static {p1, v1, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_17

    .line 3
    array-length v0, p1

    if-lez v0, :cond_17

    iget-boolean v0, p0, Lm0/w;->i:Z

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lm0/w;->c:I

    array-length v2, p1

    add-int/2addr v0, v2

    const/16 v2, 0x400

    if-le v0, v2, :cond_2

    .line 5
    iput v1, p0, Lm0/w;->c:I

    .line 6
    :cond_2
    iget-object v0, p0, Lm0/w;->a:[B

    iget v2, p0, Lm0/w;->c:I

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lm0/w;->c:I

    array-length v2, p1

    add-int/2addr v0, v2

    iput v0, p0, Lm0/w;->c:I

    .line 8
    array-length v0, p1

    invoke-static {p1, v1, v0}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CAN"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Lm0/w;->a:[B

    iget v2, p0, Lm0/w;->c:I

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, p1, v3

    const/16 v4, -0x56

    const/4 v5, 0x1

    if-eq v3, v4, :cond_16

    const/16 v6, 0x45

    const/16 v7, 0x52

    const/4 v8, 0x2

    if-eq v3, v6, :cond_11

    const/16 v6, 0x53

    if-eq v3, v6, :cond_9

    const/16 v6, 0x55

    if-eq v3, v6, :cond_3

    .line 10
    iget-boolean p1, p0, Lm0/w;->k:Z

    if-eqz p1, :cond_17

    iput-boolean v1, p0, Lm0/w;->k:Z

    goto/16 :goto_0

    :cond_3
    if-lt v2, v8, :cond_4

    add-int/lit8 v3, v2, -0x2

    .line 11
    aget-byte p1, p1, v3

    if-eq p1, v4, :cond_5

    :cond_4
    if-ne v2, v5, :cond_7

    iget-boolean p1, p0, Lm0/w;->k:Z

    if-eqz p1, :cond_7

    .line 12
    :cond_5
    iput-boolean v1, p0, Lm0/w;->k:Z

    const-string p1, "CAN\u76d2\u672a\u8fdb\u5347\u7ea7\u6a21\u5f0f"

    .line 13
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget p1, p0, Lm0/w;->d:I

    if-nez p1, :cond_6

    new-array p1, v5, [I

    aput v5, p1, v1

    .line 15
    invoke-static {v8, p1}, Lm0/d;->j(I[I)V

    :cond_6
    return-void

    .line 16
    :cond_7
    iget p1, p0, Lm0/w;->d:I

    if-nez p1, :cond_8

    .line 17
    iput v5, p0, Lm0/w;->d:I

    .line 18
    invoke-virtual {p0}, Lm0/w;->V2()V

    const-string p1, "\u5f00\u59cb\u5347\u7ea7 1"

    .line 19
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v5, [I

    aput v5, p1, v1

    .line 20
    invoke-static {v8, p1}, Lm0/d;->j(I[I)V

    .line 21
    :cond_8
    iput v1, p0, Lm0/w;->c:I

    goto/16 :goto_0

    .line 22
    :cond_9
    iget-boolean v3, p0, Lm0/w;->k:Z

    if-eqz v3, :cond_a

    iput-boolean v1, p0, Lm0/w;->k:Z

    :cond_a
    if-lt v2, v8, :cond_b

    sub-int/2addr v2, v8

    .line 23
    aget-byte p1, p1, v2

    const/16 v2, 0x42

    if-ne p1, v2, :cond_b

    const-string p1, "\u5f00\u59cb\u5347\u7ea7 2"

    .line 24
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v5, [I

    aput v5, p1, v1

    .line 25
    invoke-static {v8, p1}, Lm0/d;->j(I[I)V

    .line 26
    :cond_b
    iget p1, p0, Lm0/w;->c:I

    const-string v2, "/"

    const-string v3, "\u5347\u7ea7\u4e2d  "

    const/16 v4, 0x64

    const/16 v6, 0x88

    if-lt p1, v8, :cond_e

    iget-object v9, p0, Lm0/w;->a:[B

    sub-int/2addr p1, v8

    aget-byte p1, v9, p1

    if-ne p1, v7, :cond_e

    .line 27
    iget p1, p0, Lm0/w;->d:I

    if-lt p1, v5, :cond_d

    sub-int/2addr p1, v8

    add-int/lit8 v7, p1, 0x1

    mul-int/lit16 v9, v7, 0x88

    .line 28
    iget v10, p0, Lm0/w;->h:I

    if-gt v9, v10, :cond_d

    .line 29
    iget-object v9, p0, Lm0/w;->g:[B

    mul-int/2addr p1, v6

    iget-object v10, p0, Lm0/w;->f:[B

    invoke-static {v9, p1, v10, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget p1, p0, Lm0/w;->h:I

    div-int/2addr p1, v6

    if-ne v7, p1, :cond_c

    .line 31
    iput-boolean v5, p0, Lm0/w;->j:Z

    .line 32
    :cond_c
    iget-object p1, p0, Lm0/w;->f:[B

    invoke-virtual {p0, p1}, Lm0/w;->X2([B)V

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lm0/w;->h:I

    div-int/2addr v2, v6

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v5, [I

    aput v8, p1, v1

    .line 34
    invoke-static {v8, p1}, Lm0/d;->j(I[I)V

    new-array p1, v5, [I

    aput v4, p1, v1

    .line 35
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    new-array p1, v5, [I

    mul-int/2addr v7, v4

    .line 36
    iget v0, p0, Lm0/w;->h:I

    div-int/2addr v0, v6

    div-int/2addr v7, v0

    aput v7, p1, v1

    invoke-static {v1, p1}, Lm0/d;->j(I[I)V

    .line 37
    :cond_d
    iput v1, p0, Lm0/w;->c:I

    goto/16 :goto_0

    .line 38
    :cond_e
    iget p1, p0, Lm0/w;->d:I

    if-lt p1, v5, :cond_10

    add-int/2addr p1, v5

    .line 39
    iput p1, p0, Lm0/w;->d:I

    sub-int/2addr p1, v8

    add-int/lit8 v7, p1, 0x1

    mul-int/lit16 v9, v7, 0x88

    .line 40
    iget v10, p0, Lm0/w;->h:I

    if-gt v9, v10, :cond_10

    .line 41
    iget-object v9, p0, Lm0/w;->g:[B

    mul-int/2addr p1, v6

    iget-object v10, p0, Lm0/w;->f:[B

    invoke-static {v9, p1, v10, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget p1, p0, Lm0/w;->h:I

    div-int/2addr p1, v6

    if-ne v7, p1, :cond_f

    .line 43
    iput-boolean v5, p0, Lm0/w;->j:Z

    .line 44
    :cond_f
    iget-object p1, p0, Lm0/w;->f:[B

    invoke-virtual {p0, p1}, Lm0/w;->X2([B)V

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lm0/w;->h:I

    div-int/2addr v2, v6

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v5, [I

    aput v8, p1, v1

    .line 46
    invoke-static {v8, p1}, Lm0/d;->j(I[I)V

    new-array p1, v5, [I

    aput v4, p1, v1

    .line 47
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    new-array p1, v5, [I

    mul-int/2addr v7, v4

    .line 48
    iget v0, p0, Lm0/w;->h:I

    div-int/2addr v0, v6

    div-int/2addr v7, v0

    aput v7, p1, v1

    invoke-static {v1, p1}, Lm0/d;->j(I[I)V

    .line 49
    :cond_10
    iput v1, p0, Lm0/w;->c:I

    goto :goto_0

    .line 50
    :cond_11
    iget-boolean v3, p0, Lm0/w;->k:Z

    if-eqz v3, :cond_12

    iput-boolean v1, p0, Lm0/w;->k:Z

    .line 51
    :cond_12
    iget v3, p0, Lm0/w;->d:I

    if-ne v3, v5, :cond_13

    .line 52
    iput v1, p0, Lm0/w;->d:I

    return-void

    :cond_13
    if-lt v2, v8, :cond_14

    sub-int/2addr v2, v8

    .line 53
    aget-byte p1, p1, v2

    if-ne p1, v7, :cond_14

    const-string p1, "\u5347\u7ea7\u51fa\u9519"

    .line 54
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v5, [I

    const/4 v2, 0x4

    aput v2, p1, v1

    .line 55
    invoke-static {v8, p1}, Lm0/d;->j(I[I)V

    .line 56
    :cond_14
    iget-boolean p1, p0, Lm0/w;->j:Z

    if-eqz p1, :cond_15

    const-string p1, "\u5347\u7ea7\u5b8c\u6210"

    .line 57
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v5, [I

    const/4 v0, 0x3

    aput v0, p1, v1

    .line 58
    invoke-static {v8, p1}, Lm0/d;->j(I[I)V

    .line 59
    :cond_15
    iput v1, p0, Lm0/w;->c:I

    goto :goto_0

    .line 60
    :cond_16
    iput-boolean v5, p0, Lm0/w;->k:Z

    :cond_17
    :goto_0
    return-void
.end method

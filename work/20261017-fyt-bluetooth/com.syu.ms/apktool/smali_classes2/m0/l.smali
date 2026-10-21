.class public Lm0/l;
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

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lm0/l;->a:[B

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lm0/l;->b:Z

    .line 4
    iput v0, p0, Lm0/l;->c:I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lm0/l;->d:I

    iput v0, p0, Lm0/l;->e:I

    const/16 v0, 0x88

    new-array v0, v0, [B

    .line 6
    iput-object v0, p0, Lm0/l;->f:[B

    .line 7
    new-instance v0, Lm0/l$a;

    invoke-direct {v0, p0}, Lm0/l$a;-><init>(Lm0/l;)V

    iput-object v0, p0, Lm0/l;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic N2(Lm0/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/l;->d:I

    return p0
.end method

.method public static synthetic O2(Lm0/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/l;->e:I

    return p0
.end method

.method public static synthetic P2(Lm0/l;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/l;->e:I

    return p1
.end method

.method public static synthetic Q2(Lm0/l;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/l;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/l;->e:I

    return v0
.end method

.method public static synthetic R2(Lm0/l;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm0/l;->S2()V

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
    iget v0, p0, Lm0/l;->d:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm0/l;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lm0/l;->d:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lm0/l;->g:[B

    const/4 v0, 0x0

    .line 5
    sput v0, Lm0/b;->e:I

    return-void
.end method

.method public final S2()V
    .locals 2

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, "UI\u8bf7\u6c42\u8fdb\u5165can\u5347\u7ea7\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lm0/d;->f()V

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    goto/16 :goto_8

    .line 1
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u4f4d\u7f6e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    aget-object v0, p4, p3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    .line 2
    array-length p1, p4

    if-lez p1, :cond_6

    const/4 p1, 0x0

    const/4 p2, 0x2

    const/4 v0, 0x1

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    aget-object p4, p4, p3

    invoke-direct {v1, p4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    rem-int/lit16 p4, p1, 0x88

    if-eqz p4, :cond_1

    goto :goto_2

    :cond_1
    const/high16 p4, 0x200000

    if-le p1, p4, :cond_2

    new-array p1, v0, [I

    const/4 p4, 0x6

    aput p4, p1, p3

    .line 6
    invoke-static {p2, p1}, Lm0/d;->j(I[I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 9
    :cond_2
    :try_start_3
    iput p1, p0, Lm0/l;->h:I

    new-array p1, p1, [B

    iput-object p1, p0, Lm0/l;->g:[B

    .line 10
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :goto_1
    sput v0, Lm0/b;->e:I

    .line 14
    invoke-virtual {p0}, Lm0/l;->S2()V

    .line 15
    iput p3, p0, Lm0/l;->e:I

    iput p3, p0, Lm0/l;->d:I

    .line 16
    iget-object p1, p0, Lm0/l;->i:Ljava/lang/Runnable;

    invoke-static {p1}, Lm0/d;->b(Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_3
    :goto_2
    :try_start_5
    new-array p1, v0, [I

    const/4 p4, 0x5

    aput p4, p1, p3

    .line 17
    invoke-static {p2, p1}, Lm0/d;->j(I[I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 18
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void

    :catch_3
    move-exception p1

    goto :goto_4

    :catchall_0
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_6

    :catch_4
    move-exception p4

    move-object v1, p1

    move-object p1, p4

    .line 20
    :goto_4
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p1, v0, [I

    const/4 p4, 0x4

    aput p4, p1, p3

    .line 21
    invoke-static {p2, p1}, Lm0/d;->j(I[I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_4

    .line 22
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_5
    return-void

    :catchall_1
    move-exception p1

    :goto_6
    if-eqz v1, :cond_5

    .line 24
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_7

    :catch_6
    move-exception p2

    .line 25
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :cond_5
    :goto_7
    throw p1

    :cond_6
    :goto_8
    return-void
.end method

.method public b([B)V
    .locals 7

    if-eqz p1, :cond_a

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lm0/l;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lm0/l;->c:I

    .line 4
    :cond_1
    iget-object v0, p0, Lm0/l;->a:[B

    iget v1, p0, Lm0/l;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget v0, p0, Lm0/l;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lm0/l;->c:I

    .line 6
    iget-object p1, p0, Lm0/l;->a:[B

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p1, v1

    const/16 v3, 0x45

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v3, :cond_7

    const/16 v3, 0x53

    if-eq v1, v3, :cond_4

    const/16 p1, 0x55

    if-eq v1, p1, :cond_2

    goto/16 :goto_0

    .line 7
    :cond_2
    iget p1, p0, Lm0/l;->d:I

    if-nez p1, :cond_3

    .line 8
    iput v6, p0, Lm0/l;->d:I

    const/4 p1, 0x7

    new-array v0, p1, [B

    .line 9
    fill-array-data v0, :array_0

    new-array p1, p1, [B

    .line 10
    fill-array-data p1, :array_1

    .line 11
    invoke-static {v0}, Lm0/d;->m([B)V

    .line 12
    invoke-static {p1}, Lm0/d;->m([B)V

    new-array p1, v4, [B

    .line 13
    fill-array-data p1, :array_2

    invoke-static {p1}, Lm0/d;->m([B)V

    new-array p1, v6, [I

    aput v6, p1, v2

    .line 14
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    .line 15
    :cond_3
    iput v2, p0, Lm0/l;->c:I

    goto :goto_0

    :cond_4
    if-lt v0, v5, :cond_5

    sub-int/2addr v0, v5

    .line 16
    aget-byte p1, p1, v0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    new-array p1, v6, [I

    aput v6, p1, v2

    .line 17
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    .line 18
    :cond_5
    iget p1, p0, Lm0/l;->d:I

    if-lt p1, v6, :cond_6

    add-int/2addr p1, v6

    .line 19
    iput p1, p0, Lm0/l;->d:I

    sub-int/2addr p1, v5

    add-int/lit8 v0, p1, 0x1

    mul-int/lit16 v1, v0, 0x88

    .line 20
    iget v3, p0, Lm0/l;->h:I

    if-gt v1, v3, :cond_6

    .line 21
    iget-object v1, p0, Lm0/l;->g:[B

    const/16 v3, 0x88

    mul-int/2addr p1, v3

    iget-object v4, p0, Lm0/l;->f:[B

    invoke-static {v1, p1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iget-object p1, p0, Lm0/l;->f:[B

    invoke-static {p1}, Lm0/d;->m([B)V

    new-array p1, v6, [I

    aput v5, p1, v2

    .line 23
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    new-array p1, v6, [I

    const/16 v1, 0x64

    aput v1, p1, v2

    .line 24
    invoke-static {v6, p1}, Lm0/d;->j(I[I)V

    new-array p1, v6, [I

    mul-int/2addr v0, v1

    .line 25
    iget v1, p0, Lm0/l;->h:I

    div-int/2addr v1, v3

    div-int/2addr v0, v1

    aput v0, p1, v2

    invoke-static {v2, p1}, Lm0/d;->j(I[I)V

    .line 26
    :cond_6
    iput v2, p0, Lm0/l;->c:I

    goto :goto_0

    :cond_7
    if-lt v0, v5, :cond_8

    sub-int/2addr v0, v5

    .line 27
    aget-byte p1, p1, v0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_8

    new-array p1, v6, [I

    aput v4, p1, v2

    .line 28
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    .line 29
    :cond_8
    iget p1, p0, Lm0/l;->d:I

    if-lt p1, v6, :cond_9

    new-array p1, v6, [I

    const/4 v0, 0x3

    aput v0, p1, v2

    .line 30
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    .line 31
    :cond_9
    iput v2, p0, Lm0/l;->c:I

    .line 32
    sput v2, Lm0/b;->e:I

    :cond_a
    :goto_0
    return-void

    nop

    :array_0
    .array-data 1
        0x5at
        -0x5bt
        0x2t
        -0x20t
        0x0t
        0x0t
        -0x1ft
    .end array-data

    :array_1
    .array-data 1
        -0x56t
        0x55t
        0x2t
        -0x20t
        0x0t
        0x0t
        -0x1ft
    .end array-data

    :array_2
    .array-data 1
        0x19t
        0x78t
        0x2t
        0x17t
    .end array-data
.end method

.class public Lp1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/a;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Lcom/syu/jni/I2c6225VideoJni;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lp1/b;->c:I

    .line 3
    new-instance v0, Lcom/syu/jni/I2c6225VideoJni;

    invoke-direct {v0}, Lcom/syu/jni/I2c6225VideoJni;-><init>()V

    iput-object v0, p0, Lp1/b;->d:Lcom/syu/jni/I2c6225VideoJni;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lp1/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lp1/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lp1/b;->f(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "I2c error: dev path is NULL!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp1/b;->b:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lp1/b;->a:I

    return v0
.end method

.method public close()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lp1/b;->a:I

    return-void
.end method

.method public varargs declared-synchronized d(I[I[I)I
    .locals 6

    monitor-enter p0

    if-eqz p2, :cond_4

    .line 1
    :try_start_0
    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    if-eqz p3, :cond_3

    .line 2
    array-length p1, p3

    if-ne p1, v0, :cond_3

    .line 3
    iget p1, p0, Lp1/b;->a:I

    if-lez p1, :cond_2

    iget p1, p0, Lp1/b;->c:I

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    aget p2, p2, v1

    int-to-byte p2, p2

    .line 5
    aget p3, p3, v1

    .line 6
    iget-object v2, p0, Lp1/b;->d:Lcom/syu/jni/I2c6225VideoJni;

    int-to-byte v3, p3

    invoke-virtual {v2, p2, v3, p1}, Lcom/syu/jni/I2c6225VideoJni;->lsecVideoI2cWrite(BBI)I

    move-result p1

    if-gez p1, :cond_1

    const-string v2, "S6225I2c"

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "csi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lp1/b;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " I2C Error:  write regs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " %02X  %02X"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " result:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    monitor-exit p0

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    .line 9
    monitor-exit p0

    return p1

    .line 10
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "I2c Write params most be 1!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "I2c Write Reg Size most be 1!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized e(IIZ[I)[I
    .locals 7

    monitor-enter p0

    if-eqz p4, :cond_5

    .line 1
    :try_start_0
    array-length p2, p4

    const/4 p3, 0x1

    if-ne p2, p3, :cond_5

    .line 2
    iget p2, p0, Lp1/b;->a:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-lez p2, :cond_4

    iget p2, p0, Lp1/b;->c:I

    if-gez p2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    aget p4, p4, v1

    int-to-byte p4, p4

    .line 4
    new-array v2, p1, [B

    .line 5
    iget-object v3, p0, Lp1/b;->d:Lcom/syu/jni/I2c6225VideoJni;

    invoke-virtual {v3, p4, v2, p2}, Lcom/syu/jni/I2c6225VideoJni;->lsecVideoI2cRead(B[BI)I

    move-result p2

    if-gez p2, :cond_1

    const-string v3, "S6225I2c"

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "csi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lp1/b;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " read reg: %02X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p4

    aput-object p4, p3, v1

    invoke-static {v5, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  readlen:"

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " result:"

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " read Data: "

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v1, p1}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    invoke-static {p1}, Lo1/s0;->a(I)[I

    move-result-object p1

    .line 8
    :goto_0
    array-length p3, p1

    if-ge v1, p3, :cond_3

    if-gez p2, :cond_2

    move p3, v0

    goto :goto_1

    .line 9
    :cond_2
    aget-byte p3, v2, v1

    :goto_1
    aput p3, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_3
    monitor-exit p0

    return-object p1

    :cond_4
    :goto_2
    :try_start_1
    new-array p1, p3, [I

    aput v0, p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-object p1

    .line 12
    :cond_5
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "I2c Read Reg Size most be 1!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput p1, p0, Lp1/b;->a:I

    return p1
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lp1/b;->c:I

    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp1/b;->b:Ljava/lang/String;

    return-object v0
.end method

.class public Lo1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/a;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/n;->b:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lo1/n;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lo1/n;->f(Ljava/lang/String;)I

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
    iput-object p1, p0, Lo1/n;->b:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lo1/n;->a:I

    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget v0, p0, Lo1/n;->a:I

    if-lez v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/syu/jni/JniSerial;->close(I)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lo1/n;->a:I

    :cond_0
    return-void
.end method

.method public varargs declared-synchronized d(I[I[I)I
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    array-length v6, p2

    new-array v7, v6, [B

    const/4 v8, 0x0

    move v0, v8

    .line 2
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 3
    aget v1, p2, v0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    array-length p2, p3

    new-array v9, p2, [B

    move v0, v8

    .line 5
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 6
    aget v1, p3, v0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_1
    iget v0, p0, Lo1/n;->a:I

    move v1, p1

    move-object v2, v7

    move v3, v6

    move-object v4, v9

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/syu/jni/JniI2c;->writeNormal(II[BI[BI)I

    move-result p1

    if-gez p1, :cond_2

    const-string p3, "i2cW"

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo1/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " I2C Error:  write regs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8, v6}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v8, p2}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " result:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_2
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized e(IIZ[I)[I
    .locals 10

    monitor-enter p0

    if-eqz p4, :cond_6

    .line 1
    :try_start_0
    array-length v0, p4

    if-lez v0, :cond_6

    .line 2
    iget v0, p0, Lo1/n;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v1, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    array-length v0, p4

    new-array v9, v0, [B

    move v3, v2

    .line 4
    :goto_0
    array-length v4, p4

    if-ge v3, v4, :cond_1

    .line 5
    aget v4, p4, v3

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-array p4, p1, [B

    if-eqz p3, :cond_2

    .line 7
    iget v3, p0, Lo1/n;->a:I

    move v4, p2

    move-object v5, v9

    move v6, v0

    move-object v7, p4

    move v8, p1

    invoke-static/range {v3 .. v8}, Lcom/syu/jni/JniI2c;->readNormalStopHave(II[BI[BI)I

    move-result p2

    goto :goto_1

    .line 8
    :cond_2
    iget v3, p0, Lo1/n;->a:I

    move v4, p2

    move-object v5, v9

    move v6, v0

    move-object v7, p4

    move v8, p1

    invoke-static/range {v3 .. v8}, Lcom/syu/jni/JniI2c;->readNormalStopNo(II[BI[BI)I

    move-result p2

    :goto_1
    if-gez p2, :cond_3

    const-string p3, "i2cW"

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  read regs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v2, v0}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  readlen:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " result:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " read Data: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4, v2, p1}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_3
    invoke-static {p1}, Lo1/s0;->a(I)[I

    move-result-object p1

    .line 11
    :goto_2
    array-length p3, p1

    if-ge v2, p3, :cond_5

    if-gez p2, :cond_4

    move p3, v1

    goto :goto_3

    .line 12
    :cond_4
    aget-byte p3, p4, v2

    :goto_3
    aput p3, p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 13
    :cond_5
    monitor-exit p0

    return-object p1

    .line 14
    :cond_6
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "I2c Read RegAddr Can\'t be NULL!!"

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
    .locals 1

    .line 1
    iget v0, p0, Lo1/n;->a:I

    if-lez v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/syu/jni/JniSerial;->close(I)V

    .line 3
    :cond_0
    iput-object p1, p0, Lo1/n;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/syu/jni/JniI2c;->open(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo1/n;->a:I

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "open I2c Device Path:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo1/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lo1/n;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " i2c: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "I2c"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget p1, p0, Lo1/n;->a:I

    return p1
.end method

.method public g(II)I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    .line 1
    invoke-virtual {p0, v0, p1, v2, v1}, Lo1/n;->e(IIZ[I)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    array-length p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    aget p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized h(III)I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    new-array p2, v0, [I

    aput p3, p2, v2

    .line 1
    invoke-virtual {p0, p1, v1, p2}, Lo1/n;->d(I[I[I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

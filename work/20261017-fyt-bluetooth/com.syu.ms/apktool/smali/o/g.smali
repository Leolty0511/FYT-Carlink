.class public final Lo/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/Thread;

.field public final b:[Landroid/os/ParcelFileDescriptor;

.field public c:Ljava/io/FileDescriptor;

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "TransferPipe"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lo/g;->a:Ljava/lang/Thread;

    .line 3
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lo/g;->b:[Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/g;->b:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    iget-object v0, p0, Lo/g;->b:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_0
    return-void
.end method

.method public b()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/g;->b:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public c()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/g;->b:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public d(Ljava/io/FileDescriptor;)V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lo/g;->e(Ljava/io/FileDescriptor;J)V

    return-void
.end method

.method public e(Ljava/io/FileDescriptor;J)V
    .locals 2

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iput-object p1, p0, Lo/g;->c:Ljava/io/FileDescriptor;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lo/g;->d:J

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lo/g;->a(I)V

    .line 5
    iget-object p1, p0, Lo/g;->a:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 6
    :catch_0
    :goto_0
    iget-object p1, p0, Lo/g;->e:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-boolean p2, p0, Lo/g;->f:Z

    if-nez p2, :cond_1

    .line 7
    iget-wide p1, p0, Lo/g;->d:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    .line 8
    :try_start_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 9
    :cond_0
    :try_start_3
    iget-object p1, p0, Lo/g;->a:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 10
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Timeout"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p1, :cond_2

    .line 11
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    invoke-virtual {p0}, Lo/g;->f()V

    return-void

    .line 13
    :cond_2
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    iget-object p2, p0, Lo/g;->e:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 15
    invoke-virtual {p0}, Lo/g;->f()V

    throw p1
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lo/g;->a(I)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lo/g;->a(I)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/g;->g:Ljava/lang/String;

    return-void
.end method

.method public run()V
    .locals 13

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lo/g;->b()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 2
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lo/g;->c:Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3
    iget-object v3, p0, Lo/g;->g:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v5, v4

    .line 5
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_a

    const/4 v7, 0x0

    if-nez v3, :cond_2

    .line 6
    invoke-virtual {v2, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    move v8, v7

    move v9, v8

    :goto_2
    if-ge v8, v6, :cond_9

    .line 7
    aget-byte v10, v0, v8

    const/16 v11, 0xa

    if-eq v10, v11, :cond_8

    if-le v8, v9, :cond_3

    sub-int v10, v8, v9

    .line 8
    invoke-virtual {v2, v0, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V

    :cond_3
    if-eqz v5, :cond_4

    .line 9
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    move v5, v7

    :cond_4
    move v9, v8

    :cond_5
    add-int/2addr v9, v4

    if-ge v9, v6, :cond_6

    .line 10
    aget-byte v10, v0, v9

    if-ne v10, v11, :cond_5

    :cond_6
    if-ge v9, v6, :cond_7

    move v5, v4

    :cond_7
    move v12, v9

    move v9, v8

    move v8, v12

    :cond_8
    add-int/2addr v8, v4

    goto :goto_2

    :cond_9
    if-le v6, v9, :cond_1

    sub-int/2addr v6, v9

    .line 11
    invoke-virtual {v2, v0, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 12
    :cond_a
    iget-object v0, p0, Lo/g;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    monitor-enter p0

    .line 14
    :try_start_1
    iput-boolean v4, p0, Lo/g;->f:Z

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    .line 17
    monitor-enter p0

    .line 18
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/g;->e:Ljava/lang/String;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 20
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 21
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

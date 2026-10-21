.class public Landroid/util/jar/StrictJarFile$FDStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FDStream"
.end annotation


# instance fields
.field private endOffset:J

.field private final fd:Ljava/io/FileDescriptor;

.field private offset:J


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    .line 5
    .line 6
    iput-wide p2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    .line 7
    .line 8
    iput-wide p4, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read()I
    .locals 1

    .line 1
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 7

    .line 2
    iget-object v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    iget-wide v3, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v1, v3

    int-to-long v5, p3

    cmp-long v5, v5, v1

    if-lez v5, :cond_0

    long-to-int p3, v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v1, v3, v4, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, p1, p2, p3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result p1

    if-lez p1, :cond_1

    .line 6
    iget-wide p2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    int-to-long v1, p1

    add-long/2addr p2, v1

    iput-wide p2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    .line 7
    monitor-exit v0

    return p1

    .line 8
    :cond_1
    monitor-exit v0

    const/4 p1, -0x1

    return p1

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public skip(J)J
    .locals 6

    .line 1
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    .line 2
    .line 3
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    .line 4
    .line 5
    sub-long v4, v0, v2

    .line 6
    .line 7
    cmp-long v4, p1, v4

    .line 8
    .line 9
    if-lez v4, :cond_0

    .line 10
    .line 11
    sub-long p1, v0, v2

    .line 12
    .line 13
    :cond_0
    add-long/2addr v2, p1

    .line 14
    iput-wide v2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    .line 15
    .line 16
    return-wide p1
.end method

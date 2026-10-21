.class Landroid/os/RevocableFileDescriptor$1;
.super Landroid/os/ProxyFileDescriptorCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RevocableFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/RevocableFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/os/RevocableFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-direct {p0}, Landroid/os/ProxyFileDescriptorCallback;-><init>()V

    return-void
.end method

.method private checkRevoked()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->access$000(Landroid/os/RevocableFileDescriptor;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroid/system/ErrnoException;

    .line 11
    .line 12
    const-string v1, "RevocableFileDescriptor"

    .line 13
    .line 14
    sget v2, Landroid/system/OsConstants;->EPERM:I

    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method


# virtual methods
.method public onFsync()V
    .locals 2

    .line 1
    const-string v0, "RevocableFileDescriptor"

    .line 2
    .line 3
    const-string/jumbo v1, "onFsync()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->access$100(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onGetSize()J
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->access$100(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J

    .line 15
    .line 16
    return-wide v0
.end method

.method public onRead(JI[B)I
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    if-ge v0, p3, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/os/RevocableFileDescriptor;->access$100(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sub-int v4, p3, v0

    .line 14
    .line 15
    int-to-long v2, v0

    .line 16
    add-long v5, p1, v2

    .line 17
    .line 18
    move-object v2, p4

    .line 19
    move v3, v0

    .line 20
    invoke-static/range {v1 .. v6}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    .line 21
    .line 22
    .line 23
    move-result p1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    add-int/2addr v0, p1

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception v1

    .line 27
    iget v1, v1, Ljava/io/InterruptedIOException;->bytesTransferred:I

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :goto_1
    return v0
.end method

.method public onRelease()V
    .locals 2

    .line 1
    const-string v0, "RevocableFileDescriptor"

    .line 2
    .line 3
    const-string/jumbo v1, "onRelease()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Landroid/os/RevocableFileDescriptor;->access$002(Landroid/os/RevocableFileDescriptor;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->access$100(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onWrite(JI[B)I
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    if-ge v0, p3, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/os/RevocableFileDescriptor;->access$100(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sub-int v4, p3, v0

    .line 14
    .line 15
    int-to-long v2, v0

    .line 16
    add-long v5, p1, v2

    .line 17
    .line 18
    move-object v2, p4

    .line 19
    move v3, v0

    .line 20
    invoke-static/range {v1 .. v6}, Landroid/system/Os;->pwrite(Ljava/io/FileDescriptor;[BIIJ)I

    .line 21
    .line 22
    .line 23
    move-result p1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    add-int/2addr v0, p1

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception v1

    .line 27
    iget v1, v1, Ljava/io/InterruptedIOException;->bytesTransferred:I

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :goto_1
    return v0
.end method

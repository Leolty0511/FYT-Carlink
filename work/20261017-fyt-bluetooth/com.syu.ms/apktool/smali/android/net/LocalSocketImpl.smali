.class Landroid/net/LocalSocketImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LocalSocketImpl$SocketOutputStream;,
        Landroid/net/LocalSocketImpl$SocketInputStream;
    }
.end annotation


# instance fields
.field private fd:Ljava/io/FileDescriptor;

.field private fis:Landroid/net/LocalSocketImpl$SocketInputStream;

.field private fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

.field public inboundFileDescriptors:[Ljava/io/FileDescriptor;

.field private mFdCreatedInternally:Z

.field public outboundFileDescriptors:[Ljava/io/FileDescriptor;

.field private readMonitor:Ljava/lang/Object;

.field private writeMonitor:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method private native accept(Ljava/io/FileDescriptor;Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;
.end method

.method public static synthetic access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/LocalSocketImpl;->available_native(Ljava/io/FileDescriptor;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/LocalSocketImpl;->read_native(Ljava/io/FileDescriptor;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/LocalSocketImpl;->readba_native([BIILjava/io/FileDescriptor;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/LocalSocketImpl;->writeba_native([BIILjava/io/FileDescriptor;)V

    return-void
.end method

.method public static synthetic access$700(Landroid/net/LocalSocketImpl;ILjava/io/FileDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/net/LocalSocketImpl;->write_native(ILjava/io/FileDescriptor;)V

    return-void
.end method

.method public static synthetic access$800(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/LocalSocketImpl;->pending_native(Ljava/io/FileDescriptor;)I

    move-result p0

    return p0
.end method

.method private native available_native(Ljava/io/FileDescriptor;)I
.end method

.method private native bindLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V
.end method

.method private native connectLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V
.end method

.method private native getOption_native(Ljava/io/FileDescriptor;I)I
.end method

.method private native getPeerCredentials_native(Ljava/io/FileDescriptor;)Landroid/net/Credentials;
.end method

.method private native listen_native(Ljava/io/FileDescriptor;I)V
.end method

.method private native pending_native(Ljava/io/FileDescriptor;)I
.end method

.method private native read_native(Ljava/io/FileDescriptor;)I
.end method

.method private native readba_native([BIILjava/io/FileDescriptor;)I
.end method

.method private native setOption_native(Ljava/io/FileDescriptor;III)V
.end method

.method private native shutdown(Ljava/io/FileDescriptor;Z)V
.end method

.method private native write_native(ILjava/io/FileDescriptor;)V
.end method

.method private native writeba_native([BIILjava/io/FileDescriptor;)V
.end method


# virtual methods
.method public accept(Landroid/net/LocalSocketImpl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/net/LocalSocketImpl;->accept(Ljava/io/FileDescriptor;Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p1, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Landroid/net/LocalSocketImpl;->mFdCreatedInternally:Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "socket not created"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public available()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/net/LocalSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public bind(Landroid/net/LocalSocketAddress;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getNamespace()Landroid/net/LocalSocketAddress$Namespace;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LocalSocketAddress$Namespace;->getId()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroid/net/LocalSocketImpl;->bindLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "socket not created"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/net/LocalSocketImpl;->mFdCreatedInternally:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_1
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v2}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_2
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 5
    :goto_0
    iput-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :goto_1
    iput-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public connect(Landroid/net/LocalSocketAddress;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getNamespace()Landroid/net/LocalSocketAddress$Namespace;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LocalSocketAddress$Namespace;->getId()I

    move-result p1

    invoke-direct {p0, p2, v0, p1}, Landroid/net/LocalSocketImpl;->connectLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo p2, "socket not created"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 2
    sget p1, Llibcore/io/OsConstants;->SOCK_SEQPACKET:I

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "unknown sockType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    sget p1, Llibcore/io/OsConstants;->SOCK_STREAM:I

    goto :goto_0

    .line 5
    :cond_2
    sget p1, Llibcore/io/OsConstants;->SOCK_DGRAM:I

    .line 6
    :goto_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->AF_UNIX:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 7
    iput-boolean v0, p0, Landroid/net/LocalSocketImpl;->mFdCreatedInternally:Z
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    :cond_3
    :goto_1
    return-void
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/net/LocalSocketImpl;->close()V

    return-void
.end method

.method public getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->inboundFileDescriptors:[Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Landroid/net/LocalSocketImpl;->inboundFileDescriptors:[Ljava/io/FileDescriptor;

    .line 4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fis:Landroid/net/LocalSocketImpl$SocketInputStream;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/net/LocalSocketImpl$SocketInputStream;

    invoke-direct {v0, p0}, Landroid/net/LocalSocketImpl$SocketInputStream;-><init>(Landroid/net/LocalSocketImpl;)V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->fis:Landroid/net/LocalSocketImpl$SocketInputStream;

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fis:Landroid/net/LocalSocketImpl$SocketInputStream;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_2

    const/16 v1, 0x1006

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, v0, p1}, Landroid/net/LocalSocketImpl;->getOption_native(Ljava/io/FileDescriptor;I)I

    move-result v0

    const/16 v1, 0x1001

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1002

    if-eq p1, v1, :cond_1

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "socket not created"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/net/LocalSocketImpl$SocketOutputStream;

    invoke-direct {v0, p0}, Landroid/net/LocalSocketImpl$SocketOutputStream;-><init>(Landroid/net/LocalSocketImpl;)V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPeerCredentials()Landroid/net/Credentials;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0}, Landroid/net/LocalSocketImpl;->getPeerCredentials_native(Ljava/io/FileDescriptor;)Landroid/net/Credentials;

    move-result-object v0

    return-object v0
.end method

.method public getSockAddress()Landroid/net/LocalSocketAddress;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public listen(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/net/LocalSocketImpl;->listen_native(Ljava/io/FileDescriptor;I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "socket not created"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendUrgentData(I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not impled"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/net/LocalSocketImpl;->outboundFileDescriptors:[Ljava/io/FileDescriptor;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, -0x1

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 p2, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v1, p1, v0, p2}, Landroid/net/LocalSocketImpl;->setOption_native(Ljava/io/FileDescriptor;III)V

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo p2, "socket not created"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shutdownInput()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, v0, v1}, Landroid/net/LocalSocketImpl;->shutdown(Ljava/io/FileDescriptor;Z)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutdownOutput()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Landroid/net/LocalSocketImpl;->shutdown(Ljava/io/FileDescriptor;Z)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsUrgentData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Landroid/net/LocalSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final SOCKET_DGRAM:I = 0x1

.field public static final SOCKET_SEQPACKET:I = 0x3

.field public static final SOCKET_STREAM:I = 0x2

.field static final SOCKET_UNKNOWN:I


# instance fields
.field private final impl:Landroid/net/LocalSocketImpl;

.field private volatile implCreated:Z

.field private isBound:Z

.field private isConnected:Z

.field private localAddress:Landroid/net/LocalSocketAddress;

.field private final sockType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Landroid/net/LocalSocket;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    new-instance v0, Landroid/net/LocalSocketImpl;

    invoke-direct {v0}, Landroid/net/LocalSocketImpl;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/net/LocalSocket;-><init>(Landroid/net/LocalSocketImpl;I)V

    return-void
.end method

.method private constructor <init>(Landroid/net/LocalSocketImpl;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    .line 5
    iput p2, p0, Landroid/net/LocalSocket;->sockType:I

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Landroid/net/LocalSocket;->isConnected:Z

    .line 7
    iput-boolean p1, p0, Landroid/net/LocalSocket;->isBound:Z

    return-void
.end method

.method private static createConnectedLocalSocket(Landroid/net/LocalSocketImpl;I)Landroid/net/LocalSocket;
    .locals 1

    .line 2
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0, p0, p1}, Landroid/net/LocalSocket;-><init>(Landroid/net/LocalSocketImpl;I)V

    const/4 p0, 0x1

    .line 3
    iput-boolean p0, v0, Landroid/net/LocalSocket;->isConnected:Z

    .line 4
    iput-boolean p0, v0, Landroid/net/LocalSocket;->isBound:Z

    .line 5
    iput-boolean p0, v0, Landroid/net/LocalSocket;->implCreated:Z

    return-object v0
.end method

.method public static createConnectedLocalSocket(Ljava/io/FileDescriptor;)Landroid/net/LocalSocket;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/LocalSocketImpl;

    invoke-direct {v0, p0}, Landroid/net/LocalSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/net/LocalSocket;->createConnectedLocalSocket(Landroid/net/LocalSocketImpl;I)Landroid/net/LocalSocket;

    move-result-object p0

    return-object p0
.end method

.method public static createLocalSocketForAccept(Landroid/net/LocalSocketImpl;)Landroid/net/LocalSocket;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/LocalSocket;->createConnectedLocalSocket(Landroid/net/LocalSocketImpl;I)Landroid/net/LocalSocket;

    move-result-object p0

    return-object p0
.end method

.method private implCreateIfNeeded()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/net/LocalSocket;->implCreated:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v0, p0, Landroid/net/LocalSocket;->implCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    :try_start_1
    iget-object v1, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    .line 12
    .line 13
    iget v2, p0, Landroid/net/LocalSocket;->sockType:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/net/LocalSocketImpl;->create(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    :try_start_2
    iput-boolean v0, p0, Landroid/net/LocalSocket;->implCreated:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    iput-boolean v0, p0, Landroid/net/LocalSocket;->implCreated:Z

    .line 23
    .line 24
    throw v1

    .line 25
    :cond_0
    :goto_0
    monitor-exit p0

    .line 26
    goto :goto_1

    .line 27
    :catchall_1
    move-exception v0

    .line 28
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29
    throw v0

    .line 30
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public bind(Landroid/net/LocalSocketAddress;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v0, p0, Landroid/net/LocalSocket;->isBound:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Landroid/net/LocalSocket;->localAddress:Landroid/net/LocalSocketAddress;

    .line 10
    .line 11
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/net/LocalSocketImpl;->bind(Landroid/net/LocalSocketAddress;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Landroid/net/LocalSocket;->isBound:Z

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 22
    .line 23
    const-string v0, "already bound"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public connect(Landroid/net/LocalSocketAddress;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/net/LocalSocket;->isConnected:Z

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    .line 4
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/net/LocalSocketImpl;->connect(Landroid/net/LocalSocketAddress;I)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/net/LocalSocket;->isConnected:Z

    .line 6
    iput-boolean p1, p0, Landroid/net/LocalSocket;->isBound:Z

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "already connected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public connect(Landroid/net/LocalSocketAddress;I)V
    .locals 0

    .line 10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getInputStream()Ljava/io/InputStream;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getLocalSocketAddress()Landroid/net/LocalSocketAddress;
    .locals 1

    iget-object v0, p0, Landroid/net/LocalSocket;->localAddress:Landroid/net/LocalSocketAddress;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getPeerCredentials()Landroid/net/Credentials;
    .locals 1

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v0

    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 2

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRemoteSocketAddress()Landroid/net/LocalSocketAddress;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSendBufferSize()I
    .locals 2

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .locals 2

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isBound()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/net/LocalSocket;->isBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public isClosed()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/net/LocalSocket;->isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public isInputShutdown()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V
    .locals 1

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0, p1}, Landroid/net/LocalSocketImpl;->setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 2

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x1002

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/net/LocalSocketImpl;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 2

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x1001

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/net/LocalSocketImpl;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 2

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x1006

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/net/LocalSocketImpl;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public shutdownInput()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->shutdownInput()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public shutdownOutput()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->shutdownOutput()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " impl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

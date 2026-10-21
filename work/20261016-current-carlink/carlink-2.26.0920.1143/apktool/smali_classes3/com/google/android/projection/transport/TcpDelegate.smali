.class Lcom/google/android/projection/transport/TcpDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/transport/TransportFactory$TransportFactoryDelegate;


# static fields
.field private static final SOCKET_ACCEPT_TIMEOUT_MILLIS:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "AHU.TCP_CONNECTION"


# instance fields
.field private final mConnectionSocketOptions:Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;

.field private mServerSocket:Ljava/net/ServerSocket;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mServerSocketProvider:Lcom/google/android/projection/transport/ServerSocketProvider;

.field private threadRunning:Z


# direct methods
.method public constructor <init>(Lcom/google/android/projection/transport/ServerSocketProvider;Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/projection/transport/TcpDelegate;->threadRunning:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/projection/transport/TcpDelegate;->mServerSocketProvider:Lcom/google/android/projection/transport/ServerSocketProvider;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/projection/transport/TcpDelegate;->mConnectionSocketOptions:Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/transport/TcpDelegate;)Ljava/net/ServerSocket;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/transport/TcpDelegate;->mServerSocket:Ljava/net/ServerSocket;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/projection/transport/TcpDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/projection/transport/TcpDelegate;->threadRunning:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/google/android/projection/transport/TcpDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/transport/TcpDelegate;->threadRunning:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/google/android/projection/transport/TcpDelegate;Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/transport/TcpDelegate;->applySocketOptions(Ljava/net/Socket;)V

    return-void
.end method

.method private applySocketOptions(Ljava/net/Socket;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/transport/TcpDelegate;->mConnectionSocketOptions:Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;->readTimeoutInMillis:I

    .line 4
    .line 5
    const-string v1, "AHU.TCP_CONNECTION"

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "Set read timeout "

    .line 12
    .line 13
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/projection/transport/TcpDelegate;->mConnectionSocketOptions:Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;

    .line 17
    .line 18
    iget v2, v2, Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;->readTimeoutInMillis:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Lcom/google/android/projection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/projection/transport/TcpDelegate;->mConnectionSocketOptions:Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;

    .line 31
    .line 32
    iget v0, v0, Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;->readTimeoutInMillis:I

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/transport/TcpDelegate;->mConnectionSocketOptions:Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;

    .line 38
    .line 39
    iget v0, v0, Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;->readSocketBufferSize:I

    .line 40
    .line 41
    if-lez v0, :cond_1

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "Set receive buffer size "

    .line 46
    .line 47
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/google/android/projection/transport/TcpDelegate;->mConnectionSocketOptions:Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;

    .line 51
    .line 52
    iget v2, v2, Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;->readSocketBufferSize:I

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v1, v0}, Lcom/google/android/projection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/google/android/projection/transport/TcpDelegate;->mConnectionSocketOptions:Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;

    .line 65
    .line 66
    iget v0, v0, Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;->readSocketBufferSize:I

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/transport/TcpDelegate;->mConnectionSocketOptions:Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;

    .line 72
    .line 73
    iget-boolean v0, v0, Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;->enableSendNoDelay:Z

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    const-string v0, "Enable tcp no delay"

    .line 78
    .line 79
    invoke-static {v1, v0}, Lcom/google/android/projection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/google/android/projection/transport/TcpDelegate;->mConnectionSocketOptions:Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;

    .line 83
    .line 84
    iget-boolean v0, v0, Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;->enableSendNoDelay:Z

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 87
    .line 88
    .line 89
    :cond_2
    return-void
.end method


# virtual methods
.method public shutdown()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/transport/TcpDelegate;->mServerSocket:Ljava/net/ServerSocket;

    return-void
.end method

.method public tryOpen(Landroid/os/Parcelable;Lcom/google/android/projection/transport/TransportFactory$Callback;)Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/android/projection/transport/TcpDelegate;->mServerSocket:Ljava/net/ServerSocket;

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/projection/transport/TcpDelegate;->mServerSocketProvider:Lcom/google/android/projection/transport/ServerSocketProvider;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/projection/transport/ServerSocketProvider;->getServerSocket()Ljava/net/ServerSocket;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/google/android/projection/transport/TcpDelegate;->mServerSocket:Ljava/net/ServerSocket;

    .line 16
    .line 17
    const/16 v0, 0xbb8

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/google/android/projection/transport/TcpDelegate;->threadRunning:Z

    .line 24
    .line 25
    new-instance p1, Lcom/google/android/projection/transport/TcpDelegate$1;

    .line 26
    .line 27
    const-string v0, "TCP server"

    .line 28
    .line 29
    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/projection/transport/TcpDelegate$1;-><init>(Lcom/google/android/projection/transport/TcpDelegate;Ljava/lang/String;Lcom/google/android/projection/transport/TransportFactory$Callback;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 33
    .line 34
    .line 35
    new-instance p2, Lcom/google/android/projection/transport/TcpDelegate$2;

    .line 36
    .line 37
    invoke-direct {p2, p0, p1}, Lcom/google/android/projection/transport/TcpDelegate$2;-><init>(Lcom/google/android/projection/transport/TcpDelegate;Ljava/lang/Thread;)V

    .line 38
    .line 39
    .line 40
    return-object p2
.end method

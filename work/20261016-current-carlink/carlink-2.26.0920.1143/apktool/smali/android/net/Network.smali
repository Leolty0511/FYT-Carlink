.class public Landroid/net/Network;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Network$NetworkBoundSocketFactory;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/Network;",
            ">;"
        }
    .end annotation
.end field

.field private static final httpKeepAlive:Z

.field private static final httpKeepAliveDurationMs:J

.field private static final httpMaxConnections:I


# instance fields
.field private volatile mConnectionPool:Lcom/android/okhttp/ConnectionPool;

.field private volatile mDns:Lcom/android/okhttp/Dns;

.field private final mLock:Ljava/lang/Object;

.field private volatile mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

.field public final netId:I

.field public final networkType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "http.keepAlive"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "true"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Landroid/net/Network;->httpKeepAlive:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string/jumbo v0, "http.maxConnections"

    .line 20
    .line 21
    .line 22
    const-string v1, "5"

    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    sput v0, Landroid/net/Network;->httpMaxConnections:I

    .line 35
    .line 36
    const-string/jumbo v0, "http.keepAliveDuration"

    .line 37
    .line 38
    .line 39
    const-string v1, "300000"

    .line 40
    .line 41
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    sput-wide v0, Landroid/net/Network;->httpKeepAliveDurationMs:J

    .line 50
    .line 51
    new-instance v0, Landroid/net/Network$2;

    .line 52
    .line 53
    invoke-direct {v0}, Landroid/net/Network$2;-><init>()V

    .line 54
    .line 55
    .line 56
    sput-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 57
    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    .line 3
    iput-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 4
    iput-object v0, p0, Landroid/net/Network;->mDns:Lcom/android/okhttp/Dns;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    .line 6
    iput p1, p0, Landroid/net/Network;->netId:I

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Landroid/net/Network;->networkType:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    .line 17
    iput-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 18
    iput-object v0, p0, Landroid/net/Network;->mDns:Lcom/android/okhttp/Dns;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    .line 20
    iput p1, p0, Landroid/net/Network;->netId:I

    .line 21
    iput p2, p0, Landroid/net/Network;->networkType:I

    return-void
.end method

.method public constructor <init>(Landroid/net/Network;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    .line 10
    iput-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 11
    iput-object v0, p0, Landroid/net/Network;->mDns:Lcom/android/okhttp/Dns;

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    .line 13
    iget p1, p1, Landroid/net/Network;->netId:I

    iput p1, p0, Landroid/net/Network;->netId:I

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Landroid/net/Network;->networkType:I

    return-void
.end method

.method private maybeInitHttpClient()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/net/Network;->mDns:Lcom/android/okhttp/Dns;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/net/Network$1;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Landroid/net/Network$1;-><init>(Landroid/net/Network;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Landroid/net/Network;->mDns:Lcom/android/okhttp/Dns;

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Lcom/android/okhttp/ConnectionPool;

    .line 20
    .line 21
    sget v2, Landroid/net/Network;->httpMaxConnections:I

    .line 22
    .line 23
    sget-wide v3, Landroid/net/Network;->httpKeepAliveDurationMs:J

    .line 24
    .line 25
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/okhttp/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 31
    .line 32
    :cond_1
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v1
.end method


# virtual methods
.method public bindSocket(Ljava/io/FileDescriptor;)V
    .locals 3

    .line 5
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    new-instance p1, Ljava/net/SocketException;

    const-string v0, "Only AF_INET/AF_INET6 sockets supported"

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception v0

    .line 10
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->ENOTCONN:I

    if-ne v1, v2, :cond_2

    .line 11
    :goto_0
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p1

    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-static {p1, v0}, Landroid/net/NetworkUtils;->bindSocketToNetwork(II)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 12
    :cond_1
    new-instance v0, Landroid/system/ErrnoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Binding socket to network "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    neg-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 13
    invoke-static {v0}, Landroid/app/backup/a;->r(Landroid/system/ErrnoException;)Ljava/net/SocketException;

    move-result-object p1

    throw p1

    .line 14
    :cond_2
    invoke-static {v0}, Landroid/app/backup/a;->r(Landroid/system/ErrnoException;)Ljava/net/SocketException;

    move-result-object p1

    throw p1
.end method

.method public bindSocket(Ljava/net/DatagramSocket;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    .line 2
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public bindSocket(Ljava/net/Socket;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/net/Socket;->getReuseAddress()Z

    .line 4
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/net/Network;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroid/net/Network;

    .line 8
    .line 9
    iget v0, p0, Landroid/net/Network;->netId:I

    .line 10
    .line 11
    iget p1, p1, Landroid/net/Network;->netId:I

    .line 12
    .line 13
    if-ne v0, p1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_1
    return v1
.end method

.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1

    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-static {p1, v0}, Ljava/net/InetAddress;->getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method

.method public getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1

    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-static {p1, v0}, Ljava/net/InetAddress;->getByNameOnNet(Ljava/lang/String;I)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkHandle()J
    .locals 4

    iget v0, p0, Landroid/net/Network;->netId:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide/32 v2, 0xfacade

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroid/net/Network$NetworkBoundSocketFactory;

    .line 13
    .line 14
    iget v2, p0, Landroid/net/Network;->netId:I

    .line 15
    .line 16
    invoke-direct {v1, p0, v2}, Landroid/net/Network$NetworkBoundSocketFactory;-><init>(Landroid/net/Network;I)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    .line 20
    .line 21
    :cond_0
    monitor-exit v0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    .line 27
    .line 28
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/net/Network;->netId:I

    mul-int/lit8 v0, v0, 0xb

    return v0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1

    .line 1
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->makeProxy()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 5
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "No ConnectivityManager yet constructed, please construct one"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 3

    if-eqz p2, :cond_2

    .line 7
    invoke-direct {p0}, Landroid/net/Network;->maybeInitHttpClient()V

    .line 8
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-static {p2}, Lcom/android/okhttp/HttpHandler;->createHttpOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "https"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-static {p2}, Lcom/android/okhttp/HttpsHandler;->createHttpsOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object p2

    .line 13
    :goto_0
    invoke-virtual {p2}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/OkHttpClient;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v1

    iget-object v2, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    invoke-virtual {v1, v2}, Lcom/android/okhttp/OkHttpClient;->setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;

    .line 15
    iget-object v1, p0, Landroid/net/Network;->mDns:Lcom/android/okhttp/Dns;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/OkHttpClient;->setDns(Lcom/android/okhttp/Dns;)Lcom/android/okhttp/OkHttpClient;

    .line 16
    invoke-virtual {p2, p1}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1

    .line 17
    :cond_1
    new-instance p1, Ljava/net/MalformedURLException;

    const-string p2, "Invalid URL or unrecognized protocol "

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "proxy is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/net/Network;->netId:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/net/Network;->networkType:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

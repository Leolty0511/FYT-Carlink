.class Landroid/net/Network$NetworkBoundSocketFactory;
.super Ljavax/net/SocketFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkBoundSocketFactory"
.end annotation


# instance fields
.field private final mNetId:I

.field final synthetic this$0:Landroid/net/Network;


# direct methods
.method public constructor <init>(Landroid/net/Network;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/Network$NetworkBoundSocketFactory;->this$0:Landroid/net/Network;

    .line 2
    .line 3
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroid/net/Network$NetworkBoundSocketFactory;->mNetId:I

    .line 7
    .line 8
    return-void
.end method

.method private connectToHost(Ljava/lang/String;ILjava/net/SocketAddress;)Ljava/net/Socket;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/net/Network$NetworkBoundSocketFactory;->this$0:Landroid/net/Network;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    array-length v2, v0

    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Network$NetworkBoundSocketFactory;->createSocket()Ljava/net/Socket;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 21
    .line 22
    aget-object v4, v0, v1

    .line 23
    .line 24
    invoke-direct {v3, v4, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-object v2

    .line 31
    :catch_0
    move-exception v2

    .line 32
    array-length v3, v0

    .line 33
    add-int/lit8 v3, v3, -0x1

    .line 34
    .line 35
    if-eq v1, v3, :cond_1

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    throw v2

    .line 41
    :cond_2
    new-instance p2, Ljava/net/UnknownHostException;

    .line 42
    .line 43
    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p2
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2

    .line 8
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 9
    iget-object v1, p0, Landroid/net/Network$NetworkBoundSocketFactory;->this$0:Landroid/net/Network;

    invoke-virtual {v1, v0}, Landroid/net/Network;->bindSocket(Ljava/net/Socket;)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Landroid/net/Network$NetworkBoundSocketFactory;->connectToHost(Ljava/lang/String;ILjava/net/SocketAddress;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .line 1
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, p1, p2, v0}, Landroid/net/Network$NetworkBoundSocketFactory;->connectToHost(Ljava/lang/String;ILjava/net/SocketAddress;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2

    .line 5
    invoke-virtual {p0}, Landroid/net/Network$NetworkBoundSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/net/Network$NetworkBoundSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 4
    new-instance p3, Ljava/net/InetSocketAddress;

    invoke-direct {p3, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    return-object v0
.end method

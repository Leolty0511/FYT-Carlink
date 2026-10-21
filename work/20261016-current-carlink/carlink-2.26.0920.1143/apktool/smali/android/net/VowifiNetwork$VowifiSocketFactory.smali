.class Landroid/net/VowifiNetwork$VowifiSocketFactory;
.super Ljavax/net/SocketFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/VowifiNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VowifiSocketFactory"
.end annotation


# instance fields
.field mLocalAddress:Ljava/net/InetSocketAddress;

.field final synthetic this$0:Landroid/net/VowifiNetwork;


# direct methods
.method public constructor <init>(Landroid/net/VowifiNetwork;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroid/net/VowifiNetwork$VowifiSocketFactory;->this$0:Landroid/net/VowifiNetwork;

    .line 2
    .line 3
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/net/VowifiNetwork$VowifiSocketFactory;->mLocalAddress:Ljava/net/InetSocketAddress;

    .line 8
    .line 9
    invoke-static {p1}, Landroid/net/VowifiNetwork;->access$100(Landroid/net/VowifiNetwork;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "VowifiNetwork"

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "VowifiSocketFactory: mLocalIP4Addr is "

    .line 21
    .line 22
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Landroid/net/VowifiNetwork;->access$100(Landroid/net/VowifiNetwork;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 40
    .line 41
    invoke-static {p1}, Landroid/net/VowifiNetwork;->access$100(Landroid/net/VowifiNetwork;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Landroid/net/VowifiNetwork$VowifiSocketFactory;->mLocalAddress:Ljava/net/InetSocketAddress;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v3, "VowifiSocketFactory: mLocalIP6Addr is "

    .line 54
    .line 55
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Landroid/net/VowifiNetwork;->access$200(Landroid/net/VowifiNetwork;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 73
    .line 74
    invoke-static {p1}, Landroid/net/VowifiNetwork;->access$200(Landroid/net/VowifiNetwork;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Landroid/net/VowifiNetwork$VowifiSocketFactory;->mLocalAddress:Ljava/net/InetSocketAddress;

    .line 82
    .line 83
    :goto_0
    return-void
.end method

.method private connectToHost(Ljava/lang/String;ILjava/net/SocketAddress;)Ljava/net/Socket;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/net/VowifiNetwork$VowifiSocketFactory;->this$0:Landroid/net/VowifiNetwork;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/net/VowifiNetwork;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

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
    invoke-virtual {p0}, Landroid/net/VowifiNetwork$VowifiSocketFactory;->createSocket()Ljava/net/Socket;

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
    iget-object v1, p0, Landroid/net/VowifiNetwork$VowifiSocketFactory;->mLocalAddress:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_0
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Landroid/net/VowifiNetwork$VowifiSocketFactory;->connectToHost(Ljava/lang/String;ILjava/net/SocketAddress;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .line 1
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, p1, p2, v0}, Landroid/net/VowifiNetwork$VowifiSocketFactory;->connectToHost(Ljava/lang/String;ILjava/net/SocketAddress;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2

    .line 5
    invoke-virtual {p0}, Landroid/net/VowifiNetwork$VowifiSocketFactory;->createSocket()Ljava/net/Socket;

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
    invoke-virtual {p0}, Landroid/net/VowifiNetwork$VowifiSocketFactory;->createSocket()Ljava/net/Socket;

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

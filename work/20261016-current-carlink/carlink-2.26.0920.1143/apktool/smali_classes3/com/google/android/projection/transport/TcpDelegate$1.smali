.class Lcom/google/android/projection/transport/TcpDelegate$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/transport/TcpDelegate;->tryOpen(Landroid/os/Parcelable;Lcom/google/android/projection/transport/TransportFactory$Callback;)Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/transport/TcpDelegate;

.field final synthetic val$callback:Lcom/google/android/projection/transport/TransportFactory$Callback;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/transport/TcpDelegate;Ljava/lang/String;Lcom/google/android/projection/transport/TransportFactory$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/transport/TcpDelegate$1;->this$0:Lcom/google/android/projection/transport/TcpDelegate;

    iput-object p3, p0, Lcom/google/android/projection/transport/TcpDelegate$1;->val$callback:Lcom/google/android/projection/transport/TransportFactory$Callback;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Listening on: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/projection/transport/TcpDelegate$1;->this$0:Lcom/google/android/projection/transport/TcpDelegate;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/android/projection/transport/TcpDelegate;->access$000(Lcom/google/android/projection/transport/TcpDelegate;)Ljava/net/ServerSocket;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "AHU.TCP_CONNECTION"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/google/android/projection/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lcom/google/android/projection/transport/TcpDelegate$1;->this$0:Lcom/google/android/projection/transport/TcpDelegate;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/android/projection/transport/TcpDelegate;->access$100(Lcom/google/android/projection/transport/TcpDelegate;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/transport/TcpDelegate$1;->this$0:Lcom/google/android/projection/transport/TcpDelegate;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/google/android/projection/transport/TcpDelegate;->access$000(Lcom/google/android/projection/transport/TcpDelegate;)Ljava/net/ServerSocket;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v2, p0, Lcom/google/android/projection/transport/TcpDelegate$1;->this$0:Lcom/google/android/projection/transport/TcpDelegate;

    .line 48
    .line 49
    invoke-static {v2, v0}, Lcom/google/android/projection/transport/TcpDelegate;->access$200(Lcom/google/android/projection/transport/TcpDelegate;Ljava/net/Socket;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lcom/google/android/projection/transport/net/TcpTransport;

    .line 53
    .line 54
    invoke-direct {v2, v0}, Lcom/google/android/projection/transport/net/TcpTransport;-><init>(Ljava/net/Socket;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/google/android/projection/transport/TcpDelegate$1;->val$callback:Lcom/google/android/projection/transport/TransportFactory$Callback;

    .line 58
    .line 59
    invoke-interface {v0, v2}, Lcom/google/android/projection/transport/TransportFactory$Callback;->onConnected(Lcom/google/android/projection/protocol/Transport;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_1

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v3, "Can\'t listen to socket: "

    .line 73
    .line 74
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v1, v0}, Lcom/google/android/projection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catch_1
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_0
    const-string v0, "Socket accept timed out; retrying"

    .line 96
    .line 97
    invoke-static {v1, v0}, Lcom/google/android/projection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/projection/transport/TcpDelegate$1;->val$callback:Lcom/google/android/projection/transport/TransportFactory$Callback;

    .line 102
    .line 103
    invoke-interface {v0}, Lcom/google/android/projection/transport/TransportFactory$Callback;->onDisconnected()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

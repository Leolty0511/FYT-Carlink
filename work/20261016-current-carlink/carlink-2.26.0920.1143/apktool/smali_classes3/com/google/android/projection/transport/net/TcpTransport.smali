.class public Lcom/google/android/projection/transport/net/TcpTransport;
.super Lcom/google/android/projection/transport/StreamTransport;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AHU.TCP_CONNECTION"


# instance fields
.field private final mSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/google/android/projection/transport/StreamTransport;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/projection/transport/net/TcpTransport;->mSocket:Ljava/net/Socket;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onApplyTcpReadTimout(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/transport/net/TcpTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method

.method public onApplyTcpReceiveBufferSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/transport/net/TcpTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    return-void
.end method

.method public onApplyTcpSendBufferSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/transport/net/TcpTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    return-void
.end method

.method public onRetrieveTcpReadTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/transport/net/TcpTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public onRetrieveTcpReceiveBufferSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/transport/net/TcpTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public onRetrieveTcpSendBufferSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/transport/net/TcpTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public stopTransport(Lcom/google/android/projection/protocol/Transport$StopReason;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/projection/transport/StreamTransport;->stopTransport(Lcom/google/android/projection/protocol/Transport$StopReason;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/google/android/projection/transport/net/TcpTransport;->mSocket:Ljava/net/Socket;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Can\'t close socket: "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "AHU.TCP_CONNECTION"

    .line 26
    .line 27
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

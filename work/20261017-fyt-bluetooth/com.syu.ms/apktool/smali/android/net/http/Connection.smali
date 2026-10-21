.class abstract Landroid/net/http/Connection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DONE:I = 0x3

.field private static final DRAIN:I = 0x2

.field private static final HTTP_CONNECTION:Ljava/lang/String; = "http.connection"

.field private static final MAX_PIPE:I = 0x3

.field private static final MIN_PIPE:I = 0x2

.field private static final READ:I = 0x1

.field private static final RETRY_REQUEST_LIMIT:I = 0x2

.field private static final SEND:I = 0x0

.field public static final SOCKET_TIMEOUT:I = 0xea60

.field private static STATE_CANCEL_REQUESTED:I

.field private static STATE_NORMAL:I

.field private static final states:[Ljava/lang/String;


# instance fields
.field private mActive:I

.field private mBuf:[B

.field private mCanPersist:Z

.field public mCertificate:Landroid/net/http/SslCertificate;

.field public mContext:Landroid/content/Context;

.field public mHost:Lorg/apache/http/HttpHost;

.field public mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

.field private mHttpContext:Lorg/apache/http/protocol/HttpContext;

.field public mRequestFeeder:Landroid/net/http/RequestFeeder;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "SEND"

    const-string v1, "READ"

    const-string v2, "DRAIN"

    const-string v3, "DONE"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Connection;->states:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput v0, Landroid/net/http/Connection;->STATE_NORMAL:I

    const/4 v0, 0x1

    .line 3
    sput v0, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    .line 3
    iput-object v0, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 4
    sget v1, Landroid/net/http/Connection;->STATE_NORMAL:I

    iput v1, p0, Landroid/net/http/Connection;->mActive:I

    .line 5
    iput-object p1, p0, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    .line 7
    iput-object p3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 9
    new-instance p1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {p1, v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object p1, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    return-void
.end method

.method private clearPipe(Ljava/util/LinkedList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Landroid/net/http/Request;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v0

    const/4 v1, 0x1

    move v2, v1

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/http/Request;

    .line 4
    iget-object v3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v3, v2}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 5
    iget-object p1, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iget-object v2, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {p1, v2}, Landroid/net/http/RequestFeeder;->haveRequest(Lorg/apache/http/HttpHost;)Z

    move-result p1

    xor-int/lit8 v2, p1, 0x1

    .line 6
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p2, Landroid/net/http/HttpConnection;

    invoke-direct {p2, p0, p1, p3}, Landroid/net/http/HttpConnection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    return-object p2

    .line 3
    :cond_0
    new-instance v0, Landroid/net/http/HttpsConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/http/HttpsConnection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    return-object v0
.end method

.method private httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/net/http/Request;->mFailCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/net/http/Request;->mFailCount:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    const/4 v1, 0x0

    if-gez p2, :cond_0

    .line 2
    iget-object p3, p0, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Landroid/net/http/ErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    .line 5
    :goto_0
    iget-object v0, p1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v0, p2, p3}, Landroid/net/http/EventHandler;->error(ILjava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/net/http/Request;->complete()V

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    .line 8
    iget-object p1, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string p2, "http.connection"

    invoke-interface {p1, p2}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    return v1
.end method

.method private keepAlive(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 5

    const-string v0, "http.connection"

    .line 1
    invoke-interface {p4, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/http/HttpConnection;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 2
    invoke-interface {p4}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result p4

    if-nez p4, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p4, v1, v3

    if-gez p4, :cond_2

    .line 4
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {p2, p1}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x1

    if-ne p3, p1, :cond_3

    return v0

    :cond_3
    const/4 p4, 0x2

    if-ne p3, p4, :cond_4

    return p1

    .line 5
    :cond_4
    sget-object p3, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {p2, p3}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result p2

    xor-int/2addr p1, p2

    return p1
.end method

.method private openHttpConnection(Landroid/net/http/Request;)Z
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const/4 v0, -0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 2
    :try_start_0
    iput-object v1, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 3
    invoke-virtual {p0, p1}, Landroid/net/http/Connection;->openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;

    move-result-object v4

    iput-object v4, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v4, :cond_0

    const v5, 0xea60

    .line 4
    invoke-virtual {v4, v5}, Landroid/net/http/AndroidHttpClientConnection;->setSocketTimeout(I)V

    .line 5
    iget-object v4, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v5, "http.connection"

    iget-object v6, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-interface {v4, v5, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v2

    goto :goto_0

    .line 6
    :cond_0
    iput v3, p1, Landroid/net/http/Request;->mFailCount:I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/net/http/SSLConnectionClosedByUserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 7
    iput v3, p1, Landroid/net/http/Request;->mFailCount:I

    const/16 v0, -0xb

    goto :goto_0

    .line 8
    :catch_2
    iput v3, p1, Landroid/net/http/Request;->mFailCount:I

    return v2

    :catch_3
    move-exception v1

    .line 9
    iput v3, p1, Landroid/net/http/Request;->mFailCount:I

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v1, v0

    const/4 v0, -0x2

    :goto_0
    const/4 v4, 0x1

    if-nez v0, :cond_1

    return v4

    .line 10
    :cond_1
    iget v5, p1, Landroid/net/http/Request;->mFailCount:I

    if-ge v5, v3, :cond_2

    .line 11
    iget-object v1, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v1, p1}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;)V

    .line 12
    iget v1, p1, Landroid/net/http/Request;->mFailCount:I

    add-int/2addr v1, v4

    iput v1, p1, Landroid/net/http/Request;->mFailCount:I

    goto :goto_1

    .line 13
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    :goto_1
    if-nez v0, :cond_3

    move v2, v4

    :cond_3
    return v2
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    sget v0, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    iput v0, p0, Landroid/net/http/Connection;->mActive:I

    .line 2
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    return-void
.end method

.method public abstract closeConnection()V
.end method

.method public getBuf()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    if-nez v0, :cond_0

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    return-object v0
.end method

.method public getCanPersist()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    return v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getHost()Lorg/apache/http/HttpHost;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public abstract openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
.end method

.method public processRequests(Landroid/net/http/Request;)V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v7, p1

    move v10, v3

    move-object v0, v4

    move v9, v5

    move v8, v6

    move v11, v8

    :goto_0
    if-eq v8, v5, :cond_13

    .line 2
    iget v12, v1, Landroid/net/http/Connection;->mActive:I

    sget v13, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    if-ne v12, v13, :cond_0

    const-wide/16 v12, 0x64

    .line 3
    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    sget v12, Landroid/net/http/Connection;->STATE_NORMAL:I

    iput v12, v1, Landroid/net/http/Connection;->mActive:I

    :cond_0
    const/4 v12, -0x7

    const/4 v13, 0x1

    if-eqz v8, :cond_7

    if-eq v8, v13, :cond_1

    if-eq v8, v3, :cond_1

    goto/16 :goto_a

    .line 5
    :cond_1
    iget-object v14, v1, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iget-object v15, v1, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v14, v15}, Landroid/net/http/RequestFeeder;->haveRequest(Lorg/apache/http/HttpHost;)Z

    move-result v14

    xor-int/2addr v14, v13

    .line 6
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v15

    if-eq v8, v3, :cond_3

    if-ge v15, v10, :cond_3

    if-nez v14, :cond_3

    .line 7
    iget-boolean v3, v1, Landroid/net/http/Connection;->mCanPersist:Z

    if-eqz v3, :cond_3

    :cond_2
    move v8, v6

    goto/16 :goto_a

    :cond_3
    if-nez v15, :cond_4

    if-eqz v14, :cond_2

    goto/16 :goto_6

    .line 8
    :cond_4
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/http/Request;

    .line 9
    :try_start_1
    iget-object v14, v1, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v3, v14}, Landroid/net/http/Request;->readResponse(Landroid/net/http/AndroidHttpClientConnection;)V
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_1
    move v11, v12

    :goto_2
    if-eqz v0, :cond_6

    .line 10
    invoke-direct {v1, v3, v11, v0}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, v3, Landroid/net/http/Request;->mCancelled:Z

    if-nez v0, :cond_5

    .line 11
    invoke-virtual {v3}, Landroid/net/http/Request;->reset()V

    .line 12
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 13
    :cond_5
    iput-boolean v6, v1, Landroid/net/http/Connection;->mCanPersist:Z

    move-object v0, v4

    .line 14
    :cond_6
    iget-boolean v3, v1, Landroid/net/http/Connection;->mCanPersist:Z

    if-nez v3, :cond_12

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/Connection;->closeConnection()V

    .line 16
    iget-object v3, v1, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v8, "http.connection"

    invoke-interface {v3, v8}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    invoke-direct {v1, v2}, Landroid/net/http/Connection;->clearPipe(Ljava/util/LinkedList;)Z

    move v8, v6

    :goto_3
    move v9, v13

    move v10, v9

    goto/16 :goto_a

    .line 18
    :cond_7
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ne v3, v9, :cond_8

    :goto_4
    move v8, v13

    goto/16 :goto_a

    :cond_8
    if-nez v7, :cond_9

    .line 19
    iget-object v3, v1, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iget-object v14, v1, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v3, v14}, Landroid/net/http/RequestFeeder;->getRequest(Lorg/apache/http/HttpHost;)Landroid/net/http/Request;

    move-result-object v3

    move-object/from16 v16, v7

    move-object v7, v3

    move-object/from16 v3, v16

    goto :goto_5

    :cond_9
    move-object v3, v4

    :goto_5
    if-nez v7, :cond_a

    move-object v7, v3

    const/4 v8, 0x2

    goto/16 :goto_a

    .line 20
    :cond_a
    invoke-virtual {v7, v1}, Landroid/net/http/Request;->setConnection(Landroid/net/http/Connection;)V

    .line 21
    iget-boolean v14, v7, Landroid/net/http/Request;->mCancelled:Z

    if-eqz v14, :cond_c

    .line 22
    invoke-virtual {v7}, Landroid/net/http/Request;->complete()V

    :cond_b
    move-object v7, v3

    goto :goto_a

    .line 23
    :cond_c
    iget-object v14, v1, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v14, :cond_d

    invoke-virtual {v14}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v14

    if-nez v14, :cond_e

    .line 24
    :cond_d
    invoke-direct {v1, v7}, Landroid/net/http/Connection;->openHttpConnection(Landroid/net/http/Request;)Z

    move-result v14

    if-nez v14, :cond_e

    move-object v7, v3

    :goto_6
    move v8, v5

    goto :goto_a

    .line 25
    :cond_e
    iget-object v14, v7, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    iget-object v15, v1, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-interface {v14, v15}, Landroid/net/http/EventHandler;->certificate(Landroid/net/http/SslCertificate;)V

    .line 26
    :try_start_2
    iget-object v14, v1, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v7, v14}, Landroid/net/http/Request;->sendRequest(Landroid/net/http/AndroidHttpClientConnection;)V
    :try_end_2
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    :goto_7
    move v11, v12

    goto :goto_8

    :catch_6
    move-exception v0

    const/4 v11, -0x1

    :goto_8
    if-eqz v0, :cond_11

    .line 27
    invoke-direct {v1, v7, v11, v0}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, v7, Landroid/net/http/Request;->mCancelled:Z

    if-nez v0, :cond_f

    .line 28
    invoke-virtual {v2, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 29
    :cond_f
    invoke-direct {v1, v2}, Landroid/net/http/Connection;->clearPipe(Ljava/util/LinkedList;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v8, v5

    goto :goto_9

    :cond_10
    move v8, v6

    :goto_9
    move-object v7, v3

    move-object v0, v4

    goto :goto_3

    .line 30
    :cond_11
    invoke-virtual {v2, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 31
    iget-boolean v7, v1, Landroid/net/http/Connection;->mCanPersist:Z

    if-nez v7, :cond_b

    move-object v7, v3

    goto :goto_4

    :cond_12
    :goto_a
    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method public setCanPersist(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/http/Connection;->keepAlive(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/net/http/Connection;->mCanPersist:Z

    return-void
.end method

.method public setCanPersist(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Landroid/net/http/Connection;->mCanPersist:Z

    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

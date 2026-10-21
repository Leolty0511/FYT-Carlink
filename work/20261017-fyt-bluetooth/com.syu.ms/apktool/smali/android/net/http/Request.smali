.class Landroid/net/http/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACCEPT_ENCODING_HEADER:Ljava/lang/String; = "Accept-Encoding"

.field private static final CONTENT_LENGTH_HEADER:Ljava/lang/String; = "content-length"

.field private static final HOST_HEADER:Ljava/lang/String; = "Host"

.field private static requestContentProcessor:Lorg/apache/http/protocol/RequestContent;


# instance fields
.field private mBodyLength:I

.field private mBodyProvider:Ljava/io/InputStream;

.field public volatile mCancelled:Z

.field private final mClientResource:Ljava/lang/Object;

.field private mConnection:Landroid/net/http/Connection;

.field public mEventHandler:Landroid/net/http/EventHandler;

.field public mFailCount:I

.field public mHost:Lorg/apache/http/HttpHost;

.field public mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

.field private mLoadingPaused:Z

.field public mPath:Ljava/lang/String;

.field public mProxyHost:Lorg/apache/http/HttpHost;

.field private mReceivedBytes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/http/protocol/RequestContent;

    invoke-direct {v0}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    sput-object v0, Landroid/net/http/Request;->requestContentProcessor:Lorg/apache/http/protocol/RequestContent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpHost;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "I",
            "Landroid/net/http/EventHandler;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/net/http/Request;->mCancelled:Z

    .line 3
    iput v0, p0, Landroid/net/http/Request;->mFailCount:I

    .line 4
    iput v0, p0, Landroid/net/http/Request;->mReceivedBytes:I

    .line 5
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    .line 6
    iput-boolean v0, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    .line 7
    iput-object p7, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    .line 8
    iput-object p2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    .line 9
    iput-object p3, p0, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 10
    iput-object p4, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    .line 12
    iput p6, p0, Landroid/net/http/Request;->mBodyLength:I

    if-nez p5, :cond_0

    const-string p2, "POST"

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 14
    new-instance p2, Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {p0}, Landroid/net/http/Request;->getUri()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    goto :goto_0

    .line 15
    :cond_0
    new-instance p2, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-virtual {p0}, Landroid/net/http/Request;->getUri()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    if-eqz p5, :cond_1

    .line 16
    invoke-direct {p0, p5, p6}, Landroid/net/http/Request;->setBodyProvider(Ljava/io/InputStream;I)V

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/net/http/Request;->getHostPort()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Host"

    invoke-virtual {p0, p2, p1}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Accept-Encoding"

    const-string p2, "gzip"

    .line 18
    invoke-virtual {p0, p1, p2}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p8}, Landroid/net/http/Request;->addHeaders(Ljava/util/Map;)V

    return-void
.end method

.method private static canResponseHaveBody(Lorg/apache/http/HttpRequest;I)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HEAD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/16 p0, 0xc8

    if-lt p1, p0, :cond_1

    const/16 p0, 0xcc

    if-eq p1, p0, :cond_1

    const/16 p0, 0x130

    if-eq p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private setBodyProvider(Ljava/io/InputStream;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 3
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    check-cast v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    int-to-long v2, p2

    invoke-direct {v1, p1, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v0, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bodyProvider must support mark()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Null or empty value for header \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    .line 5
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string p1, "Null http header name"

    .line 6
    invoke-static {p1}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    .line 7
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addHeaders(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/net/http/Request;->mCancelled:Z

    .line 4
    iget-object v0, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/net/http/Connection;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public complete()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public error(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    iget-object v1, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    iget-object v1, v1, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/net/http/EventHandler;->error(ILjava/lang/String;)V

    return-void
.end method

.method public getEventHandler()Landroid/net/http/EventHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    return-object v0
.end method

.method public getHostPort()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    const/16 v2, 0x50

    if-eq v1, v2, :cond_0

    const-string v2, "http"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x1bb

    if-eq v1, v2, :cond_2

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_2
    iget-object v0, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/http/Request;->getHostPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public handleSslErrorResponse(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    check-cast v0, Landroid/net/http/HttpsConnection;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/net/http/HttpsConnection;->restartConnection(Z)V

    :cond_0
    return-void
.end method

.method public readResponse(Landroid/net/http/AndroidHttpClientConnection;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-boolean v2, v1, Landroid/net/http/Request;->mCancelled:Z

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/AndroidHttpClientConnection;->flush()V

    .line 3
    new-instance v2, Landroid/net/http/Headers;

    invoke-direct {v2}, Landroid/net/http/Headers;-><init>()V

    .line 4
    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/http/AndroidHttpClientConnection;->parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_1

    .line 6
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v6

    .line 7
    iget-object v7, v1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-virtual {v6}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v8

    invoke-virtual {v6}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v6

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v6, v4, v9}, Landroid/net/http/EventHandler;->status(IIILjava/lang/String;)V

    .line 8
    iget-object v6, v1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v6, v2}, Landroid/net/http/EventHandler;->headers(Landroid/net/http/Headers;)V

    .line 9
    iget-object v6, v1, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    invoke-static {v6, v4}, Landroid/net/http/Request;->canResponseHaveBody(Lorg/apache/http/HttpRequest;I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 10
    invoke-virtual {v0, v2}, Landroid/net/http/AndroidHttpClientConnection;->receiveResponseEntity(Landroid/net/http/Headers;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_2
    move-object v6, v7

    :goto_0
    const-string v0, "bytes"

    .line 11
    invoke-virtual {v2}, Landroid/net/http/Headers;->getAcceptRanges()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v6, :cond_e

    .line 12
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 13
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    .line 14
    :try_start_0
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v11, "gzip"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 15
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v7

    goto/16 :goto_5

    :catch_1
    move-object v9, v7

    goto/16 :goto_7

    :cond_3
    move-object v9, v0

    .line 16
    :goto_1
    :try_start_1
    iget-object v0, v1, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v0}, Landroid/net/http/Connection;->getBuf()[B

    move-result-object v7

    .line 17
    array-length v0, v7

    div-int/lit8 v11, v0, 0x2
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v0, v10

    move v12, v0

    :cond_4
    :goto_2
    const/4 v13, -0x1

    if-eq v0, v13, :cond_8

    .line 18
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 19
    :goto_3
    :try_start_3
    iget-boolean v0, v1, Landroid/net/http/Request;->mLoadingPaused:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_5

    .line 20
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v14, v0

    .line 21
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Interrupted exception whilst network thread paused at WebCore\'s request. "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 22
    :cond_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 23
    :try_start_6
    array-length v0, v7

    sub-int/2addr v0, v12

    invoke-virtual {v9, v7, v12, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v13, :cond_6

    add-int/2addr v12, v0

    if-eqz v8, :cond_6

    .line 24
    iget v14, v1, Landroid/net/http/Request;->mReceivedBytes:I

    add-int/2addr v14, v0

    iput v14, v1, Landroid/net/http/Request;->mReceivedBytes:I

    :cond_6
    if-eq v0, v13, :cond_7

    if-lt v12, v11, :cond_4

    .line 25
    :cond_7
    iget-object v13, v1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v13, v7, v12}, Landroid/net/http/EventHandler;->data([BI)V
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v12, v10

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 26
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_3
    move-exception v0

    move v10, v12

    goto :goto_4

    :catch_4
    move v10, v12

    goto :goto_7

    :cond_8
    if-eqz v9, :cond_e

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v7, v9

    goto :goto_8

    :catch_5
    move-exception v0

    :goto_4
    move-object/from16 v16, v9

    move-object v9, v0

    move-object v0, v7

    move-object/from16 v7, v16

    :goto_5
    if-eq v4, v5, :cond_a

    const/16 v5, 0xce

    if-ne v4, v5, :cond_9

    goto :goto_6

    :cond_9
    if-eqz v7, :cond_e

    .line 27
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto :goto_b

    :cond_a
    :goto_6
    if-eqz v8, :cond_b

    if-lez v10, :cond_b

    .line 28
    :try_start_9
    iget-object v2, v1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v2, v0, v10}, Landroid/net/http/EventHandler;->data([BI)V

    .line 29
    :cond_b
    throw v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_6
    :goto_7
    if-lez v10, :cond_d

    .line 30
    :try_start_a
    iget-object v0, v1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v0, v7, v10}, Landroid/net/http/EventHandler;->data([BI)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_9

    :goto_8
    if-eqz v7, :cond_c

    .line 31
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_c
    throw v0

    :cond_d
    :goto_9
    if-eqz v9, :cond_e

    :goto_a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 32
    :cond_e
    :goto_b
    iget-object v0, v1, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/http/Headers;->getConnectionType()I

    move-result v2

    invoke-virtual {v0, v6, v3, v2}, Landroid/net/http/Connection;->setCanPersist(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;I)V

    .line 33
    iget-object v0, v1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v0}, Landroid/net/http/EventHandler;->endData()V

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/Request;->complete()V

    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    const-string v1, "content-length"

    invoke-virtual {v0, v1}, Lorg/apache/http/message/BasicHttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    iget-object v0, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    iget v1, p0, Landroid/net/http/Request;->mBodyLength:I

    invoke-direct {p0, v0, v1}, Landroid/net/http/Request;->setBodyProvider(Ljava/io/InputStream;I)V

    .line 5
    :cond_0
    iget v0, p0, Landroid/net/http/Request;->mReceivedBytes:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroid/net/http/Request;->mFailCount:I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** Request.reset() to range:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/http/Request;->mReceivedBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/http/Request;->mReceivedBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Range"

    invoke-virtual {v0, v2, v1}, Lorg/apache/http/message/BasicHttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sendRequest(Landroid/net/http/AndroidHttpClientConnection;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/net/http/Request;->mCancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Landroid/net/http/Request;->requestContentProcessor:Lorg/apache/http/protocol/RequestContent;

    iget-object v1, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    iget-object v2, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v2}, Landroid/net/http/Connection;->getHttpContext()Lorg/apache/http/protocol/HttpContext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/protocol/RequestContent;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 3
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {p1, v0}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 4
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    instance-of v1, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-virtual {p1, v0}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    :cond_1
    return-void
.end method

.method public setConnection(Landroid/net/http/Connection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    return-void
.end method

.method public declared-synchronized setLoadingPaused(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public waitUntilComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

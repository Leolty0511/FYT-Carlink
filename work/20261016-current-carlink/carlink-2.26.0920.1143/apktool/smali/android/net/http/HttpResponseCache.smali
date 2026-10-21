.class public final Landroid/net/http/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/android/okhttp/OkCacheContainer;


# instance fields
.field private final delegate:Lcom/android/okhttp/AndroidShimResponseCache;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/AndroidShimResponseCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    .line 5
    .line 6
    return-void
.end method

.method public static getInstalled()Landroid/net/http/HttpResponseCache;
    .locals 2

    .line 1
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/net/http/HttpResponseCache;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/net/http/HttpResponseCache;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public static declared-synchronized install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    .locals 4

    .line 1
    const-class v0, Landroid/net/http/HttpResponseCache;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    instance-of v2, v1, Landroid/net/http/HttpResponseCache;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    check-cast v1, Landroid/net/http/HttpResponseCache;

    .line 13
    .line 14
    iget-object v2, v1, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    .line 15
    .line 16
    invoke-virtual {v2, p0, p1, p2}, Lcom/android/okhttp/AndroidShimResponseCache;->isEquivalent(Ljava/io/File;J)Z

    .line 17
    .line 18
    .line 19
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object v1

    .line 24
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/okhttp/AndroidShimResponseCache;->close()V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/AndroidShimResponseCache;->create(Ljava/io/File;J)Lcom/android/okhttp/AndroidShimResponseCache;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance p1, Landroid/net/http/HttpResponseCache;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Landroid/net/http/HttpResponseCache;-><init>(Lcom/android/okhttp/AndroidShimResponseCache;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-object p1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0

    .line 43
    throw p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->close()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public delete()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->delete()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public flush()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/AndroidShimResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object p1

    return-object p1
.end method

.method public getCache()Lcom/android/okhttp/Cache;
    .locals 1

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getCache()Lcom/android/okhttp/Cache;

    move-result-object v0

    return-object v0
.end method

.method public getHitCount()I
    .locals 1

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getHitCount()I

    move-result v0

    return v0
.end method

.method public getNetworkCount()I
    .locals 1

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getNetworkCount()I

    move-result v0

    return v0
.end method

.method public getRequestCount()I
    .locals 1

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getRequestCount()I

    move-result v0

    return v0
.end method

.method public maxSize()J
    .locals 2

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->maxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 1

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/AndroidShimResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object p1

    return-object p1
.end method

.method public size()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->size()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

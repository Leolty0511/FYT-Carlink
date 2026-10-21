.class Landroid/net/http/IdleCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/IdleCache$IdleReaper;,
        Landroid/net/http/IdleCache$Entry;
    }
.end annotation


# static fields
.field private static final CHECK_INTERVAL:I = 0x7d0

.field private static final EMPTY_CHECK_MAX:I = 0x5

.field private static final IDLE_CACHE_MAX:I = 0x8

.field private static final TIMEOUT:I = 0x1770


# instance fields
.field private mCached:I

.field private mCount:I

.field private mEntries:[Landroid/net/http/IdleCache$Entry;

.field private mReused:I

.field private mThread:Landroid/net/http/IdleCache$IdleReaper;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [Landroid/net/http/IdleCache$Entry;

    .line 2
    iput-object v1, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Landroid/net/http/IdleCache;->mCount:I

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    .line 5
    iput v1, p0, Landroid/net/http/IdleCache;->mCached:I

    .line 6
    iput v1, p0, Landroid/net/http/IdleCache;->mReused:I

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    iget-object v2, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    new-instance v3, Landroid/net/http/IdleCache$Entry;

    invoke-direct {v3, p0}, Landroid/net/http/IdleCache$Entry;-><init>(Landroid/net/http/IdleCache;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic access$100(Landroid/net/http/IdleCache;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/http/IdleCache;->mCount:I

    return p0
.end method

.method public static synthetic access$200(Landroid/net/http/IdleCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/http/IdleCache;->clearIdle()V

    return-void
.end method

.method public static synthetic access$302(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$IdleReaper;)Landroid/net/http/IdleCache$IdleReaper;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    return-object p1
.end method

.method private declared-synchronized clearIdle()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Landroid/net/http/IdleCache;->mCount:I

    if-lez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v3, v3, v2

    .line 4
    iget-object v4, v3, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    if-eqz v4, :cond_0

    iget-wide v4, v3, Landroid/net/http/IdleCache$Entry;->mTimeout:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    .line 5
    iput-object v4, v3, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 6
    iget-object v5, v3, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v5}, Landroid/net/http/Connection;->closeConnection()V

    .line 7
    iput-object v4, v3, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    .line 8
    iget v3, p0, Landroid/net/http/IdleCache;->mCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/net/http/IdleCache;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cacheConnection(Lorg/apache/http/HttpHost;Landroid/net/http/Connection;)Z
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Landroid/net/http/IdleCache;->mCount:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_2

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_2

    .line 3
    iget-object v6, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v6, v6, v0

    .line 4
    iget-object v7, v6, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    if-nez v7, :cond_1

    .line 5
    iput-object p1, v6, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 6
    iput-object p2, v6, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    const-wide/16 p1, 0x1770

    add-long/2addr v4, p1

    .line 7
    iput-wide v4, v6, Landroid/net/http/IdleCache$Entry;->mTimeout:J

    .line 8
    iget p1, p0, Landroid/net/http/IdleCache;->mCount:I

    add-int/2addr p1, v3

    iput p1, p0, Landroid/net/http/IdleCache;->mCount:I

    .line 9
    iget-object p1, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    if-nez p1, :cond_0

    .line 10
    new-instance p1, Landroid/net/http/IdleCache$IdleReaper;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroid/net/http/IdleCache$IdleReaper;-><init>(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$1;)V

    iput-object p1, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_2
    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget v1, p0, Landroid/net/http/IdleCache;->mCount:I

    if-lez v1, :cond_1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v1, v1, v0

    .line 3
    iget-object v2, v1, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 5
    iget-object v3, v1, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v3}, Landroid/net/http/Connection;->closeConnection()V

    .line 6
    iput-object v2, v1, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    .line 7
    iget v1, p0, Landroid/net/http/IdleCache;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/net/http/IdleCache;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnection(Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Landroid/net/http/IdleCache;->mCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 2
    iget-object v2, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v2, v2, v0

    .line 3
    iget-object v3, v2, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3, p1}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object p1, v2, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    .line 6
    iput-object v1, v2, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 7
    iput-object v1, v2, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    .line 8
    iget v0, p0, Landroid/net/http/IdleCache;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/net/http/IdleCache;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.class Landroid/net/http/ConnectionThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final WAIT_TICK:I = 0x3e8

.field public static final WAIT_TIMEOUT:I = 0x1388


# instance fields
.field public mConnection:Landroid/net/http/Connection;

.field private mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

.field private mContext:Landroid/content/Context;

.field public mCurrentThreadTime:J

.field private mId:I

.field private mRequestFeeder:Landroid/net/http/RequestFeeder;

.field private volatile mRunning:Z

.field public mTotalThreadTime:J

.field private mWaiting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/net/http/RequestQueue$ConnectionManager;Landroid/net/http/RequestFeeder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    .line 3
    iput-object p1, p0, Landroid/net/http/ConnectionThread;->mContext:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5
    iput p2, p0, Landroid/net/http/ConnectionThread;->mId:I

    .line 6
    iput-object p3, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    .line 7
    iput-object p4, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    return-void
.end method


# virtual methods
.method public requestStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    .line 3
    iget-object v1, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 9

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 3
    iput-wide v1, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    .line 4
    :cond_0
    :goto_0
    iget-boolean v3, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    if-eqz v3, :cond_6

    .line 5
    iget-wide v3, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 7
    :cond_1
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v3}, Landroid/net/http/RequestFeeder;->getRequest()Landroid/net/http/Request;

    move-result-object v3

    if-nez v3, :cond_3

    .line 8
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v4

    .line 9
    :try_start_0
    iput-boolean v0, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v3, 0x0

    .line 11
    :try_start_2
    iput-boolean v3, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z

    .line 12
    iget-wide v5, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    cmp-long v3, v5, v1

    if-eqz v3, :cond_2

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 14
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 15
    :cond_3
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    iget-object v5, p0, Landroid/net/http/ConnectionThread;->mContext:Landroid/content/Context;

    iget-object v6, v3, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v4, v5, v6}, Landroid/net/http/RequestQueue$ConnectionManager;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;

    move-result-object v4

    iput-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    .line 16
    invoke-virtual {v4, v3}, Landroid/net/http/Connection;->processRequests(Landroid/net/http/Request;)V

    .line 17
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v3}, Landroid/net/http/Connection;->getCanPersist()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 18
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-interface {v3, v4}, Landroid/net/http/RequestQueue$ConnectionManager;->recycleConnection(Landroid/net/http/Connection;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 19
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v3}, Landroid/net/http/Connection;->closeConnection()V

    goto :goto_1

    .line 20
    :cond_4
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v3}, Landroid/net/http/Connection;->closeConnection()V

    :cond_5
    :goto_1
    const/4 v3, 0x0

    .line 21
    iput-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    .line 22
    iget-wide v3, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 24
    iget-wide v7, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    sub-long/2addr v5, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    goto :goto_0

    :cond_6
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/http/Connection;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    iget-boolean v1, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "w"

    goto :goto_1

    :cond_1
    const-string v1, "a"

    .line 3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/http/ConnectionThread;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

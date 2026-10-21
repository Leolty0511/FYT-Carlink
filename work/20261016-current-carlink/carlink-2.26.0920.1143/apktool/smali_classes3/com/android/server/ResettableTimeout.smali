.class abstract Lcom/android/server/ResettableTimeout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ResettableTimeout$T;
    }
.end annotation


# instance fields
.field private mLock:Landroid/os/ConditionVariable;

.field private volatile mOffAt:J

.field private volatile mOffCalled:Z

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/ConditionVariable;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$100(Lcom/android/server/ResettableTimeout;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/server/ResettableTimeout;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/ResettableTimeout;->mOffAt:J

    return-wide v0
.end method

.method public static synthetic access$302(Lcom/android/server/ResettableTimeout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    return p1
.end method

.method public static synthetic access$402(Lcom/android/server/ResettableTimeout;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/android/server/ResettableTimeout;->mOffAt:J

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/ResettableTimeout;->off()V

    .line 24
    .line 25
    .line 26
    :cond_1
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v0
.end method

.method public go(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    add-long/2addr v0, p1

    .line 7
    iput-wide v0, p0, Lcom/android/server/ResettableTimeout;->mOffAt:J

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/android/server/ResettableTimeout$T;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-direct {p1, p0, p2}, Lcom/android/server/ResettableTimeout$T;-><init>(Lcom/android/server/ResettableTimeout;Lcom/android/server/ResettableTimeout$1;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/ResettableTimeout;->on(Z)V

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1
.end method

.method public abstract off()V
.end method

.method public abstract on(Z)V
.end method

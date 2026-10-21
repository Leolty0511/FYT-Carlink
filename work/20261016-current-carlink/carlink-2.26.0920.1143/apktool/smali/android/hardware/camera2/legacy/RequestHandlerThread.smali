.class public Landroid/hardware/camera2/legacy/RequestHandlerThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# static fields
.field public static final MSG_POKE_IDLE_HANDLER:I = -0x1


# instance fields
.field private mCallback:Landroid/os/Handler$Callback;

.field private volatile mHandler:Landroid/os/Handler;

.field private final mIdle:Landroid/os/ConditionVariable;

.field private final mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private final mStarted:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/os/ConditionVariable;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mStarted:Landroid/os/ConditionVariable;

    .line 13
    .line 14
    new-instance p1, Landroid/os/ConditionVariable;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p1, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    .line 21
    .line 22
    new-instance p1, Landroid/hardware/camera2/legacy/RequestHandlerThread$1;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread$1;-><init>(Landroid/hardware/camera2/legacy/RequestHandlerThread;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 28
    .line 29
    iput-object p2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mCallback:Landroid/os/Handler$Callback;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic access$000(Landroid/hardware/camera2/legacy/RequestHandlerThread;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    return-object p0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hasAnyMessages([I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    array-length v1, p1

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    if-ge v3, v1, :cond_1

    .line 16
    .line 17
    aget v4, p1, v3

    .line 18
    .line 19
    iget-object v5, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-virtual {v5, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    monitor-exit v0

    .line 34
    return v2

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1
.end method

.method public onLooperPrepared()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mCallback:Landroid/os/Handler$Callback;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mStarted:Landroid/os/ConditionVariable;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public removeMessages([I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    array-length v1, p1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    aget v3, p1, v2

    .line 17
    .line 18
    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public waitAndGetHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitUntilStarted()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public waitUntilIdle()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitAndGetHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/os/MessageQueue;->isIdle()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 28
    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/os/MessageQueue;->isIdle()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public waitUntilStarted()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mStarted:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

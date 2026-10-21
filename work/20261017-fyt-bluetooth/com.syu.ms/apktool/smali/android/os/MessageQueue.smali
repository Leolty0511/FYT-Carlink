.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# instance fields
.field private mBlocked:Z

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field public mMessages:Landroid/os/Message;

.field private mNextBarrierToken:I

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:I

.field private final mQuitAllowed:Z

.field private mQuitting:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 3
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 4
    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()I

    move-result p1

    iput p1, p0, Landroid/os/MessageQueue;->mPtr:I

    return-void
.end method

.method private dispose()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/os/MessageQueue;->mPtr:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/os/MessageQueue;->nativeDestroy(I)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/os/MessageQueue;->mPtr:I

    :cond_0
    return-void
.end method

.method private isIdlingLocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-static {v0}, Landroid/os/MessageQueue;->nativeIsIdling(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static native nativeDestroy(I)V
.end method

.method private static native nativeInit()I
.end method

.method private static native nativeIsIdling(I)Z
.end method

.method private static native nativePollOnce(II)V
.end method

.method private static native nativeWake(I)V
.end method

.method private removeAllFutureMessagesLocked()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_4

    .line 3
    iget-wide v3, v2, Landroid/os/Message;->when:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    .line 4
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    goto :goto_2

    .line 5
    :cond_0
    :goto_0
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v3, :cond_1

    return-void

    .line 6
    :cond_1
    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_3

    const/4 v0, 0x0

    .line 7
    iput-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 8
    :goto_1
    iget-object v0, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 9
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v0

    goto :goto_1

    :cond_3
    move-object v2, v3

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private removeAllMessagesLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 3
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    const-string v0, "Can\'t add a null IdleHandler"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 3
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v3, :cond_0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    .line 5
    iget-object v3, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "(Total messages: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", idling="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/os/MessageQueue;->isIdlingLocked()Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", quitting="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public enqueueMessage(Landroid/os/Message;J)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " sending message to a Handler on a dead thread"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string p1, "MessageQueue"

    .line 6
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    monitor-exit p0

    return v1

    .line 8
    :cond_0
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 9
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_6

    .line 10
    iget-wide v3, v0, Landroid/os/Message;->when:J

    cmp-long v3, p2, v3

    if-gez v3, :cond_1

    goto :goto_2

    .line 11
    :cond_1
    iget-boolean v3, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    .line 12
    :goto_0
    iget-object v4, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v4, :cond_5

    .line 13
    iget-wide v5, v4, Landroid/os/Message;->when:J

    cmp-long v5, p2, v5

    if-gez v5, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 14
    invoke-virtual {v4}, Landroid/os/Message;->isAsynchronous()Z

    move-result v0

    if-eqz v0, :cond_4

    move v3, v1

    :cond_4
    move-object v0, v4

    goto :goto_0

    .line 15
    :cond_5
    :goto_1
    iput-object v4, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 16
    iput-object p1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_3

    .line 17
    :cond_6
    :goto_2
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 18
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 19
    iget-boolean v3, p0, Landroid/os/MessageQueue;->mBlocked:Z

    :goto_3
    if-eqz v3, :cond_7

    .line 20
    iget p1, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-static {p1}, Landroid/os/MessageQueue;->nativeWake(I)V

    .line 21
    :cond_7
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 22
    :cond_8
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string p2, "Message must have a target."

    invoke-direct {p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_9
    new-instance p2, Landroid/util/AndroidRuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " This message is already in use."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public enqueueSyncBarrier(J)I
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 4
    iput-wide p1, v1, Landroid/os/Message;->when:J

    .line 5
    iput v0, v1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    :goto_0
    if-eqz v3, :cond_0

    .line 7
    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_0

    .line 8
    iget-object v2, v3, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 9
    iput-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 10
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 11
    :cond_1
    iput-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 12
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 13
    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v1, :cond_3

    .line 3
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 4
    monitor-exit p0

    return p1

    .line 5
    :cond_2
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 6
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v1, :cond_3

    .line 10
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 11
    monitor-exit p0

    return p1

    .line 12
    :cond_2
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 13
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isIdling()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isIdlingLocked()Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public next()Landroid/os/Message;
    .locals 13

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_0

    .line 1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 2
    :cond_0
    iget v4, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-static {v4, v2}, Landroid/os/MessageQueue;->nativePollOnce(II)V

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 5
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    .line 6
    iget-object v7, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v7, :cond_3

    .line 7
    :goto_1
    iget-object v7, v2, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v7, :cond_2

    .line 8
    invoke-virtual {v7}, Landroid/os/Message;->isAsynchronous()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    move-object v2, v7

    goto :goto_1

    :cond_2
    :goto_2
    move-object v12, v7

    move-object v7, v2

    move-object v2, v12

    goto :goto_3

    :cond_3
    move-object v7, v6

    :goto_3
    if-eqz v2, :cond_6

    .line 9
    iget-wide v8, v2, Landroid/os/Message;->when:J

    cmp-long v10, v4, v8

    if-gez v10, :cond_4

    sub-long/2addr v8, v4

    const-wide/32 v10, 0x7fffffff

    .line 10
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v2, v7

    goto :goto_5

    .line 11
    :cond_4
    iput-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v7, :cond_5

    .line 12
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v0, v7, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_4

    .line 13
    :cond_5
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 14
    :goto_4
    iput-object v6, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 15
    invoke-virtual {v2}, Landroid/os/Message;->markInUse()V

    .line 16
    monitor-exit p0

    return-object v2

    :cond_6
    move v2, v0

    .line 17
    :goto_5
    iget-boolean v7, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v7, :cond_7

    .line 18
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V

    .line 19
    monitor-exit p0

    return-object v6

    :cond_7
    if-gez v3, :cond_9

    .line 20
    iget-object v7, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v7, :cond_8

    iget-wide v7, v7, Landroid/os/Message;->when:J

    cmp-long v4, v4, v7

    if-gez v4, :cond_9

    .line 21
    :cond_8
    iget-object v3, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_9
    if-gtz v3, :cond_a

    const/4 v4, 0x1

    .line 22
    iput-boolean v4, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 23
    monitor-exit p0

    goto :goto_0

    .line 24
    :cond_a
    iget-object v2, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v2, :cond_b

    const/4 v2, 0x4

    .line 25
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v2, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 26
    :cond_b
    iget-object v2, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v2, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 27
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v2, v1

    :goto_6
    if-ge v2, v3, :cond_d

    .line 28
    iget-object v4, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v5, v4, v2

    .line 29
    aput-object v6, v4, v2

    .line 30
    :try_start_1
    invoke-interface {v5}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v4

    const-string v7, "MessageQueue"

    const-string v8, "IdleHandler threw exception"

    .line 31
    invoke-static {v7, v8, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v1

    :goto_7
    if-nez v4, :cond_c

    .line 32
    monitor-enter p0

    .line 33
    :try_start_2
    iget-object v4, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    monitor-exit p0

    goto :goto_8

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_c
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    move v2, v1

    move v3, v2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    .line 35
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public quit(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-eqz v0, :cond_2

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v0, :cond_0

    .line 4
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 8
    :goto_0
    iget p1, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-static {p1}, Landroid/os/MessageQueue;->nativeWake(I)V

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Main thread not allowed to quit."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p2, :cond_2

    .line 4
    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 5
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 6
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 7
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v1, :cond_4

    .line 8
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_4

    if-eqz p2, :cond_3

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p2, :cond_4

    .line 9
    :cond_3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 10
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 11
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1

    .line 12
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_2

    .line 4
    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 5
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 6
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 7
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v1, :cond_4

    .line 8
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_4

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_4

    .line 9
    :cond_3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 10
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 11
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1

    .line 12
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 13
    :cond_0
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_2

    .line 15
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_2

    .line 16
    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 17
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 18
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 19
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v1, :cond_4

    .line 20
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_4

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_4

    .line 21
    :cond_3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 22
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 23
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1

    .line 24
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_2
    return-void
.end method

.method public removeSyncBarrier(I)V
    .locals 4

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v2, :cond_0

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eq v2, p1, :cond_1

    .line 4
    :cond_0
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_6

    const/4 p1, 0x0

    if-eqz v1, :cond_2

    .line 5
    iget-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 6
    :cond_2
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v1, :cond_4

    :cond_3
    const/4 p1, 0x1

    .line 8
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    if-eqz p1, :cond_5

    .line 9
    iget-boolean p1, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez p1, :cond_5

    .line 10
    iget p1, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-static {p1}, Landroid/os/MessageQueue;->nativeWake(I)V

    .line 11
    :cond_5
    monitor-exit p0

    return-void

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

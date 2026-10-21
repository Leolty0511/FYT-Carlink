.class public abstract synthetic Lcom/google/common/util/concurrent/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/lang/Runnable;Ljava/time/Duration;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
    .locals 2

    invoke-static {p2}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, v0, v1, p2}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/util/concurrent/Callable;Ljava/time/Duration;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
    .locals 2

    invoke-static {p2}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, v0, v1, p2}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/lang/Runnable;Ljava/time/Duration;Ljava/time/Duration;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
    .locals 7

    .line 1
    invoke-static {p2}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v2

    .line 5
    invoke-static {p3}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v4

    .line 9
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    invoke-interface/range {v0 .. v6}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static bridge synthetic f(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-interface/range {p0 .. p6}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/lang/Runnable;Ljava/time/Duration;Ljava/time/Duration;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
    .locals 7

    .line 1
    invoke-static {p2}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v2

    .line 5
    invoke-static {p3}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v4

    .line 9
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    invoke-interface/range {v0 .. v6}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static bridge synthetic h(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-interface/range {p0 .. p6}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.class public abstract synthetic Lcom/google/common/util/concurrent/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/common/util/concurrent/TimeLimiter;Ljava/util/concurrent/Callable;Ljava/time/Duration;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    invoke-interface {p0, p1, v0, v1, p2}, Lcom/google/common/util/concurrent/TimeLimiter;->callUninterruptiblyWithTimeout(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static b(Lcom/google/common/util/concurrent/TimeLimiter;Ljava/util/concurrent/Callable;Ljava/time/Duration;)Ljava/lang/Object;
    .locals 2

    invoke-static {p2}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, v0, v1, p2}, Lcom/google/common/util/concurrent/TimeLimiter;->callWithTimeout(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/google/common/util/concurrent/TimeLimiter;Ljava/lang/Object;Ljava/lang/Class;Ljava/time/Duration;)Ljava/lang/Object;
    .locals 6

    invoke-static {p3}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/common/util/concurrent/TimeLimiter;->newProxy(Ljava/lang/Object;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/google/common/util/concurrent/TimeLimiter;Ljava/lang/Runnable;Ljava/time/Duration;)V
    .locals 2

    invoke-static {p2}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, v0, v1, p2}, Lcom/google/common/util/concurrent/TimeLimiter;->runUninterruptiblyWithTimeout(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static e(Lcom/google/common/util/concurrent/TimeLimiter;Ljava/lang/Runnable;Ljava/time/Duration;)V
    .locals 2

    invoke-static {p2}, Lcom/google/common/util/concurrent/Internal;->toNanosSaturated(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, v0, v1, p2}, Lcom/google/common/util/concurrent/TimeLimiter;->runWithTimeout(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

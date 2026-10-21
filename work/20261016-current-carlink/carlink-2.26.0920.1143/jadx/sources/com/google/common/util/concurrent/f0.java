package com.google.common.util.concurrent;

import java.time.Duration;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class f0 {
    public static Object a(TimeLimiter timeLimiter, Callable callable, Duration duration) {
        return timeLimiter.callUninterruptiblyWithTimeout(callable, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    public static Object b(TimeLimiter timeLimiter, Callable callable, Duration duration) {
        return timeLimiter.callWithTimeout(callable, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    public static Object c(TimeLimiter timeLimiter, Object obj, Class cls, Duration duration) {
        return timeLimiter.newProxy(obj, cls, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    public static void d(TimeLimiter timeLimiter, Runnable runnable, Duration duration) {
        timeLimiter.runUninterruptiblyWithTimeout(runnable, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    public static void e(TimeLimiter timeLimiter, Runnable runnable, Duration duration) {
        timeLimiter.runWithTimeout(runnable, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }
}

package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotMock;
import java.time.Duration;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
@GwtIncompatible
@DoNotMock("Use FakeTimeLimiter")
@J2ktIncompatible
public interface TimeLimiter {
    @CanIgnoreReturnValue
    @ParametricNullness
    <T> T callUninterruptiblyWithTimeout(Callable<T> callable, long j2, TimeUnit timeUnit);

    @CanIgnoreReturnValue
    @ParametricNullness
    <T> T callUninterruptiblyWithTimeout(Callable<T> callable, Duration duration);

    @CanIgnoreReturnValue
    @ParametricNullness
    <T> T callWithTimeout(Callable<T> callable, long j2, TimeUnit timeUnit);

    @CanIgnoreReturnValue
    @ParametricNullness
    <T> T callWithTimeout(Callable<T> callable, Duration duration);

    <T> T newProxy(T t2, Class<T> cls, long j2, TimeUnit timeUnit);

    <T> T newProxy(T t2, Class<T> cls, Duration duration);

    void runUninterruptiblyWithTimeout(Runnable runnable, long j2, TimeUnit timeUnit);

    void runUninterruptiblyWithTimeout(Runnable runnable, Duration duration);

    void runWithTimeout(Runnable runnable, long j2, TimeUnit timeUnit);

    void runWithTimeout(Runnable runnable, Duration duration);
}

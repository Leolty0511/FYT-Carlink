package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.time.Duration;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
@J2ktIncompatible
@ElementTypesAreNonnullByDefault
@GwtIncompatible
public final class FakeTimeLimiter implements TimeLimiter {
    @Override // com.google.common.util.concurrent.TimeLimiter
    public final /* synthetic */ Object callUninterruptiblyWithTimeout(Callable callable, Duration duration) {
        return f0.a(this, callable, duration);
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public final /* synthetic */ Object callWithTimeout(Callable callable, Duration duration) {
        return f0.b(this, callable, duration);
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public final /* synthetic */ Object newProxy(Object obj, Class cls, Duration duration) {
        return f0.c(this, obj, cls, duration);
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public final /* synthetic */ void runUninterruptiblyWithTimeout(Runnable runnable, Duration duration) {
        f0.d(this, runnable, duration);
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public final /* synthetic */ void runWithTimeout(Runnable runnable, Duration duration) {
        f0.e(this, runnable, duration);
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    @CanIgnoreReturnValue
    @ParametricNullness
    public <T> T callUninterruptiblyWithTimeout(Callable<T> callable, long j2, TimeUnit timeUnit) {
        return (T) callWithTimeout(callable, j2, timeUnit);
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    @CanIgnoreReturnValue
    @ParametricNullness
    public <T> T callWithTimeout(Callable<T> callable, long j2, TimeUnit timeUnit) throws ExecutionException {
        Preconditions.checkNotNull(callable);
        Preconditions.checkNotNull(timeUnit);
        try {
            return callable.call();
        } catch (Error e2) {
            throw new ExecutionError(e2);
        } catch (RuntimeException e3) {
            throw new UncheckedExecutionException(e3);
        } catch (Exception e4) {
            Platform.restoreInterruptIfIsInterruptedException(e4);
            throw new ExecutionException(e4);
        }
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    @CanIgnoreReturnValue
    public <T> T newProxy(T t2, Class<T> cls, long j2, TimeUnit timeUnit) {
        Preconditions.checkNotNull(t2);
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(timeUnit);
        return t2;
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public void runUninterruptiblyWithTimeout(Runnable runnable, long j2, TimeUnit timeUnit) {
        runWithTimeout(runnable, j2, timeUnit);
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public void runWithTimeout(Runnable runnable, long j2, TimeUnit timeUnit) {
        Preconditions.checkNotNull(runnable);
        Preconditions.checkNotNull(timeUnit);
        try {
            runnable.run();
        } catch (Error e2) {
            throw new ExecutionError(e2);
        } catch (RuntimeException e3) {
            throw new UncheckedExecutionException(e3);
        }
    }
}

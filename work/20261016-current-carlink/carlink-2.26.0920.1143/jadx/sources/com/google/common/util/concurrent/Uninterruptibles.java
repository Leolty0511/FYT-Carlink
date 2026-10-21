package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Verify;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.time.Duration;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
public final class Uninterruptibles {
    private Uninterruptibles() {
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static void awaitTerminationUninterruptibly(ExecutorService executorService) {
        Verify.verify(awaitTerminationUninterruptibly(executorService, Long.MAX_VALUE, TimeUnit.NANOSECONDS));
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static void awaitUninterruptibly(CountDownLatch countDownLatch) {
        boolean z2 = false;
        while (true) {
            try {
                countDownLatch.await();
                break;
            } catch (InterruptedException unused) {
                z2 = true;
            } catch (Throwable th) {
                if (z2) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
    }

    @CanIgnoreReturnValue
    @ParametricNullness
    public static <V> V getUninterruptibly(Future<V> future) {
        V v2;
        boolean z2 = false;
        while (true) {
            try {
                v2 = future.get();
                break;
            } catch (InterruptedException unused) {
                z2 = true;
            } catch (Throwable th) {
                if (z2) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        return v2;
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static void joinUninterruptibly(Thread thread) {
        boolean z2 = false;
        while (true) {
            try {
                thread.join();
                break;
            } catch (InterruptedException unused) {
                z2 = true;
            } catch (Throwable th) {
                if (z2) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static <E> void putUninterruptibly(BlockingQueue<E> blockingQueue, E e2) {
        boolean z2 = false;
        while (true) {
            try {
                blockingQueue.put(e2);
                break;
            } catch (InterruptedException unused) {
                z2 = true;
            } catch (Throwable th) {
                if (z2) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static void sleepUninterruptibly(Duration duration) {
        sleepUninterruptibly(Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static <E> E takeUninterruptibly(BlockingQueue<E> blockingQueue) {
        E eTake;
        boolean z2 = false;
        while (true) {
            try {
                eTake = blockingQueue.take();
                break;
            } catch (InterruptedException unused) {
                z2 = true;
            } catch (Throwable th) {
                if (z2) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        return eTake;
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static boolean tryAcquireUninterruptibly(Semaphore semaphore, Duration duration) {
        return tryAcquireUninterruptibly(semaphore, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static boolean tryLockUninterruptibly(Lock lock, Duration duration) {
        return tryLockUninterruptibly(lock, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static boolean awaitTerminationUninterruptibly(ExecutorService executorService, Duration duration) {
        return awaitTerminationUninterruptibly(executorService, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static void sleepUninterruptibly(long j2, TimeUnit timeUnit) {
        boolean z2 = false;
        try {
            long nanos = timeUnit.toNanos(j2);
            long jNanoTime = System.nanoTime() + nanos;
            while (true) {
                try {
                    TimeUnit.NANOSECONDS.sleep(nanos);
                    break;
                } catch (InterruptedException unused) {
                    z2 = true;
                    nanos = jNanoTime - System.nanoTime();
                }
            }
            if (z2) {
                Thread.currentThread().interrupt();
            }
        } catch (Throwable th) {
            if (z2) {
                Thread.currentThread().interrupt();
            }
            throw th;
        }
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static boolean tryAcquireUninterruptibly(Semaphore semaphore, long j2, TimeUnit timeUnit) {
        return tryAcquireUninterruptibly(semaphore, 1, j2, timeUnit);
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static boolean tryLockUninterruptibly(Lock lock, long j2, TimeUnit timeUnit) {
        boolean zTryLock;
        boolean z2 = false;
        try {
            long nanos = timeUnit.toNanos(j2);
            long jNanoTime = System.nanoTime() + nanos;
            while (true) {
                try {
                    zTryLock = lock.tryLock(nanos, TimeUnit.NANOSECONDS);
                    break;
                } catch (InterruptedException unused) {
                    z2 = true;
                    nanos = jNanoTime - System.nanoTime();
                }
            }
            if (z2) {
                Thread.currentThread().interrupt();
            }
            return zTryLock;
        } catch (Throwable th) {
            if (z2) {
                Thread.currentThread().interrupt();
            }
            throw th;
        }
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static boolean awaitTerminationUninterruptibly(ExecutorService executorService, long j2, TimeUnit timeUnit) {
        boolean zAwaitTermination;
        boolean z2 = false;
        try {
            long nanos = timeUnit.toNanos(j2);
            long jNanoTime = System.nanoTime() + nanos;
            while (true) {
                try {
                    zAwaitTermination = executorService.awaitTermination(nanos, TimeUnit.NANOSECONDS);
                    break;
                } catch (InterruptedException unused) {
                    z2 = true;
                    nanos = jNanoTime - System.nanoTime();
                }
            }
            if (z2) {
                Thread.currentThread().interrupt();
            }
            return zAwaitTermination;
        } catch (Throwable th) {
            if (z2) {
                Thread.currentThread().interrupt();
            }
            throw th;
        }
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static boolean tryAcquireUninterruptibly(Semaphore semaphore, int i2, Duration duration) {
        return tryAcquireUninterruptibly(semaphore, i2, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static boolean awaitUninterruptibly(CountDownLatch countDownLatch, Duration duration) {
        return awaitUninterruptibly(countDownLatch, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    @GwtIncompatible
    @CanIgnoreReturnValue
    @J2ktIncompatible
    @ParametricNullness
    public static <V> V getUninterruptibly(Future<V> future, Duration duration) {
        return (V) getUninterruptibly(future, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static void joinUninterruptibly(Thread thread, Duration duration) {
        joinUninterruptibly(thread, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static boolean awaitUninterruptibly(CountDownLatch countDownLatch, long j2, TimeUnit timeUnit) {
        boolean zAwait;
        boolean z2 = false;
        try {
            long nanos = timeUnit.toNanos(j2);
            long jNanoTime = System.nanoTime() + nanos;
            while (true) {
                try {
                    zAwait = countDownLatch.await(nanos, TimeUnit.NANOSECONDS);
                    break;
                } catch (InterruptedException unused) {
                    z2 = true;
                    nanos = jNanoTime - System.nanoTime();
                }
            }
            if (z2) {
                Thread.currentThread().interrupt();
            }
            return zAwait;
        } catch (Throwable th) {
            if (z2) {
                Thread.currentThread().interrupt();
            }
            throw th;
        }
    }

    @GwtIncompatible
    @CanIgnoreReturnValue
    @J2ktIncompatible
    @ParametricNullness
    public static <V> V getUninterruptibly(Future<V> future, long j2, TimeUnit timeUnit) {
        V v2;
        boolean z2 = false;
        try {
            long nanos = timeUnit.toNanos(j2);
            long jNanoTime = System.nanoTime() + nanos;
            while (true) {
                try {
                    v2 = future.get(nanos, TimeUnit.NANOSECONDS);
                    break;
                } catch (InterruptedException unused) {
                    z2 = true;
                    nanos = jNanoTime - System.nanoTime();
                }
            }
            if (z2) {
                Thread.currentThread().interrupt();
            }
            return v2;
        } catch (Throwable th) {
            if (z2) {
                Thread.currentThread().interrupt();
            }
            throw th;
        }
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static void joinUninterruptibly(Thread thread, long j2, TimeUnit timeUnit) {
        Preconditions.checkNotNull(thread);
        boolean z2 = false;
        try {
            long nanos = timeUnit.toNanos(j2);
            long jNanoTime = System.nanoTime() + nanos;
            while (true) {
                try {
                    TimeUnit.NANOSECONDS.timedJoin(thread, nanos);
                    break;
                } catch (InterruptedException unused) {
                    z2 = true;
                    nanos = jNanoTime - System.nanoTime();
                }
            }
            if (z2) {
                Thread.currentThread().interrupt();
            }
        } catch (Throwable th) {
            if (z2) {
                Thread.currentThread().interrupt();
            }
            throw th;
        }
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static boolean tryAcquireUninterruptibly(Semaphore semaphore, int i2, long j2, TimeUnit timeUnit) {
        boolean zTryAcquire;
        boolean z2 = false;
        try {
            long nanos = timeUnit.toNanos(j2);
            long jNanoTime = System.nanoTime() + nanos;
            while (true) {
                try {
                    zTryAcquire = semaphore.tryAcquire(i2, nanos, TimeUnit.NANOSECONDS);
                    break;
                } catch (InterruptedException unused) {
                    z2 = true;
                    nanos = jNanoTime - System.nanoTime();
                }
            }
            if (z2) {
                Thread.currentThread().interrupt();
            }
            return zTryAcquire;
        } catch (Throwable th) {
            if (z2) {
                Thread.currentThread().interrupt();
            }
            throw th;
        }
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static boolean awaitUninterruptibly(Condition condition, Duration duration) {
        return awaitUninterruptibly(condition, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static boolean awaitUninterruptibly(Condition condition, long j2, TimeUnit timeUnit) {
        boolean zAwait;
        boolean z2 = false;
        try {
            long nanos = timeUnit.toNanos(j2);
            long jNanoTime = System.nanoTime() + nanos;
            while (true) {
                try {
                    zAwait = condition.await(nanos, TimeUnit.NANOSECONDS);
                    break;
                } catch (InterruptedException unused) {
                    z2 = true;
                    nanos = jNanoTime - System.nanoTime();
                }
            }
            if (z2) {
                Thread.currentThread().interrupt();
            }
            return zAwait;
        } catch (Throwable th) {
            if (z2) {
                Thread.currentThread().interrupt();
            }
            throw th;
        }
    }
}

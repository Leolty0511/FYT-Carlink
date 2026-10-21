package com.android.internal.util;

import android.accessibilityservice.c;
import android.os.Process;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class ConcurrentUtils {
    private ConcurrentUtils() {
    }

    public static ExecutorService newFixedThreadPool(int i2, final String str, final int i3) {
        return Executors.newFixedThreadPool(i2, new ThreadFactory() { // from class: com.android.internal.util.ConcurrentUtils.1
            private final AtomicInteger threadNum = new AtomicInteger(0);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(final Runnable runnable) {
                return new Thread(str + this.threadNum.incrementAndGet()) { // from class: com.android.internal.util.ConcurrentUtils.1.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        Process.setThreadPriority(i3);
                        runnable.run();
                    }
                };
            }
        });
    }

    public static <T> T waitForFutureNoInterrupt(Future<T> future, String str) {
        try {
            return future.get();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new IllegalStateException(c.D(str, " interrupted"));
        } catch (ExecutionException e2) {
            throw new RuntimeException(c.D(str, " failed"), e2);
        }
    }
}

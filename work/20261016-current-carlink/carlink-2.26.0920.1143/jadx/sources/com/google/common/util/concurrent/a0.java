package com.google.common.util.concurrent;

import java.time.Duration;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class a0 {
    public static ListenableScheduledFuture a(ListeningScheduledExecutorService listeningScheduledExecutorService, Runnable runnable, Duration duration) {
        return listeningScheduledExecutorService.schedule(runnable, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    public static ListenableScheduledFuture b(ListeningScheduledExecutorService listeningScheduledExecutorService, Callable callable, Duration duration) {
        return listeningScheduledExecutorService.schedule(callable, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    public static ListenableScheduledFuture e(ListeningScheduledExecutorService listeningScheduledExecutorService, Runnable runnable, Duration duration, Duration duration2) {
        return listeningScheduledExecutorService.scheduleAtFixedRate(runnable, Internal.toNanosSaturated(duration), Internal.toNanosSaturated(duration2), TimeUnit.NANOSECONDS);
    }

    public static ListenableScheduledFuture g(ListeningScheduledExecutorService listeningScheduledExecutorService, Runnable runnable, Duration duration, Duration duration2) {
        return listeningScheduledExecutorService.scheduleWithFixedDelay(runnable, Internal.toNanosSaturated(duration), Internal.toNanosSaturated(duration2), TimeUnit.NANOSECONDS);
    }
}

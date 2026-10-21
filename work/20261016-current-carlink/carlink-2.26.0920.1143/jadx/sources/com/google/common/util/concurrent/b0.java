package com.google.common.util.concurrent;

import java.time.Duration;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class b0 {
    public static void a(Service service, Duration duration) {
        service.awaitRunning(Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    public static void b(Service service, Duration duration) {
        service.awaitTerminated(Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }
}

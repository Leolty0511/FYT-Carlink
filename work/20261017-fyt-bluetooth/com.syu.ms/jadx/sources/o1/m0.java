package o1;

import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class m0 implements Executor {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static m0 f16946d = new m0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f16949c = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f16947a = Executors.newScheduledThreadPool(2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashMap<Long, ScheduledFuture<?>> f16948b = new LinkedHashMap<>();

    public static m0 b() {
        return f16946d;
    }

    public void a(long j2) {
        synchronized (this) {
            ScheduledFuture<?> scheduledFutureRemove = this.f16948b.remove(Long.valueOf(j2));
            if (scheduledFutureRemove != null) {
                scheduledFutureRemove.cancel(true);
            }
        }
    }

    public long c(Runnable runnable, long j2, long j3, TimeUnit timeUnit) {
        long j4;
        synchronized (this) {
            ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay = this.f16947a.scheduleWithFixedDelay(runnable, j2, j3, timeUnit);
            j4 = this.f16949c;
            this.f16949c = 1 + j4;
            this.f16948b.put(Long.valueOf(j4), scheduledFutureScheduleWithFixedDelay);
        }
        return j4;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f16947a.schedule(runnable, 0L, TimeUnit.MILLISECONDS);
    }
}

package kotlinx.coroutines.scheduling;

import e.r;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f1040a = t.b.z(100000, 1, Long.MAX_VALUE, "kotlinx.coroutines.scheduler.resolution.ns");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f1041b;
    public static final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final long f1042d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final g f1043e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final r f1044f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final r f1045g;

    static {
        int i2 = k0.h.f991a;
        if (i2 < 2) {
            i2 = 2;
        }
        f1041b = t.b.A("kotlinx.coroutines.scheduler.core.pool.size", i2, 1, 0, 8);
        c = t.b.A("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 0, 2097150, 4);
        f1042d = TimeUnit.SECONDS.toNanos(t.b.z(60L, 1L, Long.MAX_VALUE, "kotlinx.coroutines.scheduler.keep.alive.sec"));
        f1043e = g.f1037g;
        f1044f = new r(0);
        f1045g = new r(1);
    }
}

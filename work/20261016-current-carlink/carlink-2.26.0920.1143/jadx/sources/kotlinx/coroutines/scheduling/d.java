package kotlinx.coroutines.scheduling;

import java.util.concurrent.Executor;
import kotlin.coroutines.EmptyCoroutineContext;

/* JADX INFO: loaded from: classes4.dex */
public final class d extends kotlinx.coroutines.f implements Executor {
    public static final d c = new d();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final k0.a f1035d;

    static {
        l lVar = l.c;
        int i2 = k0.h.f991a;
        if (64 >= i2) {
            i2 = 64;
        }
        int iA = t.b.A("kotlinx.coroutines.io.parallelism", i2, 0, 0, 12);
        lVar.getClass();
        if (!(iA >= 1)) {
            throw new IllegalArgumentException(t.b.y(Integer.valueOf(iA), "Expected positive parallelism level, but got ").toString());
        }
        f1035d = new k0.a(lVar, iA);
    }

    @Override // kotlinx.coroutines.b
    public final void a(u.g gVar, Runnable runnable) {
        f1035d.a(gVar, runnable);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO".toString());
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        a(EmptyCoroutineContext.INSTANCE, runnable);
    }

    @Override // kotlinx.coroutines.b
    public final String toString() {
        return "Dispatchers.IO";
    }
}

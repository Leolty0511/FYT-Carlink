package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;

/* JADX INFO: loaded from: classes4.dex */
public abstract class h extends kotlinx.coroutines.f {
    public final c c;

    public h(int i2, int i3, long j2) {
        this.c = new c(i2, i3, j2, "DefaultDispatcher");
    }

    @Override // kotlinx.coroutines.b
    public final void a(u.g gVar, Runnable runnable) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = c.f1025i;
        this.c.b(runnable, k.f1044f, false);
    }
}

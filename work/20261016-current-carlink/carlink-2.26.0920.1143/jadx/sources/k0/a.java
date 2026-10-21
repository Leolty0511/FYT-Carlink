package k0;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.scheduling.l;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends kotlinx.coroutines.b implements Runnable, g0.c {
    public final kotlinx.coroutines.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f979d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final b f980e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f981f;
    private volatile int runningWorkers;

    /* JADX WARN: Multi-variable type inference failed */
    public a(l lVar, int i2) {
        this.c = lVar;
        this.f979d = i2;
        if ((lVar instanceof g0.c ? (g0.c) lVar : null) == null) {
            int i3 = g0.b.f908a;
        }
        this.f980e = new b();
        this.f981f = new Object();
    }

    @Override // kotlinx.coroutines.b
    public final void a(u.g gVar, Runnable runnable) {
        this.f980e.a(runnable);
        boolean z2 = true;
        if (this.runningWorkers >= this.f979d) {
            return;
        }
        synchronized (this.f981f) {
            if (this.runningWorkers >= this.f979d) {
                z2 = false;
            } else {
                this.runningWorkers++;
            }
        }
        if (z2) {
            this.c.a(this, this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (true) {
            int i2 = 0;
            while (true) {
                Runnable runnable = (Runnable) this.f980e.d();
                if (runnable != null) {
                    try {
                        runnable.run();
                    } catch (Throwable th) {
                        th = th;
                        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
                        try {
                            g0.a aVar = (g0.a) emptyCoroutineContext.get(e.b.f752a);
                            if (aVar == null) {
                                kotlinx.coroutines.c.a(emptyCoroutineContext, th);
                            } else {
                                aVar.handleException(emptyCoroutineContext, th);
                            }
                        } catch (Throwable th2) {
                            if (th != th2) {
                                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                                kotlin.a.a(runtimeException, th);
                                th = runtimeException;
                            }
                            kotlinx.coroutines.c.a(emptyCoroutineContext, th);
                        }
                    }
                    i2++;
                    if (i2 >= 16 && this.c.b()) {
                        this.c.a(this, this);
                        return;
                    }
                }
            }
            synchronized (this.f981f) {
                this.runningWorkers--;
                if (this.f980e.c() == 0) {
                    return;
                } else {
                    this.runningWorkers++;
                }
            }
        }
    }
}

package o1;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: loaded from: classes2.dex */
public final class j implements Runnable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Handler f16904e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Object f16905f = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static j f16906g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f16907h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Handler f16908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f16909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public j f16910c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f16911d;

    public j() {
        if (f16904e == null) {
            HandlerThread handlerThread = new HandlerThread("HandlerHelper-Def");
            handlerThread.start();
            f16904e = new Handler(handlerThread.getLooper());
        }
    }

    public static j a() {
        synchronized (f16905f) {
            j jVar = f16906g;
            if (jVar == null) {
                return new j();
            }
            f16906g = jVar.f16910c;
            jVar.f16910c = null;
            f16907h--;
            return jVar;
        }
    }

    public static void b(Handler handler, Runnable runnable, long j2) {
        if (handler != null) {
            j jVarA = a();
            jVarA.f16908a = handler;
            jVarA.f16909b = runnable;
            if (j2 < 0) {
                j2 = 0;
            }
            jVarA.f16911d = j2;
            handler.post(jVarA);
        }
    }

    public static void c(Runnable runnable, long j2) {
        b(f16904e, runnable, j2);
    }

    public static void e(Handler handler, Runnable runnable) {
        if (handler != null) {
            j jVarA = a();
            jVarA.f16908a = handler;
            jVarA.f16909b = runnable;
            jVarA.f16911d = -1L;
            handler.post(jVarA);
        }
    }

    public static void f(Runnable runnable) {
        e(f16904e, runnable);
    }

    public final void d() {
        this.f16908a = null;
        this.f16909b = null;
        synchronized (f16905f) {
            int i2 = f16907h;
            if (i2 < 50) {
                this.f16910c = f16906g;
                f16906g = this;
                f16907h = i2 + 1;
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        long j2 = this.f16911d;
        if (j2 < 0) {
            this.f16908a.removeCallbacks(this.f16909b);
        } else {
            this.f16908a.postDelayed(this.f16909b, j2);
        }
        d();
    }
}

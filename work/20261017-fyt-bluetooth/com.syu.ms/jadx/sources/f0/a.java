package f0;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f1849a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1850b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1851c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1852d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1853e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public RunnableC0038a f1854f;

    /* JADX INFO: renamed from: f0.a$a, reason: collision with other inner class name */
    public class RunnableC0038a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1855a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1856b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1857c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1858d;

        public RunnableC0038a(int i2, int i3, int i4) {
            this.f1855a = i2;
            this.f1857c = i3;
            this.f1858d = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.i(Math.max(this.f1855a, this.f1856b), this.f1857c, this.f1858d);
        }
    }

    public a() {
        HandlerThread handlerThread = new HandlerThread("amp-work");
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.f1849a = handler;
        handler.postDelayed(this, 500L);
    }

    public abstract void a();

    public void b(int i2, int i3, int i4, int i5) {
        RunnableC0038a runnableC0038a = this.f1854f;
        if (runnableC0038a != null) {
            this.f1849a.removeCallbacks(runnableC0038a);
            if (i2 >= 0) {
                this.f1854f.f1855a = i2;
            }
            if (i3 >= 0) {
                this.f1854f.f1856b = i3;
            }
            RunnableC0038a runnableC0038a2 = this.f1854f;
            runnableC0038a2.f1857c = i4;
            runnableC0038a2.f1858d = i5;
        } else {
            this.f1854f = new RunnableC0038a(i2, i4, i5);
        }
        this.f1849a.postDelayed(this.f1854f, 50L);
    }

    public abstract boolean c(int i2, int[] iArr, float[] fArr, String[] strArr);

    public abstract boolean d();

    public abstract void e();

    public void f(boolean z2) {
    }

    public abstract void g();

    public abstract boolean h(y.b bVar, int i2);

    public void i(int i2, int i3, int i4) {
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1849a.removeCallbacks(this);
        boolean z2 = u0.b.f17320f == 1 && u0.b.f17306a0 == 1;
        if (z2 != this.f1850b) {
            this.f1850b = z2;
            if (z2 && !this.f1852d) {
                boolean zD = d();
                this.f1852d = zD;
                if (zD) {
                    g();
                }
            } else if (!z2 && this.f1852d) {
                a();
                this.f1852d = false;
            }
        }
        e();
        this.f1849a.postDelayed(this, 300L);
    }
}

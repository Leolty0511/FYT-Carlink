package q0;

import android.util.Log;
import o1.g0;
import o1.k;
import o1.n;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class a implements d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f17116c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f17117d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17118e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public g0 f17114a = new g0(getClass().getName(), 2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public n f17115b = new n();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f17119f = new RunnableC0097a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f17120g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f17121h = new c();

    /* JADX INFO: renamed from: q0.a$a, reason: collision with other inner class name */
    public class RunnableC0097a implements Runnable {
        public RunnableC0097a() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            a.this.f17116c = false;
            if (q0.b.f17129e == 0) {
                a.this.m(0, 1);
                return;
            }
            int i2 = (q0.b.f17130f - 7600) / 5;
            a.this.f17117d = (i2 >> 8) & 3;
            a.this.f17118e = i2 & 255;
            a aVar = a.this;
            aVar.m(0, aVar.f17117d | 128);
            k.a().postDelayed(a.this.f17120g, 50L);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.m(3, 16);
            a.this.m(4, 33);
            a.this.m(0, 65);
            a.this.m(0, 1);
            k.a().postDelayed(a.this.f17121h, 50L);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.m(24, 228);
            a.this.m(27, 240);
            a aVar = a.this;
            aVar.m(1, aVar.f17118e);
            a.this.m(2, 185);
            a aVar2 = a.this;
            aVar2.m(0, aVar2.f17117d | 32);
        }
    }

    @Override // q0.d
    public void a() {
        if (g.e.a() == 4) {
            this.f17115b.f("/dev/i2c-4");
        }
        this.f17114a.a();
    }

    @Override // q0.d
    public void b() {
        this.f17114a.j();
        this.f17115b.close();
    }

    @Override // q0.d
    public void e(int i2) {
        if (q0.b.f17130f != i2) {
            q0.b.f17130f = i2;
            x.x(q0.b.f17127c, 1, i2);
            Log.d("wch", "ModuleEmitter U_FREQ value = " + q0.b.f17130f);
            this.f17114a.g(0, i2);
        }
        if (this.f17116c) {
            return;
        }
        synchronized (this.f17119f) {
            if (!this.f17116c) {
                this.f17116c = true;
                k.a().postDelayed(this.f17119f, 150L);
            }
        }
    }

    @Override // q0.d
    public void f(int i2) {
        if (q0.b.f17129e != i2) {
            q0.b.f17129e = i2;
            x.x(q0.b.f17127c, 0, i2);
            Log.d("wch", "ModuleEmitter U_ON value = " + q0.b.f17129e);
            this.f17114a.g(1, i2);
        }
        e(q0.b.f17130f);
    }

    public final void m(int i2, int i3) {
    }
}

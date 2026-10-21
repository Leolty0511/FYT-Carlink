package g;

import com.syu.jni.ControlNative;
import o1.n0;
import o1.q0;
import o1.y;

/* JADX INFO: loaded from: classes.dex */
public class a implements g.g {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f2181j = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Runnable f2182a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f2183b = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f2184c = new d();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f2185d = new e();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2186e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2187f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f2188g = new f();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Runnable f2189h = new g();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f2190i = new h();

    /* JADX INFO: renamed from: g.a$a, reason: collision with other inner class name */
    public class RunnableC0043a implements Runnable {
        public RunnableC0043a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.e.e() == 7) {
                n0.b();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.a4) {
                if (u0.b.n4 == 0 && u0.b.f17347o == 1) {
                    u0.d.f17410j = 1;
                    u0.d.C(0);
                } else if (u0.b.n4 == 1 && u0.d.f17410j == 1) {
                    u0.d.C(1);
                    u0.d.f17410j = 0;
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17320f == 0) {
                q0.E();
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.b.f16e0 != 0) {
                q0.N();
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q0.I(d1.d.f1573f);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            int i2;
            int i3;
            if (a.this.f2186e != 0) {
                return;
            }
            boolean z2 = false;
            if (u0.b.f17347o != 0) {
                i2 = 1;
            } else {
                i2 = (u0.b.o4 == 0 || u0.b.f17320f == 0 || u0.b.f17326h != 0) ? 0 : u0.b.o4;
            }
            if (a.f2181j != i2) {
                a.f2181j = i2;
                z2 = true;
            }
            if (i2 >= 0 && i2 < 11) {
                int i4 = u0.b.t4[i2];
                if (a.this.f2187f != i4 || z2) {
                    a.this.f2187f = i4;
                    int i5 = u0.b.D;
                    if (i2 == 1 && (i5 == 9 || i5 == 10)) {
                        o1.j.b(o1.l.a(), a.this.f2189h, 500L);
                    } else {
                        o1.j.e(o1.l.a(), a.this.f2189h);
                        o1.j.b(o1.l.a(), a.this.f2189h, 0L);
                    }
                }
                if (g.e.e() == 6) {
                    if (i2 == 6) {
                        u0.b.f17311c.c(5);
                    } else if (i2 == 5 && ((i3 = p0.b.f17024f) == 2 || i3 == 3)) {
                        u0.b.f17311c.c(14);
                    }
                }
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q0.O(a.this.f2187f);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            byte[] bArrM = q0.M();
            if (bArrM == null || bArrM.length < 3 || bArrM[1] != 0) {
                return;
            }
            g.f.w(this);
            ControlNative.getInstance().fyt_vehicle_write(new byte[]{1, 4}, 2);
            a.this.f2186e = 0;
            a.this.f2188g.run();
        }
    }

    @Override // g.g
    public void a() {
        a.d.f45a.d(this.f2184c);
        d1.e.f1579a.d(this.f2185d);
        u0.c.f17379f.d(this.f2188g);
        y yVar = u0.c.f17376c;
        yVar.d(this.f2188g);
        u0.c.f17384k.d(this.f2188g);
        u0.c.f17383j.d(this.f2188g);
        yVar.d(this.f2183b);
        m1.b.f13518a.d(this.f2183b);
        g.f.w(this.f2190i);
        u0.c.f17381h.d(this.f2182a);
    }

    @Override // g.g
    public void b() {
        a.d.f45a.a(this.f2184c, 1);
        d1.e.f1579a.a(this.f2185d, 1);
        this.f2186e = 1;
        this.f2187f = -1;
        u0.c.f17379f.a(this.f2188g, 0);
        y yVar = u0.c.f17376c;
        yVar.a(this.f2188g, 0);
        u0.c.f17384k.a(this.f2188g, 0);
        u0.c.f17383j.a(this.f2188g, 0);
        yVar.a(this.f2183b, 0);
        m1.b.f13518a.a(this.f2183b, 0);
        g.f.b(this.f2190i);
        if (ControlNative.getInstance().fyt_update_get() != 0) {
            a.b.f14d0 = 1;
            ControlNative.getInstance().fyt_update_clear();
        }
        u0.c.f17381h.a(this.f2182a, 0);
        u0.c.A.a(new RunnableC0043a(), 0);
    }
}

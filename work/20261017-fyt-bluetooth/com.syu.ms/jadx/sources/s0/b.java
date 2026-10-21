package s0;

import android.util.Log;
import android.view.Window;
import com.syu.jni.ToolsJni;
import o1.g0;
import o1.n;
import o1.o0;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class b implements e {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f17169g = 29;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static boolean f17170h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int[] f17171i = {28, 48, 65, 80, 90};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int[] f17172j = {5, 10, 20, 30, 40};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f17173k = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public g0 f17174a = new g0(getClass().getName(), 6);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17175b = "gsensor";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public n f17176c = new n();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f17177d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f17178e = new RunnableC0111b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f17179f = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (s0.c.f17188f == 0) {
                return;
            }
            if (s0.c.f17198p == 0 && b.f17173k > 0) {
                b.k(500);
                return;
            }
            if (b.f17173k < 0) {
                int unused = b.f17173k = 0;
            }
            if (b.f17170h) {
                b bVar = b.this;
                int iR = bVar.r(bVar.q(b.f17169g, 40) & 255);
                b bVar2 = b.this;
                int iR2 = bVar2.r(bVar2.q(b.f17169g, 41) & 255);
                b bVar3 = b.this;
                int iR3 = bVar3.r(bVar3.q(b.f17169g, 42) & 255);
                b bVar4 = b.this;
                int iR4 = bVar4.r(bVar4.q(b.f17169g, 43) & 255);
                b bVar5 = b.this;
                int iR5 = bVar5.r(bVar5.q(b.f17169g, 44) & 255);
                b bVar6 = b.this;
                int iR6 = bVar6.r(bVar6.q(b.f17169g, 45) & 255);
                Log.d("gsensor", "--------------------------");
                Log.d("gsensor", "x = " + String.format("%02X ", Integer.valueOf(iR2)) + " y = " + String.format("%02X ", Integer.valueOf(iR4)) + " z = " + String.format("%02X ", Integer.valueOf(iR6)));
                d.e(iR2, iR);
                d.f(iR4, iR3);
                d.g(iR6, iR5);
                int i2 = b.f17171i[o0.a(s0.c.f17190h, 0, 4)];
                if (iR2 > i2 || iR4 > i2 || iR6 > i2) {
                    Log.d("gsensor", "发生了碰撞");
                    a.f.p().s("发生了碰撞 DVR拍照");
                    d.j(1);
                }
            }
        }
    }

    /* JADX INFO: renamed from: s0.b$b, reason: collision with other inner class name */
    public class RunnableC0111b implements Runnable {
        public RunnableC0111b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17320f;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int unused = b.f17173k = Window.PROGRESS_SECONDARY_END;
        }
    }

    public static /* synthetic */ int k(int i2) {
        int i3 = f17173k - i2;
        f17173k = i3;
        return i3;
    }

    @Override // s0.e
    public void a() {
        if (g.e.a() == 4) {
            this.f17176c.f("/dev/i2c-4");
        } else if (g.f.f(5)) {
            this.f17176c.f("/dev/i2c-2");
        }
        if (s() >= 0) {
            t();
            f17170h = true;
            d.a(this.f17177d);
        }
        this.f17174a.a();
        u0.c.f17386m.a(this.f17179f, 0);
        u0.c.f17376c.a(this.f17178e, 1);
        p();
    }

    @Override // s0.e
    public void b() {
        d.l(this.f17177d);
        this.f17174a.j();
        u0.c.f17376c.d(this.f17178e);
        u0.c.f17386m.d(this.f17179f);
    }

    @Override // s0.e
    public void c(int i2) {
        int iA = o0.a(i2, 0, 4);
        if (s0.c.f17190h != iA) {
            s0.c.f17190h = iA;
            x.x(s0.c.f17185c, 4, iA);
            this.f17174a.g(1, iA);
        }
    }

    @Override // s0.e
    public void d(int i2) {
        if (i2 == 0) {
            v(0);
        } else if (i2 == 1) {
            v(1);
        } else {
            if (i2 != 2) {
                return;
            }
            d(s0.c.f17198p == 0 ? 1 : 0);
        }
    }

    @Override // s0.e
    public void e(int i2) {
        int iA = o0.a(i2, 0, 3);
        if (s0.c.f17194l != iA) {
            s0.c.f17194l = iA;
            x.x(s0.c.f17185c, 6, iA);
            this.f17174a.g(3, iA);
        }
    }

    @Override // s0.e
    public void f(int i2) {
        if (i2 == 0) {
            u(0);
        } else if (i2 == 1) {
            u(1);
        } else {
            if (i2 != 2) {
                return;
            }
            f(s0.c.f17188f == 0 ? 1 : 0);
        }
    }

    @Override // s0.e
    public void g(int i2) {
        int iA = o0.a(i2, 0, 4);
        x(f17169g, 58, f17172j[iA]);
        if (s0.c.f17192j != iA) {
            s0.c.f17192j = iA;
            x.x(s0.c.f17185c, 5, iA);
            this.f17174a.g(2, iA);
        }
    }

    @Override // s0.e
    public void h(int i2) {
        if (i2 == 0) {
            w(0);
        } else if (i2 == 1) {
            w(1);
        } else {
            if (i2 != 2) {
                return;
            }
            h(s0.c.f17196n == 0 ? 1 : 0);
        }
    }

    public final void p() {
        f(this.f17174a.d(0, s0.c.f17189g));
        c(this.f17174a.d(1, s0.c.f17191i));
        g(this.f17174a.d(2, s0.c.f17193k));
        e(this.f17174a.d(3, s0.c.f17195m));
        h(this.f17174a.d(4, s0.c.f17197o));
        d(this.f17174a.d(5, s0.c.f17199q));
    }

    public final int q(int i2, int i3) {
        return this.f17176c.g(i2, i3);
    }

    public final int r(int i2) {
        return ((i2 >> 7) & 1) == 1 ? (255 - i2) + 1 : i2;
    }

    public final int s() {
        return x(f17169g, 34, 0) + 0 + x(f17169g, 56, 0) + x(f17169g, 36, 128) + x(f17169g, 32, 56) + x(f17169g, 33, 13) + x(f17169g, 35, 128);
    }

    public final void t() {
        x(f17169g, 37, 2);
        x(f17169g, 58, 5);
        x(f17169g, 59, 127);
        x(f17169g, 60, 5);
        x(f17169g, 56, 21);
        x(f17169g, 34, 128);
    }

    public final void u(int i2) {
        if (s0.c.f17188f != i2) {
            s0.c.f17188f = i2;
            x.x(s0.c.f17185c, 3, i2);
            this.f17174a.g(0, i2);
            ToolsJni.cmd_153_gsensor_power_onoff(i2);
        }
    }

    public final void v(int i2) {
        if (s0.c.f17198p != i2) {
            s0.c.f17198p = i2;
            x.x(s0.c.f17185c, 8, i2);
            this.f17174a.g(5, i2);
        }
    }

    public final void w(int i2) {
        if (s0.c.f17196n != i2) {
            s0.c.f17196n = i2;
            x.x(s0.c.f17185c, 7, i2);
            this.f17174a.g(4, i2);
        }
    }

    public final int x(int i2, int i3, int i4) {
        return this.f17176c.h(i2, i3, i4);
    }
}

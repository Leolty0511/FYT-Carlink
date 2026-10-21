package e;

import android.media.AudioSystem;
import android.util.SparseArray;
import app.App;
import java.util.LinkedList;
import java.util.regex.Pattern;
import o1.j0;
import o1.s0;
import o1.u;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f1631a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f1632b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f1633c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f1634d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f1635e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f1636f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f1637g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Pattern f1638h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static boolean f1639i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static Runnable f1640j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f1641k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Runnable f1642l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static SparseArray<LinkedList<String>> f1643m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f1644n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static e.a f1645o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f1646p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static Runnable f1647q;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1648a = false;

        @Override // java.lang.Runnable
        public void run() {
            boolean z2 = h0.c.G == 1;
            if (this.f1648a != z2) {
                this.f1648a = z2;
                if (z2 || f.f1634d <= 1) {
                    return;
                }
                f.f1634d = 2;
            }
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            synchronized (f.class) {
                int iH = f.h(AudioSystem.isStreamActive(3, 0) || AudioSystem.isStreamActive(4, 0) || AudioSystem.isStreamActive(5, 0) || AudioSystem.isStreamActive(2, 0) || AudioSystem.isStreamActive(1, 0) || AudioSystem.isStreamActive(0, 0) || AudioSystem.isStreamActive(8, 0));
                if (f.f1641k != iH) {
                    f.f1641k = iH;
                }
                if (iH == 0) {
                    if (y0.f.P0 != 0) {
                        y0.f.P0 = 0;
                        y0.f.Q0 = 0;
                        y0.f.R0 = 0;
                        u0.d.I3(111, y0.f.Q0);
                        y0.g.f18112v.c();
                        y0.g.f18110t.c();
                        y0.h.M();
                    }
                } else if (y0.f.P0 == 0) {
                    y0.f.P0 = 1;
                    y0.g.f18112v.c();
                    y0.h.M();
                }
                if (y0.f.Q0 != 0) {
                    int i2 = f.f1631a;
                    if (i2 > 0) {
                        f.f1631a = i2 - 1;
                    }
                    int i3 = f.f1636f;
                    if (i3 > 0) {
                        f.f1636f = i3 - 1;
                    }
                    if (f.f1631a <= 0 && f.f1636f <= 0) {
                        y0.f.Q0 = f.b.f1841d.f1844c.e() ? 1 : 0;
                        y0.g.f18110t.c();
                        y0.h.M();
                        if (f.f1639i) {
                            f.f1639i = false;
                        }
                    }
                }
                if (y0.f.R0 != 0) {
                    int i4 = f.f1632b;
                    if (i4 > 0) {
                        f.f1632b = i4 - 1;
                    }
                    int i5 = f.f1637g;
                    if (i5 > 0) {
                        f.f1637g = i5 - 1;
                    }
                    if (f.f1632b <= 0 && f.f1637g <= 0) {
                        y0.f.R0 = f.b.f1841d.f1844c.f() ? 1 : 0;
                        y0.h.M();
                    }
                }
                if (y0.f.T0 != 0) {
                    int i6 = f.f1634d;
                    if (i6 > 0) {
                        f.f1634d = i6 - 1;
                    }
                    int i7 = f.f1635e;
                    if (i7 > 0) {
                        f.f1635e = i7 - 1;
                    }
                    if (f.f1634d <= 0 && f.f1635e <= 0) {
                        y0.f.T0 = f.b.f1841d.f1844c.g() ? 1 : 0;
                        y0.g.f18101k.c(Integer.valueOf(y0.f.T0));
                        y0.h.M();
                    }
                }
                int i8 = f.f1633c;
                if (i8 > 0) {
                    int i9 = i8 - 1;
                    f.f1633c = i9;
                    if (i9 <= 0 && u0.b.k4 == 1) {
                        u0.b.k4 = 0;
                        y0.h.M();
                    }
                }
            }
        }
    }

    public class c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            f.d();
            if (f.f1646p == 5) {
                u.u();
                u.f("com.syu.screen.cali");
                f.p(f.f1647q);
                int unused = f.f1646p = 0;
                int unused2 = f.f1644n = 0;
            }
        }
    }

    static {
        b bVar = new b();
        f1642l = bVar;
        f1643m = null;
        g(bVar);
        f1643m = new SparseArray<>();
        f1644n = 0;
        f1645o = new e.a(0, 0, 0);
        f1646p = 0;
        f1647q = new c();
    }

    public static /* synthetic */ int d() {
        int i2 = f1646p;
        f1646p = i2 + 1;
        return i2;
    }

    public static void g(Runnable runnable) {
        j0.f16915j.c(runnable);
    }

    public static int h(boolean z2) {
        boolean z3 = f1631a == 120 || f1636f == 120;
        boolean z4 = f1634d == 120 || f1635e == 120;
        boolean z5 = f1632b == 120 || f1637g == 120;
        if (z2) {
            return 1;
        }
        int i2 = (z3 || z5 || z4) ? 1 : 0;
        f.c cVar = f.b.f1841d.f1844c;
        if (i2 == 0 && cVar != null && (cVar.e() || cVar.g() || cVar.f())) {
            return 1;
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void i(int i2) {
        int i3;
        if ((i2 == 1) == true) {
            i3 = 120;
        } else {
            i3 = f1637g > 1 ? 1 : 0;
        }
        f1636f = i3;
        boolean zE = f.b.f1841d.f1844c.e();
        y0.f.Q0 = zE ? 1 : 0;
        u0.d.I3(111, zE ? 1 : 0);
        y0.g.f18110t.c();
        y0.h.M();
    }

    public static void j(int i2) {
        f1637g = i2 == 1 ? 120 : 1;
        y0.f.R0 = f.b.f1841d.f1844c.f() ? 1 : 0;
        y0.h.M();
    }

    public static void k(int i2) {
        boolean z2 = i2 == 1;
        f1635e = z2 ? 120 : 1;
        if (z2) {
            y0.f.T0 = f.b.f1841d.f1844c.g() ? 1 : 0;
            y0.g.f18101k.c(Integer.valueOf(y0.f.T0));
            y0.h.M();
        }
    }

    public static void l() {
        h0.d.f2463b.a(f1640j, 1);
    }

    public static boolean m() {
        return f1635e > 0;
    }

    public static boolean n(String str) {
        Pattern pattern;
        if (f1638h == null) {
            try {
                String strC = q1.a.c(App.c().getAssets().open("app_category/voice_app.txt"));
                if (strC != null && !strC.isEmpty()) {
                    f1638h = Pattern.compile(strC);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return s0.j(u0.b.L1, str) || ((pattern = f1638h) != null && pattern.matcher(str).find());
    }

    public static void o() {
    }

    public static void p(Runnable runnable) {
        j0.f16915j.d(runnable);
    }

    public static void q(int i2, float f2, float f3) {
        int i3 = (int) f2;
        int i4 = (int) f3;
        f1645o.a(i2, i3, i4);
        e.f1627e.c(f1645o);
        if (i2 == 0) {
            g1.d.a();
        }
        u0.d.I3(77, i2, i3, i4);
        if (u0.b.f4) {
            if (i2 == 0) {
                f1644n++;
            } else {
                f1644n = 0;
            }
            int i5 = f1644n;
            if (i5 >= 5) {
                f1644n = 5;
            } else if (i5 <= 0) {
                f1644n = 0;
            }
            if (f1644n >= 5) {
                f1646p = 0;
                g(f1647q);
            } else {
                p(f1647q);
                f1646p = 0;
            }
        }
    }
}

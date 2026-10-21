package o0;

import android.net.ProxyProperties;
import android.net.wifi.BatchedScanSettings;
import o1.j0;
import o1.p0;
import o1.x;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Runnable f16806a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Runnable f16807b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f16808c = 0;

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = e.K - 1;
            e.K = i2;
            if (i2 <= 0) {
                g.S(0);
                g.L(this);
            }
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17320f == 0 || e.f16778h == 0 || u0.b.D != 4 || e.I != 1) {
                return;
            }
            int i2 = e.L - 1;
            e.L = i2;
            if (i2 > 0 || u0.b.f17326h != 0) {
                return;
            }
            g.z(3);
        }
    }

    public static void A(int i2) {
        if (e.f16797u != i2) {
            e.f16797u = i2;
            T(4, i2);
        }
    }

    public static void B(int i2) {
        if (e.f16800x != i2) {
            e.f16800x = i2;
            T(7, i2);
        }
    }

    public static void C(int i2) {
        if (e.D != i2) {
            e.D = i2;
            T(19, i2);
            J(e.B, e.C, e.D);
        }
    }

    public static void D(int i2) {
        if (e.E != i2) {
            e.E = i2;
            T(17, i2);
        }
    }

    public static void E(int i2) {
        if (e.A != i2) {
            e.A = i2;
            T(31, i2);
            if (u0.b.D == 4) {
                F();
            }
        }
    }

    public static void F() {
        k.s(228, 204, r(), 0, s(), e.P);
    }

    public static void G(int i2) {
        if (e.f16794r != i2) {
            e.f16794r = i2;
            T(12, i2);
            H(e.f16794r, e.f16795s);
        }
    }

    public static void H(int i2, int i3) {
        if (i2 <= i3 && u0.b.D == 4) {
            int[] iArr = new int[10];
            int i4 = 0;
            iArr[0] = 228;
            iArr[1] = 206;
            iArr[2] = (i2 / BatchedScanSettings.MAX_INTERVAL_SEC) & 255;
            iArr[3] = ((i2 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) & 255;
            iArr[4] = i2 % 60;
            String str = e.f16788m;
            if (str != null && !str.isEmpty()) {
                i4 = 1;
            }
            iArr[5] = i4;
            iArr[6] = (i3 >> 24) & 255;
            iArr[7] = (i3 >> 16) & 255;
            iArr[8] = (i3 >> 8) & 255;
            iArr[9] = i3 & 255;
            k.s(iArr);
        }
    }

    public static void I(int i2) {
        if (e.B != i2) {
            e.B = i2;
            T(14, i2);
            J(e.B, e.C, e.D);
        }
    }

    public static void J(int i2, int i3, int i4) {
        int i5 = i2 + 1;
        if (i5 <= i3 && u0.b.D == 4) {
            k.s(228, 207, 0, (i5 >> 8) & 255, i5 & 255, 0, 0, (i3 >> 8) & 255, i3 & 255, 0, i4 & 255, 0, 0, 0, 0);
        }
    }

    public static void K(int i2) {
        if (e.P != i2) {
            e.P = i2;
            T(34, i2);
            if (u0.b.D == 4) {
                F();
            }
        }
    }

    public static void L(Runnable runnable) {
        j0.f16915j.d(runnable);
    }

    public static void M(int i2) {
        if (e.O != i2) {
            e.O = i2;
            T(32, i2);
            if (u0.b.D == 4) {
                F();
            }
        }
    }

    public static void N(int i2) {
        if (e.R != i2) {
            e.R = i2;
            T(36, i2);
        }
    }

    public static void O(int i2) {
        if (e.f16795s != i2) {
            e.f16795s = i2;
            T(13, i2);
            H(e.f16794r, e.f16795s);
        }
    }

    public static void P(int i2) {
        if (e.C != i2) {
            e.C = i2;
            T(15, i2);
            J(e.B, e.C, e.D);
        }
    }

    public static void Q(int i2) {
        if (e.Q != i2) {
            e.Q = i2;
            T(35, i2);
        }
    }

    public static void R(String str) {
        if (p0.g(e.f16792p, str)) {
            return;
        }
        e.f16792p = str;
        V(16, str);
    }

    public static void S(int i2) {
        if (e.J != i2) {
            e.J = i2;
            T(21, i2);
        }
    }

    public static void T(int i2, int... iArr) {
        U(i2, iArr, null, null);
    }

    public static void U(int i2, int[] iArr, float[] fArr, String[] strArr) {
        i iVarX2 = i.X2();
        if (iVarX2 != null) {
            iVarX2.H0(i2, iArr, fArr, strArr);
        }
    }

    public static void V(int i2, String... strArr) {
        U(i2, null, null, strArr);
    }

    public static void W(y.b bVar) {
        x xVarL2;
        boolean z2 = e.f16774f != 0;
        u0.d.m0(a.b.f25m, z2);
        if (bVar == null || !z2 || (xVarL2 = u0.i.l3().L2()) == null) {
            return;
        }
        xVarL2.E(bVar, 39, 1, a.b.f25m);
    }

    public static void X(String str) {
        if (str != null && e.f16764a == 1) {
            o0.b.I(str);
        }
    }

    public static void Y(int i2) {
        if (e.f16798v != i2) {
            e.f16798v = i2;
            T(5, i2);
        }
    }

    public static void Z(int i2) {
        if (e.f16801y != i2) {
            e.f16801y = i2;
            T(8, i2);
        }
    }

    public static void a(Runnable runnable) {
        j0.f16915j.c(runnable);
    }

    public static void b(int i2) {
        if (e.f16796t != i2) {
            e.f16796t = i2;
            T(3, i2);
        }
    }

    public static void c(int i2) {
        if (e.f16799w != i2) {
            e.f16799w = i2;
            T(6, i2);
        }
    }

    public static void d() {
        int i2 = (e.f16778h == 0 && e.f16780i == 0 && e.f16782j == 0) ? 0 : 1;
        if (e.f16784k != i2) {
            e.f16784k = i2;
            T(29, i2);
            f.f16805c.c();
            W(null);
            if (i2 == 0 || e.I != 2) {
                return;
            }
            T(20, 1);
        }
    }

    public static void e(int i2) {
        if (e.H != i2) {
            e.H = i2;
            e.T.d(i2);
            T(39, i2);
        }
    }

    public static void f(int i2) {
        if (e.S != i2) {
            e.S = i2;
            T(38, i2);
            if (u0.b.D == 4) {
                k.s(228, 205, q(), 0, 0);
            }
        }
    }

    public static void g(int i2) {
        if (f16808c != 0) {
            i2 = 1;
        }
        if (e.f16774f != i2) {
            e.f16774f = i2;
            T(25, i2);
            W(null);
            m1.c.g(143, i2);
        }
    }

    public static void h(int i2) {
        if (i2 == 0) {
            g(0);
        } else if (i2 == 1) {
            g(1);
        } else {
            if (i2 != 2) {
                return;
            }
            g((e.f16774f + 1) & 1);
        }
    }

    public static void i(int i2) {
        f16808c = i2;
        g(e.f16774f);
    }

    public static void j(String str) {
        if (p0.g(e.f16793q, str)) {
            return;
        }
        e.f16793q = str;
        V(30, str);
    }

    public static void k(int i2) {
        if (e.N != i2) {
            e.N = i2;
            T(23, i2);
        }
    }

    public static void l() {
        m();
        D(0);
        w(0);
        G(0);
        O(0);
        I(0);
        P(0);
        R(null);
        v(null);
        u(null);
        t(null);
    }

    public static void m() {
        synchronized (e.f16770d) {
            b(0);
            A(0);
            Y(0);
            c(0);
            B(0);
            Z(0);
        }
    }

    public static void n(int i2) {
        if (e.f16778h != i2) {
            e.f16778h = i2;
            if (e.f16774f == 1) {
                T(26, i2);
            }
            d();
            if (i2 != 0) {
                u0.d.N(0);
            } else {
                if (e.I != 6 || u0.b.D == 4) {
                    return;
                }
                e.f16766b.c(new byte[]{2, 91}, 0, 2);
            }
        }
    }

    public static void o(int i2) {
        if (e.f16780i != i2) {
            e.f16780i = i2;
            T(27, i2);
            d();
            if (i2 != 0) {
                u0.d.N(0);
            }
        }
    }

    public static void p(int i2) {
        if (e.f16782j != i2) {
            e.f16782j = i2;
            T(28, i2);
            d();
            if (i2 != 0) {
                u0.d.N(0);
            }
        }
    }

    public static int q() {
        int i2 = e.S;
        if (i2 != 0) {
            if (i2 == 1) {
                return 9;
            }
            if (i2 == 2) {
                return 5;
            }
            if (i2 == 3) {
                return 1;
            }
            if (i2 == 4) {
                return 3;
            }
        }
        return 0;
    }

    public static int r() {
        int i2 = e.A;
        if (i2 == 1) {
            return 2;
        }
        if (i2 == 2) {
            return 8;
        }
        if (i2 == 3) {
            return 12;
        }
        if (i2 != 4) {
            return i2 != 5 ? 0 : 7;
        }
        return 5;
    }

    public static int s() {
        int i2 = e.O;
        if (i2 != 0 && i2 != 1) {
            if (i2 == 2) {
                return 3;
            }
            if (i2 == 3) {
                return 4;
            }
            if (i2 == 4) {
                return 32;
            }
        }
        return 0;
    }

    public static void t(String str) {
        if (!p0.g(e.f16791o, str)) {
            e.f16791o = str;
            V(2, str);
        }
        if (u0.b.D == 4) {
            u0.d.J0(str, ProxyProperties.LOCAL_EXCL_LIST);
        }
    }

    public static void u(String str) {
        if (!p0.g(e.f16790n, str)) {
            e.f16790n = str;
            V(1, str);
        }
        if (u0.b.D == 4) {
            u0.d.K0(str);
        }
    }

    public static void v(String str) {
        if (!p0.g(e.f16788m, str)) {
            e.f16788m = str;
            V(0, str);
        }
        if (u0.b.D == 4) {
            u0.d.L0(str);
        }
    }

    public static void w(int i2) {
        if (e.F != i2) {
            e.F = i2;
            T(18, i2);
        }
    }

    public static void x(int i2) {
        if (e.M != i2) {
            e.M = i2;
            T(22, i2);
        }
    }

    public static synchronized void y(int i2) {
        if (e.f16764a == i2) {
            return;
        }
        e.f16764a = i2;
        e.f16766b.e();
        if (i2 == 1) {
            e.f16766b = new o0.b();
        } else if (i2 == 2) {
            e.f16766b = new o0.a();
        } else if (i2 == 3) {
            e.f16766b = new c();
        } else if (i2 == 4 || i2 == 5) {
            e.f16766b = new d();
        } else {
            e.f16766b = new h();
        }
        e.f16766b.d();
        T(24, i2);
    }

    public static void z(int i2) {
        if (i2 == 1) {
            e.L = 35;
            x(e.G);
        }
        int i3 = e.I;
        if (i3 != i2) {
            if (i2 == 1) {
                a(f16807b);
            } else if (i3 == 1) {
                L(f16807b);
            }
            e.I = i2;
            T(20, i2);
            f.f16803a.c();
            if (i2 == 2) {
                k.s(228, 32, 0);
            } else if (i2 == 1) {
                k.s(228, 32, 1);
                k.s(11, 1, 1);
            } else {
                k.s(228, 32, 2);
                k.s(11, 1, 0);
            }
        }
    }
}

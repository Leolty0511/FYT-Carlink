package n0;

import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
import k0.nt;
import k0.qt;

/* JADX INFO: loaded from: classes2.dex */
public class k4 {
    public static void a(Runnable runnable) {
        o1.j0.f16915j.c(runnable);
    }

    public static synchronized void b(int i2, boolean z2) {
        int iE = e(i2);
        if (!z2) {
            i2 = iE;
        }
        j4.f16463a = SystemProperties.getInt("ro.fyt.uiid", 1);
        if (j4.f16464b != i2) {
            j4.f16464b = i2;
            c4 c4VarK2 = l4.L2().K2();
            if (c4VarK2 != null) {
                c4VarK2.C3();
            }
            c4 c4VarC3 = c4.c3(i2);
            l4.L2().M2(c4VarC3);
            if (c4VarC3 != null) {
                c4VarC3.j3();
            }
            j4.f16466d = c4VarC3;
        }
        y0.h.o0(a.i.k("ro.fyt.subwoof_enable", y0.f.X0));
    }

    public static int c() {
        int i2 = j4.f16464b;
        if (i2 == 4) {
            return 4;
        }
        if (i2 == 5) {
            return 6;
        }
        if (i2 == 6) {
            return 2;
        }
        if (i2 == 8) {
            return 7;
        }
        if (i2 == 13) {
            return 1;
        }
        if (i2 == 15) {
            return 3;
        }
        if (i2 != 30) {
            return i2 != 60 ? 0 : 6;
        }
        return 5;
    }

    public static String d() {
        if (g.e.e() == 4) {
            return "/dev/ttyS0";
        }
        if (g.e.e() == 8 || g.e.e() == 11 || g.e.e() == 16 || g.e.e() == 14 || g.e.e() == 15 || g.e.e() == 18 || g.e.e() == 19 || g.e.e() == 20 || g.e.e() == 21 || g.e.e() == 22 || g.e.e() == 23 || g.e.e() == 28 || g.e.e() == 29 || g.e.e() == 30 || g.e.e() == 31 || g.e.e() == 32 || g.e.e() == 33 || g.e.e() == 34 || g.e.e() == 35 || g.e.e() == 36 || g.e.e() == 37 || g.e.e() == 40 || g.e.e() == 41 || g.e.e() == 42 || g.e.e() == 43 || g.e.e() == 45 || g.e.p() == 48) {
            return "/dev/ttyS1";
        }
        if (g.e.e() == 41 || g.e.e() == 42 || g.e.e() == 43 || g.e.e() == 44 || g.e.e() == 60 || g.e.e() == 45 || g.e.e() == 46 || g.e.e() == 47) {
            return "/dev/ttyS2";
        }
        return (g.e.e() == 27 || g.e.e() == 17 || g.e.e() == 25 || g.e.e() == 39 || g.e.e() == 26 || g.e.e() == 40 || g.e.e() == 50) ? "/dev/ttyS4" : "/dev/ttyS1";
    }

    public static int e(int i2) {
        String str = SystemProperties.get("ro.build.fytmanufacturer", i2 + ProxyProperties.LOCAL_EXCL_LIST);
        if (TextUtils.isEmpty(str)) {
            str = i2 + ProxyProperties.LOCAL_EXCL_LIST;
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return i2;
        }
    }

    public static boolean f(int i2) {
        return j4.f16464b == i2;
    }

    public static int g() {
        return (!o1.q0.v() && SystemProperties.getInt("ro.fyt.touch_poweron", e.b.f1594b) == 0) ? 0 : 1;
    }

    public static void h() {
        j4.f16466d.x3();
        Iterator<Runnable> it = z.a.F.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
        z.a.F.clear();
        m1.a.f13514c = true;
        if (nt.f8646g0 >= 0) {
            Log.e("CAN", "============>>>> DataCanbus.sCanbusIdTemp : " + nt.f8646g0);
            qt.J(nt.f8646g0);
        }
        m1.c.n();
    }

    public static void i(Runnable runnable) {
        o1.j0.f16915j.d(runnable);
    }

    public static void j() {
        System.arraycopy(j4.f16471i, 0, u0.a.f17293h, 0, 20);
        int i2 = y0.f.f18031a;
        if (i2 != 1) {
            if (i2 == 2) {
                System.arraycopy(j4.f16472j, 0, y0.d.f18015a, 0, 20);
                System.arraycopy(j4.f16473k, 0, y0.d.f18017c, 0, 20);
                System.arraycopy(j4.f16474l, 0, y0.d.f18016b, 0, 20);
                return;
            } else if (i2 != 5) {
                return;
            }
        }
        System.arraycopy(j4.f16474l, 0, y0.b.f17952b, 0, 20);
    }

    public static void k() {
        System.arraycopy(u0.a.f17293h, 0, j4.f16471i, 0, 20);
        int i2 = y0.f.f18031a;
        if (i2 != 1) {
            if (i2 == 2) {
                System.arraycopy(y0.d.f18015a, 0, j4.f16472j, 0, 20);
                System.arraycopy(y0.d.f18017c, 0, j4.f16473k, 0, 20);
                System.arraycopy(y0.d.f18016b, 0, j4.f16474l, 0, 20);
                return;
            } else if (i2 != 5) {
                return;
            }
        }
        System.arraycopy(y0.b.f17952b, 0, j4.f16474l, 0, 20);
    }

    public static void l(int i2, int i3) {
        if (i2 < 0 || i2 >= 10) {
            return;
        }
        m1.c.o(i2 + 4, i3);
    }
}

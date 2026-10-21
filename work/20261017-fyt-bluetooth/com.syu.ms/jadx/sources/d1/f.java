package d1;

import android.util.Log;
import module.tv.TvStore;
import o1.x;
import u0.i;

/* JADX INFO: loaded from: classes2.dex */
public class f {
    public static void a(int i2) {
        if (d.f1576i != i2) {
            d.f1576i = i2;
            j(6, i2);
        }
    }

    public static void b(int i2) {
        if (d.f1572e != i2) {
            d.f1572e = i2;
            j(2, i2);
        }
    }

    public static void c(int i2) {
        if (d.f1574g != i2) {
            d.f1574g = i2;
            j(4, i2);
        }
    }

    public static void d(int i2) {
        if (d.f1573f != i2) {
            d.f1573f = i2;
            j(3, i2);
            e.f1579a.c();
        }
    }

    public static void e(int i2) {
        if (d.f1571d != i2) {
            d.f1571d = i2;
            j(1, i2);
        }
    }

    public static void f(int i2) {
        if (d.f1568a == i2) {
            return;
        }
        Log.e("tv", ">>>>>>>>>>>>>>    moduleId: " + i2);
        d.f1568a = i2;
        d.f1569b.b();
        if (i2 == 1) {
            d.f1569b = new a();
        } else if (i2 == 2) {
            d.f1569b = new b();
        } else if (i2 != 3) {
            d.f1569b = new g.a();
        } else {
            d.f1569b = new c();
        }
        d.f1569b.a();
    }

    public static void g(int i2) {
        if (d.f1575h != i2) {
            d.f1575h = i2;
            j(5, i2);
        }
    }

    public static void h(int i2) {
        h hVarX2;
        if (d.f1570c != i2) {
            d.f1570c = i2;
            j(0, i2);
            e.f1579a.c();
            if (m1.a.f13516e && (hVarX2 = h.X2()) != null) {
                hVarX2.U2(TvStore.TYPE.ordinal(), i2);
            }
            u0.d.m0(a.b.f29q, !g.f.s() && i2 > 0);
            u0.d.N3(39, i2 == 0 ? 0 : 1, a.b.f29q);
        }
    }

    public static void i(y.b bVar) {
        x xVarL2;
        if (bVar == null || d.f1570c <= 0 || (xVarL2 = i.l3().L2()) == null) {
            return;
        }
        xVarL2.E(bVar, 39, 1, a.b.f29q);
    }

    public static void j(int i2, int... iArr) {
        h hVarX2 = h.X2();
        if (hVarX2 != null) {
            hVarX2.H0(i2, iArr, null, null);
        }
    }
}

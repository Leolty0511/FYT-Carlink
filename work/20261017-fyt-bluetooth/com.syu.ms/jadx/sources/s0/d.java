package s0;

import o1.j0;
import o1.x;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static void a(Runnable runnable) {
        j0.f16914i.c(runnable);
    }

    public static void b(int i2, int i3, int i4) {
        int[] iArr = c.f17200r;
        if (iArr[0] == i2 && iArr[1] == i3 && iArr[2] == i4) {
            return;
        }
        iArr[0] = i2;
        iArr[1] = i3;
        iArr[2] = i4;
        x.B(c.f17185c, 9, c.f17200r);
    }

    public static void c(int i2) {
        x.x(c.f17185c, 16, i2);
    }

    public static void d(int i2, int i3) {
        int[] iArr = c.f17206x;
        if (iArr[0] == i2 && iArr[1] == i3) {
            return;
        }
        iArr[0] = i2;
        iArr[1] = i3;
        x.B(c.f17185c, 15, c.f17206x);
    }

    public static void e(int i2, int i3) {
        int[] iArr = c.f17203u;
        if (iArr[0] == i2 && iArr[1] == i3) {
            return;
        }
        iArr[0] = i2;
        iArr[1] = i3;
        x.B(c.f17185c, 12, c.f17203u);
    }

    public static void f(int i2, int i3) {
        int[] iArr = c.f17204v;
        if (iArr[0] == i2 && iArr[1] == i3) {
            return;
        }
        iArr[0] = i2;
        iArr[1] = i3;
        x.B(c.f17185c, 13, c.f17204v);
    }

    public static void g(int i2, int i3) {
        int[] iArr = c.f17204v;
        if (iArr[0] == i2 && iArr[1] == i3) {
            return;
        }
        iArr[0] = i2;
        iArr[1] = i3;
        x.B(c.f17185c, 14, c.f17204v);
    }

    public static void h(int i2) {
        if (c.f17187e != i2) {
            c.f17187e = i2;
            x.x(c.f17185c, 0, i2);
        }
    }

    public static void i(int i2, int i3, int i4) {
        int[] iArr = c.f17201s;
        if (iArr[0] == i2 && iArr[1] == i3 && iArr[2] == i4) {
            return;
        }
        iArr[0] = i2;
        iArr[1] = i3;
        iArr[2] = i4;
        x.B(c.f17185c, 10, c.f17201s);
    }

    public static void j(int i2) {
        x.x(c.f17185c, 1, i2);
    }

    public static synchronized void k(int i2) {
        if (c.f17183a == i2) {
            return;
        }
        c.f17184b.b();
        c.f17183a = i2;
        if (i2 == 1) {
            c.f17184b = new a();
        } else if (i2 != 2) {
            c.f17184b = new e.a();
        } else {
            c.f17184b = new b();
        }
        c.f17184b.a();
    }

    public static void l(Runnable runnable) {
        j0.f16914i.d(runnable);
    }

    public static void m(int i2) {
        x.x(c.f17185c, 2, i2);
    }

    public static void n(int i2) {
        int[] iArr = new int[3];
        iArr[0] = 180;
        iArr[1] = 129;
        iArr[2] = i2 != 0 ? 1 : 0;
        k.s(iArr);
    }

    public static void o(int i2, int i3, int i4) {
        int[] iArr = c.f17202t;
        if (iArr[0] == i2 && iArr[1] == i3 && iArr[2] == i4) {
            return;
        }
        iArr[0] = i2;
        iArr[1] = i3;
        iArr[2] = i4;
        x.B(c.f17185c, 11, c.f17202t);
    }
}

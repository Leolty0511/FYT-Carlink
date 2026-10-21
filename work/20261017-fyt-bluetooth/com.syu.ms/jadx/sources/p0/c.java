package p0;

import c.f;
import n0.c4;
import n0.j4;
import o1.o;
import o1.x;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static void a(int i2) {
        if (b.f17024f != i2) {
            b.f17024f = i2;
            x.x(b.f17021c, 1, i2);
            j(null);
            if (b.f17028j == 1) {
                m1.c.g(173, i2);
            }
        }
    }

    public static void b(int i2) {
        int i3 = b.f17028j;
        if (i3 != 0) {
            if (i3 == 1) {
                a(i2);
            }
        } else {
            if (i2 == 0) {
                k.s(1, 4, 160);
                return;
            }
            if (i2 == 1) {
                k.s(1, 4, 161);
            } else if (i2 == 2) {
                k.s(1, 4, 162);
            } else {
                if (i2 != 3) {
                    return;
                }
                k.s(1, 4, 163);
            }
        }
    }

    public static void c(int i2) {
        int[] iArr = new int[3];
        iArr[0] = 1;
        iArr[1] = 0;
        iArr[2] = i2 == 0 ? 118 : 119;
        k.s(iArr);
        f.b().a(14, Integer.valueOf(i2));
    }

    public static void d(int i2) {
        switch (i2) {
            case 0:
                k.s(1, 5, 80);
                break;
            case 1:
                k.s(1, 5, 112);
                break;
            case 2:
                k.s(1, 5, 114);
                break;
            case 3:
                k.s(1, 5, 144);
                break;
            case 4:
                k.s(1, 5, 176);
                break;
            case 5:
                k.s(1, 5, 224);
                break;
            case 6:
                k.s(1, 5, 56);
                break;
            case 7:
                k.s(1, 5, 57);
                break;
            case 8:
                k.s(1, 5, 64);
                break;
            case 9:
                k.s(1, 5, 65);
                break;
            case 10:
                k.s(1, 5, 66);
                break;
            case 11:
                k.s(1, 5, 67);
                break;
            case 12:
                k.s(1, 5, 68);
                break;
            case 13:
                k.s(1, 5, 69);
                break;
            case 14:
                k.s(1, 5, 70);
                break;
            case 15:
                k.s(1, 5, 71);
                break;
            case 16:
                k.s(1, 5, 72);
                break;
        }
    }

    public static void e(int i2) {
        switch (i2) {
            case 0:
                k.s(1, 5, 176);
                break;
            case 1:
                k.s(1, 5, 114);
                break;
            case 2:
                k.s(1, 5, 80);
                break;
            case 3:
                k.s(1, 5, 224);
                break;
            case 4:
                k.s(1, 5, 144);
                break;
            case 5:
                k.s(1, 5, 112);
                break;
            case 6:
                k.s(1, 5, 56);
                break;
        }
    }

    public static void f(int i2, int i3) {
        c4 c4Var = j4.f16466d;
        if (c4Var == null || !c4Var.y3(i2, i3)) {
            int i4 = b.f17025g;
            if (i4 != 0) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        return;
                    }
                }
                e(i2);
            }
            h(i2);
            d(i2);
            e(i2);
        }
    }

    public static synchronized void g(int i2) {
        if (b.f17019a == i2) {
            return;
        }
        b.f17019a = i2;
        b.f17020b.b();
        if (i2 != 1) {
            b.f17020b = new d.a();
        } else {
            b.f17020b = new a();
        }
        b.f17020b.a();
    }

    public static void h(int i2) {
        switch (i2) {
            case 0:
                k.s(1, 9, 0);
                break;
            case 1:
                k.s(1, 9, 1);
                break;
            case 2:
                k.s(1, 9, 2);
                break;
            case 3:
                k.s(1, 9, 3);
                break;
            case 4:
                k.s(1, 9, 4);
                break;
            case 5:
                k.s(1, 9, 5);
                break;
            case 6:
                k.s(1, 9, 6);
                break;
        }
    }

    public static void i(int i2, int i3, int i4) {
        if (i2 == 0 || i2 == 2) {
            k.s(230, (i3 >> 8) & 255, i3 & 255, (i4 >> 8) & 255, i4 & 255);
        } else if (i2 == 1) {
            k.s(230, 170, 170, 170, 170);
        }
    }

    public static void j(y.b bVar) {
        o oVar = b.f17026h;
        if (oVar == null || !oVar.a(0, null, null, null, bVar)) {
            k(bVar);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x001f  */
    public static void k(y.b bVar) {
        boolean z2;
        boolean z3;
        int i2 = b.f17024f;
        if (i2 == -1) {
            return;
        }
        if (g.f.s()) {
            z2 = false;
            z3 = z2;
        } else if (i2 == 1) {
            z3 = false;
            z2 = true;
        } else if (i2 != 2) {
            if (i2 != 3) {
                z2 = false;
            } else {
                z2 = true;
            }
            z3 = z2;
        } else {
            z2 = false;
            z3 = true;
        }
        u0.d.m0(a.b.G, z2);
        u0.d.m0(a.b.I, z3);
    }
}

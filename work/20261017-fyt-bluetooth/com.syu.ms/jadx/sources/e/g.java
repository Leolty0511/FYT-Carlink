package e;

import a.i;
import android.bluetooth.BluetoothClass;
import android.util.Log;
import k0.rt;
import module.sound.AudioDevice;
import n0.j4;
import o1.j;
import o1.l;
import o1.n0;
import o1.o;
import o1.o0;
import o1.u;
import z.k;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Runnable f1649a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Runnable f1650b = new b();

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            u0.d.O1();
            if (g.e.g() == 2 && j4.f16464b == 53) {
                l.a().postDelayed(this, 250L);
            } else {
                l.a().postDelayed(this, 100L);
            }
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            u0.d.M1();
            if (g.e.g() == 2 && j4.f16464b == 53) {
                l.a().postDelayed(this, 250L);
            } else {
                l.a().postDelayed(this, 100L);
            }
        }
    }

    public static void A(int i2) {
        o oVar = c.f1611q;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            c.e.d().c(BluetoothClass.Device.PHONE_MODEM_OR_GATEWAY);
        }
    }

    public static void B(int i2) {
        o oVar = c.f1611q;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            u.b1();
        }
    }

    public static void C(int i2) {
        o oVar = c.f1605k;
        if (oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) {
            if (i2 == 0) {
                u0.d.M1();
                j.b(l.a(), f1650b, 500L);
            } else if (i2 == 1) {
                j.e(l.a(), f1650b);
            }
        }
    }

    public static void D(int i2) {
        o oVar = c.f1604j;
        if (oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) {
            if (i2 == 0) {
                u0.d.O1();
                j.b(l.a(), f1649a, 500L);
            } else if (i2 == 1) {
                j.e(l.a(), f1649a);
            }
        }
    }

    public static void E(int i2) {
        o oVar = c.A;
        if (oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) {
            c.I.c(260, i2);
        }
    }

    public static void F(int i2, int i3) {
        if (i3 == 1) {
            c.e.d().c(i2);
        }
    }

    public static void G(int i2, int i3) {
        int i4;
        Log.d("key", "keyCode = " + i2 + " action = " + i3);
        a.f.p().s("keyCode = " + i2 + " action = " + i3);
        if (m0.b.f13172e == 1) {
        }
        if (u0.b.f17347o != 1 || i2 == 243 || i2 == 228 || i2 == 227 || i2 == 220 || i3 != 0) {
            if (w0.d.J && w0.f.i() == 1 && i3 == 0) {
                return;
            }
            if (g.e.a() != 0 && g.e.a() != 1 && i3 == 0) {
                k.s(1, 0, 88);
                y0.e eVar = y0.f.f18034b;
                if (eVar instanceof AudioDevice) {
                    ((AudioDevice) eVar).z(false);
                }
            }
            if (i3 == 0 && i2 != 252) {
                if (u0.b.f17320f != 0 && u0.b.f17332j == 1 && (((i4 = u0.b.f17317e) == 1 && i2 != 220) || i4 == 0)) {
                    u0.d.N(0);
                }
                if (u0.b.f17334j1 == 1) {
                    u0.d.j3(0);
                }
            }
            o oVar = c.f1595a;
            if (oVar == null || !oVar.a(0, new int[]{i2, i3}, null, null, null) || i3 == 1) {
                if (u0.b.f17320f == 1 || i2 == 220 || i2 == 260 || i2 == 227 || i2 == 228) {
                    if (i3 == 1 && c.f.b().d(i2)) {
                        return;
                    }
                    switch (i2) {
                        case 220:
                            r(i3);
                            break;
                        case 221:
                            m(i3);
                            break;
                        case 222:
                            k(i3);
                            break;
                        case 223:
                            s(i3);
                            break;
                        case 224:
                            n(i3);
                            break;
                        case 225:
                            i(i3);
                            break;
                        case 226:
                            b(i3);
                            break;
                        case 227:
                            D(i3);
                            break;
                        case 228:
                            C(i3);
                            break;
                        case 229:
                            j(i3);
                            break;
                        case 230:
                            a(i3);
                            break;
                        case 231:
                            h(i3);
                            break;
                        case 232:
                            l(i3);
                            break;
                        case 233:
                            F(BluetoothClass.Device.PHONE_MODEM_OR_GATEWAY, i3);
                            break;
                        case 234:
                            f(i3);
                            break;
                        case 235:
                            u(i3);
                            break;
                        case 236:
                            q(i3);
                            break;
                        case 237:
                            e(i3);
                            break;
                        case 238:
                            p(i3);
                            break;
                        case 239:
                            z(i3);
                            break;
                        case 240:
                            y(i3);
                            break;
                        case i.a.Theme_actionModeShareDrawable /* 241 */:
                            c(i3);
                            break;
                        case i.a.Theme_actionModeFindDrawable /* 242 */:
                            g(i3);
                            break;
                        case i.a.Theme_actionModeWebSearchDrawable /* 243 */:
                            o(i3);
                            break;
                        case i.a.Theme_actionModePopupWindowStyle /* 244 */:
                        case i.a.Theme_preferenceFragmentStyle /* 245 */:
                        case i.a.Theme_preferencePanelStyle /* 246 */:
                        case i.a.Theme_preferenceHeaderPanelStyle /* 247 */:
                        case 248:
                        case 249:
                        case 250:
                            if (i3 == 1) {
                                u0.b.E0 = i2;
                                e.f1624b.c();
                                break;
                            }
                            break;
                        case 251:
                            t(i3);
                            break;
                        case 252:
                            d(i3);
                            break;
                        case i.a.Theme_dialogTitleDecorLayout /* 253 */:
                            v(i3);
                            break;
                        case 254:
                            w(i3);
                            break;
                        case 255:
                            x(i3);
                            break;
                        case 256:
                            F(577, i3);
                            break;
                        case 257:
                            F(572, i3);
                            break;
                        case 258:
                            F(545, i3);
                            break;
                        case 259:
                            d(i3);
                            break;
                        case 260:
                            E(i3);
                            break;
                        case 261:
                            F(576, i3);
                            break;
                        case 262:
                            F(5, i3);
                            break;
                    }
                }
            }
        }
    }

    public static void a(int i2) {
        o oVar = c.f1608n;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            u.h();
        }
    }

    public static void b(int i2) {
        o oVar = c.f1603i;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            u0.d.u1();
        }
    }

    public static void c(int i2) {
        if (i2 == 0) {
            if (u.n0()) {
                w0.d.f17790b.x(-1);
            } else {
                u.x0();
            }
        }
    }

    public static void d(int i2) {
        o oVar = c.f1619y;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            if (u0.b.f17332j == 0) {
                u0.d.N(1);
            } else {
                u0.d.N(0);
            }
        }
    }

    public static void e(int i2) {
        o oVar = c.f1613s;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            int i3 = p0.b.f17024f;
            if (i3 == 1) {
                u.H();
            } else if (i3 == 2) {
                u.d();
            }
        }
    }

    public static void f(int i2) {
        o oVar = c.f1612r;
        if ((oVar == null || !oVar.a(i2, null, null, null, null)) && i2 == 0) {
            int[] iArr = u0.b.f17366w == 0 ? u0.b.V2 : u0.b.W2;
            int length = iArr.length;
            u0.d.V(o0.a(iArr[((n0.c(iArr, u0.b.K) + length) - 1) % length], 0, u0.b.Q));
        }
    }

    public static void g(int i2) {
        o oVar = c.f1618x;
        if (oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) {
            c.G.c(i.a.Theme_actionModeFindDrawable, i2);
        }
    }

    public static void h(int i2) {
        o oVar = c.f1609o;
        if (oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) {
            c.F.c(231, i2);
        }
    }

    public static void i(int i2) {
        o oVar = c.f1602h;
        if (oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) {
            c.E.c(225, i2);
        }
    }

    public static void j(int i2) {
        o oVar = c.f1607m;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            u0.d.C1();
        }
    }

    public static void k(int i2) {
        o oVar = c.f1599e;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            c.e.d().c(BluetoothClass.Device.PHONE_ISDN);
        }
    }

    public static void l(int i2) {
        o oVar = c.f1610p;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            u0.d.N1();
        }
    }

    public static void m(int i2) {
        o oVar = c.f1598d;
        if (oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) {
            c.H.c(221, i2);
        }
    }

    public static void n(int i2) {
        o oVar = c.f1601g;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            c.e.d().c(87);
        }
    }

    public static void o(int i2) {
        o oVar = c.f1617w;
        if (oVar == null || !oVar.a(i2, null, null, null, null)) {
            rt.a3().Y2(1003, new int[]{i2 == 0 ? 1 : 0}, null, null);
        }
    }

    public static void p(int i2) {
        o oVar = c.f1614t;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            u0.d.w1();
        }
    }

    public static void q(int i2) {
        o oVar = c.f1596b;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            c.e.d().c(85);
        }
    }

    public static void r(int i2) {
        o oVar = c.f1597c;
        if (oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) {
            c.D.c(220, i2);
        }
    }

    public static void s(int i2) {
        o oVar = c.f1600f;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            c.e.d().c(88);
        }
    }

    public static void t(int i2) {
        o oVar = c.f1620z;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            if (u.n0()) {
                w0.d.f17790b.x(-1);
            } else {
                u.x0();
            }
        }
    }

    public static void u(int i2) {
        o oVar = c.f1606l;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            u.z0();
        }
    }

    public static void v(int i2) {
        o oVar = c.B;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            u.i();
        }
    }

    public static void w(int i2) {
        o oVar = c.C;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            u.v();
        }
    }

    public static void x(int i2) {
        o oVar = c.C;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            if (h0.c.E == 4) {
                h0.c.f2425b.z();
            } else {
                h0.c.f2425b.e();
            }
        }
    }

    public static void y(int i2) {
        o oVar = c.f1616v;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            int i3 = u0.b.D;
            if (i3 == 1) {
                int i4 = w0.d.U;
                if (i4 == 1) {
                    w0.d.f17790b.g();
                    return;
                } else {
                    if (i4 != 4) {
                        return;
                    }
                    w0.d.f17790b.d();
                    return;
                }
            }
            if (i3 == 6) {
                d1.d.f1569b.g();
                return;
            }
            if (i3 == 3) {
                h0.c.f2425b.i();
            } else {
                if (i3 == 4) {
                    o0.e.f16766b.i();
                    return;
                }
                switch (i3) {
                    case 8:
                    case 9:
                    case 10:
                        i.N(i3);
                        break;
                }
            }
        }
    }

    public static void z(int i2) {
        o oVar = c.f1615u;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            int i3 = u0.b.D;
            if (i3 == 1) {
                int i4 = w0.d.T;
                if (i4 == 0) {
                    w0.d.f17790b.c();
                    return;
                } else {
                    if (i4 != 3) {
                        return;
                    }
                    w0.d.f17790b.i();
                    return;
                }
            }
            if (i3 == 6) {
                d1.d.f1569b.c();
                return;
            }
            if (i3 == 3) {
                h0.c.f2425b.V();
            } else {
                if (i3 == 4) {
                    o0.e.f16766b.j();
                    return;
                }
                switch (i3) {
                    case 8:
                    case 9:
                    case 10:
                        i.J(i3);
                        break;
                }
            }
        }
    }
}

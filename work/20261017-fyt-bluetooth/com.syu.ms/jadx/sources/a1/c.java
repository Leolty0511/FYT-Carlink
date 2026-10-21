package a1;

import android.util.Log;
import e.g;
import k0.qt;
import module.sound.AudioDevice;
import o1.b0;
import o1.o;
import o1.u;
import w0.f;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static void a(int i2) {
        if (b.f121l != i2) {
            b.f121l = i2;
            k.s(1, 16, i2 + 80);
            m1.c.g(177, i2);
        }
    }

    public static void b(int i2) {
        if (b.f114e != i2) {
            b.f114e = i2;
            l(2, i2);
            if (b.f115f != -1) {
                b.f111b.c(b.f115f, i2);
            }
        }
    }

    public static void c(int i2, int i3) {
        if (i2 < 0 || i2 >= 6) {
            return;
        }
        int[] iArr = b.f113d;
        if (iArr[i2] != i3) {
            iArr[i2] = i3;
            l(3, i2, i3);
        }
    }

    public static final void d(int i2, int i3) {
        if (i2 < 0) {
            return;
        }
        if (b.f120k) {
            Log.e("Steer", "customeKeyStudied  : " + i2 + " adc : " + i3 + " DataSteer.KEY_ADC[keyCode] : " + b.f112c[i2]);
        }
        int[] iArr = b.f112c;
        if (iArr[i2] != i3) {
            iArr[i2] = i3;
            d dVar = b.f111b;
            if (dVar instanceof a) {
                ((a) dVar).w(i2, i3);
            }
        }
        l(1, i2, i3);
    }

    public static void e(int i2) {
        if (b.f116g != i2) {
            b.f116g = i2;
            l(4, i2);
        }
    }

    public static void f(int i2, int i3) {
        if (b.f120k) {
            Log.e("Steer", "---- keyAdc  : " + i2 + " adc : " + i3 + " DataSteer.KEY_ADC[keyCode] : " + b.f112c[i2]);
        }
        if (i2 < 0 || i2 >= 50) {
            return;
        }
        int[] iArr = b.f112c;
        if (iArr[i2] != i3) {
            iArr[i2] = i3;
            l(1, i2, i3);
            d dVar = b.f111b;
            if (dVar instanceof a) {
                ((a) dVar).w(i2, i3);
            }
        }
    }

    public static void g(int i2) {
        int i3 = b.f115f;
        if (i3 == i2) {
            if (i3 != -1) {
                g(-1);
            }
        } else {
            b.f115f = i2;
            l(0, i2);
            if (i2 != -1) {
                b.f111b.c(i2, b.f114e);
            }
        }
    }

    public static void h(int i2) {
        if (b.f117h != i2) {
            b.f117h = i2;
            l(5, i2);
        }
    }

    public static synchronized void i(int i2) {
        if (b.f110a == i2) {
            return;
        }
        b.f110a = i2;
        b.f111b.b();
        if (i2 != 1) {
            b.f111b = new d.a();
        } else {
            b.f111b = new a();
        }
        b.f111b.a();
    }

    public static void j(int i2, int i3) {
        c.e eVarD = c.e.d();
        if (m0.b.f13172e == 1) {
        }
        if (u0.b.f17347o == 1 && i2 != 243 && i3 == 0 && u0.b.l2) {
            return;
        }
        if (w0.d.J && f.i() == 1 && i3 == 0) {
            return;
        }
        if (g.e.a() != 0 && g.e.a() != 1 && i3 == 0) {
            y0.e eVar = y0.f.f18034b;
            if (eVar instanceof AudioDevice) {
                ((AudioDevice) eVar).z(false);
            }
        }
        o oVar = e.c.f1595a;
        if (oVar == null || !oVar.a(0, new int[]{i2, i3}, null, null, null) || i3 == 1) {
            if (i2 >= 0 && i2 <= 24) {
                if (b.f120k) {
                    Log.d("steera", "----> func MCU to UI keycode = " + i2);
                }
                switch (i2) {
                    case 0:
                        g.r(i3);
                        break;
                    case 1:
                        g.m(i3);
                        break;
                    case 2:
                        g.k(i3);
                        break;
                    case 3:
                        eVarD.c(88);
                        break;
                    case 4:
                        eVarD.c(87);
                        break;
                    case 5:
                        g.i(i3);
                        break;
                    case 6:
                        g.b(i3);
                        break;
                    case 7:
                        g.D(i3);
                        break;
                    case 8:
                        g.C(i3);
                        break;
                    case 9:
                        g.j(i3);
                        break;
                    case 10:
                        g.a(i3);
                        break;
                    case 11:
                        g.h(i3);
                        break;
                    case 12:
                        g.l(i3);
                        break;
                    case 13:
                        g.A(i3);
                        break;
                    case 14:
                        g.f(i3);
                        break;
                    case 15:
                        g.u(i3);
                        break;
                    case 16:
                        eVarD.c(85);
                        break;
                    case 17:
                        g.e(i3);
                        break;
                    case 18:
                        g.p(i3);
                        break;
                    case 19:
                        g.z(i3);
                        break;
                    case 20:
                        g.y(i3);
                        break;
                    case 21:
                        g.c(i3);
                        break;
                    case 22:
                        g.g(i3);
                        break;
                    case 23:
                        g.o(i3);
                        break;
                    case 24:
                        g.t(i3);
                        break;
                }
            }
            if (i2 < 35 || i2 >= 55) {
                return;
            }
            int iD = b.f111b.d(i2, 1);
            if (i3 != 0) {
                return;
            }
            if (b.f120k) {
                Log.d("Steer", "mcu func to keycode = " + i2 + " func = " + iD);
            }
            switch (iD) {
                case 3:
                    eVarD.c(556);
                    break;
                case 4:
                    eVarD.c(518);
                    break;
                case 5:
                    eVarD.c(519);
                    break;
                case 6:
                    u.T0();
                    break;
                case 7:
                    u.r();
                    break;
                case 8:
                    u.q();
                    break;
                case 9:
                    u.J();
                    break;
                case 10:
                    u.Z0();
                    break;
                case 12:
                    u.y();
                    break;
                case 13:
                    u.G0();
                    break;
                case 14:
                    u0.d.u3(2);
                    break;
                case 15:
                    u0.d.P0();
                    break;
                case 16:
                    u0.d.Q0();
                    break;
                case 17:
                    u0.d.R0();
                    break;
                case 18:
                    u0.d.S0();
                    break;
                case 19:
                    u0.d.T0();
                    break;
                case 20:
                    u0.d.U0();
                    break;
                case 21:
                    u0.d.V0();
                    break;
                case 22:
                    u0.d.W0();
                    break;
                case 23:
                    u0.d.X0();
                    break;
                case 24:
                    u0.d.Y0();
                    break;
                case 25:
                    u0.d.a1();
                    break;
                case 26:
                    u0.d.b1();
                    break;
                case 27:
                    u0.d.Z0();
                    break;
                case 28:
                    u0.d.I3(60, 1);
                    break;
                case 29:
                    u0.d.I3(60, 2);
                    break;
                case 30:
                    u0.d.I3(60, 3);
                    break;
                case 31:
                    u0.d.I3(60, 4);
                    break;
                case 32:
                    u0.d.I3(60, 0);
                    break;
                case 33:
                    eVarD.c(561);
                    break;
                case 34:
                    eVarD.c(562);
                    break;
                case 35:
                    u.v();
                    break;
                case 36:
                    eVarD.c(6);
                    break;
                case 37:
                    u.L();
                    break;
                case 38:
                    u.L();
                    break;
                case 39:
                    qt.A0(1008, null, null, null);
                    break;
                case 40:
                    u.M();
                    break;
                case 41:
                    eVarD.c(590);
                    break;
                case 42:
                    eVarD.c(591);
                    break;
                case 43:
                    eVarD.c(592);
                    break;
                case 44:
                    eVarD.c(595);
                    break;
                case 45:
                    eVarD.c(596);
                    break;
                case 46:
                    eVarD.c(84);
                    break;
                case 47:
                    eVarD.c(563);
                    break;
                case 48:
                    eVarD.c(1045);
                    break;
                case 49:
                    eVarD.c(539);
                    break;
                case 50:
                    eVarD.c(633);
                    break;
                case 51:
                    eVarD.c(1046);
                    break;
            }
        }
    }

    public static void k(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        d dVar = b.f111b;
        if (dVar instanceof a) {
            a aVar = (a) dVar;
            if (b.f120k) {
                a.f.p().s("所有MCU按键 = " + b0.d(bArr, 0, bArr.length));
                a.f.p().s("MCU按键总数 = " + bArr.length);
                Log.d("Steer", "--->mcu to UI keycode = " + b0.d(bArr, 0, bArr.length) + " keyCnt = " + bArr.length);
            }
            if (bArr[0] == -1) {
                aVar.m();
                for (int i2 = 0; i2 < 55; i2++) {
                    l(6, i2, 2);
                }
                return;
            }
            for (byte b2 : bArr) {
                int i3 = b2 & 255;
                if (i3 >= 0 && i3 <= 24) {
                    l(6, i3, 1);
                    if (b.f120k) {
                        Log.d("Steer", "<----to UI keycode = " + i3);
                    }
                } else if (i3 >= 35 && i3 < 55) {
                    int iD = b.f119j;
                    if (i3 == b.f118i) {
                        aVar.y(i3, iD);
                        if (b.f120k) {
                            Log.d("Steer", "curr keycode = " + i3 + " func = " + iD);
                        }
                    } else {
                        iD = aVar.d(i3, 1);
                    }
                    l(6, i3, iD);
                    if (b.f120k) {
                        Log.d("Steer", "<---- to UI keycode = " + i3 + " func = " + iD);
                    }
                }
            }
        }
    }

    public static void l(int i2, int... iArr) {
        e eVarX2 = e.X2();
        if (eVarX2 != null) {
            eVarX2.H0(i2, iArr, null, null);
        }
    }
}

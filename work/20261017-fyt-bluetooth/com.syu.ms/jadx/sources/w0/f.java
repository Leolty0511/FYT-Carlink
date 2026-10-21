package w0;

import android.content.IntentFilter;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import base.Configure;
import o1.o0;
import o1.p0;
import o1.q0;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class f {
    public static void A(int i2) {
        if (d.A != i2) {
            d.A = i2;
            J(22, i2);
        }
    }

    public static void B(int i2) {
        int iA = o0.a(i2, 1, 6);
        if (d.f17789a != 1) {
            d.f17790b.z(iA);
        } else {
            int i3 = d.f17796h;
            d.f17790b.z((i3 < 0 || i3 >= 65536) ? ((((i3 - 65536) * 6) + iA) - 1) + 65536 : (((i3 + 0) * 6) + iA) - 1);
        }
    }

    public static void C(int i2) {
        if (d.f17809u != i2) {
            d.f17809u = i2;
            J(17, i2);
        }
    }

    public static void D(int i2) {
        if (d.f17810v != i2) {
            d.f17810v = i2;
            J(18, i2);
        }
    }

    public static void E(int i2) {
        if (d.B != i2) {
            d.B = i2;
            J(24, i2);
        }
    }

    public static void F(int i2) {
        if (d.f17814z != i2) {
            d.f17814z = i2;
            J(21, i2);
        }
    }

    public static void G(int i2) {
        d.F = i2;
        J(35, i2);
    }

    public static void H(int i2) {
        d.G = i2;
        J(36, i2);
    }

    public static void I(int i2, int i3, String str) {
        K(i2, new int[]{i3}, null, new String[]{str});
    }

    public static void J(int i2, int... iArr) {
        K(i2, iArr, null, null);
    }

    public static void K(int i2, int[] iArr, float[] fArr, String[] strArr) {
        i iVarX2 = i.X2();
        if (iVarX2 != null) {
            iVarX2.H0(i2, iArr, fArr, strArr);
        }
    }

    public static void L(int i2, String... strArr) {
        K(i2, null, null, strArr);
    }

    public static void a(int i2) {
        if (d.C != i2) {
            d.C = i2;
            J(25, i2);
            if (m1.c.k(198)) {
                m1.c.e(198, i2);
            }
        }
        if (m1.c.k(198)) {
            q0.h(i2);
        }
    }

    public static void b(int i2) {
        if (m1.c.k(198)) {
            a(i2);
        } else {
            d.f17790b.C(i2);
        }
    }

    public static void c(int i2) {
        if (d.f17799k != i2) {
            d.f17799k = i2;
            J(2, i2);
            if (d.K == 0) {
                g();
            }
        }
    }

    public static void d(int i2) {
        if (d.f17811w != i2) {
            d.f17811w = i2;
            J(19, i2);
        }
    }

    public static void e(int i2) {
        if (d.f17796h != i2) {
            d.f17796h = i2;
            J(0, i2);
            e.f17819e.c();
            if (d.K == 0) {
                g();
            }
        }
    }

    public static void f(int i2) {
        if (d.f17798j != i2) {
            d.f17798j = i2;
            J(3, i2);
            e.f17816b.c();
        }
    }

    public static void g() {
        if (d.K != 0) {
            int i2 = d.L;
            if (i2 != 0) {
                J(16, i2, d.M, d.N, d.O);
                return;
            }
            return;
        }
        int[] iArr = new int[4];
        switch ((d.f17799k << 20) | d.f17796h) {
            case 0:
            case 1:
                iArr[0] = 530;
                iArr[1] = 1720;
                iArr[2] = 10;
                break;
            case 65536:
            case 65537:
            case 65538:
                iArr[0] = 8750;
                iArr[1] = 10790;
                iArr[2] = 20;
                break;
            case 1048576:
            case 1048577:
                iArr[0] = 520;
                iArr[1] = 1620;
                iArr[2] = 10;
                break;
            case 1114112:
            case 1114113:
            case 1114114:
            case 2162688:
            case 2162689:
            case 2162690:
                iArr[0] = 8750;
                iArr[1] = 10800;
                iArr[2] = 5;
                break;
            case 2097152:
            case 2097153:
            case IntentFilter.MATCH_CATEGORY_HOST /* 3145728 */:
            case 3145729:
                iArr[0] = 522;
                iArr[1] = 1620;
                iArr[2] = 9;
                break;
            case 3211264:
                iArr[0] = 6500;
                iArr[1] = 7400;
                iArr[2] = 3;
                break;
            case 3211265:
            case 3211266:
                iArr[0] = 8750;
                iArr[1] = 10800;
                iArr[2] = 10;
                break;
            case 4194304:
            case 4194305:
                iArr[0] = 520;
                iArr[1] = 1629;
                iArr[2] = 9;
                break;
            case 4259840:
            case 4259841:
            case 4259842:
                iArr[0] = 7600;
                iArr[1] = 9000;
                iArr[2] = 10;
                break;
        }
        if (iArr[2] != 0) {
            iArr[3] = (iArr[1] - iArr[0]) / iArr[2];
        }
        J(16, iArr);
    }

    public static void h(int i2) {
        if (d.f17797i != i2) {
            n(null);
            d.f17797i = i2;
            J(1, i2);
            e.f17815a.c();
        }
    }

    public static int i() {
        return (d.f17802n == 1 && d.f17803o == 1 && d.f17804p == 1) ? 1 : 0;
    }

    public static void j(int i2) {
        a.f.p().s("MCU收音机是否支持AM = " + i2);
        d.E = i2;
        SystemProperties.set("sys.fyt.radio_support_am", i2 + ProxyProperties.LOCAL_EXCL_LIST);
        J(29, i2);
    }

    public static void k(int i2) {
        if (d.f17813y != i2) {
            d.f17813y = i2;
            J(23, i2);
        }
    }

    public static void l(int i2) {
        if (d.f17789a == i2) {
            return;
        }
        d.f17789a = i2;
        d.f17790b.b();
        if (i2 == 1) {
            d.f17790b = new a();
        } else if (i2 == 3) {
            d.f17790b = new c();
        } else if (i2 != 4) {
            d.f17790b = new g.a();
        } else {
            d.f17790b = Configure.Property.MS_HANDLE_RADIO.b(d.f17791c) ? new h() : new b();
        }
        SystemProperties.set("sys.fyt.radio_type", i2 + ProxyProperties.LOCAL_EXCL_LIST);
        d.f17790b.a();
        e.f17820f.c();
    }

    public static void m(int i2) {
        if (d.D != i2) {
            d.D = i2;
            J(27, i2);
        }
    }

    public static void n(String str) {
        if (p0.g(d.I, str)) {
            return;
        }
        d.I = str;
        L(26, str);
    }

    public static void o(int i2) {
        if (d.f17800l != i2) {
            d.f17800l = i2;
            J(5, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0055  */
    public static void p(int[] iArr, float[] fArr, String[] strArr) {
        int i2 = 1;
        if (d.f17789a == 1 || iArr == null || iArr.length < 1) {
            return;
        }
        if (iArr[0] == 0) {
            if (iArr.length >= 2) {
                d.f17790b.e(iArr[1]);
            }
        } else if (iArr[0] == 1 && iArr.length >= 7) {
            f(iArr[3]);
            k.s(38, iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6]);
        }
        if (iArr.length >= 3) {
            if (iArr[2] == 3) {
                i2 = 0;
            } else if (iArr[2] != 4) {
                if (iArr[2] < 4) {
                    i2 = (iArr[2] & 255) + 65536;
                } else {
                    i2 = 0;
                }
            }
            e(i2);
        }
    }

    public static void q(int i2) {
        if (d.f17801m != i2) {
            d.f17801m = i2;
            J(6, i2);
        }
    }

    public static void r(int i2) {
        if (d.f17808t != i2) {
            d.f17808t = i2;
            if (u0.b.B4 == 1) {
                m1.c.g(178, i2);
            }
            J(15, i2);
        }
    }

    public static void s(int i2) {
        if (d.f17805q != i2) {
            d.f17805q = i2;
            J(10, i2);
        }
    }

    public static void t(int i2) {
        if (d.f17807s != i2) {
            d.f17807s = i2;
            J(12, i2);
        }
    }

    public static void u(int i2) {
        if (d.f17802n != i2) {
            d.f17802n = i2;
            J(7, i2);
        }
    }

    public static void v(int i2) {
        if (d.f17804p != i2) {
            d.f17804p = i2;
            J(9, i2);
        }
    }

    public static void w(int i2) {
        if (d.f17806r != i2) {
            d.f17806r = i2;
            J(11, i2);
        }
    }

    public static void x(String str) {
        if (p0.g(d.H, str)) {
            return;
        }
        d.H = str;
        L(13, str);
        e.f17817c.c();
    }

    public static void y(int i2) {
        if (d.f17803o != i2) {
            d.f17803o = i2;
            J(8, i2);
        }
    }

    public static void z(int i2) {
        if (d.f17812x != i2) {
            d.f17812x = i2;
            J(20, i2);
        }
    }
}

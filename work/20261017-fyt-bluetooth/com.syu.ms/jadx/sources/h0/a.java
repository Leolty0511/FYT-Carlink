package h0;

import android.net.ProxyProperties;
import z.k;

/* JADX INFO: loaded from: classes.dex */
public class a implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Runnable f2407a = new RunnableC0047a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f2408b = new b();

    /* JADX INFO: renamed from: h0.a$a, reason: collision with other inner class name */
    public class RunnableC0047a implements Runnable {
        public RunnableC0047a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17320f != 0) {
                k.r(66, 69, 49);
            } else {
                k.r(66, 69, 48);
            }
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2410a;

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D != 3) {
                if (u0.b.C == 3 && c.N == 1) {
                    this.f2410a = true;
                    a.this.E();
                    return;
                }
                return;
            }
            u0.d.L0(c.f2445l);
            u0.d.K0(c.f2447m);
            u0.d.J0(c.f2449n, ProxyProperties.LOCAL_EXCL_LIST);
            if (this.f2410a) {
                this.f2410a = false;
                a.this.w();
            }
        }
    }

    @Override // h0.f
    public void A(String str) {
    }

    @Override // h0.f
    public void B() {
    }

    @Override // h0.f
    public void C(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                return;
            }
            e.q(ProxyProperties.LOCAL_EXCL_LIST);
        } else {
            String str = c.f2437h;
            if (str == null || str.length() <= 0) {
                return;
            }
            e.q(str.substring(0, str.length() - 1));
        }
    }

    @Override // h0.f
    public void D(String str) {
    }

    @Override // h0.f
    public void E() {
        k.r(77, 66);
    }

    @Override // h0.f
    public void F() {
    }

    @Override // h0.f
    public void G() {
        k.r(67, 74);
    }

    @Override // h0.f
    public void H(int i2) {
    }

    @Override // h0.f
    public void I(int i2) {
        if (i2 == 0) {
            if (c.f2461z != 0) {
                k.r(67, 79);
            }
        } else if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            k.r(67, 79);
        } else if (c.f2461z == 0) {
            k.r(67, 79);
        }
    }

    @Override // h0.f
    public void J(int i2) {
    }

    @Override // h0.f
    public void K(String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int length = str.length();
        if (length > 20) {
            length = 20;
        }
        byte[] bArr = new byte[length + 7];
        bArr[0] = 65;
        bArr[1] = 84;
        bArr[2] = 35;
        bArr[3] = 77;
        bArr[4] = 89;
        bArr[length + 5] = 13;
        bArr[length + 6] = 10;
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2 + 5] = (byte) str.charAt(i2);
        }
        z.a.f18153d.i(bArr);
    }

    @Override // h0.f
    public void L(int i2) {
        if (i2 == 0) {
            k.r(71, 67);
        } else {
            if (i2 != 1) {
                return;
            }
            k.r(71, 68);
        }
    }

    @Override // h0.f
    public void M() {
    }

    @Override // h0.f
    public void N(String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int length = str.length();
        if (length > 20) {
            length = 20;
        }
        byte[] bArr = new byte[length + 7];
        bArr[0] = 65;
        bArr[1] = 84;
        bArr[2] = 35;
        bArr[3] = 67;
        bArr[4] = 67;
        bArr[length + 5] = 13;
        bArr[length + 6] = 10;
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2 + 5] = (byte) str.charAt(i2);
        }
        z.a.f18153d.i(bArr);
    }

    @Override // h0.f
    public void O() {
        e.s(0);
    }

    @Override // h0.f
    public void P(int i2) {
        if (i2 == 0) {
            k.r(67, 67);
            return;
        }
        if (i2 == 1) {
            k.r(67, 68);
        } else {
            if (i2 != 2) {
                return;
            }
            if (c.E == 0) {
                P(0);
            } else {
                P(1);
            }
        }
    }

    @Override // h0.f
    public void Q() {
    }

    public final void R(String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        int iMin = Math.min(str.length(), 100);
        int i2 = iMin + 7;
        byte[] bArr = new byte[i2];
        bArr[0] = 65;
        bArr[1] = 84;
        bArr[2] = 35;
        bArr[3] = 67;
        bArr[4] = 87;
        bArr[i2 - 2] = 13;
        bArr[i2 - 1] = 10;
        for (int i3 = 0; i3 < iMin; i3++) {
            bArr[i3 + 5] = (byte) str.charAt(i3);
        }
        z.a.f18153d.i(bArr);
    }

    @Override // h0.f
    public void S() {
        k.r(67, 75);
    }

    @Override // h0.f
    public void T() {
        k.r(67, 72);
    }

    @Override // h0.f
    public void U(String str) {
        if (str == null || str.isEmpty()) {
            k.r(77, 78);
        } else if (str.length() >= 4) {
            k.r(77, 78, str.charAt(0), str.charAt(1), str.charAt(2), str.charAt(3));
        }
    }

    @Override // h0.f
    public void V() {
        k.r(77, 68);
    }

    @Override // h0.f
    public void W(int i2) {
    }

    public final void X(char c2) {
        if (c.f2437h == null) {
            c.f2437h = ProxyProperties.LOCAL_EXCL_LIST;
        }
        if (c.f2437h.length() == 1024) {
            c.f2437h = ProxyProperties.LOCAL_EXCL_LIST;
        }
        String str = c.f2437h + c2;
        c.f2437h = str;
        e.Y(8, str);
        if (c.E == 5 && c2 != '+') {
            k.r(67, 88, c2);
        }
        d.f2464c.c();
    }

    @Override // h0.f
    public void a() {
        u0.c.f17374a.a(this.f2408b, 1);
        O();
        g(ProxyProperties.LOCAL_EXCL_LIST);
        U(ProxyProperties.LOCAL_EXCL_LIST);
        k.r(67, 89);
        k.r(77, 90);
        k.r(84, 73);
        u0.c.f17376c.a(this.f2407a, 1);
    }

    @Override // h0.f
    public void b() {
        u0.c.f17374a.d(this.f2408b);
        u0.c.f17376c.d(this.f2407a);
    }

    @Override // h0.f
    public void c(String str) {
        e.q(str);
        R(str);
    }

    @Override // h0.f
    public void d() {
    }

    @Override // h0.f
    public void e() {
        k.r(67, 71);
    }

    @Override // h0.f
    public void f() {
    }

    @Override // h0.f
    public void g(String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int length = str.length();
        if (length > 100) {
            return;
        }
        int[] iArr = new int[length + 2];
        iArr[0] = 77;
        iArr[1] = 77;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2 + 2] = str.charAt(i2);
        }
        k.r(iArr);
    }

    @Override // h0.f
    public void h(int i2) {
        switch (i2) {
            case 0:
                int i3 = c.E;
                if (i3 == 2) {
                    String str = c.f2437h;
                    if (str == null || str.isEmpty()) {
                        T();
                    } else {
                        R(c.f2437h);
                    }
                } else if (i3 == 4) {
                    n();
                }
                break;
            case 1:
                if (c.E != 4) {
                    e();
                } else {
                    z();
                }
                break;
            case 2:
                X('0');
                break;
            case 3:
                X('1');
                break;
            case 4:
                X('2');
                break;
            case 5:
                X('3');
                break;
            case 6:
                X('4');
                break;
            case 7:
                X('5');
                break;
            case 8:
                X('6');
                break;
            case 9:
                X('7');
                break;
            case 10:
                X('8');
                break;
            case 11:
                X('9');
                break;
            case 12:
                X('+');
                break;
            case 13:
                X('*');
                break;
            case 14:
                X('#');
                break;
        }
    }

    @Override // h0.f
    public void i() {
        k.r(77, 69);
    }

    @Override // h0.f
    public void j() {
        k.r(80, 65, 49, 44, 48, 44, 54, 53, 53, 51, 53);
    }

    @Override // h0.f
    public void k() {
        k.r(77, 83);
    }

    @Override // h0.f
    public void l() {
        k.r(77, 88);
    }

    @Override // h0.f
    public void m() {
    }

    @Override // h0.f
    public void n() {
        k.r(67, 69);
    }

    @Override // h0.f
    public void o(String str) {
    }

    @Override // h0.f
    public void p() {
        k.r(77, 67);
    }

    @Override // h0.f
    public void q(int i2) {
    }

    @Override // h0.f
    public void r() {
    }

    @Override // h0.f
    public void reset() {
        k.r(67, 90);
    }

    @Override // h0.f
    public void s() {
        k.r(67, 73);
    }

    @Override // h0.f
    public void t(String str) {
        R(str);
    }

    @Override // h0.f
    public void u(String str) {
        if (str == null || str.length() != 12) {
            return;
        }
        byte[] bArr = new byte[19];
        bArr[0] = 65;
        bArr[1] = 84;
        bArr[2] = 35;
        bArr[3] = 67;
        bArr[4] = 67;
        bArr[17] = 13;
        bArr[18] = 10;
        for (int i2 = 0; i2 < 12; i2++) {
            bArr[i2 + 5] = (byte) str.charAt(i2);
        }
        z.a.f18153d.i(bArr);
    }

    @Override // h0.f
    public void v(String str) {
    }

    @Override // h0.f
    public void w() {
        k.r(77, 65);
    }

    @Override // h0.f
    public void x(int i2) {
        if (i2 == 0) {
            k.r(66, 69, 48);
            return;
        }
        if (i2 == 1) {
            k.r(66, 69, 49);
        } else {
            if (i2 != 2) {
                return;
            }
            if (c.Q != 0) {
                x(0);
            } else {
                x(1);
            }
        }
    }

    @Override // h0.f
    public void y(String str) {
    }

    @Override // h0.f
    public void z() {
        k.r(67, 70);
    }
}

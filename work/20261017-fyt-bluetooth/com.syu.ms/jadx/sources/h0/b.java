package h0;

import a.i;
import android.net.ProxyProperties;
import android.util.Log;
import o1.b0;
import o1.s0;
import util.log.LogType;
import y0.h;
import z.k;

/* JADX INFO: loaded from: classes.dex */
public class b implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2412a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Runnable f2413b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Runnable f2414c = new RunnableC0048b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f2415d = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.f.f(5) && u0.b.n4 == 0) {
                k.p(67, 90, 48);
            }
        }
    }

    /* JADX INFO: renamed from: h0.b$b, reason: collision with other inner class name */
    public class RunnableC0048b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2417a = -1;

        public RunnableC0048b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2417a != u0.b.f17320f) {
                Log.e("BT", "-------->>>  DataMain.sMcuOn: " + u0.b.f17320f + "  mcuOn: " + this.f2417a);
                int i2 = u0.b.f17320f;
                if (i2 == 0) {
                    if (g.f.n(12) || this.f2417a != 0) {
                        k.p(67, 90, 48);
                    }
                } else if (i2 == 1) {
                    k.p(72, 87, 49);
                    k.p(67, 90, 49);
                }
                this.f2417a = u0.b.f17320f;
            }
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2419a;

        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2 = false;
            if (u0.b.D == 3) {
                b.this.a0(1, 0);
                u0.d.L0(h0.c.f2445l);
                u0.d.K0(h0.c.f2447m);
                u0.d.J0(h0.c.f2449n, ProxyProperties.LOCAL_EXCL_LIST);
                if (this.f2419a) {
                    this.f2419a = false;
                    if (h0.c.U != 1) {
                        b.this.w();
                        return;
                    }
                    return;
                }
                return;
            }
            if (u0.b.C == 3) {
                b.this.a0(1, 1);
                if (h0.c.N == 1) {
                    int iE = h1.a.d().e();
                    if ((iE == 2 || iE == 3) && u0.b.D == 10) {
                        z2 = true;
                    }
                    if (z2) {
                        return;
                    }
                    this.f2419a = true;
                    b.this.E();
                }
            }
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f2421a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f2422b;
    }

    public static void R() {
        k.p(84, 69);
    }

    @Override // h0.f
    public void A(String str) {
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
        bArr[2] = 45;
        bArr[3] = 67;
        bArr[4] = 76;
        bArr[length + 5] = 13;
        bArr[length + 6] = 10;
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2 + 5] = (byte) str.charAt(i2);
        }
        z.a.f18153d.i(bArr);
        if (g.f.f(5)) {
            if ("0".equals(str)) {
                if (i.k("persist.audio.mic.senstivity", 0) != 0) {
                    i.Z("persist.audio.mic.senstivity", "0");
                }
                e.G(0);
            } else if ("1".equals(str)) {
                if (i.k("persist.audio.mic.senstivity", 0) != 1) {
                    i.Z("persist.audio.mic.senstivity", "1");
                }
                e.G(1);
            } else if ("2".equals(str)) {
                if (h0.c.S == 0) {
                    A("1");
                } else {
                    A("0");
                }
            }
        }
    }

    @Override // h0.f
    public void B() {
        b0("CV0");
    }

    @Override // h0.f
    public void C(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                return;
            }
            e.q(ProxyProperties.LOCAL_EXCL_LIST);
        } else {
            String str = h0.c.f2437h;
            if (str == null || str.length() <= 0) {
                return;
            }
            e.q(str.substring(0, str.length() - 1));
        }
    }

    @Override // h0.f
    public void D(String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int length = str.length();
        if (length > 100) {
            length = 100;
        }
        if (g.f.f(5)) {
            z.a.f18153d.i(new byte[]{65, 84, 45, 67, 87, 42, 13, 10});
            return;
        }
        byte[] bArr = new byte[length + 7];
        bArr[0] = 65;
        bArr[1] = 84;
        bArr[2] = 45;
        bArr[3] = 84;
        bArr[4] = 69;
        bArr[length + 5] = 13;
        bArr[length + 6] = 10;
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2 + 5] = (byte) str.charAt(i2);
        }
        z.a.f18153d.i(bArr);
    }

    @Override // h0.f
    public void E() {
        j0.b bVarA3 = g.Y2().a3();
        if (bVarA3 != null) {
            bVarA3.F(3, null, null, null);
        } else {
            k.p(77, 66);
        }
    }

    @Override // h0.f
    public void F() {
        k.p(80, 74);
    }

    @Override // h0.f
    public void G() {
        k.p(67, 82);
    }

    @Override // h0.f
    public void H(int i2) {
    }

    @Override // h0.f
    public void I(int i2) {
        if (i2 == 0) {
            if (h0.c.f2461z != 0) {
                k.p(67, 79);
            }
        } else if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            k.p(67, 79);
        } else if (h0.c.f2461z == 0) {
            k.p(67, 79);
        }
    }

    @Override // h0.f
    public void J(int i2) {
        b0(i2 == 1 ? "MG" : "MH");
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
        bArr[2] = 45;
        bArr[3] = 67;
        bArr[4] = 75;
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
            k.p(83, 84);
        } else {
            if (i2 != 1) {
                return;
            }
            k.p(83, 68);
        }
    }

    @Override // h0.f
    public void M() {
        k.p(67, 77);
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
        bArr[2] = 45;
        bArr[3] = 68;
        bArr[4] = 66;
        bArr[length + 5] = 13;
        bArr[length + 6] = 10;
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2 + 5] = (byte) str.charAt(i2);
        }
        Log.e("BT", "BT write data:  " + new String(bArr));
        z.a.f18153d.i(bArr);
    }

    @Override // h0.f
    public void O() {
        if (g.f.f(5)) {
            return;
        }
        e.s(0);
        k.p(72, 87, 49);
        k.p(67, 90, 49);
        reset();
    }

    @Override // h0.f
    public void P(int i2) {
        if (i2 == 0) {
            k.p(67, 67);
            return;
        }
        if (i2 == 1) {
            k.p(67, 68);
        } else {
            if (i2 != 2) {
                return;
            }
            if (h0.c.E == 0) {
                P(0);
            } else {
                P(1);
            }
        }
    }

    @Override // h0.f
    public void Q() {
        b0("PS");
    }

    @Override // h0.f
    public void S() {
        k.p(67, 83);
    }

    @Override // h0.f
    public void T() {
        k.p(67, 72);
    }

    @Override // h0.f
    public void U(String str) {
        if (str == null || str.isEmpty()) {
            k.p(77, 78);
        } else if (str.length() >= 4) {
            k.p(77, 78, str.charAt(0), str.charAt(1), str.charAt(2), str.charAt(3));
        }
    }

    @Override // h0.f
    public void V() {
        j0.b bVarA3 = g.Y2().a3();
        if (bVarA3 != null) {
            bVarA3.F(1, null, null, null);
        } else {
            k.p(77, 68);
        }
    }

    @Override // h0.f
    public void W(int i2) {
        if (h0.c.U == i2) {
            return;
        }
        b0(i2 == 1 ? "CI" : "CJ");
    }

    public final void X(String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        int iMin = Math.min(str.length(), 100);
        int i2 = iMin + 7;
        byte[] bArr = new byte[i2];
        bArr[0] = 65;
        bArr[1] = 84;
        bArr[2] = 45;
        bArr[3] = 67;
        bArr[4] = 87;
        bArr[i2 - 2] = 13;
        bArr[i2 - 1] = 10;
        for (int i3 = 0; i3 < iMin; i3++) {
            bArr[i3 + 5] = (byte) str.charAt(i3);
        }
        z.a.f18153d.i(bArr);
    }

    public void Y() {
        int i2 = this.f2412a;
        if (i2 == 0) {
            b0("VB");
        } else if (i2 == 1) {
            b0("VA");
        }
    }

    public final void Z(char c2) {
        if (h0.c.f2437h == null) {
            h0.c.f2437h = ProxyProperties.LOCAL_EXCL_LIST;
        }
        if (h0.c.f2437h.length() == 1024) {
            h0.c.f2437h = ProxyProperties.LOCAL_EXCL_LIST;
        }
        h0.c.f2437h += c2;
        if (h0.c.E == 5 && c2 != '+') {
            k.p(67, 88, c2);
        }
        if (h0.c.f2431e && s0.i(h0.c.f2439i, 1)) {
            h0.c.f2439i[1] = h0.c.f2437h;
            e.Y(8, h0.c.f2439i);
        } else {
            e.Y(8, h0.c.f2437h);
        }
        h0.d.f2464c.c();
    }

    @Override // h0.f
    public void a() {
        Log.e("BT", "-------->>>  cmdIn");
        u0.c.f17374a.a(this.f2415d, 1);
        u0.c.f17376c.a(this.f2414c, 1);
        String strO = s0.o("sys.fyt.bluetooth_type", "0");
        O();
        if (strO.equals("1")) {
            k.p(81, 76);
        }
        g(ProxyProperties.LOCAL_EXCL_LIST);
        U(ProxyProperties.LOCAL_EXCL_LIST);
        k.p(67, 89);
        k.p(77, 89);
        k.p(86, 69);
        A(m1.c.c(382, i.k("persist.audio.mic.senstivity", 0)) + ProxyProperties.LOCAL_EXCL_LIST);
    }

    public void a0(int i2, int i3) {
        int iMax = Math.max(this.f2412a, 0);
        int i4 = i3 == 1 ? i2 | iMax : (~i2) & iMax;
        int i5 = this.f2412a;
        if (i4 != i5) {
            if (i5 < 0) {
                b0(i4 != 0 ? "VA" : "VB");
            } else if (i4 > 0 && i5 == 0) {
                b0("VA");
                Log.e("Sound", "muteA2dp: " + Integer.toBinaryString(this.f2412a & 65535) + " VA");
            } else if (i4 == 0) {
                b0("VB");
                Log.e("Sound", "muteA2dp: " + Integer.toBinaryString(this.f2412a & 65535) + " VB");
            }
            this.f2412a = i4;
        }
    }

    @Override // h0.f
    public void b() {
        Log.e("BT", "-------->>>  cmdOut");
        u0.c.f17374a.d(this.f2415d);
        u0.c.f17376c.d(this.f2414c);
    }

    public void b0(String str) {
        int length = str == null ? 0 : str.length();
        if (length <= 0) {
            return;
        }
        int length2 = str.length() + 5;
        byte[] bArr = new byte[length2];
        bArr[0] = 65;
        bArr[1] = 84;
        bArr[2] = 45;
        bArr[length2 - 2] = 13;
        bArr[length2 - 1] = 10;
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2 + 3] = (byte) str.charAt(i2);
        }
        a.f.p().t(LogType.BT, b0.b(bArr, 0, length2));
        Log.e("BT", "write ===========>>> " + new String(bArr));
        z.a.f18153d.i(bArr);
    }

    @Override // h0.f
    public void c(String str) {
        e.q(str);
        X(str);
    }

    @Override // h0.f
    public void d() {
        k.p(80, 73);
    }

    @Override // h0.f
    public void e() {
        k.p(67, 71);
    }

    @Override // h0.f
    public void f() {
        k.p(67, 84);
    }

    @Override // h0.f
    public void g(String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        try {
            byte[] bytes = str.getBytes("UTF-8");
            int length = bytes.length;
            if (length > 100) {
                return;
            }
            int[] iArr = new int[length + 2];
            iArr[0] = 77;
            iArr[1] = 77;
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2 + 2] = bytes[i2];
            }
            k.p(iArr);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // h0.f
    public void h(int i2) {
        switch (i2) {
            case 0:
                int i3 = h0.c.E;
                if (i3 == 2) {
                    String str = h0.c.f2437h;
                    if (str == null || str.isEmpty()) {
                        T();
                    } else {
                        X(h0.c.f2437h);
                    }
                } else if (i3 == 4) {
                    n();
                }
                break;
            case 1:
                if (h0.c.E != 4) {
                    e();
                } else {
                    z();
                }
                break;
            case 2:
                Z('0');
                break;
            case 3:
                Z('1');
                break;
            case 4:
                Z('2');
                break;
            case 5:
                Z('3');
                break;
            case 6:
                Z('4');
                break;
            case 7:
                Z('5');
                break;
            case 8:
                Z('6');
                break;
            case 9:
                Z('7');
                break;
            case 10:
                Z('8');
                break;
            case 11:
                Z('9');
                break;
            case 12:
                Z('+');
                break;
            case 13:
                Z('*');
                break;
            case 14:
                Z('#');
                break;
        }
    }

    @Override // h0.f
    public void i() {
        j0.b bVarA3 = g.Y2().a3();
        if (bVarA3 != null) {
            bVarA3.F(0, null, null, null);
        } else {
            k.p(77, 69);
        }
    }

    @Override // h0.f
    public void j() {
        k.p(80, 75, 49, 44, 48, 44, 102, 102);
    }

    @Override // h0.f
    public void k() {
        j0.b bVarA3 = g.Y2().a3();
        if (bVarA3 != null) {
            bVarA3.F(4, null, null, null);
        } else {
            k.p(77, 67);
        }
    }

    @Override // h0.f
    public void l() {
        k.p(77, 88);
    }

    @Override // h0.f
    public void m() {
        b0("YI");
    }

    @Override // h0.f
    public void n() {
        k.p(67, 69);
    }

    @Override // h0.f
    public void o(String str) {
        b0("YG" + str);
    }

    @Override // h0.f
    public void p() {
        j0.b bVarA3 = g.Y2().a3();
        if (bVarA3 != null) {
            bVarA3.F(2, null, null, null);
        } else {
            k.p(77, 65);
        }
    }

    @Override // h0.f
    public void q(int i2) {
        b0(i2 == 1 ? "OP1" : "OP0");
    }

    @Override // h0.f
    public void r() {
        k.p(80, 72);
    }

    @Override // h0.f
    public void reset() {
        k.p(67, 90);
    }

    @Override // h0.f
    public void s() {
        k.p(67, 81);
    }

    @Override // h0.f
    public void t(String str) {
        X(str);
    }

    @Override // h0.f
    public void u(String str) {
        if (str == null || str.length() != 12) {
            return;
        }
        byte[] bArr = new byte[19];
        bArr[0] = 65;
        bArr[1] = 84;
        bArr[2] = 45;
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
        if (str == null || str.length() <= 0) {
            return;
        }
        int iMin = Math.min(str.length(), 100);
        int i2 = iMin + 7;
        byte[] bArr = new byte[i2];
        bArr[0] = 65;
        bArr[1] = 84;
        bArr[2] = 45;
        bArr[3] = 85;
        bArr[4] = 80;
        bArr[i2 - 2] = 13;
        bArr[i2 - 1] = 10;
        for (int i3 = 0; i3 < iMin; i3++) {
            bArr[i3 + 5] = (byte) str.charAt(i3);
        }
        z.a.f18153d.i(bArr);
    }

    @Override // h0.f
    public void w() {
        k.p(77, 83);
    }

    @Override // h0.f
    public void x(int i2) {
        if (i2 == 0) {
            k.p(80, 48);
            h.N(1000);
        } else if (i2 == 1) {
            k.p(80, 49);
        } else {
            if (i2 != 2) {
                return;
            }
            if (h0.c.Q != 0) {
                x(0);
            } else {
                x(1);
            }
        }
    }

    @Override // h0.f
    public void y(String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        b0("CV" + str);
    }

    @Override // h0.f
    public void z() {
        k.p(67, 70);
    }
}

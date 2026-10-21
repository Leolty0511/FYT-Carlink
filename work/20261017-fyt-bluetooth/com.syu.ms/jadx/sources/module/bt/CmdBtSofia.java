package module.bt;

import a.i;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.NetworkInfo;
import android.net.ProxyProperties;
import android.net.wifi.WifiManager;
import android.os.Parcelable;
import android.os.RemoteException;
import app.App;
import h0.e;
import h0.f;
import o1.g0;
import o1.p0;
import y.g;

/* JADX INFO: loaded from: classes.dex */
public class CmdBtSofia implements f {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static String f13557h = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static boolean f13558i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f13559j = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13565f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public g0 f13560a = new g0(getClass().getName(), 1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public d0.a f13561b = new d();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f13562c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f13563d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f13564e = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f13566g = new c();

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f13567a;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 2) {
                CmdBtSofia.this.g0(0);
            } else {
                CmdBtSofia.this.g0(1);
            }
            if (u0.b.D == 3) {
                if (this.f13567a) {
                    this.f13567a = false;
                    CmdBtSofia.this.w();
                    return;
                }
                return;
            }
            if (u0.b.C == 3 && h0.c.N == 1) {
                this.f13567a = true;
                CmdBtSofia.this.E();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CmdBtSofia.this.f13560a.b(0, h0.c.R) != 0) {
                if (u0.b.f17320f != 0 && u0.b.f17306a0 != 0) {
                    h0.c.f2427c.L2(30, 1);
                    return;
                }
                int i2 = h0.c.E;
                if (i2 == 5 || i2 == 3 || i2 == 4) {
                    h0.c.f2425b.I(0);
                    i.a0(2000L);
                }
                h0.c.f2427c.L2(30, 0);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            if (h0.c.G == 0) {
                CmdBtSofia.this.f13565f = 0;
                e.T(this);
                boolean unused = CmdBtSofia.f13558i = false;
            } else {
                CmdBtSofia.b0(CmdBtSofia.this);
                if (CmdBtSofia.this.f13565f <= 0) {
                    e.T(this);
                    boolean unused2 = CmdBtSofia.f13558i = false;
                    u0.d.C3(2);
                }
            }
        }
    }

    public class d extends y.b.a implements d0.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int[] f13571a = {0, 1, 2, 6, 7, 8, 9, 13, 14, 15, 16, 18, 19, 22, 24, 26, 28, 29, 31};

        public d() {
        }

        @Override // y.b
        public void H0(int i2, int[] iArr, float[] fArr, String[] strArr) {
            switch (i2) {
                case 0:
                    if (p0.h(strArr, 1)) {
                        e.k(strArr[0]);
                    }
                    break;
                case 1:
                    if (p0.h(strArr, 1)) {
                        e.j(strArr[0]);
                    }
                    break;
                case 2:
                    if (p0.b(iArr, 1)) {
                        e.o(iArr[0]);
                    }
                    break;
                case 6:
                    if (p0.h(strArr, 1)) {
                        e.N(strArr[0]);
                    }
                    break;
                case 7:
                    if (p0.h(strArr, 1)) {
                        e.O(strArr[0]);
                    }
                    break;
                case 8:
                    if (p0.h(strArr, 1)) {
                        e.q(strArr[0]);
                        if (CmdBtSofia.f13558i && !strArr[0].equals(CmdBtSofia.f13557h)) {
                            e.T(CmdBtSofia.this.f13566g);
                            boolean unused = CmdBtSofia.f13558i = false;
                            break;
                        }
                    }
                    break;
                case 9:
                    if (p0.b(iArr, 1)) {
                        e.s(iArr[0]);
                    }
                    break;
                case 13:
                    if (p0.b(iArr, 1)) {
                        e.l(iArr[0]);
                    }
                    break;
                case 14:
                    if (p0.h(strArr, 1)) {
                        e.E(strArr[0]);
                    }
                    break;
                case 15:
                    if (p0.h(strArr, 1)) {
                        e.F(strArr[0]);
                    }
                    break;
                case 16:
                    if (p0.h(strArr, 1)) {
                        e.S(strArr[0]);
                    }
                    break;
                case 18:
                    if (p0.b(iArr, 1)) {
                        e.B(iArr[0]);
                    }
                    break;
                case 19:
                    e.X(i2, iArr, fArr, strArr);
                    break;
                case 22:
                    e.X(i2, iArr, fArr, strArr);
                    break;
                case 24:
                    e.X(i2, iArr, null, strArr);
                    break;
                case 26:
                    if (p0.h(strArr, 1)) {
                        e.i(strArr[0]);
                    }
                    break;
                case 28:
                    if (p0.b(iArr, 1)) {
                        e.m(iArr[0]);
                    }
                    break;
                case 29:
                    if (p0.b(iArr, 1)) {
                        e.L(iArr[0]);
                    }
                    break;
                case 31:
                    if (p0.b(iArr, 1)) {
                        e.c(iArr[0]);
                    }
                    break;
            }
        }

        @Override // d0.a
        public void O(y.d dVar) {
            try {
                g gVar = h0.c.f2427c;
                gVar.O2(dVar.p2(2));
                gVar.L2(30, h0.c.Q);
                int i2 = 0;
                while (true) {
                    int[] iArr = this.f13571a;
                    if (i2 >= iArr.length) {
                        return;
                    }
                    h0.c.f2427c.Y1(this, iArr[i2], 1);
                    i2++;
                }
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }

        @Override // d0.a
        public void m1() {
            if (d0.b.h().i() == null) {
                h0.c.f2427c.O2(null);
                return;
            }
            int i2 = 0;
            while (true) {
                int[] iArr = this.f13571a;
                if (i2 >= iArr.length) {
                    return;
                }
                h0.c.f2427c.P0(this, iArr[i2]);
                i2++;
            }
        }
    }

    public class mNetworkChangeListener extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ CmdBtSofia f13573a;

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Parcelable parcelableExtra;
            if (!WifiManager.NETWORK_STATE_CHANGED_ACTION.equals(intent.getAction()) || (parcelableExtra = intent.getParcelableExtra("networkInfo")) == null) {
                return;
            }
            NetworkInfo.State state = ((NetworkInfo) parcelableExtra).getState();
            this.f13573a.f13562c = state == NetworkInfo.State.CONNECTED;
        }
    }

    public static /* synthetic */ int b0(CmdBtSofia cmdBtSofia) {
        int i2 = cmdBtSofia.f13565f;
        cmdBtSofia.f13565f = i2 - 1;
        return i2;
    }

    @Override // h0.f
    public void A(String str) {
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
            String str = h0.c.f2437h;
            if (str == null || str.length() <= 0) {
                return;
            }
            e.q(str.substring(0, str.length() - 1));
        }
    }

    @Override // h0.f
    public void D(String str) {
        h0.c.f2427c.N2(21, str);
    }

    @Override // h0.f
    public void E() {
        h0.c.f2427c.K2(3);
    }

    @Override // h0.f
    public void F() {
    }

    @Override // h0.f
    public void G() {
    }

    @Override // h0.f
    public void H(int i2) {
        h0.c.f2427c.L2(31, i2);
    }

    @Override // h0.f
    public void I(int i2) {
        h0.c.f2427c.L2(14, i2);
    }

    @Override // h0.f
    public void J(int i2) {
    }

    @Override // h0.f
    public void K(String str) {
    }

    @Override // h0.f
    public void L(int i2) {
        h0.c.f2427c.L2(20, i2);
    }

    @Override // h0.f
    public void M() {
    }

    @Override // h0.f
    public void N(String str) {
        h0.c.f2427c.N2(25, str);
    }

    @Override // h0.f
    public void O() {
    }

    @Override // h0.f
    public void P(int i2) {
        h0.c.f2427c.L2(13, i2);
    }

    @Override // h0.f
    public void Q() {
    }

    @Override // h0.f
    public void S() {
    }

    @Override // h0.f
    public void T() {
        h0.c.f2427c.K2(8);
    }

    @Override // h0.f
    public void U(String str) {
        h0.c.f2427c.N2(18, str);
    }

    @Override // h0.f
    public void V() {
        h0.c.f2427c.K2(1);
    }

    @Override // h0.f
    public void W(int i2) {
    }

    @Override // h0.f
    public void a() {
        this.f13560a.a();
        x(this.f13560a.b(0, h0.c.R));
        d0.b.h().e(this.f13561b);
        d0.b.h().f(App.c());
        u0.c.f17374a.a(this.f13563d, 1);
        try {
            PackageInfo packageInfo = a.f.q().getPackageInfo("com.android.bluetooth", 0);
            e.v(packageInfo.versionName + "-" + packageInfo.versionCode);
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        e.G(i.k("persist.audio.mic.senstivity", 0));
        u0.c.f17386m.a(this.f13564e, 0);
        u0.c.f17376c.a(this.f13564e, 0);
    }

    @Override // h0.f
    public void b() {
        d0.b.h().j(this.f13561b);
        u0.c.f17374a.d(this.f13563d);
        u0.c.f17386m.d(this.f13564e);
        u0.c.f17376c.d(this.f13564e);
        this.f13560a.j();
    }

    @Override // h0.f
    public void c(String str) {
        e.q(str);
        h0.c.f2427c.N2(7, str);
    }

    @Override // h0.f
    public void d() {
    }

    @Override // h0.f
    public void e() {
        h0.c.f2427c.K2(10);
        f13557h = h0.c.f2437h;
        if (h0.c.G != 0) {
            synchronized (this.f13566g) {
                if (this.f13565f <= 0) {
                    this.f13565f = 10;
                    e.d(this.f13566g);
                    f13558i = true;
                }
            }
        }
    }

    @Override // h0.f
    public void f() {
    }

    @Override // h0.f
    public void g(String str) {
        h0.c.f2427c.N2(19, str);
    }

    public final void g0(int i2) {
        if (f13559j != i2) {
            f13559j = i2;
            if (g.e.g() == 2) {
                h0.c.f2427c.L2(32, i2);
            }
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
                        h0.c.f2427c.N2(7, h0.c.f2437h);
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
                h0('0');
                break;
            case 3:
                h0('1');
                break;
            case 4:
                h0('2');
                break;
            case 5:
                h0('3');
                break;
            case 6:
                h0('4');
                break;
            case 7:
                h0('5');
                break;
            case 8:
                h0('6');
                break;
            case 9:
                h0('7');
                break;
            case 10:
                h0('8');
                break;
            case 11:
                h0('9');
                break;
            case 12:
                h0('+');
                break;
            case 13:
                h0('*');
                break;
            case 14:
                h0('#');
                break;
        }
    }

    public final void h0(char c2) {
        if (h0.c.f2437h == null) {
            h0.c.f2437h = ProxyProperties.LOCAL_EXCL_LIST;
        }
        if (h0.c.f2437h.length() == 1024) {
            h0.c.f2437h = ProxyProperties.LOCAL_EXCL_LIST;
        }
        String str = h0.c.f2437h + c2;
        h0.c.f2437h = str;
        e.Y(8, str);
        if (h0.c.E != 5 || c2 == '+') {
            return;
        }
        h0.c.f2427c.N2(29, ProxyProperties.LOCAL_EXCL_LIST + c2);
    }

    @Override // h0.f
    public void i() {
        h0.c.f2427c.K2(0);
    }

    @Override // h0.f
    public void j() {
        h0.c.f2427c.K2(26);
    }

    @Override // h0.f
    public void k() {
        h0.c.f2427c.K2(4);
    }

    @Override // h0.f
    public void l() {
    }

    @Override // h0.f
    public void m() {
    }

    @Override // h0.f
    public void n() {
        h0.c.f2427c.K2(9);
    }

    @Override // h0.f
    public void o(String str) {
    }

    @Override // h0.f
    public void p() {
        h0.c.f2427c.K2(2);
    }

    @Override // h0.f
    public void q(int i2) {
    }

    @Override // h0.f
    public void r() {
    }

    @Override // h0.f
    public void reset() {
        h0.c.f2427c.K2(17);
    }

    @Override // h0.f
    public void s() {
    }

    @Override // h0.f
    public void t(String str) {
    }

    @Override // h0.f
    public void u(String str) {
        h0.c.f2427c.N2(24, str);
    }

    @Override // h0.f
    public void v(String str) {
    }

    @Override // h0.f
    public void w() {
        h0.c.f2427c.K2(27);
    }

    @Override // h0.f
    public void x(int i2) {
        if (i2 == 0 || i2 == 1 || i2 == 2) {
            if (i2 == 2) {
                i2 = h0.c.Q == 0 ? 1 : 0;
            }
            if (h0.c.Q != i2) {
                h0.c.Q = i2;
                e.W(31, i2);
                this.f13560a.g(0, i2);
                h0.c.f2427c.L2(30, h0.c.Q);
            }
        }
    }

    @Override // h0.f
    public void y(String str) {
    }

    @Override // h0.f
    public void z() {
        h0.c.f2427c.K2(11);
    }
}

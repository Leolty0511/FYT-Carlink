package module.bt;

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.ProxyProperties;
import android.net.wifi.WifiManager;
import android.os.Parcelable;
import android.os.RemoteException;
import app.App;
import o1.g0;
import o1.l;
import o1.s;
import o1.u;

/* JADX INFO: loaded from: classes.dex */
public class CmdBtSG9832 extends BroadcastReceiver implements h0.f {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static boolean f13521u = true;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f13522v = 1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final Runnable f13523w = new i();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13530g;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f13535l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f13536m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f13537n;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f13541r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public g0 f13524a = new g0(getClass().getName(), 1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public d0.a f13525b = new j();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f13526c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f13527d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f13528e = new b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Runnable f13529f = new c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f13531h = new d();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13532i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f13533j = new e();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f13534k = new f();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f13538o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f13539p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f13540q = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Integer f13542s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Integer f13543t = null;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f13544a;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 3) {
                if (this.f13544a) {
                    this.f13544a = false;
                    if (!u.k0(App.c(), "net.easyconn") || u.W()) {
                        CmdBtSG9832.this.w();
                    }
                }
            } else if (u0.b.C == 3 && h0.c.N == 1) {
                this.f13544a = true;
                CmdBtSG9832.this.E();
            }
            if (CmdBtSG9832.f13522v == 0) {
                if (!u0.b.n2) {
                    CmdBtSG9832 cmdBtSG9832 = CmdBtSG9832.this;
                    cmdBtSG9832.j0(cmdBtSG9832.f13535l, u0.b.D == 3, CmdBtSG9832.this.f13537n);
                    return;
                }
                int i2 = u0.b.D;
                if (i2 == 3 || i2 == 2) {
                    CmdBtSG9832 cmdBtSG9833 = CmdBtSG9832.this;
                    cmdBtSG9833.j0(cmdBtSG9833.f13535l, true, CmdBtSG9832.this.f13537n);
                } else {
                    CmdBtSG9832 cmdBtSG9834 = CmdBtSG9832.this;
                    cmdBtSG9834.j0(cmdBtSG9834.f13535l, false, CmdBtSG9832.this.f13537n);
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CmdBtSG9832.this.f13524a.b(0, h0.c.R) != 0) {
                if (u0.b.f17320f == 0 || u0.b.f17306a0 == 0) {
                    h0.c.f2427c.L2(30, 0);
                } else {
                    h0.c.f2427c.L2(30, 1);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CmdBtSG9832.this.f13530g > 0) {
                h0.e.T(CmdBtSG9832.this.f13531h);
                CmdBtSG9832.this.f13530g = 0;
            }
        }
    }

    public class d implements Runnable {

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                h0.c.f2425b.P(0);
            }
        }

        public d() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            if (h0.c.G == 0) {
                CmdBtSG9832.this.f13530g = 0;
                h0.e.T(this);
            } else {
                int i2 = CmdBtSG9832.this.f13530g;
                CmdBtSG9832.d0(CmdBtSG9832.this);
                if (CmdBtSG9832.this.f13530g <= 0) {
                    h0.e.T(this);
                    h0.c.f2425b.P(1);
                    if (i2 > 0) {
                        l.a().postDelayed(new a(), 3000L);
                    }
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.e.J(1, false);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.c.f2427c.L2(14, CmdBtSG9832.this.f13532i);
        }
    }

    public class g implements s {
        public g() {
        }

        @Override // o1.s
        public void R(boolean z2) {
            if (z2) {
                CmdBtSG9832 cmdBtSG9832 = CmdBtSG9832.this;
                cmdBtSG9832.j0(true, cmdBtSG9832.f13536m, CmdBtSG9832.this.f13537n);
            } else {
                CmdBtSG9832 cmdBtSG9833 = CmdBtSG9832.this;
                cmdBtSG9833.j0(false, cmdBtSG9833.f13536m, CmdBtSG9832.this.f13537n);
            }
        }
    }

    public class h implements s {
        public h() {
        }

        @Override // o1.s
        public void R(boolean z2) {
            if (z2) {
                CmdBtSG9832 cmdBtSG9832 = CmdBtSG9832.this;
                cmdBtSG9832.j0(true, cmdBtSG9832.f13536m, CmdBtSG9832.this.f13537n);
            } else {
                CmdBtSG9832 cmdBtSG9833 = CmdBtSG9832.this;
                cmdBtSG9833.j0(false, cmdBtSG9833.f13536m, CmdBtSG9832.this.f13537n);
            }
        }
    }

    public class i implements Runnable {
        @Override // java.lang.Runnable
        public synchronized void run() {
            int i2 = u0.b.L3;
            if (i2 > 0) {
                int i3 = i2 - 1;
                u0.b.L3 = i3;
                if (i3 == 0) {
                    y0.h.M();
                }
            }
        }
    }

    public class j extends y.b.a implements d0.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int[] f13554a = {0, 1, 2, 5, 6, 7, 8, 9, 13, 14, 15, 16, 18, 19, 22, 24, 26, 28, 29, 31};

        public j() {
        }

        @Override // y.b
        public void H0(int i2, int[] iArr, float[] fArr, String[] strArr) {
            h0.g.Y2().W2(i2, iArr, fArr, strArr);
        }

        @Override // d0.a
        public void O(y.d dVar) {
            try {
                y.g gVar = h0.c.f2427c;
                gVar.O2(dVar.p2(2));
                gVar.L2(30, h0.c.Q);
                int i2 = 0;
                while (true) {
                    int[] iArr = this.f13554a;
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
                int[] iArr = this.f13554a;
                if (i2 >= iArr.length) {
                    return;
                }
                h0.c.f2427c.P0(this, iArr[i2]);
                i2++;
            }
        }
    }

    public class mNetworkChangeListener extends BroadcastReceiver {
        public mNetworkChangeListener() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Parcelable parcelableExtra;
            if (WifiManager.WIFI_STATE_CHANGED_ACTION.equals(intent.getAction())) {
                if (CmdBtSG9832.f13521u) {
                    boolean z2 = false;
                    int intExtra = intent.getIntExtra("wifi_state", 0);
                    if (intExtra != 0) {
                        if (intExtra == 2) {
                            u0.b.L3 = 3;
                            y0.h.M();
                        } else if (intExtra == 3) {
                        }
                        z2 = true;
                    } else {
                        u0.b.L3 = 3;
                        y0.h.M();
                    }
                    int i2 = CmdBtSG9832.f13522v;
                    if (i2 == 0) {
                        CmdBtSG9832 cmdBtSG9832 = CmdBtSG9832.this;
                        cmdBtSG9832.j0(cmdBtSG9832.f13535l, CmdBtSG9832.this.f13536m, z2);
                        return;
                    } else {
                        if (i2 == 1) {
                            CmdBtSG9832.this.k0();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (WifiManager.NETWORK_STATE_CHANGED_ACTION.equals(intent.getAction()) && CmdBtSG9832.f13521u && (parcelableExtra = intent.getParcelableExtra("networkInfo")) != null) {
                NetworkInfo.State state = ((NetworkInfo) parcelableExtra).getState();
                int i3 = CmdBtSG9832.f13522v;
                if (i3 == 0) {
                    if (CmdBtSG9832.this.f13536m) {
                        if (state == NetworkInfo.State.CONNECTING || state == NetworkInfo.State.DISCONNECTING) {
                            u0.b.L3 = 65535;
                        } else {
                            u0.b.L3 = 3;
                        }
                        y0.h.M();
                        return;
                    }
                    return;
                }
                if (i3 == 1) {
                    if (CmdBtSG9832.this.f13541r != 0 && CmdBtSG9832.this.f13541r != 6) {
                        if (state == NetworkInfo.State.CONNECTING || state == NetworkInfo.State.DISCONNECTING) {
                            u0.b.L3 = 65535;
                        } else {
                            u0.b.L3 = 3;
                        }
                        y0.h.M();
                    }
                    CmdBtSG9832.this.k0();
                }
            }
        }
    }

    public static /* synthetic */ int d0(CmdBtSG9832 cmdBtSG9832) {
        int i2 = cmdBtSG9832.f13530g;
        cmdBtSG9832.f13530g = i2 - 1;
        return i2;
    }

    @Override // h0.f
    public void A(String str) {
        if ("0".equals(str)) {
            if (a.i.k("persist.audio.mic.senstivity", 0) != 0) {
                a.i.Z("persist.audio.mic.senstivity", "0");
            }
            h0.e.G(0);
        } else if ("1".equals(str)) {
            if (a.i.k("persist.audio.mic.senstivity", 0) != 1) {
                a.i.Z("persist.audio.mic.senstivity", "1");
            }
            h0.e.G(1);
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
        h0.c.f2427c.K2(41);
    }

    @Override // h0.f
    public void C(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                return;
            }
            h0.e.q(ProxyProperties.LOCAL_EXCL_LIST);
        } else {
            String str = h0.c.f2437h;
            if (str == null || str.length() <= 0) {
                return;
            }
            h0.e.q(str.substring(0, str.length() - 1));
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
        this.f13524a.a();
        if (!this.f13526c) {
            App.c().registerReceiver(this, new IntentFilter(BluetoothAdapter.ACTION_STATE_CHANGED));
            this.f13526c = true;
        }
        x(this.f13524a.b(0, h0.c.R));
        if (BluetoothAdapter.getDefaultAdapter().isEnabled()) {
            h0.e.W(31, 1);
        }
        d0.b.h().e(this.f13525b);
        d0.b.h().f(App.c());
        u0.c.f17374a.a(this.f13527d, 1);
        h0.d.f2462a.a(this.f13529f, 1);
        try {
            PackageInfo packageInfo = a.f.q().getPackageInfo("com.android.bluetooth", 0);
            h0.e.v(packageInfo.versionName + "-" + packageInfo.versionCode);
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        A(m1.c.c(382, a.i.k("persist.audio.mic.senstivity", 0)) + ProxyProperties.LOCAL_EXCL_LIST);
        u0.c.f17386m.a(this.f13528e, 0);
        u0.c.f17376c.a(this.f13528e, 0);
        if (f13521u) {
            h0.e.d(f13523w);
            i0();
        }
    }

    @Override // h0.f
    public void b() {
        if (this.f13526c) {
            App.c().unregisterReceiver(this);
            this.f13526c = false;
        }
        d0.b.h().j(this.f13525b);
        u0.c.f17374a.d(this.f13527d);
        u0.c.f17386m.d(this.f13528e);
        u0.c.f17376c.d(this.f13528e);
        this.f13524a.j();
        if (f13521u) {
            h0.e.T(f13523w);
        }
    }

    @Override // h0.f
    public void c(String str) {
        h0.e.q(str);
        h0.c.f2427c.N2(7, str);
    }

    @Override // h0.f
    public void d() {
    }

    @Override // h0.f
    public void e() {
        h0.c.f2427c.K2(10);
        if (h0.c.G == 0 || this.f13530g > 0) {
            return;
        }
        this.f13530g = 10;
        h0.e.d(this.f13531h);
    }

    @Override // h0.f
    public void f() {
    }

    @Override // h0.f
    public void g(String str) {
        h0.c.f2427c.N2(19, str);
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
        h0.e.Y(8, str);
        if (h0.c.E == 5 && c2 != '+') {
            h0.c.f2427c.N2(29, ProxyProperties.LOCAL_EXCL_LIST + c2);
        }
        h0.d.f2464c.c();
    }

    @Override // h0.f
    public void i() {
        h0.c.f2427c.K2(0);
    }

    public final void i0() {
        if (f13521u) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(ConnectivityManager.CONNECTIVITY_ACTION);
            intentFilter.addAction(WifiManager.WIFI_STATE_CHANGED_ACTION);
            intentFilter.addAction(WifiManager.NETWORK_STATE_CHANGED_ACTION);
            App.c().registerReceiver(new mNetworkChangeListener(), intentFilter);
            if (f13522v == 0) {
                o1.d<String, s> dVar = a.b.f17f;
                dVar.h("com.syu.bt", new g());
                dVar.h("net.easyconn", new h());
            }
        }
    }

    @Override // h0.f
    public void j() {
        h0.c.f2427c.K2(26);
    }

    public final void j0(boolean z2, boolean z3, boolean z4) {
        if (f13521u && f13522v == 0) {
            int wifiState = a.f.x().getWifiState();
            this.f13540q = wifiState;
            boolean z5 = wifiState == 2 || wifiState == 3;
            if (this.f13535l == z2 && this.f13536m == z3 && this.f13537n == z5) {
                return;
            }
            this.f13535l = z2;
            this.f13536m = z3;
            this.f13537n = z5;
            if (z2 && z3 && z5) {
                a.i.f();
                this.f13538o = true;
            } else if (z3 && z5) {
                if (!this.f13539p) {
                    this.f13539p = true;
                    u0.b.M3 = true;
                    y0.h.M();
                }
            } else if (!z2 && this.f13538o) {
                if (!this.f13539p) {
                    this.f13539p = true;
                    u0.b.M3 = true;
                    y0.h.M();
                }
                a.i.W();
                this.f13538o = false;
            }
            if (this.f13535l && this.f13539p) {
                this.f13539p = false;
                u0.b.L3 = 3;
                u0.b.M3 = false;
                y0.h.M();
            }
        }
    }

    @Override // h0.f
    public void k() {
        h0.c.f2427c.K2(4);
    }

    public void k0() {
        if (f13521u && f13522v == 1) {
            int wifiState = a.f.x().getWifiState();
            this.f13540q = wifiState;
            int i2 = h0.c.E;
            this.f13541r = i2;
            if (i2 != 0 && i2 != 6 && (wifiState == 2 || wifiState == 3)) {
                a.i.f();
                this.f13538o = true;
            } else if (i2 == 0 && this.f13538o) {
                a.i.W();
                this.f13538o = false;
            }
        }
    }

    @Override // h0.f
    public void l() {
        h0.c.f2427c.K2(5);
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

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (BluetoothAdapter.ACTION_STATE_CHANGED.equals(intent.getAction())) {
            if (intent.getIntExtra(BluetoothAdapter.EXTRA_STATE, 10) == 12) {
                h0.e.W(31, 1);
            } else {
                h0.e.W(31, 0);
            }
        }
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
                this.f13524a.g(0, i2);
                h0.c.f2427c.L2(30, h0.c.Q);
            }
        }
    }

    @Override // h0.f
    public void y(String str) {
        h0.c.f2427c.N2(40, str);
    }

    @Override // h0.f
    public void z() {
        h0.c.f2427c.K2(11);
        if (h0.c.G == 0 || this.f13530g > 0) {
            return;
        }
        this.f13530g = 10;
        h0.e.d(this.f13531h);
    }
}

package n0;

import android.bluetooth.BluetoothClass;
import android.graphics.Paint;
import android.hardware.Camera;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.LinkCapabilities;
import android.net.ProxyProperties;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Process;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import app.App;
import base.Configure;
import chip.Chip;
import com.syu.jni.ToolsJni;
import com.syu.ms.R;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import k0.lt;
import k0.nt;
import k0.ot;
import k0.qt;
import module.bt.CmdBtSG9832;
import module.sound.AudioDevice;
import module.sound.C2313;
import module.sound.C32107;
import module.sound.C32107S;
import module.sound.C3702;
import module.sound.C7604;
import module.sound.C7738;
import module.sound.C7738NOR7870;
import module.sound.C7738NOR7870TDM;
import module.sound.C7739;
import module.sound.C7739_48;
import module.sound.C8288;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import plugins.BusKtv;

/* JADX INFO: loaded from: classes2.dex */
public class c4 extends y.c.a implements Runnable, f1.o.c {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f16332v = a.f.B() + "/app/customer_config.properties";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static SparseArray<Class<? extends c4>> f16333w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static boolean f16334x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static HashMap<String, String> f16335y;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public o1.h0 f16340e;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f16345j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int[] f16348m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f16336a = new int[36];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public z.b f16337b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public z.b f16338c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f16339d = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f16341f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f16342g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f16343h = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f16344i = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f16346k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f16347l = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f16349n = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f16350o = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Runnable f16351p = new a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public o1.s f16352q = new q();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f16353r = new u();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f16354s = new v();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f16355t = new w();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f16356u = new k();

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f16357a = false;

        /* JADX INFO: renamed from: n0.c4$a$a, reason: collision with other inner class name */
        public class RunnableC0084a implements Runnable {
            public RunnableC0084a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                c4.this.B3(aVar.f16357a);
            }
        }

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2 = u0.b.f17320f == 1 && u0.b.n4 == 1;
            Log.e("AA", "===========>>>  DataMain.sMcuOn : " + u0.b.f17320f + " DataMain.sSleepWakeup : " + u0.b.n4);
            if (this.f16357a != z2) {
                this.f16357a = z2;
                o1.j.c(new RunnableC0084a(), this.f16357a ? 200L : 0L);
                if (this.f16357a) {
                    return;
                }
                c4 c4Var = c4.this;
                if (c4Var.f16347l) {
                    c4Var.f16347l = false;
                }
            }
        }
    }

    public class b implements c.f.a {
        public b() {
        }

        @Override // c.f.a
        public boolean a() {
            u0.d.I3(60, 9);
            return true;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[3];
            iArr[0] = 1;
            iArr[1] = 0;
            int i2 = u0.b.o4;
            iArr[2] = (i2 == 5 || i2 == 9) ? 119 : 118;
            z.k.s(iArr);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ToolsJni.cmd_251_Normal_Io_Set(c4.this.h3(), ((h0.c.f2431e || h0.c.E == 5) ? 1 : 0) ^ 1);
        }
    }

    public class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16363a = -1;

        public class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ int f16365a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ boolean f16366b;

            public a(int i2, boolean z2) {
                this.f16365a = i2;
                this.f16366b = z2;
            }

            @Override // java.lang.Runnable
            public void run() {
                int iH3 = c4.this.h3();
                Log.e("AA", "============  gpio : " + iH3 + " flag : " + this.f16365a + " DataBt.sPhoneState: " + h0.c.E);
                ToolsJni.cmd_251_Normal_Io_Set(iH3, this.f16365a);
                if (this.f16366b) {
                    h0.e.J(4, false);
                }
            }
        }

        public e() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            boolean z2 = (h0.c.f2431e || h0.c.E == 5 || h0.c.U == 1) ? 1 : 0;
            int i2 = !z2;
            if (this.f16363a != i2) {
                if (z2 != 0) {
                    h0.e.J(4, true);
                }
                o1.l.a().postDelayed(new a(i2, z2), z2 != 0 ? 200 : 0);
                this.f16363a = i2;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o1.k.a().removeCallbacks(this);
            if (new File("/dev/BT_serial").exists()) {
                c4.this.F3("/dev/BT_serial", 9600);
            } else {
                o1.k.a().postDelayed(this, 500L);
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o1.k.a().removeCallbacks(this);
            if (new File("/dev/ttyS0.tmp").exists()) {
                z.k.h("/dev/ttyS0");
            } else {
                o1.k.a().postDelayed(this, 500L);
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.k().l(0, "DVD Load Error", "DVD serial port cannot be used ！！", Paint.Align.CENTER, 30, -65536, 60, 2147483392);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.a.f18163n.d(z.a.f18153d, z.a.f18174y);
            z.a.f18174y = null;
        }
    }

    public class j implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f16372a;

        public j(String str) {
            this.f16372a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.k().l(0, "Plugin Device Load Error", "Plugin serial port " + this.f16372a + " was used ！！", Paint.Align.CENTER, 30, -65536, 60, 2147483392);
        }
    }

    public class k implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16374a = 0;

        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.e.e() != g.e.e()) {
                k4.i(this);
                return;
            }
            int i2 = this.f16374a + 1;
            this.f16374a = i2;
            if (i2 >= 2) {
                this.f16374a = 0;
                g.g gVar = g.e.f2254a;
                int iL = gVar instanceof Chip ? ((Chip) gVar).l() : 0;
                u0.d.c0(iL);
                Log.e("AA", "===========>>>  isAutoFanCtrl : " + c4.this.f16346k + " temp : " + iL);
                c4 c4Var = c4.this;
                if (c4Var.f16346k && u0.b.f17320f == 1) {
                    boolean zQ3 = c4Var.Q3();
                    if (!zQ3) {
                        c4 c4Var2 = c4.this;
                        int[] iArr = c4Var2.f16345j;
                        if (iL < iArr[1]) {
                            if (zQ3 || iL >= iArr[0]) {
                                return;
                            }
                            c4Var2.f3(false);
                            return;
                        }
                    }
                    c4.this.f3(true);
                }
            }
        }
    }

    public class l extends c.d {
        public l() {
        }

        @Override // c.d
        public boolean b(int i2) {
            if (u0.b.f17347o != 1) {
                u0.d.I3(133, i2);
            }
            return true;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    public class m implements o1.o {
        public m() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != -3) {
                return false;
            }
            int[] iArr2 = u0.b.f17366w == 0 ? u0.b.V2 : u0.b.W2;
            int length = iArr2 == null ? 0 : iArr2.length;
            if (length == 0) {
                return true;
            }
            int iC = ((o1.n0.c(iArr2, u0.b.K) + length) - 1) % length;
            if (u0.b.f17332j == 1 && iArr2[0] == 0) {
                u0.d.N(0);
                return true;
            }
            int iA = o1.o0.a(iArr2[iC], 0, u0.b.Q);
            if (iA == 0) {
                u0.d.N(1);
                a.i.a0(200L);
                u0.d.V(o1.o0.a(iArr2[length - 1], 0, u0.b.Q));
            } else {
                u0.d.V(iA);
            }
            return true;
        }
    }

    public class n extends c.d {
        public n() {
        }

        @Override // c.d
        public boolean b(int i2) {
            z.k.s(227, -56, 2, 1, 1);
            Log.v("zed", "CAR_DJ_RZC_HONDA_15_18Aodesai_TaiE = KEYCODE_CUSTOME_1  111111111");
            return false;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    public class o extends c.d {
        public o() {
        }

        @Override // c.d
        public boolean b(int i2) {
            z.k.s(227, -56, 2, 1, 0);
            Log.v("zed", "CAR_DJ_RZC_HONDA_15_18Aodesai_TaiE = KEYCODE_CUSTOME_2  222222222");
            return false;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    public class p implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f16380a;

        public p(String str) {
            this.f16380a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.k().l(0, "Canbus Device Load Error", "Canbus serial port:" + this.f16380a + " was used ！！", Paint.Align.CENTER, 30, -65536, 60, 2147483392);
        }
    }

    public class q implements o1.s {
        public q() {
        }

        @Override // o1.s
        public void R(boolean z2) {
            if (z2) {
                a.i.C("com.dofun.dofunweather.main");
                a.i.C("com.dofun.variety");
            }
        }
    }

    public class r implements o1.o {
        public r() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 0) {
                return false;
            }
            c.e.d().c(3);
            return false;
        }
    }

    public class s implements o1.o {
        public s() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 0) {
                return false;
            }
            c.e.d().c(558);
            return false;
        }
    }

    public class t extends c.d {
        public t() {
        }

        @Override // c.d
        public boolean b(int i2) {
            Log.e("TXZ", "========>>>Home keyCode : " + i2);
            u0.d.I3(133, i2);
            return true;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    public class u implements Runnable {
        public u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8633a;
            int i3 = 65535 & i2;
            if (i3 == 112 || i3 == 298 || i3 == 448) {
                return;
            }
            switch (i2) {
                case 2949575:
                case 5702087:
                case 12452296:
                case 12648904:
                    break;
                default:
                    if (u0.b.f17366w != 1) {
                        qt.A0(1049, new int[]{11, 0}, null, null);
                    } else {
                        qt.A0(1049, new int[]{11, 64}, null, null);
                    }
                    break;
            }
        }
    }

    public class v implements Runnable {
        public v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 1) {
                if (g.e.a() == 11 || g.e.a() == 12 || g.e.a() == 13) {
                    SystemProperties.set("persist.fyt.right.check", "0");
                }
            }
        }
    }

    public class w implements Runnable {

        public class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ int f16389a;

            public a(int i2) {
                this.f16389a = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.i.g(this.f16389a);
            }
        }

        public w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u0.i iVarL3;
            int i2 = u0.b.f17366w;
            int iM3 = u0.i.l3().m3();
            if (iM3 == 2) {
                i2 = 1;
            } else if (iM3 == 1) {
                i2 = 0;
            }
            if (!g.e.m()) {
                o1.j.c(new a(i2), 600L);
            }
            if (App.c().g() && iM3 == 0 && (iVarL3 = u0.i.l3()) != null) {
                iVarL3.T3(u0.b.f17366w == 1);
            }
        }
    }

    public class x implements Runnable {
        public x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o1.l.a().removeCallbacks(this);
            if (!o1.s0.o("syu.imageic.inited", "0").equals("1")) {
                o1.l.a().postDelayed(this, 500L);
            } else if (a.i.n("com.syu.fourcamera2")) {
                b.d.d(true, "com.syu.fourcamera2", "com.syu.fourcamera");
                o1.u.C0("com.syu.fourcamera", "com.syu.fourcamera2");
            }
        }
    }

    static {
        f16333w = null;
        SparseArray<Class<? extends c4>> sparseArray = new SparseArray<>();
        f16333w = sparseArray;
        sparseArray.put(0, n0.a.class);
        f16333w.put(1, n0.a.class);
        f16333w.put(2, n0.b.class);
        f16333w.put(3, n0.c.class);
        f16333w.put(4, n0.d.class);
        f16333w.put(5, n0.e.class);
        f16333w.put(6, n0.f.class);
        f16333w.put(7, n0.g.class);
        f16333w.put(8, n0.h.class);
        f16333w.put(9, n0.i.class);
        f16333w.put(10, n0.j.class);
        f16333w.put(11, n0.k.class);
        f16333w.put(12, n0.l.class);
        f16333w.put(13, n0.m.class);
        f16333w.put(14, n0.n.class);
        f16333w.put(15, n0.o.class);
        f16333w.put(16, n0.p.class);
        f16333w.put(17, n0.q.class);
        f16333w.put(18, n0.r.class);
        f16333w.put(19, n0.s.class);
        f16333w.put(20, n0.t.class);
        f16333w.put(21, n0.u.class);
        f16333w.put(22, n0.v.class);
        f16333w.put(23, n0.w.class);
        f16333w.put(24, n0.x.class);
        f16333w.put(25, y.class);
        f16333w.put(26, z.class);
        f16333w.put(27, a0.class);
        f16333w.put(28, b0.class);
        f16333w.put(29, c0.class);
        f16333w.put(30, d0.class);
        f16333w.put(31, e0.class);
        f16333w.put(32, f0.class);
        f16333w.put(33, g0.class);
        f16333w.put(34, h0.class);
        f16333w.put(35, i0.class);
        f16333w.put(36, j0.class);
        f16333w.put(37, k0.class);
        f16333w.put(38, l0.class);
        f16333w.put(39, m0.class);
        f16333w.put(40, n0.class);
        f16333w.put(41, o0.class);
        f16333w.put(42, p0.class);
        f16333w.put(43, q0.class);
        f16333w.put(44, r0.class);
        f16333w.put(45, s0.class);
        f16333w.put(46, t0.class);
        f16333w.put(47, u0.class);
        f16333w.put(48, v0.class);
        f16333w.put(49, w0.class);
        f16333w.put(50, x0.class);
        f16333w.put(51, y0.class);
        f16333w.put(52, z0.class);
        f16333w.put(53, a1.class);
        f16333w.put(54, b1.class);
        f16333w.put(55, c1.class);
        f16333w.put(56, d1.class);
        f16333w.put(57, e1.class);
        f16333w.put(58, f1.class);
        f16333w.put(59, g1.class);
        f16333w.put(60, h1.class);
        f16333w.put(61, i1.class);
        f16333w.put(62, j1.class);
        f16333w.put(63, k1.class);
        f16333w.put(64, l1.class);
        f16333w.put(65, m1.class);
        f16333w.put(66, n1.class);
        f16333w.put(67, o1.class);
        f16333w.put(68, p1.class);
        f16333w.put(69, q1.class);
        f16333w.put(70, r1.class);
        f16333w.put(71, s1.class);
        f16333w.put(72, t1.class);
        f16333w.put(73, u1.class);
        f16333w.put(74, v1.class);
        f16333w.put(75, w1.class);
        f16333w.put(76, x1.class);
        f16333w.put(77, y1.class);
        f16333w.put(78, z1.class);
        f16333w.put(79, a2.class);
        f16333w.put(80, b2.class);
        f16333w.put(81, c2.class);
        f16333w.put(82, d2.class);
        f16333w.put(83, e2.class);
        f16333w.put(84, f2.class);
        f16333w.put(85, g2.class);
        f16333w.put(86, h2.class);
        f16333w.put(87, i2.class);
        f16333w.put(88, j2.class);
        f16333w.put(89, k2.class);
        f16333w.put(90, l2.class);
        f16333w.put(91, m2.class);
        f16333w.put(92, n2.class);
        f16333w.put(93, o2.class);
        f16333w.put(94, p2.class);
        f16333w.put(95, q2.class);
        f16333w.put(96, r2.class);
        f16333w.put(97, s2.class);
        f16333w.put(98, t2.class);
        f16333w.put(99, u2.class);
        f16333w.put(100, v2.class);
        f16333w.put(102, d4.class);
        f16333w.put(103, e4.class);
        f16333w.put(104, f4.class);
        f16333w.put(105, g4.class);
        f16333w.put(107, h4.class);
        f16333w.put(108, i4.class);
        f16333w.put(110, w2.class);
        f16333w.put(111, x2.class);
        f16333w.put(112, y2.class);
        f16333w.put(113, z2.class);
        f16333w.put(114, a3.class);
        f16333w.put(115, b3.class);
        f16333w.put(116, c3.class);
        f16333w.put(118, d3.class);
        f16333w.put(119, e3.class);
        f16333w.put(121, f3.class);
        f16333w.put(122, g3.class);
        f16333w.put(123, h3.class);
        f16333w.put(124, i3.class);
        f16333w.put(125, j3.class);
        f16333w.put(126, k3.class);
        f16333w.put(127, l3.class);
        f16333w.put(128, m3.class);
        f16333w.put(129, n3.class);
        f16333w.put(130, o3.class);
        f16333w.put(131, p3.class);
        f16333w.put(132, q3.class);
        f16333w.put(133, r3.class);
        f16333w.put(134, s3.class);
        f16333w.put(135, t3.class);
        f16333w.put(136, u3.class);
        f16333w.put(137, v3.class);
        f16333w.put(138, w3.class);
        f16333w.put(139, x3.class);
        f16333w.put(140, y3.class);
        f16333w.put(141, z3.class);
        f16333w.put(142, a4.class);
        f16333w.put(143, b4.class);
        f16334x = false;
        f16335y = null;
    }

    public c4() {
        String strH;
        int[] iArr;
        this.f16345j = null;
        D3();
        o1.h0 h0Var = new o1.h0("customer_" + j4.f16464b);
        this.f16340e = h0Var;
        int[] iArrI = h0Var.i(1015);
        boolean z2 = iArrI != null && iArrI.length == 2;
        int[] iArrB = this.f16345j;
        if (iArrB == null) {
            g.g gVar = g.e.f2254a;
            if (gVar instanceof Chip) {
                iArrB = ((Chip) gVar).B();
            }
        }
        if (!z2 && iArrB != null) {
            iArrI = iArrB;
        }
        this.f16345j = iArrI;
        o1.d<String, o1.s> dVar = a.b.f17f;
        dVar.h("com.dofun.dofunweather.main", this.f16352q);
        dVar.h("com.dofun.variety", this.f16352q);
        int[] iArr2 = this.f16345j;
        this.f16348m = new int[]{this.f16349n, this.f16350o, iArr2[0], iArr2[1]};
        if (!z2 && (strH = Configure.Property.FAN_CFG.h(ProxyProperties.LOCAL_EXCL_LIST)) != null && !strH.isEmpty()) {
            int[] iArrE = o1.s0.E(strH);
            Log.e("AA", "===========>>> CustomerBase fan config : " + strH + " values : " + Arrays.toString(iArrE) + " sCustomerId: " + j4.f16464b);
            if (iArrE != null) {
                int i2 = 0;
                while (true) {
                    iArr = this.f16348m;
                    if (i2 >= iArr.length || i2 >= iArrE.length) {
                        break;
                    }
                    if (iArrE[i2] >= 0) {
                        iArr[i2] = iArrE[i2];
                    }
                    i2++;
                }
                e3(iArr[0] == 1);
                int[] iArr3 = this.f16348m;
                M3(iArr3[2], iArr3[3]);
            }
        }
        int iD = Configure.Property.POWER_KEY_EVENT.d(0);
        if (iD == 1) {
            o1.v vVar = e.c.D;
            vVar.b();
            vVar.a(new r(), -500);
            vVar.a(e.a.f(), 2000);
        } else if (iD == 2) {
            o1.v vVar2 = e.c.D;
            vVar2.b();
            vVar2.a(e.a.g(), -500);
            vVar2.a(e.a.f(), 2000);
        } else if (iD == 3) {
            o1.v vVar3 = e.c.D;
            vVar3.b();
            vVar3.a(new s(), -500);
            vVar3.a(e.a.f(), 2000);
        }
        boolean zL = o1.s0.l("persist.fyt.ui.txz", false);
        Log.e("TXZ", "========>>> isTxz: " + zL);
        if (zL) {
            t tVar = new t();
            c.e.d().i(3, tVar);
            c.e.d().i(BluetoothClass.Device.PHONE_ISDN, tVar);
        }
    }

    public static c4 c3(int i2) {
        try {
            return f16333w.get(i2, n0.a.class).newInstance();
        } catch (Exception unused) {
            return null;
        }
    }

    public boolean A3(int i2) {
        return false;
    }

    public void B3(boolean z2) {
        Log.e("AA", "===========>>> onRunning running : " + z2);
        if (z2) {
            t3();
        } else {
            ((Chip) g.e.f2254a).o(false);
        }
    }

    public void C3() {
        u0.c.f17386m.d(this.f16354s);
        ot.f9019a.d(this);
        u0.c.f17376c.d(this.f16351p);
        u0.c.f17381h.d(this.f16351p);
        o1.y yVar = u0.c.f17399z;
        yVar.d(this.f16355t);
        yVar.d(this.f16353r);
    }

    public void D3() {
    }

    public void E3(int i2, int[] iArr) {
        this.f16340e.r(i2, iArr);
    }

    public void F3(String str, int i2) {
        o1.e0 e0Var = z.a.f18153d;
        e0Var.c(str);
        e0Var.g(i2);
        e0Var.e(false);
        o1.f0 f0Var = z.a.f18163n;
        f0Var.setName("RDA-Reader");
        h0.e.H(1);
        z.e eVar = new z.e();
        z.a.f18174y = eVar;
        z.k.a(str, f0Var, e0Var, eVar, i2);
        if (!m1.a.f13514c) {
            z.a.F.add(new i());
        } else {
            f0Var.d(e0Var, z.a.f18174y);
            z.a.f18174y = null;
        }
    }

    public void G3(int i2) {
        if (A3(i2)) {
        }
        switch (i2) {
            case 24:
            case 47:
            case 67:
            case 76:
                k4.j();
                break;
            case 175:
            case 65858:
            case 65860:
            case 131394:
            case 131396:
            case 131403:
            case 131405:
                int i3 = y0.f.f18031a;
                if (i3 == 1) {
                    System.arraycopy(this.f16336a, 0, y0.b.f17954d, 1, 36);
                } else if (i3 == 2) {
                    System.arraycopy(this.f16336a, 0, y0.d.f18026l, 1, 36);
                    y0.d.q();
                }
                y0.h.M();
                break;
            case 317:
            case 348:
            case 442:
            case 65853:
            case 65884:
            case 131389:
            case 131420:
            case 196925:
            case 196956:
            case 262461:
            case 262492:
            case 327997:
            case 328028:
            case 393533:
            case 459069:
            case 459100:
            case 524605:
            case 524636:
            case 590172:
            case 655708:
            case 721244:
            case 786780:
                if (g.e.g() == 1) {
                    y0.h.V(1);
                }
                break;
            case 418:
                AudioDevice audioDeviceW = AudioDevice.W();
                if (audioDeviceW != null && (audioDeviceW instanceof C32107)) {
                    C32107.z1 = 17;
                    C32107.A1 = 5;
                    audioDeviceW.l(y0.f.E);
                    break;
                }
                break;
        }
    }

    public void H3(AudioDevice audioDevice) {
        boolean zJ;
        if (this.f16341f == 8 && (zJ = o1.s0.j(o1.s0.o("ro.fyt.realplatform", "818L"), "818L")) && (audioDevice instanceof C2313)) {
            audioDevice.S0(zJ);
        }
        String strO = o1.s0.o("sys.fyt.bluetooth_type", "0");
        if (audioDevice instanceof C7739) {
            if ("1".equals(strO) || "8".equals(strO)) {
                C7739.CHANNEL channel = C7739.CHANNEL.IN1;
                audioDevice.L0(2, channel.f15905a);
                audioDevice.L0(3, channel.f15905a);
                return;
            } else {
                if ("0".equals(strO)) {
                    C7739.CHANNEL channel2 = C7739.CHANNEL.IN1;
                    audioDevice.L0(2, channel2.f15905a);
                    audioDevice.L0(3, channel2.f15905a);
                    audioDevice.P0(true);
                    audioDevice.O0(true);
                    return;
                }
                return;
            }
        }
        if (audioDevice instanceof C7739_48) {
            if ("1".equals(strO) || "8".equals(strO) || this.f16341f == 14) {
                C7739_48.CHANNEL channel3 = C7739_48.CHANNEL.IN1;
                audioDevice.L0(2, channel3.f15956a);
                audioDevice.L0(3, channel3.f15956a);
                return;
            } else {
                if ("0".equals(strO) || this.f16341f == 14) {
                    C7739_48.CHANNEL channel4 = C7739_48.CHANNEL.IN1;
                    audioDevice.L0(2, channel4.f15956a);
                    audioDevice.L0(3, channel4.f15956a);
                    audioDevice.P0(true);
                    audioDevice.O0(true);
                    return;
                }
                return;
            }
        }
        if (audioDevice instanceof C7738NOR7870TDM) {
            if ("1".equals(strO)) {
                C7738NOR7870TDM.CHANNEL channel5 = C7738NOR7870TDM.CHANNEL.IN1;
                audioDevice.L0(2, channel5.f15766a);
                audioDevice.L0(3, channel5.f15766a);
                return;
            } else {
                if ("0".equals(strO)) {
                    C7738NOR7870TDM.CHANNEL channel6 = C7738NOR7870TDM.CHANNEL.IN1;
                    audioDevice.L0(2, channel6.f15766a);
                    audioDevice.L0(3, channel6.f15766a);
                    audioDevice.P0(true);
                    audioDevice.O0(true);
                    return;
                }
                return;
            }
        }
        if (audioDevice instanceof C7738NOR7870) {
            if ("1".equals(strO)) {
                C7738NOR7870.CHANNEL channel7 = C7738NOR7870.CHANNEL.IN1;
                audioDevice.L0(2, channel7.f15715a);
                audioDevice.L0(3, channel7.f15715a);
                return;
            } else {
                if ("0".equals(strO)) {
                    C7738NOR7870.CHANNEL channel8 = C7738NOR7870.CHANNEL.IN1;
                    audioDevice.L0(2, channel8.f15715a);
                    audioDevice.L0(3, channel8.f15715a);
                    audioDevice.P0(true);
                    audioDevice.O0(true);
                    return;
                }
                return;
            }
        }
        if (audioDevice instanceof C7738) {
            if ("1".equals(strO)) {
                C7738.CHANNEL channel9 = C7738.CHANNEL.IN1;
                audioDevice.L0(2, channel9.f15613a);
                audioDevice.L0(3, channel9.f15613a);
                return;
            } else {
                if ("0".equals(strO)) {
                    C7738.CHANNEL channel10 = C7738.CHANNEL.IN1;
                    audioDevice.L0(2, channel10.f15613a);
                    audioDevice.L0(3, channel10.f15613a);
                    audioDevice.P0(true);
                    audioDevice.O0(true);
                    return;
                }
                return;
            }
        }
        if (audioDevice instanceof C32107S) {
            if (o1.s0.j(strO, "4") || o1.s0.j(strO, "6") || o1.s0.j(strO, "7")) {
                C32107S.CHANNEL channel11 = C32107S.CHANNEL.DVD;
                audioDevice.L0(2, channel11.f15314a);
                audioDevice.L0(3, channel11.f15314a);
                return;
            }
            return;
        }
        if (audioDevice instanceof C32107) {
            if (o1.s0.j(strO, "4") || o1.s0.j(strO, "6") || o1.s0.j(strO, "7")) {
                audioDevice.L0(6, C32107.CHANNEL.DVD.f15215a);
                C32107.CHANNEL channel12 = C32107.CHANNEL.TV;
                audioDevice.L0(2, channel12.f15215a);
                audioDevice.L0(3, channel12.f15215a);
            }
            if (Configure.Property.CUSTOMER_PLATFORM.h(ProxyProperties.LOCAL_EXCL_LIST).equals("HDMI-RV")) {
                ((C32107) audioDevice).X1(true);
                return;
            }
            return;
        }
        if (audioDevice instanceof module.sound.a) {
            if (!strO.equals("0")) {
                audioDevice.L0(2, 5);
                return;
            } else {
                if (g.e.a() == 9) {
                    Log.e("soundMute1", "========>>>  setAudioChannel 7862");
                    audioDevice.L0(2, 12);
                    return;
                }
                return;
            }
        }
        if (audioDevice instanceof C8288) {
            if (g.e.a() == 8) {
                audioDevice.L0(2, C8288.CHANNLE.PHONE.f16054a);
                audioDevice.L0(3, C8288.CHANNLE.GUSB.f16054a);
                return;
            }
            return;
        }
        if (audioDevice instanceof C2313) {
            if (g.f.n(12)) {
                g3(true);
                audioDevice.S0(false);
                return;
            } else {
                if (g.f.f(9)) {
                    g3(true);
                    audioDevice.S0(true);
                    return;
                }
                return;
            }
        }
        if (audioDevice instanceof C7604) {
            if ("7".equals(strO)) {
                C7604.CHANNEL channel13 = C7604.CHANNEL.IN4;
                audioDevice.L0(2, channel13.f15469a);
                audioDevice.L0(3, channel13.f15469a);
                return;
            }
            return;
        }
        if (audioDevice instanceof C3702) {
            g3(true);
            u0.b.V3 = true;
            if (g.f.f(9)) {
                audioDevice.L0(5, C3702.CHANNEL.D_DIFF.f15432a);
            }
        }
    }

    public void I3(e1.c cVar) {
        if (g.e.a() != 5 || !(cVar instanceof e1.e)) {
            if (g.e.j(70) && (cVar instanceof e1.e)) {
                cVar.v(5, 3);
                if (Configure.Property.S869_AUX_IN_BACK.b(false)) {
                    cVar.v(2, 1);
                    return;
                }
                return;
            }
            return;
        }
        cVar.v(0, 0);
        cVar.v(1, 1);
        cVar.v(2, 2);
        cVar.v(3, 5);
        cVar.v(4, 3);
        cVar.v(5, 4);
        cVar.v(6, 2);
        cVar.v(7, 3);
        cVar.v(8, 4);
        cVar.v(9, 1);
    }

    public void J3(i1.b0.a aVar, int i2) {
        int i3;
        if (g.e.f2254a == null || !g.e.k()) {
            return;
        }
        Chip chip2 = (Chip) g.e.f2254a;
        String strU = chip2.u();
        if (o1.s0.t(strU)) {
            return;
        }
        if ((SystemProperties.get("sys.fyt.serialdebug", Camera.Parameters.FLASH_MODE_ON).equalsIgnoreCase(Camera.Parameters.FLASH_MODE_ON) || (i3 = o0.e.f16764a) == 2 || i3 == 1) && chip2.v().equals(strU)) {
            o1.k.a().post(new p(strU));
        } else {
            chip2.q(chip2.u(), i2).i(aVar);
        }
    }

    public void K2() {
        g.g gVar = g.e.f2254a;
        if (gVar instanceof Chip) {
            Chip chip2 = (Chip) gVar;
            String strD = m1.c.d(216, o1.s0.o("ro.syu.customized_intent", ProxyProperties.LOCAL_EXCL_LIST));
            if ((chip2 instanceof g.j) && "817".equals(((g.j) chip2).Z())) {
                strD = "Common360_817#19200";
            }
            N2(chip2.x(), strD);
        }
    }

    public void K3() {
        String strO = o1.s0.o("sys.fyt.bluetooth_type", "0");
        if (strO.equals("2") || strO.equals("4") || strO.equals("6") || (strO.equals("7") && Configure.Property.C3031_ECNR_DISABLE.d(0) == 0)) {
            Runnable dVar = strO.equals("2") ? new d() : new e();
            h0.d.f2464c.a(dVar, 0);
            h0.d.f2462a.a(dVar, 0);
            h0.d.f2471j.a(dVar, 1);
        }
    }

    public int[] L2() {
        lt ltVar;
        int[] iArr = {8, 8};
        return (o1.s0.l("ro.syu.sound_field.wholecar", false) || (ltVar = nt.f8639d) == null) ? iArr : ltVar.K2();
    }

    public void L3() {
    }

    @Override // y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public void M2() throws Throwable {
        Log.e("Qin", " ------->> bootReady");
        o1.u.J0("com.youzi.customer.service");
        o1.u.O0();
        o1.u.K0();
        y0.j jVarA3 = y0.j.a3();
        jVarA3.l3("com.android.bluetooth");
        BusKtv.X().Y(App.c());
        if (o1.u.k0(App.c(), "com.ankai.cardvr")) {
            jVarA3.l3("com.ankai.cardvr");
        }
        jVarA3.l3("com.williexing.android.apps.xcdvr1");
        jVarA3.l3("com.maitianiot.rl.carsetapp");
        jVarA3.l3("com.maitianiot.rl.carservice");
        jVarA3.l3("/system/bin/CarplayService");
        jVarA3.l3("com.syu.carlink");
        o1.l.a().postDelayed(new x(), 500L);
        o1.u.m("com.example.clxycontrolservice.check", "com.example.clxycontrolservice");
        d3(this.f16344i);
        w3(this.f16343h);
        o1.u.N0();
        h1.a.d().n(Configure.Property.MD_SHARE_VOICE_KEY.b(true));
        h1.a.d().o(Configure.Property.MD_SHARE_VOICE_ACTION_KEY.b(true));
    }

    public void M3(int i2, int i3) {
        int[] iArr = this.f16345j;
        if (iArr[0] == i2 && iArr[1] == i3) {
            return;
        }
        iArr[0] = i2;
        iArr[1] = i3;
        u0.d.I3(145, i2, i3);
        E3(1015, this.f16345j);
        this.f16340e.e(1015);
    }

    public boolean N2(String str, String str2) {
        int i2;
        g.g gVar = g.e.f2254a;
        boolean z2 = false;
        if (!(gVar instanceof Chip)) {
            return false;
        }
        Log.e("Device", "commonBoardSerialCustomDev path: " + str + " DataDvd.sModuleId : " + o0.e.f16764a);
        boolean z3 = ((Chip) gVar).v().equals(str) && (SystemProperties.get("sys.fyt.serialdebug", "off").equalsIgnoreCase(Camera.Parameters.FLASH_MODE_ON) || (i2 = o0.e.f16764a) == 2 || i2 == 1);
        if (o1.s0.t(str2)) {
            str2 = o1.s0.o("ro.syu.customized_intent", str2);
        }
        Log.e("Device", "commonBoardSerialCustomDev tpye: " + str2);
        if (WifiEnterpriseConfig.EMPTY_VALUE.equals(str2) || "BBApannel#38400".equals(str2)) {
            u0.i.l3().r4(str2);
            return false;
        }
        if (!str2.isEmpty()) {
            if (z3) {
                o1.k.a().post(new j(str));
                return false;
            }
            String[] strArrSplit = str2.split("#");
            String str3 = strArrSplit[0];
            try {
                int iIntValue = Integer.valueOf(strArrSplit[1]).intValue();
                ((Chip) g.e.f2254a).q(str, iIntValue).j(str3, iIntValue);
                z2 = true;
            } catch (Exception unused) {
            }
            if (z2) {
                u0.i.l3().r4(str2);
            }
        }
        return z2;
    }

    public void N3(int[] iArr, int[] iArr2) {
        if (o1.s0.h(iArr, 2) && o1.s0.h(iArr, 2)) {
            int[] iArrE = o1.s0.E(o1.s0.o("ro.syu.brightLevelOfDay", ProxyProperties.LOCAL_EXCL_LIST));
            int[] iArrE2 = o1.s0.E(o1.s0.o("ro.syu.brightLevelOfNight", ProxyProperties.LOCAL_EXCL_LIST));
            if (o1.s0.h(iArrE, 2)) {
                iArr = iArrE;
            }
            u0.b.V2 = iArr;
            if (o1.s0.h(iArrE, 2)) {
                iArr2 = iArrE2;
            }
            u0.b.W2 = iArr2;
            u0.b.Y2 = new m();
        }
    }

    public void O2() throws Throwable {
        W2();
        g.g gVar = g.e.f2254a;
        if (gVar instanceof Chip) {
            ((Chip) gVar).Q(false);
        }
    }

    public void O3() throws Throwable {
        HashMap<String, String> map;
        Configure configure = new Configure();
        configure.b(f16332v);
        u0.b.P2 = 0;
        u0.b.R2 = 0;
        u0.b.v3 = ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT;
        if (!f16334x || (map = f16335y) == null) {
            s3(configure.a(Configure.Key.DVD_MODULE.f292a, ProxyProperties.LOCAL_EXCL_LIST).trim());
            o3(configure.a(Configure.Key.AUDIO_MODULE.f292a, ProxyProperties.LOCAL_EXCL_LIST).trim());
            if (!f1.o.g().m()) {
                u3(((Chip) g.e.f2254a).C());
            }
            p3(configure.a(Configure.Key.BLUETOOTH_MODULE.f292a, ProxyProperties.LOCAL_EXCL_LIST).trim());
            f0.c.X2().Z2();
        } else {
            s3(map.get("dvd"));
            o3(f16335y.get("audio_ic"));
            if (!f1.o.g().m()) {
                u3(f16335y.get("image_ic"));
            }
            p3(f16335y.get("bluetooth_type"));
        }
        String strA = configure.a(Configure.Key.KEEP_SERVICES.f292a, ProxyProperties.LOCAL_EXCL_LIST);
        this.f16343h = strA;
        if (strA.endsWith(".json")) {
            File file = new File(this.f16343h);
            if (file.exists() && file.isFile()) {
                this.f16343h = q1.a.d(file.getPath(), ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
        this.f16344i = configure.a(Configure.Key.DISABLE_PACKAGES.f292a, ProxyProperties.LOCAL_EXCL_LIST);
        h0.e.D();
    }

    @Override // y.c
    public void P0(y.b bVar, int i2) {
    }

    public void P2() {
    }

    public void P3(String str) {
        String str2;
        String str3 = "startup";
        if (o1.s0.t(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            int length = jSONArray.length();
            int i2 = 0;
            while (i2 < length) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                String string = jSONObject.has("pkg") ? jSONObject.getString("pkg") : null;
                String string2 = jSONObject.has(Camera.Parameters.SCENE_MODE_ACTION) ? jSONObject.getString(Camera.Parameters.SCENE_MODE_ACTION) : null;
                String string3 = jSONObject.has("class") ? jSONObject.getString("class") : null;
                boolean z2 = !jSONObject.has("keep_alive") || jSONObject.getBoolean("keep_alive");
                long j2 = jSONObject.has(str3) ? jSONObject.getLong(str3) : 0L;
                int i3 = i2;
                long j3 = j2;
                if (string == null || ((string2 == null && string3 == null) || !o1.u.K(string, string3, string2))) {
                    str2 = str3;
                } else {
                    StringBuilder sb = new StringBuilder();
                    str2 = str3;
                    sb.append("01 startService pkg: ");
                    sb.append(string);
                    sb.append(" class: ");
                    sb.append(string3);
                    sb.append(" action: ");
                    sb.append(string2);
                    sb.append(" isKeep : ");
                    sb.append(z2);
                    Log.e("Keeper", sb.toString());
                    if (z2) {
                        b.d.e(true, string, string2, j3);
                    } else if (string3 != null) {
                        o1.u.F0(string, string3);
                    } else {
                        o1.u.C0(string2, string);
                    }
                }
                i2 = i3 + 1;
                str3 = str2;
            }
        } catch (Exception unused) {
        }
    }

    public void Q2() {
        if (o1.u.k0(App.c(), "com.syu.panoramic") || g.f.h()) {
            c.e.d().i(559, new l());
        }
    }

    public boolean Q3() {
        return u0.b.f17320f == 1 && y0.f.C0 > 30;
    }

    public void R2() throws Throwable {
        W2();
    }

    public boolean R3(String str) {
        boolean z2 = (!m3() || "NOR".equals(j4.f16465c) || "BUG".equals(j4.f16465c) || str.contains(j4.f16465c)) ? false : true;
        if (!z2) {
            z.k.s(1, 0, 52);
        }
        return z2;
    }

    public void S2() throws Throwable {
        if (g.e.p() == 42 || g.e.p() == 47 || g.e.p() == 48) {
            g.g gVar = g.e.f2254a;
            if (gVar instanceof g.j) {
                ((g.j) gVar).a0(1);
            }
        }
        g.g gVar2 = g.e.f2254a;
        if (gVar2 instanceof Chip) {
            ((Chip) gVar2).Q(!g.e.j(63));
        }
        o0.e.f16785k0 = SystemProperties.getInt("sys.syu.dvd_external", 0) == 1 ? 0 : 1;
        u0.b.W3 = true;
        u0.b.d4 = SystemProperties.getBoolean("sys.syu.no_audio_mute", false);
        CmdBtSG9832.f13522v = -1;
        CmdBtSG9832.f13521u = false;
        O3();
        e1.c cVarN = e1.c.n();
        if (cVarN instanceof e1.e) {
            ((e1.e) cVarN).Q(true);
        }
        int iE = g.e.e();
        if (w0.d.f17789a == 1 && (g.e.p() == 48 || iE == 44 || iE == 60 || iE == 46 || iE == 47)) {
            v3("AUTO");
        }
        K2();
    }

    public void T2() {
        z.k.g("/dev/ttyS2");
    }

    public void U2() throws Throwable {
        C32107.z1 -= 2;
        C32107.A1 -= 2;
        X2();
    }

    public void V2() throws Throwable {
        u0.b.T2 = 60;
        u0.b.U2 = 50;
        U2();
    }

    public void W2() throws Throwable {
        U2();
    }

    public void X2() throws Throwable {
        u0.c.f17383j.a(new c(), 1);
        K3();
        o0.e.f16785k0 = SystemProperties.getInt("sys.syu.dvd_external", 0) == 1 ? 0 : 1;
        u0.b.W3 = true;
        u0.b.d4 = SystemProperties.getBoolean("sys.syu.no_audio_mute", false);
        CmdBtSG9832.f13522v = -1;
        CmdBtSG9832.f13521u = false;
        O3();
        if (w0.d.f17789a == 1) {
            v3("AUTO");
        }
        K2();
        r0.a.X2();
    }

    @Override // y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    public void Y2() throws Throwable {
        U2();
        g.g gVar = g.e.f2254a;
        if (gVar instanceof Chip) {
            ((Chip) gVar).Q((g.e.j(66) || g.e.j(71)) ? false : true);
        }
    }

    @Override // y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        AudioDevice audioDeviceW;
        int i3;
        if (i2 == 1000 && (audioDeviceW = AudioDevice.W()) != null) {
            int length = audioDeviceW.X(1).length;
            if (iArr == null || iArr.length < (i3 = length + 1) || iArr[0] <= 8) {
                return;
            }
            int[] iArrCopyOfRange = Arrays.copyOfRange(iArr, 1, i3);
            audioDeviceW.Z0(iArr[0], iArrCopyOfRange);
            E3(iArr[0] + 1000, iArrCopyOfRange);
        }
    }

    public void Z2() {
        g.f.j();
    }

    public void a3() throws Throwable {
        K3();
        o0.e.f16785k0 = SystemProperties.getInt("sys.syu.dvd_external", 0) == 1 ? 0 : 1;
        u0.b.W3 = true;
        u0.b.d4 = SystemProperties.getBoolean("sys.syu.no_audio_mute", false);
        CmdBtSG9832.f13522v = -1;
        CmdBtSG9832.f13521u = false;
        O3();
        if (w0.d.f17789a == 1) {
            v3("AUTO");
        }
        K2();
    }

    public void b3() {
        g.f.l();
    }

    public void d3(String str) {
        if (o1.s0.t(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            int length = jSONArray.length();
            for (int i2 = 0; i2 < length; i2++) {
                String string = jSONArray.getString(i2);
                if (o1.u.k0(App.c(), string)) {
                    u0.d.m0(string, false);
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void e3(boolean z2) {
        if (this.f16346k != z2) {
            this.f16346k = z2;
            u0.d.I3(144, z2 ? 1 : 0);
            this.f16340e.q(1014, this.f16346k ? 1 : 0);
            this.f16340e.e(1014);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void f3(boolean z2) {
        if (g.e.f2254a instanceof Chip) {
            if (this.f16347l != z2) {
                Log.e("AA", "===========>>>  isAutoFanCtrl : " + this.f16346k + " last isFanEnable : " + this.f16347l + " TO " + z2);
                this.f16347l = z2;
                u0.d.p0(z2 ? 1 : 0);
                this.f16340e.q(Process.VPN_UID, this.f16347l ? 1 : 0);
                this.f16340e.e(Process.VPN_UID);
            }
            ((Chip) g.e.f2254a).o(z2);
        }
    }

    public void g3(boolean z2) {
        if (this.f16339d != z2) {
            this.f16339d = z2;
            String name = AudioManager.class.getName();
            Class cls = Boolean.TYPE;
            if (o1.d0.c(name, "setAudioSwitch2iis", cls) != null) {
                o1.d0.e(AudioManager.class.getName(), a.f.f(), "setAudioSwitch2iis", new Class[]{cls}, Boolean.valueOf(!z2));
            } else {
                String name2 = AudioManager.class.getName();
                AudioManager audioManagerF = a.f.f();
                Class cls2 = Integer.TYPE;
                o1.d0.e(name2, audioManagerF, "setWiredDeviceConnectionState", new Class[]{cls2, cls2, String.class, String.class}, 8, Integer.valueOf(z2 ? 1 : 0), ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
            }
            y0.h.M();
        }
    }

    public int h3() {
        int i2 = this.f16341f;
        if (i2 == 7) {
            return 2;
        }
        return (i2 == 9 || i2 == 13 || i2 == 10 || i2 == 5) ? 12 : -1;
    }

    public int[] i3(int i2, int[] iArr) {
        int[] iArrI = this.f16340e.i(i2);
        return (iArrI != null || iArr == null) ? iArrI : iArr;
    }

    public void j3() {
        L3();
        ot.f9019a.a(this, 1);
        u0.c.f17386m.a(this.f16354s, 1);
        u0.c.f17376c.a(this.f16351p, 0);
        u0.c.f17381h.a(this.f16351p, 1);
        o1.y yVar = u0.c.f17399z;
        yVar.a(this.f16355t, 1);
        yVar.a(this.f16353r, 1);
    }

    public boolean k3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public boolean l3() {
        return this.f16339d;
    }

    public boolean m3() {
        return !g.e.i(g.e.p());
    }

    public boolean n3() {
        return Configure.Property.CLEANUP_WHEN_SLEEP.b(true);
    }

    public void o3(String str) {
        Log.e("module", "===================loadAudio type :  " + str);
        String str2 = LinkCapabilities.Role.DEFAULT;
        if (str == null || str.isEmpty() || "AUTO".equalsIgnoreCase(str)) {
            String str3 = SystemProperties.get("ro.sys.audio_ic", ProxyProperties.LOCAL_EXCL_LIST);
            Log.e("module", "===================loadAudio force set type :  " + str);
            if (str3.isEmpty()) {
                str3 = SystemProperties.get("persist.sys.syu.audio", LinkCapabilities.Role.DEFAULT);
                if ("NONE".equals(str3)) {
                    str3 = LinkCapabilities.Role.DEFAULT;
                }
            }
            if (b.b.f().c(str3)) {
                str2 = str3;
            }
            o3(str2);
            return;
        }
        if (!LinkCapabilities.Role.DEFAULT.equalsIgnoreCase(str)) {
            z.a.f18171v.f(((Chip) g.e.f2254a).t(str));
        }
        if ("32107".equalsIgnoreCase(str)) {
            y0.h.V(6);
        } else if ("7602".equalsIgnoreCase(str)) {
            y0.h.V(7);
        } else {
            if ("3702".equalsIgnoreCase(str)) {
                y0.h.V(1);
            } else if ("2313".equalsIgnoreCase(str)) {
                y0.h.V(8);
            } else if ("8288".equalsIgnoreCase(str)) {
                y0.h.V(2);
            } else if ("7729".equalsIgnoreCase(str)) {
                y0.h.V(9);
            } else if ("32107S".equalsIgnoreCase(str)) {
                y0.h.V(10);
            } else if ("7604".equalsIgnoreCase(str)) {
                y0.h.V(11);
            } else if ("du561".equalsIgnoreCase(str)) {
                y0.h.V(12);
            } else if ("du561n".equalsIgnoreCase(str)) {
                if (g.f.n(8)) {
                    y0.h.V(18);
                } else {
                    y0.h.V(17);
                }
            } else if ("7738".equalsIgnoreCase(str)) {
                if (g.f.n(14)) {
                    y0.h.V(20);
                } else if (g.f.f(11)) {
                    y0.h.V(15);
                } else {
                    y0.h.V(13);
                }
            } else if ("7738FC".equalsIgnoreCase(str)) {
                y0.h.V(14);
            } else if ("7739".equalsIgnoreCase(str)) {
                y0.h.V(16);
            } else if (LinkCapabilities.Role.DEFAULT.equalsIgnoreCase(str)) {
                y0.h.V(4);
                if (!g.f.n(14)) {
                    g3((g.f.r() || g.f.q()) ? false : true);
                }
            }
        }
        AudioDevice audioDeviceW = AudioDevice.W();
        if (audioDeviceW != null) {
            H3(audioDeviceW);
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0013 A[Catch: Exception -> 0x00d3, TryCatch #0 {Exception -> 0x00d3, blocks: (B:3:0x0002, B:5:0x0008, B:10:0x001b, B:12:0x003b, B:15:0x005c, B:17:0x0064, B:20:0x006d, B:48:0x00c1, B:50:0x00cf, B:49:0x00c9, B:23:0x0078, B:26:0x0086, B:28:0x008c, B:30:0x0094, B:32:0x009a, B:34:0x00a0, B:36:0x00a6, B:38:0x00ac, B:42:0x00b5, B:44:0x00b9, B:9:0x0013), top: B:56:0x0002 }] */
    public void p3(String str) {
        String strO;
        if (str != null) {
            try {
                if (str.isEmpty() || "AUTO".equalsIgnoreCase(str)) {
                    strO = o1.s0.o("sys.fyt.bluetooth_type", "0");
                } else {
                    strO = str;
                }
            } catch (Exception unused) {
                if (o1.s0.t(str)) {
                    return;
                }
                q3(str);
                return;
            }
        } else {
            strO = o1.s0.o("sys.fyt.bluetooth_type", "0");
        }
        int iIntValue = Integer.valueOf(strO).intValue();
        Log.e("module", "===================loadBluetooth type :  " + iIntValue);
        if (iIntValue >= 0) {
            String str2 = ProxyProperties.LOCAL_EXCL_LIST + iIntValue;
            String str3 = "INNER";
            boolean z2 = false;
            if (b.b.f().d(str2)) {
                if ("1".equalsIgnoreCase(str2) || "8".equalsIgnoreCase(str2)) {
                    h0.c.f2435g = true;
                    str3 = "RDA";
                } else if ("2".equalsIgnoreCase(str2)) {
                    str3 = "IVT";
                } else if ("3".equalsIgnoreCase(str2) || "4".equalsIgnoreCase(str2) || "5".equalsIgnoreCase(str2) || "7".equalsIgnoreCase(str2) || "6".equalsIgnoreCase(str2)) {
                    if ("4".equalsIgnoreCase(str2) || "6".equalsIgnoreCase(str2) || "7".equalsIgnoreCase(str2)) {
                        h0.c.f2435g = true;
                    } else {
                        z2 = true;
                    }
                    str3 = "RDA";
                }
                z2 = true;
            } else {
                z2 = true;
            }
            if (z2) {
                int[] iArr = y0.f.f18090z0;
                iArr[2] = 6;
                iArr[3] = 6;
            } else {
                int[] iArr2 = y0.f.f18090z0;
                iArr2[2] = 2;
                iArr2[3] = 3;
            }
            q3(str3);
        }
    }

    public void q3(String str) {
        if ("INNER".equalsIgnoreCase(str)) {
            h0.e.H(4);
            y0.e eVar = y0.f.f18034b;
            if (eVar instanceof AudioDevice) {
                ((AudioDevice) eVar).O0(true);
                return;
            }
            return;
        }
        if ("RDA".equalsIgnoreCase(str)) {
            o1.k.a().postDelayed(new f(), 3000L);
        } else if ("IVT".equalsIgnoreCase(str)) {
            o1.k.a().postDelayed(new g(), 3000L);
        } else if ("WQBT".equalsIgnoreCase(str)) {
            F3("/dev/ttyS0", 115200);
        }
    }

    public void r3(int i2) {
        if (z3(i2)) {
        }
        switch (i2) {
            case 24:
            case 67:
            case 76:
                k4.k();
                break;
            case 47:
                k4.k();
                u0.a.f17293h[13] = 24;
                int i3 = y0.f.f18031a;
                if (i3 == 1) {
                    int[] iArr = y0.b.f17952b;
                    iArr[13] = iArr[7];
                    break;
                } else if (i3 == 2) {
                    y0.d.f18015a[13] = 1;
                    y0.d.f18017c[13] = 0;
                    y0.d.f18016b[13] = 3;
                    break;
                }
                break;
            case 101:
            case 139:
            case 131173:
            case 131316:
            case 131372:
            case 196659:
            case 196852:
            case 196908:
            case 262195:
            case 262276:
            case 327924:
            case 458803:
            case 458912:
            case 458996:
            case 459164:
            case 524448:
            case 655734:
            case 786845:
            case 917748:
            case 2228678:
            case 2294214:
            case 2359750:
            case 2425187:
            case 2425286:
            case 2490723:
            case 2556259:
            case 2621795:
            case 2687331:
            case 2752867:
            case 2884030:
            case 2949566:
            case 3015102:
            case 3211365:
            case 3276901:
            case 3670067:
            case 3735603:
            case 3801139:
            case 3866675:
            case 3932614:
            case 3998150:
            case 4063606:
            case 4063687:
            case 4128819:
            case 4129142:
            case 4129223:
            case 4194756:
            case 4260292:
            case 4325828:
            case 4390963:
            case 4391364:
            case 4456900:
            case 4522436:
            case 4587972:
            case 4653508:
            case 4719047:
            case 5374407:
            case 6095245:
            case 6160781:
            case 6226317:
            case 6291853:
            case 6357389:
            case 6422925:
            case 6488438:
            case 6488461:
            case 6553974:
            case 6553997:
            case 6619533:
            case 6619589:
            case 6619590:
            case 6685046:
            case 6685069:
            case 6685125:
            case 6750582:
            case 6750605:
            case 6750661:
            case 6816141:
            case 6816197:
            case 6881654:
            case 6881732:
            case 6947190:
            case 7143758:
            case 7799236:
            case 7930308:
            case 8323366:
            case 8454438:
            case 8781936:
            case 8847654:
            case 9306564:
            case 9372100:
            case 9437636:
            case 9634248:
            case 9699784:
            case 10027069:
            case 10682823:
            case 10748359:
            case 11076036:
            case 11076038:
            case 11141572:
            case 11141574:
            case 11207108:
            case 11207110:
            case 11272646:
            case 11403716:
            case 12124614:
            case 12190150:
            case 12255686:
            case 12321222:
            case 12386758:
            case 12452294:
            case 12517830:
            case 12583366:
            case 12648902:
            case 12714438:
            case 12779974:
            case 12845510:
            case 12911046:
            case 12976582:
            case 14090692:
            case 14811588:
            case 14877124:
            case 14942660:
            case 15008196:
            case 15073732:
            case 15139268:
            case 15204804:
            case 15270340:
            case 16122311:
            case 16187847:
            case 16449989:
            case 16515525:
            case 16581061:
            case 16646583:
            case 16646597:
                if ((nt.f8639d instanceof o1.q) && !qt.u()) {
                    String strD = k4.d();
                    if (!TextUtils.isEmpty(strD)) {
                        this.f16337b = z.d.a(strD);
                        z.k.e(strD, 38400, (o1.q) nt.f8639d);
                        this.f16338c = new z.b(z.a.f18166q, z.a.f18158i, (o1.q) nt.f8639d, 38400);
                        break;
                    }
                }
                break;
            case 175:
            case 65858:
            case 65860:
            case 131394:
            case 131396:
            case 131403:
            case 131405:
                int i4 = y0.f.f18031a;
                if (i4 == 1) {
                    int[] iArr2 = y0.b.f17954d;
                    System.arraycopy(iArr2, 1, this.f16336a, 0, 36);
                    System.arraycopy(new int[]{194, 191, 188, 185, 182, 179, 176, 173, 170, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141}, 0, iArr2, 1, 36);
                } else if (i4 == 2) {
                    int[] iArr3 = y0.d.f18026l;
                    System.arraycopy(iArr3, 1, this.f16336a, 0, 36);
                    System.arraycopy(new int[]{13, 22, 48, 60, 68, 73, 78, 83, 88, 93, 98, 103, 108, 114, 119, 124, 129, 134, 139, 143, 148, 152, 156, 160, 164, 170, 174, 178, 182, 185, 188, 191, 193, 195, 197, 198}, 0, iArr3, 1, 36);
                    y0.d.q();
                }
                y0.h.M();
                break;
            case 317:
            case 348:
            case 442:
            case 65884:
            case 196925:
            case 262461:
                int i5 = e1.a.f1656a;
                if (i5 == 2) {
                    u0.b.t4[8] = 23;
                } else if (i5 == 5) {
                    u0.b.t4[8] = 2;
                } else if (i5 == 0) {
                    u0.b.t4[8] = 3;
                }
                if (y0.f.f18031a == 1) {
                    y0.h.V(5);
                }
                break;
            case 345:
            case 65826:
            case 65881:
            case 131417:
            case 196729:
            case 196953:
            case 262265:
            case 262465:
            case 262489:
            case 327801:
            case 328025:
            case 393337:
            case 458873:
            case 524409:
            case 524633:
            case 589945:
            case 655481:
                if ((nt.f8639d instanceof o1.q) && !qt.u()) {
                    String strD2 = k4.d();
                    if (!TextUtils.isEmpty(strD2)) {
                        this.f16337b = z.d.a(strD2);
                        z.k.e(strD2, 38400, (o1.q) nt.f8639d);
                        this.f16338c = new z.b(z.a.f18166q, z.a.f18158i, (o1.q) nt.f8639d, 38400);
                        break;
                    }
                }
                break;
            case 418:
                AudioDevice audioDeviceW = AudioDevice.W();
                if (audioDeviceW != null && (audioDeviceW instanceof C32107)) {
                    C32107.z1 = 13;
                    C32107.A1 = 1;
                    audioDeviceW.l(y0.f.E);
                    break;
                }
                break;
            case 65853:
            case 131389:
            case 131420:
            case 131497:
            case 196956:
            case 262492:
            case 328028:
            case 393533:
            case 459069:
            case 459100:
            case 524605:
            case 524636:
            case 590172:
            case 655708:
            case 721244:
            case 786780:
                u0.b.g4 = 0;
                int i6 = e1.a.f1656a;
                if (i6 == 2) {
                    u0.b.t4[8] = 25;
                } else if (i6 == 0) {
                    u0.b.t4[8] = 23;
                } else if (i6 == 5) {
                    u0.b.t4[8] = 2;
                }
                if (y0.f.f18031a == 1) {
                    y0.h.V(5);
                }
                break;
            case 197052:
            case 262588:
            case 393662:
            case 721340:
            case 852412:
            case 917948:
            case 917950:
            case 983484:
            case 1049020:
            case 1114556:
            case 1180092:
            case 1245628:
            case 1311164:
            case 1704382:
            case 1900988:
            case 3080636:
            case 3277244:
            case 3408318:
            case 3473854:
                int[] iArr4 = u0.b.h3;
                iArr4[4] = -1;
                iArr4[5] = -1;
                iArr4[2] = -1;
                c.g gVarG = c.g.g(App.c());
                gVarG.b();
                String str = a.b.f22j;
                boolean zQ = o1.u.Q();
                if (zQ) {
                    gVarG.a(new c.g.b(0, 1, str, a.b.f28p));
                } else {
                    gVarG.a(new c.g.b(0, 1, a.b.f27o, a.b.f28p));
                }
                if (zQ) {
                    gVarG.a(new c.g.b(1, 3, str, "com.syu.btav"));
                    gVarG.a(new c.g.b(2, 8, str, a.b.f38z));
                } else {
                    gVarG.a(new c.g.b(1, 3, a.b.f23k, "com.syu.bt.act.ActBtAvStart", a.b.f24l));
                    gVarG.a(new c.g.b(2, 8, a.b.f37y, a.b.f38z));
                }
                gVarG.a(new c.g.b(3, 9, a.b.A, a.b.B));
                break;
            case 852424:
            case 917960:
            case 1180096:
            case 1245632:
            case 1245639:
            case 1311168:
            case 1311175:
            case 1376704:
            case 1376711:
            case 1442247:
            case 1704384:
            case 1769920:
            case 2359744:
            case 2425280:
            case 2687310:
            case 2752846:
            case 2818382:
            case 2883918:
            case 2949568:
            case 3015104:
            case 3146176:
            case 3211712:
            case 3342784:
            case 3801543:
            case 3867079:
            case 3932615:
            case 3998151:
            case 7209416:
            case 7274952:
            case 7471438:
            case 7536974:
            case 7602510:
            case 7668046:
            case 7864775:
            case 7930311:
            case 7995847:
            case 8061383:
            case 8061384:
            case 8126920:
            case 8192456:
            case 8257992:
            case 9241032:
            case 9306568:
            case 9372104:
            case 9437640:
            case 9568712:
            case 12779975:
            case 12845511:
            case 14352839:
                if ((nt.f8639d instanceof o1.q) && !qt.u()) {
                    String strD3 = k4.d();
                    if (!TextUtils.isEmpty(strD3)) {
                        this.f16337b = z.d.a(strD3);
                        z.k.e(strD3, 19200, (o1.q) nt.f8639d);
                        this.f16338c = new z.b(z.a.f18166q, z.a.f18158i, (o1.q) nt.f8639d, 19200);
                        break;
                    }
                }
                break;
            case 1442231:
            case 3801527:
                if (e1.a.f1656a == 2) {
                    u0.b.t4[8] = 2;
                }
                break;
            case 3014954:
            case 3080490:
            case 3932458:
            case 3997994:
            case 4194602:
            case 4784426:
            case 4849962:
            case 5112263:
            case 5177799:
            case 5243335:
            case 5308871:
            case 5505479:
            case 10027306:
            case 10092842:
            case 10158378:
            case 10223914:
                if ((nt.f8639d instanceof o1.q) && !qt.u()) {
                    String strD4 = k4.d();
                    if (!TextUtils.isEmpty(strD4)) {
                        this.f16337b = z.d.a(strD4);
                        z.k.e(strD4, 115200, (o1.q) nt.f8639d);
                        this.f16338c = new z.b(z.a.f18166q, z.a.f18158i, (o1.q) nt.f8639d, 115200);
                        break;
                    }
                }
                break;
            case 3146026:
                c.e.d().i(616, new n());
                c.e.d().i(617, new o());
                break;
            case 8847799:
                if (nt.f8639d instanceof o1.q) {
                    String strD5 = k4.d();
                    if (!TextUtils.isEmpty(strD5)) {
                        this.f16337b = z.d.a(strD5);
                        z.k.e(strD5, 19200, (o1.q) nt.f8639d);
                        this.f16338c = new z.b(z.a.f18166q, z.a.f18158i, (o1.q) nt.f8639d, 19200);
                        break;
                    }
                }
                break;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        z.b bVar = this.f16338c;
        if (bVar != null) {
            bVar.a();
            this.f16338c = null;
        }
        z.b bVar2 = this.f16337b;
        if (bVar2 != null) {
            bVar2.b();
            this.f16337b = null;
        }
        G3(nt.f8635b);
        r3(nt.f8633a);
    }

    public void s3(String str) {
        Log.e("module", "===================loadDvd type :  " + str);
        if (str == null || str.isEmpty() || "AUTO".equalsIgnoreCase(str)) {
            s3(SystemProperties.get("sys.syu.dvd_type", WifiEnterpriseConfig.EMPTY_VALUE));
            return;
        }
        boolean z2 = g.f.f(7) && SystemProperties.get("sys.fyt.serialdebug", Camera.Parameters.FLASH_MODE_ON).equalsIgnoreCase(Camera.Parameters.FLASH_MODE_ON);
        if (!str.isEmpty() && !str.equals(WifiEnterpriseConfig.EMPTY_VALUE) && z2) {
            o1.k.a().post(new h());
            return;
        }
        if ("8202".equalsIgnoreCase(str)) {
            z.k.f("/dev/ttyS1");
        } else if ("8288".equalsIgnoreCase(str)) {
            z.k.g("/dev/ttyS1");
        } else {
            o0.g.y(0);
        }
    }

    public void t3() {
        int iH = this.f16340e.h(Process.VPN_UID, this.f16348m[1]);
        this.f16346k = this.f16340e.h(1014, this.f16348m[0]) == 1;
        this.f16345j = i3(1015, this.f16345j);
        Log.e("AA", "===========>>> loadFanController isAutoFanCtrl : " + this.f16346k + " last fanEnable : " + iH);
        f3(iH == 1);
        u0.d.I3(144, this.f16346k ? 1 : 0);
        u0.d.I3(145, this.f16345j);
        k4.a(this.f16356u);
    }

    public void u3(String str) {
        Log.e("module", "===================loadImage type :  " + str);
        if (str == null || str.isEmpty()) {
            e1.b.c(0);
            return;
        }
        if ("2850".equalsIgnoreCase(str)) {
            e1.b.c(8);
        } else if ("6911".equalsIgnoreCase(str)) {
            e1.b.c(9);
        } else if ("V2854".equalsIgnoreCase(str)) {
            e1.b.c(10);
        } else if ("2815".equalsIgnoreCase(str)) {
            e1.b.c(12);
        } else if ("PR2100".equalsIgnoreCase(str)) {
            e1.b.c(11);
        } else if ("2860".equalsIgnoreCase(str)) {
            e1.b.c(13);
        }
        e1.c cVarN = e1.c.n();
        if (cVarN != null) {
            I3(cVarN);
        }
    }

    public void v3(String str) {
        Log.e("module", "===================loadRadio type :  " + str + " externalfm: " + SystemProperties.getInt("persist.fyt.externalfm", 0));
        if (str == null || str.isEmpty() || "AUTO".equalsIgnoreCase(str)) {
            if (SystemProperties.getInt("persist.fyt.externalfm", 0) == 1) {
                w0.f.l(4);
                return;
            } else {
                w0.f.l(3);
                return;
            }
        }
        if ("INNER".equalsIgnoreCase(str)) {
            w0.f.l(3);
        } else if ("OUTER".equalsIgnoreCase(str)) {
            w0.f.l(4);
        }
    }

    public void w3(String str) throws Throwable {
        String strE = q1.a.e(App.c().getResources().openRawResource(R.raw.services), ProxyProperties.LOCAL_EXCL_LIST);
        if (!o1.s0.t(strE)) {
            P3(strE);
        }
        if (o1.s0.t(str)) {
            return;
        }
        P3(str);
    }

    @Override // f1.o.c
    public void x0(f1.q qVar) {
        if (qVar != null && qVar.G == 8) {
            if (g.e.j(70)) {
                qVar.G(5, 3);
                if (Configure.Property.S869_AUX_IN_BACK.b(false)) {
                    qVar.G(2, 1);
                }
            }
            int i2 = qVar.f2144h;
            if (i2 == 2) {
                qVar.G(16, 3);
            } else if (i2 == 1) {
                qVar.G(15, 1);
            }
        }
    }

    public void x3() {
        g.g gVar = g.e.f2254a;
        if (gVar instanceof Chip) {
            ((Chip) gVar).k(this);
        }
        Q2();
        this.f16341f = g.e.a();
        Log.e("module", "================>>> " + this + " chip : " + this.f16341f);
        int i2 = this.f16341f;
        if (i2 != 7) {
            if (i2 == 5) {
                p3(ProxyProperties.LOCAL_EXCL_LIST);
            } else {
                z.k.d();
            }
        }
        switch (this.f16341f) {
            case 1:
                T2();
                break;
            case 3:
                P2();
                break;
            case 4:
                b3();
                break;
            case 5:
                a3();
                break;
            case 6:
                Z2();
                break;
            case 7:
                X2();
                break;
            case 8:
                S2();
                break;
            case 9:
                U2();
                break;
            case 10:
                Y2();
                break;
            case 11:
                W2();
                break;
            case 12:
                O2();
                break;
            case 13:
                V2();
                break;
            case 14:
                R2();
                break;
        }
        if ((g.e.f2254a instanceof Chip) && (y0.f.f18034b instanceof AudioDevice)) {
            ((Chip) g.e.f2254a).j((AudioDevice) y0.f.f18034b);
        }
        if (SystemProperties.getBoolean("sys.syu.modle_ui_handle", false)) {
            c.f.b().h(9, new b());
        }
        if (o1.u.k0(App.c(), "com.tencent.wecarspeech")) {
            e.f.l();
        }
    }

    public boolean y3(int i2, int i3) {
        return false;
    }

    public boolean z3(int i2) {
        return false;
    }
}

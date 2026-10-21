package k0;

import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.util.Log;
import com.syu.jni.ToolsJni;
import java.nio.charset.Charset;
import java.util.Locale;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class ll extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7740b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7746e;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static e.e.a f7729q0 = new e.e.a(0, 0, 0);

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static int f7730r0 = 255;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static int f7731s0 = 0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static int f7732t0 = 1;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static int f7733u0 = 0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static int f7734v0 = 0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static int f7735w0 = 0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static int f7736x0 = 0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static int f7737y0 = 0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public static int f7738z0 = 0;
    public static int A0 = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7742c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7744d = {new int[]{1, 34}, new int[]{2, 35}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 1}, new int[]{6, 38}, new int[]{17, 4}, new int[]{18, 3}, new int[]{19, 2}, new int[]{20, 18}, new int[]{21, 5}, new int[]{22, 6}, new int[]{23, 29}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7748f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f7750g = {new int[]{1, 25}, new int[]{2, 3}, new int[]{3, 4}, new int[]{8, 1}, new int[]{9, 18}, new int[]{10, 21}, new int[]{11, 54}, new int[]{12, -1}, new int[]{13, 38}, new int[]{14, 18}, new int[]{15, 55}, new int[]{17, 34}, new int[]{18, 35}, new int[]{19, 32}, new int[]{20, 33}, new int[]{33, 9}, new int[]{34, 6}, new int[]{49, 29}, new int[]{50, 40}, new int[]{51, 41}, new int[]{52, 42}, new int[]{53, 43}, new int[]{54, 44}, new int[]{55, 45}, new int[]{56, 46}, new int[]{57, 47}, new int[]{58, 3}, new int[]{59, 4}, new int[]{60, -1}, new int[]{61, -1}, new int[]{129, 3}, new int[]{130, 4}, new int[]{131, 30}, new int[]{132, 31}, new int[]{144, 18}, new int[]{145, 26}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7752h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7754i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7756j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7758k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public o1.p f7760l = new k();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f7762m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f7764n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f7766o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f7768p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f7770q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f7771r = new l();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f7772s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f7773t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f7774u = new m();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f7775v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f7776w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f7777x = new n();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f7778y = new o();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f7779z = 0;
    public Runnable A = new p();
    public Runnable B = new q();
    public boolean C = false;
    public Runnable D = new r();
    public Runnable E = new s();
    public Runnable F = new a();
    public int G = -1;
    public boolean H = false;
    public int I = 0;
    public int J = 0;
    public boolean K = false;
    public int L = 0;
    public int M = 0;
    public int N = 0;
    public int O = 0;
    public int P = 255;
    public int Q = 254;
    public int R = 0;
    public boolean S = false;
    public final int T = 1;
    public final int U = 2;
    public final int V = 3;
    public final int W = 4;
    public final int X = 6;
    public final int Y = 8;
    public final int Z = 9;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final int f7739a0 = 10;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final int f7741b0 = 12;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public o1.g0 f7743c0 = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f7745d0 = 0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f7747e0 = 0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f7749f0 = 0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public int f7751g0 = 0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public Runnable f7753h0 = new f();

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public Runnable f7755i0 = new g();

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f7757j0 = -1;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public Runnable f7759k0 = new h();

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public boolean f7761l0 = false;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public byte f7763m0 = 5;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public Runnable f7765n0 = new i();

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public Runnable f7767o0 = new j();

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public int f7769p0 = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().s("DataMain.sBlackScreen  " + u0.b.f17332j);
            int i2 = u0.b.f17332j;
            if (i2 == 1 && ll.this.R == 1) {
                z.k.s(227, 152, 4, 158, 0, 0, 0);
            } else if (i2 == 0 && ll.this.R == 0) {
                z.k.s(227, 152, 4, 158, 1, 0, 0);
            }
        }
    }

    public class b implements o1.o {
        public b() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 == 0) {
                z.k.s(227, 152, 4, 192, 1, 1, 0);
            } else if (i2 == 1) {
                z.k.s(227, 152, 4, 192, 1, 0, 0);
            }
            return true;
        }
    }

    public class c implements o1.o {
        public c() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 == 0) {
                z.k.s(227, 152, 4, 192, 2, 1, 0);
            } else if (i2 == 1) {
                z.k.s(227, 152, 4, 192, 2, 0, 0);
            }
            return true;
        }
    }

    public class d implements o1.o {
        public d() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 == 0) {
                z.k.s(227, 152, 4, 192, 3, 1, 0);
            } else if (i2 == 1) {
                z.k.s(227, 152, 4, 192, 3, 0, 0);
            }
            return true;
        }
    }

    public class e implements o1.o {
        public e() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 == 0) {
                z.k.s(227, 152, 4, 192, 4, 1, 0);
            } else if (i2 == 1) {
                z.k.s(227, 152, 4, 192, 4, 0, 0);
            }
            return true;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().t(LogType.CANBUS, "DataMain.sMcuOn =  " + u0.b.f17320f + "////////DataMain.sAccOn =  " + u0.b.f17306a0);
            z.k.s(227, 144, 2, 18, 0);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ll llVar = ll.this;
            int i2 = llVar.f7757j0;
            if (i2 >= 0) {
                llVar.f7757j0 = i2 - 1;
            } else if (llVar.P == 0 && y0.f.Q0 == 1) {
                llVar.b3(true);
            }
            if (nt.f8637c != 6) {
                ll llVar2 = ll.this;
                if (llVar2.J == 0 && llVar2.L == 1) {
                    o1.x.C(nt.f8643f, 125, new int[]{0}, null, null);
                    return;
                }
                return;
            }
            if (ll.this.J == 0 && u0.b.f17347o == 1) {
                qt.a(0);
            }
            if (o1.u.S(a.b.Q) && ll.this.J == 0) {
                l0.b0.l0(5, 0);
                l0.b0.l0(5, 1);
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ll llVar = ll.this;
            llVar.f7761l0 = true;
            llVar.f7763m0 = (byte) 5;
            l0.b0.b(llVar.f7767o0);
            String str = SystemProperties.get("ro.fyt.platform", ProxyProperties.LOCAL_EXCL_LIST);
            if ("6521".equals(str)) {
                ToolsJni.cmd_31_fan_en(0);
                return;
            }
            if ("6316".equals(str) || "6312".equals(str)) {
                ToolsJni.cmd_251_Normal_Io_Set(13, 0);
            } else if ("6315".equals(str) || "6318".equals(str) || "6319".equals(str)) {
                ToolsJni.cmd_251_Normal_Io_Set(14, 0);
            } else {
                ToolsJni.cmd_251_Normal_Io_Set(5, 0);
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        /* JADX WARN: Code duplicated, block: B:36:0x0167  */
        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 1) {
                ll llVar = ll.this;
                if (llVar.f7763m0 > 0) {
                    if (nt.f8637c == 5 && llVar.a3()) {
                        ll llVar2 = ll.this;
                        llVar2.v3(llVar2.f7743c0.b(12, 0));
                        ll llVar3 = ll.this;
                        llVar3.r3(llVar3.f7743c0.b(6, 0));
                        if (ll.this.f7743c0.b(8, 0) != 0 && SystemProperties.getInt("persist.sys.width", 0) != ll.this.f7743c0.b(8, 0)) {
                            SystemProperties.set("persist.sys.width", String.format(Locale.US, "%d", Integer.valueOf(ll.this.f7743c0.b(8, 0))));
                        }
                        ll llVar4 = ll.this;
                        llVar4.u3(llVar4.f7743c0.b(8, 0));
                        if (ll.this.f7743c0.b(9, 0) != 0 && SystemProperties.getInt("persist.sys.height", 0) != ll.this.f7743c0.b(9, 0)) {
                            SystemProperties.set("persist.sys.height", String.format(Locale.US, "%d", Integer.valueOf(ll.this.f7743c0.b(9, 0))));
                        }
                        ll llVar5 = ll.this;
                        llVar5.t3(llVar5.f7743c0.b(9, 0));
                        ll llVar6 = ll.this;
                        llVar6.s3(llVar6.f7743c0.b(10, 0));
                    }
                    if (ll.this.f7763m0 == 5) {
                        z.k.s(227, 144, 2, 18, 0);
                        z.k.s(227, 144, 2, 46, 5);
                    }
                    if (ll.this.f7763m0 == 4) {
                        z.k.s(227, 144, 2, 24, 0);
                        z.k.s(227, 144, 2, 18, 0);
                        z.k.s(227, 144, 2, 46, 16);
                    }
                    if (ll.this.f7763m0 == 3) {
                        z.k.s(227, 144, 2, 32, 0);
                        z.k.s(227, 144, 2, 18, 0);
                        z.k.s(227, 144, 2, 46, 17);
                    }
                    if (ll.this.f7763m0 == 2) {
                        z.k.s(227, 144, 2, 48, 0);
                        z.k.s(227, 144, 2, 18, 0);
                    }
                    if (ll.this.f7763m0 == 1) {
                        z.k.s(227, 144, 2, 46, 2);
                        z.k.s(227, 144, 2, 46, 3);
                        z.k.s(227, 144, 2, 46, 4);
                        z.k.s(227, 144, 2, 46, 151);
                    }
                } else {
                    ll llVar7 = ll.this;
                    llVar7.f7756j = -1;
                    l0.b0.p0(llVar7.f7767o0);
                }
            } else {
                ll llVar8 = ll.this;
                llVar8.f7756j = -1;
                l0.b0.p0(llVar8.f7767o0);
            }
            ll llVar9 = ll.this;
            llVar9.f7763m0 = (byte) (llVar9.f7763m0 - 1);
        }
    }

    public class k implements o1.p {
        public k() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            e.e.a unused = ll.f7729q0 = (e.e.a) obj;
            if (ll.this.J != 0) {
                if (ll.f7729q0.f1628a == 0) {
                    z.k.s(227, 151, 5, 1, (ll.f7729q0.f1629b >> 8) & 255, ll.f7729q0.f1629b & 255, (ll.f7729q0.f1630c >> 8) & 255, ll.f7729q0.f1630c & 255);
                } else if (ll.f7729q0.f1628a == 1) {
                    z.k.s(227, 151, 5, 0, (ll.f7729q0.f1629b >> 8) & 255, ll.f7729q0.f1629b & 255, (ll.f7729q0.f1630c >> 8) & 255, ll.f7729q0.f1630c & 255);
                }
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().t(LogType.CANBUS, "DataSound.sNaviSoundOn =  " + y0.f.Q0);
            ll llVar = ll.this;
            int i2 = llVar.f7770q;
            int i3 = y0.f.Q0;
            if (i2 != i3 && i3 == 1) {
                llVar.f7757j0 = 9;
            }
            llVar.f7770q = i3;
            if (llVar.P == 0 && i3 == 0 && u0.b.j4 == 0) {
                llVar.b3(false);
            }
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().t(LogType.CANBUS, "sVaAudioOccupeid =  " + u0.b.j4);
            ll llVar = ll.this;
            int i2 = llVar.f7772s;
            int i3 = u0.b.j4;
            if (i2 != i3) {
                llVar.f7772s = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (llVar.P == 0) {
                    int i5 = u0.b.j4;
                    if (i5 != 0) {
                        if (i5 == 1) {
                            llVar.b3(true);
                        }
                    } else if (y0.f.Q0 == 0) {
                        llVar.b3(false);
                    }
                }
                int i6 = u0.b.j4;
                if (i6 == 0) {
                    ll llVar2 = ll.this;
                    if (llVar2.f7773t && u0.b.D == 13) {
                        z.k.s(227, 152, 4, 162, 1, llVar2.Q, 0);
                    }
                    ll.this.f7773t = false;
                    return;
                }
                if (i6 == 1 && o1.u.S(a.b.Q)) {
                    z.k.s(227, 151, 5, 1, 0, 10, 0, 10);
                    z.k.s(227, 151, 5, 0, 0, 10, 0, 10);
                    ll.this.f7773t = true;
                }
            }
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().t(LogType.CANBUS, "appId_prev =  " + ll.f7730r0 + "////////DataMain.sAppId =  " + u0.b.D + "////////caraudio =  " + ll.this.P);
            int i2 = ll.f7730r0;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 0 && i3 != 13 && i3 != 2) {
                    ll llVar = ll.this;
                    if (llVar.P == 0) {
                        int i4 = nt.f8637c;
                        if (i4 == 1 || i4 == 3 || i4 == 10) {
                            llVar.q3(true);
                        } else {
                            z.k.s(227, 152, 4, 0, ll.f7731s0, 0, 0);
                        }
                    }
                    ll llVar2 = ll.this;
                    if (llVar2.f7775v) {
                        llVar2.b3(false);
                    }
                }
                ll.f7730r0 = u0.b.D;
            }
        }
    }

    public class o implements Runnable {
        public o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ll.this.B);
        }
    }

    public class p implements Runnable {
        public p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ll llVar = ll.this;
            int i2 = llVar.f7779z + 1;
            llVar.f7779z = i2;
            if (i2 < 30 || llVar.P != 0) {
                return;
            }
            llVar.q3(false);
        }
    }

    public class q implements Runnable {
        public q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ll llVar = ll.this;
            if (llVar.S) {
                if (llVar.Q == 255) {
                    o1.x.x(nt.f8643f, 1038, 0);
                } else {
                    o1.x.x(nt.f8643f, 1038, 1);
                }
            }
        }
    }

    public class r implements Runnable {
        public r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.E;
            if (i2 == 3 || i2 == 4 || i2 == 5) {
                if (!o1.u.S(a.b.Q)) {
                    ll llVar = ll.this;
                    if (llVar.J != 1) {
                        if (llVar.P == 0) {
                            llVar.b3(true);
                            return;
                        }
                        return;
                    }
                }
                z.k.s(227, 151, 5, 1, 0, 10, 0, 10);
                z.k.s(227, 151, 5, 0, 0, 10, 0, 10);
                ll.this.b3(true);
                ll.this.C = true;
                return;
            }
            ll llVar2 = ll.this;
            if (llVar2.C) {
                if (!o1.u.S(a.b.Q)) {
                    o1.u.f(a.b.R);
                    ll.this.b3(false);
                }
                ll.this.C = false;
            } else if (llVar2.P == 0) {
                llVar2.b3(false);
            }
            ll llVar3 = ll.this;
            if (llVar3.f7745d0 == 1 && nt.f8645g[133] == 0 && llVar3.J == 7 && y0.f.f18055i != 1 && llVar3.f7747e0 == 1) {
                l0.b0.l0(12, 0);
                l0.b0.l0(12, 1);
            }
        }
    }

    public class s implements Runnable {
        public s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.E;
            if (i2 == 3 || i2 == 4 || i2 == 5) {
                z.k.s(227, 152, 4, 159, 1, 0, 0);
            } else {
                z.k.s(227, 152, 4, 159, 0, 0, 0);
            }
        }
    }

    @Override // k0.lt
    public int[] K2() {
        return new int[]{8, 8};
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        if (a3()) {
            return;
        }
        y0.f.C0 = 30;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr != null && iArr[0] == 69) {
            o1.x.C(nt.f8643f, 132, new int[]{1}, null, null);
        }
    }

    @Override // k0.lt
    public void S2() {
        if (!a3()) {
            e.e.f1627e.a(this.f7760l);
        }
        o1.y yVar = u0.c.f17386m;
        yVar.a(this.f7765n0, 1);
        yVar.a(this.f7778y, 1);
        y0.g.f18110t.a(this.f7771r, 1);
        u0.c.G.a(this.f7774u, 1);
        o1.y yVar2 = h0.d.f2462a;
        yVar2.a(this.D, 1);
        u0.c.f17374a.a(this.f7777x, 1);
        u0.c.f17387n.a(this.F, 1);
        yVar2.a(this.E, 1);
        l0.b0.a(this.f7759k0);
        int i2 = SystemProperties.getInt("persist.sys.syu.dsp", 0);
        this.f7745d0 = i2;
        if (i2 == 0) {
            this.f7886a.f8307b = 1;
            n0.j4.f16466d.g3(true);
            y0.h.V(4);
            if (a.f.v() != null) {
                a.f.v().a(true);
            }
        }
        this.f7743c0.a();
        int i3 = nt.f8637c;
        if (i3 == 1 || i3 == 3 || i3 == 10) {
            p3(this.f7743c0.b(1, 2));
            x3(this.f7743c0.b(2, 1));
            y3(this.f7743c0.b(3, 0));
            w3(this.f7743c0.b(4, 0));
        } else {
            p3(this.f7743c0.b(1, 0));
        }
        int i4 = SystemProperties.getInt("ro.build.fytmanufacturer", 0);
        e.c.f1600f = null;
        e.c.f1601g = null;
        e.c.f1599e = null;
        e.c.f1603i = null;
        int i5 = nt.f8637c;
        if (i5 == 6 && i4 == 95) {
            this.f7886a.f8306a = null;
            l0.b0.b(this.f7755i0);
        } else if (i5 == 10) {
            e.c.f1600f = new b();
            e.c.f1601g = new c();
            e.c.f1599e = new d();
            e.c.f1603i = new e();
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        } else {
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        }
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        int i6 = nt.f8637c;
        if (i6 == 1 || i6 == 3 || i6 == 10) {
            mtVar.f8311f = 1;
        } else {
            mtVar.f8311f = 0;
        }
        mtVar.f8312g = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8317l = 1;
        mtVar.f8318m = new int[]{69};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2;
        int[][] iArr;
        int[][] iArr2;
        byte b3 = bArr[i2];
        if (b3 == 18) {
            int i4 = i2 + 2;
            qt.y0(98, (bArr[i4] >> 6) & 1);
            qt.y0(99, (bArr[i4] >> 5) & 1);
            if (a3() && u0.b.P == 0) {
                if (((bArr[i4] >> 6) & 1) == 1 || ((bArr[i4] >> 5) & 1) == 1) {
                    u0.d.d1(1);
                } else {
                    u0.d.d1(0);
                }
            }
            qt.y0(100, (bArr[i4] >> 2) & 1);
            qt.y0(101, (bArr[i4] >> 1) & 1);
            int i5 = (bArr[i4] >> 1) & 1;
            int i6 = (bArr[i4] >> 2) & 1;
            int[] iArr3 = nt.f8645g;
            if ((iArr3[122] == 1 && iArr3[119] == 2) || a3()) {
                boolean z2 = i5 == 0 && i6 == 1;
                boolean z3 = i5 == 1 && i6 == 0;
                int i7 = (i5 == 1 && i6 == 1) ? 1 : 0;
                l0.c0.f13026t = 0;
                l0.c0.f13024r = 0;
                l0.c0.f13028v = 0;
                if (z2) {
                    l0.c0.f13026t = 20;
                }
                if (z3) {
                    l0.c0.f13024r = 20;
                }
                if (i7 != 0) {
                    l0.c0.f13028v = 20;
                }
                if (qt.k0()) {
                    u0.i.l3().g4(4096, z2);
                    u0.i.l3().g4(8192, z3);
                    u0.d.I3(139, i7);
                }
            }
            qt.y0(131, bArr[i2 + 3] & 255);
            int i8 = i2 + 4;
            qt.y0(102, (bArr[i8] >> 2) & 1);
            if (a3()) {
                if (this.N != ((bArr[i8] >> 7) & 1)) {
                    int i9 = (bArr[i8] >> 7) & 1;
                    this.N = i9;
                    if (i9 == 0) {
                        if (o1.u.a0()) {
                            SystemProperties.set("persist.lesc.carui.accstate", "true");
                            l0.b0.l0(5, 0);
                            l0.b0.l0(5, 1);
                        }
                    } else if (i9 == 1 && SystemProperties.getBoolean("persist.lesc.carui.accstate", false) && !SystemProperties.getBoolean("sys.lsec.boot_ignore_carui", false)) {
                        if (!o1.u.a0()) {
                            o1.u.z();
                        }
                        SystemProperties.set("persist.lesc.carui.accstate", "false");
                    }
                }
                if (this.M != ((bArr[i8] >> 6) & 1)) {
                    int i10 = (bArr[i8] >> 6) & 1;
                    this.M = i10;
                    if (u0.b.f17357r0 == 0) {
                        if (i10 == 1) {
                            if (!o1.u.a0()) {
                                SystemProperties.set("persist.lesc.video.ignore", "true");
                                a.i.a0(200L);
                                this.K = true;
                                o1.u.z();
                            }
                            float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                            this.O = y0.f.f18037c;
                            y0.h.t0((int) f2);
                        } else {
                            y0.h.t0(this.O);
                            if (this.K && o1.u.a0()) {
                                a.i.a0(100L);
                                o1.u.k();
                                a.i.a0(350L);
                                SystemProperties.set("persist.lesc.video.ignore", "false");
                            }
                            this.K = false;
                        }
                    } else if (qt.k0()) {
                        if (this.M == 1) {
                            u0.i.l3().g4(131072, true);
                            float f3 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                            this.O = y0.f.f18037c;
                            y0.h.t0((int) f3);
                        } else {
                            u0.i.l3().g4(131072, false);
                            y0.h.t0(this.O);
                        }
                    } else if (this.M == 1) {
                        qt.a(1);
                    } else {
                        qt.a(0);
                    }
                }
            }
            int i11 = (bArr[i8] >> 3) & 1;
            this.f7756j = i11;
            if (i11 == 1) {
                if (((bArr[i8] >> 2) & 1) == 0) {
                    qt.y0(164, 1);
                    o1.x.C(nt.f8643f, 1049, new int[]{10, 0}, null, null);
                } else {
                    qt.y0(164, 2);
                    o1.x.C(nt.f8643f, 1049, new int[]{10, 1}, null, null);
                }
            }
            qt.y0(104, (bArr[i8] >> 0) & 1);
            qt.y0(103, (bArr[i8] >> 1) & 1);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                int i12 = i2 + 5;
                qt.y0(1, (bArr[i12] >> 6) & 1);
                qt.y0(2, (bArr[i12] >> 7) & 1);
            } else {
                int i13 = i2 + 5;
                qt.y0(1, (bArr[i13] >> 7) & 1);
                qt.y0(2, (bArr[i13] >> 6) & 1);
            }
            int i14 = i2 + 5;
            qt.y0(3, (bArr[i14] >> 5) & 1);
            qt.y0(4, (bArr[i14] >> 4) & 1);
            qt.y0(5, (bArr[i14] >> 3) & 1);
            int i15 = i2 + 7;
            qt.y0(123, bArr[i15] & 255);
            int i16 = bArr[i15] & 255;
            if (i16 == 0) {
                u0.d.A3(0);
                return;
            }
            u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((i16 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i16 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
        if (b3 == 24) {
            qt.y0(105, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            int i17 = i2 + 4;
            qt.y0(106, bArr[i17] & 255);
            int iK = a.i.k("persist.fyt.oil_warning_value", 10);
            if (this.f7756j == 1) {
                if (bArr[i17] >= iK || bArr[i17] <= 0) {
                    qt.y0(163, 0);
                    o1.x.C(nt.f8643f, 1049, new int[]{14, 0}, null, null);
                } else {
                    qt.y0(163, 1);
                    o1.x.C(nt.f8643f, 1049, new int[]{14, 1}, null, null);
                }
            }
            qt.y0(107, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(108, ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
            int i18 = i2 + 7;
            qt.j(bArr[i18] & 127, 0, (bArr[i18] >> 7) & 1, 50);
            return;
        }
        if (b3 == 36) {
            int i19 = bArr[i2 + 2] & 255;
            int i20 = i2 + 3;
            int i21 = bArr[i20] & 255;
            int i22 = i2 + 4;
            int i23 = bArr[i22] & 255;
            int i24 = bArr[i2 + 5] & 255;
            int i25 = bArr[i2 + 6] & 255;
            int i26 = bArr[i2 + 7] & 255;
            qt.y0(80, i19 & 255);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i21 = bArr[i22] & 255;
                i23 = bArr[i20] & 255;
            }
            int i27 = i21 & 255;
            if (i27 == 0) {
                qt.y0(27, -2);
            } else if (i27 == 254) {
                qt.y0(27, -1);
            } else if (i27 != 255) {
                qt.y0(27, i27);
            } else {
                qt.y0(27, -3);
            }
            int i28 = i23 & 255;
            if (i28 == 0) {
                qt.y0(28, -2);
            } else if (i28 == 254) {
                qt.y0(28, -1);
            } else if (i28 != 255) {
                qt.y0(28, i28);
            } else {
                qt.y0(28, -3);
            }
            qt.y0(49, (i24 >> 7) & 1);
            qt.y0(20, (i24 >> 6) & 1);
            qt.y0(19, (i24 >> 5) & 1);
            int i29 = i24 >> 4;
            qt.y0(18, i29 & 1);
            qt.y0(77, i29 & 15);
            qt.y0(50, (i24 >> 3) & 1);
            qt.y0(24, (i24 >> 2) & 1);
            qt.y0(23, (i24 >> 1) & 1);
            int i30 = i24 >> 0;
            qt.y0(22, i30 & 1);
            qt.y0(87, i30 & 15);
            if (nt.f8637c == 8) {
                qt.y0(21, 255 & i25);
            } else {
                qt.y0(21, (i25 >> 4) & 15);
                qt.y0(25, (i25 >> 0) & 15);
            }
            qt.y0(12, (i26 >> 7) & 1);
            qt.y0(13, (i26 >> 6) & 1);
            qt.y0(11, (i26 >> 5) & 1);
            qt.y0(65, (i26 >> 4) & 1);
            qt.y0(16, (i26 >> 3) & 1);
            qt.y0(37, (i26 >> 1) & 1);
            int i31 = i2 + 8;
            qt.y0(29, (bArr[i31] >> 4) & 3);
            qt.y0(30, (bArr[i31] >> 0) & 3);
            return;
        }
        if (b3 == 46) {
            byte b4 = bArr[i2 + 2];
            if (b4 == -105) {
                qt.y0(133, bArr[i2 + 3] & 255);
                return;
            }
            if (b4 == -92) {
                int i32 = i2 + 3;
                qt.y0(1042, ((bArr[i32] >> 6) & 3) | 256);
                qt.y0(1042, ((bArr[i32] >> 2) & 3) | 512);
                qt.y0(1042, ((bArr[i32] >> 0) & 3) | 1024);
                qt.y0(1042, ((bArr[i2 + 4] >> 6) & 3) | 2048);
                return;
            }
            if (b4 == 2) {
                qt.y0(113, bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(114, bArr[i2 + 4] & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(115, bArr[i2 + 5] & DhcpPacket.DHCP_DOMAIN_NAME);
                return;
            }
            if (b4 == 3) {
                qt.y0(116, bArr[i2 + 3] & 255);
                qt.y0(117, bArr[i2 + 4] & 255);
                qt.y0(118, bArr[i2 + 5] & 255);
                return;
            }
            if (b4 == 4) {
                int i33 = i2 + 3;
                qt.y0(119, bArr[i33] & 7);
                qt.y0(120, (bArr[i33] >> 6) & 1);
                qt.y0(121, (bArr[i33] >> 4) & 1);
                qt.y0(122, (bArr[i33] >> 5) & 1);
                return;
            }
            if (b4 == 5) {
                qt.y0(126, (bArr[i2 + 3] + 1) & 255);
                return;
            }
            switch (b4) {
                case 16:
                    qt.y0(134, bArr[i2 + 3] & 255);
                    break;
                case 17:
                    qt.y0(135, bArr[i2 + 3] & 255);
                    break;
                case 18:
                    qt.y0(171, bArr[i2 + 3] & 255);
                    break;
                case 19:
                    qt.y0(172, bArr[i2 + 3] & 255);
                    break;
            }
        }
        if (b3 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 49) {
            if (!a3() && nt.f8645g[119] == 2) {
                if (((bArr[i2 + 2] >> 6) & 1) == 1) {
                    u0.i.l3().g4(131072, true);
                } else {
                    u0.i.l3().g4(131072, false);
                }
            }
            u0.d.D2((bArr[i2 + 3] & 255) / 20);
            u0.d.E2((bArr[i2 + 4] & 255) / 20);
            u0.d.F2((bArr[i2 + 5] & 255) / 20);
            u0.d.G2((bArr[i2 + 6] & 255) / 20);
            u0.d.R2((bArr[i2 + 7] & 255) / 20);
            u0.d.S2((bArr[i2 + 8] & 255) / 20);
            u0.d.T2((bArr[i2 + 9] & 255) / 20);
            u0.d.U2((bArr[i2 + 10] & 255) / 20);
            return;
        }
        switch (b3) {
            case 29:
                boolean z4 = o1.i.o().f16886b;
                break;
            case 30:
                if (nt.f8637c == 9) {
                    int i34 = this.G;
                    int i35 = i2 + 2;
                    if (i34 != (bArr[i35] & 255)) {
                        if (i34 == 17 && bArr[i35] != 17 && !o1.u.S(a.b.Q)) {
                            o1.u.f(a.b.R);
                        }
                        b2 = 255;
                        this.G = bArr[i35] & 255;
                    } else {
                        b2 = 255;
                    }
                    qt.y0(136, bArr[i35] & b2);
                    qt.y0(137, bArr[i2 + 3] & b2);
                    if ((bArr[i35] & b2) == 0 || (bArr[i35] & b2) == 1 || (bArr[i35] & b2) == 2) {
                        qt.y0(138, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(139, bArr[i2 + 6] & 255);
                        qt.y0(140, bArr[i2 + 7] & 255);
                    } else if ((bArr[i35] & b2) == 15) {
                        qt.y0(141, bArr[i2 + 4] & b2);
                        qt.y0(142, bArr[i2 + 5] & b2);
                        qt.y0(143, bArr[i2 + 6] & b2);
                        int i36 = i2 + 7;
                        qt.y0(144, (bArr[i36] >> 0) & 1);
                        qt.y0(145, (bArr[i36] >> 1) & 1);
                        qt.y0(146, (bArr[i36] >> 2) & 1);
                        qt.y0(147, (bArr[i36] >> 3) & 1);
                        qt.y0(148, (bArr[i36] >> 4) & 1);
                        qt.y0(149, (bArr[i36] >> 5) & 1);
                        qt.y0(150, (bArr[i36] >> 6) & 1);
                        qt.y0(151, (bArr[i36] >> 7) & 1);
                        qt.y0(152, bArr[i2 + 8] & 255);
                    } else if ((bArr[i35] & b2) == 16) {
                        qt.y0(141, bArr[i2 + 4] & b2);
                        qt.y0(142, bArr[i2 + 5] & b2);
                        qt.y0(143, b2 & bArr[i2 + 6]);
                        int i37 = i2 + 7;
                        qt.y0(144, (bArr[i37] >> 0) & 1);
                        qt.y0(145, (bArr[i37] >> 1) & 1);
                    } else if ((bArr[i35] & 255) == 18) {
                        qt.y0(153, bArr[i2 + 4] & 255);
                        qt.y0(154, bArr[i2 + 5] & 255);
                        qt.y0(155, bArr[i2 + 6] & 255);
                        int i38 = i2 + 7;
                        qt.y0(156, (bArr[i38] >> 0) & 1);
                        qt.y0(157, (bArr[i38] >> 1) & 1);
                        qt.y0(158, bArr[i2 + 8] & 255);
                    } else if ((bArr[i35] & 255) == 20) {
                        qt.y0(159, bArr[i2 + 4] & 255);
                        qt.y0(160, bArr[i2 + 5] & 255);
                    }
                    break;
                }
                break;
            case 31:
                qt.y0(161, bArr[i2 + 2] & 255);
                qt.x0(162, new String(bArr, i2 + 3, 12, Charset.forName("ascii")));
                break;
            case 32:
                this.I = bArr[i2 + 2] & 255;
                int i39 = i2 + 3;
                qt.y0(109, bArr[i39] & DhcpPacket.DHCP_DOMAIN_NAME);
                int i40 = bArr[i39] & DhcpPacket.DHCP_DOMAIN_NAME;
                if (!a3()) {
                    int i41 = this.J;
                    if (i41 != i40) {
                        this.J = i40;
                        if (this.f7745d0 == 1) {
                            n1.b bVarP = a.f.p();
                            LogType logType = LogType.CANBUS;
                            StringBuilder sb = new StringBuilder();
                            sb.append(" DataCanbus.DATA[U_CAR_BACKCAR_MUTE] =  ");
                            int[] iArr4 = nt.f8645g;
                            sb.append(iArr4[133]);
                            bVarP.t(logType, sb.toString());
                            if (iArr4[133] == 0 && nt.f8637c != 6) {
                                if (qt.k0()) {
                                    if (this.J == 7) {
                                        y0.h.Y(1024, true);
                                        this.f7747e0 = 1;
                                    } else if (this.f7747e0 == 1) {
                                        y0.h.Y(1024, false);
                                        this.f7747e0 = 0;
                                    }
                                } else if (this.J == 7) {
                                    if (y0.f.f18055i != 1) {
                                        y0.h.u0(-5);
                                        this.f7747e0 = 1;
                                    }
                                } else if (this.f7747e0 == 1) {
                                    y0.h.u0(-5);
                                    this.f7747e0 = 0;
                                }
                            }
                        }
                        int i42 = this.J;
                        if (i42 == 7) {
                            this.f7752h |= 1;
                            if (nt.f8645g[119] != 2) {
                                if (nt.f8637c == 6) {
                                    qt.a(1);
                                } else {
                                    o1.x.C(nt.f8643f, 125, new int[]{1}, null, null);
                                }
                            }
                        } else if (i42 == 1) {
                            int i43 = this.f7752h | 2;
                            this.f7752h = i43;
                            if (nt.f8637c == 6 && i43 == 3 && u0.b.f17347o == 1) {
                                qt.a(0);
                                this.f7752h = 2;
                            }
                            if (!o1.u.S(a.b.Q)) {
                                this.H = true;
                                o1.u.f(a.b.R);
                            }
                        } else {
                            int i44 = this.f7752h;
                            if (i44 == 1) {
                                if (nt.f8645g[119] != 2) {
                                    if (nt.f8637c == 6) {
                                        qt.a(0);
                                    } else {
                                        o1.x.C(nt.f8643f, 125, new int[]{0}, null, null);
                                    }
                                }
                            } else if (i44 != 2) {
                                if (nt.f8637c == 6 && i44 == 3 && u0.b.f17347o == 1) {
                                    qt.a(0);
                                }
                                l0.b0.l0(5, 0);
                                l0.b0.l0(5, 1);
                                u0.b.f17311c.c(0);
                            } else if (o1.u.S(a.b.Q) && !this.f7773t) {
                                o1.u.k();
                            }
                            this.f7752h = 0;
                            this.H = false;
                        }
                    } else if (i41 == i40 && nt.f8637c == 5 && i41 == 1) {
                        this.f7752h |= 2;
                        Log.v("zed", "JumpPage.isAppTop(DataApp.sAppCarVideoPrefix) 2222222222= " + o1.u.S(a.b.Q));
                        if (!o1.u.S(a.b.Q)) {
                            this.H = true;
                            Log.v("zed", "JumpPage.activityByIntentName = 2222222222");
                            o1.u.f(a.b.R);
                        }
                    }
                } else if (this.J != i40) {
                    this.J = i40;
                    if (i40 == 0 && o1.u.S(a.b.Q)) {
                        z.k.s(227, 152, 4, 161, 1, 0, 0);
                    }
                }
                qt.y0(110, (bArr[i39] >> 4) & 15);
                int i45 = i2 + 4;
                qt.y0(111, (bArr[i45] >> 0) & 1);
                int i46 = nt.f8637c;
                if (i46 == 1 || i46 == 3 || i46 == 10) {
                    if (this.P != ((bArr[i45] >> 0) & 1)) {
                        int i47 = (bArr[i45] >> 0) & 1;
                        this.P = i47;
                        if (i47 == 1) {
                            qt.y0(130, 0);
                            this.f7779z = 0;
                            l0.b0.p0(this.A);
                            b3(false);
                        } else {
                            l0.b0.l0(5, 0);
                            l0.b0.l0(5, 1);
                            u0.b.f17311c.c(0);
                            int i48 = h0.c.E;
                            if (i48 == 3 || i48 == 4 || i48 == 5) {
                                b3(true);
                            }
                        }
                    }
                } else if (i46 == 2) {
                    if (this.P != ((bArr[i45] >> 0) & 1)) {
                        int i49 = (bArr[i45] >> 0) & 1;
                        this.P = i49;
                        if (i49 == 1) {
                            b3(false);
                        } else {
                            l0.b0.l0(5, 0);
                            l0.b0.l0(5, 1);
                            u0.b.f17311c.c(0);
                            int i50 = h0.c.E;
                            if (i50 == 3 || i50 == 4 || i50 == 5) {
                                b3(true);
                            }
                        }
                    }
                } else if (this.P != ((bArr[i45] >> 0) & 1)) {
                    int i51 = (bArr[i45] >> 0) & 1;
                    this.P = i51;
                    if (i51 == 1) {
                        b3(false);
                    } else {
                        int i52 = h0.c.E;
                        if (i52 == 3 || i52 == 4 || i52 == 5) {
                            b3(true);
                        }
                    }
                }
                int i53 = i2 + 5;
                qt.y0(112, bArr[i53] & 255);
                this.Q = bArr[i53] & 255;
                int i54 = i2 + 6;
                if (this.R != ((bArr[i54] >> 1) & 1)) {
                    if (((bArr[i54] >> 1) & 1) == 1 && u0.b.f17332j == 1) {
                        l0.b0.l0(25, 0);
                        l0.b0.l0(25, 1);
                    }
                    this.R = (bArr[i54] >> 1) & 1;
                }
                qt.y0(167, (bArr[i2 + 7] >> 4) & 1);
                this.S = true;
                break;
            case 33:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f7742c = b5 & 255;
                int i55 = 0;
                while (true) {
                    iArr = this.f7744d;
                    if (i55 < iArr.length) {
                        int i56 = this.f7742c;
                        if (i56 != iArr[i55][0]) {
                            i55++;
                        } else if (i56 != 0) {
                            this.f7740b = i55;
                        }
                    }
                }
                int i57 = b6 & 255;
                if (i57 != 1) {
                    if (i57 == 0) {
                        int i58 = this.f7740b;
                        if (i58 < iArr.length && i58 != 255) {
                            l0.b0.l0(iArr[i58][1], 1);
                        }
                        this.f7740b = 255;
                    }
                } else if (i55 < iArr.length) {
                    l0.b0.l0(iArr[i55][1], 0);
                }
                break;
            case 34:
                byte b7 = bArr[i2 + 2];
                byte b8 = bArr[i2 + 3];
                this.f7748f = b7 & 255;
                int i59 = 0;
                while (true) {
                    iArr2 = this.f7750g;
                    if (i59 < iArr2.length) {
                        int i60 = this.f7748f;
                        if (i60 != iArr2[i59][0]) {
                            i59++;
                        } else if (i60 != 0) {
                            this.f7746e = i59;
                        }
                    }
                }
                int i61 = this.f7748f;
                if (i61 != 14) {
                    if (i61 != 34) {
                        if (i61 != 60) {
                            if (i61 != 61) {
                                int i62 = b8 & 255;
                                if (i62 != 1) {
                                    if (i62 == 0) {
                                        int i63 = this.f7746e;
                                        if (i63 < iArr2.length && i63 != 255) {
                                            l0.b0.l0(iArr2[i63][1], 1);
                                        }
                                        this.f7746e = 255;
                                    }
                                } else if (i59 < iArr2.length) {
                                    l0.b0.l0(iArr2[i59][1], 0);
                                }
                            } else if ((b8 & 255) == 1) {
                                if (!o1.u.S(a.b.Q)) {
                                    o1.u.f(a.b.R);
                                } else if (o1.u.S(a.b.Q)) {
                                    o1.u.k();
                                }
                            }
                            break;
                        } else if ((b8 & 255) == 1 && !o1.u.S(a.b.Q)) {
                            o1.u.f(a.b.R);
                            break;
                        }
                    } else {
                        if ((b8 & 255) == 1) {
                            u0.d.u1();
                        }
                        break;
                    }
                } else {
                    if ((b8 & 255) == 1) {
                        int i64 = h0.c.E;
                        if (i64 != 3) {
                            if (i64 == 4) {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                                break;
                            } else if (i64 != 5) {
                            }
                        }
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    }
                    break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f7743c0.j();
        o1.y yVar = u0.c.f17386m;
        yVar.d(this.f7765n0);
        yVar.d(this.f7778y);
        o1.y yVar2 = u0.c.f17374a;
        yVar2.d(this.f7777x);
        e.e.f1627e.d(this.f7760l);
        y0.g.f18110t.d(this.f7771r);
        l0.b0.p0(this.B);
        yVar2.d(this.f7777x);
        u0.c.f17387n.d(this.F);
        o1.y yVar3 = h0.d.f2462a;
        yVar3.d(this.D);
        yVar3.d(this.E);
        u0.c.G.d(this.f7774u);
        l0.b0.o0(this.f7759k0);
        l0.b0.p0(this.f7755i0);
        int i2 = SystemProperties.getInt("persist.sys.syu.dsp", 0);
        this.f7745d0 = i2;
        if (i2 == 0) {
            this.f7886a.f8307b = 0;
            n0.j4.f16466d.g3(false);
            y0.h.V(4);
            if (a.f.v() != null) {
                a.f.v().a(false);
            }
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 173) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            int i3 = iArr[0];
            if (i3 == 0) {
                p3(iArr[1]);
            }
            switch (i3) {
                case i.a.Theme_actionModeShareDrawable /* 241 */:
                    x3(iArr[1]);
                    break;
                case i.a.Theme_actionModeFindDrawable /* 242 */:
                    y3(iArr[1]);
                    break;
                case i.a.Theme_actionModeWebSearchDrawable /* 243 */:
                    w3(iArr[1]);
                    break;
                case i.a.Theme_actionModePopupWindowStyle /* 244 */:
                    v3(iArr[1]);
                    break;
                case i.a.Theme_preferenceFragmentStyle /* 245 */:
                    s3(iArr[1]);
                    break;
                default:
                    if (iArr[0] == 151 && this.f7745d0 == 1) {
                        y0.h.l(iArr[1]);
                    }
                    z.k.s(227, 152, 4, iArr[0], iArr[1], iArr[2], iArr[3]);
                    break;
            }
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (a3()) {
                z.k.s(227, 152, 4, 161, iArr[0], 0, 0);
                return;
            }
            if (this.H) {
                return;
            }
            z.k.s(227, 152, 4, 162, 1, this.Q, 0);
            int i4 = nt.f8637c;
            if (i4 == 1 || i4 == 3 || i4 == 10) {
                qt.y0(130, 0);
                this.f7779z = 0;
                l0.b0.p0(this.A);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (nt.f8637c != 5) {
                z.k.s(227, 151, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                return;
            } else if (a3()) {
                z.k.s(227, 151, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                return;
            } else {
                if (iArr[0] == 2) {
                    z.k.s(227, 151, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                    return;
                }
                return;
            }
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 144, 2, 46, 2);
            z.k.s(227, 144, 2, 46, 3);
            z.k.s(227, 144, 2, 46, 4);
            return;
        }
        if (i2 != 4) {
            if (i2 == 10) {
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                this.L = iArr[0];
                return;
            }
            if (i2 == 11) {
                if ((iArr[0] & 255) == 251) {
                    r3(iArr[1]);
                    return;
                }
                return;
            }
            if (i2 == 45) {
                u3(iArr[0]);
                t3(iArr[1]);
                return;
            }
            switch (i2) {
                case 1032:
                    a.f.p().t(LogType.CANBUS, "C_CANBUSDVR_CMD = 11111111111111111111111");
                    z.k.s(227, 152, 4, 162, 4, this.Q, 0);
                    break;
                case 1033:
                    a.f.p().t(LogType.CANBUS, "C_CANBUS_AUDI_CAR_TYPE = 22222222222");
                    z.k.s(227, 152, 4, 163, iArr[0] | 128, 0, 0);
                    break;
                case 1034:
                    a.f.p().t(LogType.CANBUS, "C_CANBUS_BENZ_BUTTON = " + iArr[0]);
                    int i5 = (iArr[0] >> 8) & 255;
                    if (i5 == 0) {
                        z.k.s(227, 152, 4, 164, 0, 0, 0);
                        break;
                    } else if (i5 == 1) {
                        z.k.s(227, 152, 4, 164, 5, iArr[0] & 255, 0);
                        break;
                    } else if (i5 == 2) {
                        z.k.s(227, 152, 4, 164, 6, iArr[0] & 255, 0);
                        break;
                    } else if (i5 == 4) {
                        z.k.s(227, 152, 4, 164, 7, iArr[0] & 255, 0);
                        break;
                    } else if (i5 == 8) {
                        z.k.s(227, 152, 4, 164, 8, iArr[0] & 255, 0);
                        break;
                    } else if (i5 == 16) {
                        if ((iArr[0] & 255) == 1) {
                            z.k.s(227, 152, 4, 164, 3, 0, 0);
                        } else if ((iArr[0] & 255) == 2) {
                            z.k.s(227, 152, 4, 164, 4, 0, 0);
                        }
                        break;
                    } else if (i5 == 32) {
                        if ((iArr[0] & 255) == 1) {
                            z.k.s(227, 152, 4, 164, 1, 0, 0);
                        } else if ((iArr[0] & 255) == 2) {
                            z.k.s(227, 152, 4, 164, 2, 0, 0);
                        }
                        break;
                    }
                    break;
            }
        }
    }

    public boolean a3() {
        return qt.n0("/sys/fytver/fyt_bin_version").contains("Ls18") || qt.n0("/sys/fytver/fyt_bin_version").contains("Lt18");
    }

    public final void b3(boolean z2) {
        if (this.f7775v == z2) {
            return;
        }
        this.f7775v = z2;
        String str = SystemProperties.get("ro.fyt.platform", ProxyProperties.LOCAL_EXCL_LIST);
        if ("6521".equals(str)) {
            if (z2) {
                ToolsJni.cmd_31_fan_en(1);
                return;
            } else {
                ToolsJni.cmd_31_fan_en(0);
                return;
            }
        }
        if ("6316".equals(str) || "6312".equals(str)) {
            if (z2) {
                ToolsJni.cmd_251_Normal_Io_Set(13, 1);
                return;
            } else {
                ToolsJni.cmd_251_Normal_Io_Set(13, 0);
                return;
            }
        }
        if ("6315".equals(str) || "6318".equals(str) || "6319".equals(str)) {
            if (z2) {
                ToolsJni.cmd_251_Normal_Io_Set(14, 1);
                return;
            } else {
                ToolsJni.cmd_251_Normal_Io_Set(14, 0);
                return;
            }
        }
        if (z2) {
            ToolsJni.cmd_251_Normal_Io_Set(5, 1);
        } else {
            ToolsJni.cmd_251_Normal_Io_Set(5, 0);
        }
    }

    public final void p3(int i2) {
        qt.y0(124, i2);
        f7731s0 = i2;
        int iB = this.f7743c0.b(1, 0);
        int i3 = f7731s0;
        if (iB != i3) {
            this.f7743c0.g(1, i3);
        }
    }

    public final void q3(boolean z2) {
        if (f7734v0 == 1 && f7731s0 == 2) {
            z2 = false;
        }
        if (z2) {
            qt.y0(130, 1);
            l0.b0.b(this.A);
        }
        this.f7779z = 0;
        int i2 = f7731s0;
        if (i2 == 0 || i2 == 1) {
            z.k.s(227, 152, 4, 0, i2, 0, 0);
            return;
        }
        if (i2 != 2) {
            if (i2 != 3) {
                return;
            }
            int i3 = f7733u0;
            if (i3 == 1) {
                z.k.s(227, 152, 4, 0, i2, 4, f7732t0);
                return;
            } else {
                if (i3 == 0) {
                    z.k.s(227, 152, 4, 0, i2, 3, f7732t0);
                    return;
                }
                return;
            }
        }
        if (f7734v0 == 1) {
            z.k.s(227, 152, 4, 0, i2, 0, f7732t0);
            return;
        }
        int i4 = f7733u0;
        if (i4 == 1) {
            z.k.s(227, 152, 4, 0, i2, 2, f7732t0);
        } else if (i4 == 0) {
            z.k.s(227, 152, 4, 0, i2, 1, f7732t0);
        }
    }

    public final void r3(int i2) {
        qt.y0(166, i2);
        f7735w0 = i2;
        int iB = this.f7743c0.b(6, 0);
        int i3 = f7735w0;
        if (iB != i3) {
            this.f7743c0.g(6, i3);
            SystemProperties.set("persist.sys.penneltype", String.format(Locale.US, "%d", Integer.valueOf(f7735w0)));
        }
    }

    public final void s3(int i2) {
        qt.y0(170, 65535 & i2);
        f7738z0 = i2;
        f1.o oVarG = f1.o.g();
        if (oVarG != null && oVarG.m()) {
            if (i2 == 1) {
                oVarG.j(11, 4, 112, 0, 0);
            } else {
                oVarG.j(11, 4, 0, 0, 0);
            }
        }
        int iB = this.f7743c0.b(10, 0);
        int i3 = f7738z0;
        if (iB != i3) {
            this.f7743c0.g(10, i3);
        }
    }

    public final void t3(int i2) {
        qt.y0(169, 65535 & i2);
        f7737y0 = i2;
        if (this.f7743c0.b(9, 0) != f7737y0) {
            SystemProperties.set("persist.sys.height", String.format(Locale.US, "%d", Integer.valueOf(f7737y0)));
            this.f7743c0.g(9, f7737y0);
        }
    }

    public final void u3(int i2) {
        qt.y0(168, 65535 & i2);
        f7736x0 = i2;
        if (this.f7743c0.b(8, 0) != f7736x0) {
            SystemProperties.set("persist.sys.width", String.format(Locale.US, "%d", Integer.valueOf(f7736x0)));
            this.f7743c0.g(8, f7736x0);
        }
    }

    public final void v3(int i2) {
        qt.y0(165, i2);
        A0 = i2;
        int iB = this.f7743c0.b(12, 0);
        int i3 = A0;
        if (iB != i3) {
            this.f7743c0.g(12, i3);
        }
    }

    public final void w3(int i2) {
        qt.y0(129, i2);
        f7734v0 = i2;
        int iB = this.f7743c0.b(4, 0);
        int i3 = f7734v0;
        if (iB != i3) {
            this.f7743c0.g(4, i3);
        }
    }

    public final void x3(int i2) {
        qt.y0(127, i2);
        f7732t0 = i2;
        int iB = this.f7743c0.b(2, 0);
        int i3 = f7732t0;
        if (iB != i3) {
            this.f7743c0.g(2, i3);
        }
    }

    public final void y3(int i2) {
        qt.y0(128, i2);
        f7733u0 = i2;
        int iB = this.f7743c0.b(3, 0);
        int i3 = f7733u0;
        if (iB != i3) {
            this.f7743c0.g(3, i3);
        }
    }
}

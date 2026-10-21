package k0;

import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import app.App;
import com.syu.jni.ToolsJni;
import java.util.Locale;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class tq extends lt {
    public static int K = 255;
    public static int L = 0;
    public static int M = 0;
    public static int N = 0;
    public static int O = 20;
    public static int P = 22;
    public static int Q;
    public static int R;
    public static int S;
    public static int T;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10786h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10780b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10781c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10782d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10783e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f10784f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f10785g = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f10787i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f10788j = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 18}, new int[]{7, 12}, new int[]{33, 1}, new int[]{34, 54}, new int[]{35, 1}, new int[]{36, 0}, new int[]{37, 7}, new int[]{38, 8}, new int[]{39, 54}, new int[]{40, 18}, new int[]{41, 6}, new int[]{42, 5}, new int[]{43, 31}, new int[]{44, 30}, new int[]{45, 29}, new int[]{46, 34}, new int[]{47, 35}, new int[]{48, 32}, new int[]{49, 33}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f10789k = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f10790l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f10791m = new d();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f10792n = new e();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f10793o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f10794p = new f();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f10795q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f10796r = new g();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f10797s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f10798t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f10799u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f10800v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f10801w = 7;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f10802x = 8;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f10803y = 9;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f10804z = 10;
    public final int A = 11;
    public final int B = 13;
    public final int C = 12;
    public final int D = 25;
    public final int E = 1;
    public int F = 0;
    public o1.g0 G = new o1.g0(getClass().getSimpleName(), 32);
    public int H = 0;
    public Runnable I = new h();
    public Runnable J = new i();

    public class a implements o1.p {
        public a() {
        }

        @Override // o1.p
        public void d(Object obj) {
            tq tqVar = tq.this;
            int i2 = tqVar.f10797s;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                tqVar.f10797s = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (tqVar.f10799u) {
                        tqVar.a3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    tqVar.a3(true);
                } else if (y0.f.Q0 == 0) {
                    tqVar.a3(false);
                }
            }
        }
    }

    public class b implements o1.p {
        public b() {
        }

        @Override // o1.p
        public void d(Object obj) {
            tq tqVar = tq.this;
            int i2 = tqVar.f10797s;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                tqVar.f10797s = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (tqVar.f10799u) {
                        tqVar.a3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    tqVar.a3(true);
                } else if (y0.f.Q0 == 0) {
                    tqVar.a3(false);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17366w;
            if (i2 == 0) {
                qt.y0(112, 0);
            } else {
                if (i2 != 1) {
                    return;
                }
                qt.y0(112, 1);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17357r0 == 0) {
                tq tqVar = tq.this;
                int i2 = tqVar.f10782d;
                if (i2 >= 0) {
                    tqVar.f10782d = i2 - 1;
                } else {
                    int i3 = tqVar.f10781c;
                    if (i3 == 1) {
                        if (!o1.u.a0()) {
                            SystemProperties.set("persist.lesc.video.ignore", "true");
                            a.i.a0(200L);
                            tq.this.f10784f = true;
                            o1.u.z();
                            float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                            tq.this.f10783e = y0.f.f18037c;
                            y0.h.t0((int) f2);
                        }
                    } else if (i3 == 0 && tqVar.f10784f && o1.u.a0()) {
                        y0.h.t0(tq.this.f10783e);
                        a.i.a0(100L);
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                        a.i.a0(350L);
                        SystemProperties.set("persist.lesc.video.ignore", "false");
                    }
                }
            }
            tq tqVar2 = tq.this;
            int i4 = tqVar2.f10793o;
            if (i4 > 0) {
                int i5 = i4 - 1;
                tqVar2.f10793o = i5;
                if (i5 == 0 && u0.b.D != 13) {
                    y0.h.u0(tq.P);
                    tq tqVar3 = tq.this;
                    if (tqVar3.f10799u) {
                        tqVar3.a3(false);
                    }
                }
            }
            if (o1.u.S("com.syu.fourcamera2")) {
                tq tqVar4 = tq.this;
                int i6 = tqVar4.f10790l + 1;
                tqVar4.f10790l = i6;
                if (i6 >= 2) {
                    z.k.s(227, 144, 1, 41);
                    tq.this.f10790l = 0;
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 13 || o1.u.S(a.b.Q)) {
                int i2 = h0.c.E;
                if (i2 == 3 || i2 == 4 || i2 == 5) {
                    tq.this.a3(true);
                } else {
                    tq.this.a3(false);
                }
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = tq.K;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13) {
                    int i4 = tq.K;
                    if (i4 == 13 || i4 == 255) {
                        y0.h.u0(tq.P);
                        z.k.s(227, 198, 2, 176, 3);
                    }
                    tq tqVar = tq.this;
                    if (tqVar.f10799u) {
                        tqVar.a3(false);
                    }
                }
                tq.K = u0.b.D;
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tq tqVar = tq.this;
            tqVar.f10795q = y0.f.Q0;
            if (u0.b.D != 13) {
                if (tqVar.f10799u) {
                    tqVar.a3(false);
                    return;
                }
                return;
            }
            int i2 = y0.f.Q0;
            if (i2 != 0) {
                if (i2 != 1) {
                    return;
                }
                tqVar.a3(true);
            } else if (u0.b.j4 == 0) {
                tqVar.a3(false);
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = SystemProperties.get("ro.fyt.platform", ProxyProperties.LOCAL_EXCL_LIST);
            if ("6521".equals(str)) {
                ToolsJni.cmd_31_fan_en(0);
            } else if ("6316".equals(str) || "6312".equals(str)) {
                ToolsJni.cmd_251_Normal_Io_Set(13, 0);
            } else if ("6315".equals(str) || "6318".equals(str) || "6319".equals(str)) {
                ToolsJni.cmd_251_Normal_Io_Set(14, 0);
            } else {
                ToolsJni.cmd_251_Normal_Io_Set(5, 0);
            }
            tq.K = 255;
            l0.b0.b(tq.this.J);
            tq.this.H = 5;
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tq tqVar = tq.this;
            int i2 = tqVar.H - 1;
            tqVar.H = i2;
            if (i2 <= 0) {
                l0.b0.p0(tqVar.J);
                tq.this.H = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                tq tqVar2 = tq.this;
                tqVar2.v3(tqVar2.G.b(7, 0));
                tq tqVar3 = tq.this;
                tqVar3.t3(tqVar3.G.b(10, 20));
                tq tqVar4 = tq.this;
                tqVar4.n3(tqVar4.G.b(11, 22));
                tq tqVar5 = tq.this;
                tqVar5.u3(tqVar5.G.b(25, 0));
                tq tqVar6 = tq.this;
                tqVar6.p3(tqVar6.G.b(13, 0));
                switch (nt.f8633a) {
                    case 1442248:
                    case 6291912:
                    case 10617288:
                    case 10879432:
                        tq tqVar7 = tq.this;
                        tqVar7.o3(tqVar7.G.b(12, 0));
                        tq.this.r3(0);
                        break;
                    case 1507784:
                    case 6357448:
                    case 10682824:
                    case 10944968:
                        tq tqVar8 = tq.this;
                        tqVar8.o3(tqVar8.G.b(12, 0));
                        tq.this.r3(3);
                        break;
                    case 1573320:
                    case 6422984:
                    case 10748360:
                    case 11010504:
                    case 11141576:
                    case 11272648:
                        tq tqVar9 = tq.this;
                        tqVar9.o3(tqVar9.G.b(12, 0));
                        tq.this.r3(1);
                        break;
                    case 1638856:
                    case 6488520:
                    case 10813896:
                    case 11076040:
                    case 11207112:
                    case 11338184:
                        tq.this.o3(0);
                        tq.this.r3(2);
                        break;
                    case 9961928:
                    case 10093000:
                    case 11403720:
                    case 11469256:
                    case 12255688:
                        tq.this.o3(1);
                        tq.this.r3(2);
                        break;
                    case 10027464:
                    case 10158536:
                    case 11534792:
                    case 11600328:
                    case 11665864:
                    case 12321224:
                        tq.this.o3(1);
                        tq.this.r3(2);
                        break;
                    default:
                        tq tqVar10 = tq.this;
                        tqVar10.o3(tqVar10.G.b(12, 0));
                        tq tqVar11 = tq.this;
                        tqVar11.r3(tqVar11.G.b(1, 0));
                        break;
                }
                if (!o1.u.S(a.b.Q) && u0.b.D != 13) {
                    y0.h.u0(tq.P);
                    z.k.s(227, 198, 2, 181, 0);
                    z.k.s(227, 198, 2, 176, 3);
                }
                switch (nt.f8633a) {
                    case 15729095:
                    case 15860167:
                        z.k.s(227, 198, 2, 3, 0);
                        break;
                    case 15794631:
                    case 15925703:
                        z.k.s(227, 198, 2, 3, 1);
                        break;
                }
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.G.a();
        u0.c.f17386m.a(this.I, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8317l = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        y0.g.f18110t.a(this.f10796r, 1);
        y0.g.f18101k.a(new a());
        h0.d.f2462a.a(this.f10792n, 1);
        u0.c.f17374a.a(this.f10794p, 1);
        l0.b0.a(this.f10791m);
        u0.c.f17399z.a(this.f10789k, 1);
        switch (nt.f8633a) {
            case 10027464:
            case 10158536:
            case 11534792:
            case 11600328:
            case 11665864:
            case 12321224:
                if (qt.n0("/sys/fytver/fyt_bin_version").contains("Ls18") || qt.n0("/sys/fytver/fyt_bin_version").contains("Lt18")) {
                    if (g.f.n(11) || g.f.n(9)) {
                        if (SystemProperties.getInt("sys.fyt.cvbs_0.bus_width", 0) != 4) {
                            SystemProperties.set("sys.fyt.cvbs_0.bus_width", "4");
                            qt.r0();
                        }
                        if (!SystemProperties.get("persist.lesc.customer_platform").equals("8918L")) {
                            SystemProperties.set("persist.lesc.customer_platform", "8918L");
                            qt.r0();
                        }
                    } else if (g.f.n(13)) {
                        if (SystemProperties.getInt("sys.fyt.cvbs_2.bus_width", 0) != 4) {
                            SystemProperties.set("sys.fyt.cvbs_2.bus_width", "4");
                            qt.r0();
                        }
                        if (!SystemProperties.get("persist.lesc.customer_platform").equals("8918L")) {
                            SystemProperties.set("persist.lesc.customer_platform", "8918L");
                            qt.r0();
                        }
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        int i4 = 0;
        if (b2 != 32) {
            if (b2 == 39) {
                a.f.p().t(LogType.CANBUS, "persist.lesc.customer_platform  == " + SystemProperties.get("persist.lesc.customer_platform"));
                int i5 = i2 + 2;
                qt.y0(10, (bArr[i5] >> 7) & 1);
                qt.y0(11, (bArr[i5] >> 6) & 1);
                qt.y0(12, (bArr[i5] >> 5) & 1);
                qt.y0(13, (bArr[i5] >> 4) & 1);
                qt.y0(62, (bArr[i5] >> 2) & 1);
                qt.y0(65, (bArr[i5] >> 1) & 1);
                qt.y0(16, (bArr[i5] >> 0) & 1);
                int i6 = i2 + 3;
                qt.y0(18, (bArr[i6] >> 7) & 1);
                qt.y0(19, (bArr[i6] >> 6) & 1);
                qt.y0(20, (bArr[i6] >> 5) & 1);
                qt.y0(49, (bArr[i6] >> 4) & 1);
                qt.y0(21, (bArr[i6] >> 0) & 15);
                int i7 = i2 + 4;
                int i8 = bArr[i7] & 255;
                int i9 = i2 + 5;
                int i10 = bArr[i9] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i8 = bArr[i9] & 255;
                    i10 = bArr[i7] & 255;
                }
                if (i8 == 0) {
                    qt.y0(27, -2);
                } else if (i8 != 255) {
                    qt.y0(27, i8);
                } else {
                    qt.y0(27, -3);
                }
                if (i10 == 0) {
                    qt.y0(28, -2);
                } else if (i10 != 255) {
                    qt.y0(28, i10);
                } else {
                    qt.y0(28, -3);
                }
                int i11 = i2 + 6;
                qt.y0(54, (bArr[i11] >> 7) & 1);
                qt.y0(52, (bArr[i11] >> 6) & 1);
                qt.y0(33, (bArr[i11] >> 5) & 1);
                qt.y0(55, (bArr[i11] >> 4) & 1);
                qt.y0(37, (bArr[i11] >> 3) & 1);
                qt.y0(76, (bArr[i11] >> 1) & 3);
                int i12 = i2 + 7;
                qt.y0(29, (bArr[i12] >> 4) & 15);
                qt.y0(30, (bArr[i12] >> 0) & 15);
                int i13 = i2 + 8;
                qt.y0(46, (bArr[i13] >> 6) & 1);
                qt.y0(47, (bArr[i13] >> 5) & 1);
                qt.y0(69, (bArr[i13] >> 4) & 1);
                qt.y0(44, (bArr[i13] >> 0) & 15);
                int i14 = i2 + 9;
                int i15 = bArr[i14] & 255;
                if (i15 == 0) {
                    qt.y0(40, -2);
                } else if (i15 != 255) {
                    qt.y0(40, bArr[i14] & 255);
                } else {
                    qt.y0(40, -3);
                }
                int i16 = i2 + 10;
                qt.y0(42, (bArr[i16] >> 7) & 1);
                qt.y0(86, (bArr[i16] >> 6) & 1);
                qt.y0(67, (bArr[i16] >> 5) & 1);
                qt.y0(43, (bArr[i16] >> 4) & 1);
                qt.y0(81, (bArr[i16] >> 3) & 1);
                if (bArr[i2 + 1] >= 10) {
                    int i17 = i2 + 11;
                    qt.y0(93, (bArr[i17] >> 6) & 3);
                    qt.y0(94, (bArr[i17] >> 4) & 3);
                    return;
                }
                return;
            }
            if (b2 == 41) {
                qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, 7800);
                return;
            }
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 == 53) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i18 = i2 + 2;
                    l0.c0.b((bArr[i18] >> 5) & 1, (bArr[i18] >> 4) & 1, 0);
                } else {
                    int i19 = i2 + 2;
                    l0.c0.a((bArr[i19] >> 5) & 1, (bArr[i19] >> 4) & 1, 0);
                }
                qt.y0(104, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(105, ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
                qt.y0(106, bArr[i2 + 12] & 255);
                int i20 = i2 + 13;
                qt.y0(107, (bArr[i20] >> 7) & 1);
                qt.y0(108, (bArr[i20] >> 6) & 1);
                int i21 = bArr[i2 + 8] & 255;
                if (i21 == 255 || i21 == 0) {
                    u0.d.A3(0);
                    return;
                } else {
                    u0.d.B3((nt.f8645g[37] == 1 || SystemProperties.getInt("persist.fyt.temperature", 0) == 1) ? (((i21 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i21 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                    return;
                }
            }
            if (b2 == 57) {
                int i22 = i2 + 2;
                if (this.f10780b != bArr[i22]) {
                    byte b3 = bArr[i22];
                    this.f10780b = b3;
                    if (b3 == 1) {
                        if (o1.u.a0()) {
                            return;
                        }
                        this.f10785g = true;
                        o1.u.z();
                        return;
                    }
                    if (b3 == 0) {
                        if (this.f10785g && o1.u.a0()) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                        this.f10785g = false;
                        return;
                    }
                    return;
                }
                return;
            }
            switch (b2) {
                case 34:
                    u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                    break;
                case 35:
                    int i23 = i2 + 2;
                    int i24 = bArr[i23] & 255;
                    int i25 = i2 + 3;
                    int i26 = bArr[i25] & 255;
                    int i27 = i2 + 4;
                    int i28 = bArr[i27] & 255;
                    int i29 = i2 + 5;
                    int i30 = bArr[i29] & 255;
                    if (i24 == 0 && i26 == 0 && i28 == 0 && i30 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i24 || l0.c0.f13014h != i26 || l0.c0.f13015i != i28 || l0.c0.f13016j != i30) && this.f10781c == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 5;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i24;
                    l0.c0.f13014h = i26;
                    l0.c0.f13015i = i28;
                    l0.c0.f13016j = i30;
                    u0.d.D2(l0.c0.E0(bArr[i23] & 255));
                    u0.d.E2(l0.c0.E0(bArr[i25] & 255));
                    u0.d.F2(l0.c0.E0(bArr[i27] & 255));
                    u0.d.G2(l0.c0.E0(bArr[i29] & 255));
                    break;
                case 36:
                    byte b4 = bArr[i2 + 2];
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(2, (b4 >> 6) & 1);
                        qt.y0(1, (b4 >> 7) & 1);
                    } else {
                        qt.y0(2, (b4 >> 7) & 1);
                        qt.y0(1, (b4 >> 6) & 1);
                    }
                    qt.y0(4, (b4 >> 5) & 1);
                    qt.y0(3, (b4 >> 4) & 1);
                    qt.y0(5, (b4 >> 3) & 1);
                    qt.y0(0, (b4 >> 2) & 1);
                    int i31 = i2 + 3;
                    if (this.f10781c != ((bArr[i31] >> 0) & 1)) {
                        int i32 = (bArr[i31] >> 0) & 1;
                        this.f10781c = i32;
                        if (u0.b.f17357r0 == 0) {
                            if (i32 == 1) {
                                this.f10782d = 5;
                            } else if (i32 == 0) {
                                this.f10782d = 5;
                                if (this.f10784f && o1.u.a0()) {
                                    y0.h.t0(this.f10783e);
                                    a.i.a0(100L);
                                    l0.b0.l0(6, 0);
                                    l0.b0.l0(6, 1);
                                    a.i.a0(350L);
                                    SystemProperties.set("persist.lesc.video.ignore", "false");
                                }
                                this.f10784f = false;
                            }
                        }
                    }
                    break;
            }
        }
        byte b5 = bArr[i2 + 2];
        byte b6 = bArr[i2 + 3];
        this.f10787i = b5 & 255;
        int i33 = 0;
        while (true) {
            iArr = this.f10788j;
            if (i33 >= iArr.length) {
                break;
            }
            int i34 = this.f10787i;
            if (i34 == iArr[i33][0]) {
                if (i34 == 0) {
                    break;
                }
                this.f10786h = i33;
                break;
            }
            i33++;
        }
        int i35 = this.f10787i;
        if (i35 == 1) {
            if (SystemProperties.getInt("persist.fyt.lzgmtype", 0) != 4) {
                if (S == 1 && (b6 & 255) == 1) {
                    l0.b0.l0(7, 0);
                    l0.b0.l0(7, 1);
                }
                return;
            }
            int i36 = b6 & 255;
            if (i36 == 1) {
                z.k.s(227, 198, 2, 2, 3);
                return;
            } else {
                if (i36 == 0) {
                    z.k.s(227, 198, 2, 2, 0);
                    return;
                }
                return;
            }
        }
        if (i35 == 2) {
            if (SystemProperties.getInt("persist.fyt.lzgmtype", 0) != 4) {
                if (S == 1 && (b6 & 255) == 1) {
                    l0.b0.l0(8, 0);
                    l0.b0.l0(8, 1);
                    return;
                }
                return;
            }
            int i37 = b6 & 255;
            if (i37 == 1) {
                z.k.s(227, 198, 2, 2, 4);
                return;
            } else {
                if (i37 == 0) {
                    z.k.s(227, 198, 2, 2, 0);
                    return;
                }
                return;
            }
        }
        if (i35 == 3) {
            if (SystemProperties.getInt("persist.fyt.lzgmtype", 0) != 4) {
                if ((b6 & 255) == 1) {
                    l0.b0.l0(4, 0);
                    l0.b0.l0(4, 1);
                    return;
                }
                return;
            }
            if (!o1.u.a0()) {
                if ((b6 & 255) == 1) {
                    l0.b0.l0(4, 0);
                    l0.b0.l0(4, 1);
                    return;
                }
                return;
            }
            int i38 = b6 & 255;
            if (i38 == 1) {
                z.k.s(227, 198, 2, 2, 9);
                return;
            } else {
                if (i38 == 0) {
                    z.k.s(227, 198, 2, 2, 0);
                    return;
                }
                return;
            }
        }
        if (i35 == 4) {
            if (SystemProperties.getInt("persist.fyt.lzgmtype", 0) != 4) {
                if ((b6 & 255) == 1) {
                    l0.b0.l0(3, 0);
                    l0.b0.l0(3, 1);
                    return;
                }
                return;
            }
            if (!o1.u.a0()) {
                if ((b6 & 255) == 1) {
                    l0.b0.l0(3, 0);
                    l0.b0.l0(3, 1);
                    return;
                }
                return;
            }
            int i39 = b6 & 255;
            if (i39 == 1) {
                z.k.s(227, 198, 2, 2, 8);
                return;
            } else {
                if (i39 == 0) {
                    z.k.s(227, 198, 2, 2, 0);
                    return;
                }
                return;
            }
        }
        if (i35 == 6) {
            if ((b6 & 255) == 1) {
                if (nt.f8633a == 5439943) {
                    l0.b0.l0(18, 0);
                    l0.b0.l0(18, 1);
                    return;
                } else if (h0.c.E != 4) {
                    l0.b0.l0(13, 0);
                    l0.b0.l0(13, 1);
                    return;
                } else {
                    l0.b0.l0(18, 0);
                    l0.b0.l0(18, 1);
                    return;
                }
            }
            return;
        }
        if (i35 == 7) {
            if ((b6 & 255) == 1) {
                if (nt.f8633a == 5439943) {
                    l0.b0.l0(26, 0);
                    l0.b0.l0(26, 1);
                    return;
                }
                int i40 = h0.c.E;
                if (i40 == 3 || i40 == 4 || i40 == 5) {
                    l0.b0.l0(26, 0);
                    l0.b0.l0(26, 1);
                    return;
                } else {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                    return;
                }
            }
            return;
        }
        if (i35 == 34) {
            if ((b6 & 255) == 1) {
                o1.u.i();
                return;
            }
            return;
        }
        switch (i35) {
            case 36:
                if (SystemProperties.getInt("persist.fyt.lzgmtype", 0) == 4) {
                    int i41 = b6 & 255;
                    if (i41 == 1) {
                        z.k.s(227, 198, 2, 2, 2);
                    } else if (i41 == 0) {
                        z.k.s(227, 198, 2, 2, 0);
                    }
                } else if (this.F != b6) {
                    this.F = b6;
                    if (b6 == 1) {
                        l0.b0.l0(0, 0);
                    } else if (b6 == 0) {
                        l0.b0.l0(0, 1);
                    }
                }
                break;
            case 37:
                if (SystemProperties.getInt("persist.fyt.lzgmtype", 0) == 4) {
                    while (i4 < (b6 & 255)) {
                        z.k.s(227, 198, 2, 2, 3);
                        a.i.a0(100L);
                        z.k.s(227, 198, 2, 2, 0);
                        i4++;
                    }
                } else if (S == 1) {
                    for (int i42 = 0; i42 < (b6 & 255); i42++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                }
                break;
            case 38:
                if (SystemProperties.getInt("persist.fyt.lzgmtype", 0) == 4) {
                    while (i4 < (b6 & 255)) {
                        z.k.s(227, 198, 2, 2, 4);
                        a.i.a0(100L);
                        z.k.s(227, 198, 2, 2, 0);
                        i4++;
                    }
                } else if (S == 1) {
                    for (int i43 = 0; i43 < (b6 & 255); i43++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                break;
            case 39:
                if ((b6 & 255) == 1) {
                    if (nt.f8633a == 5439943) {
                        o1.u.i();
                    } else {
                        o1.u.c1();
                    }
                }
                break;
            default:
                switch (i35) {
                    case 41:
                        if (SystemProperties.getInt("persist.fyt.lzgmtype", 0) == 4) {
                            if (o1.u.a0()) {
                                int i44 = b6 & 255;
                                if (i44 == 1) {
                                    z.k.s(227, 198, 2, 2, 10);
                                } else if (i44 == 0) {
                                    z.k.s(227, 198, 2, 2, 0);
                                }
                            } else if ((b6 & 255) == 1) {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                            }
                        } else if ((b6 & 255) == 1) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                        break;
                    case 42:
                        if (SystemProperties.getInt("persist.fyt.lzgmtype", 0) == 4) {
                            if (o1.u.a0()) {
                                int i45 = b6 & 255;
                                if (i45 == 1) {
                                    z.k.s(227, 198, 2, 2, 1);
                                } else if (i45 == 0) {
                                    z.k.s(227, 198, 2, 2, 0);
                                }
                            } else if ((b6 & 255) == 1) {
                                l0.b0.l0(5, 0);
                                l0.b0.l0(5, 1);
                            }
                        } else if ((b6 & 255) == 1) {
                            l0.b0.l0(5, 0);
                            l0.b0.l0(5, 1);
                        }
                        break;
                    case 43:
                        if (SystemProperties.getInt("persist.fyt.lzgmtype", 0) != 4) {
                            for (int i46 = 0; i46 < (b6 & 255); i46++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                        } else if (o1.u.a0()) {
                            while (i4 < (b6 & 255)) {
                                z.k.s(227, 198, 2, 2, 6);
                                a.i.a0(100L);
                                z.k.s(227, 198, 2, 2, 0);
                                i4++;
                            }
                        } else {
                            for (int i47 = 0; i47 < (b6 & 255); i47++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                        }
                        break;
                    case 44:
                        if (SystemProperties.getInt("persist.fyt.lzgmtype", 0) != 4) {
                            for (int i48 = 0; i48 < (b6 & 255); i48++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                        } else if (o1.u.a0()) {
                            while (i4 < (b6 & 255)) {
                                z.k.s(227, 198, 2, 2, 5);
                                a.i.a0(100L);
                                z.k.s(227, 198, 2, 2, 0);
                                i4++;
                            }
                        } else {
                            for (int i49 = 0; i49 < (b6 & 255); i49++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                        }
                        break;
                    case 45:
                        if (SystemProperties.getInt("persist.fyt.lzgmtype", 0) == 4) {
                            if (o1.u.a0()) {
                                int i50 = b6 & 255;
                                if (i50 == 1) {
                                    z.k.s(227, 198, 2, 2, 7);
                                } else if (i50 == 0) {
                                    z.k.s(227, 198, 2, 2, 0);
                                }
                            } else if ((b6 & 255) == 1) {
                                l0.b0.l0(29, 0);
                                l0.b0.l0(29, 1);
                            }
                        } else if ((b6 & 255) == 1) {
                            l0.b0.l0(29, 0);
                            l0.b0.l0(29, 1);
                        }
                        break;
                    default:
                        int i51 = b6 & 255;
                        if (i51 == 1) {
                            if (i33 < iArr.length) {
                                l0.b0.l0(iArr[i33][1], 0);
                            }
                        } else if (i51 == 0) {
                            int i52 = this.f10786h;
                            if (i52 < iArr.length && i52 != 255) {
                                l0.b0.l0(iArr[i52][1], 1);
                            }
                            this.f10786h = 255;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.G.j();
        u0.c.f17386m.d(this.I);
        l0.b0.p0(this.J);
        y0.g.f18110t.d(this.f10796r);
        h0.d.f2462a.d(this.f10792n);
        u0.c.f17374a.d(this.f10794p);
        l0.b0.o0(this.f10791m);
        u0.c.f17399z.d(this.f10789k);
        y0.g.f18101k.d(new b());
        switch (nt.f8633a) {
            case 10027464:
            case 10158536:
            case 11534792:
            case 11600328:
            case 11665864:
                if (qt.n0("/sys/fytver/fyt_bin_version").contains("Ls18") || qt.n0("/sys/fytver/fyt_bin_version").contains("Lt18")) {
                    if (g.f.n(11) || g.f.n(9)) {
                        if (SystemProperties.getInt("sys.fyt.cvbs_0.bus_width", 0) != 4) {
                            SystemProperties.set("sys.fyt.cvbs_0.bus_width", ProxyProperties.LOCAL_EXCL_LIST);
                        }
                        if (SystemProperties.get("persist.lesc.customer_platform").equals("8918L")) {
                            SystemProperties.set("persist.lesc.customer_platform", "8918");
                            qt.r0();
                        }
                    } else if (g.f.n(13)) {
                        if (SystemProperties.getInt("sys.fyt.cvbs_2.bus_width", 0) == 4) {
                            SystemProperties.set("sys.fyt.cvbs_2.bus_width", ProxyProperties.LOCAL_EXCL_LIST);
                            qt.r0();
                        }
                        if (SystemProperties.get("persist.lesc.customer_platform").equals("8918L")) {
                            SystemProperties.set("persist.lesc.customer_platform", "8918");
                            qt.r0();
                        }
                    }
                }
                break;
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 113) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                if ((iArr[0] & 255) == 254) {
                    v3(iArr[1]);
                } else if ((iArr[0] & 255) == 253) {
                    t3(iArr[1]);
                } else if ((iArr[0] & 255) == 252) {
                    n3(iArr[1]);
                } else if ((iArr[0] & 255) == 250) {
                    p3(iArr[1]);
                } else if ((iArr[0] & 255) == 247) {
                    u3(iArr[1]);
                } else if ((iArr[0] & 255) == 246) {
                    o3(iArr[1]);
                } else if ((iArr[0] & 255) != 0) {
                    z.k.s(227, 198, 2, iArr[0], iArr[1]);
                } else {
                    r3(iArr[1]);
                }
                break;
            case 1:
                z.k.s(227, 200, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                break;
            case 2:
                if (iArr[0] == 0) {
                    if (!SystemProperties.getBoolean("persist.lesc.video.ignore", false)) {
                        y0.h.u0(O);
                    }
                    int i3 = h0.c.E;
                    if ((i3 == 3 || i3 == 4 || i3 == 5) && !this.f10799u) {
                        a3(true);
                    }
                } else {
                    this.f10793o = 15;
                }
                z.k.s(227, 192, 1, iArr[0]);
                break;
            case 3:
                z.k.s(227, 193, 1, iArr[0]);
                break;
            case 4:
                z.k.s(227, 194, 1, iArr[0]);
                break;
            case 5:
                s3(iArr[0]);
                q3(iArr[1]);
                break;
            case 6:
                if (nt.U == 1) {
                    o1.x.x(nt.f8643f, 1001, iArr[0]);
                }
                break;
            case 7:
                z.k.s(227, 144, 2, iArr[0], iArr[1]);
                break;
        }
    }

    public final void a3(boolean z2) {
        if (u0.b.f17306a0 == 0) {
            return;
        }
        n1.b bVarP = a.f.p();
        LogType logType = LogType.CANBUS;
        bVarP.t(logType, "SoundChangeTo 1111111=== " + this.f10799u);
        if (this.f10799u == z2) {
            return;
        }
        this.f10799u = z2;
        a.f.p().t(logType, "SoundChangeTo 222222=== " + this.f10799u);
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

    public final void n3(int i2) {
        qt.y0(99, i2);
        P = i2;
        int iB = this.G.b(11, 22);
        int i3 = P;
        if (iB != i3) {
            this.G.g(11, i3);
        }
    }

    public final void o3(int i2) {
        qt.y0(111, i2);
        z.k.s(227, 198, 2, 3, i2);
        R = i2;
        int iB = this.G.b(12, 0);
        int i3 = R;
        if (iB != i3) {
            this.G.g(12, i3);
        }
    }

    public final void p3(int i2) {
        qt.y0(110, i2);
        Q = i2;
        int iB = this.G.b(13, 0);
        int i3 = Q;
        if (iB != i3) {
            this.G.g(13, i3);
        }
    }

    public final void q3(int i2) {
        qt.y0(103, 65535 & i2);
        N = i2;
        if (this.G.b(9, 0) != N) {
            SystemProperties.set("persist.sys.height", String.format(Locale.US, "%d", Integer.valueOf(N)));
            this.G.g(9, N);
        }
    }

    public final void r3(int i2) {
        qt.y0(109, i2);
        z.k.s(227, 198, 2, 0, i2);
        T = i2;
        int iB = this.G.b(1, 0);
        int i3 = T;
        if (iB != i3) {
            this.G.g(1, i3);
        }
    }

    public final void s3(int i2) {
        qt.y0(102, 65535 & i2);
        M = i2;
        if (this.G.b(8, 0) != M) {
            SystemProperties.set("persist.sys.width", String.format(Locale.US, "%d", Integer.valueOf(M)));
            this.G.g(8, M);
        }
    }

    public final void t3(int i2) {
        qt.y0(98, i2);
        O = i2;
        int iB = this.G.b(10, 20);
        int i3 = O;
        if (iB != i3) {
            this.G.g(10, i3);
        }
    }

    public final void u3(int i2) {
        qt.y0(100, i2);
        S = i2;
        int iB = this.G.b(25, 0);
        int i3 = S;
        if (iB != i3) {
            this.G.g(25, i3);
        }
    }

    public final void v3(int i2) {
        qt.y0(101, i2);
        L = i2;
        f1.q qVarE = f1.o.g().e(15);
        if (qVarE != null && (qVarE instanceof f1.l)) {
            int i3 = L;
            if (i3 == 0) {
                ((f1.l) qVarE).d0(-1);
            } else if (i3 == 1) {
                ((f1.l) qVarE).d0(222);
            } else if (i3 == 2) {
                ((f1.l) qVarE).d0(218);
            } else if (i3 == 3) {
                ((f1.l) qVarE).d0(219);
            }
        }
        int iB = this.G.b(7, 0);
        int i4 = L;
        if (iB != i4) {
            this.G.g(7, i4);
        }
    }
}

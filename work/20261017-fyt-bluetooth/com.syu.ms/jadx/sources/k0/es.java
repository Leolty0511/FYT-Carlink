package k0;

import android.net.ProxyProperties;
import android.os.SystemProperties;
import com.syu.jni.ToolsJni;
import java.util.Locale;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class es extends lt {
    public static int I = 255;
    public static int J = 0;
    public static int K = 20;
    public static int L = 30;
    public static int M;
    public static int N;
    public static int O;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4968i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4961b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4962c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4963d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4964e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4965f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4966g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4967h = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4969j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f4970k = {new int[]{0, -1}, new int[]{1, 34}, new int[]{2, 35}, new int[]{3, 32}, new int[]{4, 33}, new int[]{5, 82}, new int[]{6, 81}, new int[]{7, 80}, new int[]{8, 5}, new int[]{9, 54}, new int[]{10, -1}, new int[]{11, 18}, new int[]{12, 6}, new int[]{13, 55}, new int[]{14, 1}, new int[]{15, 38}, new int[]{16, 2}, new int[]{17, 18}, new int[]{18, 26}, new int[]{19, 50}, new int[]{20, 13}, new int[]{23, 3}, new int[]{24, 4}, new int[]{25, 16}, new int[]{26, 0}, new int[]{27, -1}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f4971l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f4972m = new d();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f4973n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f4974o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f4975p = new f();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f4976q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f4977r = new g();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f4978s = new h();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f4979t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f4980u = new i();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f4981v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f4982w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f4983x = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f4984y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f4985z = 10;
    public final int A = 11;
    public final int B = 15;
    public final int C = 23;
    public final int D = 25;
    public o1.g0 E = new o1.g0(getClass().getSimpleName(), 32);
    public int F = 0;
    public Runnable G = new j();
    public Runnable H = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            es esVar = es.this;
            int i2 = esVar.F - 1;
            esVar.F = i2;
            if (i2 <= 0) {
                l0.b0.p0(esVar.H);
                es.this.F = 6;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 2, 48, 0);
                z.k.s(227, 144, 2, 56, 0);
                z.k.s(227, 144, 2, 53, 0);
                if ((qt.n0("/sys/fytver/fyt_bin_version").contains("Ls18") || qt.n0("/sys/fytver/fyt_bin_version").contains("Lt18")) && SystemProperties.getBoolean("persist.lsec.c8918L.dual_port", true)) {
                    SystemProperties.set("persist.lsec.c8918L.dual_port", "false");
                }
                es esVar2 = es.this;
                esVar2.o3(esVar2.E.b(10, 20));
                es esVar3 = es.this;
                esVar3.l3(esVar3.E.b(11, 36));
                es esVar4 = es.this;
                esVar4.p3(esVar4.E.b(15, 0));
                es esVar5 = es.this;
                esVar5.m3(esVar5.E.b(23, 0));
                es esVar6 = es.this;
                esVar6.n3(esVar6.E.b(25, 0));
                if (o1.u.S(a.b.Q) || u0.b.D == 13) {
                    return;
                }
                a.f.p().t(LogType.CANBUS, "HandlerSound.volSrcCmd 3333333  = " + es.L + "----DataMain.sAppId = " + u0.b.D);
                y0.h.u0(es.L);
                z.k.s(227, 192, 2, 1, 0);
            }
        }
    }

    public class b implements o1.p {
        public b() {
        }

        @Override // o1.p
        public void d(Object obj) {
            es esVar = es.this;
            int i2 = esVar.f4981v;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                esVar.f4981v = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (esVar.f4983x) {
                        esVar.a3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    esVar.a3(true);
                } else if (y0.f.Q0 == 0) {
                    esVar.a3(false);
                }
            }
        }
    }

    public class c implements o1.p {
        public c() {
        }

        @Override // o1.p
        public void d(Object obj) {
            es esVar = es.this;
            int i2 = esVar.f4981v;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                esVar.f4981v = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (esVar.f4983x) {
                        esVar.a3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    esVar.a3(true);
                } else if (y0.f.Q0 == 0) {
                    esVar.a3(false);
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17366w;
            if (i2 == 0) {
                qt.y0(99, 0);
            } else {
                if (i2 != 1) {
                    return;
                }
                qt.y0(99, 1);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17357r0 == 0) {
                es esVar = es.this;
                int i2 = esVar.f4962c;
                if (i2 >= 0) {
                    esVar.f4962c = i2 - 1;
                } else if (esVar.f4961b == 1 || esVar.f4963d == 1 || es.J == 1) {
                    qt.y0(117, 1);
                    if (!o1.u.a0()) {
                        SystemProperties.set("persist.lesc.video.ignore", "true");
                        a.i.a0(200L);
                        o1.u.z();
                        float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                        es.this.f4967h = y0.f.f18037c;
                        y0.h.t0((int) f2);
                        es.this.f4965f = true;
                    }
                    u0.d.C2(0);
                }
            }
            es esVar2 = es.this;
            int i3 = esVar2.f4976q;
            if (i3 > 0) {
                int i4 = i3 - 1;
                esVar2.f4976q = i4;
                if (i4 == 0 && u0.b.D != 13) {
                    y0.h.u0(es.L);
                    es esVar3 = es.this;
                    if (esVar3.f4983x) {
                        esVar3.a3(false);
                    }
                }
            }
            if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                es esVar4 = es.this;
                int i5 = esVar4.f4973n + 1;
                esVar4.f4973n = i5;
                if (i5 >= 2) {
                    z.k.s(227, 144, 2, 41, 0);
                    es.this.f4973n = 0;
                }
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 13 || o1.u.S(a.b.Q)) {
                int i2 = h0.c.E;
                if (i2 == 3 || i2 == 4 || i2 == 5) {
                    es.this.a3(true);
                } else {
                    es.this.a3(false);
                }
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = es.I;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13) {
                    if (es.I == 13) {
                        y0.h.u0(es.L);
                    }
                    es esVar = es.this;
                    if (esVar.f4983x) {
                        esVar.a3(false);
                    }
                }
                es.I = u0.b.D;
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = es.J;
            int i3 = nt.Q;
            if (i2 != i3) {
                es.J = i3;
                if (u0.b.f17357r0 == 0) {
                    int i4 = es.J;
                    if (i4 == 1) {
                        es.this.f4962c = 5;
                        return;
                    }
                    if (i4 == 0) {
                        if (es.this.f4965f && o1.u.a0()) {
                            o1.u.k();
                            a.i.a0(350L);
                            SystemProperties.set("persist.lesc.video.ignore", "false");
                            y0.h.t0(es.this.f4967h);
                            a.f.p().t(LogType.CANBUS, "Out iJumppage = " + es.this.f4965f + " ----JumpPage.isCarUiTop() = " + o1.u.a0());
                        }
                        es.this.f4965f = false;
                    }
                }
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            es.this.f4979t = y0.f.Q0;
            a.f.p().t(LogType.CANBUS, "mCarSendNaviSound DataSound.sNaviSoundOn= " + y0.f.Q0);
            if (u0.b.D != 13) {
                es esVar = es.this;
                if (esVar.f4983x) {
                    esVar.a3(false);
                    return;
                }
                return;
            }
            int i2 = y0.f.Q0;
            if (i2 != 0) {
                if (i2 != 1) {
                    return;
                }
                es.this.a3(true);
            } else if (u0.b.j4 == 0) {
                es.this.a3(false);
            }
        }
    }

    public class j implements Runnable {
        public j() {
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
            l0.b0.b(es.this.H);
            es.this.F = 5;
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.E.a();
        u0.c.f17386m.a(this.G, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
        mtVar.f8317l = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
        y0.g.f18110t.a(this.f4980u, 1);
        y0.g.f18101k.a(new b());
        h0.d.f2462a.a(this.f4975p, 1);
        u0.c.f17374a.a(this.f4977r, 1);
        ot.f9022d.a(this.f4978s, 1);
        l0.b0.a(this.f4974o);
        u0.c.f17399z.a(this.f4972m, 1);
        if (qt.n0("/sys/fytver/fyt_bin_version").contains("Ls18") || qt.n0("/sys/fytver/fyt_bin_version").contains("Lt18")) {
            if (g.f.n(11)) {
                if (SystemProperties.getInt("sys.fyt.cvbs_0.bus_width", 0) != 4) {
                    SystemProperties.set("sys.fyt.cvbs_0.bus_width", "4");
                    qt.r0();
                }
                if (SystemProperties.get("persist.lesc.customer_platform").equals("8918L")) {
                    return;
                }
                SystemProperties.set("persist.lesc.customer_platform", "8918L");
                qt.r0();
                return;
            }
            if (g.f.n(13)) {
                if (SystemProperties.getInt("sys.fyt.cvbs_2.bus_width", 0) != 4) {
                    SystemProperties.set("sys.fyt.cvbs_2.bus_width", "4");
                    qt.r0();
                }
                if (SystemProperties.get("persist.lesc.customer_platform").equals("8918L")) {
                    return;
                }
                SystemProperties.set("persist.lesc.customer_platform", "8918L");
                qt.r0();
            }
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f4969j = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f4970k;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f4969j;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f4968i = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f4969j;
            if (i6 == 8) {
                if (this.f4971l != b4) {
                    if (o1.u.S(a.b.Q)) {
                        if (b4 == 2 && this.f4971l == 1 && this.f4961b == 0 && this.f4963d == 0) {
                            l0.b0.l0(5, 0);
                            l0.b0.l0(5, 1);
                        }
                    } else if (b4 == 2 && this.f4971l == 1) {
                        o1.u.z();
                    } else if (b4 == 0 && this.f4971l == 1) {
                        l0.b0.l0(5, 0);
                        l0.b0.l0(5, 1);
                    }
                    this.f4971l = b4;
                }
                return;
            }
            if (i6 == 10) {
                if ((b4 & 255) != 1 || o1.u.S(a.b.Q)) {
                    return;
                }
                o1.u.z();
                return;
            }
            if (i6 == 26) {
                if (M == 1 && (b4 & 255) == 1) {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                    return;
                }
                return;
            }
            if (i6 == 21) {
                if (M == 1 && (b4 & 255) == 1) {
                    l0.b0.l0(7, 0);
                    l0.b0.l0(7, 1);
                    return;
                }
                return;
            }
            if (i6 == 22) {
                if (M == 1 && (b4 & 255) == 1) {
                    l0.b0.l0(8, 0);
                    l0.b0.l0(8, 1);
                    return;
                }
                return;
            }
            switch (i6) {
                case 12:
                    if (this.f4971l != b4) {
                        if (o1.u.S(a.b.Q)) {
                            if (b4 == 2 && this.f4971l == 1 && this.f4961b == 0 && this.f4963d == 0) {
                                l0.b0.l0(5, 0);
                                l0.b0.l0(5, 1);
                            }
                        } else if (b4 == 2 && this.f4971l == 1) {
                            o1.u.z();
                        } else if (b4 == 0 && this.f4971l == 1) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                        this.f4971l = b4;
                    }
                    break;
                case 13:
                    if ((b4 & 255) == 1 && !o1.u.S(a.b.Q)) {
                        l0.b0.l0(55, 0);
                        l0.b0.l0(55, 1);
                        break;
                    }
                    break;
                case 14:
                    if ((b4 & 255) == 1 && !o1.u.S(a.b.Q)) {
                        l0.b0.l0(1, 0);
                        l0.b0.l0(1, 1);
                        break;
                    }
                    break;
                case 15:
                    if ((b4 & 255) == 1 && !o1.u.S(a.b.Q)) {
                        l0.b0.l0(38, 0);
                        l0.b0.l0(38, 1);
                        break;
                    }
                    break;
                case 16:
                    if (this.f4971l != b4) {
                        if (o1.u.S(a.b.Q)) {
                            if (b4 == 2 && this.f4971l == 1 && this.f4961b == 0 && this.f4963d == 0) {
                                l0.b0.l0(5, 0);
                                l0.b0.l0(5, 1);
                            }
                        } else if (b4 == 2 && this.f4971l == 1) {
                            o1.u.z();
                        }
                        this.f4971l = b4;
                    }
                    break;
                default:
                    int i7 = b4 & 255;
                    if (i7 != 1) {
                        if (i7 == 0) {
                            int i8 = this.f4968i;
                            if (i8 < iArr.length && i8 != 255) {
                                l0.b0.l0(iArr[i8][1], 1);
                            }
                            this.f4968i = 255;
                        }
                    } else if (i4 < iArr.length) {
                        l0.b0.l0(iArr[i4][1], 0);
                    }
                    break;
            }
        }
        if (b2 == 41) {
            qt.j(bArr[i2 + 3], 0, (bArr[i2 + 2] & 1) == 1 ? 0 : 1, 50);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 53) {
            int i9 = i2 + 2;
            qt.y0(98, (bArr[i9] >> 2) & 1);
            qt.y0(99, (bArr[i9] >> 3) & 1);
            qt.y0(100, (bArr[i9] >> 4) & 1);
            qt.y0(101, (bArr[i9] >> 5) & 1);
            l0.c0.N1((bArr[i9] >> 5) & 1, (bArr[i9] >> 4) & 1, 0);
            qt.y0(107, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(106, (bArr[i2 + 14] & 255) | ((bArr[i2 + 13] << 8) & 65280));
            return;
        }
        if (b2 == 56) {
            qt.y0(112, bArr[i2 + 3] & 255);
            qt.y0(116, bArr[i2 + 4] & 255);
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.b1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.b1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i10 = i2 + 2;
                int i11 = bArr[i10] & 255;
                int i12 = i2 + 3;
                int i13 = bArr[i12] & 255;
                int i14 = i2 + 4;
                int i15 = bArr[i14] & 255;
                int i16 = i2 + 5;
                int i17 = bArr[i16] & 255;
                if (i11 == 0 && i13 == 0 && i15 == 0 && i17 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i11 || l0.c0.f13014h != i13 || l0.c0.f13015i != i15 || l0.c0.f13016j != i17) && this.f4964e == 1 && this.f4961b == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 8;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i11;
                l0.c0.f13014h = i13;
                l0.c0.f13015i = i15;
                l0.c0.f13016j = i17;
                u0.d.D2(l0.c0.b1(bArr[i10] & 255));
                u0.d.E2(l0.c0.E0(bArr[i12] & 255));
                u0.d.F2(l0.c0.E0(bArr[i14] & 255));
                u0.d.G2(l0.c0.b1(bArr[i16] & 255));
                break;
            case 36:
                byte b5 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b5 >> 6) & 1);
                    qt.y0(1, (b5 >> 7) & 1);
                } else {
                    qt.y0(2, (b5 >> 7) & 1);
                    qt.y0(1, (b5 >> 6) & 1);
                }
                qt.y0(4, (b5 >> 5) & 1);
                qt.y0(3, (b5 >> 4) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                qt.y0(0, (b5 >> 2) & 1);
                int i18 = i2 + 3;
                qt.y0(102, (bArr[i18] >> 5) & 1);
                qt.y0(104, (bArr[i18] >> 3) & 1);
                if (this.f4961b != ((bArr[i18] >> 2) & 1) || this.f4963d != ((bArr[i18] >> 6) & 1)) {
                    int i19 = (bArr[i18] >> 2) & 1;
                    this.f4961b = i19;
                    int i20 = (bArr[i18] >> 6) & 1;
                    this.f4963d = i20;
                    if (u0.b.f17357r0 == 0) {
                        if (i19 == 1 || i20 == 1) {
                            this.f4962c = 5;
                        } else if (i19 == 0 && i20 == 0) {
                            if (this.f4965f && o1.u.a0()) {
                                o1.u.k();
                                a.i.a0(350L);
                                SystemProperties.set("persist.lesc.video.ignore", "false");
                                y0.h.t0(this.f4967h);
                                a.f.p().t(LogType.CANBUS, "Out iJumppage = " + this.f4965f + " ----JumpPage.isCarUiTop() = " + o1.u.a0());
                            }
                            this.f4965f = false;
                        }
                    } else if (qt.k0()) {
                        int i21 = this.f4963d;
                        if (i21 == 1) {
                            if (!o1.u.S("com.syu.fourcamera2")) {
                                c.e.d().c(590);
                                this.f4965f = true;
                            }
                        } else if (i21 == 0) {
                            if (o1.u.S("com.syu.fourcamera2") && this.f4965f) {
                                c.e.d().c(614);
                            }
                            this.f4965f = false;
                        }
                    }
                }
                if (this.f4964e != ((bArr[i18] >> 7) & 1)) {
                    int i22 = (bArr[i18] >> 7) & 1;
                    this.f4964e = i22;
                    if (i22 == 1 && this.f4961b == 0 && this.F == 6) {
                        if (O != 1) {
                            u0.d.C2(1);
                        } else if (!o1.u.a0()) {
                            this.f4966g = true;
                            o1.u.z();
                        }
                    } else if (O != 1) {
                        u0.d.C2(0);
                    } else {
                        if (this.f4966g && o1.u.a0()) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                        this.f4966g = false;
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.E.j();
        u0.c.f17386m.d(this.G);
        l0.b0.p0(this.H);
        y0.g.f18110t.d(this.f4980u);
        h0.d.f2462a.d(this.f4975p);
        u0.c.f17374a.d(this.f4977r);
        l0.b0.o0(this.f4974o);
        u0.c.f17399z.d(this.f4972m);
        ot.f9022d.d(this.f4978s);
        if (qt.n0("/sys/fytver/fyt_bin_version").contains("Ls18") || qt.n0("/sys/fytver/fyt_bin_version").contains("Lt18")) {
            if (!SystemProperties.getBoolean("persist.lsec.c8918L.dual_port", true)) {
                SystemProperties.set("persist.lsec.c8918L.dual_port", "true");
                qt.r0();
            }
            if (g.f.n(11)) {
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
        y0.g.f18101k.d(new c());
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 118) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            if (i2 == 1) {
                z.k.s(227, 144, 2, iArr[0], iArr[1]);
                return;
            }
            if (i2 != 2) {
                if (i2 == 3) {
                    z.k.s(227, 200, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                    return;
                } else {
                    if (i2 == 6 && nt.U == 1) {
                        o1.x.x(nt.f8643f, 1001, iArr[0]);
                        return;
                    }
                    return;
                }
            }
            if (iArr[0] == 0) {
                if (!SystemProperties.getBoolean("persist.lesc.video.ignore", false)) {
                    y0.h.u0(K);
                }
                int i3 = h0.c.E;
                if ((i3 == 3 || i3 == 4 || i3 == 5) && !this.f4983x) {
                    a3(true);
                }
            } else {
                this.f4976q = 15;
            }
            if (iArr[0] != 1 || (l0.c0.f13026t == 0 && l0.c0.f13024r == 0 && l0.c0.f13028v == 0 && !l0.c0.f13023q)) {
                z.k.s(227, 192, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if ((iArr[0] & 255) == 253) {
            o3(iArr[1]);
            return;
        }
        if ((iArr[0] & 255) == 252) {
            l3(iArr[1]);
            return;
        }
        if ((iArr[0] & 255) == 247) {
            p3(iArr[1]);
            return;
        }
        if ((iArr[0] & 255) == 244) {
            m3(iArr[1]);
            return;
        }
        if ((iArr[0] & 255) == 243) {
            return;
        }
        if ((iArr[0] & 255) == 242) {
            n3(iArr[1]);
            return;
        }
        if ((iArr[0] & 255) != 5) {
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
            return;
        }
        SystemProperties.set("persist.sys.lzmazdtype", ProxyProperties.LOCAL_EXCL_LIST + iArr[1]);
        z.k.s(227, 198, 2, iArr[0], iArr[1]);
    }

    public final void a3(boolean z2) {
        if (u0.b.f17306a0 == 0) {
            return;
        }
        n1.b bVarP = a.f.p();
        LogType logType = LogType.CANBUS;
        bVarP.t(logType, "SoundChangeTo 1111111=== " + this.f4983x);
        if (this.f4983x == z2) {
            return;
        }
        this.f4983x = z2;
        a.f.p().t(logType, "SoundChangeTo 222222=== " + this.f4983x);
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

    public final void l3(int i2) {
        qt.y0(110, i2);
        L = i2;
        int iB = this.E.b(11, 36);
        int i3 = L;
        if (iB != i3) {
            this.E.g(11, i3);
        }
    }

    public final void m3(int i2) {
        qt.y0(113, i2);
        N = i2;
        if (this.E.b(23, 0) != N) {
            SystemProperties.set("persist.sys.allscreenon", String.format(Locale.US, "%d", Integer.valueOf(N)));
            this.E.g(23, N);
        }
    }

    public final void n3(int i2) {
        qt.y0(114, i2);
        O = i2;
        int iB = this.E.b(25, 0);
        int i3 = O;
        if (iB != i3) {
            this.E.g(25, i3);
        }
    }

    public final void o3(int i2) {
        qt.y0(109, i2);
        K = i2;
        int iB = this.E.b(10, 20);
        int i3 = K;
        if (iB != i3) {
            this.E.g(10, i3);
        }
    }

    public final void p3(int i2) {
        qt.y0(111, i2);
        M = i2;
        int iB = this.E.b(15, 0);
        int i3 = M;
        if (iB != i3) {
            this.E.g(15, i3);
        }
    }
}

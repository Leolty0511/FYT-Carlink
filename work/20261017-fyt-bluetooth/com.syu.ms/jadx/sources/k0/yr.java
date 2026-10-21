package k0;

import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import com.syu.jni.ToolsJni;
import java.util.Locale;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class yr extends lt implements o1.q {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static int f12619a0 = 255;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static int f12620b0 = 20;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static int f12621c0 = 36;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static int f12622d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static int f12623e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static int f12624f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static int f12625g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static int f12626h0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12633h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12627b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12628c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12629d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f12630e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f12631f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12632g = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12634i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f12635j = {new int[]{1, 34}, new int[]{2, 35}, new int[]{3, 32}, new int[]{4, 33}, new int[]{5, 82}, new int[]{6, 81}, new int[]{7, 80}, new int[]{8, 5}, new int[]{9, 54}, new int[]{10, -1}, new int[]{11, 18}, new int[]{12, 6}, new int[]{13, 55}, new int[]{14, 1}, new int[]{15, 38}, new int[]{16, 2}, new int[]{17, 18}, new int[]{18, 26}, new int[]{19, 50}, new int[]{20, 13}, new int[]{23, 3}, new int[]{24, 4}, new int[]{25, 16}, new int[]{26, 0}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final byte[] f12636k = new byte[1024];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f12637l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f12638m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f12639n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f12640o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f12641p = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f12642q = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f12643r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f12644s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f12645t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f12646u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f12647v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f12648w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f12649x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f12650y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f12651z = 0;
    public int A = 0;
    public Runnable B = new d();
    public Runnable C = new e();
    public Runnable D = new h();
    public Runnable E = new i();
    public int F = 0;
    public Runnable G = new j();
    public Runnable H = new k();
    public int I = 0;
    public Runnable J = new l();
    public int K = 0;
    public Runnable L = new a();
    public int M = 0;
    public boolean N = false;
    public boolean O = false;
    public boolean P = false;
    public final int Q = 10;
    public final int R = 11;
    public final int S = 15;
    public final int T = 23;
    public final int U = 24;
    public final int V = 25;
    public o1.g0 W = new o1.g0(getClass().getSimpleName(), 32);
    public int X = 10;
    public Runnable Y = new b();
    public Runnable Z = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            yr.this.K = y0.f.Q0;
            a.f.p().t(LogType.CANBUS, "mCarSendNaviSound DataSound.sNaviSoundOn= " + y0.f.Q0);
            if (u0.b.D != 13) {
                yr yrVar = yr.this;
                if (yrVar.O) {
                    yrVar.c3(false);
                    return;
                }
                return;
            }
            int i2 = y0.f.Q0;
            if (i2 != 0) {
                if (i2 != 1) {
                    return;
                }
                yr.this.c3(true);
            } else if (u0.b.j4 == 0) {
                yr.this.c3(false);
            }
        }
    }

    public class b implements Runnable {
        public b() {
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
            l0.b0.b(yr.this.Z);
            yr.this.X = 10;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            yr yrVar = yr.this;
            int i2 = yrVar.X - 1;
            yrVar.X = i2;
            if (i2 <= 0 || i2 >= 10) {
                l0.b0.p0(yrVar.Z);
                yr.this.X = 11;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                yr.y3(new byte[]{46, -127, 1, 1, 0});
                z.k.s(227, 144, 2, 48, 0);
                z.k.s(227, 144, 2, 56, 0);
                yr yrVar2 = yr.this;
                yrVar2.w3(yrVar2.W.b(10, 20));
                yr yrVar3 = yr.this;
                yrVar3.s3(yrVar3.W.b(11, 36));
                yr yrVar4 = yr.this;
                yrVar4.x3(yrVar4.W.b(15, 0));
                yr yrVar5 = yr.this;
                yrVar5.t3(yrVar5.W.b(23, 0));
                yr yrVar6 = yr.this;
                yrVar6.u3(yrVar6.W.b(24, 0));
                yr yrVar7 = yr.this;
                yrVar7.v3(yrVar7.W.b(25, 0));
                if (!o1.u.S(a.b.Q) && u0.b.D != 13) {
                    y0.h.u0(yr.f12621c0);
                    z.k.s(227, 192, 2, 1, 0);
                } else if (o1.u.S(a.b.Q)) {
                    l0.b0.l0(5, 0);
                    l0.b0.l0(5, 1);
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            yr yrVar = yr.this;
            yrVar.A++;
            if (yrVar.X == 11) {
                yrVar.b3();
                yr yrVar2 = yr.this;
                if (yrVar2.A > 2) {
                    yrVar2.A = 0;
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
                yr.this.f12649x = 255;
            } else {
                yr.this.f12649x = i2;
            }
            yr.this.b3();
        }
    }

    public class f implements o1.p {
        public f() {
        }

        @Override // o1.p
        public void d(Object obj) {
            yr yrVar = yr.this;
            int i2 = yrVar.M;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                yrVar.M = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (yrVar.O) {
                        yrVar.c3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    yrVar.c3(true);
                } else if (y0.f.Q0 == 0) {
                    yrVar.c3(false);
                }
            }
        }
    }

    public class g implements o1.p {
        public g() {
        }

        @Override // o1.p
        public void d(Object obj) {
            yr yrVar = yr.this;
            int i2 = yrVar.M;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                yrVar.M = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (yrVar.O) {
                        yrVar.c3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    yrVar.c3(true);
                } else if (y0.f.Q0 == 0) {
                    yrVar.c3(false);
                }
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17357r0 == 0) {
                a.f.p().t(LogType.CANBUS, "mCarBackDelayTime  = " + yr.f12625g0 + "----DataMain.sAppId = " + u0.b.D);
                if (yr.f12624f0 == 1) {
                    if (yr.f12625g0 > 0) {
                        yr.j3();
                    }
                    if (yr.f12625g0 <= 0) {
                        yr yrVar = yr.this;
                        if (yrVar.f12627b == 0 && yrVar.f12628c == 0) {
                            a.i.a0(100L);
                            if (yr.this.f12630e && o1.u.a0()) {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                                y0.h.t0(yr.this.f12632g);
                            }
                            SystemProperties.set("persist.lesc.video.ignore", "false");
                            yr.this.f12630e = false;
                        }
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

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            yr yrVar = yr.this;
            int i2 = yrVar.I;
            if (i2 > 0) {
                int i3 = i2 - 1;
                yrVar.I = i3;
                if (i3 == 0 && u0.b.D != 13) {
                    y0.h.u0(yr.f12621c0);
                    yr yrVar2 = yr.this;
                    if (yrVar2.O) {
                        yrVar2.c3(false);
                    }
                }
            }
            if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                yr yrVar3 = yr.this;
                int i4 = yrVar3.F + 1;
                yrVar3.F = i4;
                if (i4 >= 2) {
                    z.k.s(227, 144, 2, 41, 0);
                    yr.this.F = 0;
                }
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 13 || o1.u.S(a.b.Q)) {
                int i2 = h0.c.E;
                if (i2 == 3 || i2 == 4 || i2 == 5) {
                    yr.this.c3(true);
                } else {
                    yr.this.c3(false);
                }
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = yr.f12619a0;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13) {
                    n1.b bVarP = a.f.p();
                    LogType logType = LogType.CANBUS;
                    bVarP.t(logType, "DataMain.sAppId 22222222222222 = " + u0.b.D);
                    a.f.p().t(logType, "appId_prev 3333333333333 = " + yr.f12619a0);
                    if (yr.f12619a0 == 13) {
                        y0.h.u0(yr.f12621c0);
                    }
                    yr yrVar = yr.this;
                    if (yrVar.O) {
                        yrVar.c3(false);
                    }
                }
                yr.f12619a0 = u0.b.D;
            }
        }
    }

    public static /* synthetic */ int j3() {
        int i2 = f12625g0;
        f12625g0 = i2 - 1;
        return i2;
    }

    public static void y3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (b2 ^ 255);
        z.k.q(bArr);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.W.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 1;
        mtVar.f8317l = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
        if (nt.f8633a != 7406023) {
            u0.c.f17386m.a(this.Y, 1);
            y0.g.f18110t.a(this.L, 1);
            y0.g.f18101k.a(new f());
            h0.d.f2462a.a(this.H, 1);
            u0.c.f17374a.a(this.J, 1);
            l0.b0.a(this.G);
            u0.c.f17399z.a(this.E, 1);
            l0.b0.b(this.D);
            l0.b0.b(this.B);
            y0.g.f18094d.a(this.C, 1);
            y0.g.f18095e.a(this.C, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 6) {
            int i4 = bArr[i2 + 2] & 255;
            if (i4 == 2) {
                for (int i5 = 0; i5 < (bArr[i2 + 3] & 255); i5++) {
                    switch (bArr[i2 + 4] & 255) {
                        case 2:
                            a3(48);
                            continue;
                            break;
                        case 3:
                            a3(51);
                            continue;
                            break;
                        case 4:
                            a3(28);
                            continue;
                            break;
                        case 5:
                            a3(18);
                            break;
                        case 6:
                            a3(20);
                            break;
                        case 7:
                            l0.b0.l0(8, 0);
                            l0.b0.l0(8, 1);
                            break;
                    }
                }
                return;
            }
            if (i4 != 3) {
                if (i4 == 17 && (bArr[i2 + 3] & 255) == 1 && (bArr[i2 + 4] & 255) == 7) {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                    return;
                }
                return;
            }
            for (int i6 = 0; i6 < (bArr[i2 + 3] & 255); i6++) {
                switch (bArr[i2 + 4] & 255) {
                    case 2:
                        a3(49);
                        break;
                    case 3:
                        a3(52);
                        break;
                    case 4:
                        a3(29);
                        break;
                    case 5:
                        a3(19);
                        break;
                    case 6:
                        a3(21);
                        break;
                    case 7:
                        l0.b0.l0(7, 0);
                        l0.b0.l0(7, 1);
                        break;
                }
            }
            return;
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12634i = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f12635j;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f12634i;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f12633h = i7;
                    break;
                }
                i7++;
            }
            int i9 = this.f12634i;
            if (i9 == 8) {
                if (this.f12640o != b4) {
                    if (o1.u.S(a.b.Q)) {
                        if (b4 == 2 && this.f12640o == 1 && this.f12627b == 0 && this.f12628c == 0) {
                            l0.b0.l0(5, 0);
                            l0.b0.l0(5, 1);
                        }
                    } else if (b4 == 2 && this.f12640o == 1) {
                        o1.u.z();
                    } else if (b4 == 0 && this.f12640o == 1) {
                        l0.b0.l0(5, 0);
                        l0.b0.l0(5, 1);
                    }
                    this.f12640o = b4;
                    return;
                }
                return;
            }
            if (i9 == 10) {
                if ((b4 & 255) != 1 || o1.u.S(a.b.Q)) {
                    return;
                }
                o1.u.z();
                return;
            }
            if (i9 == 26) {
                if (f12622d0 == 1 && (b4 & 255) == 1) {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                    return;
                }
                return;
            }
            if (i9 == 21) {
                if (f12622d0 == 1 && (b4 & 255) == 1) {
                    l0.b0.l0(7, 0);
                    l0.b0.l0(7, 1);
                    return;
                }
                return;
            }
            if (i9 == 22) {
                if (f12622d0 == 1 && (b4 & 255) == 1) {
                    l0.b0.l0(8, 0);
                    l0.b0.l0(8, 1);
                    return;
                }
                return;
            }
            switch (i9) {
                case 12:
                    if (this.f12640o != b4) {
                        if (o1.u.S(a.b.Q)) {
                            if (b4 == 2 && this.f12640o == 1 && this.f12627b == 0 && this.f12628c == 0) {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                            }
                        } else if (b4 == 2 && this.f12640o == 1) {
                            o1.u.z();
                        } else if (b4 == 0 && this.f12640o == 1) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                        this.f12640o = b4;
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
                    if (this.f12640o != b4) {
                        if (o1.u.S(a.b.Q)) {
                            if (b4 == 2 && this.f12640o == 1 && this.f12627b == 0 && this.f12628c == 0) {
                                l0.b0.l0(5, 0);
                                l0.b0.l0(5, 1);
                            }
                        } else if (b4 == 2 && this.f12640o == 1) {
                            o1.u.z();
                        }
                        this.f12640o = b4;
                    }
                    break;
                default:
                    int i10 = b4 & 255;
                    if (i10 == 1) {
                        if (i7 < iArr.length) {
                            l0.b0.l0(iArr[i7][1], 0);
                        }
                    } else if (i10 == 0) {
                        int i11 = this.f12633h;
                        if (i11 < iArr.length && i11 != 255) {
                            l0.b0.l0(iArr[i11][1], 1);
                        }
                        this.f12633h = 255;
                    }
                    break;
            }
        }
        if (b2 == 39) {
            int i12 = i2 + 2;
            qt.y0(10, (bArr[i12] >> 7) & 1);
            qt.y0(11, (bArr[i12] >> 6) & 1);
            qt.y0(12, (bArr[i12] >> 5) & 1);
            qt.y0(13, (bArr[i12] >> 4) & 1);
            qt.y0(65, (bArr[i12] >> 3) & 1);
            qt.y0(15, (bArr[i12] >> 2) & 1);
            qt.y0(16, (bArr[i12] >> 1) & 1);
            qt.y0(62, (bArr[i12] >> 0) & 1);
            int i13 = i2 + 3;
            qt.y0(18, (bArr[i13] >> 7) & 1);
            qt.y0(19, (bArr[i13] >> 6) & 1);
            qt.y0(20, (bArr[i13] >> 5) & 1);
            qt.y0(49, (bArr[i13] >> 4) & 1);
            qt.y0(22, (bArr[i13] >> 3) & 1);
            qt.y0(23, (bArr[i13] >> 2) & 1);
            qt.y0(24, (bArr[i13] >> 1) & 1);
            qt.y0(50, (bArr[i13] >> 0) & 1);
            int i14 = i2 + 4;
            int i15 = bArr[i14] & 255;
            int i16 = i2 + 5;
            int i17 = bArr[i16] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i15 = bArr[i16] & 255;
                i17 = bArr[i14] & 255;
            }
            if (i15 == 0) {
                qt.y0(27, -2);
            } else if (i15 == 255) {
                qt.y0(27, -3);
            } else if (i15 < 30 || i15 > 64) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, i15 * 5);
            }
            if (i17 == 0) {
                qt.y0(28, -2);
            } else if (i17 == 255) {
                qt.y0(28, -3);
            } else if (i17 < 30 || i17 > 64) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, i17 * 5);
            }
            this.f12647v = i15;
            this.f12648w = i17;
            int i18 = i2 + 6;
            this.f12646u = bArr[i18] & 255;
            qt.y0(21, bArr[i18] & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(33, (bArr[i18] >> 4) & 1);
            qt.y0(56, (bArr[i18] >> 5) & 1);
            int i19 = i2 + 7;
            qt.y0(29, (bArr[i19] >> 5) & 7);
            qt.y0(30, (bArr[i19] >> 2) & 7);
            qt.y0(37, (bArr[i19] >> 0) & 1);
            int i20 = bArr[i2 + 8] & 255;
            int i21 = bArr[i2 + 9] & 255;
            if (i20 == 0) {
                qt.y0(40, -2);
            } else if (i20 == 255) {
                qt.y0(40, -3);
            } else if (i20 < 30 || i20 > 64) {
                qt.y0(40, -1);
            } else {
                qt.y0(40, i20 * 5);
            }
            if (i21 == 0) {
                qt.y0(41, -2);
            } else if (i21 == 255) {
                qt.y0(41, -3);
            } else if (i21 < 30 || i21 > 64) {
                qt.y0(41, -1);
            } else {
                qt.y0(41, i21 * 5);
            }
            this.f12645t = i20;
            int i22 = i2 + 10;
            qt.y0(43, (bArr[i22] >> 4) & 1);
            qt.y0(44, bArr[i22] & DhcpPacket.DHCP_DOMAIN_NAME);
            this.f12644s = bArr[i22] & DhcpPacket.DHCP_DOMAIN_NAME;
            int i23 = i2 + 11;
            qt.y0(46, (bArr[i23] >> 4) & 1);
            qt.y0(47, (bArr[i23] >> 5) & 1);
            qt.y0(82, (bArr[i23] >> 2) & 1);
            qt.y0(83, (bArr[i23] >> 1) & 1);
            b3();
            return;
        }
        if (b2 == 41) {
            qt.j(bArr[i2 + 3], 0, (bArr[i2 + 2] & 1) == 1 ? 0 : 1, 50);
            return;
        }
        if (b2 == 48) {
            this.f12641p = new String(bArr, i2 + 2, i3 - 2);
            qt.L(this.f12641p + "--" + this.f12642q);
            return;
        }
        if (b2 == 53) {
            int i24 = i2 + 2;
            qt.y0(98, (bArr[i24] >> 2) & 1);
            qt.y0(99, (bArr[i24] >> 3) & 1);
            qt.y0(100, (bArr[i24] >> 4) & 1);
            this.f12650y = (bArr[i24] >> 4) & 1;
            qt.y0(101, (bArr[i24] >> 5) & 1);
            this.f12651z = (bArr[i24] >> 5) & 1;
            l0.c0.N1((bArr[i24] >> 5) & 1, (bArr[i24] >> 5) & 1, 0);
            qt.y0(105, bArr[i2 + 3] & 255);
            qt.y0(107, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(106, (bArr[i2 + 14] & 255) | ((bArr[i2 + 13] << 8) & 65280));
            return;
        }
        if (b2 == 56) {
            qt.y0(112, bArr[i2 + 3] & 255);
            return;
        }
        if (b2 == 127) {
            this.f12642q = new String(bArr, i2 + 2, i3 - 2);
            qt.L(this.f12641p + "--" + this.f12642q);
            this.X = 11;
            b3();
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
                int i25 = i2 + 2;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 3;
                int i28 = bArr[i27] & 255;
                int i29 = i2 + 4;
                int i30 = bArr[i29] & 255;
                int i31 = i2 + 5;
                int i32 = bArr[i31] & 255;
                if (i26 == 0 && i28 == 0 && i30 == 0 && i32 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i26 || l0.c0.f13014h != i28 || l0.c0.f13015i != i30 || l0.c0.f13016j != i32) && this.f12629d == 1 && this.f12627b == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 8;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i26;
                l0.c0.f13014h = i28;
                l0.c0.f13015i = i30;
                l0.c0.f13016j = i32;
                u0.d.D2(l0.c0.b1(bArr[i25] & 255));
                u0.d.E2(l0.c0.E0(bArr[i27] & 255));
                u0.d.F2(l0.c0.E0(bArr[i29] & 255));
                u0.d.G2(l0.c0.b1(bArr[i31] & 255));
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
                int i33 = i2 + 3;
                qt.y0(102, (bArr[i33] >> 5) & 1);
                qt.y0(104, (bArr[i33] >> 3) & 1);
                if (this.f12627b != ((bArr[i33] >> 2) & 1) || this.f12628c != ((bArr[i33] >> 6) & 1)) {
                    int i34 = (bArr[i33] >> 2) & 1;
                    this.f12627b = i34;
                    int i35 = (bArr[i33] >> 6) & 1;
                    this.f12628c = i35;
                    if (u0.b.f17357r0 == 0) {
                        if (i34 == 1 || i35 == 1) {
                            if (i34 == 1) {
                                SystemProperties.set("persist.lesc.video.ignore", "true");
                                a.i.a0(50L);
                            }
                            if (!this.f12630e && !o1.u.a0()) {
                                this.f12630e = true;
                                o1.u.z();
                                float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                                this.f12632g = y0.f.f18037c;
                                y0.h.t0((int) f2);
                            }
                            u0.d.C2(0);
                        } else if (i34 == 0 && i35 == 0) {
                            if (f12624f0 == 0) {
                                a.i.a0(100L);
                                if (this.f12630e && o1.u.a0()) {
                                    l0.b0.l0(6, 0);
                                    l0.b0.l0(6, 1);
                                    y0.h.t0(this.f12632g);
                                }
                                a.i.a0(50L);
                                SystemProperties.set("persist.lesc.video.ignore", "false");
                                this.f12630e = false;
                            } else {
                                f12625g0 = 10;
                            }
                        }
                    }
                }
                if (this.f12629d != ((bArr[i33] >> 7) & 1)) {
                    int i36 = (bArr[i33] >> 7) & 1;
                    this.f12629d = i36;
                    if (i36 == 1 && this.f12627b == 0 && this.X == 11) {
                        if (f12626h0 != 1) {
                            u0.d.C2(1);
                        } else if (!o1.u.a0()) {
                            this.f12631f = true;
                            o1.u.z();
                        }
                    } else if (f12626h0 == 1) {
                        if (this.f12631f && o1.u.a0()) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                        this.f12631f = false;
                    } else {
                        u0.d.C2(0);
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.W.j();
        l0.b0.p0(this.D);
        l0.b0.p0(this.B);
        u0.c.f17386m.d(this.Y);
        l0.b0.p0(this.Z);
        y0.g.f18110t.d(this.L);
        h0.d.f2462a.d(this.H);
        u0.c.f17374a.d(this.J);
        l0.b0.o0(this.G);
        u0.c.f17399z.d(this.E);
        y0.g.f18094d.d(this.C);
        y0.g.f18095e.d(this.C);
        y0.g.f18101k.d(new g());
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 116) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if ((iArr[0] & 255) == 253) {
                w3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 252) {
                s3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 247) {
                x3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 244) {
                t3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 243) {
                u3(iArr[1]);
                return;
            } else if ((iArr[0] & 255) == 242) {
                v3(iArr[1]);
                return;
            } else {
                z.k.s(227, 198, 2, iArr[0], iArr[1]);
                return;
            }
        }
        if (i2 == 1) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 != 2) {
            if (i2 == 3) {
                z.k.s(227, 200, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                return;
            }
            if (i2 == 4) {
                z.k.s(227, 203, 2, iArr[0], iArr[1]);
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
                y0.h.u0(f12620b0);
            }
            int i3 = h0.c.E;
            if ((i3 == 3 || i3 == 4 || i3 == 5) && !this.O) {
                c3(true);
            }
        } else {
            this.I = 15;
        }
        if (iArr[0] != 1 || (l0.c0.f13026t == 0 && l0.c0.f13024r == 0 && l0.c0.f13028v == 0 && !l0.c0.f13023q)) {
            z.k.s(227, 192, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3(int i2) {
        z.k.s(227, -53, 2, i2, 1);
        a.i.a0(200L);
        z.k.s(227, -53, 2, i2, 0);
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f12637l + bArr.length > 1024) {
            this.f12637l = 0;
            this.f12638m = 0;
            this.f12639n = 0;
        }
        System.arraycopy(bArr, 0, this.f12636k, this.f12637l, bArr.length);
        int length = this.f12637l + bArr.length;
        this.f12637l = length;
        int i5 = this.f12639n;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f12636k[1];
            int i6 = 2;
            while (true) {
                i4 = this.f12639n;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f12636k[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f12636k;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f12638m = this.f12639n + 1;
            } else {
                this.f12638m = 1;
            }
            this.f12639n = 0;
        }
        int i7 = this.f12637l - 2;
        while (true) {
            i2 = this.f12638m;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f12636k;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f12639n = i8;
                int i9 = i8 + i2 + 3;
                this.f12639n = i9;
                if (i9 >= this.f12637l) {
                    this.f12639n = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f12639n;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f12636k[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f12636k;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f12638m;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f12638m = this.f12639n;
                } else {
                    this.f12638m++;
                }
                this.f12639n = 0;
            }
            this.f12638m++;
        }
        if (i2 != 0) {
            int i12 = this.f12637l - i2;
            this.f12637l = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f12636k;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f12638m = 0;
        }
    }

    public final void b3() {
        if (nt.f8633a != 7406023) {
            int i2 = this.f12650y;
            if (i2 == 1 && this.f12651z == 0) {
                byte[] bArr = new byte[12];
                bArr[0] = 46;
                bArr[1] = -124;
                bArr[2] = 8;
                bArr[3] = (byte) (this.A % 2 != 0 ? 0 : 1);
                bArr[4] = (byte) this.f12643r;
                bArr[5] = (byte) this.f12644s;
                bArr[6] = (byte) this.f12645t;
                bArr[7] = (byte) this.f12646u;
                bArr[8] = (byte) this.f12647v;
                bArr[9] = (byte) this.f12648w;
                bArr[10] = (byte) this.f12649x;
                bArr[11] = 0;
                y3(bArr);
                return;
            }
            if (i2 == 0 && this.f12651z == 1) {
                byte[] bArr2 = new byte[12];
                bArr2[0] = 46;
                bArr2[1] = -124;
                bArr2[2] = 8;
                bArr2[3] = (byte) (this.A % 2 != 0 ? 0 : 2);
                bArr2[4] = (byte) this.f12643r;
                bArr2[5] = (byte) this.f12644s;
                bArr2[6] = (byte) this.f12645t;
                bArr2[7] = (byte) this.f12646u;
                bArr2[8] = (byte) this.f12647v;
                bArr2[9] = (byte) this.f12648w;
                bArr2[10] = (byte) this.f12649x;
                bArr2[11] = 0;
                y3(bArr2);
                return;
            }
            if (i2 != 1 || this.f12651z != 1) {
                y3(new byte[]{46, -124, 8, 0, (byte) this.f12643r, (byte) this.f12644s, (byte) this.f12645t, (byte) this.f12646u, (byte) this.f12647v, (byte) this.f12648w, (byte) this.f12649x, 0});
                return;
            }
            byte[] bArr3 = new byte[12];
            bArr3[0] = 46;
            bArr3[1] = -124;
            bArr3[2] = 8;
            bArr3[3] = (byte) (this.A % 2 == 0 ? 3 : 0);
            bArr3[4] = (byte) this.f12643r;
            bArr3[5] = (byte) this.f12644s;
            bArr3[6] = (byte) this.f12645t;
            bArr3[7] = (byte) this.f12646u;
            bArr3[8] = (byte) this.f12647v;
            bArr3[9] = (byte) this.f12648w;
            bArr3[10] = (byte) this.f12649x;
            bArr3[11] = 0;
            y3(bArr3);
        }
    }

    public final void c3(boolean z2) {
        if (u0.b.f17306a0 == 0) {
            return;
        }
        n1.b bVarP = a.f.p();
        LogType logType = LogType.CANBUS;
        bVarP.t(logType, "SoundChangeTo 1111111=== " + this.O);
        if (this.O == z2) {
            return;
        }
        this.O = z2;
        a.f.p().t(logType, "SoundChangeTo 222222=== " + this.O);
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

    public final void s3(int i2) {
        qt.y0(110, i2);
        f12621c0 = i2;
        int iB = this.W.b(11, 36);
        int i3 = f12621c0;
        if (iB != i3) {
            this.W.g(11, i3);
        }
    }

    public final void t3(int i2) {
        qt.y0(113, i2);
        f12623e0 = i2;
        if (this.W.b(23, 0) != f12623e0) {
            SystemProperties.set("persist.sys.allscreenon", String.format(Locale.US, "%d", Integer.valueOf(f12623e0)));
            this.W.g(23, f12623e0);
        }
    }

    public final void u3(int i2) {
        qt.y0(115, i2);
        f12624f0 = i2;
        int iB = this.W.b(24, 0);
        int i3 = f12624f0;
        if (iB != i3) {
            this.W.g(24, i3);
        }
    }

    public final void v3(int i2) {
        qt.y0(114, i2);
        f12626h0 = i2;
        int iB = this.W.b(25, 0);
        int i3 = f12626h0;
        if (iB != i3) {
            this.W.g(25, i3);
        }
    }

    public final void w3(int i2) {
        qt.y0(109, i2);
        f12620b0 = i2;
        int iB = this.W.b(10, 20);
        int i3 = f12620b0;
        if (iB != i3) {
            this.W.g(10, i3);
        }
    }

    public final void x3(int i2) {
        qt.y0(111, i2);
        f12622d0 = i2;
        int iB = this.W.b(15, 0);
        int i3 = f12622d0;
        if (iB != i3) {
            this.W.g(15, i3);
        }
    }
}

package k0;

import android.net.ProxyProperties;
import android.os.SystemProperties;
import app.App;
import com.syu.jni.ToolsJni;
import java.util.Locale;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class vo extends lt {
    public static int T = 255;
    public static int U = 0;
    public static int V = 0;
    public static int W = 0;
    public static int X = 0;
    public static int Y = 0;
    public static int Z = 0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static int f11447a0 = 20;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static int f11448b0 = 36;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static int f11449c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static int f11450d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static int f11451e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static int f11452f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static int f11453g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static int f11454h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static int f11455i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static int f11456j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static int f11457k0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11458b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11459c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11460d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 12}, new int[]{7, 18}, new int[]{8, 18}, new int[]{9, 26}, new int[]{12, 5}, new int[]{19, 31}, new int[]{20, 30}, new int[]{23, 54}, new int[]{24, 0}, new int[]{25, 13}, new int[]{32, -1}, new int[]{80, 6}, new int[]{81, 29}, new int[]{82, 2}, new int[]{83, 54}, new int[]{84, 55}, new int[]{85, 1}, new int[]{86, 16}, new int[]{87, 28}, new int[]{87, 27}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11461e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11462f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f11463g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11464h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11465i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f11466j = new d();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11467k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f11468l = new e();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f11469m = new f();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f11470n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f11471o = new g();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f11472p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f11473q = new h();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f11474r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f11475s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f11476t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f11477u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f11478v = 4;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f11479w = 5;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f11480x = 6;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f11481y = 7;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f11482z = 8;
    public final int A = 9;
    public final int B = 10;
    public final int C = 11;
    public final int D = 12;
    public final int E = 13;
    public final int F = 14;
    public final int G = 15;
    public final int H = 16;
    public final int I = 17;
    public final int J = 18;
    public final int K = 19;
    public final int L = 20;
    public o1.g0 M = new o1.g0(getClass().getSimpleName(), 32);
    public int N = 0;
    public Runnable O = new i();
    public Runnable P = new j();
    public int Q = -1;
    public int R = -1;
    public Runnable S = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vo voVar = vo.this;
            int i2 = voVar.Q + 1;
            voVar.Q = i2;
            if (i2 < 15 || i2 % 2 != 0) {
                return;
            }
            int i3 = voVar.R;
            if (i3 == 0) {
                z.k.s(227, 248, 2, 0, 2);
            } else if (i3 == 1) {
                z.k.s(227, 248, 2, 1, 2);
            }
        }
    }

    public class b implements o1.p {
        public b() {
        }

        @Override // o1.p
        public void d(Object obj) {
            vo voVar = vo.this;
            int i2 = voVar.f11474r;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                voVar.f11474r = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (voVar.f11476t) {
                        voVar.a3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    voVar.a3(true);
                } else if (y0.f.Q0 == 0) {
                    voVar.a3(false);
                }
            }
        }
    }

    public class c implements o1.p {
        public c() {
        }

        @Override // o1.p
        public void d(Object obj) {
            vo voVar = vo.this;
            int i2 = voVar.f11474r;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                voVar.f11474r = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (voVar.f11476t) {
                        voVar.a3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    voVar.a3(true);
                } else if (y0.f.Q0 == 0) {
                    voVar.a3(false);
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
            vo voVar = vo.this;
            int i2 = voVar.f11470n;
            if (i2 > 0) {
                int i3 = i2 - 1;
                voVar.f11470n = i3;
                if (i3 == 0 && u0.b.D != 13 && voVar.f11476t) {
                    voVar.a3(false);
                }
            }
            if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                vo voVar2 = vo.this;
                int i4 = voVar2.f11467k + 1;
                voVar2.f11467k = i4;
                if (i4 >= 2) {
                    z.k.s(227, 144, 2, 41, 0);
                    vo.this.f11467k = 0;
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
                    vo.this.a3(true);
                } else {
                    vo.this.a3(false);
                }
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = vo.T;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13) {
                    if (vo.T == 13) {
                        y0.h.u0(vo.f11448b0);
                    }
                    vo voVar = vo.this;
                    if (voVar.f11476t) {
                        voVar.a3(false);
                    }
                }
                vo.T = u0.b.D;
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vo.this.f11472p = y0.f.Q0;
            a.f.p().t(LogType.CANBUS, "mCarSendNaviSound DataSound.sNaviSoundOn= " + y0.f.Q0 + "---- caruitype =   " + vo.this.f11465i);
            if (u0.b.D != 13) {
                vo voVar = vo.this;
                if (voVar.f11476t) {
                    voVar.a3(false);
                    return;
                }
                return;
            }
            int i2 = y0.f.Q0;
            if (i2 != 0) {
                if (i2 != 1) {
                    return;
                }
                vo.this.a3(true);
            } else if (u0.b.j4 == 0) {
                vo.this.a3(false);
            }
        }
    }

    public class i implements Runnable {
        public i() {
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
            l0.b0.b(vo.this.P);
            vo.this.N = 5;
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vo voVar = vo.this;
            int i2 = voVar.N - 1;
            voVar.N = i2;
            if (i2 <= 0) {
                l0.b0.p0(voVar.P);
                vo.this.N = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 != 1) {
                y0.h.u0(36);
                return;
            }
            switch (nt.f8633a) {
                case 9175493:
                    z.k.s(227, 198, 2, 0, 16);
                    break;
                case 9241029:
                    z.k.s(227, 198, 2, 0, 17);
                    break;
                case 9306565:
                    z.k.s(227, 198, 2, 0, 18);
                    break;
                case 13894086:
                    z.k.s(227, 198, 2, 0, 19);
                    break;
            }
            z.k.s(227, 144, 2, 48, 0);
            z.k.s(227, 144, 2, 18, 0);
            vo voVar2 = vo.this;
            voVar2.r3(voVar2.M.b(6, 0));
            vo voVar3 = vo.this;
            voVar3.t3(voVar3.M.b(5, 0));
            vo voVar4 = vo.this;
            voVar4.x3(voVar4.M.b(4, 0));
            vo voVar5 = vo.this;
            voVar5.v3(voVar5.M.b(12, 0));
            vo voVar6 = vo.this;
            voVar6.w3(voVar6.M.b(13, 0));
            vo voVar7 = vo.this;
            voVar7.z3(voVar7.M.b(7, 0));
            vo voVar8 = vo.this;
            voVar8.y3(voVar8.M.b(10, 20));
            vo voVar9 = vo.this;
            voVar9.p3(voVar9.M.b(11, 36));
            if (App.c().getResources().getConfiguration().orientation == 1) {
                vo voVar10 = vo.this;
                voVar10.q3(4 | ((voVar10.M.b(14, 0) << 7) & 128) | ((vo.this.M.b(15, 0) << 6) & 64) | ((vo.this.M.b(16, 0) << 5) & 32) | ((vo.this.M.b(17, 0) << 4) & 16) | ((vo.this.M.b(18, 0) << 3) & 8) | ((vo.this.M.b(19, 0) << 1) & 2) | (vo.this.M.b(20, 0) & 1));
            } else {
                vo voVar11 = vo.this;
                voVar11.q3(((vo.this.M.b(17, 0) << 4) & 16) | ((voVar11.M.b(14, 0) << 7) & 128) | ((vo.this.M.b(15, 0) << 6) & 64) | ((vo.this.M.b(16, 0) << 5) & 32) | ((vo.this.M.b(18, 0) << 3) & 8) | ((vo.this.M.b(19, 0) << 1) & 2) | (vo.this.M.b(20, 0) & 1));
            }
            if (vo.this.M.b(8, 0) != 0 && SystemProperties.getInt("persist.sys.width", 0) != vo.this.M.b(8, 0)) {
                SystemProperties.set("persist.sys.width", String.format(Locale.US, "%d", Integer.valueOf(vo.this.M.b(8, 0))));
            }
            vo voVar12 = vo.this;
            voVar12.u3(voVar12.M.b(8, 0));
            if (vo.this.M.b(9, 0) != 0 && SystemProperties.getInt("persist.sys.height", 0) != vo.this.M.b(9, 0)) {
                SystemProperties.set("persist.sys.height", String.format(Locale.US, "%d", Integer.valueOf(vo.this.M.b(9, 0))));
            }
            vo voVar13 = vo.this;
            voVar13.s3(voVar13.M.b(9, 0));
            if (o1.u.S(a.b.Q) || vo.this.f11465i == 3) {
                return;
            }
            y0.h.u0(vo.f11448b0);
            z.k.s(227, 130, 3, 0, 0, 0);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.M.a();
        u0.c.f17386m.a(this.O, 1);
        y0.g.f18110t.a(this.f11473q, 1);
        y0.g.f18101k.a(new b());
        h0.d.f2462a.a(this.f11469m, 1);
        u0.c.f17374a.a(this.f11471o, 1);
        l0.b0.a(this.f11468l);
        u0.c.f17399z.a(this.f11466j, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8317l = 1;
        mtVar.f8320o = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 18) {
            int i4 = i2 + 2;
            if (this.f11465i != bArr[i4]) {
                byte b3 = bArr[i4];
                this.f11465i = b3;
                if (b3 == 3 && !o1.u.S(a.b.Q)) {
                    o1.u.f(a.b.R);
                }
            }
            qt.y0(109, bArr[i4] & 255);
        }
        if (b2 == 32) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            this.f11459c = b4 & 255;
            int i5 = 0;
            while (true) {
                iArr = this.f11460d;
                if (i5 >= iArr.length) {
                    break;
                }
                int i6 = this.f11459c;
                if (i6 == iArr[i5][0]) {
                    if (i6 == 0) {
                        break;
                    }
                    this.f11458b = i5;
                    break;
                }
                i5++;
            }
            int i7 = this.f11459c;
            if (i7 == 19) {
                for (int i8 = 0; i8 < (b5 & 255); i8++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                return;
            }
            if (i7 == 20) {
                for (int i9 = 0; i9 < (b5 & 255); i9++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            if (i7 == 32) {
                if ((b5 & 255) != 1 || o1.u.a0()) {
                    return;
                }
                o1.u.z();
                return;
            }
            int i10 = b5 & 255;
            if (i10 == 1) {
                if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                    return;
                }
                return;
            } else {
                if (i10 == 0) {
                    int i11 = this.f11458b;
                    if (i11 < iArr.length && i11 != 255) {
                        l0.b0.l0(iArr[i11][1], 1);
                    }
                    this.f11458b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 39) {
            int i12 = i2 + 2;
            qt.y0(10, (bArr[i12] >> 7) & 1);
            qt.y0(11, (bArr[i12] >> 6) & 1);
            qt.y0(12, (bArr[i12] >> 5) & 1);
            qt.y0(13, (bArr[i12] >> 4) & 1);
            qt.y0(62, (bArr[i12] >> 2) & 1);
            qt.y0(65, (bArr[i12] >> 1) & 1);
            qt.y0(16, (bArr[i12] >> 0) & 1);
            int i13 = i2 + 3;
            qt.y0(18, (bArr[i13] >> 7) & 1);
            qt.y0(19, (bArr[i13] >> 6) & 1);
            qt.y0(20, (bArr[i13] >> 5) & 1);
            qt.y0(49, (bArr[i13] >> 4) & 1);
            qt.y0(21, (bArr[i13] >> 0) & 15);
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
            } else if (i15 == 127) {
                qt.y0(27, -1);
            } else if (i15 != 255) {
                qt.y0(27, i15);
            } else {
                qt.y0(27, -3);
            }
            if (i17 == 0) {
                qt.y0(28, -2);
            } else if (i17 == 127) {
                qt.y0(28, -1);
            } else if (i17 != 255) {
                qt.y0(28, i17);
            } else {
                qt.y0(28, -3);
            }
            int i18 = i2 + 6;
            qt.y0(33, (bArr[i18] >> 3) & 1);
            qt.y0(66, (bArr[i18] >> 1) & 1);
            qt.y0(37, (bArr[i18] >> 0) & 1);
            qt.y0(31, (bArr[i18] >> 5) & 1);
            qt.y0(32, (bArr[i18] >> 4) & 1);
            int i19 = i2 + 7;
            qt.y0(29, (bArr[i19] >> 4) & 15);
            qt.y0(30, (bArr[i19] >> 0) & 15);
            int i20 = i2 + 8;
            qt.y0(53, (bArr[i20] >> 5) & 1);
            qt.y0(17, (bArr[i20] >> 4) & 1);
            int i21 = i2 + 9;
            qt.y0(22, (bArr[i21] >> 7) & 1);
            qt.y0(23, (bArr[i21] >> 6) & 1);
            qt.y0(24, (bArr[i21] >> 5) & 1);
            qt.y0(50, (bArr[i21] >> 4) & 1);
            int i22 = i2 + 11;
            qt.y0(88, (bArr[i22] >> 0) & 15);
            qt.y0(89, (bArr[i22] >> 4) & 15);
            int i23 = i2 + 12;
            qt.y0(67, (bArr[i23] >> 7) & 1);
            qt.y0(46, (bArr[i23] >> 6) & 1);
            qt.y0(47, (bArr[i23] >> 5) & 1);
            qt.y0(43, (bArr[i23] >> 4) & 1);
            qt.y0(82, (bArr[i23] >> 3) & 1);
            qt.y0(83, (bArr[i23] >> 2) & 1);
            qt.y0(81, (bArr[i23] >> 1) & 1);
            qt.y0(85, (bArr[i23] >> 0) & 1);
            int i24 = i2 + 13;
            int i25 = bArr[i24] & 255;
            if (i25 == 0) {
                qt.y0(40, -2);
            } else if (i25 == 127) {
                qt.y0(40, -1);
            } else if (i25 != 255) {
                qt.y0(40, bArr[i24] & 255);
            } else {
                qt.y0(40, -3);
            }
            int i26 = i2 + 14;
            int i27 = bArr[i26] & 255;
            if (i27 == 0) {
                qt.y0(41, -2);
            } else if (i27 == 127) {
                qt.y0(41, -1);
            } else if (i27 != 255) {
                qt.y0(41, bArr[i26] & 255);
            } else {
                qt.y0(41, -3);
            }
            int i28 = i2 + 15;
            qt.y0(42, (bArr[i28] >> 3) & 1);
            qt.y0(44, (bArr[i28] >> 0) & 7);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 10752);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 53) {
            int i29 = i2 + 2;
            l0.c0.a((bArr[i29] >> 5) & 1, (bArr[i29] >> 4) & 1, 0);
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.o1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.o1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.o1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.o1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i30 = i2 + 2;
                int i31 = bArr[i30] & 255;
                int i32 = i2 + 3;
                int i33 = bArr[i32] & 255;
                int i34 = i2 + 4;
                int i35 = bArr[i34] & 255;
                int i36 = i2 + 5;
                int i37 = bArr[i36] & 255;
                if (i31 == 0 && i33 == 0 && i35 == 0 && i37 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i31 || l0.c0.f13014h != i33 || l0.c0.f13015i != i35 || l0.c0.f13016j != i37) && this.f11462f == 1 && this.f11461e == 0 && !o1.u.a0()) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 8;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i31;
                l0.c0.f13014h = i33;
                l0.c0.f13015i = i35;
                l0.c0.f13016j = i37;
                u0.d.D2(l0.c0.o1(bArr[i30] & 255));
                u0.d.E2(l0.c0.o1(bArr[i32] & 255));
                u0.d.F2(l0.c0.o1(bArr[i34] & 255));
                u0.d.G2(l0.c0.o1(bArr[i36] & 255));
                break;
            case 36:
                int i38 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i38 >> 6) & 1);
                    qt.y0(1, (i38 >> 7) & 1);
                } else {
                    qt.y0(2, (i38 >> 7) & 1);
                    qt.y0(1, (i38 >> 6) & 1);
                }
                qt.y0(4, (i38 >> 5) & 1);
                qt.y0(3, (i38 >> 4) & 1);
                qt.y0(5, (i38 >> 3) & 1);
                qt.y0(0, (i38 >> 2) & 1);
                int i39 = i2 + 3;
                qt.y0(118, (bArr[i39] >> 4) & 1);
                qt.y0(119, (bArr[i39] >> 5) & 1);
                qt.y0(120, (bArr[i39] >> 6) & 1);
                if (this.f11461e != ((bArr[i39] >> 0) & 1)) {
                    int i40 = (bArr[i39] >> 0) & 1;
                    this.f11461e = i40;
                    if (u0.b.f17357r0 == 0) {
                        if (i40 == 1) {
                            if (!o1.u.a0()) {
                                qt.y0(132, 1);
                                this.f11463g = true;
                                SystemProperties.set("persist.lesc.video.ignore", "true");
                                a.i.a0(200L);
                                o1.u.z();
                                float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                                this.f11464h = y0.f.f18037c;
                                y0.h.t0((int) f2);
                            }
                            u0.d.C2(0);
                        } else if (i40 == 0) {
                            y0.h.t0(this.f11464h);
                            if (this.f11463g && o1.u.a0()) {
                                qt.y0(132, 0);
                                a.i.a0(350L);
                                SystemProperties.set("persist.lesc.video.ignore", "false");
                            }
                            this.f11463g = false;
                        }
                    }
                }
                if (this.f11462f != ((bArr[i39] >> 5) & 1)) {
                    int i41 = (bArr[i39] >> 5) & 1;
                    this.f11462f = i41;
                    if (i41 == 1 && this.f11461e == 0 && this.N == 5 && !o1.u.a0()) {
                        u0.d.C2(1);
                    } else {
                        u0.d.C2(0);
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.M.j();
        u0.c.f17386m.d(this.O);
        l0.b0.p0(this.P);
        y0.g.f18110t.d(this.f11473q);
        h0.d.f2462a.d(this.f11469m);
        u0.c.f17374a.d(this.f11471o);
        l0.b0.o0(this.f11468l);
        u0.c.f17399z.d(this.f11466j);
        y0.g.f18101k.d(new c());
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 133) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if ((iArr[0] & 255) == 254) {
                z3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 253) {
                y3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 252) {
                p3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 251) {
                r3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 250) {
                v3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 249) {
                w3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 248) {
                q3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 2) {
                t3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 1) {
                x3(iArr[1]);
                return;
            } else if ((iArr[0] & 255) != 8 || (iArr[1] & 255) != 18) {
                z.k.s(227, 198, 2, iArr[0], iArr[1]);
                return;
            } else {
                o1.u.z();
                z.k.s(227, 198, 2, iArr[0], iArr[1]);
                return;
            }
        }
        if (i2 == 1) {
            z.k.s(227, 167, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
            return;
        }
        if (i2 == 2) {
            if (iArr[0] == 1) {
                if (!SystemProperties.getBoolean("persist.lesc.video.ignore", false)) {
                    y0.h.u0(f11447a0);
                }
                int i3 = h0.c.E;
                if ((i3 == 3 || i3 == 4 || i3 == 5) && !this.f11476t) {
                    a3(true);
                }
            } else {
                this.f11470n = 15;
            }
            z.k.s(227, 130, 3, iArr[0], iArr[1], 0);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 5) {
            u3(iArr[0]);
            s3(iArr[1]);
            return;
        }
        if (i2 == 6) {
            if (nt.U == 1) {
                o1.x.x(nt.f8643f, 1001, iArr[0]);
                return;
            }
            return;
        }
        if (i2 != 1038) {
            return;
        }
        a.f.p().t(LogType.CANBUS, "C_CMD_JAHUAR_LZ  ints[0] = " + iArr[0] + "-----------  ints[1] = " + iArr[1]);
        int i4 = iArr[0];
        if (i4 == 1) {
            z.k.s(227, 248, 2, 0, iArr[1]);
            this.R = 0;
            if (iArr[1] == 1) {
                this.Q = 0;
                l0.b0.a(this.S);
                return;
            } else {
                if (iArr[1] == 0) {
                    this.Q = 0;
                    l0.b0.o0(this.S);
                    return;
                }
                return;
            }
        }
        if (i4 == 2) {
            z.k.s(227, 248, 2, 1, iArr[1]);
            this.R = 1;
            if (iArr[1] == 1) {
                this.Q = 0;
                l0.b0.a(this.S);
                return;
            } else {
                if (iArr[1] == 0) {
                    this.Q = 0;
                    l0.b0.o0(this.S);
                    return;
                }
                return;
            }
        }
        if (i4 == 3) {
            z.k.s(227, 131, 2, 86, iArr[1]);
            return;
        }
        if (i4 == 4) {
            z.k.s(227, 131, 2, 84, iArr[1]);
        } else {
            if (i4 != 5) {
                return;
            }
            if (iArr[1] == 0 && !o1.u.a0()) {
                o1.u.z();
            }
            z.k.s(227, 131, 2, 90, iArr[1]);
        }
    }

    public final void a3(boolean z2) {
        if (u0.b.f17306a0 == 0) {
            return;
        }
        n1.b bVarP = a.f.p();
        LogType logType = LogType.CANBUS;
        bVarP.t(logType, "SoundChangeTo 1111111=== " + this.f11476t);
        if (this.f11476t == z2) {
            return;
        }
        this.f11476t = z2;
        a.f.p().t(logType, "SoundChangeTo 222222=== " + this.f11476t);
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
        qt.y0(114, i2);
        f11448b0 = i2;
        int iB = this.M.b(11, 36);
        int i3 = f11448b0;
        if (iB != i3) {
            this.M.g(11, i3);
        }
    }

    public final void q3(int i2) {
        qt.y0(125, (i2 >> 7) & 1);
        qt.y0(126, (i2 >> 6) & 1);
        qt.y0(127, (i2 >> 5) & 1);
        qt.y0(128, (i2 >> 4) & 1);
        qt.y0(129, (i2 >> 3) & 1);
        qt.y0(130, (i2 >> 1) & 1);
        qt.y0(131, (i2 >> 0) & 1);
        int i3 = App.c().getResources().getConfiguration().orientation == 1 ? i2 | 4 : i2 & 251;
        z.k.s(227, 198, 2, 4, i3);
        f11451e0 = (i3 >> 7) & 1;
        int iB = this.M.b(14, 0);
        int i4 = f11451e0;
        if (iB != i4) {
            this.M.g(14, i4);
        }
        f11452f0 = (i3 >> 6) & 1;
        int iB2 = this.M.b(15, 0);
        int i5 = f11452f0;
        if (iB2 != i5) {
            this.M.g(15, i5);
        }
        f11453g0 = (i3 >> 5) & 1;
        int iB3 = this.M.b(16, 0);
        int i6 = f11453g0;
        if (iB3 != i6) {
            this.M.g(16, i6);
        }
        f11454h0 = (i3 >> 4) & 1;
        int iB4 = this.M.b(17, 0);
        int i7 = f11454h0;
        if (iB4 != i7) {
            this.M.g(17, i7);
        }
        f11455i0 = (i3 >> 3) & 1;
        int iB5 = this.M.b(18, 0);
        int i8 = f11455i0;
        if (iB5 != i8) {
            this.M.g(18, i8);
        }
        f11456j0 = (i3 >> 1) & 1;
        int iB6 = this.M.b(19, 0);
        int i9 = f11456j0;
        if (iB6 != i9) {
            this.M.g(19, i9);
        }
        f11457k0 = (i3 >> 0) & 1;
        int iB7 = this.M.b(20, 0);
        int i10 = f11457k0;
        if (iB7 != i10) {
            this.M.g(20, i10);
        }
    }

    public final void r3(int i2) {
        qt.y0(117, i2);
        W = i2;
        int iB = this.M.b(6, 0);
        int i3 = W;
        if (iB != i3) {
            this.M.g(6, i3);
            SystemProperties.set("persist.sys.penneltype", String.format(Locale.US, "%d", Integer.valueOf(W)));
        }
    }

    public final void s3(int i2) {
        qt.y0(112, 65535 & i2);
        Z = i2;
        if (this.M.b(9, 0) != Z) {
            SystemProperties.set("persist.sys.height", String.format(Locale.US, "%d", Integer.valueOf(Z)));
            this.M.g(9, Z);
        }
    }

    public final void t3(int i2) {
        qt.y0(116, i2);
        V = i2;
        z.k.s(227, 198, 2, 2, i2);
        int iB = this.M.b(5, 0);
        int i3 = V;
        if (iB != i3) {
            this.M.g(5, i3);
        }
    }

    public final void u3(int i2) {
        qt.y0(111, 65535 & i2);
        Y = i2;
        if (this.M.b(8, 0) != Y) {
            SystemProperties.set("persist.sys.width", String.format(Locale.US, "%d", Integer.valueOf(Y)));
            this.M.g(8, Y);
        }
    }

    public final void v3(int i2) {
        qt.y0(121, i2);
        if (!qt.n0("/sys/fytver/fyt_bin_version").contains("Ls18") && !qt.n0("/sys/fytver/fyt_bin_version").contains("Lt18")) {
            z.k.s(227, 168, 5, i2, 0, 0, 0, 0);
        }
        f11449c0 = i2;
        int iB = this.M.b(12, 0);
        int i3 = f11449c0;
        if (iB != i3) {
            this.M.g(12, i3);
        }
    }

    public final void w3(int i2) {
        qt.y0(122, i2);
        f11450d0 = i2;
        z.k.s(227, 198, 2, 3, i2);
        int iB = this.M.b(13, 0);
        int i3 = f11450d0;
        if (iB != i3) {
            this.M.g(13, i3);
        }
    }

    public final void x3(int i2) {
        qt.y0(115, i2);
        U = i2;
        z.k.s(227, 198, 2, 1, i2);
        int iB = this.M.b(4, 0);
        int i3 = U;
        if (iB != i3) {
            this.M.g(4, i3);
        }
    }

    public final void y3(int i2) {
        qt.y0(113, i2);
        f11447a0 = i2;
        int iB = this.M.b(10, 20);
        int i3 = f11447a0;
        if (iB != i3) {
            this.M.g(10, i3);
        }
    }

    public final void z3(int i2) {
        qt.y0(110, i2);
        X = i2;
        f1.q qVarE = f1.o.g().e(15);
        if (qVarE != null && (qVarE instanceof f1.l)) {
            int i3 = X;
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
        int iB = this.M.b(7, 0);
        int i4 = X;
        if (iB != i4) {
            this.M.g(7, i4);
        }
    }
}

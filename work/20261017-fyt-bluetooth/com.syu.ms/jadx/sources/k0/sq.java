package k0;

import android.net.ProxyProperties;
import android.opengl.GLES10;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import com.syu.jni.ToolsJni;
import java.util.Locale;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class sq extends lt {
    public static int H = 255;
    public static int I = 0;
    public static int J = 0;
    public static int K = 0;
    public static int L = 20;
    public static int M = 36;
    public static int N;
    public static int O;
    public static int P;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f10384g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10379b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10380c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10381d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10382e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f10383f = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10385h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f10386i = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 1}, new int[]{10, 26}, new int[]{11, 13}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 32}, new int[]{17, 33}, new int[]{18, 29}, new int[]{32, 49}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}, new int[]{42, 50}, new int[]{43, 51}, new int[]{51, -1}, new int[]{52, 24}, new int[]{53, 22}, new int[]{54, 53}, new int[]{55, 9}, new int[]{56, 38}, new int[]{57, 18}, new int[]{61, 56}, new int[]{63, 0}, new int[]{72, 29}, new int[]{73, 32}, new int[]{74, 33}, new int[]{75, 34}, new int[]{76, 35}, new int[]{82, 3}, new int[]{83, 4}, new int[]{84, 11}, new int[]{86, 78}, new int[]{87, 58}, new int[]{89, 38}, new int[]{90, 12}, new int[]{91, 25}, new int[]{92, 40}, new int[]{93, 41}, new int[]{94, 42}, new int[]{95, 43}, new int[]{111, 54}, new int[]{134, 16}, new int[]{240, 49}, new int[]{i.a.Theme_actionModeShareDrawable, 49}, new int[]{i.a.Theme_actionModeFindDrawable, 49}, new int[]{i.a.Theme_actionModeWebSearchDrawable, 49}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f10387j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f10388k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f10389l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f10390m = new d();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f10391n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f10392o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f10393p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f10394q = new f();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f10395r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f10396s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f10397t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f10398u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f10399v = 7;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f10400w = 8;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f10401x = 9;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f10402y = 10;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f10403z = 11;
    public final int A = 15;
    public final int B = 16;
    public final int C = 17;
    public o1.g0 D = new o1.g0(getClass().getSimpleName(), 32);
    public int E = 0;
    public Runnable F = new g();
    public Runnable G = new h();

    public class a implements o1.p {
        public a() {
        }

        @Override // o1.p
        public void d(Object obj) {
            sq sqVar = sq.this;
            int i2 = sqVar.f10395r;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                sqVar.f10395r = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (sqVar.f10397t) {
                        sqVar.a3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    sqVar.a3(true);
                } else if (y0.f.Q0 == 0) {
                    sqVar.a3(false);
                }
            }
        }
    }

    public class b implements o1.p {
        public b() {
        }

        @Override // o1.p
        public void d(Object obj) {
            sq sqVar = sq.this;
            int i2 = sqVar.f10395r;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                sqVar.f10395r = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (sqVar.f10397t) {
                        sqVar.a3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    sqVar.a3(true);
                } else if (y0.f.Q0 == 0) {
                    sqVar.a3(false);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            if (u0.b.f17357r0 == 0) {
                sq sqVar = sq.this;
                int i3 = sqVar.f10380c;
                if (i3 >= 0) {
                    sqVar.f10380c = i3 - 1;
                } else {
                    int i4 = sqVar.f10379b;
                    if (i4 == 1 || (i2 = sqVar.f10381d) == 1) {
                        if (!sqVar.f10383f && !o1.u.a0()) {
                            qt.y0(123, 1);
                            sq.this.f10383f = true;
                            SystemProperties.set("persist.lesc.video.ignore", "true");
                            a.i.a0(200L);
                            o1.u.z();
                            float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                            sq.this.f10382e = y0.f.f18037c;
                            y0.h.t0((int) f2);
                        }
                    } else if (i4 == 0 && i2 == 0) {
                        if (sqVar.f10383f && o1.u.a0()) {
                            qt.y0(123, 0);
                            y0.h.t0(sq.this.f10382e);
                            a.i.a0(100L);
                            a.i.a0(350L);
                            SystemProperties.set("persist.lesc.video.ignore", "false");
                        }
                        sq.this.f10383f = false;
                    }
                }
            }
            sq sqVar2 = sq.this;
            int i5 = sqVar2.f10391n;
            if (i5 > 0) {
                int i6 = i5 - 1;
                sqVar2.f10391n = i6;
                if (i6 == 0 && u0.b.D != 13) {
                    y0.h.u0(sq.M);
                    sq sqVar3 = sq.this;
                    if (sqVar3.f10397t) {
                        sqVar3.a3(false);
                    }
                }
            }
            if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                sq sqVar4 = sq.this;
                int i7 = sqVar4.f10388k + 1;
                sqVar4.f10388k = i7;
                if (i7 >= 2) {
                    z.k.s(227, 144, 1, 53);
                    sq.this.f10388k = 0;
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 13 || o1.u.S(a.b.Q)) {
                int i2 = h0.c.E;
                if (i2 == 3 || i2 == 4 || i2 == 5) {
                    sq.this.a3(true);
                } else {
                    sq.this.a3(false);
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = sq.H;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13) {
                    int i4 = sq.H;
                    if (i4 == 13 || i4 == 255) {
                        z.k.s(227, 198, 2, 176, 3);
                    }
                    sq sqVar = sq.this;
                    if (sqVar.f10397t) {
                        sqVar.a3(false);
                    }
                }
                sq.H = u0.b.D;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sq sqVar = sq.this;
            sqVar.f10393p = y0.f.Q0;
            if (u0.b.D != 13) {
                if (sqVar.f10397t) {
                    sqVar.a3(false);
                    return;
                }
                return;
            }
            int i2 = y0.f.Q0;
            if (i2 != 0) {
                if (i2 != 1) {
                    return;
                }
                sqVar.a3(true);
            } else if (u0.b.j4 == 0) {
                sqVar.a3(false);
            }
        }
    }

    public class g implements Runnable {
        public g() {
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
            sq.H = 255;
            sq sqVar = sq.this;
            sqVar.E = 10;
            l0.b0.b(sqVar.G);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sq sqVar = sq.this;
            int i2 = sqVar.E - 1;
            sqVar.E = i2;
            if (i2 <= 0) {
                l0.b0.p0(sqVar.G);
                sq.this.E = 10;
                return;
            }
            if (i2 <= 5) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            }
            if (u0.b.f17306a0 == 1) {
                sq sqVar2 = sq.this;
                sqVar2.t3(sqVar2.D.b(7, 0));
                sq sqVar3 = sq.this;
                sqVar3.r3(sqVar3.D.b(10, 20));
                sq sqVar4 = sq.this;
                sqVar4.m3(sqVar4.D.b(11, 36));
                sq sqVar5 = sq.this;
                sqVar5.s3(sqVar5.D.b(15, 0));
                sq sqVar6 = sq.this;
                sqVar6.p3(sqVar6.D.b(16, 0));
                sq sqVar7 = sq.this;
                sqVar7.n3(sqVar7.D.b(17, 0));
                if (o1.u.S(a.b.Q) || u0.b.D == 13) {
                    return;
                }
                y0.h.u0(sq.M);
                z.k.s(227, 198, 2, 181, 0);
                z.k.s(227, 198, 2, 176, 3);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.D.a();
        u0.c.f17386m.a(this.F, 1);
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
        y0.g.f18110t.a(this.f10394q, 1);
        y0.g.f18101k.a(new a());
        h0.d.f2462a.a(this.f10390m, 1);
        u0.c.f17374a.a(this.f10392o, 1);
        l0.b0.a(this.f10389l);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        if (bArr[i2] != 22) {
            a.f.p().t(LogType.CANBUS, o1.b0.d(bArr, i2 - 1, i3 + 2));
        }
        byte b2 = bArr[i2];
        if (b2 == 22) {
            qt.y0(98, bArr[i2 + 3] & 255);
            qt.y0(99, (bArr[i2 + 7] & 255) | (65280 & (bArr[i2 + 6] << 8)));
        }
        if (b2 == 41) {
            int i4 = bArr[i2 + 2] & 255;
            if (i4 == 2) {
                int i5 = i2 + 3;
                qt.y0(100, (bArr[i5] >> 1) & 1);
                qt.y0(101, (bArr[i5] >> 0) & 1);
                qt.y0(102, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
                qt.y0(103, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(104, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255));
                qt.y0(105, (bArr[i2 + 12] & 255) | (65280 & (bArr[i2 + 11] << 8)) | ((bArr[i2 + 10] << 8) & 65280));
                return;
            }
            if (i4 != 3) {
                return;
            }
            qt.y0(106, bArr[i2 + 3] & 255);
            qt.y0(107, bArr[i2 + 4] & 255);
            qt.y0(108, bArr[i2 + 5] & 255);
            qt.y0(109, bArr[i2 + 6] & 255);
            qt.y0(110, bArr[i2 + 7] & 255);
            qt.y0(111, bArr[i2 + 8] & 255);
            qt.y0(112, bArr[i2 + 9] & 255);
            qt.y0(113, bArr[i2 + 10] & 255);
            qt.y0(114, bArr[i2 + 11] & 255);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 53) {
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, GLES10.GL_AMBIENT);
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f10385h = b3 & 255;
                int i6 = 0;
                while (true) {
                    iArr = this.f10386i;
                    if (i6 < iArr.length) {
                        int i7 = this.f10385h;
                        if (i7 != iArr[i6][0]) {
                            i6++;
                        } else if (i7 != 0) {
                            this.f10384g = i6;
                        }
                    }
                }
                int i8 = this.f10385h;
                if (i8 == 3) {
                    if ((b4 & 255) == 1) {
                        int i9 = h0.c.E;
                        if (i9 == 3 || i9 == 4 || i9 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else if (u0.i.l3().r3()) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(4, 0);
                            l0.b0.l0(4, 1);
                        }
                    }
                    break;
                } else if (i8 == 4) {
                    if ((b4 & 255) == 1) {
                        int i10 = h0.c.E;
                        if (i10 == 3 || i10 == 4 || i10 == 5) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else if (u0.i.l3().r3()) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else {
                            l0.b0.l0(3, 0);
                            l0.b0.l0(3, 1);
                        }
                    }
                    break;
                } else {
                    switch (i8) {
                        case 240:
                            for (int i11 = 0; i11 < (b4 & 255); i11++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        case i.a.Theme_actionModeShareDrawable /* 241 */:
                            for (int i12 = 0; i12 < (b4 & 255); i12++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            break;
                        case i.a.Theme_actionModeFindDrawable /* 242 */:
                            for (int i13 = 0; i13 < (b4 & 255); i13++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            break;
                        case i.a.Theme_actionModeWebSearchDrawable /* 243 */:
                            for (int i14 = 0; i14 < (b4 & 255); i14++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            break;
                        default:
                            int i15 = b4 & 255;
                            if (i15 == 1) {
                                if (i6 < iArr.length) {
                                    l0.b0.l0(iArr[i6][1], 0);
                                }
                            } else if (i15 == 0) {
                                int i16 = this.f10384g;
                                if (i16 < iArr.length && i16 != 255) {
                                    l0.b0.l0(iArr[i16][1], 1);
                                }
                                this.f10384g = 255;
                            }
                            break;
                    }
                }
                break;
            case 33:
                int i17 = i2 + 2;
                qt.y0(10, (bArr[i17] >> 7) & 1);
                qt.y0(11, (bArr[i17] >> 6) & 1);
                qt.y0(12, (bArr[i17] >> 5) & 1);
                qt.y0(13, (bArr[i17] >> 3) & 1);
                qt.y0(14, (bArr[i17] >> 2) & 1);
                qt.y0(15, (bArr[i17] >> 1) & 1);
                qt.y0(16, (bArr[i17] >> 0) & 1);
                int i18 = i2 + 3;
                qt.y0(18, (bArr[i18] >> 7) & 1);
                qt.y0(19, (bArr[i18] >> 6) & 1);
                qt.y0(20, (bArr[i18] >> 5) & 1);
                qt.y0(21, (bArr[i18] >> 0) & 15);
                int i19 = i2 + 4;
                int i20 = bArr[i19] & 255;
                int i21 = i2 + 5;
                int i22 = bArr[i21] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i20 = bArr[i21] & 255;
                    i22 = bArr[i19] & 255;
                }
                if (i20 == 0) {
                    qt.y0(27, -2);
                } else if (i20 == 127) {
                    qt.y0(27, -3);
                } else if (i20 < 31 || i20 > 59) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, i20);
                }
                if (i22 == 0) {
                    qt.y0(28, -2);
                } else if (i22 == 127) {
                    qt.y0(28, -3);
                } else if (i22 < 31 || i22 > 59) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, i22);
                }
                int i23 = i2 + 6;
                qt.y0(67, (bArr[i23] >> 0) & 1);
                qt.y0(66, (bArr[i23] >> 1) & 1);
                qt.y0(53, (bArr[i23] >> 2) & 1);
                qt.y0(65, (bArr[i23] >> 3) & 1);
                qt.y0(37, (bArr[i23] >> 6) & 1);
                int i24 = i2 + 9;
                qt.y0(29, (bArr[i24] >> 0) & 3);
                qt.y0(30, (bArr[i24] >> 2) & 3);
                qt.y0(31, (bArr[i24] >> 4) & 3);
                qt.y0(32, (bArr[i24] >> 6) & 3);
                int i25 = bArr[i2 + 7] & 255;
                if (i25 == 255 || i25 == 0) {
                    u0.d.A3(0);
                } else {
                    u0.d.A3((i25 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                }
                break;
            case 34:
                u0.d.R2(l0.c0.F1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.F1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.F1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.F1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i26 = i2 + 2;
                int i27 = bArr[i26] & 255;
                int i28 = i2 + 3;
                int i29 = bArr[i28] & 255;
                int i30 = i2 + 4;
                int i31 = bArr[i30] & 255;
                int i32 = i2 + 5;
                int i33 = bArr[i32] & 255;
                if (i27 == 0 && i29 == 0 && i31 == 0 && i33 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i27 || l0.c0.f13014h != i29 || l0.c0.f13015i != i31 || l0.c0.f13016j != i33) && this.f10379b == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 5;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i27;
                l0.c0.f13014h = i29;
                l0.c0.f13015i = i31;
                l0.c0.f13016j = i33;
                u0.d.D2(l0.c0.F1(bArr[i26] & 255));
                u0.d.E2(l0.c0.F1(bArr[i28] & 255));
                u0.d.F2(l0.c0.F1(bArr[i30] & 255));
                u0.d.G2(l0.c0.F1(bArr[i32] & 255));
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
                int i34 = i2 + 3;
                if (this.f10379b != ((bArr[i34] >> 0) & 1) || this.f10381d != ((bArr[i34] >> 4) & 1)) {
                    int i35 = (bArr[i34] >> 0) & 1;
                    this.f10379b = i35;
                    int i36 = (bArr[i34] >> 4) & 1;
                    this.f10381d = i36;
                    if (u0.b.f17357r0 == 0) {
                        if (i35 == 1 || i36 == 1) {
                            this.f10380c = 5;
                        } else if (i35 == 0 && i36 == 0) {
                            this.f10380c = 5;
                            if (this.f10383f && o1.u.a0()) {
                                qt.y0(123, 0);
                                y0.h.t0(this.f10382e);
                                a.i.a0(100L);
                                a.i.a0(350L);
                                SystemProperties.set("persist.lesc.video.ignore", "false");
                            }
                            this.f10383f = false;
                        }
                    }
                }
                int i37 = i2 + 6;
                int i38 = (bArr[i37] >> 2) & 1;
                int i39 = (bArr[i37] >> 3) & 1;
                if (qt.k0() && !l0.c0.f13022p) {
                    boolean z2 = i38 == 0 && i39 == 1;
                    boolean z3 = i38 == 1 && i39 == 0;
                    int i40 = (i38 == 1 && i39 == 1) ? 1 : 0;
                    l0.c0.f13026t = 0;
                    l0.c0.f13024r = 0;
                    l0.c0.f13028v = 0;
                    if (z2) {
                        l0.c0.f13026t = 20;
                    }
                    if (z3) {
                        l0.c0.f13024r = 20;
                    }
                    if (i40 != 0) {
                        l0.c0.f13028v = 20;
                    }
                    u0.i.l3().g4(4096, z2);
                    u0.i.l3().g4(8192, z3);
                    u0.d.I3(139, i40);
                    break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.D.j();
        u0.c.f17386m.d(this.F);
        l0.b0.p0(this.G);
        y0.g.f18110t.d(this.f10394q);
        h0.d.f2462a.d(this.f10390m);
        u0.c.f17374a.d(this.f10392o);
        l0.b0.o0(this.f10389l);
        y0.g.f18101k.d(new b());
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 124) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if ((iArr[0] & 255) == 254) {
                t3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 253) {
                r3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 252) {
                m3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 247) {
                s3(iArr[1]);
                return;
            } else if ((iArr[0] & 255) == 246) {
                p3(iArr[1]);
                return;
            } else {
                if ((iArr[0] & 255) == 245) {
                    n3(iArr[1]);
                    return;
                }
                return;
            }
        }
        if (i2 == 1) {
            z.k.s(227, 167, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
            return;
        }
        if (i2 == 2) {
            if (iArr[0] == 0) {
                if (!SystemProperties.getBoolean("persist.lesc.video.ignore", false)) {
                    y0.h.u0(L);
                }
                int i3 = h0.c.E;
                if ((i3 == 3 || i3 == 4 || i3 == 5) && !this.f10397t) {
                    a3(true);
                }
            } else {
                this.f10391n = 15;
            }
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 5) {
            q3(iArr[0]);
            o3(iArr[1]);
        } else if (i2 != 6) {
            if (i2 != 7) {
                return;
            }
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        } else if (nt.U == 1) {
            o1.x.x(nt.f8643f, 1001, iArr[0]);
        }
    }

    public final void a3(boolean z2) {
        if (u0.b.f17306a0 == 0) {
            return;
        }
        n1.b bVarP = a.f.p();
        LogType logType = LogType.CANBUS;
        bVarP.t(logType, "SoundChangeTo 1111111=== " + this.f10397t);
        if (this.f10397t == z2) {
            return;
        }
        this.f10397t = z2;
        a.f.p().t(logType, "SoundChangeTo 222222=== " + this.f10397t);
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

    public final void m3(int i2) {
        qt.y0(116, i2);
        M = i2;
        int iB = this.D.b(11, 36);
        int i3 = M;
        if (iB != i3) {
            this.D.g(11, i3);
        }
    }

    public final void n3(int i2) {
        qt.y0(122, i2);
        z.k.s(227, 198, 2, 182, i2);
        P = i2;
        int iB = this.D.b(17, 0);
        int i3 = P;
        if (iB != i3) {
            this.D.g(17, i3);
        }
    }

    public final void o3(int i2) {
        qt.y0(120, 65535 & i2);
        K = i2;
        if (this.D.b(9, 0) != K) {
            SystemProperties.set("persist.sys.height", String.format(Locale.US, "%d", Integer.valueOf(K)));
            this.D.g(9, K);
        }
    }

    public final void p3(int i2) {
        qt.y0(121, i2);
        z.k.s(227, 168, 5, i2, 0, 0, 0, 0);
        O = i2;
        int iB = this.D.b(16, 0);
        int i3 = O;
        if (iB != i3) {
            this.D.g(16, i3);
        }
    }

    public final void q3(int i2) {
        qt.y0(119, 65535 & i2);
        J = i2;
        if (this.D.b(8, 0) != J) {
            SystemProperties.set("persist.sys.width", String.format(Locale.US, "%d", Integer.valueOf(J)));
            this.D.g(8, J);
        }
    }

    public final void r3(int i2) {
        qt.y0(115, i2);
        L = i2;
        int iB = this.D.b(10, 20);
        int i3 = L;
        if (iB != i3) {
            this.D.g(10, i3);
        }
    }

    public final void s3(int i2) {
        qt.y0(117, i2);
        N = i2;
        int iB = this.D.b(15, 0);
        int i3 = N;
        if (iB != i3) {
            this.D.g(15, i3);
        }
    }

    public final void t3(int i2) {
        qt.y0(118, i2);
        I = i2;
        f1.q qVarE = f1.o.g().e(15);
        if (qVarE != null && (qVarE instanceof f1.l)) {
            int i3 = I;
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
        int iB = this.D.b(7, 0);
        int i4 = I;
        if (iB != i4) {
            this.D.g(7, i4);
        }
    }
}

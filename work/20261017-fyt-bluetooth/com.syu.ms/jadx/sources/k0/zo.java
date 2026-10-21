package k0;

import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.text.Spanned;
import com.syu.jni.ToolsJni;
import java.util.Locale;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class zo extends lt {
    public static int A0 = 0;
    public static int B0 = 50;
    public static int C0 = 128;
    public static int D0 = 128;
    public static int E0 = 128;
    public static int F0 = 0;
    public static int G0 = 0;
    public static int H0 = 0;
    public static int I0 = 0;
    public static int J0 = 0;
    public static int K0 = 0;
    public static int L0 = 0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static int f12883i0 = 255;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static int f12884j0 = 0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static int f12885k0 = 0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static int f12886l0 = 8;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static int f12887m0 = 0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static int f12888n0 = 0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static int f12889o0 = 1;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static int f12890p0 = 0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static int f12891q0 = 0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static int f12892r0 = 0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static int f12893s0 = 20;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static int f12894t0 = 30;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static int f12895u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static int f12896v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static int f12897w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static int f12898x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static int f12899y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public static int f12900z0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12914h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12902b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12904c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12906d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f12908e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f12910f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12912g = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12916i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f12917j = {new int[]{1, 34}, new int[]{2, 35}, new int[]{3, 32}, new int[]{4, 33}, new int[]{5, 16}, new int[]{6, 31}, new int[]{7, 30}, new int[]{8, 5}, new int[]{9, 54}, new int[]{10, -1}, new int[]{11, 18}, new int[]{12, 6}, new int[]{13, 55}, new int[]{14, 1}, new int[]{15, 38}, new int[]{16, 2}, new int[]{17, 18}, new int[]{18, 26}, new int[]{19, 50}, new int[]{20, 13}, new int[]{23, 3}, new int[]{24, 4}, new int[]{25, 16}, new int[]{27, 11}, new int[]{28, 28}, new int[]{29, 27}, new int[]{30, 34}, new int[]{31, 35}, new int[]{32, 32}, new int[]{33, 33}, new int[]{34, 0}, new int[]{35, 9}, new int[]{36, -1}, new int[]{37, 38}, new int[]{38, 40}, new int[]{39, 41}, new int[]{40, 42}, new int[]{41, 43}, new int[]{42, 44}, new int[]{43, 45}, new int[]{44, 63}, new int[]{45, -1}, new int[]{46, -1}, new int[]{47, 54}, new int[]{49, 40}, new int[]{50, 41}, new int[]{51, 42}, new int[]{52, 43}, new int[]{53, 44}, new int[]{54, 45}, new int[]{55, 46}, new int[]{56, 47}, new int[]{57, 48}, new int[]{58, 51}, new int[]{59, 31}, new int[]{60, 30}, new int[]{61, 25}, new int[]{62, 70}, new int[]{63, 62}, new int[]{64, 53}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f12918k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f12919l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f12920m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f12921n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f12922o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f12923p = new c();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f12924q = new e();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f12925r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f12926s = new f();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f12927t = new g();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f12928u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f12929v = new h();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f12930w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f12931x = new i();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f12932y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f12933z = false;
    public boolean A = false;
    public boolean B = false;
    public final int C = 1;
    public final int D = 2;
    public final int E = 3;
    public final int F = 4;
    public final int G = 5;
    public final int H = 6;
    public final int I = 7;
    public final int J = 8;
    public final int K = 9;
    public final int L = 10;
    public final int M = 11;
    public final int N = 12;
    public final int O = 13;
    public final int P = 14;
    public final int Q = 15;
    public final int R = 16;
    public final int S = 17;
    public final int T = 18;
    public final int U = 19;
    public final int V = 20;
    public final int W = 21;
    public final int X = 22;
    public final int Y = 23;
    public final int Z = 24;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final int f12901a0 = 25;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final int f12903b0 = 26;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final int f12905c0 = 27;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final int f12907d0 = 28;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public o1.g0 f12909e0 = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f12911f0 = 0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public Runnable f12913g0 = new j();

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public Runnable f12915h0 = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            zo zoVar = zo.this;
            int i2 = zoVar.f12911f0 - 1;
            zoVar.f12911f0 = i2;
            if (i2 <= 0) {
                l0.b0.p0(zoVar.f12915h0);
                zo.this.f12911f0 = 6;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                int i3 = nt.f8633a;
                if (i3 == 721352 || i3 == 786888) {
                    z.k.s(227, 144, 2, 48, 0);
                    zo zoVar2 = zo.this;
                    zoVar2.k4(zoVar2.f12909e0.b(10, 20));
                    zo zoVar3 = zo.this;
                    zoVar3.P3(zoVar3.f12909e0.b(11, 30));
                    zo zoVar4 = zo.this;
                    zoVar4.l4(zoVar4.f12909e0.b(15, 0));
                    zo zoVar5 = zo.this;
                    zoVar5.h4(zoVar5.f12909e0.b(27, 0));
                    zo zoVar6 = zo.this;
                    zoVar6.Z3(zoVar6.f12909e0.b(23, 0));
                    zo zoVar7 = zo.this;
                    zoVar7.d4(zoVar7.f12909e0.b(24, 0));
                    zo zoVar8 = zo.this;
                    zoVar8.g4(zoVar8.f12909e0.b(25, 0));
                    zo zoVar9 = zo.this;
                    zoVar9.f4(zoVar9.f12909e0.b(28, 0));
                    return;
                }
                z.k.s(227, 144, 2, 48, 0);
                z.k.s(227, 144, 2, 55, 0);
                z.k.s(227, 144, 2, 56, 0);
                zo zoVar10 = zo.this;
                zoVar10.l4(zoVar10.f12909e0.b(15, 0));
                zo zoVar11 = zo.this;
                zoVar11.T3(zoVar11.f12909e0.b(1, 0));
                zo zoVar12 = zo.this;
                zoVar12.U3(zoVar12.f12909e0.b(3, 8));
                zo zoVar13 = zo.this;
                zoVar13.R3(zoVar13.f12909e0.b(4, 0));
                zo zoVar14 = zo.this;
                zoVar14.Q3(zoVar14.f12909e0.b(5, 0));
                zo zoVar15 = zo.this;
                zoVar15.V3(zoVar15.f12909e0.b(6, 1));
                zo zoVar16 = zo.this;
                zoVar16.m4(zoVar16.f12909e0.b(7, 0));
                zo zoVar17 = zo.this;
                zoVar17.k4(zoVar17.f12909e0.b(10, 20));
                zo zoVar18 = zo.this;
                zoVar18.P3(zoVar18.f12909e0.b(11, 30));
                zo zoVar19 = zo.this;
                zoVar19.c4(zoVar19.f12909e0.b(12, 0));
                zo zoVar20 = zo.this;
                zoVar20.a4(zoVar20.f12909e0.b(13, 0));
                zo zoVar21 = zo.this;
                zoVar21.e4(zoVar21.f12909e0.b(14, 0));
                zo zoVar22 = zo.this;
                zoVar22.b4(zoVar22.f12909e0.b(26, 0));
                zo zoVar23 = zo.this;
                zoVar23.h4(zoVar23.f12909e0.b(27, 0));
                zo zoVar24 = zo.this;
                zoVar24.X3(zoVar24.f12909e0.b(16, 0));
                zo zoVar25 = zo.this;
                zoVar25.Y3(zoVar25.f12909e0.b(17, 0));
                int i4 = nt.f8633a;
                if (i4 != 9568710 && i4 != 3932616) {
                    zo zoVar26 = zo.this;
                    zoVar26.W3(zoVar26.f12909e0.b(18, 0), zo.this.f12909e0.b(19, 50), zo.this.f12909e0.b(20, 128), zo.this.f12909e0.b(21, 128), zo.this.f12909e0.b(22, 128));
                }
                switch (nt.f8633a) {
                    case 12911047:
                    case 12976583:
                        z.k.s(227, 198, 2, 129, 1);
                        break;
                    case 14418375:
                    case 14483911:
                        z.k.s(227, 198, 2, 129, 0);
                        break;
                    case 14549447:
                    case 14614983:
                        z.k.s(227, 198, 2, 129, 3);
                        break;
                    case 14680519:
                    case 14746055:
                        z.k.s(227, 198, 2, 129, 2);
                        break;
                }
                if (zo.this.f12909e0.b(8, 0) != 0 && SystemProperties.getInt("persist.sys.width", 0) != zo.this.f12909e0.b(8, 0)) {
                    SystemProperties.set("persist.sys.width", String.format(Locale.US, "%d", Integer.valueOf(zo.this.f12909e0.b(8, 0))));
                }
                zo zoVar27 = zo.this;
                zoVar27.j4(zoVar27.f12909e0.b(8, 0));
                if (zo.this.f12909e0.b(9, 0) != 0 && SystemProperties.getInt("persist.sys.height", 0) != zo.this.f12909e0.b(9, 0)) {
                    SystemProperties.set("persist.sys.height", String.format(Locale.US, "%d", Integer.valueOf(zo.this.f12909e0.b(9, 0))));
                }
                zo zoVar28 = zo.this;
                zoVar28.i4(zoVar28.f12909e0.b(9, 0));
                zo zoVar29 = zo.this;
                zoVar29.Z3(zoVar29.f12909e0.b(23, 0));
                zo zoVar30 = zo.this;
                zoVar30.d4(zoVar30.f12909e0.b(24, 0));
                zo zoVar31 = zo.this;
                zoVar31.g4(zoVar31.f12909e0.b(25, 0));
                if (zo.this.f12920m == 0) {
                    if (o1.u.S(a.b.Q) || u0.b.D == 13) {
                        return;
                    }
                    if (zo.f12898x0 == 0) {
                        y0.h.u0(zo.f12894t0);
                    }
                    z.k.s(227, 192, 2, 1, 0);
                    y0.h.k(1);
                    return;
                }
                if (o1.u.S(a.b.Q) || zo.this.f12919l != 2 || u0.b.D == 13) {
                    return;
                }
                if (zo.f12898x0 == 0) {
                    y0.h.u0(zo.f12894t0);
                }
                z.k.s(227, 192, 2, 1, 0);
                y0.h.k(1);
            }
        }
    }

    public class b implements o1.p {
        public b() {
        }

        @Override // o1.p
        public void d(Object obj) {
            zo zoVar = zo.this;
            int i2 = zoVar.f12932y;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                zoVar.f12932y = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (zoVar.A) {
                        zoVar.a3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    zoVar.a3(true);
                } else if (y0.f.Q0 == 0) {
                    zoVar.a3(false);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17357r0 == 0) {
                a.f.p().t(LogType.CANBUS, "mCarBackDelayTime  = " + zo.H0 + "----DataMain.sAppId = " + u0.b.D);
                if (zo.G0 == 1) {
                    if (zo.H0 > 0) {
                        zo.e3();
                    }
                    if (zo.H0 <= 0) {
                        zo zoVar = zo.this;
                        if (zoVar.f12902b == 0 && zoVar.f12904c == 0) {
                            a.i.a0(100L);
                            if (zo.this.f12908e && o1.u.a0()) {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                                y0.h.t0(zo.this.f12912g);
                            }
                            a.i.a0(250L);
                            SystemProperties.set("persist.lesc.video.ignore", "false");
                            zo.this.f12908e = false;
                        }
                    }
                }
            }
        }
    }

    public class d implements o1.p {
        public d() {
        }

        @Override // o1.p
        public void d(Object obj) {
            zo zoVar = zo.this;
            int i2 = zoVar.f12932y;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                zoVar.f12932y = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (zoVar.A) {
                        zoVar.a3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    zoVar.a3(true);
                } else if (y0.f.Q0 == 0) {
                    zoVar.a3(false);
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
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

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            zo zoVar = zo.this;
            int i2 = zoVar.f12928u;
            if (i2 > 0) {
                int i3 = i2 - 1;
                zoVar.f12928u = i3;
                if (i3 == 0 && u0.b.D != 13) {
                    if (zo.f12884j0 != 0) {
                        int i4 = zo.f12885k0;
                        if (zo.f12885k0 == 0 && zo.f12899y0 == 1) {
                            i4 = 3;
                        }
                        z.k.s(227, 202, 4, i4, zo.f12886l0, ((zo.f12887m0 << 7) & 128) | ((zo.f12888n0 << 4) & 112) | ((zo.f12900z0 << 3) & 8), zo.f12889o0);
                    }
                    if (zo.f12898x0 == 0) {
                        y0.h.u0(zo.f12894t0);
                    }
                    zo zoVar2 = zo.this;
                    if (zoVar2.A) {
                        zoVar2.a3(false);
                    }
                }
            }
            if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                zo zoVar3 = zo.this;
                int i5 = zoVar3.f12925r + 1;
                zoVar3.f12925r = i5;
                if (i5 >= 2) {
                    z.k.s(227, 144, 2, 41, 0);
                    zo.this.f12925r = 0;
                }
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 13 || o1.u.S(a.b.Q)) {
                int i2 = h0.c.E;
                if (i2 == 3 || i2 == 4 || i2 == 5) {
                    zo.this.a3(true);
                } else {
                    zo.this.a3(false);
                }
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = zo.f12883i0;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 == 13) {
                    y0.h.k(0);
                } else {
                    y0.h.k(1);
                }
                if (u0.b.D != 13) {
                    n1.b bVarP = a.f.p();
                    LogType logType = LogType.CANBUS;
                    bVarP.t(logType, "DataMain.sAppId 22222222222222 = " + u0.b.D);
                    a.f.p().t(logType, "appId_prev 3333333333333 = " + zo.f12883i0);
                    if (zo.f12883i0 == 13) {
                        if (zo.f12884j0 != 0 && zo.this.f12928u <= 0) {
                            int i4 = zo.f12885k0;
                            if (zo.f12885k0 == 0 && zo.f12899y0 == 1) {
                                i4 = 3;
                            }
                            z.k.s(227, 202, 4, i4, zo.f12886l0, ((zo.f12887m0 << 7) & 128) | ((zo.f12888n0 << 4) & 112) | ((zo.f12900z0 << 3) & 8), zo.f12889o0);
                        }
                        if (zo.f12898x0 == 0) {
                            y0.h.u0(zo.f12894t0);
                        }
                    }
                    zo zoVar = zo.this;
                    if (zoVar.A) {
                        zoVar.a3(false);
                    }
                }
                zo.f12883i0 = u0.b.D;
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            zo.this.f12930w = y0.f.Q0;
            a.f.p().t(LogType.CANBUS, "mCarSendNaviSound DataSound.sNaviSoundOn= " + y0.f.Q0 + "---- caruitype =   " + zo.this.f12919l);
            if (u0.b.D != 13) {
                zo zoVar = zo.this;
                if (zoVar.A) {
                    zoVar.a3(false);
                    return;
                }
                return;
            }
            int i2 = y0.f.Q0;
            if (i2 != 0) {
                if (i2 != 1) {
                    return;
                }
                zo.this.a3(true);
            } else if (u0.b.j4 == 0) {
                zo.this.a3(false);
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = SystemProperties.get("ro.fyt.platform", ProxyProperties.LOCAL_EXCL_LIST);
            if (nt.f8633a == 3146183) {
                if ("6521".equals(str)) {
                    ToolsJni.cmd_31_fan_en(1);
                } else if ("6316".equals(str) || "6312".equals(str)) {
                    ToolsJni.cmd_251_Normal_Io_Set(13, 1);
                } else if ("6315".equals(str) || "6318".equals(str) || "6319".equals(str)) {
                    ToolsJni.cmd_251_Normal_Io_Set(14, 1);
                } else {
                    ToolsJni.cmd_251_Normal_Io_Set(5, 1);
                }
            } else if ("6521".equals(str)) {
                ToolsJni.cmd_31_fan_en(0);
            } else if ("6316".equals(str) || "6312".equals(str)) {
                ToolsJni.cmd_251_Normal_Io_Set(13, 0);
            } else if ("6315".equals(str) || "6318".equals(str) || "6319".equals(str)) {
                ToolsJni.cmd_251_Normal_Io_Set(14, 0);
            } else {
                ToolsJni.cmd_251_Normal_Io_Set(5, 0);
            }
            l0.b0.b(zo.this.f12915h0);
            zo zoVar = zo.this;
            zoVar.f12911f0 = 5;
            zoVar.f12922o = false;
        }
    }

    public static /* synthetic */ int e3() {
        int i2 = H0;
        H0 = i2 - 1;
        return i2;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public final void P3(int i2) {
        qt.y0(153, i2);
        f12894t0 = i2;
        int iB = this.f12909e0.b(11, 30);
        int i3 = f12894t0;
        if (iB != i3) {
            this.f12909e0.g(11, i3);
        }
    }

    public final void Q3(int i2) {
        qt.y0(147, i2);
        f12888n0 = i2;
        int iB = this.f12909e0.b(5, 0);
        int i3 = f12888n0;
        if (iB != i3) {
            this.f12909e0.g(5, i3);
        }
    }

    public final void R3(int i2) {
        qt.y0(146, i2);
        f12887m0 = i2;
        int iB = this.f12909e0.b(4, 0);
        int i3 = f12887m0;
        if (iB != i3) {
            this.f12909e0.g(4, i3);
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f12909e0.a();
        u0.c.f17386m.a(this.f12913g0, 1);
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
        if (nt.f8633a == 16122310) {
            mtVar.f8317l = 0;
        }
        y0.g.f18110t.a(this.f12931x, 1);
        y0.g.f18101k.a(new b());
        h0.d.f2462a.a(this.f12927t, 1);
        u0.c.f17374a.a(this.f12929v, 1);
        l0.b0.a(this.f12926s);
        u0.c.f17399z.a(this.f12924q, 1);
        l0.b0.b(this.f12923p);
    }

    public final void S3(int i2) {
        qt.y0(144, i2);
        f12885k0 = i2;
    }

    public final void T3(int i2) {
        qt.y0(143, i2);
        f12884j0 = i2;
        int iB = this.f12909e0.b(1, 0);
        int i3 = f12884j0;
        if (iB != i3) {
            this.f12909e0.g(1, i3);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == 25) {
            int i4 = i2 + 2;
            qt.y0(174, (bArr[i4] >> 7) & 1);
            qt.y0(175, (bArr[i4] >> 6) & 1);
            qt.y0(176, (bArr[i4] >> 0) & 15);
            int i5 = i2 + 3;
            qt.y0(177, (bArr[i5] >> 7) & 1);
            qt.y0(178, (bArr[i5] >> 6) & 1);
            qt.y0(179, (bArr[i5] >> 5) & 1);
            qt.y0(180, (bArr[i5] >> 4) & 1);
            qt.y0(181, (bArr[i5] >> 3) & 1);
            qt.y0(182, (bArr[i5] >> 2) & 1);
            qt.y0(183, (bArr[i5] >> 1) & 1);
            qt.y0(184, (bArr[i5] >> 0) & 1);
            qt.y0(185, (bArr[i2 + 4] >> 0) & 1);
            qt.y0(186, (bArr[i2 + 5] >> 0) & 255);
            qt.y0(187, (bArr[i2 + 6] >> 0) & 255);
            qt.y0(188, (bArr[i2 + 7] >> 0) & 255);
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12916i = b3 & 255;
            int i6 = 0;
            while (true) {
                int[][] iArr = this.f12917j;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f12916i;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f12914h = i6;
                    break;
                }
                i6++;
            }
            int i8 = this.f12916i;
            if (i8 == 1) {
                if (this.f12920m == 1) {
                    if ((b4 & 255) == 1) {
                        l0.b0.l0(3, 0);
                        l0.b0.l0(3, 1);
                        return;
                    }
                    return;
                }
                if ((b4 & 255) == 1) {
                    l0.b0.l0(34, 0);
                    l0.b0.l0(34, 1);
                    return;
                }
                return;
            }
            if (i8 == 2) {
                if (this.f12920m == 1) {
                    if ((b4 & 255) == 1) {
                        l0.b0.l0(4, 0);
                        l0.b0.l0(4, 1);
                        return;
                    }
                    return;
                }
                if ((b4 & 255) == 1) {
                    l0.b0.l0(35, 0);
                    l0.b0.l0(35, 1);
                    return;
                }
                return;
            }
            if (i8 == 21) {
                if (f12898x0 == 1 && (b4 & 255) == 1) {
                    l0.b0.l0(7, 0);
                    l0.b0.l0(7, 1);
                    return;
                }
                return;
            }
            if (i8 == 22) {
                if (f12898x0 == 1 && (b4 & 255) == 1) {
                    l0.b0.l0(8, 0);
                    l0.b0.l0(8, 1);
                    return;
                }
                return;
            }
            if (i8 == 26) {
                if (f12898x0 == 1 && (b4 & 255) == 1) {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                    return;
                }
                return;
            }
            if (i8 != 36) {
                if (i8 != 59) {
                    if (i8 != 60) {
                        switch (i8) {
                            case 5:
                                if ((b4 & 255) == 1) {
                                    if (nt.f8655p == 0) {
                                        l0.b0.l0(16, 0);
                                        l0.b0.l0(16, 1);
                                    } else {
                                        l0.b0.l0(29, 0);
                                        l0.b0.l0(29, 1);
                                    }
                                }
                                break;
                            case 6:
                                break;
                            case 7:
                                break;
                            case 8:
                                if (this.f12918k != b4) {
                                    if (o1.u.S(a.b.Q)) {
                                        if (b4 == 2 && this.f12918k == 1 && this.f12902b == 0 && this.f12904c == 0) {
                                            l0.b0.l0(5, 0);
                                            l0.b0.l0(5, 1);
                                        }
                                    } else if (b4 == 2 && this.f12918k == 1) {
                                        o1.u.z();
                                    } else if (b4 == 0 && this.f12918k == 1) {
                                        l0.b0.l0(5, 0);
                                        l0.b0.l0(5, 1);
                                    }
                                    this.f12918k = b4;
                                }
                                break;
                            case 9:
                                if ((b4 & 255) == 1 && !o1.u.S(a.b.Q)) {
                                    l0.b0.l0(54, 0);
                                    l0.b0.l0(54, 1);
                                    break;
                                }
                                break;
                            case 10:
                                if ((this.f12920m != 1 || !o1.u.S(a.b.Q)) && (b4 & 255) == 1 && !o1.u.S(a.b.Q)) {
                                    o1.u.z();
                                }
                                break;
                            case 11:
                                if ((b4 & 255) == 1 && !o1.u.S(a.b.Q)) {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                    break;
                                }
                                break;
                            case 12:
                                if ((this.f12920m != 1 || !o1.u.S(a.b.Q)) && this.f12918k != b4) {
                                    if (o1.u.S(a.b.Q)) {
                                        if (b4 == 2 && this.f12918k == 1 && this.f12902b == 0 && this.f12904c == 0) {
                                            l0.b0.l0(5, 0);
                                            l0.b0.l0(5, 1);
                                        }
                                    } else if (b4 == 2 && this.f12918k == 1) {
                                        o1.u.z();
                                    } else if (b4 == 0 && this.f12918k == 1) {
                                        l0.b0.l0(5, 0);
                                        l0.b0.l0(5, 1);
                                    }
                                    this.f12918k = b4;
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
                                if (this.f12918k != b4) {
                                    if (o1.u.S(a.b.Q)) {
                                        if (b4 == 2 && this.f12918k == 1 && this.f12902b == 0 && this.f12904c == 0) {
                                            l0.b0.l0(5, 0);
                                            l0.b0.l0(5, 1);
                                        }
                                    } else if (b4 == 2 && this.f12918k == 1) {
                                        o1.u.z();
                                    } else if (b4 == 0 && this.f12918k == 1) {
                                        l0.b0.l0(2, 0);
                                        l0.b0.l0(2, 1);
                                    }
                                    this.f12918k = b4;
                                }
                                break;
                            default:
                                if (this.f12920m != 1 || !o1.u.S(a.b.Q)) {
                                    int i9 = b4 & 255;
                                    if (i9 == 1) {
                                        int[][] iArr2 = this.f12917j;
                                        if (i6 < iArr2.length) {
                                            l0.b0.l0(iArr2[i6][1], 0);
                                        }
                                    } else if (i9 == 0) {
                                        int i10 = this.f12914h;
                                        int[][] iArr3 = this.f12917j;
                                        if (i10 < iArr3.length && i10 != 255) {
                                            l0.b0.l0(iArr3[i10][1], 1);
                                        }
                                        this.f12914h = 255;
                                    }
                                }
                                break;
                        }
                    }
                    if ((b4 & 255) == 1) {
                        if (K0 == 1) {
                            l0.b0.l0(31, 0);
                            l0.b0.l0(31, 1);
                            return;
                        } else {
                            l0.b0.l0(30, 0);
                            l0.b0.l0(30, 1);
                            return;
                        }
                    }
                    return;
                }
                if ((b4 & 255) == 1) {
                    if (K0 == 1) {
                        l0.b0.l0(30, 0);
                        l0.b0.l0(30, 1);
                        return;
                    } else {
                        l0.b0.l0(31, 0);
                        l0.b0.l0(31, 1);
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (b2 == 39) {
            if (this.f12920m == 0) {
                return;
            }
            int i11 = i2 + 2;
            qt.y0(10, (bArr[i11] >> 7) & 1);
            qt.y0(11, (bArr[i11] >> 6) & 1);
            qt.y0(12, (bArr[i11] >> 5) & 1);
            qt.y0(13, (bArr[i11] >> 4) & 1);
            qt.y0(65, (bArr[i11] >> 3) & 1);
            qt.y0(16, (bArr[i11] >> 1) & 1);
            qt.y0(62, (bArr[i11] >> 0) & 1);
            int i12 = i2 + 3;
            qt.y0(18, (bArr[i12] >> 7) & 1);
            qt.y0(19, (bArr[i12] >> 6) & 1);
            qt.y0(20, (bArr[i12] >> 5) & 1);
            qt.y0(49, (bArr[i12] >> 4) & 1);
            qt.y0(22, (bArr[i12] >> 3) & 1);
            qt.y0(23, (bArr[i12] >> 2) & 1);
            qt.y0(24, (bArr[i12] >> 1) & 1);
            qt.y0(50, (bArr[i12] >> 0) & 1);
            int i13 = i2 + 4;
            int i14 = bArr[i13] & 255;
            int i15 = i2 + 5;
            int i16 = bArr[i15] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i14 = bArr[i15] & 255;
                i16 = bArr[i13] & 255;
            }
            if (i14 == 0) {
                qt.y0(27, -2);
            } else if (i14 != 255) {
                qt.y0(27, i14);
            } else {
                qt.y0(27, -3);
            }
            if (i16 == 0) {
                qt.y0(28, -2);
            } else if (i16 != 255) {
                qt.y0(28, i16);
            } else {
                qt.y0(28, -3);
            }
            int i17 = i2 + 6;
            qt.y0(21, (bArr[i17] >> 0) & 15);
            qt.y0(49, (bArr[i17] >> 4) & 1);
            int i18 = i2 + 7;
            qt.y0(29, (bArr[i18] >> 5) & 7);
            qt.y0(30, (bArr[i18] >> 2) & 7);
            qt.y0(37, (bArr[i18] >> 0) & 1);
            int i19 = i2 + 8;
            qt.y0(109, (bArr[i19] >> 7) & 1);
            qt.y0(110, (bArr[i19] >> 6) & 1);
            qt.y0(111, (bArr[i19] >> 5) & 1);
            qt.y0(112, (bArr[i19] >> 4) & 1);
            qt.y0(113, (bArr[i19] >> 3) & 1);
            qt.y0(114, (bArr[i19] >> 2) & 1);
            qt.y0(115, (bArr[i19] >> 1) & 1);
            return;
        }
        if (b2 == 41) {
            qt.j(bArr[i2 + 3], 0, (bArr[i2 + 2] & 1) == 1 ? 0 : 1, 50);
            return;
        }
        if (b2 == 53) {
            int i20 = i2 + 2;
            qt.y0(98, (bArr[i20] >> 2) & 1);
            qt.y0(100, (bArr[i20] >> 4) & 1);
            qt.y0(101, (bArr[i20] >> 5) & 1);
            int i21 = (bArr[i20] >> 5) & 1;
            int i22 = (bArr[i20] >> 4) & 1;
            l0.c0.a(i21, i22, (bArr[i20] >> 6) & 1);
            int i23 = ((i21 << 3) & 8) | ((i22 << 4) & 16) | ((u0.b.f17366w << 6) & 64);
            o1.x[] xVarArr = nt.f8643f;
            o1.x.C(xVarArr, 1049, new int[]{11, i23}, null, null);
            int i24 = i2 + 3;
            qt.y0(105, bArr[i24] & 255);
            qt.y0(1031, bArr[i24] & 255);
            o1.x.C(xVarArr, 1049, new int[]{1, bArr[i24] & 255}, null, null);
            int i25 = i2 + 6;
            int i26 = i2 + 7;
            qt.y0(107, ((bArr[i25] << 8) & 65280) | (bArr[i26] & 255));
            qt.y0(1032, ((bArr[i25] << 8) & 65280) | (bArr[i26] & 255));
            qt.y0(108, ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(189, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(131, (bArr[i20] >> 6) & 1);
            qt.y0(136, (bArr[i20] >> 1) & 1);
            qt.y0(137, (bArr[i20] >> 0) & 1);
            int i27 = i2 + 12;
            qt.y0(141, (bArr[i27] >> 7) & 1);
            qt.y0(142, (bArr[i27] >> 6) & 1);
            qt.y0(106, bArr[i2 + 13] & 255);
            int i28 = i2 + 14;
            this.f12920m = bArr[i28] & 255;
            S3(bArr[i28] & 255);
            this.f12922o = true;
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.u1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.u1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.u1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.u1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i29 = i2 + 2;
                int i30 = bArr[i29] & 255;
                int i31 = i2 + 3;
                int i32 = bArr[i31] & 255;
                int i33 = i2 + 4;
                int i34 = bArr[i33] & 255;
                int i35 = i2 + 5;
                int i36 = bArr[i35] & 255;
                if (i30 == 0 && i32 == 0 && i34 == 0 && i36 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i30 || l0.c0.f13014h != i32 || l0.c0.f13015i != i34 || l0.c0.f13016j != i36) && this.f12902b == 0 && this.f12904c == 0 && !o1.u.a0()) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 8;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i30;
                l0.c0.f13014h = i32;
                l0.c0.f13015i = i34;
                l0.c0.f13016j = i36;
                u0.d.D2(l0.c0.u1(bArr[i29] & 255));
                u0.d.E2(l0.c0.u1(bArr[i31] & 255));
                u0.d.F2(l0.c0.u1(bArr[i33] & 255));
                u0.d.G2(l0.c0.u1(bArr[i35] & 255));
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
                int i37 = i2 + 3;
                qt.y0(102, (bArr[i37] >> 5) & 1);
                qt.y0(104, (bArr[i37] >> 3) & 1);
                if (this.f12902b != ((bArr[i37] >> 2) & 1) || this.f12904c != ((bArr[i37] >> 6) & 1)) {
                    int i38 = (bArr[i37] >> 2) & 1;
                    this.f12902b = i38;
                    int i39 = (bArr[i37] >> 6) & 1;
                    this.f12904c = i39;
                    if (u0.b.f17357r0 == 0) {
                        if (i38 == 1 || i39 == 1) {
                            if (!this.f12908e && !o1.u.a0()) {
                                qt.y0(171, 1);
                                this.f12908e = true;
                                SystemProperties.set("persist.lesc.video.ignore", "true");
                                a.i.a0(200L);
                                o1.u.z();
                                float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                                this.f12912g = y0.f.f18037c;
                                y0.h.t0((int) f2);
                            }
                            u0.d.C2(0);
                        } else if (i38 == 0 && i39 == 0) {
                            if (G0 == 0) {
                                y0.h.t0(this.f12912g);
                                if (this.f12908e && o1.u.a0()) {
                                    qt.y0(171, 0);
                                    a.i.a0(350L);
                                    SystemProperties.set("persist.lesc.video.ignore", "false");
                                    if (SystemProperties.getBoolean("persist.fyt.fy_radartofront", false)) {
                                        o1.u.f("com.syu.frontvideo");
                                    }
                                }
                                this.f12908e = false;
                            } else {
                                H0 = 10;
                            }
                        }
                    }
                }
                if (this.f12906d != ((bArr[i37] >> 7) & 1)) {
                    int i40 = (bArr[i37] >> 7) & 1;
                    this.f12906d = i40;
                    if (i40 == 1 && this.f12902b == 0 && this.f12911f0 == 6) {
                        if (I0 == 1) {
                            if (!o1.u.a0()) {
                                this.f12910f = true;
                                o1.u.z();
                            }
                        } else if (!o1.u.a0()) {
                            u0.d.C2(1);
                        }
                    } else if (I0 == 1) {
                        if (this.f12910f && o1.u.a0()) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                        this.f12910f = false;
                    } else {
                        u0.d.C2(0);
                    }
                    if (this.f12906d == 0) {
                        u0.d.R2(10);
                        u0.d.S2(10);
                        u0.d.T2(10);
                        u0.d.U2(10);
                        u0.d.D2(10);
                        u0.d.E2(10);
                        u0.d.F2(10);
                        u0.d.G2(10);
                    }
                }
                break;
            default:
                switch (b2) {
                    case 48:
                        qt.L(new String(bArr, i2 + 2, i3 - 2));
                        break;
                    case 49:
                        int i41 = i2 + 2;
                        qt.y0(116, (bArr[i41] >> 7) & 1);
                        qt.y0(117, (bArr[i41] >> 6) & 1);
                        qt.y0(118, (bArr[i41] >> 5) & 1);
                        qt.y0(119, (bArr[i41] >> 4) & 1);
                        break;
                    case 50:
                        int i42 = i2 + 2;
                        qt.y0(120, (bArr[i42] >> 6) & 3);
                        qt.y0(121, (bArr[i42] >> 4) & 3);
                        qt.y0(122, (bArr[i42] >> 2) & 3);
                        qt.y0(123, (bArr[i42] >> 0) & 3);
                        int i43 = i2 + 3;
                        qt.y0(124, (bArr[i43] >> 6) & 3);
                        qt.y0(1042, ((bArr[i42] >> 6) & 3) | 256);
                        qt.y0(1042, ((bArr[i42] >> 2) & 3) | 512);
                        qt.y0(1042, ((bArr[i42] >> 0) & 3) | 1024);
                        qt.y0(1042, ((bArr[i43] >> 6) & 3) | 2048);
                        break;
                    default:
                        switch (b2) {
                            case 55:
                                int i44 = i2 + 2;
                                if (this.f12919l != bArr[i44]) {
                                    byte b6 = bArr[i44];
                                    this.f12919l = b6;
                                    if (b6 == 1 && this.f12921n == 0 && this.f12911f0 == 6 && !o1.u.S(a.b.Q)) {
                                        o1.u.f(a.b.R);
                                    }
                                }
                                qt.y0(125, bArr[i44] & 255);
                                break;
                            case 56:
                                if (this.f12920m == 0) {
                                    int i45 = (bArr[i2 + 2] >> 7) & 1;
                                    this.f12921n = i45;
                                    if (i45 == 0) {
                                        qt.Y(1);
                                    } else {
                                        qt.Y(0);
                                    }
                                }
                                int i46 = i2 + 2;
                                qt.y0(126, (bArr[i46] >> 7) & 1);
                                qt.y0(127, (bArr[i46] >> 4) & 1);
                                qt.y0(128, (bArr[i46] >> 0) & 3);
                                qt.y0(159, bArr[i2 + 3] & 255);
                                int i47 = i2 + 4;
                                qt.y0(129, (bArr[i47] >> 6) & 1);
                                qt.y0(160, (bArr[i47] >> 4) & 1);
                                qt.y0(154, bArr[i2 + 5] & 255);
                                break;
                            case 57:
                                qt.y0(130, (bArr[i2 + 2] & 255) + 1);
                                break;
                        }
                        break;
                }
                break;
        }
    }

    public final void U3(int i2) {
        qt.y0(145, i2);
        f12886l0 = i2;
        int iB = this.f12909e0.b(3, 8);
        int i3 = f12886l0;
        if (iB != i3) {
            this.f12909e0.g(3, i3);
        }
    }

    public final void V3(int i2) {
        qt.y0(148, i2);
        f12889o0 = i2;
        int iB = this.f12909e0.b(6, 0);
        int i3 = f12889o0;
        if (iB != i3) {
            this.f12909e0.g(6, i3);
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f12909e0.j();
        l0.b0.p0(this.f12923p);
        u0.c.f17386m.d(this.f12913g0);
        l0.b0.p0(this.f12915h0);
        y0.g.f18110t.d(this.f12931x);
        h0.d.f2462a.d(this.f12927t);
        u0.c.f17374a.d(this.f12929v);
        l0.b0.o0(this.f12926s);
        u0.c.f17399z.d(this.f12924q);
        y0.g.f18101k.d(new d());
    }

    public final void W3(int i2, int i3, int i4, int i5, int i6) {
        qt.y0(163, i2);
        qt.y0(164, i3);
        qt.y0(165, i4);
        qt.y0(166, i5);
        qt.y0(167, i6);
        z.k.s(227, 153, 5, i2, i3, i4, i5, i6);
        A0 = i2;
        int iB = this.f12909e0.b(18, 0);
        int i7 = A0;
        if (iB != i7) {
            this.f12909e0.g(18, i7);
        }
        B0 = i3;
        int iB2 = this.f12909e0.b(19, 0);
        int i8 = B0;
        if (iB2 != i8) {
            this.f12909e0.g(19, i8);
        }
        C0 = i4;
        int iB3 = this.f12909e0.b(20, 0);
        int i9 = C0;
        if (iB3 != i9) {
            this.f12909e0.g(20, i9);
        }
        D0 = i5;
        int iB4 = this.f12909e0.b(21, 0);
        int i10 = D0;
        if (iB4 != i10) {
            this.f12909e0.g(21, i10);
        }
        E0 = i6;
        int iB5 = this.f12909e0.b(22, 0);
        int i11 = E0;
        if (iB5 != i11) {
            this.f12909e0.g(22, i11);
        }
    }

    public final void X3(int i2) {
        qt.y0(161, i2);
        f12899y0 = i2;
        int iB = this.f12909e0.b(16, 0);
        int i3 = f12899y0;
        if (iB != i3) {
            this.f12909e0.g(16, i3);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 191) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    public final void Y3(int i2) {
        qt.y0(162, i2);
        f12900z0 = i2;
        int iB = this.f12909e0.b(17, 0);
        int i3 = f12900z0;
        if (iB != i3) {
            this.f12909e0.g(17, i3);
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1034) {
            a.f.p().t(LogType.CANBUS, "C_CANBUS_BENZ_BUTTON = " + iArr[0]);
            int i3 = (iArr[0] >> 8) & 255;
            if (i3 == 0) {
                z.k.s(227, 203, 2, 0, 0);
            }
            if (i3 == 1) {
                z.k.s(227, 203, 2, 5, 0);
                return;
            }
            if (i3 == 2) {
                z.k.s(227, 203, 2, 6, 0);
                return;
            }
            if (i3 == 4) {
                z.k.s(227, 203, 2, 7, 0);
                return;
            }
            if (i3 == 8) {
                z.k.s(227, 203, 2, 8, 0);
                return;
            }
            if (i3 == 16) {
                if ((iArr[0] & 255) == 1) {
                    z.k.s(227, 203, 2, 3, 0);
                    return;
                } else {
                    if ((iArr[0] & 255) == 2) {
                        z.k.s(227, 203, 2, 4, 0);
                        return;
                    }
                    return;
                }
            }
            if (i3 != 32) {
                return;
            }
            if ((iArr[0] & 255) == 1) {
                z.k.s(227, 203, 2, 1, 0);
                return;
            } else {
                if ((iArr[0] & 255) == 2) {
                    z.k.s(227, 203, 2, 2, 0);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 0:
                if ((iArr[0] & 255) == 255) {
                    T3(iArr[1]);
                } else if ((iArr[0] & 255) == 254) {
                    m4(iArr[1]);
                } else if ((iArr[0] & 255) == 253) {
                    k4(iArr[1]);
                } else if ((iArr[0] & 255) == 252) {
                    P3(iArr[1]);
                } else if ((iArr[0] & 255) == 251) {
                    c4(iArr[1]);
                } else if ((iArr[0] & 255) == 250) {
                    a4(iArr[1]);
                } else if ((iArr[0] & 255) == 249) {
                    e4(iArr[1]);
                } else if ((iArr[0] & 255) != 248) {
                    if ((iArr[0] & 255) == 247) {
                        l4(iArr[1]);
                    } else if ((iArr[0] & 255) == 246) {
                        X3(iArr[1]);
                    } else if ((iArr[0] & 255) == 245) {
                        Y3(iArr[1]);
                    } else if ((iArr[0] & 255) == 244) {
                        Z3(iArr[1]);
                    } else if ((iArr[0] & 255) == 243) {
                        d4(iArr[1]);
                    } else if ((iArr[0] & 255) == 242) {
                        g4(iArr[1]);
                    } else if ((iArr[0] & 255) == 128) {
                        b4(iArr[1]);
                    } else if ((iArr[0] & 255) == 241) {
                        h4(iArr[1]);
                    } else if ((iArr[0] & 255) == 240) {
                        f4(iArr[1]);
                    } else if ((iArr[0] & 255) != 5) {
                        z.k.s(227, 198, 2, iArr[0], iArr[1]);
                    } else {
                        SystemProperties.set("persist.sys.lzbbatype", ProxyProperties.LOCAL_EXCL_LIST + iArr[1]);
                        z.k.s(227, 198, 2, iArr[0], iArr[1]);
                    }
                } else if (!this.f12922o) {
                    S3(iArr[1]);
                }
                break;
            case 1:
                z.k.s(227, 144, 2, iArr[0], iArr[1]);
                break;
            case 2:
                if (iArr[0] == 0) {
                    if (!SystemProperties.getBoolean("persist.lesc.video.ignore", false) && f12898x0 == 0) {
                        y0.h.u0(f12893s0);
                    }
                    int i4 = h0.c.E;
                    if ((i4 == 3 || i4 == 4 || i4 == 5) && !this.A) {
                        a3(true);
                    }
                } else {
                    this.f12928u = 15;
                }
                if (iArr[0] != 1 || (l0.c0.f13026t == 0 && l0.c0.f13024r == 0 && l0.c0.f13028v == 0 && !l0.c0.f13023q)) {
                    z.k.s(227, 192, 2, iArr[0], iArr[1]);
                }
                break;
            case 3:
                z.k.s(227, 200, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                break;
            case 4:
                U3(iArr[1]);
                R3((iArr[2] >> 7) & 1);
                Q3((iArr[2] >> 4) & 7);
                V3(iArr[3]);
                break;
            case 5:
                j4(iArr[0]);
                i4(iArr[1]);
                break;
            case 6:
                if (nt.U == 1) {
                    o1.x.x(nt.f8643f, 1001, iArr[0]);
                }
                break;
            case 7:
                W3(iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                break;
            case 8:
                z.k.s(227, 153, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                break;
        }
    }

    public final void Z3(int i2) {
        qt.y0(168, i2);
        F0 = i2;
        if (this.f12909e0.b(23, 0) != F0) {
            SystemProperties.set("persist.sys.allscreenon", String.format(Locale.US, "%d", Integer.valueOf(F0)));
            this.f12909e0.g(23, F0);
        }
    }

    public final void a3(boolean z2) {
        if (nt.f8633a == 3146183) {
            String str = SystemProperties.get("ro.fyt.platform", ProxyProperties.LOCAL_EXCL_LIST);
            if ("6521".equals(str)) {
                ToolsJni.cmd_31_fan_en(1);
                return;
            }
            if ("6316".equals(str) || "6312".equals(str)) {
                ToolsJni.cmd_251_Normal_Io_Set(13, 1);
                return;
            } else if ("6315".equals(str) || "6318".equals(str) || "6319".equals(str)) {
                ToolsJni.cmd_251_Normal_Io_Set(14, 1);
                return;
            } else {
                ToolsJni.cmd_251_Normal_Io_Set(5, 1);
                return;
            }
        }
        if (u0.b.f17306a0 == 0) {
            return;
        }
        n1.b bVarP = a.f.p();
        LogType logType = LogType.CANBUS;
        bVarP.t(logType, "SoundChangeTo 1111111=== " + this.A);
        if (this.A == z2) {
            return;
        }
        this.A = z2;
        a.f.p().t(logType, "SoundChangeTo 222222=== " + this.A);
        String str2 = SystemProperties.get("ro.fyt.platform", ProxyProperties.LOCAL_EXCL_LIST);
        if ("6521".equals(str2)) {
            if (z2) {
                ToolsJni.cmd_31_fan_en(1);
                return;
            } else {
                ToolsJni.cmd_31_fan_en(0);
                return;
            }
        }
        if ("6316".equals(str2) || "6312".equals(str2)) {
            if (z2) {
                ToolsJni.cmd_251_Normal_Io_Set(13, 1);
                return;
            } else {
                ToolsJni.cmd_251_Normal_Io_Set(13, 0);
                return;
            }
        }
        if ("6315".equals(str2) || "6318".equals(str2) || "6319".equals(str2)) {
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

    public final void a4(int i2) {
        qt.y0(157, i2);
        f12896v0 = i2;
        int iB = this.f12909e0.b(13, 0);
        int i3 = f12896v0;
        if (iB != i3) {
            this.f12909e0.g(13, i3);
        }
    }

    public final void b4(int i2) {
        qt.y0(172, i2);
        J0 = i2;
        z.k.s(227, 198, 2, 128, i2);
        int iB = this.f12909e0.b(26, 0);
        int i3 = J0;
        if (iB != i3) {
            this.f12909e0.g(26, i3);
        }
    }

    public final void c4(int i2) {
        qt.y0(155, i2);
        f12895u0 = i2;
        int iB = this.f12909e0.b(12, 0);
        int i3 = f12895u0;
        if (iB != i3) {
            this.f12909e0.g(12, i3);
        }
    }

    public final void d4(int i2) {
        qt.y0(169, i2);
        G0 = i2;
        int iB = this.f12909e0.b(24, 0);
        int i3 = G0;
        if (iB != i3) {
            this.f12909e0.g(24, i3);
        }
    }

    public final void e4(int i2) {
        qt.y0(156, i2);
        f12897w0 = i2;
        int iB = this.f12909e0.b(14, 0);
        int i3 = f12897w0;
        if (iB != i3) {
            this.f12909e0.g(14, i3);
        }
    }

    public final void f4(int i2) {
        qt.y0(190, i2);
        L0 = i2;
        z.k.s(227, 202, 4, 4, 0, i2, 0);
        int iB = this.f12909e0.b(28, 0);
        int i3 = L0;
        if (iB != i3) {
            this.f12909e0.g(28, i3);
        }
    }

    public final void g4(int i2) {
        qt.y0(170, i2);
        I0 = i2;
        int iB = this.f12909e0.b(25, 0);
        int i3 = I0;
        if (iB != i3) {
            this.f12909e0.g(25, i3);
        }
    }

    public final void h4(int i2) {
        qt.y0(173, i2);
        K0 = i2;
        int iB = this.f12909e0.b(27, 0);
        int i3 = K0;
        if (iB != i3) {
            this.f12909e0.g(27, i3);
        }
    }

    public final void i4(int i2) {
        qt.y0(151, 65535 & i2);
        f12892r0 = i2;
        if (this.f12909e0.b(9, 0) != f12892r0) {
            SystemProperties.set("persist.sys.height", String.format(Locale.US, "%d", Integer.valueOf(f12892r0)));
            this.f12909e0.g(9, f12892r0);
        }
    }

    public final void j4(int i2) {
        qt.y0(150, 65535 & i2);
        f12891q0 = i2;
        if (this.f12909e0.b(8, 0) != f12891q0) {
            SystemProperties.set("persist.sys.width", String.format(Locale.US, "%d", Integer.valueOf(f12891q0)));
            this.f12909e0.g(8, f12891q0);
        }
    }

    public final void k4(int i2) {
        qt.y0(152, i2);
        f12893s0 = i2;
        int iB = this.f12909e0.b(10, 20);
        int i3 = f12893s0;
        if (iB != i3) {
            this.f12909e0.g(10, i3);
        }
    }

    public final void l4(int i2) {
        qt.y0(158, i2);
        f12898x0 = i2;
        int iB = this.f12909e0.b(15, 0);
        int i3 = f12898x0;
        if (iB != i3) {
            this.f12909e0.g(15, i3);
        }
    }

    public final void m4(int i2) {
        qt.y0(149, i2);
        f12890p0 = i2;
        f1.q qVarE = f1.o.g().e(15);
        if (qVarE != null && (qVarE instanceof f1.l)) {
            int i3 = f12890p0;
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
        int iB = this.f12909e0.b(7, 0);
        int i4 = f12890p0;
        if (iB != i4) {
            this.f12909e0.g(7, i4);
        }
    }
}

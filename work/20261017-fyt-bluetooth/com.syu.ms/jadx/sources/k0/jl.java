package k0;

import android.content.Intent;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import app.App;
import com.syu.jni.ToolsJni;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import plugins.ZLink;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class jl extends lt implements o1.q {

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static int f6901n0 = 255;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static e.e.a f6902o0 = new e.e.a(0, 0, 0);

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static int f6903p0 = 0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static int f6904q0 = 0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static int f6905r0 = 8;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static int f6906s0 = 1;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static int f6907t0 = 1;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static int f6908u0 = 0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static int f6909v0 = 0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static int f6910w0 = 0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static int f6911x0 = 0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static int f6912y0 = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f6930j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f6914b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6916c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6918d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6920e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6922f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f6924g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f6926h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6928i = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f6932k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f6934l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[][] f6936m = {new int[]{1, 34}, new int[]{2, 35}, new int[]{3, 32}, new int[]{4, 33}, new int[]{5, 82}, new int[]{6, 81}, new int[]{7, 80}, new int[]{8, 5}, new int[]{9, -1}, new int[]{10, -1}, new int[]{11, -1}, new int[]{12, 6}, new int[]{13, 55}, new int[]{14, 1}, new int[]{15, 38}, new int[]{16, 54}, new int[]{17, 18}, new int[]{18, 26}, new int[]{19, 50}, new int[]{20, 13}, new int[]{21, 7}, new int[]{22, 8}, new int[]{23, 3}, new int[]{24, 4}, new int[]{25, 16}, new int[]{26, 12}, new int[]{27, 11}, new int[]{28, 28}, new int[]{29, 27}, new int[]{30, 34}, new int[]{31, 35}, new int[]{32, 32}, new int[]{33, 33}, new int[]{34, 0}, new int[]{35, 58}, new int[]{36, -1}, new int[]{37, -1}, new int[]{38, -1}, new int[]{49, 40}, new int[]{50, 41}, new int[]{51, 42}, new int[]{52, 43}, new int[]{53, 44}, new int[]{54, 45}, new int[]{55, 46}, new int[]{56, 47}};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f6938n = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f6939o = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f6940p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f6941q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f6942r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f6943s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f6944t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f6945u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f6946v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f6947w = -1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f6948x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f6949y = new k();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f6950z = 0;
    public boolean A = false;
    public Runnable B = new s();
    public Runnable C = new t();
    public Runnable D = new u();
    public o1.p E = new v();
    public boolean F = false;
    public boolean G = false;
    public boolean H = false;
    public Runnable I = new w();
    public Runnable J = new x();
    public Runnable K = new f();
    public Runnable L = new g();
    public Runnable M = new h();
    public Runnable N = new i();
    public Runnable O = new j();
    public int P = 0;
    public Runnable Q = new l();
    public int R = 0;
    public Runnable S = new m();
    public final c.d T = new n();
    public int U = 0;
    public byte V = 5;
    public Runnable W = new o();
    public Runnable X = new p();
    public Runnable Y = new q();
    public Runnable Z = new r();

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final int f6913a0 = 1;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final int f6915b0 = 2;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final int f6917c0 = 3;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final int f6919d0 = 4;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final int f6921e0 = 5;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final int f6923f0 = 6;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public o1.g0 f6925g0 = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final int f6927h0 = 7;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final int f6929i0 = 8;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final int f6931j0 = 9;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final int f6933k0 = 23;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int[] f6935l0 = {34, 204};

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f6937m0 = 0;

    public class a implements o1.o {
        public a() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (o1.u.S(a.b.Q)) {
                if (i2 == 0) {
                    z.k.s(227, 0, 168, 2, 1, 7);
                } else if (i2 == 1) {
                    z.k.s(227, 0, 168, 2, 0, 7);
                }
            } else if (i2 == 0) {
                u0.d.A1();
            }
            return true;
        }
    }

    public class b implements o1.o {
        public b() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (o1.u.S(a.b.Q)) {
                if (i2 == 0) {
                    z.k.s(227, 0, 168, 2, 1, 6);
                } else if (i2 == 1) {
                    z.k.s(227, 0, 168, 2, 0, 6);
                }
            } else if (i2 == 0) {
                u0.d.u1();
            }
            return true;
        }
    }

    public class c implements o1.o {
        public c() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (o1.u.S(a.b.Q)) {
                if (i2 == 0) {
                    z.k.s(227, 0, 148, 2, 11, 1);
                } else if (i2 == 1) {
                    z.k.s(227, 0, 148, 2, 11, 0);
                }
            } else if (i2 == 0) {
                e.c.D.c(220, i2);
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
                z.k.s(227, 0, 148, 2, 10, 1);
            } else if (i2 == 1) {
                z.k.s(227, 0, 148, 2, 10, 0);
            }
            return true;
        }
    }

    public class e implements o1.o {
        public e() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (!o1.u.S(a.b.Q)) {
                if (i2 != 0) {
                    return true;
                }
                o1.u.i();
                return true;
            }
            if (i2 != 0) {
                return true;
            }
            z.k.s(227, 0, 148, 2, 9, 1);
            z.k.s(227, 0, 148, 2, 9, 0);
            return true;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 3) {
                jl.this.b3((byte) -123, (byte) 2, u0.b.i3);
            } else if (i2 != 10) {
                jl.this.b3((byte) -125, (byte) 2, u0.b.i3);
            } else {
                if (o1.u.S("com.syu.carlink")) {
                    return;
                }
                jl.this.b3((byte) -123, (byte) 2, u0.b.i3);
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 3) {
                jl.this.b3((byte) -123, (byte) 3, u0.b.j3);
                return;
            }
            if (i2 != 10) {
                jl.this.b3((byte) -125, (byte) 3, u0.b.j3);
            } else if (o1.u.S("com.syu.carlink")) {
                jl.this.b3((byte) -125, (byte) 2, u0.b.j3);
            } else {
                jl.this.b3((byte) -125, (byte) 3, u0.b.j3);
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 5) {
                jl.this.b3((byte) -121, (byte) 1, "AUX");
                return;
            }
            if (i2 == 2) {
                jl.this.b3((byte) -123, (byte) 1, "BT");
                return;
            }
            if (i2 == 3) {
                jl.this.b3((byte) -123, (byte) 1, "BTAV");
                return;
            }
            if (i2 == 8 || i2 == 9 || i2 == 10) {
                jl.this.b3((byte) -125, (byte) 1, ProxyProperties.LOCAL_EXCL_LIST);
                jl.this.b3((byte) -125, (byte) 2, u0.b.i3);
            } else if (i2 == 1) {
                jl.this.c3();
            } else if (u0.b.f17306a0 == 1) {
                jl.this.b3((byte) -120, (byte) 1, "NAVI");
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 1) {
                jl.this.c3();
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 12 || i2 == 23) {
                z.k.s(227, 0, 103, 3, 0, 0, 128);
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jl jlVar = jl.this;
            jlVar.f6948x = y0.f.Q0;
            int i2 = nt.f8637c;
            if (i2 == 13 || i2 == 14 || i2 == 15 || i2 == 22 || i2 == 18 || i2 == 19 || i2 == 20 || i2 == 21) {
                int i3 = u0.b.D;
                if (i3 != 13 && i3 != 0) {
                    jlVar.e3(true);
                    return;
                }
                int i4 = y0.f.Q0;
                if (i4 != 0) {
                    if (i4 != 1) {
                        return;
                    }
                    jlVar.e3(true);
                    return;
                } else {
                    if (u0.b.j4 == 0) {
                        jlVar.e3(false);
                        return;
                    }
                    return;
                }
            }
            if (u0.b.D != 13) {
                if (jlVar.F) {
                    jlVar.e3(false);
                    return;
                }
                return;
            }
            int i5 = y0.f.Q0;
            if (i5 != 0) {
                if (i5 != 1) {
                    return;
                }
                jlVar.e3(true);
            } else if (u0.b.j4 == 0) {
                jlVar.e3(false);
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jl jlVar = jl.this;
            int i2 = jlVar.P + 1;
            jlVar.P = i2;
            if (i2 > 7) {
                jlVar.P = 0;
            }
            qt.y0(21, jlVar.P);
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 != 5) {
                if (i2 != 6) {
                    if (i2 != 7) {
                        if (i2 != 8) {
                            if (i2 != 11) {
                                switch (i2) {
                                }
                            }
                        }
                        z.k.s(227, 0, 169, 1, 3);
                        return;
                    }
                    z.k.s(227, 0, 169, 1, 2);
                    return;
                }
                z.k.s(227, 0, 169, 1, 1);
                return;
            }
            z.k.s(227, 0, 169, 1, 0);
        }
    }

    public class n extends c.d {
        public n() {
        }

        @Override // c.d
        public boolean b(int i2) {
            int i3 = nt.f8637c;
            if (i3 != 15 && i3 != 18 && i3 != 19 && i3 != 20 && i3 != 21 && i3 != 22) {
                if (i2 == 87) {
                    if (!o1.u.S(a.b.Q)) {
                        u0.d.I1();
                        return false;
                    }
                    z.k.s(227, 0, 168, 2, 1, 5);
                    z.k.s(227, 0, 168, 2, 0, 5);
                    return false;
                }
                if (i2 != 88) {
                    return false;
                }
                if (!o1.u.S(a.b.Q)) {
                    u0.d.B1();
                    return false;
                }
                z.k.s(227, 0, 168, 2, 1, 4);
                z.k.s(227, 0, 168, 2, 0, 4);
                return false;
            }
            if (i2 == 85) {
                if (u0.b.D != 13) {
                    u0.d.y1();
                    return false;
                }
                z.k.s(227, 0, 148, 2, 14, 1);
                z.k.s(227, 0, 148, 2, 14, 0);
                return false;
            }
            if (i2 == 87) {
                if (u0.b.D != 13) {
                    u0.d.I1();
                    return false;
                }
                z.k.s(227, 0, 148, 2, 13, 1);
                z.k.s(227, 0, 148, 2, 13, 0);
                return false;
            }
            if (i2 == 88) {
                if (u0.b.D != 13) {
                    u0.d.B1();
                    return false;
                }
                z.k.s(227, 0, 148, 2, 12, 1);
                z.k.s(227, 0, 148, 2, 12, 0);
                return false;
            }
            if (i2 == 113) {
                if (!o1.u.S(a.b.Q)) {
                    u0.d.B1();
                    return false;
                }
                z.k.s(227, 0, 148, 2, 16, 1);
                z.k.s(227, 0, 148, 2, 16, 0);
                return false;
            }
            if (i2 != 114) {
                return false;
            }
            if (!o1.u.S(a.b.Q)) {
                u0.d.I1();
                return false;
            }
            z.k.s(227, 0, 148, 2, 17, 1);
            z.k.s(227, 0, 148, 2, 17, 0);
            return false;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    public class o implements Runnable {
        public o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 5 || i2 == 41 || i2 == 44 || i2 == 6 || i2 == 40 || i2 == 42 || i2 == 43 || i2 == 11 || i2 == 7 || i2 == 8 || i2 == 38 || i2 == 39 || i2 == 9 || i2 == 10 || i2 == 34 || i2 == 12 || i2 == 25 || i2 == 16) {
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
            }
            l0.b0.b(jl.this.Z);
            jl.this.V = (byte) 7;
        }
    }

    public class p implements Runnable {
        public p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(jl.this.Y);
        }
    }

    public class q implements Runnable {
        public q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jl jlVar = jl.this;
            if (jlVar.f6944t) {
                o1.x.x(nt.f8643f, 1038, jlVar.f6943s);
            }
        }
    }

    public class r implements Runnable {
        public r() {
        }

        /* JADX WARN: Code duplicated, block: B:27:0x00bc  */
        @Override // java.lang.Runnable
        public void run() {
            jl jlVar = jl.this;
            byte b2 = (byte) (jlVar.V - 1);
            jlVar.V = b2;
            if (b2 <= 0) {
                l0.b0.p0(jlVar.Z);
                jl.this.V = (byte) 7;
                return;
            }
            if (u0.b.f17306a0 == 1) {
                if (SystemProperties.getBoolean("persist.lesc.video.ignore", false)) {
                    SystemProperties.set("persist.lesc.video.ignore", "false");
                }
                int i2 = nt.f8637c;
                if (i2 == 5 || i2 == 6 || i2 == 7 || i2 == 8 || i2 == 11 || i2 == 16) {
                    jl jlVar2 = jl.this;
                    jlVar2.D3(jlVar2.f6925g0.b(7, 0));
                } else if (i2 == 13) {
                    z.k.s(227, 0, 97, 1, 1);
                    z.k.s(227, 0, 151, 1, 1);
                } else if (i2 != 14) {
                    switch (i2) {
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                            jl jlVar3 = jl.this;
                            jlVar3.D3(jlVar3.f6925g0.b(7, 0));
                            break;
                        default:
                            z.k.s(227, 0, 97, 1, 1);
                            jl jlVar4 = jl.this;
                            jlVar4.y3(jlVar4.f6925g0.b(5, 0));
                            jl jlVar5 = jl.this;
                            jlVar5.z3(jlVar5.f6925g0.b(3, 0));
                            jl jlVar6 = jl.this;
                            jlVar6.A3(jlVar6.f6925g0.b(4, 0));
                            jl jlVar7 = jl.this;
                            jlVar7.C3(jlVar7.f6925g0.b(6, 0));
                            jl jlVar8 = jl.this;
                            jlVar8.D3(jlVar8.f6925g0.b(7, 0));
                            jl jlVar9 = jl.this;
                            jlVar9.B3(jlVar9.f6925g0.b(23, 0));
                            break;
                    }
                } else {
                    z.k.s(227, 0, 97, 1, 1);
                    z.k.s(227, 0, 151, 1, 2);
                }
                switch (nt.f8633a) {
                    case 1704384:
                    case 2359744:
                    case 2949568:
                    case 3146176:
                        jl jlVar10 = jl.this;
                        jl.G3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) jlVar10.f6935l0[jlVar10.f6937m0 % 2], 37, 17, -86});
                        jl jlVar11 = jl.this;
                        jl.G3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) jlVar11.f6935l0[jlVar11.f6937m0 % 2], 37, 17, -86});
                        jl jlVar12 = jl.this;
                        jl.G3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) jlVar12.f6935l0[jlVar12.f6937m0 % 2], 37, 17, -86});
                        break;
                    case 1769920:
                    case 2425280:
                    case 3015104:
                    case 3211712:
                    case 3342784:
                        jl jlVar13 = jl.this;
                        jl.G3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) jlVar13.f6935l0[jlVar13.f6937m0 % 2], 0, 18, -86});
                        jl jlVar14 = jl.this;
                        jl.G3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) jlVar14.f6935l0[jlVar14.f6937m0 % 2], 0, 18, -86});
                        jl jlVar15 = jl.this;
                        jl.G3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) jlVar15.f6935l0[jlVar15.f6937m0 % 2], 0, 18, -86});
                        break;
                }
                int i3 = nt.f8637c;
                if (i3 != 15) {
                    if (i3 != 56) {
                        switch (i3) {
                        }
                        return;
                    } else {
                        jl.this.F3(1);
                        return;
                    }
                }
                jl jlVar16 = jl.this;
                jlVar16.F3(jlVar16.f6925g0.b(9, 0));
            }
        }
    }

    public class s implements Runnable {
        public s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jl jlVar = jl.this;
            int i2 = jlVar.f6950z;
            int i3 = u0.b.j4;
            if (i2 != i3) {
                jlVar.f6950z = i3;
                if (i3 == 0) {
                    if (jlVar.A) {
                        z.k.s(227, 0, 103, 3, 0, 0, 128);
                        jl.this.A = false;
                        return;
                    }
                    return;
                }
                if (i3 == 1 && o1.u.S(a.b.Q)) {
                    a.f.p().t(LogType.CANBUS, "JumpPage.caryui ---- 111111111 ");
                    z.k.s(227, 0, 103, 3, 1, 0, 128);
                    jl.this.A = true;
                }
            }
        }
    }

    public class t implements Runnable {
        public t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().t(LogType.CANBUS, "DataMain.sAppId ---- " + u0.b.D);
            if (jl.f6901n0 != u0.b.D) {
                int i2 = nt.f8637c;
                if ((i2 == 5 || i2 == 41 || i2 == 44 || i2 == 6 || i2 == 40 || i2 == 42 || i2 == 43 || i2 == 7 || i2 == 8 || i2 == 38 || i2 == 39 || i2 == 9 || i2 == 10 || i2 == 11 || i2 == 12 || i2 == 16 || i2 == 25 || i2 == 34) && u0.b.D != 13) {
                    jl jlVar = jl.this;
                    if (jlVar.F) {
                        jlVar.e3(false);
                    }
                }
                int i3 = u0.b.D;
                if (i3 != 13 && i3 != 0) {
                    z.k.s(227, 0, 103, 3, 1, 0, 128);
                }
                z.k.s(227, 0, 145, 2, u0.b.D, 0);
                jl.f6901n0 = u0.b.D;
            }
        }
    }

    public class u implements Runnable {
        public u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17332j;
            if (i2 == 1) {
                z.k.s(227, 0, 103, 3, 1, 0, 0);
            } else if (i2 == 0) {
                a.f.p().t(LogType.CANBUS, "JumpPage.caryui ---- 22222222222 ");
                z.k.s(227, 0, 103, 3, 1, 0, 128);
            }
        }
    }

    public class v implements o1.p {
        public v() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
            }
            e.e.a unused = jl.f6902o0 = (e.e.a) obj;
            if (u0.b.f17357r0 == 1 && u0.b.f17347o == 1) {
                if (jl.f6902o0.f1628a == 0) {
                    z.k.s(227, 0, 107, 6, 1, (jl.f6902o0.f1629b >> 8) & 255, jl.f6902o0.f1629b & 255, (jl.f6902o0.f1630c >> 8) & 255, jl.f6902o0.f1630c & 255, 1);
                    return;
                } else {
                    if (jl.f6902o0.f1628a == 1) {
                        z.k.s(227, 0, 107, 6, 1, (jl.f6902o0.f1629b >> 8) & 255, jl.f6902o0.f1629b & 255, (jl.f6902o0.f1630c >> 8) & 255, jl.f6902o0.f1630c & 255, 0);
                        return;
                    }
                    return;
                }
            }
            if (jl.this.f6938n == 0 && !o1.u.S(a.b.Q) && jl.f6902o0.f1628a == 0) {
                switch (nt.f8633a) {
                    case 786880:
                    case 852416:
                    case 917952:
                    case 983488:
                    case 1114560:
                    case 1180096:
                    case 1245632:
                    case 1311168:
                    case 1376704:
                    case 1442240:
                    case 1507776:
                    case 1573312:
                    case 1638848:
                    case 1704384:
                    case 1769920:
                    case 1835456:
                    case 1900992:
                    case 1966528:
                    case 2032064:
                    case 2097600:
                    case 2163136:
                    case 2294208:
                    case 2359744:
                    case 2425280:
                    case 2949568:
                    case 3015104:
                    case 3080640:
                    case 3146176:
                    case 3211712:
                    case 3277248:
                    case 3342784:
                    case 3408320:
                    case 3473856:
                    case 3539392:
                    case 3604928:
                    case 3670464:
                        break;
                    default:
                        a.f.p().t(LogType.CANBUS, "JumpPage.caryui ---- 3333333333333 ");
                        z.k.s(227, 0, 103, 3, 1, 0, 128);
                        break;
                }
            }
        }
    }

    public class w implements Runnable {
        public w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (jl.f6908u0 == 0) {
                int i2 = h0.c.E;
                if (i2 == 3 || i2 == 4 || i2 == 5) {
                    if (o1.u.S(a.b.Q)) {
                        a.f.p().t(LogType.CANBUS, "JumpPage.caryui ---- 444444444444 ");
                        z.k.s(227, 0, 103, 3, 1, 0, 128);
                        jl.this.e3(true);
                        jl.this.H = true;
                        return;
                    }
                    return;
                }
                if (jl.this.H) {
                    if (!o1.u.S(a.b.Q)) {
                        o1.u.f(a.b.R);
                        jl.this.e3(false);
                    }
                    jl.this.H = false;
                }
            }
        }
    }

    public class x implements Runnable {
        public x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jl.this.d3(u0.b.K3);
        }
    }

    public class y implements o1.p {
        public y() {
        }

        @Override // o1.p
        public void d(Object obj) {
            jl jlVar = jl.this;
            int i2 = jlVar.f6950z;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                jlVar.f6950z = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                int i5 = nt.f8637c;
                if (i5 == 13 || i5 == 14 || i5 == 15 || i5 == 22 || i5 == 18 || i5 == 19 || i5 == 20 || i5 == 21) {
                    int i6 = u0.b.D;
                    if (i6 != 13 && i6 != 0) {
                        jlVar.e3(true);
                        return;
                    }
                    int i7 = y0.f.T0;
                    if (i7 != 0) {
                        if (i7 != 1) {
                            return;
                        }
                        jlVar.e3(true);
                        return;
                    } else {
                        if (y0.f.Q0 == 0) {
                            jlVar.e3(false);
                            return;
                        }
                        return;
                    }
                }
                if (u0.b.D != 13) {
                    if (jlVar.F) {
                        jlVar.e3(false);
                        return;
                    }
                    return;
                }
                int i8 = y0.f.T0;
                if (i8 != 0) {
                    if (i8 != 1) {
                        return;
                    }
                    jlVar.e3(true);
                } else if (y0.f.Q0 == 0) {
                    jlVar.e3(false);
                }
            }
        }
    }

    public class z implements o1.o {
        public z() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (o1.u.S(a.b.Q)) {
                if (i2 == 0) {
                    z.k.s(227, 0, 168, 2, 1, 3);
                } else if (i2 == 1) {
                    z.k.s(227, 0, 168, 2, 0, 3);
                }
            } else if (i2 == 0) {
                e.c.D.c(220, i2);
            }
            return true;
        }
    }

    public static void G3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        z.k.q(bArr);
    }

    public final void A3(int i2) {
        qt.y0(124, i2);
        f6906s0 = i2;
        int iB = this.f6925g0.b(4, 0);
        int i3 = f6906s0;
        if (iB != i3) {
            this.f6925g0.g(4, i3);
        }
    }

    public final void B3(int i2) {
        qt.y0(144, i2);
        f6912y0 = i2;
        if (this.f6925g0.b(23, 0) != f6912y0) {
            SystemProperties.set("persist.sys.allscreenon", String.format(Locale.US, "%d", Integer.valueOf(f6912y0)));
            this.f6925g0.g(23, f6912y0);
        }
    }

    public final void C3(int i2) {
        qt.y0(126, i2);
        f6908u0 = i2;
        z.k.s(227, 0, 112, 2, 5, i2);
        int iB = this.f6925g0.b(6, 0);
        int i3 = f6908u0;
        if (iB != i3) {
            this.f6925g0.g(6, i3);
        }
    }

    public final void D3(int i2) {
        qt.y0(133, i2);
        f6909v0 = i2;
        int iB = this.f6925g0.b(7, 0);
        int i3 = f6909v0;
        if (iB != i3) {
            this.f6925g0.g(7, i3);
        }
    }

    public final void E3(int i2) {
        qt.y0(132, i2);
        f6910w0 = i2;
        f1.q qVarE = f1.o.g().e(15);
        if (qVarE != null && (qVarE instanceof f1.l)) {
            int i3 = f6910w0;
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
        int iB = this.f6925g0.b(8, 0);
        int i4 = f6910w0;
        if (iB != i4) {
            this.f6925g0.g(8, i4);
        }
    }

    public final void F3(int i2) {
        qt.y0(138, i2);
        if (i2 == 1) {
            SystemProperties.set("persist.fyt.androictrldvoice", "1");
        } else {
            SystemProperties.set("persist.fyt.androictrldvoice", "0");
        }
        f6911x0 = i2;
        if (i2 == 0) {
            y0.h.t0(22);
            this.f7886a.f8307b = 1;
            qt.X(1);
            if (a.f.v() != null) {
                a.f.v().a(true);
            }
        } else if (i2 == 1) {
            this.f7886a.f8307b = 0;
            qt.X(0);
            if (a.f.v() != null) {
                a.f.v().a(false);
            }
        }
        int iB = this.f6925g0.b(9, 0);
        int i3 = f6911x0;
        if (iB != i3) {
            this.f6925g0.g(9, i3);
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
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        if (i2 == 33) {
            if (iArr[1] != 0) {
                if (nt.f8645g[10] == 0) {
                    z.k.s(227, -17, 3, 125, 64, 1);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[10] == 1) {
                    z.k.s(227, -17, 3, 125, 64, 0);
                    return;
                }
                return;
            }
        }
        if (i2 == 34) {
            if (iArr[1] != 0) {
                if (nt.f8645g[11] == 0) {
                    z.k.s(227, -17, 3, 125, 65, 1);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[11] == 1) {
                    z.k.s(227, -17, 3, 125, 65, 0);
                    return;
                }
                return;
            }
        }
        if (i2 == 41) {
            if (iArr[1] != 0) {
                z.k.s(227, -17, 4, 125, 69, 0, 128);
                return;
            } else {
                z.k.s(227, -17, 4, 125, 69, 0, 129);
                return;
            }
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                z.k.s(227, -17, 4, 125, 69, 1, 128);
                return;
            } else {
                z.k.s(227, -17, 4, 125, 69, 1, 129);
                return;
            }
        }
        if (i2 == 56) {
            if (iArr[1] < 17) {
                z.k.s(227, -121, 2, 13, 0);
                return;
            }
            if (iArr[1] >= 17 && iArr[1] <= 31) {
                z.k.s(227, -121, 2, 13, (iArr[1] - 16) * 2);
                return;
            } else {
                if (iArr[1] > 31) {
                    z.k.s(227, -121, 2, 13, 255);
                    return;
                }
                return;
            }
        }
        if (i2 == 67) {
            int i3 = iArr[1];
            if (i3 == 0) {
                z.k.s(227, 135, 1, 1);
                return;
            }
            if (i3 == 1) {
                z.k.s(227, 135, 1, 0);
                return;
            }
            if (i3 == 2) {
                z.k.s(227, 135, 1, 5);
                return;
            }
            if (i3 == 3) {
                z.k.s(227, 135, 1, 6);
                return;
            } else if (i3 == 4) {
                z.k.s(227, 135, 1, 7);
                return;
            } else {
                if (i3 != 5) {
                    return;
                }
                z.k.s(227, 135, 1, 8);
                return;
            }
        }
        if (i2 != 68) {
            switch (i2) {
                case 36:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[65] == 1) {
                            z.k.s(227, -17, 3, 125, 71, 0);
                        }
                    } else if (nt.f8645g[65] == 0) {
                        z.k.s(227, -17, 3, 125, 71, 1);
                    }
                    break;
                case 37:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[16] == 1) {
                            z.k.s(227, -17, 3, 125, 72, 0);
                        }
                    } else if (nt.f8645g[16] == 0) {
                        z.k.s(227, -17, 3, 125, 72, 1);
                    }
                    break;
                case 38:
                    if (iArr[1] == 1) {
                        if (nt.f8645g[12] == 0) {
                            z.k.s(227, -17, 3, 125, 66, 0);
                        }
                        break;
                    } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                        z.k.s(227, -17, 3, 125, 66, 1);
                        break;
                    }
                    break;
                case 39:
                    if (iArr[1] != -1) {
                        z.k.s(227, -17, 3, 125, 68, 129);
                    } else {
                        z.k.s(227, -17, 3, 125, 68, 128);
                    }
                    break;
            }
            return;
        }
        if (iArr[1] == 1) {
            z.k.s(227, -17, 4, 125, 2, 2, 1);
            return;
        }
        if (iArr[1] == 2) {
            z.k.s(227, -17, 4, 125, 2, 2, 11);
            return;
        }
        if (iArr[1] == 3) {
            z.k.s(227, -17, 4, 125, 2, 0, 1);
            return;
        }
        if (iArr[1] == 4) {
            z.k.s(227, -17, 4, 125, 2, 0, 11);
            return;
        }
        if (iArr[1] == 5) {
            z.k.s(227, -17, 4, 125, 2, 3, 1);
            return;
        }
        if (iArr[1] == 6) {
            z.k.s(227, -17, 4, 125, 2, 3, 11);
            return;
        }
        if (iArr[1] == 7) {
            z.k.s(227, -17, 4, 125, 2, 1, 1);
            return;
        }
        if (iArr[1] == 8) {
            z.k.s(227, -17, 4, 125, 2, 1, 11);
            return;
        }
        if (iArr[1] == 9) {
            z.k.s(227, -17, 3, 125, 1, 0);
            return;
        }
        if (iArr[1] == 10) {
            z.k.s(227, -17, 3, 125, 1, 1);
        } else if (iArr[1] == 11) {
            z.k.s(227, -17, 4, 125, 2, 16, 1);
        } else if (iArr[1] == 12) {
            z.k.s(227, -17, 4, 125, 2, 16, 11);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:22:0x005c A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:25:0x00a0  */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    @Override // k0.lt
    public void S2() {
        /*
            Method dump skipped, instruction units count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k0.jl.S2():void");
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        String str;
        if (bArr[i2] != 0) {
            return;
        }
        int i6 = bArr[i2 + 1] & 255;
        if (i6 == 18) {
            qt.L(new String(bArr, i2 + 3, i3 - 3));
        }
        if (i6 == 19) {
            qt.y0(99, bArr[i2 + 3] & 255);
            int i7 = i2 + 7;
            qt.y0(98, bArr[i7] & 255);
            this.f6941q = bArr[i7] & 255;
            int i8 = i2 + 4;
            qt.y0(122, bArr[i8] & 255);
            this.f6943s = bArr[i8] & 255;
            this.f6944t = true;
            qt.y0(118, bArr[i2 + 5] & 255);
            qt.y0(119, bArr[i2 + 6] & 255);
            qt.y0(120, bArr[i2 + 8] & 255);
            qt.y0(121, bArr[i2 + 9] & 255);
            int i9 = i2 + 10;
            qt.y0(127, (bArr[i9] >> 6) & 1);
            qt.y0(128, (bArr[i9] >> 7) & 1);
            qt.y0(130, bArr[i9] & 255);
            qt.y0(131, bArr[i2 + 11] & 255);
            return;
        }
        if (i6 == 21) {
            int i10 = bArr[i2 + 3] & 255;
            this.f6938n = i10;
            if (i10 == 1 && o1.u.S(a.b.Q)) {
                l0.b0.l0(6, 0);
                l0.b0.l0(6, 1);
            }
            this.f6939o = this.f6938n;
            return;
        }
        if (i6 != 161) {
            if (i6 != 242) {
                return;
            }
            int i11 = i2 + 3;
            if (bArr[i11] == 3) {
                o1.x.C(nt.f8643f, 1049, new int[]{9, bArr[i11] & 255}, null, null);
                return;
            }
            if (bArr[i11] != 17) {
                if (bArr[i11] == 18) {
                    o1.x.C(nt.f8643f, 1049, new int[]{3, bArr[i2 + 4]}, null, null);
                    return;
                } else {
                    if (bArr[i11] == 19) {
                        o1.x.C(nt.f8643f, 1049, new int[]{12, bArr[i2 + 4]}, null, null);
                        return;
                    }
                    return;
                }
            }
            byte b2 = bArr[i2 + 4];
            if (b2 == 1) {
                o1.x.C(nt.f8643f, 1049, new int[]{4, 4}, null, null);
                return;
            }
            if (b2 == 2) {
                o1.x.C(nt.f8643f, 1049, new int[]{4, 3}, null, null);
                return;
            } else if (b2 == 3) {
                o1.x.C(nt.f8643f, 1049, new int[]{4, 2}, null, null);
                return;
            } else {
                if (b2 != 4) {
                    return;
                }
                o1.x.C(nt.f8643f, 1049, new int[]{4, 1}, null, null);
                return;
            }
        }
        switch (bArr[i2 + 3] & 255) {
            case 16:
                if (this.f6941q == 1 && this.f6940p != (i4 = (bArr[i2 + 4] >> 2) & 1)) {
                    this.f6940p = i4;
                    if (i4 == 1) {
                        o1.x.C(nt.f8643f, 104, new int[]{1}, null, null);
                    } else {
                        o1.x.C(nt.f8643f, 104, new int[]{0}, null, null);
                    }
                }
                if (f6908u0 == 1) {
                    int i12 = (bArr[i2 + 4] >> 6) & 1;
                    if (i12 == 1) {
                        if (!o1.u.S(a.b.Q)) {
                            this.f6945u = true;
                            o1.u.f(a.b.R);
                        }
                    } else if (i12 == 0 && this.f6945u) {
                        if (o1.u.S(a.b.Q)) {
                            z.k.s(227, 0, 103, 3, 1, 0, 128);
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                        this.f6945u = false;
                    }
                }
                qt.y0(103, (bArr[i2 + 4] >> 3) & 1);
                qt.y0(116, (bArr[i2 + 5] >> 0) & 1);
                break;
            case 18:
                int i13 = bArr[i2 + 4] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i13 >> 4) & 1);
                    qt.y0(1, (i13 >> 5) & 1);
                } else {
                    qt.y0(2, (i13 >> 5) & 1);
                    qt.y0(1, (i13 >> 4) & 1);
                }
                qt.y0(4, (i13 >> 7) & 1);
                qt.y0(3, (i13 >> 6) & 1);
                qt.y0(5, (i13 >> 2) & 1);
                qt.y0(0, (i13 >> 3) & 1);
                break;
            case 19:
                qt.l(bArr[i2 + 5], bArr[i2 + 4], false, 540);
                break;
            case 20:
                byte b3 = bArr[i2 + 4];
                byte b4 = bArr[i2 + 5];
                byte b5 = bArr[i2 + 6];
                byte b6 = bArr[i2 + 7];
                if (b3 == 0 && b4 == 0 && b5 == 0 && b6 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != b3 || l0.c0.f13014h != b4 || l0.c0.f13015i != b5 || l0.c0.f13016j != b6) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = b3;
                l0.c0.f13014h = b4;
                l0.c0.f13015i = b5;
                l0.c0.f13016j = b6;
                u0.d.D2(l0.c0.E0(b3 & 255));
                u0.d.E2(l0.c0.E0(b4 & 255));
                u0.d.F2(l0.c0.E0(b5 & 255));
                u0.d.G2(l0.c0.E0(b6 & 255));
                break;
            case 21:
                byte b7 = bArr[i2 + 4];
                byte b8 = bArr[i2 + 5];
                byte b9 = bArr[i2 + 6];
                byte b10 = bArr[i2 + 7];
                u0.d.R2(l0.c0.E0(b7 & 255));
                u0.d.S2(l0.c0.E0(b8 & 255));
                u0.d.T2(l0.c0.E0(b9 & 255));
                u0.d.U2(l0.c0.E0(b10 & 255));
                break;
            case 23:
                byte b11 = bArr[i2 + 4];
                byte b12 = bArr[i2 + 5];
                this.f6932k = b11 & 255;
                int i14 = 0;
                while (true) {
                    int[][] iArr = this.f6936m;
                    if (i14 < iArr.length) {
                        int i15 = this.f6932k;
                        if (i15 != iArr[i14][0]) {
                            i14++;
                        } else if (i15 != 0) {
                            this.f6930j = i14;
                        }
                    }
                }
                int i16 = this.f6934l;
                int i17 = this.f6932k;
                if (i16 != i17) {
                    this.f6934l = i17;
                    if ((b12 & 255) == 1) {
                        if (i17 != 37) {
                            if (i17 == 38) {
                                if (this.f6924g && o1.u.S(a.b.Q)) {
                                    qt.y0(137, 0);
                                    a.i.a0(350L);
                                }
                                if (SystemProperties.getBoolean("persist.lesc.video.ignore", false)) {
                                    SystemProperties.set("persist.lesc.video.ignore", "false");
                                }
                                this.f6924g = false;
                            }
                        } else if (!o1.u.S(a.b.Q)) {
                            qt.y0(137, 1);
                            SystemProperties.set("persist.lesc.video.ignore", "true");
                            a.i.a0(240L);
                            o1.u.f(a.b.R);
                            this.f6924g = true;
                        }
                    }
                }
                int i18 = b12 & 255;
                if (i18 == 1) {
                    if (i14 < this.f6936m.length) {
                        int i19 = this.f6932k;
                        if (i19 != 14) {
                            if (i19 != 17) {
                                if (i19 != 18) {
                                    switch (i19) {
                                        case 8:
                                            break;
                                        case 9:
                                        case 10:
                                        case 11:
                                            if (!o1.u.S(a.b.Q)) {
                                                o1.u.f(a.b.R);
                                            }
                                            break;
                                        case 12:
                                            u0.d.u1();
                                            break;
                                        default:
                                            switch (i19) {
                                                case 20:
                                                    if (!o1.u.S(a.b.Q)) {
                                                        l0.b0.l0(13, 0);
                                                        l0.b0.l0(13, 1);
                                                    } else {
                                                        l0.b0.l0(13, 0);
                                                        l0.b0.l0(13, 1);
                                                        z.k.s(227, 0, 103, 3, 1, 0, 128);
                                                        this.A = true;
                                                    }
                                                    break;
                                                case 21:
                                                    switch (nt.f8633a) {
                                                        case 983488:
                                                        case 1180096:
                                                        case 1245632:
                                                        case 1311168:
                                                        case 1376704:
                                                        case 1442240:
                                                        case 1704384:
                                                        case 1769920:
                                                        case 1900992:
                                                        case 1966528:
                                                        case 2032064:
                                                        case 2097600:
                                                        case 2163136:
                                                        case 2294208:
                                                        case 2359744:
                                                        case 2425280:
                                                        case 2949568:
                                                        case 3015104:
                                                        case 3080640:
                                                        case 3146176:
                                                        case 3211712:
                                                        case 3277248:
                                                        case 3342784:
                                                        case 3408320:
                                                        case 3473856:
                                                        case 3539392:
                                                        case 3604928:
                                                            if (f6911x0 == 1) {
                                                                y0.h.i0();
                                                                y0.h.u0(-1);
                                                            }
                                                            break;
                                                        default:
                                                            y0.h.i0();
                                                            y0.h.u0(-1);
                                                            break;
                                                    }
                                                    break;
                                                case 22:
                                                    switch (nt.f8633a) {
                                                        case 983488:
                                                        case 1180096:
                                                        case 1245632:
                                                        case 1311168:
                                                        case 1376704:
                                                        case 1442240:
                                                        case 1704384:
                                                        case 1769920:
                                                        case 1835456:
                                                        case 1900992:
                                                        case 1966528:
                                                        case 2032064:
                                                        case 2097600:
                                                        case 2163136:
                                                        case 2294208:
                                                        case 2359744:
                                                        case 2425280:
                                                        case 2949568:
                                                        case 3015104:
                                                        case 3080640:
                                                        case 3146176:
                                                        case 3211712:
                                                        case 3277248:
                                                        case 3342784:
                                                        case 3408320:
                                                        case 3473856:
                                                        case 3539392:
                                                        case 3604928:
                                                            if (f6911x0 == 1) {
                                                                y0.h.i0();
                                                                y0.h.u0(-2);
                                                            }
                                                            break;
                                                        default:
                                                            y0.h.i0();
                                                            y0.h.u0(-2);
                                                            break;
                                                    }
                                                    break;
                                                case 23:
                                                    switch (nt.f8633a) {
                                                        case 983488:
                                                        case 1180096:
                                                        case 1245632:
                                                        case 1311168:
                                                        case 1376704:
                                                        case 1442240:
                                                        case 1704384:
                                                        case 1769920:
                                                        case 1835456:
                                                        case 1900992:
                                                        case 1966528:
                                                        case 2032064:
                                                        case 2097600:
                                                        case 2163136:
                                                        case 2294208:
                                                        case 2359744:
                                                        case 2425280:
                                                        case 2949568:
                                                        case 3015104:
                                                        case 3080640:
                                                        case 3146176:
                                                        case 3211712:
                                                        case 3277248:
                                                        case 3342784:
                                                        case 3408320:
                                                        case 3473856:
                                                        case 3539392:
                                                        case 3604928:
                                                        case 3670464:
                                                            int i20 = h0.c.E;
                                                            if (i20 == 3 || i20 == 4 || i20 == 5 || u0.i.l3().r3()) {
                                                                l0.b0.l0(18, 0);
                                                                l0.b0.l0(18, 1);
                                                            } else {
                                                                l0.b0.l0(3, 0);
                                                                l0.b0.l0(3, 1);
                                                            }
                                                            break;
                                                        default:
                                                            l0.b0.l0(3, 0);
                                                            l0.b0.l0(3, 1);
                                                            break;
                                                    }
                                                    break;
                                                case 24:
                                                    switch (nt.f8633a) {
                                                        case 983488:
                                                        case 1180096:
                                                        case 1245632:
                                                        case 1311168:
                                                        case 1376704:
                                                        case 1442240:
                                                        case 1704384:
                                                        case 1769920:
                                                        case 1835456:
                                                        case 1900992:
                                                        case 1966528:
                                                        case 2032064:
                                                        case 2097600:
                                                        case 2163136:
                                                        case 2294208:
                                                        case 2359744:
                                                        case 2425280:
                                                        case 2949568:
                                                        case 3015104:
                                                        case 3080640:
                                                        case 3146176:
                                                        case 3211712:
                                                        case 3277248:
                                                        case 3342784:
                                                        case 3408320:
                                                        case 3473856:
                                                        case 3539392:
                                                        case 3604928:
                                                        case 3670464:
                                                            int i21 = h0.c.E;
                                                            if (i21 == 3 || i21 == 4 || i21 == 5 || u0.i.l3().r3()) {
                                                                l0.b0.l0(26, 0);
                                                                l0.b0.l0(26, 1);
                                                            } else {
                                                                l0.b0.l0(4, 0);
                                                                l0.b0.l0(4, 1);
                                                            }
                                                            break;
                                                        default:
                                                            l0.b0.l0(4, 0);
                                                            l0.b0.l0(4, 1);
                                                            break;
                                                    }
                                                    break;
                                                default:
                                                    switch (i19) {
                                                        case 35:
                                                            if (nt.f8637c == 2) {
                                                                int i22 = this.f6946v + 1;
                                                                this.f6946v = i22;
                                                                if (i22 > 1) {
                                                                    this.f6946v = 0;
                                                                }
                                                                qt.y0(129, this.f6946v);
                                                            }
                                                            break;
                                                        case 36:
                                                            if (!o1.u.S(a.b.Q)) {
                                                                o1.u.f(a.b.R);
                                                            }
                                                            break;
                                                        case 37:
                                                        case 38:
                                                            break;
                                                        default:
                                                            if (!o1.u.S(a.b.Q) || this.f6938n == 1) {
                                                                l0.b0.l0(this.f6936m[i14][1], 0);
                                                            }
                                                            break;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                } else if (!o1.u.S(a.b.Q)) {
                                    if (ZLink.Y().d0() || o1.s0.m("sys.carlink.type", 0) > 0) {
                                        c.e.d().c(6);
                                    } else {
                                        int i23 = h0.c.E;
                                        if (i23 == 3 || i23 == 4 || i23 == 5) {
                                            l0.b0.l0(26, 0);
                                            l0.b0.l0(26, 1);
                                        } else {
                                            l0.b0.l0(6, 0);
                                            l0.b0.l0(6, 1);
                                        }
                                    }
                                }
                            } else if (f6908u0 == 0) {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            } else if (!o1.u.S(a.b.Q)) {
                                o1.u.f(a.b.R);
                            }
                        } else if (!o1.u.S(a.b.Q)) {
                            l0.b0.l0(1, 0);
                            l0.b0.l0(1, 1);
                        }
                    }
                    this.f6942r = false;
                    break;
                } else if (i18 != 2) {
                    if (i18 == 0) {
                        if (i14 < this.f6936m.length && (i5 = this.f6932k) != 14 && i5 != 20 && i5 != 17 && i5 != 18 && i5 != 23 && i5 != 24) {
                            switch (i5) {
                                case 8:
                                    if (!o1.u.S(a.b.Q)) {
                                        l0.b0.l0(5, 0);
                                        l0.b0.l0(5, 1);
                                    }
                                    break;
                                case 9:
                                case 10:
                                case 11:
                                case 12:
                                    break;
                                default:
                                    switch (i5) {
                                        case 35:
                                        case 36:
                                        case 37:
                                        case 38:
                                            break;
                                        default:
                                            if (!o1.u.S(a.b.Q) || this.f6938n == 1) {
                                                l0.b0.l0(this.f6936m[this.f6930j][1], 1);
                                            }
                                            break;
                                    }
                                    break;
                            }
                        }
                        this.f6942r = false;
                    }
                    break;
                } else if (i14 < this.f6936m.length && !this.f6942r) {
                    int i24 = this.f6932k;
                    if (i24 != 8) {
                        if (i24 == 14 && o1.u.S(a.b.Q)) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                            l0.b0.l0(1, 0);
                            l0.b0.l0(1, 1);
                            this.A = true;
                        }
                    } else if (!o1.u.S(a.b.Q)) {
                        o1.u.f(a.b.R);
                    } else if (o1.u.S(a.b.Q)) {
                        z.k.s(227, 0, 103, 3, 1, 0, 128);
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                    }
                    this.f6942r = true;
                    break;
                }
                break;
            case 25:
                if (nt.f8645g[118] == 1) {
                    if (nt.W == 0) {
                        int i25 = i2 + 4;
                        if (this.U != ((bArr[i25] >> 5) & 1)) {
                            int i26 = (bArr[i25] >> 5) & 1;
                            this.U = i26;
                            if (i26 == 1) {
                                if (!o1.u.T(a.b.O)) {
                                    qt.t();
                                }
                            } else if (o1.u.T(a.b.O)) {
                                qt.f();
                            }
                        }
                    } else {
                        int i27 = i2 + 4;
                        if (this.U != ((bArr[i27] >> 4) & 1)) {
                            int i28 = (bArr[i27] >> 4) & 1;
                            this.U = i28;
                            if (i28 == 1) {
                                if (!o1.u.T(a.b.O)) {
                                    qt.t();
                                }
                            } else if (o1.u.T(a.b.O)) {
                                qt.f();
                            }
                        }
                    }
                }
                int i29 = i2 + 4;
                int i30 = (bArr[i29] >> 6) & 1;
                int i31 = (bArr[i29] >> 5) & 1;
                int i32 = (bArr[i29] >> 4) & 1;
                int i33 = ((((bArr[i29] >> 1) & 1) << 1) & 2) | ((((bArr[i29] >> 0) & 1) << 2) & 4) | ((i31 << 3) & 8) | ((i32 << 4) & 16) | ((((bArr[i29] >> 3) & 1) << 5) & 32) | ((((bArr[i29] >> 2) & 1) << 6) & 64) | ((i30 << 7) & 128);
                o1.x[] xVarArr = nt.f8643f;
                o1.x.C(xVarArr, 1049, new int[]{11, i33}, null, null);
                l0.c0.a(i31, i32, 0);
                qt.y0(105, (((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255)) & 65535);
                int i34 = i2 + 7;
                int i35 = i2 + 8;
                qt.y0(106, ((bArr[i35] & 255) | ((bArr[i34] << 8) & 65280)) & 65535);
                qt.y0(1031, (((bArr[i34] << 8) & 65280) | (bArr[i35] & 255)) & 65535);
                o1.x.C(xVarArr, 1049, new int[]{1, ((bArr[i34] << 8) & 65280) | (bArr[i35] & 255)}, null, null);
                qt.y0(107, (((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255)) & 65535);
                qt.y0(108, (((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255)) & 65535);
                qt.y0(117, (((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255)) & 65535);
                int i36 = i2 + 15;
                qt.y0(109, (bArr[i36] >> 0) & 1);
                qt.y0(110, (bArr[i36] >> 1) & 1);
                qt.y0(111, ((bArr[i2 + 18] & 255) | ((bArr[i2 + 16] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 17] << 8) & 65280)) & 16777215);
                break;
            case 26:
                int i37 = i2 + 4;
                qt.y0(112, (bArr[i37] >> 7) & 1);
                qt.y0(113, (bArr[i37] >> 6) & 1);
                qt.y0(114, (bArr[i37] >> 5) & 1);
                qt.y0(115, (bArr[i37] >> 4) & 1);
                break;
            case 28:
                int i38 = nt.f8633a;
                if (i38 != 1180096 && i38 != 1704384 && i38 != 3146176 && i38 != 2949568 && i38 != 1245632 && i38 != 1769920 && i38 != 3211712 && i38 != 3015104 && i38 != 1311168 && i38 != 1376704 && i38 != 2359744 && i38 != 2425280 && i38 != 3342784) {
                    int i39 = i2 + 4;
                    qt.y0(10, (bArr[i39] >> 7) & 1);
                    qt.y0(11, (bArr[i39] >> 6) & 1);
                    qt.y0(12, (bArr[i39] >> 5) & 1);
                    qt.y0(53, (bArr[i39] >> 4) & 1);
                    qt.y0(65, (bArr[i39] >> 3) & 1);
                    qt.y0(58, (bArr[i39] >> 2) & 1);
                    qt.y0(16, (bArr[i39] >> 1) & 1);
                    qt.y0(14, (bArr[i39] >> 0) & 1);
                    int i40 = i2 + 5;
                    qt.y0(18, (bArr[i40] >> 7) & 1);
                    qt.y0(19, (bArr[i40] >> 6) & 1);
                    qt.y0(20, (bArr[i40] >> 5) & 1);
                    qt.y0(49, (bArr[i40] >> 4) & 1);
                    qt.y0(22, (bArr[i40] >> 3) & 1);
                    qt.y0(23, (bArr[i40] >> 2) & 1);
                    qt.y0(24, (bArr[i40] >> 1) & 1);
                    qt.y0(50, (bArr[i40] >> 0) & 1);
                    int i41 = i2 + 6;
                    int i42 = bArr[i41] & 255;
                    int i43 = i2 + 7;
                    int i44 = bArr[i43] & 255;
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        i44 = bArr[i41] & 255;
                        i42 = bArr[i43] & 255;
                    }
                    if (i42 == 0) {
                        qt.y0(27, -2);
                    } else if (i42 == 255) {
                        qt.y0(27, -3);
                    } else if (SystemProperties.getInt("persist.fyt.temperature", 0) == 1) {
                        qt.y0(27, (i42 * 9) + 590);
                    } else {
                        qt.y0(27, (i42 * 5) + 150);
                    }
                    if (i44 == 0) {
                        qt.y0(28, -2);
                    } else if (i44 == 255) {
                        qt.y0(28, -3);
                    } else if (SystemProperties.getInt("persist.fyt.temperature", 0) == 1) {
                        qt.y0(28, (i44 * 9) + 590);
                    } else {
                        qt.y0(28, (i44 * 5) + 150);
                    }
                    int i45 = i2 + 8;
                    qt.y0(21, (bArr[i45] >> 0) & 15);
                    qt.y0(25, (bArr[i45] >> 4) & 15);
                    int i46 = i2 + 9;
                    qt.y0(29, (bArr[i46] >> 0) & 3);
                    qt.y0(30, (bArr[i46] >> 2) & 3);
                    qt.y0(31, (bArr[i46] >> 4) & 3);
                    qt.y0(32, 3 & (bArr[i46] >> 6));
                    int i47 = i2 + 10;
                    int i48 = bArr[i47] & 255;
                    if (i48 == 0) {
                        qt.y0(40, -2);
                    } else if (i48 != 255) {
                        qt.y0(40, bArr[i47] & 255);
                    } else {
                        qt.y0(40, -3);
                    }
                    int i49 = i2 + 11;
                    qt.y0(48, (bArr[i49] >> 7) & 1);
                    qt.y0(46, (bArr[i49] >> 6) & 1);
                    qt.y0(47, (bArr[i49] >> 5) & 1);
                    qt.y0(44, (bArr[i49] >> 0) & 15);
                    qt.y0(66, (bArr[i2 + 12] >> 0) & 1);
                    break;
                }
                break;
            case 30:
                if (qt.k0()) {
                    byte b13 = bArr[i2 + 4];
                    if (b13 == 0) {
                        c.e.d().c(614);
                        break;
                    } else if (b13 == 1) {
                        c.e.d().c(597);
                        break;
                    } else if (b13 == 2) {
                        c.e.d().c(598);
                        break;
                    } else if (b13 == 3) {
                        c.e.d().c(599);
                        break;
                    } else if (b13 == 4) {
                        c.e.d().c(CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                        break;
                    } else if (b13 == 5) {
                        c.e.d().c(590);
                        break;
                    }
                }
                break;
            case 31:
                int i50 = i2 + 4;
                if (bArr[i50] == 0) {
                    if (u0.b.f17332j == 0) {
                        l0.b0.l0(25, 0);
                        l0.b0.l0(25, 1);
                    }
                    break;
                } else if (bArr[i50] == 1 && u0.b.f17332j == 1) {
                    l0.b0.l0(25, 0);
                    l0.b0.l0(25, 1);
                    break;
                }
                break;
            case 32:
                int i51 = i2 + 4;
                qt.y0(1031, bArr[i51] & 255);
                o1.x[] xVarArr2 = nt.f8643f;
                o1.x.C(xVarArr2, 1049, new int[]{1, bArr[i51] & 255}, null, null);
                int i52 = i2 + 5;
                int i53 = ((bArr[i2 + 12] << 8) & 65280) | (bArr[i52] & 255);
                if (bArr[i2 + 2] == 9) {
                    i53 = bArr[i52] & 255;
                }
                o1.x.C(xVarArr2, 1049, new int[]{5, i53}, null, null);
                o1.x.C(xVarArr2, 1049, new int[]{24, bArr[i2 + 6] & 255}, null, null);
                o1.x.C(xVarArr2, 1049, new int[]{3, bArr[i2 + 7] & 255}, null, null);
                o1.x.C(xVarArr2, 1049, new int[]{4, bArr[i2 + 8] & 255}, null, null);
                o1.x.C(xVarArr2, 1049, new int[]{28, 255 & bArr[i2 + 9]}, null, null);
                int i54 = i2 + 10;
                if (bArr[i54] == 0) {
                    o1.x.C(xVarArr2, 1049, new int[]{26, 2}, null, null);
                } else if (bArr[i54] == 1) {
                    o1.x.C(xVarArr2, 1049, new int[]{26, 1}, null, null);
                } else if (bArr[i54] == 2) {
                    o1.x.C(xVarArr2, 1049, new int[]{26, 3}, null, null);
                }
                int i55 = i2 + 11;
                if (bArr[i55] == 0) {
                    o1.x.C(xVarArr2, 1049, new int[]{10, 1}, null, null);
                } else if (bArr[i55] == 1) {
                    o1.x.C(xVarArr2, 1049, new int[]{10, 0}, null, null);
                }
                break;
            case 33:
                int i56 = i2 + 4;
                if (this.f6947w != (bArr[i56] & 255)) {
                    int i57 = bArr[i56] & 255;
                    this.f6947w = i57;
                    if (i57 == 1) {
                        if (!o1.u.S(a.b.Q)) {
                            o1.u.f(a.b.Q);
                        }
                        break;
                    } else if (i57 == 0 && o1.u.S(a.b.Q)) {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                        break;
                    }
                }
                break;
            case 34:
                qt.y0(135, 255 & bArr[i2 + 4]);
                try {
                    str = new String(bArr, i2 + 5, 27, "UTF-8");
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                    str = ProxyProperties.LOCAL_EXCL_LIST;
                }
                qt.x0(136, str);
                break;
            case 35:
                o1.x.C(nt.f8643f, 1049, new int[]{25, bArr[i2 + 4]}, null, null);
                break;
            case 36:
                o1.x.C(nt.f8643f, 1049, new int[]{2, (bArr[i2 + 4] & 255) - 40}, null, null);
                break;
            case 37:
                qt.y0(139, bArr[i2 + 4] & 255);
                break;
            case 38:
                o1.x.C(nt.f8643f, 1049, new int[]{9, bArr[i2 + 4] & 255}, null, null);
                break;
            case 39:
                qt.y0(140, bArr[i2 + 4] & 255);
                break;
            case 40:
                qt.y0(141, bArr[i2 + 4] & 255);
                break;
            case 41:
                qt.y0(142, bArr[i2 + 4] & 255);
                break;
            case 42:
                qt.y0(143, bArr[i2 + 4] & 255);
                break;
            case 43:
                o1.x.C(nt.f8643f, 1049, new int[]{36, bArr[i2 + 4] & 255, bArr[i2 + 5] & 255}, null, null);
                break;
            case 44:
                int i58 = i2 + 4;
                if (this.f6928i != (bArr[i58] & 255)) {
                    int i59 = bArr[i58] & 255;
                    this.f6928i = i59;
                    if (i59 != 1) {
                        y0.h.t0(this.f6922f);
                        a.f.p().t(LogType.CANBUS, "HandlerSound.volSrc2222 ---- SrcVolPre = " + this.f6922f);
                        if (this.f6924g && o1.u.S(a.b.Q)) {
                            qt.y0(137, 0);
                            a.i.a0(350L);
                        }
                        if (SystemProperties.getBoolean("persist.lesc.video.ignore", false)) {
                            SystemProperties.set("persist.lesc.video.ignore", "false");
                        }
                        this.f6924g = false;
                    } else {
                        int i60 = (int) (y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f);
                        this.f6922f = y0.f.f18037c;
                        y0.h.t0(i60);
                        a.f.p().t(LogType.CANBUS, "HandlerSound.volSrc11111 ---- vol == " + i60 + "--- SrcVolPre = " + this.f6922f);
                        if (!o1.u.S(a.b.Q)) {
                            qt.y0(137, 1);
                            SystemProperties.set("persist.lesc.video.ignore", "true");
                            a.i.a0(240L);
                            o1.u.f(a.b.R);
                            this.f6924g = true;
                        }
                    }
                }
                break;
            case 45:
                o1.x.C(nt.f8643f, 1049, new int[]{38, bArr[i2 + 4] & 255}, null, null);
                break;
            case 46:
                o1.x.C(nt.f8643f, 1049, new int[]{20, (bArr[i2 + 6] & 255) | ((bArr[i2 + 4] & 255) << 16) | ((bArr[i2 + 5] & 255) << 8)}, null, null);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        o1.y yVar = u0.c.f17386m;
        yVar.d(this.W);
        l0.b0.p0(this.Z);
        yVar.d(this.X);
        y0.g.f18110t.d(this.f6949y);
        u0.c.G.d(this.B);
        u0.c.f17374a.d(this.C);
        u0.c.f17387n.d(this.D);
        e.e.f1627e.d(this.E);
        h0.d.f2462a.d(this.I);
        u0.c.f17397x.d(this.J);
        qt.q0(this.S);
        u0.c.f17377d.d(this.O);
        this.f6925g0.j();
        e.c.f1597c = null;
        e.c.f1602h = null;
        e.c.f1603i = null;
        e.c.f1604j = null;
        e.c.f1605k = null;
        e.c.f1610p = null;
        c.e.d().f(87, this.T);
        c.e.d().f(88, this.T);
        c.e.d().f(21, this.T);
        c.e.d().f(22, this.T);
        qt.X(0);
        if (a.f.v() != null) {
            a.f.v().a(false);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 145) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 24) {
            switch (nt.f8633a) {
                case 1180096:
                case 1704384:
                case 2359744:
                case 2949568:
                case 3146176:
                    G3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f6935l0[this.f6937m0 % 2], 37, 17, -86});
                    G3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f6935l0[this.f6937m0 % 2], 37, 17, -86});
                    G3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f6935l0[this.f6937m0 % 2], 37, 17, -86});
                    break;
                case 1245632:
                case 1769920:
                case 2425280:
                case 3015104:
                case 3211712:
                case 3342784:
                    G3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f6935l0[this.f6937m0 % 2], 37, 18, -86});
                    G3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f6935l0[this.f6937m0 % 2], 37, 18, -86});
                    G3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f6935l0[this.f6937m0 % 2], 37, 18, -86});
                    break;
                case 1311168:
                    G3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f6935l0[this.f6937m0 % 2], 37, 19, -86});
                    G3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f6935l0[this.f6937m0 % 2], 37, 19, -86});
                    G3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f6935l0[this.f6937m0 % 2], 37, 19, -86});
                    break;
                case 1376704:
                    G3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f6935l0[this.f6937m0 % 2], 37, 20, -86});
                    G3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f6935l0[this.f6937m0 % 2], 37, 20, -86});
                    G3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f6935l0[this.f6937m0 % 2], 37, 20, -86});
                    break;
            }
            int i3 = this.f6937m0 + 1;
            this.f6937m0 = i3;
            this.f6937m0 = i3 % 2;
        }
        if (i2 == 1029) {
            int iW = (iArr[1] * 1024) / a.f.w();
            int i4 = (iArr[2] * CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) / a.f.i();
            if (T2(iArr, 2)) {
                if (iArr[0] == 0) {
                    z.k.s(227, 0, 107, 6, 2, iW >> 8, iW & 255, i4 >> 8, i4 & 255, 1);
                    return;
                } else {
                    if (iArr[0] == 1) {
                        z.k.s(227, 0, 107, 6, 2, iW >> 8, iW & 255, i4 >> 8, i4 & 255, 0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i2 == 1040) {
            a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CMD_6606 --- " + o1.b0.e(iArr, 0, iArr.length));
            int i5 = iArr[0];
            if (i5 != 0) {
                if (i5 == 1 || i5 == 2 || i5 == 3) {
                    if (iArr[1] == 1) {
                        z.k.s(227, 0, 150, 2, 1, 1);
                        return;
                    }
                    o1.u.z();
                    qt.y0(134, 0);
                    z.k.s(227, 0, 150, 2, 1, 0);
                    return;
                }
                switch (i5) {
                    case 25:
                        z.k.s(227, 0, 154, 2, iArr[1], iArr[2]);
                        break;
                    case 26:
                        z.k.s(227, 0, 156, 2, iArr[1], iArr[2]);
                        break;
                    case 27:
                        z.k.s(227, 0, 149, 2, iArr[1], iArr[2]);
                        break;
                    case 28:
                        z.k.s(227, 0, 147, 2, iArr[1], iArr[2]);
                        break;
                }
            }
            int i6 = iArr[1];
            if (i6 == 1) {
                if (iArr[2] == 1) {
                    a3(4);
                    return;
                } else {
                    if (iArr[2] == 2) {
                        a3(3);
                        return;
                    }
                    return;
                }
            }
            if (i6 == 2) {
                if (iArr[2] == 1) {
                    a3(1);
                    return;
                } else {
                    if (iArr[2] == 2) {
                        a3(2);
                        return;
                    }
                    return;
                }
            }
            if (i6 != 3) {
                return;
            }
            if (iArr[2] == 1) {
                a3(8);
                return;
            } else {
                if (iArr[2] == 2) {
                    a3(9);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 0:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 0, 106, 2, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 0, 103, 3, 0, 0, 128);
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[4] != 4) {
                        z.k.s(227, 0, 107, 6, 2, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                    } else {
                        a.f.p().t(LogType.CANBUS, "JumpPage.caryui ---- 5555555555555 ");
                        z.k.s(227, 0, 103, 3, 1, 0, 128);
                    }
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 0, 112, 2, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 4:
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 0, 167, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 0, 168, 2, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 7:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 0, 108, 2, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 8:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 0, 107, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                    break;
                }
                break;
            default:
                switch (i2) {
                    case 34:
                        if (iArr[0] == 1) {
                            if (!o1.u.S(a.b.Q)) {
                                o1.u.z();
                            }
                            break;
                        } else if (iArr[0] == 0 && o1.u.S(a.b.Q)) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                            break;
                        }
                        break;
                    case 35:
                        qt.y0(134, iArr[0]);
                        if (iArr[0] == 1) {
                            z.k.s(227, 0, 153, 1, 1);
                        } else if (iArr[0] == 0) {
                            z.k.s(227, 0, 153, 1, 2);
                        }
                        break;
                    case 36:
                        z.k.s(227, 0, 149, 2, iArr[0], iArr[1]);
                        break;
                    case 37:
                        z.k.s(227, 0, 148, 2, iArr[0], iArr[1]);
                        break;
                    case 38:
                        z.k.s(227, 0, 147, 2, iArr[0], iArr[1]);
                        break;
                    case 39:
                        a.f.p().t(LogType.CANBUS, "FinalCanbus.360 39 --- " + o1.b0.e(iArr, 0, iArr.length) + "FinalCanbus.360 top --- " + SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false));
                        if (iArr[0] != 1) {
                            c.e.d().c(614);
                        } else {
                            c.e.d().c(590);
                        }
                        break;
                    case 40:
                        z.k.s(227, 0, 152, 2, iArr[0], iArr[1]);
                        break;
                    case 41:
                        z.k.s(227, 0, 155, 2, iArr[0], iArr[1]);
                        break;
                    case 42:
                        if (iArr[0] == 1) {
                            if (!qt.i0().equals("com.syu.carinfo.xp.ziyouguang.ZXVinfastLuxAirControlAct")) {
                                w3();
                            } else {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                            }
                        }
                        break;
                    case 43:
                        z.k.s(227, 0, 159, 1, iArr[0]);
                        break;
                    case 44:
                        z.k.s(227, 0, 157, 1, iArr[0]);
                        break;
                    case 45:
                        z.k.s(227, 0, 158, 1, iArr[0]);
                        break;
                    case 46:
                        z.k.s(227, 0, 160, 1, iArr[0]);
                        break;
                    case 47:
                        B3(iArr[0]);
                        break;
                    default:
                        switch (i2) {
                            case 51:
                                D3(iArr[0]);
                                break;
                            case 52:
                                E3(iArr[0]);
                                break;
                            case 53:
                                F3(iArr[0]);
                                break;
                        }
                        break;
                }
                break;
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 0, 147, 2, i2, 1);
        a.i.a0(200L);
        z.k.s(227, 0, 147, 2, i2, 0);
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f6916c + bArr.length > 1024) {
            this.f6916c = 0;
            this.f6918d = 0;
            this.f6920e = 0;
        }
        System.arraycopy(bArr, 0, this.f6914b, this.f6916c, bArr.length);
        int length = this.f6916c + bArr.length;
        this.f6916c = length;
        int i3 = this.f6920e;
        if (i3 != 0) {
            if (i3 >= length) {
                return;
            }
            byte[] bArr2 = this.f6914b;
            if (bArr2[i3] == -86) {
                x3(bArr2, 0, 11);
                this.f6918d = this.f6920e + 1;
            } else {
                this.f6918d = 1;
            }
            this.f6920e = 0;
        }
        int i4 = this.f6916c - 2;
        while (true) {
            i2 = this.f6918d;
            if (i2 >= i4) {
                break;
            }
            byte[] bArr3 = this.f6914b;
            if ((bArr3[i2] == 85 && bArr3[i2 + 1] == 9) || (bArr3[i2] == 86 && bArr3[i2 + 1] == 9)) {
                if (this.f6920e > 512) {
                    this.f6920e = 0;
                } else {
                    int i5 = i2 + 10;
                    this.f6920e = i5;
                    if (i5 >= this.f6916c) {
                        this.f6920e = i5 - i2;
                        break;
                    }
                    if (bArr3[i5] == -86) {
                        x3(bArr3, i2, 11);
                        this.f6918d = this.f6920e;
                    } else {
                        this.f6918d = i2 + 1;
                    }
                    this.f6920e = 0;
                }
            }
            this.f6918d++;
        }
        if (i2 != 0) {
            int i6 = this.f6916c - i2;
            this.f6916c = i6;
            if (i6 > 0) {
                byte[] bArr4 = this.f6914b;
                System.arraycopy(bArr4, i2, bArr4, 0, i6);
            }
            this.f6918d = 0;
        }
    }

    public final void b3(byte b2, byte b3, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[38];
        int i2 = 0;
        for (int i3 = 0; i3 < 38; i3++) {
            iArr[i3] = 0;
        }
        iArr[0] = 227;
        iArr[1] = 0;
        iArr[2] = 161;
        iArr[3] = 34;
        iArr[4] = b2;
        int length = str.length() <= 15 ? str.length() : 15;
        switch (b2) {
            case -127:
            case -126:
                iArr[5] = b3;
                int i4 = w0.d.f17798j;
                iArr[6] = i4 & 303;
                iArr[7] = (i4 >> 8) & 303;
                int length2 = str.length() <= 14 ? str.length() : 14;
                while (i2 < length2) {
                    int iCodePointAt = str.codePointAt(i2);
                    int i5 = i2 << 1;
                    iArr[i5 + 9] = (iCodePointAt >> 8) & 255;
                    iArr[i5 + 8] = iCodePointAt & 255;
                    i2++;
                }
                break;
            case -125:
            case -123:
                if (b3 == 1) {
                    iArr[5] = b3;
                    int i6 = u0.b.r3;
                    iArr[6] = i6 & 303;
                    iArr[7] = (i6 >> 8) & 303;
                    int i7 = u0.b.s3;
                    iArr[8] = i7 & 303;
                    iArr[9] = (i7 >> 8) & 303;
                } else if (b3 == 2 || b3 == 3 || b3 == 4) {
                    iArr[5] = b3;
                    while (i2 < length) {
                        int iCodePointAt2 = str.codePointAt(i2);
                        int i8 = i2 << 1;
                        iArr[i8 + 7] = (iCodePointAt2 >> 8) & 255;
                        iArr[i8 + 6] = iCodePointAt2 & 255;
                        i2++;
                    }
                }
                break;
        }
        z.k.s(iArr);
    }

    public final void c3() {
        String str;
        String str2;
        String str3;
        int[] iArr = new int[15];
        int i2 = w0.d.f17796h;
        if (i2 - 65536 == 0 || 1 == i2 - 65536 || 2 == i2 - 65536) {
            if (w0.d.f17797i / 10000 == 0) {
                str = ProxyProperties.LOCAL_EXCL_LIST + " ";
            } else {
                str = ProxyProperties.LOCAL_EXCL_LIST + (w0.d.f17797i / 10000);
            }
            iArr[1] = (byte) ((w0.d.f17797i % 10000) / 1000);
            String str4 = str + iArr[1];
            iArr[2] = (byte) ((w0.d.f17797i % 1000) / 100);
            String str5 = (str4 + iArr[2]) + ".";
            iArr[4] = (byte) ((w0.d.f17797i % 100) / 10);
            String str6 = str5 + iArr[4];
            iArr[5] = (byte) (w0.d.f17797i % 10);
            b3((byte) -127, (byte) 1, (str6 + iArr[5]) + "Mhz");
            return;
        }
        if (w0.d.f17797i / 10000 == 0) {
            str2 = ProxyProperties.LOCAL_EXCL_LIST + " ";
        } else {
            str2 = ProxyProperties.LOCAL_EXCL_LIST + (w0.d.f17797i / 10000);
        }
        if ((w0.d.f17797i % 10000) / 1000 == 0) {
            str3 = str2 + " ";
        } else {
            str3 = str2 + ((w0.d.f17797i % 10000) / 1000);
        }
        iArr[2] = (byte) ((w0.d.f17797i % 1000) / 100);
        String str7 = str3 + iArr[2];
        iArr[3] = (byte) ((w0.d.f17797i % 100) / 10);
        String str8 = str7 + iArr[3];
        iArr[4] = (byte) (w0.d.f17797i % 10);
        b3((byte) -126, (byte) 1, (str8 + iArr[4]) + "Khz");
    }

    public final void d3(int i2) {
        if (i2 == 1) {
            z.k.s(227, 0, 106, 2, 8, 1);
        } else if (i2 != 2) {
            z.k.s(227, 0, 106, 2, 8, 0);
        } else {
            z.k.s(227, 0, 106, 2, 8, 2);
        }
    }

    public final void e3(boolean z2) {
        n1.b bVarP = a.f.p();
        LogType logType = LogType.CANBUS;
        bVarP.t(logType, "SoundChangeFlag " + this.F);
        a.f.p().t(logType, "SoundChangeTo " + z2);
        if (this.F == z2) {
            return;
        }
        this.F = z2;
        int i2 = nt.f8637c;
        if (i2 != 5 && i2 != 41 && i2 != 44 && i2 != 6 && i2 != 40 && i2 != 42 && i2 != 43 && i2 != 11 && i2 != 7 && i2 != 8 && i2 != 38 && i2 != 39 && i2 != 9 && i2 != 10 && i2 != 34 && i2 != 12 && i2 != 25 && i2 != 16) {
            if (z2) {
                z.k.s(227, 0, 146, 1, 1);
                return;
            } else {
                z.k.s(227, 0, 146, 1, 2);
                return;
            }
        }
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

    public final void w3() {
        if (SystemProperties.getBoolean("persist.fyt.showduduair", false) || qt.i0().equals("com.syu.carinfo.xp.ziyouguang.ZXVinfastLuxAirControlAct")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.xp.ziyouguang.ZXVinfastLuxAirControlAct");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public void x3(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        byte b2 = bArr[i2];
        if (b2 != 85) {
            if (b2 != 86) {
                return;
            }
            int i9 = SystemProperties.getInt("persist.fyt.temperature", 0);
            int i10 = i2 + 2;
            if ((bArr[i10] & 255) == 16) {
                qt.y0(40, -2);
            } else if ((bArr[i10] & 255) == 80) {
                qt.y0(40, -3);
            } else if (i9 == 1) {
                qt.y0(40, ((bArr[i10] & 255) * 10) + 290);
            } else {
                qt.y0(40, (bArr[i10] & 255) * 5);
            }
            int i11 = i2 + 4;
            qt.y0(44, (bArr[i11] >> 0) & 15);
            int i12 = (bArr[i11] >> 4) & 15;
            if (i12 != 1) {
                if (i12 == 2) {
                    i8 = 1;
                } else if (i12 != 3) {
                    i8 = 0;
                } else {
                    i8 = 0;
                    i7 = 1;
                }
                i7 = i8;
            } else {
                i7 = 0;
                i8 = 1;
            }
            qt.y0(46, i8);
            qt.y0(47, i7);
            qt.y0(43, (bArr[i2 + 6] >> 0) & 1);
            return;
        }
        int i13 = SystemProperties.getInt("persist.fyt.temperature", 0);
        int i14 = i2 + 2;
        int i15 = bArr[i14] & 255;
        int i16 = i2 + 3;
        int i17 = bArr[i16] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i15 = bArr[i16] & 255;
            i17 = bArr[i14] & 255;
        }
        if (i15 == 16) {
            qt.y0(27, -2);
        } else if (i15 == 80) {
            qt.y0(27, -3);
        } else if (i13 == 1) {
            qt.y0(27, (i15 * 10) + 290);
        } else {
            qt.y0(27, i15 * 5);
        }
        if (i17 == 16) {
            qt.y0(28, -2);
        } else if (i17 == 80) {
            qt.y0(28, -3);
        } else if (i13 == 1) {
            qt.y0(28, (i17 * 10) + 290);
        } else {
            qt.y0(28, i17 * 5);
        }
        int i18 = i2 + 4;
        switch ((bArr[i18] >> 4) & 15) {
            case 1:
                i4 = 0;
                i5 = 0;
                i6 = 1;
                break;
            case 2:
                i4 = 0;
                i6 = 1;
                i5 = i6;
                break;
            case 3:
                i4 = 0;
                i6 = 0;
                i5 = 1;
                break;
            case 4:
                i6 = 0;
                i4 = 1;
                i5 = 1;
                break;
            case 5:
                i5 = 0;
                i4 = 1;
                i6 = 1;
                break;
            case 6:
                i6 = 0;
                i5 = 0;
                i4 = 1;
                break;
            case 7:
                i4 = 1;
                i6 = i4;
                i5 = i6;
                break;
            default:
                i4 = 0;
                i6 = i4;
                i5 = i6;
                break;
        }
        qt.y0(18, i4);
        qt.y0(19, i6);
        qt.y0(20, i5);
        qt.y0(21, (bArr[i18] >> 0) & 15);
        int i19 = i2 + 5;
        qt.y0(29, (bArr[i19] >> 0) & 3);
        qt.y0(31, (bArr[i19] >> 2) & 3);
        qt.y0(30, (bArr[i19] >> 4) & 3);
        qt.y0(32, (bArr[i19] >> 6) & 3);
        int i20 = i2 + 6;
        qt.y0(13, (bArr[i20] >> 0) & 1);
        qt.y0(11, (bArr[i20] >> 1) & 1);
        qt.y0(62, (bArr[i20] >> 2) & 1);
        qt.y0(53, (bArr[i20] >> 4) & 1);
        qt.y0(65, (bArr[i20] >> 5) & 1);
        qt.y0(16, (bArr[i20] >> 6) & 1);
        qt.y0(15, (bArr[i20] >> 7) & 1);
        int i21 = i2 + 7;
        qt.y0(12, (bArr[i21] >> 0) & 3);
        qt.y0(67, (bArr[i21] >> 3) & 1);
        qt.y0(66, (bArr[i21] >> 4) & 1);
        int i22 = bArr[i2 + 9] & 255;
        if (i22 == 0 || i22 == 255) {
            u0.d.A3(0);
        } else {
            u0.d.B3(i13 == 0 ? (i22 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR : (268435456 | ((i22 * 18) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR)) & (-1));
        }
    }

    public final void y3(int i2) {
        qt.y0(125, i2);
        f6907t0 = i2;
        z.k.s(227, 0, 112, 2, 9, i2);
        int iB = this.f6925g0.b(5, 0);
        int i3 = f6907t0;
        if (iB != i3) {
            this.f6925g0.g(5, i3);
        }
    }

    public final void z3(int i2) {
        qt.y0(123, i2);
        f6905r0 = i2;
        int iB = this.f6925g0.b(3, 0);
        int i3 = f6905r0;
        if (iB != i3) {
            this.f6925g0.g(3, i3);
        }
    }
}

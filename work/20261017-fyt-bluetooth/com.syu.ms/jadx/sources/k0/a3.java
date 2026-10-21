package k0;

import android.bluetooth.BluetoothClass;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.drm.DrmManagerClient;
import android.media.TextTrackRegion;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.BatteryStats;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class a3 extends lt implements o1.q {
    public static int L0 = 0;
    public static int M0 = 0;
    public static int N0 = 0;
    public static int O0 = 0;
    public static int P0 = 3;
    public static int[] Q0 = {1, 1, 4, 5, 2, 3, 8, 9, 8, 1, 65, 35, 33, 1, 1, 64, 1, 34, 33, 9, 1, 36, 37, 33, 40, 34, 35, 33, 41};
    public static int R0 = 255;
    public static final int[] S0 = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36};
    public z W;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3077i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3083l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3089o;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f3099t;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f3063b = new int[7];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f3065c = new int[7];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f3067d = new int[7];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f3069e = new int[7];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f3071f = new int[5][];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f3073g = new int[15][];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f3075h = new int[20][];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3079j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f3081k = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 63}, new int[]{19, 3}, new int[]{20, 4}, new int[]{21, 6}, new int[]{22, 29}, new int[]{32, 5}, new int[]{33, 1}, new int[]{34, 12}, new int[]{35, 9}, new int[]{36, 54}, new int[]{37, 58}, new int[]{38, 55}, new int[]{48, 62}, new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 34}, new int[]{134, 35}, new int[]{135, 16}, new int[]{136, 2}};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3085m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[][] f3087n = {new int[]{22, 29}, new int[]{129, 7}, new int[]{130, 8}, new int[]{133, 31}, new int[]{134, 30}, new int[]{135, 25}};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3091p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int[][] f3093q = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 0}, new int[]{4, 34}, new int[]{5, 35}, new int[]{6, 32}, new int[]{7, 33}, new int[]{8, 29}, new int[]{9, 6}, new int[]{10, 21}, new int[]{11, 5}, new int[]{12, 22}, new int[]{13, 56}, new int[]{14, 54}, new int[]{15, 1}, new int[]{16, 38}, new int[]{17, 63}, new int[]{18, 72}, new int[]{19, 71}, new int[]{20, 55}, new int[]{21, 13}, new int[]{22, 2}, new int[]{23, 18}, new int[]{24, 26}, new int[]{25, 12}, new int[]{26, 5}, new int[]{27, 5}, new int[]{33, 16}, new int[]{34, -1}, new int[]{35, 62}, new int[]{36, 18}};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f3095r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f3097s = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f3101u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int[][] f3103v = {new int[]{1, 18}, new int[]{2, 26}, new int[]{17, 75}, new int[]{18, 74}, new int[]{19, 18}, new int[]{20, 54}, new int[]{21, 53}, new int[]{32, 6}};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final byte[] f3105w = new byte[1024];

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f3107x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f3109y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f3111z = 0;
    public int A = 0;
    public boolean B = false;
    public int C = 0;
    public Runnable D = new k();
    public byte E = 8;
    public Runnable F = new r();
    public Runnable G = new s();
    public Runnable H = new t();
    public int I = 0;
    public boolean J = false;
    public Runnable K = new u();
    public Runnable L = new v();
    public Runnable M = new w();
    public Runnable N = new x();
    public Runnable O = new y();
    public final int P = 1;
    public final int Q = 2;
    public final int R = 3;
    public o1.g0 S = new o1.g0(getClass().getSimpleName(), 32);
    public Runnable T = new a();
    public long U = -1;
    public int V = -1;
    public String X = ProxyProperties.LOCAL_EXCL_LIST;
    public String Y = ProxyProperties.LOCAL_EXCL_LIST;
    public int Z = 0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f3062a0 = 0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f3064b0 = 0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f3066c0 = 0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f3068d0 = 0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f3070e0 = 0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f3072f0 = 0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public int f3074g0 = 0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f3076h0 = 0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f3078i0 = 0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f3080j0 = 0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f3082k0 = 255;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final Runnable f3084l0 = new b();

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f3086m0 = 0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public Runnable f3088n0 = new c();

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public float f3090o0 = 0.0f;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public int f3092p0 = 255;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int f3094q0 = 255;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public Runnable f3096r0 = new d();

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public Runnable f3098s0 = new e();

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public Runnable f3100t0 = new f();

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public Runnable f3102u0 = new g();

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public Runnable f3104v0 = new h();

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public Runnable f3106w0 = new i();

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public String f3108x0 = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public String f3110y0 = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public String f3112z0 = ProxyProperties.LOCAL_EXCL_LIST;
    public Runnable A0 = new j();
    public Runnable B0 = new l();
    public Runnable C0 = new m();
    public Runnable D0 = new n();
    public int E0 = -1;
    public String F0 = ProxyProperties.LOCAL_EXCL_LIST;
    public Runnable G0 = new o();
    public int H0 = 0;
    public Runnable I0 = new p();
    public int J0 = 0;
    public Runnable K0 = new q();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            byte b2 = (byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0);
            if (a3.this.U == millis && a3.this.V == b2) {
                return;
            }
            a3.this.U = millis;
            a3.this.V = b2;
            int i2 = time.hour;
            if (b2 == 1 && i2 > 12) {
                i2 -= 12;
            }
            int i3 = time.minute;
            z.k.s(227, 157, 6, i2, i3, (b2 << 7) & 128, time.monthDay, time.month + 1, time.year + DrmManagerClient.ERROR_UNKNOWN);
            if (nt.f8633a == 8781936) {
                a3.Q3(new byte[]{90, -91, 10, -53, 0, (byte) i2, (byte) i3, 0, 0, b2, 0, 0, 0, 0, 0});
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a3.this.e3(0);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().t(LogType.CANBUS, "sVaAudioOccupeid =  " + u0.b.j4);
            int i2 = a3.this.f3086m0;
            int i3 = u0.b.j4;
            if (i2 != i3) {
                if (i3 == 0) {
                    z.k.s(227, 131, 2, 49, 0);
                } else {
                    if (i3 != 1) {
                        return;
                    }
                    z.k.s(227, 131, 2, 49, 1);
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a3.this.f3090o0 = u0.b.f17359s0;
            if ((a3.this.f3090o0 <= 22.5d && a3.this.f3090o0 >= 0.0f) || (a3.this.f3090o0 >= 337.5d && a3.this.f3090o0 <= 360.0f)) {
                a3.this.f3094q0 = 4;
            } else if (a3.this.f3090o0 > 22.5d && a3.this.f3090o0 < 67.5d) {
                a3.this.f3094q0 = 5;
            } else if (a3.this.f3090o0 >= 67.5d && a3.this.f3090o0 <= 112.5d) {
                a3.this.f3094q0 = 6;
            } else if (a3.this.f3090o0 > 112.5d && a3.this.f3090o0 < 157.5d) {
                a3.this.f3094q0 = 7;
            } else if (a3.this.f3090o0 >= 157.5d && a3.this.f3090o0 <= 202.5d) {
                a3.this.f3094q0 = 0;
            } else if (a3.this.f3090o0 > 202.5d && a3.this.f3090o0 < 247.5d) {
                a3.this.f3094q0 = 1;
            } else if (a3.this.f3090o0 >= 247.5d && a3.this.f3090o0 <= 292.5d) {
                a3.this.f3094q0 = 2;
            } else if (a3.this.f3090o0 <= 292.5d || a3.this.f3090o0 >= 337.5d) {
                a3.this.f3094q0 = 4;
            } else {
                a3.this.f3094q0 = 3;
            }
            if (a3.this.f3094q0 != a3.this.f3092p0) {
                if (nt.f8645g[1031] != 0) {
                    z.k.s(227, 131, 2, 48, a3.this.f3094q0);
                }
                a3 a3Var = a3.this;
                a3Var.f3092p0 = a3Var.f3094q0;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 132, 2, 7, a3.S0[o1.o0.a(y0.f.f18037c, 0, 36)]);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 5) {
                a3.this.c3((byte) -121, (byte) 1, "AUX");
                return;
            }
            if (i2 == 2) {
                a3.this.c3((byte) -123, (byte) 1, "BT");
                return;
            }
            if (i2 == 3) {
                a3.this.c3((byte) -123, (byte) 1, "BTAV");
                return;
            }
            if (i2 == 8 || i2 == 9 || i2 == 10) {
                a3.this.c3((byte) -125, (byte) 1, ProxyProperties.LOCAL_EXCL_LIST);
                a3.this.c3((byte) -125, (byte) 2, u0.b.i3);
            } else if (i2 == 1) {
                a3.this.d3();
            } else if (u0.b.f17306a0 == 1) {
                a3.this.c3((byte) -120, (byte) 1, "NAVI");
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = a3.R0;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13 && i3 != 11) {
                    if (i3 == 1) {
                        z.k.s(227, 133, 2, 32, 6);
                    } else {
                        z.k.s(227, 133, 2, 32, 5);
                    }
                }
                a3.R0 = u0.b.D;
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = a3.R0;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 == 5) {
                    z.k.s(227, 198, 2, 1, 1);
                } else {
                    z.k.s(227, 198, 2, 1, 0);
                }
                a3.R0 = u0.b.D;
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 3) {
                return;
            }
            a3.this.c3((byte) -125, (byte) 1, ProxyProperties.LOCAL_EXCL_LIST);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = u0.b.i3;
            if (str == null || a3.this.f3108x0.equals(str)) {
                return;
            }
            a3 a3Var = a3.this;
            a3Var.f3108x0 = u0.b.i3;
            int i2 = u0.b.D;
            if (i2 == 3) {
                a3Var.c3((byte) -123, (byte) 2, u0.b.i3);
            } else if (i2 != 10) {
                a3Var.c3((byte) -125, (byte) 2, u0.b.i3);
            } else {
                if (o1.u.S("com.syu.carlink")) {
                    return;
                }
                a3.this.c3((byte) -125, (byte) 2, u0.b.i3);
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 29, 0);
                z.k.s(227, 144, 2, 30, 0);
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = u0.b.j3;
            if (str == null || a3.this.f3110y0.equals(str)) {
                return;
            }
            a3 a3Var = a3.this;
            a3Var.f3110y0 = u0.b.j3;
            int i2 = u0.b.D;
            if (i2 == 3) {
                a3Var.c3((byte) -123, (byte) 3, u0.b.j3);
                return;
            }
            if (i2 != 10) {
                a3Var.c3((byte) -125, (byte) 3, u0.b.j3);
            } else if (o1.u.S("com.syu.carlink")) {
                a3.this.c3((byte) -125, (byte) 2, u0.b.j3);
            } else {
                a3.this.c3((byte) -125, (byte) 3, u0.b.j3);
            }
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = u0.b.k3;
            if (str == null || a3.this.f3112z0.equals(str)) {
                return;
            }
            a3 a3Var = a3.this;
            a3Var.f3112z0 = u0.b.k3;
            int i2 = u0.b.D;
            if (i2 == 3) {
                return;
            }
            if (i2 != 10) {
                a3Var.c3((byte) -125, (byte) 4, u0.b.k3);
            } else if (o1.u.S("com.syu.carlink")) {
                a3.this.c3((byte) -125, (byte) 3, u0.b.k3);
            } else {
                a3.this.c3((byte) -125, (byte) 4, u0.b.k3);
            }
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.E;
            int i3 = 3;
            boolean z2 = false;
            boolean z3 = true;
            if (i2 == 0 || i2 == 1) {
                i3 = 5;
            } else if (i2 == 2) {
                i3 = 6;
            } else if (i2 == 3) {
                i3 = 2;
            } else if (i2 == 4) {
                i3 = 1;
            } else if (i2 != 5) {
                i3 = 0;
            }
            if (a3.this.E0 != i3) {
                a3.this.E0 = i3;
                z2 = true;
            }
            if (a3.this.F0.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                a3.this.F0 = h0.c.f2437h;
                if (a3.this.F0 == null) {
                    a3.this.F0 = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                a3 a3Var = a3.this;
                a3Var.P3(a3Var.E0, a3.this.F0);
            }
        }
    }

    public class o implements Runnable {
        public o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 1) {
                a3.this.d3();
            }
        }
    }

    public class p implements Runnable {
        public p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a3.this.H0 <= 0) {
                if (qt.i0().equals("com.syu.carinfo.camry2012.xp.ToyotaLexusEQActi")) {
                    o1.u.k();
                }
                qt.q0(a3.this.I0);
            }
            a3 a3Var = a3.this;
            int i2 = a3Var.H0;
            if (i2 > 0) {
                a3Var.H0 = i2 - 1;
            }
        }
    }

    public class q implements Runnable {
        public q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a3 a3Var = a3.this;
            int i2 = a3Var.J0;
            if (i2 > 0) {
                a3Var.J0 = i2 - 1;
            }
            if (a3Var.J0 != 0 || a3Var.f3095r) {
                return;
            }
            a3Var.f3095r = true;
            l0.b0.l0(12, 0);
            l0.b0.l0(12, 1);
        }
    }

    public class r implements Runnable {
        public r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(a3.this.G);
            int i2 = nt.f8637c;
            if (i2 == 2 || i2 == 7 || i2 == 17 || i2 == 23 || i2 == 29 || i2 == 153 || i2 == 14 || i2 == 15 || i2 == 80 || i2 == 81 || i2 == 163 || i2 == 164) {
                l0.b0.b(a3.this.H);
            }
            a3 a3Var = a3.this;
            a3Var.I = -1;
            a3Var.E = (byte) 8;
        }
    }

    public class s implements Runnable {
        public s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a3 a3Var = a3.this;
            byte b2 = (byte) (a3Var.E - 1);
            a3Var.E = b2;
            if (b2 <= 0) {
                l0.b0.p0(a3Var.G);
                l0.b0.p0(a3.this.H);
                a3.this.E = (byte) 8;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                a3 a3Var2 = a3.this;
                a3Var2.M3(a3Var2.S.b(2, 0));
                int i2 = nt.f8637c;
                if (i2 == 8 || i2 == 14 || i2 == 150 || i2 == 151 || i2 == 152 || i2 == 153 || i2 == 29) {
                    a3 a3Var3 = a3.this;
                    a3Var3.N3(a3Var3.S.b(3, 3), false);
                }
                z.k.s(227, 144, 2, 48, 0);
                z.k.s(227, 144, 2, 50, 0);
                z.k.s(227, 144, 2, 37, 0);
                z.k.s(227, 131, 2, 50, 1);
                z.k.s(227, 131, 2, 57, nt.W);
            }
        }
    }

    public class t implements Runnable {
        public t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 132, 2, 8, 1);
        }
    }

    public class u implements Runnable {
        public u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 131, 2, 57, nt.W == 1 ? 1 : 0);
        }
    }

    public class v implements Runnable {
        public v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            if ((!o1.u.S("com.syu.fourcamera2") && !SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) || (i2 = nt.f8637c) == 75 || i2 == 111 || i2 == 122 || i2 == 133 || i2 == 154) {
                return;
            }
            switch (i2) {
                case 49:
                case 50:
                case 51:
                    break;
                default:
                    switch (i2) {
                        case 56:
                        case 57:
                        case 58:
                            break;
                        default:
                            z.k.s(227, 144, 3, 125, 8, 0);
                            break;
                    }
                    break;
            }
        }
    }

    public class w implements Runnable {
        public w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 0) {
                z.k.s(227, 239, 3, 125, i.a.Theme_actionModeShareDrawable, 0);
                return;
            }
            int i2 = u0.b.D;
            if (i2 == 5) {
                z.k.s(227, 239, 3, 125, i.a.Theme_actionModeShareDrawable, 1);
            } else if (i2 != 13) {
                z.k.s(227, 239, 3, 125, i.a.Theme_actionModeShareDrawable, 15);
            } else {
                z.k.s(227, 239, 3, 125, i.a.Theme_actionModeShareDrawable, 2);
            }
        }
    }

    public class x implements Runnable {
        public x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = y0.f.C0;
            if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
                i2 = 0;
            }
            z.k.s(227, 132, 2, 7, i2);
        }
    }

    public class y implements Runnable {
        public y() {
        }

        /* JADX WARN: Code duplicated, block: B:50:0x0131  */
        /* JADX WARN: Code duplicated, block: B:54:0x0159 A[FALL_THROUGH] */
        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 31) {
                z.k.s(227, 226, 1, 129);
                return;
            }
            if (i2 != 32) {
                if (i2 != 47 && i2 != 48) {
                    if (i2 != 52) {
                        if (i2 != 53) {
                            if (i2 != 77 && i2 != 78) {
                                switch (i2) {
                                    case 25:
                                        z.k.s(227, 226, 1, 80);
                                        break;
                                    case 27:
                                        z.k.s(227, 226, 1, 81);
                                        break;
                                    case 29:
                                        z.k.s(227, 226, 1, 128);
                                        break;
                                    case 37:
                                        break;
                                    case 60:
                                        z.k.s(227, 226, 1, 144);
                                        break;
                                    case 62:
                                    case 155:
                                    case 156:
                                        z.k.s(227, 226, 1, 145);
                                        break;
                                    case 90:
                                        z.k.s(227, 226, 1, 100);
                                        break;
                                    case 91:
                                        z.k.s(227, 226, 1, 101);
                                        break;
                                    case 92:
                                        z.k.s(227, 226, 1, 98);
                                        break;
                                    case 93:
                                        z.k.s(227, 226, 1, 99);
                                        break;
                                    case 94:
                                    case 96:
                                    case 98:
                                    case 160:
                                    case 161:
                                        break;
                                    case 95:
                                    case 97:
                                    case 99:
                                    case 157:
                                    case 158:
                                    case 159:
                                        z.k.s(227, 226, 1, 133);
                                        break;
                                    case 108:
                                        z.k.s(227, 226, 1, 31);
                                        break;
                                    case 134:
                                        break;
                                    case 145:
                                        z.k.s(227, 226, 1, 55);
                                        break;
                                    case 146:
                                        z.k.s(227, 226, 1, 50);
                                        break;
                                    case 167:
                                        z.k.s(227, 226, 1, 133);
                                        break;
                                    default:
                                        switch (i2) {
                                            case 40:
                                                break;
                                            default:
                                                switch (i2) {
                                                    case 66:
                                                        z.k.s(227, 226, 1, 13);
                                                        break;
                                                    case 67:
                                                        z.k.s(227, 226, 1, 27);
                                                        break;
                                                    case 68:
                                                        z.k.s(227, 226, 1, 28);
                                                        break;
                                                    case 69:
                                                        z.k.s(227, 226, 1, 9);
                                                        break;
                                                    case 70:
                                                        z.k.s(227, 226, 1, 8);
                                                        break;
                                                    case 71:
                                                        z.k.s(227, 226, 1, 64);
                                                        break;
                                                    case 72:
                                                        z.k.s(227, 226, 1, 65);
                                                        break;
                                                    case 73:
                                                        z.k.s(227, 226, 1, 97);
                                                        break;
                                                    default:
                                                        switch (i2) {
                                                            case 82:
                                                            case 83:
                                                                z.k.s(227, 226, 1, 146);
                                                                break;
                                                            case 84:
                                                                z.k.s(227, 226, 1, 32);
                                                                break;
                                                            case 85:
                                                                z.k.s(227, 226, 1, 33);
                                                                break;
                                                            case 86:
                                                                z.k.s(227, 226, 1, 48);
                                                                break;
                                                            case 87:
                                                                z.k.s(227, 226, 1, 49);
                                                                break;
                                                            default:
                                                                switch (i2) {
                                                                    case 115:
                                                                        z.k.s(227, 226, 1, 34);
                                                                        break;
                                                                    case 116:
                                                                    case 117:
                                                                        z.k.s(227, 226, 1, 147);
                                                                        break;
                                                                    case 118:
                                                                        z.k.s(227, 226, 1, 133);
                                                                        break;
                                                                    case 119:
                                                                        z.k.s(227, 226, 1, 132);
                                                                        break;
                                                                    case 120:
                                                                        break;
                                                                    case 121:
                                                                        break;
                                                                    default:
                                                                        switch (i2) {
                                                                            case 124:
                                                                                z.k.s(227, 226, 1, 35);
                                                                                break;
                                                                            case 125:
                                                                                z.k.s(227, 226, 1, 17);
                                                                                break;
                                                                            case 126:
                                                                                z.k.s(227, 226, 1, 16);
                                                                                break;
                                                                            case 127:
                                                                                z.k.s(227, 226, 1, 26);
                                                                                break;
                                                                            case 128:
                                                                                z.k.s(227, 226, 1, 25);
                                                                                break;
                                                                            case 129:
                                                                                z.k.s(227, 226, 1, 27);
                                                                                break;
                                                                            case 130:
                                                                                z.k.s(227, 226, 1, 28);
                                                                                break;
                                                                            case 131:
                                                                                z.k.s(227, 226, 1, 29);
                                                                                break;
                                                                            case 132:
                                                                                z.k.s(227, 226, 1, 30);
                                                                                break;
                                                                        }
                                                                        break;
                                                                }
                                                                break;
                                                        }
                                                        break;
                                                }
                                            case 41:
                                            case 42:
                                                z.k.s(227, 226, 1, 133);
                                                break;
                                        }
                                        break;
                                }
                                return;
                            }
                            z.k.s(227, 226, 1, 132);
                            return;
                        }
                    }
                    z.k.s(227, 226, 1, 96);
                    return;
                }
                z.k.s(227, 226, 1, 131);
                return;
            }
            z.k.s(227, 226, 1, 130);
        }
    }

    public class z extends BroadcastReceiver {
        public z() {
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0046 A[Catch: Exception -> 0x0161, TryCatch #0 {Exception -> 0x0161, blocks: (B:5:0x0024, B:7:0x002e, B:11:0x003b, B:13:0x003f, B:14:0x0046, B:16:0x004d, B:18:0x0055, B:20:0x0063, B:22:0x0069, B:23:0x0071, B:25:0x007b, B:26:0x0083, B:28:0x008d, B:29:0x00aa, B:31:0x00b4, B:32:0x00bd, B:34:0x00c7, B:35:0x00d0, B:37:0x00da, B:39:0x00e0, B:40:0x0107, B:42:0x0111, B:44:0x0117, B:46:0x013f), top: B:51:0x0024 }] */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if (!"AUTONAVI_STANDARD_BROADCAST_SEND".equals(action) || extras == null) {
                return;
            }
            try {
                boolean z2 = false;
                if (extras.getInt("KEY_TYPE") == 10019) {
                    int i2 = extras.getInt("EXTRA_STATE");
                    if (i2 != 2 && i2 != 39) {
                        switch (i2) {
                            case 8:
                            case 10:
                                a3 a3Var = a3.this;
                                a3Var.f3080j0 = 1;
                                a3Var.f3078i0 = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                a3 a3Var2 = a3.this;
                                a3Var2.f3080j0 = 0;
                                a3Var2.f3078i0 = 0;
                                z2 = true;
                                break;
                        }
                    } else {
                        a3 a3Var3 = a3.this;
                        a3Var3.f3080j0 = 0;
                        a3Var3.f3078i0 = 0;
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!a3.this.Y.equals(extras.getString("NEXT_ROAD_NAME")) && extras.getString("NEXT_ROAD_NAME") != null) {
                        a3.this.Y = extras.getString("NEXT_ROAD_NAME");
                    }
                    if (a3.this.f3062a0 != extras.getInt("SEG_REMAIN_DIS")) {
                        a3.this.f3062a0 = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (a3.this.Z != extras.getInt("ROUTE_REMAIN_DIS")) {
                        a3.this.Z = extras.getInt("ROUTE_REMAIN_DIS");
                        a3.this.f3068d0 = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (a3.this.f3064b0 != extras.getInt("CAR_DIRECTION")) {
                        a3.this.f3064b0 = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (a3.this.f3066c0 != extras.getInt("ROUTE_ALL_TIME")) {
                        a3.this.f3066c0 = extras.getInt("ROUTE_ALL_TIME");
                        z2 = true;
                    }
                    if (a3.this.f3070e0 != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        a.f.p().t(LogType.CANBUS, "bundle.getInt(ICON) ====33==  " + extras.getInt("ICON"));
                        a3.this.f3070e0 = extras.getInt("ICON");
                        z2 = true;
                    }
                    if (a3.this.f3074g0 != extras.getInt("ROUNG_ABOUT_NUM") && extras.getInt("KEY_TYPE") == 10001) {
                        a.f.p().t(LogType.CANBUS, "bundle.getInt(ROUNG_ABOUT_NUM) ====22==  " + extras.getInt("ROUNG_ABOUT_NUM"));
                        a3.this.f3074g0 = extras.getInt("ROUNG_ABOUT_NUM");
                    }
                }
                if (z2) {
                    a3.this.e3(1);
                    o1.j.e(o1.l.a(), a3.this.f3084l0);
                    o1.j.b(o1.l.a(), a3.this.f3084l0, 10000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ z(a3 a3Var, k kVar) {
            this();
        }
    }

    public static void Q3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = bArr[0];
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (b2 & 255);
        z.k.q(bArr);
    }

    public final void F3(String str) {
        Intent intent = new Intent("com.syu.execute_tts");
        intent.putExtra("raw_text", str);
        intent.setPackage("com.syu.voice");
        App.c().startService(intent);
    }

    public final void G3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.camry2012.xp.ToyotaLexusActivityCarCD")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.camry2012.xp.ToyotaLexusActivityCarCD");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void H3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.camry2012.xp.ToyotaLexusActivityCarRadio")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.camry2012.xp.ToyotaLexusActivityCarRadio");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void I3() {
        try {
            this.H0 = 4;
            if (qt.i0().equals("com.syu.carinfo.camry2012.xp.ToyotaLexusEQActi")) {
                return;
            }
            qt.z(this.I0);
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.camry2012.xp.ToyotaLexusEQActi");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void J3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.camry2012.xp.ToyotaLexusActivityCarUSB")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.camry2012.xp.ToyotaLexusActivityCarUSB");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void K3() {
        if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_WC_YL_Toyota_UI")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.air.Air_Activity_WC_YL_Toyota_UI");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void L3(int i2, int i3) {
        z.k.s(227, -125, 2, (byte) i2, (byte) i3);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public final void M3(int i2) {
        O0 = i2;
        qt.y0(239, i2);
        int iB = this.S.b(2, 0);
        int i3 = O0;
        if (iB != i3) {
            this.S.g(2, i3);
        }
    }

    @Override // k0.lt
    public void N2() {
        int i2 = nt.f8637c;
        if (i2 == 2 || i2 == 14 || i2 == 29 || i2 == 133 || i2 == 153 || i2 == 80 || i2 == 81 || i2 == 163 || i2 == 164) {
            y0.f.C0 = 30;
        } else {
            y0.f.C0 = 18;
        }
    }

    public final void N3(int i2, boolean z2) {
        P0 = i2;
        if (z2) {
            z.k.s(227, -125, 2, 62, i2);
        }
        qt.y0(254, P0);
        int iB = this.S.b(3, 3);
        int i3 = P0;
        if (iB != i3) {
            this.S.g(3, i3);
        }
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        if (i2 == 41) {
            if (iArr[1] != 0) {
                z.k.s(227, -121, 2, 11, 1);
                return;
            } else {
                z.k.s(227, -121, 2, 11, 0);
                return;
            }
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                z.k.s(227, -121, 2, 13, 1);
                return;
            } else {
                z.k.s(227, -121, 2, 13, 0);
                return;
            }
        }
        if (i2 == 55) {
            if (iArr[1] < 18) {
                z.k.s(227, -121, 2, 12, 0);
                return;
            }
            if (iArr[1] >= 18 && iArr[1] <= 32) {
                z.k.s(227, -121, 2, 12, ((iArr[1] - 17) * 2) - 1);
                return;
            } else {
                if (iArr[1] > 32) {
                    z.k.s(227, -121, 2, 12, 31);
                    return;
                }
                return;
            }
        }
        if (i2 == 56) {
            if (iArr[1] < 18) {
                z.k.s(227, -121, 2, 14, 0);
                return;
            }
            if (iArr[1] >= 18 && iArr[1] <= 32) {
                z.k.s(227, -121, 2, 14, ((iArr[1] - 17) * 2) - 1);
                return;
            } else {
                if (iArr[1] > 32) {
                    z.k.s(227, -121, 2, 14, 31);
                    return;
                }
                return;
            }
        }
        if (i2 != 59) {
            if (i2 != 68) {
                if (i2 != 70) {
                    switch (i2) {
                        case 33:
                            if (iArr[1] == 0) {
                                if (nt.f8645g[10] == 1) {
                                    z.k.s(227, -121, 2, 7, 0);
                                }
                            } else if (nt.f8645g[10] == 0) {
                                z.k.s(227, -121, 2, 7, 1);
                            }
                            break;
                        case 34:
                            if (iArr[1] == 0) {
                                if (nt.f8645g[11] == 1) {
                                    z.k.s(227, -121, 2, 8, 0);
                                }
                            } else if (nt.f8645g[11] == 0) {
                                z.k.s(227, -121, 2, 8, 1);
                            }
                            break;
                        case 35:
                            if (iArr[1] == 0) {
                                z.k.s(227, -121, 2, 15, 0);
                            } else {
                                z.k.s(227, -121, 2, 15, 1);
                            }
                            break;
                        case 36:
                            if (iArr[1] == 0) {
                                z.k.s(227, -121, 2, 17, 0);
                            } else {
                                z.k.s(227, -121, 2, 17, 1);
                            }
                            break;
                        case 37:
                            if (iArr[1] == 0) {
                                z.k.s(227, -121, 2, 18, 0);
                            } else {
                                z.k.s(227, -121, 2, 18, 1);
                            }
                            break;
                        case 38:
                            if (iArr[1] == 1) {
                                z.k.s(227, -121, 2, 16, 0);
                            } else if (iArr[1] == 0) {
                                z.k.s(227, -121, 2, 16, 1);
                            }
                            break;
                        case 39:
                            if (iArr[1] == -1) {
                                z.k.s(227, -121, 2, 9, 1);
                            } else if (iArr[1] == -2) {
                                z.k.s(227, -121, 2, 9, 0);
                            } else if (iArr[1] < 7) {
                                z.k.s(227, -121, 2, 10, iArr[1]);
                            } else {
                                z.k.s(227, -121, 2, 10, 7);
                            }
                            break;
                    }
                } else {
                    z.k.s(227, -13, 2, 17, iArr[1]);
                }
            } else if (iArr[1] == 1) {
                z.k.s(227, -121, 2, 2, 0);
            } else if (iArr[1] == 2) {
                z.k.s(227, -121, 2, 2, 1);
            } else if (iArr[1] == 3) {
                z.k.s(227, -121, 2, 3, 0);
            } else if (iArr[1] == 4) {
                z.k.s(227, -121, 2, 3, 1);
            } else if (iArr[1] == 5) {
                z.k.s(227, -121, 2, 4, 0);
            } else if (iArr[1] == 6) {
                z.k.s(227, -121, 2, 4, 1);
            } else if (iArr[1] == 7) {
                z.k.s(227, -121, 2, 5, 0);
            } else if (iArr[1] == 8) {
                z.k.s(227, -121, 2, 5, 1);
            } else if (iArr[1] == 9) {
                z.k.s(227, -121, 2, 6, 0);
            } else if (iArr[1] == 10) {
                z.k.s(227, -121, 2, 6, 1);
            } else if (iArr[1] == 11) {
                z.k.s(227, -121, 2, 1, 0);
            } else if (iArr[1] == 12) {
                z.k.s(227, -121, 2, 1, 1);
            }
        } else if (iArr[1] != 0) {
            a3(64, 0);
        }
    }

    public final void O3(int i2) {
        if (i2 == 32) {
            z.k.s(227, -125, 2, 65, 32);
            i2 = 1;
        } else if (i2 == 33) {
            z.k.s(227, -125, 2, 65, 33);
            i2 = 0;
        }
        N0 = i2;
        qt.y0(205, i2);
        int iB = this.S.b(1, 0);
        int i3 = N0;
        if (iB != i3) {
            this.S.g(1, i3);
        }
    }

    public final void P3(int i2, String str) {
        if (str == null) {
            return;
        }
        int length = str.length() <= 12 ? str.length() : 12;
        int[] iArr = new int[28];
        for (int i3 = 0; i3 < 28; i3++) {
            iArr[i3] = 0;
        }
        iArr[0] = -29;
        iArr[1] = -101;
        iArr[2] = 25;
        iArr[3] = (byte) i2;
        for (int i4 = 0; i4 < length; i4++) {
            int iCodePointAt = str.codePointAt(i4);
            int i5 = i4 << 1;
            iArr[i5 + 5] = (iCodePointAt >> 8) & 255;
            iArr[i5 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:39:0x009e  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:76:0x0155  */
    /* JADX WARN: Code duplicated, block: B:77:0x015a  */
    /* JADX WARN: Code duplicated, block: B:83:0x0176  */
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
            Method dump skipped, instruction units count: 892
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k0.a3.S2():void");
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int[][] iArr;
        int i6;
        byte b2;
        int i7;
        int i8;
        int[][] iArr2;
        int i9;
        int[][] iArr3;
        int i10;
        boolean z2;
        int i11;
        int[][] iArr4;
        int i12;
        int i13;
        int i14;
        int i15;
        byte b3;
        byte b4;
        byte b5;
        byte b6;
        int i16;
        int i17;
        int i18 = i2 + 1;
        if (bArr[i18] == 49 && nt.f8633a == 8781936) {
            int i19 = i2 + 2;
            qt.y0(10, (bArr[i19] >> 6) & 1);
            qt.y0(53, (bArr[i19] >> 5) & 1);
            qt.y0(42, (bArr[i19] >> 4) & 1);
            qt.y0(13, (bArr[i19] >> 3) & 1);
            qt.y0(92, (bArr[i19] >> 1) & 1);
            qt.y0(37, (bArr[i19] >> 0) & 1);
            int i20 = i2 + 3;
            qt.y0(67, (bArr[i20] >> 7) & 1);
            qt.y0(11, (bArr[i20] >> 6) & 1);
            qt.y0(12, (bArr[i20] >> 4) & 1);
            qt.y0(54, (bArr[i20] >> 3) & 1);
            qt.y0(14, (bArr[i20] >> 2) & 1);
            qt.y0(52, (bArr[i20] >> 1) & 1);
            qt.y0(34, (bArr[i20] >> 0) & 1);
            int i21 = i2 + 4;
            qt.y0(43, (bArr[i21] >> 7) & 1);
            qt.y0(16, (bArr[i21] >> 5) & 1);
            qt.y0(65, (bArr[i21] >> 4) & 1);
            qt.y0(30, (bArr[i21] >> 2) & 3);
            qt.y0(29, (bArr[i21] >> 0) & 3);
            int i22 = i2 + 5;
            qt.y0(32, (bArr[i22] >> 6) & 3);
            qt.y0(31, (bArr[i22] >> 4) & 3);
            qt.y0(75, (bArr[i22] >> 2) & 1);
            qt.y0(80, (bArr[i22] >> 1) & 1);
            int i23 = i2 + 6;
            qt.y0(77, (bArr[i23] >> 0) & 15);
            int i24 = (bArr[i23] >> 0) & 15;
            if (i24 == 3) {
                i13 = 0;
                i14 = 0;
                i15 = 1;
            } else if (i24 == 5) {
                i14 = 0;
                i15 = 1;
                i13 = 1;
            } else if (i24 != 6) {
                switch (i24) {
                    case 12:
                        i13 = 0;
                        i15 = 1;
                        i14 = 1;
                        break;
                    case 13:
                        i15 = 0;
                        i13 = 1;
                        i14 = i13;
                        break;
                    case 14:
                        i15 = 1;
                        i13 = i15;
                        i14 = i13;
                        break;
                    default:
                        i15 = 0;
                        i13 = i15;
                        i14 = i13;
                        break;
                }
            } else {
                i15 = 0;
                i14 = 0;
                i13 = 1;
            }
            qt.y0(20, i15);
            qt.y0(19, i13);
            qt.y0(18, i14);
            qt.y0(22, i14);
            qt.y0(21, bArr[i2 + 7] & DhcpPacket.DHCP_DOMAIN_NAME);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b3 = 255;
                b4 = bArr[i2 + 9];
            } else {
                b4 = bArr[i2 + 8];
                b3 = 255;
            }
            int i25 = b4 & b3;
            if (i25 == 254) {
                qt.y0(27, -2);
            } else if (i25 == b3) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i25 * 5);
            }
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b5 = 255;
                b6 = bArr[i2 + 8];
            } else {
                b6 = bArr[i2 + 9];
                b5 = 255;
            }
            int i26 = b6 & b5;
            if (i26 == 254) {
                qt.y0(28, -2);
            } else if (i26 == b5) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i26 * 5);
            }
            int i27 = bArr[i2 + 10] & 255;
            if (i27 == 1) {
                i16 = 0;
                i17 = 1;
            } else if (i27 != 2) {
                i17 = i27 != 3 ? 0 : 1;
                i16 = i17;
            } else {
                i17 = 0;
                i16 = 1;
            }
            qt.y0(47, i17);
            qt.y0(46, i16);
            qt.y0(44, bArr[i2 + 11] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i28 = bArr[i2 + 12] & 255;
            if (i28 == 254) {
                qt.y0(40, -2);
            } else if (i28 == 255) {
                qt.y0(40, -3);
            } else {
                qt.y0(40, i28 * 5);
            }
        }
        byte b7 = bArr[i2];
        if (b7 == -14) {
            int i29 = i2 + 2;
            if (bArr[i29] == 1) {
                int i30 = i2 + 3;
                if (bArr[i30] == 1) {
                    l0.b0.l0(72, 0);
                    l0.b0.l0(72, 1);
                    return;
                } else {
                    if (bArr[i30] == 2) {
                        l0.b0.l0(71, 0);
                        l0.b0.l0(71, 1);
                        return;
                    }
                    return;
                }
            }
            if (bArr[i29] == 2) {
                qt.y0(220, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 3) {
                int i31 = i2 + 3;
                qt.y0(221, bArr[i31] & 255);
                o1.x.C(nt.f8643f, 1049, new int[]{9, bArr[i31] & 255}, null, null);
                return;
            }
            if (bArr[i29] == 4) {
                qt.y0(222, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 5) {
                qt.y0(223, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 6) {
                switch (bArr[i2 + 3]) {
                    case 1:
                        F3("请主驾驶乘客系好安全带");
                        break;
                    case 2:
                        F3("请副驾驶乘客系好安全带");
                        break;
                    case 3:
                        int i32 = i2 + 4;
                        if (bArr[i32] == 1) {
                            F3("左前门已打开");
                        } else if (bArr[i32] == 0) {
                            F3("左前门已关闭");
                        }
                        break;
                    case 4:
                        int i33 = i2 + 4;
                        if (bArr[i33] == 1) {
                            F3("右前门已打开");
                        } else if (bArr[i33] == 0) {
                            F3("右前门已关闭");
                        }
                        break;
                    case 5:
                        int i34 = i2 + 4;
                        if (bArr[i34] == 1) {
                            F3("左后门已打开");
                        } else if (bArr[i34] == 0) {
                            F3("左后门已关闭");
                        }
                        break;
                    case 6:
                        int i35 = i2 + 4;
                        if (bArr[i35] == 1) {
                            F3("右后门已打开");
                        } else if (bArr[i35] == 0) {
                            F3("右后门已关闭");
                        }
                        break;
                    case 7:
                        int i36 = i2 + 4;
                        if (bArr[i36] == 1) {
                            F3("后备箱已打开");
                        } else if (bArr[i36] == 0) {
                            F3("后备箱已关闭");
                        }
                        break;
                    case 8:
                        F3("行驶里程剩余100公里请及时加油哦");
                        break;
                    case 9:
                        F3("行驶里程剩余50公里请及时加油哦");
                        break;
                    case 10:
                        F3("您已连续驾驶超过2小时，请勿疲劳驾驶哦");
                        break;
                    case 11:
                        F3("您已连续驾驶超过3小时，请勿疲劳驾驶哦");
                        break;
                    case 12:
                        F3("车速超过120");
                        break;
                    case 13:
                        F3("车速超过130");
                        break;
                    case 14:
                        F3("车速超过150，请勿激烈驾驶哦");
                        break;
                    case 15:
                        F3("车速超过170，请勿危险驾驶哦");
                        break;
                }
            }
            if (bArr[i29] == 7) {
                qt.y0(224, bArr[i2 + 3] & 255);
                qt.y0(225, bArr[i2 + 4] & 255);
                qt.y0(226, bArr[i2 + 5] & 255);
                qt.y0(227, bArr[i2 + 6] & 255);
                qt.y0(228, bArr[i2 + 7] & 255);
                return;
            }
            if (bArr[i29] == 8) {
                int i37 = i2 + 3;
                qt.y0(229, bArr[i37] & 255);
                o1.x.C(nt.f8643f, 1049, new int[]{7, bArr[i37] & 255}, null, null);
                return;
            }
            if (bArr[i29] == 9) {
                o1.x.C(nt.f8643f, 1049, new int[]{13, bArr[i2 + 3] & 255, bArr[i2 + 4] & 255, bArr[i2 + 5] & 255, bArr[i2 + 6] & 255, bArr[i2 + 7] & 255}, null, null);
                return;
            }
            if (bArr[i29] == 16) {
                qt.y0(88, bArr[i2 + 3] & 255);
                qt.y0(89, bArr[i2 + 4] & 255);
                qt.y0(90, bArr[i2 + 5] & 255);
                qt.y0(91, bArr[i2 + 6] & 255);
                return;
            }
            if (bArr[i29] == 22) {
                qt.y0(231, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 20) {
                o1.x.C(nt.f8643f, 1049, new int[]{10, (bArr[i2 + 3] >> 0) & 3}, null, null);
                return;
            }
            if (bArr[i29] == 21) {
                byte b8 = bArr[i2 + 3];
                if (b8 == 0) {
                    if (qt.k0()) {
                        c.e.d().c(614);
                        return;
                    }
                    return;
                }
                if (b8 == 1) {
                    if (qt.k0()) {
                        c.e.d().c(591);
                        return;
                    }
                    return;
                } else if (b8 == 2) {
                    if (qt.k0()) {
                        c.e.d().c(592);
                        return;
                    }
                    return;
                } else if (b8 == 3) {
                    if (qt.k0()) {
                        c.e.d().c(595);
                        return;
                    }
                    return;
                } else {
                    if (b8 == 4 && qt.k0()) {
                        c.e.d().c(596);
                        return;
                    }
                    return;
                }
            }
            if (bArr[i29] == 23) {
                qt.y0(232, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 24) {
                qt.y0(233, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 25) {
                qt.y0(234, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 26) {
                qt.y0(235, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 27) {
                qt.y0(236, bArr[i2 + 3] & 255);
                qt.y0(237, bArr[i2 + 4] & 255);
                return;
            }
            if (bArr[i29] == 29) {
                qt.y0(238, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 30) {
                qt.y0(240, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 31) {
                qt.y0(i.a.Theme_actionModeShareDrawable, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 32) {
                qt.y0(i.a.Theme_actionModeFindDrawable, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 33) {
                qt.y0(i.a.Theme_actionModeWebSearchDrawable, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 34) {
                qt.y0(i.a.Theme_actionModePopupWindowStyle, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 35) {
                qt.y0(263, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 36) {
                qt.y0(264, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 37) {
                qt.y0(265, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 38) {
                qt.y0(266, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 39) {
                qt.y0(267, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 40) {
                qt.y0(268, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 41) {
                qt.y0(i.a.Theme_findOnPageNextDrawable, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 42) {
                qt.y0(i.a.Theme_findOnPagePreviousDrawable, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 43) {
                qt.y0(285, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 44) {
                qt.y0(286, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 45) {
                qt.y0(287, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 46) {
                qt.y0(290, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i29] == 47) {
                qt.y0(291, bArr[i2 + 3] & 255);
                return;
            } else if (bArr[i29] == 48) {
                qt.y0(292, bArr[i2 + 3] & 255);
                return;
            } else {
                if (bArr[i29] == 49) {
                    qt.y0(293, bArr[i2 + 3] & 255);
                }
                return;
            }
        }
        if (b7 == 26) {
            qt.y0(133, (bArr[i2 + 3] >> 6) & 1);
            return;
        }
        if (b7 == 65) {
            byte b9 = bArr[i2 + 2];
            if (b9 != 1) {
                if (b9 == 2) {
                    qt.y0(149, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                    qt.y0(150, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                    qt.y0(151, ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                    qt.y0(152, ((bArr[i2 + 11] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
                    qt.y0(153, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
                    qt.y0(97, (bArr[i2 + 17] & 255) | ((bArr[i2 + 16] << 8) & 65280));
                    return;
                }
                if (b9 != 3) {
                    return;
                }
                int i38 = i2 + 3;
                int i39 = i2 + 4;
                qt.y0(154, ((bArr[i38] & 255) << 8) | (bArr[i39] & 255));
                qt.y0(1032, ((bArr[i38] & 255) << 8) | (bArr[i39] & 255));
                qt.y0(155, bArr[i2 + 9] & 255);
                return;
            }
            byte b10 = bArr[i2 + 6];
            byte b11 = bArr[i2 + 7];
            qt.y0(135, (b10 >> 7) & 1);
            qt.y0(136, (b10 >> 6) & 1);
            qt.y0(137, (b10 >> 5) & 1);
            qt.y0(138, (b11 >> 7) & 1);
            qt.y0(139, (b11 >> 6) & 1);
            qt.y0(140, (b11 >> 5) & 1);
            qt.y0(141, (b11 >> 4) & 1);
            qt.y0(142, (b11 >> 3) & 1);
            qt.y0(143, (b11 >> 2) & 1);
            qt.y0(144, (b11 >> 1) & 1);
            byte b12 = bArr[i2 + 8];
            byte b13 = bArr[i2 + 9];
            qt.y0(145, (b12 >> 2) & 3);
            qt.y0(146, (b12 >> 1) & 1);
            qt.y0(147, b12 & 1);
            qt.y0(148, (b13 >> 5) & 3);
            return;
        }
        if (b7 == 88) {
            if (nt.f8633a == 8781936) {
                return;
            }
            int i40 = i2 + 2;
            qt.y0(29, (bArr[i40] >> 4) & 15);
            qt.y0(30, (bArr[i40] >> 0) & 15);
            int i41 = i2 + 4;
            qt.y0(31, (bArr[i41] >> 4) & 15);
            qt.y0(32, (bArr[i41] >> 0) & 15);
            qt.y0(87, (bArr[i2 + 3] >> 5) & 7);
            byte b14 = bArr[i2 + 5];
            qt.y0(34, (b14 >> 7) & 1);
            qt.y0(35, (b14 >> 6) & 1);
            qt.y0(33, (b14 >> 5) & 1);
            qt.y0(17, (b14 >> 4) & 1);
            qt.y0(92, (b14 >> 3) & 1);
            qt.y0(52, (b14 >> 2) & 1);
            int i42 = i2 + 6;
            qt.y0(88, (bArr[i42] >> 6) & 3);
            qt.y0(89, (bArr[i42] >> 4) & 3);
            qt.y0(90, (bArr[i42] >> 2) & 3);
            qt.y0(91, (bArr[i42] >> 0) & 3);
            qt.y0(66, (bArr[i2 + 7] >> 0) & 7);
            return;
        }
        if (b7 == 102) {
            int i43 = i2 + 4;
            qt.y0(261, (bArr[i43] >> 7) & 1);
            qt.y0(262, (bArr[i43] >> 6) & 1);
            return;
        }
        if (b7 == 125) {
            int i44 = bArr[i2 + 2] & 255;
            if (i44 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i45 = i2 + 3;
                    i4 = 1;
                    l0.c0.b((bArr[i45] >> 3) & 1, (bArr[i45] >> 4) & 1, 0);
                } else {
                    i4 = 1;
                    int i46 = i2 + 3;
                    l0.c0.a((bArr[i46] >> 3) & 1, (bArr[i46] >> 4) & 1, 0);
                }
                int[] iArr5 = new int[i4];
                int i47 = i2 + 3;
                iArr5[0] = (bArr[i47] >> 6) & i4;
                qt.y0(135, iArr5);
                int[] iArr6 = new int[i4];
                iArr6[0] = (bArr[i47] >> 5) & i4;
                qt.y0(136, iArr6);
                int[] iArr7 = new int[i4];
                iArr7[0] = (bArr[i47] >> 7) & i4;
                qt.y0(137, iArr7);
                int[] iArr8 = new int[i4];
                iArr8[0] = (bArr[i47] >> 3) & i4;
                qt.y0(140, iArr8);
                int[] iArr9 = new int[i4];
                iArr9[0] = (bArr[i47] >> 4) & i4;
                qt.y0(141, iArr9);
                int[] iArr10 = new int[i4];
                iArr10[0] = (bArr[i47] >> i4) & i4;
                qt.y0(143, iArr10);
                int[] iArr11 = new int[i4];
                iArr11[0] = (bArr[i47] >> 2) & i4;
                qt.y0(144, iArr11);
                o1.x[] xVarArr = nt.f8643f;
                int[] iArr12 = new int[2];
                iArr12[0] = 11;
                iArr12[i4] = bArr[i47] & 255;
                o1.x.C(xVarArr, 1049, iArr12, null, null);
                return;
            }
            if (i44 == 13) {
                int i48 = bArr[i2 + 3] & 255;
                qt.y0(146, (i48 >> 4) & 1);
                qt.y0(147, (i48 >> 5) & 1);
                qt.y0(145, (i48 >> 2) & 3);
                qt.y0(148, (i48 >> 6) & 3);
                return;
            }
            if (i44 == 3) {
                int i49 = i2 + 4;
                int i50 = i2 + 3;
                int i51 = (((bArr[i49] << 8) & 65280) | (bArr[i50] & 255)) / 100;
                qt.y0(1031, i51);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i51}, null, null);
                qt.y0(153, ((bArr[i49] << 8) & 65280) | (bArr[i50] & 255));
                qt.y0(97, (bArr[i2 + 5] & 255) | ((bArr[i2 + 6] << 8) & 65280));
                return;
            }
            if (i44 == 4) {
                int i52 = (((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255)) / 10;
                o1.x[] xVarArr2 = nt.f8643f;
                o1.x.C(xVarArr2, 1049, new int[]{5, i52}, null, null);
                int i53 = i2 + 5;
                int i54 = i2 + 4;
                int i55 = i2 + 3;
                o1.x.C(xVarArr2, 1049, new int[]{20, ((bArr[i53] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i54] << 8) & 65280) | (bArr[i55] & 255)}, null, null);
                int i56 = i2 + 10;
                int i57 = i2 + 9;
                int i58 = i2 + 8;
                o1.x.C(xVarArr2, 1049, new int[]{21, ((bArr[i56] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i57] << 8) & 65280) | (bArr[i58] & 255)}, null, null);
                int i59 = i2 + 13;
                int i60 = i2 + 12;
                int i61 = i2 + 11;
                o1.x.C(xVarArr2, 1049, new int[]{22, ((bArr[i59] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i60] << 8) & 65280) | (bArr[i61] & 255)}, null, null);
                qt.y0(149, ((bArr[i53] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i54] << 8) & 65280) | (bArr[i55] & 255));
                qt.y0(151, ((bArr[i56] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i57] << 8) & 65280) | (bArr[i58] & 255));
                qt.y0(152, (bArr[i61] & 255) | ((bArr[i59] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i60] << 8) & 65280));
                return;
            }
            if (i44 == 5) {
                int i62 = bArr[i2 + 3] & 255;
                if (nt.f8633a != 8781936) {
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        i5 = 1;
                        qt.y0(2, (i62 >> 6) & 1);
                        qt.y0(1, (i62 >> 7) & 1);
                    } else {
                        i5 = 1;
                        qt.y0(2, (i62 >> 7) & 1);
                        qt.y0(1, (i62 >> 6) & 1);
                    }
                    int[] iArr13 = new int[i5];
                    iArr13[0] = (i62 >> 5) & i5;
                    qt.y0(4, iArr13);
                    int[] iArr14 = new int[i5];
                    iArr14[0] = (i62 >> 4) & i5;
                    qt.y0(3, iArr14);
                    int[] iArr15 = new int[i5];
                    iArr15[0] = (i62 >> 3) & i5;
                    qt.y0(5, iArr15);
                    int[] iArr16 = new int[i5];
                    iArr16[0] = (i62 >> 2) & i5;
                    qt.y0(0, iArr16);
                    return;
                }
                return;
            }
            if (i44 == 6) {
                int i63 = i2 + 3;
                qt.y0(138, (bArr[i63] >> 1) & 1);
                qt.y0(139, (bArr[i63] >> 0) & 1);
                o1.x[] xVarArr3 = nt.f8643f;
                o1.x.C(xVarArr3, 1049, new int[]{12, (bArr[i63] >> 6) & 1}, null, null);
                o1.x.C(xVarArr3, 1049, new int[]{3, (bArr[i63] >> 0) & 1}, null, null);
                o1.x.C(xVarArr3, 1049, new int[]{4, (bArr[i2 + 4] >> 0) & 15}, null, null);
                return;
            }
            if (i44 == 240) {
                qt.y0(255, bArr[i2 + 3] & 255);
                qt.y0(256, bArr[i2 + 4] & 255);
                qt.y0(257, bArr[i2 + 5] & 255);
                qt.y0(258, bArr[i2 + 6] & 255);
                qt.y0(259, bArr[i2 + 7] & 255);
                qt.y0(260, bArr[i2 + 8] & 255);
                return;
            }
            if (i44 != 241) {
                switch (i44) {
                    case 8:
                        qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                        this.J = true;
                        break;
                    case 9:
                        o1.x.C(nt.f8643f, 1049, new int[]{2, (bArr[i2 + 4] & 255) - 40}, null, null);
                        break;
                    case 10:
                        qt.y0(154, (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                        break;
                }
            }
            int i64 = bArr[i2 + 3] & 255;
            if (this.A != i64) {
                this.A = i64;
                if (i64 == 17) {
                    if (o1.u.V()) {
                        return;
                    }
                    this.B = true;
                    o1.u.j();
                    return;
                }
                if (i64 == 1 && this.B && o1.u.V()) {
                    l0.b0.l0(6, 0);
                    l0.b0.l0(6, 1);
                    return;
                }
                return;
            }
            return;
        }
        if (b7 == 74) {
            byte b15 = bArr[i2 + 2];
            if (b15 != 1) {
                if (b15 != 2) {
                    return;
                }
                qt.y0(282, (bArr[i2 + 3] >> 6) & 3);
                return;
            }
            qt.y0(275, bArr[i2 + 3] & 255);
            qt.y0(BluetoothClass.Device.COMPUTER_PALM_SIZE_PC_PDA, bArr[i2 + 4] & 255);
            qt.y0(277, bArr[i2 + 5] & 255);
            qt.y0(278, bArr[i2 + 6] & 255);
            qt.y0(279, bArr[i2 + 7] & 255);
            qt.y0(BluetoothClass.Device.COMPUTER_WEARABLE, bArr[i2 + 8] & 255);
            qt.y0(281, bArr[i2 + 9] & 255);
            return;
        }
        if (b7 == 75) {
            qt.y0(MediaProperties.HEIGHT_288, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            for (int i65 = 0; i65 < 20; i65++) {
                int[] iArr17 = {i65, bArr[i2 + i65 + 4] & 255};
                if (qt.C0(289, iArr17, this.f3075h[i65])) {
                    this.f3075h[i65] = iArr17;
                }
            }
            return;
        }
        if (b7 == 97) {
            int i66 = i2 + 2;
            qt.y0(208, (bArr[i66] >> 0) & 1);
            qt.y0(209, (bArr[i66] >> 1) & 1);
            qt.y0(210, (bArr[i66] >> 2) & 1);
            qt.y0(211, (bArr[i66] >> 3) & 1);
            qt.y0(212, (bArr[i66] >> 4) & 1);
            qt.y0(213, (bArr[i66] >> 5) & 1);
            int i67 = i2 + 5;
            qt.y0(214, (bArr[i67] >> 0) & 1);
            qt.y0(215, (bArr[i67] >> 1) & 1);
            qt.y0(216, (bArr[i67] >> 2) & 1);
            qt.y0(217, (bArr[i67] >> 3) & 1);
            qt.y0(218, (bArr[i67] >> 4) & 1);
            qt.y0(219, (bArr[i67] >> 5) & 1);
            return;
        }
        if (b7 == 98) {
            int i68 = i2 + 2;
            int i69 = bArr[i68] & 255;
            int i70 = i2 + 4;
            int i71 = bArr[i70] & 255;
            int i72 = i2 + 5;
            int i73 = bArr[i72] & 255;
            int i74 = i2 + 6;
            int i75 = bArr[i74] & 255;
            int i76 = bArr[i2 + 7] & 255;
            int i77 = bArr[i2 + 8] & 255;
            int i78 = bArr[i2 + 9] & 255;
            if (i69 != this.I) {
                if (i69 == 1) {
                    l0.b0.l0(24, 0);
                    l0.b0.l0(24, 1);
                } else if (i69 == 129) {
                    H3();
                } else if (i69 == 2) {
                    G3();
                } else if (i69 == 3) {
                    l0.b0.l0(54, 0);
                    l0.b0.l0(54, 1);
                } else if (i69 == 4) {
                    J3();
                }
                this.I = i69;
            }
            qt.y0(181, bArr[i68] & 255);
            if (i69 == 2) {
                if ((bArr[i2 + 3] & 255) == 0) {
                    qt.y0(173, i71 & 15);
                    qt.y0(176, (i73 >> 4) & 15);
                    qt.y0(177, (i73 >> 0) & 15);
                    qt.y0(174, ((i78 << 8) & 65280) | (i77 & 255));
                    qt.y0(175, ((i76 << 8) & 65280) | (i75 & 255));
                    qt.y0(180, o1.p0.c(bArr[i2 + 14], bArr[i2 + 15]));
                    return;
                }
                return;
            }
            if (i69 == 4) {
                if ((bArr[i2 + 3] & 255) == 0) {
                    qt.y0(200, i71 & 15);
                    qt.y0(201, (i73 >> 4) & 15);
                    qt.y0(202, (i73 >> 0) & 15);
                    qt.y0(203, ((i78 << 8) & 65280) | (255 & i77));
                    qt.y0(204, o1.p0.c(bArr[i2 + 14], bArr[i2 + 15]));
                    return;
                }
                return;
            }
            if (i69 == 1 || i69 == 129) {
                int i79 = i2 + 3;
                if (bArr[i79] == 0) {
                    qt.y0(191, i71);
                    qt.y0(193, i73 & 15);
                    qt.y0(192, ((i76 << 8) & 65280) | (255 & i75));
                    qt.y0(194, 1 & (i73 >> 5));
                    return;
                }
                if (bArr[i79] == 1) {
                    this.f3069e[0] = bArr[i70];
                    int i80 = 1;
                    for (int i81 = 7; i80 < i81; i81 = 7) {
                        int i82 = (i80 - 1) * 2;
                        int iC = o1.p0.c(bArr[i74 + i82], bArr[i82 + i72]);
                        int[] iArr18 = this.f3069e;
                        if (iArr18[i80] != iC) {
                            iArr18[i80] = iC;
                        }
                        i80++;
                    }
                    o1.x.B(nt.f8643f, 195, this.f3069e);
                    return;
                }
                return;
            }
            return;
        }
        switch (b7) {
            case 29:
                if (nt.a()) {
                    int i83 = i2 + 2;
                    int i84 = bArr[i83] & 255;
                    int i85 = i2 + 3;
                    int i86 = bArr[i85] & 255;
                    int i87 = i2 + 4;
                    int i88 = bArr[i87] & 255;
                    int i89 = i2 + 5;
                    int i90 = bArr[i89] & 255;
                    if (l0.c0.f13013g != i84 || l0.c0.f13014h != i86 || l0.c0.f13015i != i88 || l0.c0.f13016j != i90) {
                        if (u0.b.f17347o != 0) {
                            u0.d.C2(0);
                        } else if (i84 != 0 || i86 != 0 || i88 != 0 || i90 != 0) {
                            u0.d.C2(1);
                        } else if (u0.b.f17350p == 1) {
                            l0.c0.f13017k = 2;
                            l0.b0.b(l0.c0.f13018l);
                        }
                    }
                    l0.c0.f13013g = i84;
                    l0.c0.f13014h = i86;
                    l0.c0.f13015i = i88;
                    l0.c0.f13016j = i90;
                    u0.d.D2(l0.c0.V0(bArr[i83] & 255));
                    u0.d.E2(l0.c0.V0(bArr[i85] & 255));
                    u0.d.F2(l0.c0.V0(bArr[i87] & 255));
                    u0.d.G2(l0.c0.V0(bArr[i89] & 255));
                }
                break;
            case 30:
                if (nt.a()) {
                    u0.d.R2(l0.c0.V0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.V0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.V0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.V0(bArr[i2 + 5] & 255));
                }
                int i91 = i2 + 6;
                qt.y0(159, (bArr[i91] >> 6) & 1);
                qt.y0(160, (bArr[i91] >> 7) & 1);
                qt.y0(161, (bArr[i91] >> 0) & 7);
                break;
            case 31:
                int i92 = i2 + 2;
                byte b16 = bArr[i92];
                qt.y0(164, (b16 >> 0) & 15);
                qt.y0(98, (b16 >> 7) & 1);
                int i93 = i2 + 3;
                qt.y0(99, bArr[i93] & 255);
                o1.x.C(nt.f8643f, 1049, new int[]{15, (bArr[i93] & 255) | ((bArr[i92] << 8) & 65280)}, null, null);
                break;
            case 32:
                if (nt.a()) {
                    byte b17 = bArr[i2 + 2];
                    byte b18 = bArr[i2 + 3];
                    this.f3079j = b17 & 255;
                    int i94 = 0;
                    while (true) {
                        iArr = this.f3081k;
                        if (i94 < iArr.length) {
                            int i95 = this.f3079j;
                            if (i95 != iArr[i94][0]) {
                                i94++;
                            } else if (i95 != 0) {
                                this.f3077i = i94;
                            }
                        }
                    }
                    int i96 = this.f3079j;
                    if (i96 == 7) {
                        int i97 = nt.f8637c;
                        if (i97 == 9 || i97 == 10) {
                            if (b18 == 1) {
                                l0.b0.l0(2, 0);
                                l0.b0.l0(2, 1);
                            }
                        } else if (this.f3097s != b18) {
                            this.f3097s = b18;
                            if (b18 == 1) {
                                this.f3095r = false;
                                this.J0 = -1;
                                l0.b0.o0(this.K0);
                            } else if (b18 == 2) {
                                this.J0 = 25;
                                l0.b0.a(this.K0);
                            } else if (b18 == 0) {
                                if (this.f3095r) {
                                    this.f3095r = false;
                                } else {
                                    l0.b0.l0(2, 0);
                                    l0.b0.l0(2, 1);
                                }
                                this.J0 = -1;
                                l0.b0.o0(this.K0);
                            }
                        }
                    } else if (i96 == 9) {
                        if ((b18 & 255) == 1) {
                            int i98 = h0.c.E;
                            if (i98 != 3) {
                                if (i98 == 4) {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                } else if (i98 != 5) {
                                    if (u0.i.l3().r3()) {
                                        l0.b0.l0(18, 0);
                                        l0.b0.l0(18, 1);
                                    } else {
                                        l0.b0.l0(18, 0);
                                        l0.b0.l0(18, 1);
                                    }
                                }
                            }
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        }
                        break;
                    } else {
                        int i99 = b18 & 255;
                        if (i99 == 1) {
                            if (i94 < iArr.length) {
                                l0.b0.l0(iArr[i94][1], 0);
                            }
                        } else if (i99 == 0) {
                            int i100 = this.f3077i;
                            if (i100 < iArr.length) {
                                i6 = 255;
                                if (i100 != 255) {
                                    l0.b0.l0(iArr[i100][1], 1);
                                }
                            } else {
                                i6 = 255;
                            }
                            this.f3077i = i6;
                        }
                    }
                }
                break;
            case 33:
                int i101 = (bArr[i2 + 8] & 255) << 24;
                qt.y0(100, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255) | i101);
                qt.y0(101, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                int i102 = i2 + 6;
                int i103 = i2 + 7;
                qt.y0(102, i101 | ((bArr[i102] & 255) << 8) | (bArr[i103] & 255));
                qt.y0(150, ((bArr[i103] & 255) << 0) | ((bArr[i102] & 255) << 8));
                break;
            case 34:
                int i104 = i2 + 2;
                int i105 = (bArr[i104] & 255) << 24;
                int i106 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255);
                if (i106 == 65535) {
                    i106 = 0;
                }
                qt.y0(103, i105 | i106);
                qt.y0(169, bArr[i104] & 255);
                break;
            case 35:
                int i107 = (bArr[i2 + 2] & 255) << 24;
                int i108 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255);
                if (i108 == 65535) {
                    i108 = 0;
                }
                qt.y0(104, i108 | i107);
                for (int i109 = 0; i109 < 5; i109++) {
                    int i110 = i2 + (i109 * 2);
                    int[] iArr19 = {i109, (bArr[i110 + 6] & 255) | ((bArr[i110 + 5] & 255) << 8) | i107};
                    if (qt.C0(105, iArr19, this.f3071f[i109])) {
                        this.f3071f[i109] = iArr19;
                    }
                }
                break;
            case 36:
                int i111 = i2 + 3;
                qt.y0(230, (bArr[i111] >> 3) & 1);
                byte b19 = bArr[i2 + 2];
                if (nt.f8633a == 8781936) {
                    if (((bArr[i111] >> 3) & 1) == 0) {
                        qt.y0(1, (b19 >> 6) & 1);
                        qt.y0(2, (b19 >> 7) & 1);
                    } else {
                        qt.y0(1, (b19 >> 7) & 1);
                        qt.y0(2, (b19 >> 6) & 1);
                    }
                } else if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b19 >> 7) & 1);
                    qt.y0(2, (b19 >> 6) & 1);
                } else {
                    qt.y0(1, (b19 >> 6) & 1);
                    qt.y0(2, (b19 >> 7) & 1);
                }
                qt.y0(3, (b19 >> 4) & 1);
                qt.y0(4, (b19 >> 5) & 1);
                qt.y0(5, (b19 >> 3) & 1);
                qt.y0(0, (bArr[i111] >> 7) & 1);
                break;
            case 37:
                byte b20 = bArr[i2 + 2];
                int[] iArr20 = new int[1];
                iArr20[0] = (b20 & 128) == 0 ? 0 : 1;
                qt.y0(106, iArr20);
                int[] iArr21 = new int[1];
                iArr21[0] = (b20 & 64) == 0 ? 0 : 1;
                qt.y0(107, iArr21);
                int[] iArr22 = new int[1];
                iArr22[0] = (b20 & 32) == 0 ? 0 : 1;
                qt.y0(108, iArr22);
                int[] iArr23 = new int[1];
                iArr23[0] = (b20 & 4) == 0 ? 0 : 1;
                qt.y0(109, iArr23);
                int i112 = b20 & 3;
                int i113 = i112 << 24;
                int i114 = bArr[i2 + 3] & 255;
                if (i114 == 255) {
                    i114 = 16777215;
                }
                qt.y0(110, i114 | i113);
                o1.x[] xVarArr4 = nt.f8643f;
                int i115 = (i112 << 12) & BatteryStats.HistoryItem.STATE_DATA_CONNECTION_MASK;
                o1.x.C(xVarArr4, 1049, new int[]{8, (i114 & 255) | i115 | 256}, null, null);
                int i116 = bArr[i2 + 4] & 255;
                if (i116 == 255) {
                    i116 = 16777215;
                }
                qt.y0(111, i116 | i113);
                o1.x.C(xVarArr4, 1049, new int[]{8, (i116 & 255) | i115 | 512}, null, null);
                int i117 = bArr[i2 + 5] & 255;
                if (i117 == 255) {
                    i117 = 16777215;
                }
                qt.y0(112, i117 | i113);
                o1.x.C(xVarArr4, 1049, new int[]{8, (i117 & 255) | i115 | 768}, null, null);
                int i118 = bArr[i2 + 6] & 255;
                if (i118 == 255) {
                    i118 = 16777215;
                }
                qt.y0(113, i118 | i113);
                o1.x.C(xVarArr4, 1049, new int[]{8, i115 | 1024 | (i118 & 255)}, null, null);
                int i119 = bArr[i2 + 7] & 255;
                if (i119 == 255) {
                    i119 = 16777215;
                }
                qt.y0(114, i119 | i113);
                break;
            case 38:
                byte b21 = bArr[i2 + 2];
                int[] iArr24 = new int[1];
                iArr24[0] = (b21 & 128) == 0 ? 0 : 1;
                qt.y0(115, iArr24);
                qt.y0(116, (b21 & 112) >> 4);
                qt.y0(117, (b21 & DhcpPacket.DHCP_HOST_NAME) >> 2);
                qt.y0(118, b21 & 3);
                byte b22 = bArr[i2 + 3];
                int[] iArr25 = new int[1];
                iArr25[0] = (b22 & 128) == 0 ? 0 : 1;
                qt.y0(119, iArr25);
                int[] iArr26 = new int[1];
                iArr26[0] = (b22 & 64) == 0 ? 0 : 1;
                qt.y0(120, iArr26);
                int[] iArr27 = new int[1];
                iArr27[0] = (b22 & 32) == 0 ? 0 : 1;
                qt.y0(121, iArr27);
                int[] iArr28 = new int[1];
                iArr28[0] = (b22 & 16) == 0 ? 0 : 1;
                qt.y0(122, iArr28);
                qt.y0(123, b22 & 7);
                byte b23 = bArr[i2 + 4];
                int[] iArr29 = new int[1];
                iArr29[0] = (b23 & 128) == 0 ? 0 : 1;
                qt.y0(124, iArr29);
                int[] iArr30 = new int[1];
                iArr30[0] = (b23 & 64) == 0 ? 0 : 1;
                qt.y0(125, iArr30);
                int[] iArr31 = new int[1];
                iArr31[0] = (b23 & 32) == 0 ? 0 : 1;
                qt.y0(126, iArr31);
                int[] iArr32 = new int[1];
                iArr32[0] = (b23 & 16) == 0 ? 0 : 1;
                qt.y0(127, iArr32);
                int[] iArr33 = new int[1];
                iArr33[0] = (b23 & 8) == 0 ? 0 : 1;
                qt.y0(128, iArr33);
                qt.y0(129, b23 & 7);
                byte b24 = bArr[i2 + 5];
                int[] iArr34 = new int[1];
                iArr34[0] = (b24 & 128) == 0 ? 0 : 1;
                qt.y0(130, iArr34);
                int[] iArr35 = new int[1];
                iArr35[0] = (b24 & 64) == 0 ? 0 : 1;
                qt.y0(131, iArr35);
                int i120 = nt.f8637c;
                if (i120 == 9 || i120 == 10 || i120 == 11) {
                    int[] iArr36 = new int[1];
                    iArr36[0] = (b24 & 32) == 0 ? 0 : 1;
                    qt.y0(156, iArr36);
                    int[] iArr37 = new int[1];
                    iArr37[0] = (b24 & 16) == 0 ? 0 : 1;
                    qt.y0(157, iArr37);
                }
                qt.y0(BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA, (b24 >> 5) & 1);
                qt.y0(273, (b24 >> 4) & 1);
                qt.y0(132, (b24 >> 2) & 3);
                qt.y0(206, (b24 >> 0) & 3);
                break;
            case 39:
                int i121 = (bArr[i2 + 2] & 255) << 24;
                for (int i122 = 0; i122 < 15; i122++) {
                    int i123 = i2 + (i122 * 2);
                    int[] iArr38 = {i122, (bArr[i123 + 4] & 255) | ((bArr[i123 + 3] & 255) << 8) | i121};
                    if (qt.C0(134, iArr38, this.f3073g[i122])) {
                        this.f3073g[i122] = iArr38;
                    }
                }
                break;
            case 40:
                if (nt.f8633a != 8781936) {
                    byte b25 = bArr[i18];
                    byte b26 = bArr[i2 + 2];
                    qt.y0(10, (b26 >> 7) & 1);
                    qt.y0(11, (b26 >> 6) & 1);
                    qt.y0(12, (b26 >> 5) & 1);
                    qt.y0(13, (b26 >> 4) & 1);
                    qt.y0(26, (b26 >> 3) & 1);
                    qt.y0(14, (b26 >> 2) & 1);
                    qt.y0(15, (b26 >> 1) & 1);
                    byte b27 = bArr[i2 + 3];
                    int i124 = b27 & DhcpPacket.DHCP_DOMAIN_NAME;
                    if (i124 > 7) {
                        i124 = 7;
                    }
                    qt.y0(21, i124);
                    int i125 = i2 + 6;
                    qt.y0(37, (bArr[i125] >> 0) & 1);
                    int i126 = i2 + 4;
                    int i127 = bArr[i126] & 255;
                    int i128 = i2 + 5;
                    int i129 = bArr[i128] & 255;
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        i127 = bArr[i128] & 255;
                        i129 = bArr[i126] & 255;
                    }
                    if (((bArr[i125] >> 0) & 1) == 0) {
                        if (i127 == 0) {
                            qt.y0(27, -2);
                        } else if (i127 == 31) {
                            qt.y0(27, -3);
                        } else if (i127 >= 1 && i127 <= 29) {
                            qt.y0(27, (i127 * 5) + 175);
                        } else if (i127 >= 32 && i127 <= 35) {
                            qt.y0(27, ((i127 - 32) * 5) + 160);
                        } else if (i127 < 36 || i127 > 37) {
                            qt.y0(27, -1);
                        } else {
                            qt.y0(27, ((i127 - 36) * 5) + 150);
                        }
                        if (i129 == 0) {
                            qt.y0(28, -2);
                        } else if (i129 == 31) {
                            qt.y0(28, -3);
                        } else if (i129 >= 1 && i129 <= 29) {
                            qt.y0(28, (i129 * 5) + 175);
                        } else if (i129 >= 32 && i129 <= 35) {
                            qt.y0(28, ((i129 - 32) * 5) + 160);
                        } else if (i129 < 36 || i129 > 37) {
                            qt.y0(28, -1);
                        } else {
                            qt.y0(28, ((i129 - 36) * 5) + 150);
                        }
                    } else {
                        if (i127 == 0) {
                            qt.y0(27, -2);
                        } else if (i127 != 255) {
                            qt.y0(27, i127 * 10);
                        } else {
                            qt.y0(27, -3);
                        }
                        if (i129 == 0) {
                            qt.y0(28, -2);
                        } else if (i129 != 255) {
                            qt.y0(28, i129 * 10);
                        } else {
                            qt.y0(28, -3);
                        }
                    }
                    qt.y0(16, (bArr[i125] >> 6) & 1);
                    qt.y0(65, (bArr[i125] >> 7) & 1);
                    qt.y0(54, (bArr[i125] >> 5) & 1);
                    qt.y0(52, (bArr[i125] >> 4) & 1);
                    qt.y0(53, (bArr[i125] >> 3) & 1);
                    qt.y0(67, (bArr[i125] >> 2) & 1);
                    if (((bArr[i125] >> 0) & 1) == 0) {
                        int i130 = bArr[i2 + 8] & 255;
                        if (i130 == 0) {
                            qt.y0(40, -2);
                        } else if (i130 == 31) {
                            qt.y0(40, -3);
                        } else if (i130 >= 1 && i130 <= 29) {
                            qt.y0(40, (i130 * 5) + 175);
                        } else if (i130 < 33 || i130 > 38) {
                            qt.y0(40, -1);
                        } else {
                            qt.y0(40, ((i130 - 33) * 5) + 150);
                        }
                        int i131 = bArr[i2 + 10] & 255;
                        if (i131 == 0) {
                            qt.y0(41, -2);
                        } else if (i131 == 31) {
                            qt.y0(41, -3);
                        } else if (i131 >= 1 && i131 <= 29) {
                            qt.y0(41, (i131 * 5) + 175);
                        } else if (i131 < 33 || i131 > 38) {
                            qt.y0(41, -1);
                        } else {
                            qt.y0(41, ((i131 - 33) * 5) + 150);
                        }
                    } else {
                        int i132 = bArr[i2 + 8] & 255;
                        if (i132 == 0) {
                            qt.y0(40, -2);
                        } else if (i132 != 255) {
                            qt.y0(40, i132 * 10);
                        } else {
                            qt.y0(40, -3);
                        }
                        int i133 = bArr[i2 + 10] & 255;
                        if (i133 == 0) {
                            qt.y0(41, -2);
                        } else if (i133 != 255) {
                            qt.y0(41, i133 * 10);
                        } else {
                            qt.y0(41, -3);
                        }
                    }
                    int i134 = i2 + 9;
                    qt.y0(42, (bArr[i134] >> 7) & 1);
                    qt.y0(46, (bArr[i134] >> 6) & 1);
                    qt.y0(47, (bArr[i134] >> 5) & 1);
                    qt.y0(43, (bArr[i134] >> 4) & 1);
                    qt.y0(44, (bArr[i134] >> 0) & 15);
                    int i135 = nt.f8637c;
                    if (i135 == 90 || i135 == 91 || i135 == 76 || i135 == 63) {
                        int i136 = i2 + 11;
                        int i137 = ((bArr[i136] >> 4) & 1) == 1 ? 1 : 0;
                        int i138 = i137;
                        int i139 = i138;
                        int i140 = bArr[i136] & 3;
                        if (i140 != 1) {
                            b2 = 2;
                            if (i140 == 2) {
                                i137 = 1;
                                i7 = 1;
                            } else if (i140 != 3) {
                                i7 = 0;
                            } else {
                                i7 = 0;
                                i137 = 1;
                            }
                        } else {
                            b2 = 2;
                            i7 = 1;
                        }
                        int i141 = (bArr[i136] >> b2) & 3;
                        if (i141 == 1) {
                            i8 = 1;
                        } else if (i141 == b2) {
                            i8 = 1;
                            i139 = 1;
                        } else if (i141 != 3) {
                            i8 = 0;
                        } else {
                            i8 = 0;
                            i139 = 1;
                        }
                        qt.y0(18, i138);
                        qt.y0(19, i7);
                        qt.y0(20, i137);
                        qt.y0(22, i139);
                        qt.y0(23, i8);
                        qt.y0(24, i139);
                    } else {
                        qt.y0(18, (b27 >> 7) & 1);
                        qt.y0(19, (b27 >> 6) & 1);
                        int i142 = b27 >> 5;
                        qt.y0(20, i142 & 1);
                        qt.y0(77, i142 & 7);
                    }
                    if (b25 >= 11) {
                        int i143 = i2 + 12;
                        qt.y0(166, (bArr[i143] >> 0) & 3);
                        qt.y0(86, (bArr[i143] >> 2) & 7);
                        qt.y0(76, (bArr[i143] >> 7) & 1);
                        qt.y0(92, (bArr[i143] >> 5) & 1);
                        int i144 = i2 + 13;
                        qt.y0(33, (bArr[i144] >> 7) & 1);
                        qt.y0(36, (bArr[i144] >> 6) & 1);
                    }
                    int i145 = bArr[i2 + 7] & 255;
                    qt.y0(155, i145);
                    if (i145 == 255 || i145 == 0) {
                        u0.d.A3(0);
                    } else {
                        u0.d.B3((((bArr[i125] >> 0) & 1) == 1 || SystemProperties.getInt("persist.fyt.temperature", 0) == 1) ? (268435456 | ((i145 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR)) & (-1) : (i145 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                    }
                    break;
                }
                break;
            case 41:
                if (!this.J) {
                    qt.k(bArr[i2 + 2], bArr[i2 + 3], false, 500);
                }
                break;
            case 42:
                byte b28 = bArr[i2 + 2];
                byte b29 = bArr[i2 + 3];
                this.f3091p = b28 & 255;
                int i146 = 0;
                while (true) {
                    iArr2 = this.f3093q;
                    if (i146 < iArr2.length) {
                        int i147 = this.f3091p;
                        if (i147 != iArr2[i146][0]) {
                            i146++;
                        } else if (i147 != 0) {
                            this.f3089o = i146;
                        }
                    }
                }
                int i148 = this.f3091p;
                if (i148 != 12) {
                    if (i148 != 32) {
                        if (i148 != 34) {
                            int i149 = b29 & 255;
                            if (i149 == 1) {
                                if (i146 < iArr2.length) {
                                    l0.b0.l0(iArr2[i146][1], 0);
                                }
                            } else if (i149 == 0) {
                                int i150 = this.f3089o;
                                if (i150 < iArr2.length) {
                                    i9 = 255;
                                    if (i150 != 255) {
                                        l0.b0.l0(iArr2[i150][1], 1);
                                    }
                                } else {
                                    i9 = 255;
                                }
                                this.f3089o = i9;
                            }
                        }
                    } else if ((b29 & 255) == 1) {
                        I3();
                    }
                }
                if ((b29 & 255) == 1) {
                    G3();
                }
                break;
            case 43:
                qt.y0(170, bArr[i2 + 2] & 255);
                qt.y0(171, ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
                qt.y0(172, (bArr[i2 + 6] & 255) | ((bArr[i2 + 5] & 255) << 8));
                break;
            default:
                switch (b7) {
                    case 47:
                        if (nt.a()) {
                            byte b30 = bArr[i2 + 2];
                            byte b31 = bArr[i2 + 3];
                            this.f3101u = b30 & 255;
                            int i151 = 0;
                            while (true) {
                                iArr3 = this.f3103v;
                                if (i151 < iArr3.length) {
                                    int i152 = this.f3101u;
                                    if (i152 != iArr3[i151][0]) {
                                        i151++;
                                    } else if (i152 != 0) {
                                        this.f3099t = i151;
                                    }
                                }
                            }
                            int i153 = this.f3101u;
                            switch (i153) {
                                case 17:
                                    if (b31 == 1) {
                                        if (u0.b.D == 1) {
                                            int i154 = w0.d.f17796h;
                                            if (i154 - 65536 == 0 || 1 == i154 - 65536 || 2 == i154 - 65536) {
                                                l0.b0.l0(75, 0);
                                                l0.b0.l0(75, 1);
                                            }
                                        } else {
                                            int i155 = w0.d.f17796h;
                                            if (i155 - 65536 == 0 || 1 == i155 - 65536 || 2 == i155 - 65536) {
                                                l0.b0.l0(75, 0);
                                                l0.b0.l0(75, 1);
                                            } else {
                                                l0.b0.l0(24, 0);
                                                l0.b0.l0(24, 1);
                                            }
                                        }
                                    }
                                    break;
                                case 18:
                                    if (b31 == 1) {
                                        if (u0.b.D != 1) {
                                            int i156 = w0.d.f17796h;
                                            if (i156 - 65536 == 0 || 1 == i156 - 65536 || 2 == i156 - 65536) {
                                                l0.b0.l0(24, 0);
                                                l0.b0.l0(24, 1);
                                            } else {
                                                l0.b0.l0(74, 0);
                                                l0.b0.l0(74, 1);
                                            }
                                            break;
                                        } else {
                                            int i157 = w0.d.f17796h;
                                            if (i157 - 65536 != 0 && 1 != i157 - 65536 && 2 != i157 - 65536) {
                                                l0.b0.l0(74, 0);
                                                l0.b0.l0(74, 1);
                                                break;
                                            }
                                        }
                                    }
                                    break;
                                case 19:
                                    if (b31 == 1) {
                                        if (o1.u.T(a.b.f24l)) {
                                            l0.b0.l0(18, 0);
                                            l0.b0.l0(18, 1);
                                        } else {
                                            o1.u.f(a.b.f24l);
                                        }
                                    }
                                    break;
                                default:
                                    if (i153 != 0 && (i10 = this.f3099t) < iArr3.length) {
                                        l0.b0.l0(iArr3[i10][1], 0);
                                        l0.b0.l0(this.f3103v[this.f3099t][1], 1);
                                        break;
                                    }
                                    break;
                            }
                        }
                        break;
                    case 48:
                        qt.L(new String(bArr, i2 + 2, i3 - 2));
                        break;
                    case 49:
                        int i158 = i2 + 2;
                        qt.y0(183, (bArr[i158] >> 4) & 15);
                        qt.y0(184, (bArr[i158] >> 0) & 15);
                        int i159 = i2 + 3;
                        qt.y0(185, (bArr[i159] >> 4) & 15);
                        qt.y0(186, (bArr[i159] >> 0) & 15);
                        int i160 = i2 + 4;
                        qt.y0(187, (bArr[i160] >> 4) & 15);
                        qt.y0(188, (bArr[i160] >> 0) & 15);
                        qt.y0(189, (bArr[i2 + 5] >> 0) & 255);
                        qt.y0(190, (bArr[i2 + 6] >> 0) & 1);
                        break;
                    case 50:
                        int i161 = nt.f8637c;
                        if (i161 != 75 && i161 != 111 && i161 != 122 && i161 != 133 && i161 != 154) {
                            switch (i161) {
                                case 49:
                                case 50:
                                case 51:
                                    z2 = false;
                                    break;
                                default:
                                    switch (i161) {
                                        case 56:
                                        case 57:
                                        case 58:
                                            z2 = false;
                                            break;
                                        default:
                                            switch (i161) {
                                                case 137:
                                                case 138:
                                                case 139:
                                                case 140:
                                                case 141:
                                                case 142:
                                                    z2 = false;
                                                    break;
                                                default:
                                                    z2 = O0 == 0;
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                        } else {
                            z2 = false;
                        }
                        if (!z2) {
                            int i162 = i2 + 2;
                            byte b32 = bArr[i162];
                            int i163 = (b32 >> 2) & 1;
                            L0 = i163;
                            if (i163 == 1 && M0 != (i11 = (b32 >> 3) & 1)) {
                                M0 = i11;
                                if (!qt.k0()) {
                                    if (M0 == 1) {
                                        qt.a(1);
                                    } else {
                                        qt.a(0);
                                    }
                                }
                            }
                            if ((bArr[i162] & 1) == 1 && ((bArr[i162] >> 6) & 1) == 0) {
                                z.k.s(227, 132, 2, 8, 1);
                                break;
                            }
                        }
                        break;
                    case 51:
                        int i164 = i2 + 2;
                        if (bArr[i164] == 1) {
                            l0.b0.l0(34, 0);
                            l0.b0.l0(34, 1);
                        } else if (bArr[i164] == 2) {
                            l0.b0.l0(35, 0);
                            l0.b0.l0(35, 1);
                        } else if (bArr[i164] == 3) {
                            l0.b0.l0(32, 0);
                            l0.b0.l0(32, 1);
                        } else if (bArr[i164] == 4) {
                            l0.b0.l0(33, 0);
                            l0.b0.l0(33, 1);
                        } else if (bArr[i164] == 5) {
                            l0.b0.l0(29, 0);
                            l0.b0.l0(29, 1);
                        }
                        break;
                    default:
                        switch (b7) {
                            case 80:
                                int i165 = i2 + 2;
                                qt.y0(167, (bArr[i165] >> 2) & 3);
                                qt.y0(168, (bArr[i165] >> 0) & 3);
                                qt.y0(165, bArr[i2 + 3] & 255);
                                qt.y0(i.a.Theme_preferenceFragmentStyle, bArr[i2 + 4] & 255);
                                qt.y0(i.a.Theme_preferencePanelStyle, bArr[i2 + 5] & 255);
                                qt.y0(271, bArr[i2 + 6] & 255);
                                int i166 = i2 + 7;
                                qt.y0(294, (bArr[i166] >> 4) & 15);
                                qt.y0(295, (bArr[i166] >> 0) & 15);
                                int i167 = i2 + 8;
                                qt.y0(296, (bArr[i167] >> 4) & 15);
                                qt.y0(297, (bArr[i167] >> 0) & 15);
                                int i168 = i2 + 9;
                                qt.y0(298, (bArr[i168] >> 5) & 1);
                                qt.y0(299, (bArr[i168] >> 4) & 1);
                                qt.y0(300, (bArr[i168] >> 3) & 1);
                                qt.y0(TextTrackRegion.SCROLL_VALUE_SCROLL_UP, (bArr[i168] >> 2) & 1);
                                qt.y0(302, (bArr[i168] >> 1) & 1);
                                qt.y0(303, (bArr[i168] >> 0) & 1);
                                int i169 = i2 + 10;
                                qt.y0(304, (bArr[i169] >> 4) & 15);
                                qt.y0(305, (bArr[i169] >> 0) & 15);
                                break;
                            case 81:
                                byte b33 = bArr[i2 + 2];
                                byte b34 = bArr[i2 + 3];
                                this.f3085m = b33 & 255;
                                int i170 = 0;
                                while (true) {
                                    iArr4 = this.f3087n;
                                    if (i170 < iArr4.length) {
                                        int i171 = this.f3085m;
                                        if (i171 != iArr4[i170][0]) {
                                            i170++;
                                        } else if (i171 != 0) {
                                            this.f3083l = i170;
                                        }
                                    }
                                }
                                int i172 = this.f3085m;
                                if (i172 == 129) {
                                    for (int i173 = 0; i173 < (b34 & 255); i173++) {
                                        l0.b0.l0(7, 0);
                                    }
                                    l0.b0.l0(7, 1);
                                } else if (i172 == 130) {
                                    for (int i174 = 0; i174 < (b34 & 255); i174++) {
                                        l0.b0.l0(8, 0);
                                    }
                                    l0.b0.l0(8, 1);
                                } else if (i172 == 133) {
                                    for (int i175 = 0; i175 < (b34 & 255); i175++) {
                                        l0.b0.l0(31, 0);
                                    }
                                    l0.b0.l0(31, 1);
                                } else if (i172 != 134) {
                                    int i176 = b34 & 255;
                                    if (i176 == 1) {
                                        if (i170 < iArr4.length) {
                                            l0.b0.l0(iArr4[i170][1], 0);
                                        }
                                    } else if (i176 == 0) {
                                        int i177 = this.f3083l;
                                        if (i177 < iArr4.length) {
                                            i12 = 255;
                                            if (i177 != 255) {
                                                l0.b0.l0(iArr4[i177][1], 1);
                                            }
                                        } else {
                                            i12 = 255;
                                        }
                                        this.f3083l = i12;
                                    }
                                } else {
                                    for (int i178 = 0; i178 < (b34 & 255); i178++) {
                                        l0.b0.l0(30, 0);
                                    }
                                    l0.b0.l0(30, 1);
                                }
                                break;
                            case 82:
                                int i179 = i2 + 2;
                                qt.y0(162, (bArr[i179] >> 7) & 1);
                                qt.y0(207, (bArr[i179] >> 4) & 7);
                                int i180 = i2 + 4;
                                qt.y0(182, (bArr[i180] >> 4) & 15);
                                qt.y0(163, (bArr[i180] >> 0) & 7);
                                int i181 = i2 + 3;
                                qt.y0(196, (bArr[i181] >> 4) & 7);
                                qt.y0(197, (bArr[i181] >> 0) & 15);
                                int i182 = i2 + 5;
                                qt.y0(198, (bArr[i182] >> 4) & 15);
                                qt.y0(199, (bArr[i182] >> 0) & 15);
                                int i183 = i2 + 6;
                                qt.y0(i.a.Theme_preferenceHeaderPanelStyle, (bArr[i183] >> 4) & 1);
                                qt.y0(248, (bArr[i183] >> 2) & 3);
                                qt.y0(249, (bArr[i183] >> 0) & 3);
                                int i184 = i2 + 7;
                                qt.y0(250, (bArr[i184] >> 5) & 7);
                                qt.y0(251, (bArr[i184] >> 2) & 7);
                                int i185 = i2 + 8;
                                qt.y0(252, (bArr[i185] >> 6) & 3);
                                qt.y0(i.a.Theme_dialogTitleDecorLayout, (bArr[i185] >> 4) & 3);
                                qt.y0(283, (bArr[i185] >> 3) & 1);
                                qt.y0(284, (bArr[i185] >> 0) & 7);
                                qt.y0(306, (bArr[i185] >> 7) & 1);
                                qt.y0(307, (bArr[i185] >> 6) & 1);
                                qt.y0(308, (bArr[i185] >> 5) & 1);
                                qt.y0(309, (bArr[i185] >> 4) & 1);
                                int i186 = nt.f8637c;
                                if (i186 == 110 || i186 == 101 || i186 == 103) {
                                    if (((bArr[i179] >> 0) & 3) == 1) {
                                        u0.d.I3(23, 0);
                                    } else {
                                        u0.d.I3(23, 1);
                                    }
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.S.j();
        u0.c.f17379f.d(this.D);
        o1.y yVar = u0.c.f17386m;
        yVar.d(this.F);
        l0.b0.p0(this.G);
        l0.b0.p0(this.H);
        u0.c.f17396w.d(this.f3106w0);
        u0.c.f17388o.d(this.A0);
        u0.c.f17389p.d(this.B0);
        u0.c.f17390q.d(this.C0);
        u0.c.f17392s.d(this.f3106w0);
        o1.y yVar2 = u0.c.f17374a;
        yVar2.d(this.f3100t0);
        w0.e.f17815a.d(this.G0);
        w0.e.f17819e.d(this.G0);
        yVar.d(this.G0);
        h0.d.f2462a.d(this.D0);
        o1.h.f16865a.d(this.f3096r0);
        o1.y yVar3 = y0.g.f18094d;
        yVar3.d(this.f3098s0);
        u0.c.G.d(this.f3088n0);
        yVar2.d(this.f3102u0);
        qt.q0(this.T);
        qt.q0(this.O);
        qt.q0(this.f3100t0);
        yVar3.d(this.N);
        y0.g.f18095e.d(this.N);
        yVar2.d(this.f3104v0);
        l0.b0.p0(this.M);
        qt.o0(this.L);
        ot.f9020b.d(this.K);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 310) {
            return;
        }
        int i4 = 0;
        if (i2 == 105) {
            while (i4 < 5) {
                o1.x.v(bVar, i2, this.f3071f[i4]);
                i4++;
            }
        } else {
            if (i2 != 134) {
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                return;
            }
            while (i4 < 15) {
                o1.x.v(bVar, i2, this.f3073g[i4]);
                i4++;
            }
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 37) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            L3(37, iArr[0]);
        }
        if (i2 == 38) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            L3(38, iArr[0]);
            return;
        }
        if (i2 == 1003) {
            int i3 = nt.f8637c;
            if (i3 == 109 || i3 == 110 || i3 == 101 || i3 == 105) {
                z.k.s(227, -125, 2, 44, 1);
                return;
            } else if (u0.b.f17347o == 0) {
                qt.a(1);
                return;
            } else {
                qt.a(0);
                return;
            }
        }
        if (i2 == 1005) {
            if (iArr[1] == 0) {
                return;
            }
            a.f.p().t(LogType.CANBUS, "C_CAMERA_MODE ints[0] =  " + iArr[0]);
            if (iArr.length > 0) {
                int i4 = nt.f8637c;
                if (i4 == 6 || i4 == 7) {
                    if (M0 == 0) {
                        if (iArr[0] == 0) {
                            L3(33, 4);
                            return;
                        } else if (iArr[0] == 2) {
                            L3(33, 7);
                            return;
                        } else {
                            if (iArr[0] == 3) {
                                L3(33, 3);
                                return;
                            }
                            return;
                        }
                    }
                    if (iArr[0] == 0) {
                        L3(33, 2);
                        return;
                    }
                    if (iArr[0] == 2) {
                        L3(33, 1);
                        return;
                    } else if (iArr[0] == 3) {
                        L3(33, 3);
                        return;
                    } else {
                        if (iArr[0] == 4) {
                            qt.a(0);
                            return;
                        }
                        return;
                    }
                }
                if (i4 == 10) {
                    if (iArr[0] == 0) {
                        L3(33, 1);
                        return;
                    }
                    if (iArr[0] == 1) {
                        L3(33, 2);
                        return;
                    } else if (iArr[0] == 3) {
                        L3(33, 5);
                        return;
                    } else {
                        if (iArr[0] == 2) {
                            L3(33, 4);
                            return;
                        }
                        return;
                    }
                }
                if (L0 != 0) {
                    if (iArr[0] == 0) {
                        L3(33, 1);
                    } else if (iArr[0] == 1) {
                        L3(33, 2);
                    } else if (iArr[0] == 3) {
                        L3(33, 3);
                    } else if (iArr[0] == 2) {
                        L3(33, 6);
                    }
                }
                if (M0 == 0 || iArr[0] != 4) {
                    return;
                }
                L3(32, 0);
                return;
            }
            return;
        }
        if (i2 == 1029) {
            if (T2(iArr, 2)) {
                if (nt.f8637c == 10) {
                    int iW = (iArr[1] * 1024) / a.f.w();
                    int i5 = (iArr[2] * CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) / a.f.i();
                    if (iArr[0] == 1) {
                        z.k.s(227, 136, 5, iW & 255, iW >> 8, i5 & 255, i5 >> 8, 0);
                        return;
                    } else {
                        if (iArr[0] == 0) {
                            z.k.s(227, 136, 5, iW & 255, iW >> 8, i5 & 255, i5 >> 8, 1);
                            return;
                        }
                        return;
                    }
                }
                int iW2 = (iArr[1] * Process.MEDIA_RW_GID) / a.f.w();
                int i6 = (iArr[2] * 1000) / a.f.i();
                if (iArr[0] == 0) {
                    z.k.s(227, 152, 6, 1, iW2 >> 8, iW2 & 255, i6 >> 8, i6 & 255, 0);
                    return;
                } else {
                    if (iArr[0] == 1) {
                        z.k.s(227, 152, 6, 0, iW2 >> 8, iW2 & 255, i6 >> 8, i6 & 255, 0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        switch (i2) {
            case 0:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 4) {
                        iArr[0] = 4;
                    }
                    L3(6, iArr[0]);
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    L3(0, iArr[0]);
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    L3(1, iArr[0]);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    L3(2, iArr[0]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    L3(3, iArr[0]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    L3(4, iArr[0]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 6) {
                        iArr[0] = 6;
                    }
                    L3(5, iArr[0]);
                    break;
                }
                break;
            case 7:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    L3(7, iArr[0]);
                    break;
                }
                break;
            case 8:
                L3(8, 0);
                break;
            case 9:
                L3(9, 0);
                break;
            case 10:
                L3(10, 0);
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    L3(12, iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    L3(13, iArr[0]);
                    break;
                }
                break;
            case 13:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    L3(14, iArr[0]);
                    break;
                }
                break;
            case 14:
                if (iArr != null && iArr.length > 0) {
                    int i7 = iArr[0];
                    if (i7 == 0) {
                        L3(15, 0);
                        break;
                    } else if (i7 == 1) {
                        L3(15, 1);
                        break;
                    }
                }
                break;
            case 15:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    L3(16, iArr[0]);
                    break;
                }
                break;
            case 16:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    L3(17, iArr[0]);
                    break;
                }
                break;
            case 17:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    L3(18, iArr[0]);
                    break;
                }
                break;
            case 18:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    L3(19, iArr[0]);
                    break;
                }
                break;
            case 19:
                if (iArr != null && iArr.length > 0) {
                    L3(35, iArr[0]);
                    break;
                }
                break;
            case 20:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] == 65) {
                        z.k.s(227, -112, 2, 125, 1);
                        z.k.s(227, -112, 2, 125, 3);
                        z.k.s(227, -112, 2, 125, 4);
                        z.k.s(227, -112, 2, 125, 6);
                        z.k.s(227, -112, 2, 125, 9);
                        z.k.s(227, -112, 2, 125, 10);
                        z.k.s(227, -112, 2, 125, 13);
                    } else if (iArr[0] == 31) {
                        z.k.s(227, -112, 2, 31, 0);
                    }
                    break;
                }
                break;
            case 21:
                if (iArr != null && iArr.length > 0) {
                    L3(34, iArr[0]);
                    break;
                }
                break;
            default:
                switch (i2) {
                    case 33:
                        Q3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, (byte) iArr[0], (byte) iArr[1], 0});
                        break;
                    case 34:
                        if (iArr[0] != 1) {
                            if (iArr[0] == 0) {
                                l0.b0.l0(62, 0);
                                l0.b0.l0(62, 1);
                            }
                        } else if (!qt.i0().equals("com.syu.carinfo.air.Air_Activity_WC_YL_Toyota_UI")) {
                            K3();
                        }
                        break;
                    case 35:
                        qt.y0(274, iArr[0]);
                        break;
                    default:
                        switch (i2) {
                            case 40:
                                if (T2(iArr, 2)) {
                                    if (iArr[0] == 65 && (iArr[1] == 32 || iArr[1] == 33)) {
                                        O3(iArr[1]);
                                    } else if (iArr[0] != 62) {
                                        z.k.s(227, -125, 2, iArr[0], iArr[1]);
                                    } else {
                                        N3(iArr[1], true);
                                    }
                                }
                                break;
                            case 41:
                                if (T2(iArr, 5)) {
                                    z.k.s(227, 199, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                                }
                                break;
                            case 42:
                                if (T2(iArr, 2)) {
                                    int i8 = nt.f8637c;
                                    if ((i8 == 52 || i8 == 71 || i8 == 72 || i8 == 73 || i8 == 74 || i8 == 134) && iArr[0] == 50 && !o1.u.S(a.b.Q)) {
                                        o1.u.z();
                                    }
                                    z.k.s(227, 133, 2, iArr[0], iArr[1]);
                                }
                                break;
                            case 43:
                                if (T2(iArr, 2)) {
                                    z.k.s(227, 144, 2, iArr[0], iArr[1]);
                                }
                                break;
                            case 44:
                                if (T2(iArr, 2)) {
                                    z.k.s(227, 132, 2, iArr[0], iArr[1]);
                                }
                                break;
                            case 45:
                                if (T2(iArr, 2)) {
                                    if (iArr[0] == 4 || iArr[0] == 5) {
                                        z.k.s(227, 133, 2, 16, iArr[1]);
                                    } else if (iArr[0] == 3) {
                                        z.k.s(227, 133, 2, 17, iArr[1]);
                                    } else if (iArr[0] == 6) {
                                        z.k.s(227, 133, 2, 8, iArr[1]);
                                    } else if (iArr[0] == 11) {
                                        z.k.s(227, 133, 2, 2, 0);
                                    } else if (iArr[0] == 12) {
                                        z.k.s(227, 133, 2, 1, 0);
                                    }
                                }
                                break;
                            case 46:
                                if (T2(iArr, 2)) {
                                    if (iArr[0] != 9 || iArr[1] != 1) {
                                        if (iArr[0] != 8 || iArr[1] != 1) {
                                            if (iArr[0] != 5 || iArr[1] != 1) {
                                                if (iArr[0] != 4 || iArr[1] != 1) {
                                                    if (iArr[0] == 6 && iArr[1] == 1) {
                                                        z.k.s(227, 133, 2, 32, 135);
                                                        break;
                                                    } else if (iArr[0] == 7 && iArr[1] == 1) {
                                                        z.k.s(227, 133, 2, 32, 4);
                                                        break;
                                                    }
                                                } else {
                                                    z.k.s(227, 133, 2, 32, 131);
                                                    break;
                                                }
                                            } else {
                                                z.k.s(227, 133, 2, 32, 134);
                                                break;
                                            }
                                        } else {
                                            z.k.s(227, 133, 2, 18, 0);
                                            break;
                                        }
                                    } else {
                                        z.k.s(227, 133, 2, 19, 0);
                                        break;
                                    }
                                }
                                break;
                            case 47:
                                if (T2(iArr, 2)) {
                                    z.k.s(227, 224, 2, iArr[0], iArr[1]);
                                }
                                break;
                            case 48:
                                if (T2(iArr, 7)) {
                                    z.k.s(227, 199, 7, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6]);
                                }
                                break;
                            case 49:
                                if (T2(iArr, 2)) {
                                    z.k.s(227, 239, 8, 125, 240, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                                }
                                break;
                            case 50:
                                if (T2(iArr, 1)) {
                                    M3(iArr[0]);
                                }
                                break;
                            default:
                                switch (i2) {
                                    case 151:
                                        if (T2(iArr, 2)) {
                                            z.k.s(227, -13, 2, iArr[0], iArr[1]);
                                        }
                                        break;
                                    case 152:
                                        if (T2(iArr, 2)) {
                                            z.k.s(227, -13, 6, 7, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                                        }
                                        break;
                                    case 153:
                                        if (T2(iArr, 2)) {
                                            z.k.s(227, -13, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                                        }
                                        break;
                                    case 154:
                                        if (T2(iArr, 3)) {
                                            z.k.s(227, -13, 3, iArr[0], iArr[1], iArr[2]);
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    public final void a3(int i2, int i3) {
        switch (i3) {
            case 0:
                z.k.s(227, -57, 7, i2, 0, 0, 0, 0, 0, 0);
                break;
            case 1:
                z.k.s(227, -57, 7, 0, i2, 0, 0, 0, 0, 0);
                break;
            case 2:
                z.k.s(227, -57, 7, 0, 0, i2, 0, 0, 0, 0);
                break;
            case 3:
                z.k.s(227, -57, 7, 0, 0, 0, i2, 0, 0, 0);
                break;
            case 4:
                z.k.s(227, -57, 7, 0, 0, 0, 0, i2, 0, 0);
                break;
            case 5:
                z.k.s(227, -57, 7, 0, 0, 0, 0, 0, i2, 0);
                break;
            case 6:
                z.k.s(227, -57, 7, 0, 0, 0, 0, 0, 0, i2);
                break;
        }
        a.i.a0(50L);
        z.k.s(227, -57, 7, 0, 0, 0, 0, 0, 0, 0);
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
            if (nt.f8633a == 8781936) {
                int[] iArr = new int[bArr.length];
                int length = bArr.length - 1;
                for (int i5 = 0; i5 < length; i5++) {
                    iArr[i5] = bArr[i5] & 255;
                }
                o1.x.B(nt.f8643f, 1052, iArr);
            }
        }
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f3107x + bArr.length > 1024) {
            this.f3107x = 0;
            this.f3109y = 0;
            this.f3111z = 0;
        }
        System.arraycopy(bArr, 0, this.f3105w, this.f3107x, bArr.length);
        int length2 = this.f3107x + bArr.length;
        this.f3107x = length2;
        int i6 = this.f3111z;
        if (i6 != 0) {
            if (i6 >= length2) {
                return;
            }
            byte b2 = this.f3105w[2];
            int i7 = 3;
            while (true) {
                i4 = this.f3111z;
                if (i7 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f3105w[i7]);
                i7++;
            }
            byte b3 = (byte) ((b2 - 1) & 255);
            byte[] bArr2 = this.f3105w;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 2, bArr2[2]);
                this.f3109y = this.f3111z + 1;
            } else {
                this.f3109y = 2;
            }
            this.f3111z = 0;
        }
        int i8 = this.f3107x - 3;
        while (true) {
            i2 = this.f3109y;
            if (i2 >= i8) {
                break;
            }
            byte[] bArr3 = this.f3105w;
            if (bArr3[i2] == 90 && bArr3[i2 + 1] == -91) {
                if (this.f3111z > 512) {
                    this.f3111z = 0;
                } else {
                    int i9 = bArr3[i2 + 2] + i2 + 4;
                    this.f3111z = i9;
                    if (i9 >= this.f3107x) {
                        this.f3111z = i9 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 2];
                    int i10 = i2 + 3;
                    while (true) {
                        i3 = this.f3111z;
                        if (i10 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f3105w[i10]);
                        i10++;
                    }
                    byte b5 = (byte) ((b4 - 1) & 255);
                    byte[] bArr4 = this.f3105w;
                    if (b5 == bArr4[i3]) {
                        int i11 = this.f3109y;
                        U2(bArr4, i11 + 2, bArr4[i11 + 2]);
                        this.f3109y = this.f3111z;
                    } else {
                        this.f3109y++;
                    }
                    this.f3111z = 0;
                }
            }
            this.f3109y++;
        }
        if (i2 != 0) {
            int i12 = this.f3107x - i2;
            this.f3107x = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f3105w;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f3109y = 0;
        }
    }

    public final int b3(int i2) {
        if (i2 > 360) {
            i2 %= MediaProperties.HEIGHT_360;
        }
        if (i2 < 0) {
            i2 = 360 - Math.abs(i2 % MediaProperties.HEIGHT_360);
        }
        double d2 = i2;
        if ((d2 <= 22.5d && i2 >= 0) || (d2 >= 337.5d && i2 <= 360)) {
            return 5;
        }
        if (d2 > 22.5d && d2 < 67.5d) {
            return 6;
        }
        if (d2 >= 67.5d && d2 <= 112.5d) {
            return 7;
        }
        if (d2 > 112.5d && d2 < 157.5d) {
            return 8;
        }
        if (d2 >= 157.5d && d2 <= 202.5d) {
            return 1;
        }
        if (d2 > 202.5d && d2 < 247.5d) {
            return 2;
        }
        if (d2 < 247.5d || d2 > 292.5d) {
            return (d2 <= 292.5d || d2 >= 337.5d) ? 15 : 4;
        }
        return 3;
    }

    public final void c3(byte b2, byte b3, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[37];
        int i2 = 0;
        for (int i3 = 0; i3 < 37; i3++) {
            iArr[i3] = 0;
        }
        iArr[0] = 227;
        iArr[1] = 153;
        iArr[2] = 34;
        iArr[3] = b2;
        int length = str.length() <= 15 ? str.length() : 15;
        switch (b2) {
            case -127:
            case -126:
                iArr[4] = b3;
                int i4 = w0.d.f17798j;
                iArr[5] = i4 & 303;
                iArr[6] = (i4 >> 8) & 303;
                int length2 = str.length() <= 14 ? str.length() : 14;
                while (i2 < length2) {
                    int iCodePointAt = str.codePointAt(i2);
                    int i5 = i2 << 1;
                    iArr[i5 + 8] = (iCodePointAt >> 8) & 255;
                    iArr[i5 + 7] = iCodePointAt & 255;
                    i2++;
                }
                break;
            case -125:
            case -123:
                if (b3 == 1) {
                    iArr[4] = b3;
                    int i6 = u0.b.r3;
                    iArr[5] = i6 & 303;
                    iArr[6] = (i6 >> 8) & 303;
                    int i7 = u0.b.s3;
                    iArr[7] = i7 & 303;
                    iArr[8] = (i7 >> 8) & 303;
                } else if (b3 == 2 || b3 == 3 || b3 == 4) {
                    iArr[4] = b3;
                    while (i2 < length) {
                        int iCodePointAt2 = str.codePointAt(i2);
                        int i8 = i2 << 1;
                        iArr[i8 + 6] = (iCodePointAt2 >> 8) & 255;
                        iArr[i8 + 5] = iCodePointAt2 & 255;
                        i2++;
                    }
                }
                break;
        }
        z.k.s(iArr);
    }

    public final void d3() {
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
            c3((byte) -127, (byte) 1, (str6 + iArr[5]) + "Mhz");
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
        c3((byte) -126, (byte) 1, (str8 + iArr[4]) + "Khz");
    }

    public final void e3(int i2) {
        switch (nt.f8637c) {
            case 79:
            case 80:
            case 81:
                break;
            default:
                int i3 = this.f3070e0;
                if (i3 > 0 && i3 < Q0.length) {
                    if (i2 == 1) {
                        int length = this.Y.length();
                        if (length > 8) {
                            length = 8;
                        }
                        byte[] bArr = new byte[16];
                        for (int i4 = 0; i4 < length; i4++) {
                            int iCodePointAt = this.Y.codePointAt(i4);
                            int i5 = i4 << 1;
                            bArr[i5 + 1] = (byte) ((iCodePointAt >> 8) & 255);
                            bArr[i5] = (byte) (iCodePointAt & 255);
                        }
                        int[] iArr = Q0;
                        int i6 = this.f3070e0;
                        int i7 = iArr[i6];
                        if (i6 == 11) {
                            int i8 = this.f3074g0;
                            if (i8 == 1) {
                                i7 = 35;
                            } else if (i8 == 2) {
                                i7 = 33;
                            } else if (i8 == 3) {
                                i7 = 34;
                            } else if (i8 == 4) {
                                i7 = 38;
                            }
                        }
                        int i9 = this.f3062a0;
                        if (i9 > 1000) {
                            int i10 = i9 / 100;
                            z.k.s(227, 156, 22, i7, b3(this.f3064b0), (i10 >> 8) & 255, i10 & 255, 1, bArr[0], bArr[1], bArr[2], bArr[3], bArr[4], bArr[5], bArr[6], bArr[7], bArr[8], bArr[9], bArr[10], bArr[11], bArr[12], bArr[13], bArr[14], bArr[15], 0);
                        } else {
                            z.k.s(227, 156, 22, i7, b3(this.f3064b0), (i9 >> 8) & 255, i9 & 255, 0, bArr[0], bArr[1], bArr[2], bArr[3], bArr[4], bArr[5], bArr[6], bArr[7], bArr[8], bArr[9], bArr[10], bArr[11], bArr[12], bArr[13], bArr[14], bArr[15], 0);
                        }
                    } else {
                        z.k.s(227, 156, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                    }
                    break;
                }
                break;
        }
    }
}

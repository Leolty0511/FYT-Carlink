package module.canbus;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.media.MediaPlayer;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.opengl.GLES10;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;
import o1.s0;
import plugins.ZLink;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class k0 extends lt {

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static int f14391i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static int f14392j0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static int f14396n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static int f14397o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static int f14398p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static int f14399q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static int f14400r0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f14415g;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public y f14434z;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final int[] f14389g0 = new int[12];

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final int[] f14390h0 = new int[256];

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static int[] f14393k0 = {1, 1, 3, 7, 2, 8, 4, 6, 5, 1, 1, 33, 33, 1, 1, 1, 1, 33, 33, 6, 1};

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static int f14394l0 = 0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static int f14395m0 = 0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static final int[] f14401s0 = {0, 1, 2, 3, 5, 6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 38, 40};

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static final int[] f14402t0 = {0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 18};

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static final o1.f<x> f14403u0 = new o1.f<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f14405b = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public o1.g0 f14407c = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f14409d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f14411e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14413f = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14416h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f14417i = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 15}, new int[]{12, 9}, new int[]{19, 34}, new int[]{20, 35}, new int[]{22, 29}, new int[]{23, 5}, new int[]{24, 25}, new int[]{25, 15}, new int[]{129, 7}, new int[]{130, 8}, new int[]{134, 12}, new int[]{145, 25}, new int[]{146, 3}, new int[]{147, 4}, new int[]{148, 68}, new int[]{149, 67}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f14418j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f14419k = new k();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f14420l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f14421m = new p();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f14422n = new q();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f14423o = new r();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f14424p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f14425q = new s();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f14426r = new t();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f14427s = new u();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f14428t = 0.0f;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f14429u = 255;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f14430v = 255;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f14431w = new v();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f14432x = new w();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f14433y = new a();
    public String A = ProxyProperties.LOCAL_EXCL_LIST;
    public String B = ProxyProperties.LOCAL_EXCL_LIST;
    public int C = 0;
    public int D = 0;
    public int E = 0;
    public int F = 0;
    public int G = 0;
    public int H = 0;
    public int I = 0;
    public int J = 0;
    public int K = 255;
    public final Runnable L = new b();
    public byte M = 10;
    public Runnable N = new c();
    public Runnable O = new d();
    public Runnable P = new e();
    public Runnable Q = new f();
    public Runnable R = new g();
    public Runnable S = new h();
    public Runnable T = new i();
    public Runnable U = new j();
    public Runnable V = new l();
    public Runnable W = new m();
    public Runnable X = new n();
    public int Y = 0;
    public int Z = 0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f14404a0 = 0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f14406b0 = 0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f14408c0 = false;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f14410d0 = 100;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public Runnable f14412e0 = new o();

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f14414f0 = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k0.this.S3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k0.this.d3(0);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k0 k0Var = k0.this;
            k0Var.M = (byte) 10;
            if (u0.b.f17306a0 == 1) {
                l0.b0.b(k0Var.O);
            } else if (nt.f8637c != 5) {
                z.k.s(227, 192, 8, 0, 0, 0, 0, 0, 0, 0, 0);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k0 k0Var = k0.this;
            byte b2 = (byte) (k0Var.M - 1);
            k0Var.M = b2;
            if (b2 <= 0) {
                l0.b0.p0(k0Var.O);
                k0.this.M = (byte) 8;
                return;
            }
            int i2 = nt.f8637c;
            if (i2 != 5 && i2 != 46 && i2 != 47 && i2 != 60 && i2 != 61 && i2 != 64) {
                k0Var.O3(k0Var.f14407c.b(1, 0));
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            z.k.s(227, 144, 2, 48, 0);
            int i3 = nt.f8637c;
            if (i3 == 9 || i3 == 11 || i3 == 32) {
                z.k.s(227, 132, 2, 3, 6);
                z.k.s(227, 132, 2, 4, 6);
                z.k.s(227, 132, 2, 5, 6);
            } else if (i3 == 5) {
                if (u0.b.D == 13) {
                    z.k.s(227, -17, 1, 0);
                } else {
                    z.k.s(227, -17, 1, 1);
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 13) {
                z.k.s(227, -17, 1, 0);
            } else {
                z.k.s(227, -17, 1, 1);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k0.this.c3(u0.b.K3);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 12 || i2 == 14 || i2 == 31 || i2 == 32 || i2 == 60 || i2 == 64) {
                k0.this.L3((byte) 2, u0.b.i3);
            } else if (i2 == 41 || i2 == 49 || i2 == 50) {
                k0.this.K3((byte) 2, u0.b.i3);
            } else {
                k0.this.J3((byte) 2, u0.b.i3);
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 12 || i2 == 14 || i2 == 31 || i2 == 32 || i2 == 60 || i2 == 64) {
                k0.this.L3((byte) 3, u0.b.k3);
                return;
            }
            if (i2 == 41 || i2 == 49 || i2 == 50 || i2 == 51 || i2 == 52 || i2 == 53 || i2 == 62 || i2 == 63) {
                k0.this.K3((byte) 3, u0.b.k3);
            } else {
                k0.this.J3((byte) 3, u0.b.k3);
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 12 || i2 == 14 || i2 == 31 || i2 == 32 || i2 == 60 || i2 == 64) {
                k0.this.L3((byte) 4, u0.b.j3);
                return;
            }
            if (i2 == 41 || i2 == 49 || i2 == 50 || i2 == 51 || i2 == 52 || i2 == 53 || i2 == 62 || i2 == 63) {
                k0.this.K3((byte) 4, u0.b.j3);
            } else {
                k0.this.J3((byte) 4, u0.b.j3);
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 12 || i2 == 14 || i2 == 31 || i2 == 32 || i2 == 60 || i2 == 64) {
                k0.this.L3((byte) 5, u0.b.l3);
                return;
            }
            if (i2 == 41 || i2 == 49 || i2 == 50 || i2 == 51 || i2 == 52 || i2 == 53 || i2 == 62 || i2 == 63) {
                k0.this.K3((byte) 5, u0.b.l3);
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (k0.this.f14408c0) {
                qt.a(0);
            } else if (o1.u.T(a.b.O)) {
                qt.f();
            }
            l0.b0.o0(k0.this.f14421m);
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k0.this.T3(h0.c.f2437h);
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17347o;
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            byte b2 = (byte) time.hour;
            byte b3 = (byte) time.minute;
            byte b4 = (byte) time.second;
            if (i2 != 0 && b2 > 12) {
                b2 = (byte) (b2 - 12);
            }
            z.k.s(227, -58, 4, 80, (byte) (((i2 << 7) | b2) & 255), b3, b4);
        }
    }

    public class o implements Runnable {
        public o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (k0.this.f14410d0 > 100) {
                    k0.o3(k0.this);
                    if (k0.this.f14414f0 == k0.this.f14410d0 / 100) {
                        k0.this.f14414f0 = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = k0.f14396n0 = k0.f14401s0[0];
                } else {
                    int unused2 = k0.f14396n0 = k0.f14401s0[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (k0.this.f7886a.f8308c == 1) {
                    if (k0.f14397o0 != k0.f14399q0) {
                        k0.this.Q3();
                    }
                    if (k0.f14398p0 != k0.f14400r0) {
                        k0.this.N3();
                    }
                }
            }
        }
    }

    public class p implements Runnable {
        public p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k0.this.f14420l--;
        }
    }

    public class q implements Runnable {
        public q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 != 5 && i2 != 33) {
                l0.c0.e();
            }
            int i3 = nt.f8637c;
            if (i3 == 16) {
                z.k.s(227, -30, 1, 1);
            }
            if (i3 == 17) {
                z.k.s(227, -30, 1, 2);
                return;
            }
            if (i3 == 34) {
                z.k.s(227, -30, 1, 133);
                return;
            }
            if (i3 == 41) {
                z.k.s(227, -30, 1, 132);
                return;
            }
            if (i3 == 37) {
                z.k.s(227, -30, 1, 129);
                return;
            }
            if (i3 == 38) {
                z.k.s(227, -30, 1, 128);
                return;
            }
            switch (i3) {
                case 49:
                case 50:
                    z.k.s(227, -30, 1, 135);
                    break;
                case 51:
                    z.k.s(227, -30, 1, 134);
                    break;
                case 52:
                    z.k.s(227, -30, 1, 137);
                    break;
                case 53:
                    z.k.s(227, -30, 1, 136);
                    break;
            }
        }
    }

    public class r implements Runnable {
        public r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.f8637c == 33) {
                return;
            }
            int i2 = 0;
            int i3 = y0.f.C0;
            int[] iArr = {196, 1, i3};
            if (i3 > 36) {
                iArr[2] = 36;
            }
            int i4 = nt.f8637c;
            if ((i4 == 3 || i4 == 4 || i4 == 43 || i4 == 43) && (y0.f.f18055i == 1 || y0.f.C0 == 0)) {
                iArr[2] = iArr[2] | 128;
            }
            int[] iArr2 = new int[4];
            iArr2[0] = 227;
            while (i2 < 3) {
                int i5 = i2 + 1;
                iArr2[i5] = iArr[i2];
                i2 = i5;
            }
            z.k.s(iArr2);
        }
    }

    public class s implements Runnable {
        public s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 2) {
                int i2 = h0.c.E;
                if (i2 == 3) {
                    z.k.s(227, 195, 6, 2, 0, 0, 0, 0, 0);
                    return;
                }
                if (i2 == 4) {
                    z.k.s(227, 195, 6, 1, 0, 0, 0, 0, 0);
                } else if (i2 != 5) {
                    z.k.s(227, 195, 6, 4, 0, 0, 0, 0, 0);
                } else {
                    z.k.s(227, 195, 6, 3, 0, 0, 0, 0, 0);
                }
            }
        }
    }

    public class t implements Runnable {
        public t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k0.this.K3((byte) 6, h0.c.f2441j);
        }
    }

    public class u implements Runnable {
        public u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.P / 1000;
            int i3 = i2 / BatchedScanSettings.MAX_INTERVAL_SEC;
            int i4 = (i2 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            int i5 = i2 % 60;
            z.k.s(227, 203, 33, 7, ((i3 % 16) & 15) | (((i3 / 16) << 4) & 240), (((i4 / 16) << 4) & 240) | (i4 & 15), (i5 & 15) | (((i5 / 16) << 4) & 240), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        }
    }

    public class v implements Runnable {
        public v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k0 k0Var = k0.this;
            if (k0Var.I == 0) {
                k0Var.f14428t = u0.b.f17359s0;
                if ((k0.this.f14428t <= 11.25d && k0.this.f14428t >= 0.0f) || (k0.this.f14428t >= 348.75d && k0.this.f14428t <= 360.0f)) {
                    k0.this.f14430v = 0;
                } else if (k0.this.f14428t > 11.25d && k0.this.f14428t < 33.75d) {
                    k0.this.f14430v = 1;
                } else if (k0.this.f14428t >= 33.75d && k0.this.f14428t <= 56.25d) {
                    k0.this.f14430v = 2;
                } else if (k0.this.f14428t > 56.25d && k0.this.f14428t < 78.75d) {
                    k0.this.f14430v = 3;
                } else if (k0.this.f14428t >= 78.75d && k0.this.f14428t <= 101.25d) {
                    k0.this.f14430v = 4;
                } else if (k0.this.f14428t > 101.25d && k0.this.f14428t < 123.75d) {
                    k0.this.f14430v = 5;
                } else if (k0.this.f14428t >= 123.75d && k0.this.f14428t <= 146.25d) {
                    k0.this.f14430v = 6;
                } else if (k0.this.f14428t > 146.25d && k0.this.f14428t < 168.75d) {
                    k0.this.f14430v = 7;
                } else if (k0.this.f14428t > 168.75d && k0.this.f14428t < 191.25d) {
                    k0.this.f14430v = 8;
                } else if (k0.this.f14428t > 191.25d && k0.this.f14428t < 213.75d) {
                    k0.this.f14430v = 9;
                } else if (k0.this.f14428t > 213.75d && k0.this.f14428t < 236.25d) {
                    k0.this.f14430v = 10;
                } else if (k0.this.f14428t > 236.25d && k0.this.f14428t < 258.75d) {
                    k0.this.f14430v = 11;
                } else if (k0.this.f14428t > 258.75d && k0.this.f14428t < 281.25d) {
                    k0.this.f14430v = 12;
                } else if (k0.this.f14428t > 281.25d && k0.this.f14428t < 303.75d) {
                    k0.this.f14430v = 13;
                } else if (k0.this.f14428t > 303.75d && k0.this.f14428t < 326.25d) {
                    k0.this.f14430v = 14;
                } else if (k0.this.f14428t <= 326.25d || k0.this.f14428t >= 348.75d) {
                    k0.this.f14430v = 0;
                } else {
                    k0.this.f14430v = 15;
                }
                if (k0.this.f14430v != k0.this.f14429u) {
                    z.k.s(227, 198, 2, 90, k0.this.f14430v);
                    k0 k0Var2 = k0.this;
                    k0Var2.f14429u = k0Var2.f14430v;
                }
            }
        }
    }

    public class w implements Runnable {
        public w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public static class x implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14458a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14459b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14460c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14461d;

        public x(int i2, int i3) {
            this.f14458a = i2;
            this.f14461d = i3;
        }

        public synchronized void a(int i2) {
            this.f14459b = i2;
            if (!this.f14460c) {
                this.f14460c = true;
                o1.k.a().postDelayed(this, this.f14461d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 132, 2, this.f14458a, this.f14459b);
            this.f14460c = false;
        }
    }

    public class y extends BroadcastReceiver {
        public y() {
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0042 A[Catch: Exception -> 0x00ed, TryCatch #0 {Exception -> 0x00ed, blocks: (B:5:0x0020, B:7:0x002a, B:11:0x0037, B:13:0x003b, B:14:0x0042, B:16:0x0049, B:18:0x0051, B:20:0x005b, B:21:0x0063, B:23:0x006d, B:24:0x008a, B:26:0x0094, B:27:0x009d, B:29:0x00a7, B:30:0x00b0, B:32:0x00ba, B:34:0x00c0, B:36:0x00cb), top: B:41:0x0020 }] */
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
                                k0 k0Var = k0.this;
                                k0Var.J = 1;
                                k0Var.I = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                k0 k0Var2 = k0.this;
                                k0Var2.J = 0;
                                k0Var2.I = 0;
                                z2 = true;
                                break;
                        }
                    } else {
                        k0 k0Var3 = k0.this;
                        k0Var3.J = 0;
                        k0Var3.I = 0;
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (k0.this.D != extras.getInt("SEG_REMAIN_DIS")) {
                        k0.this.D = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (k0.this.C != extras.getInt("ROUTE_REMAIN_DIS")) {
                        k0.this.C = extras.getInt("ROUTE_REMAIN_DIS");
                        k0.this.G = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (k0.this.E != extras.getInt("CAR_DIRECTION")) {
                        k0.this.E = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (k0.this.F != extras.getInt("ROUTE_ALL_TIME")) {
                        k0.this.F = extras.getInt("ROUTE_ALL_TIME");
                        z2 = true;
                    }
                    if (k0.this.H != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        k0.this.H = extras.getInt("ICON");
                        z2 = true;
                    }
                }
                if (z2) {
                    k0.this.d3(1);
                    o1.j.e(o1.l.a(), k0.this.L);
                    o1.j.b(o1.l.a(), k0.this.L, 10000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ y(k0 k0Var, k kVar) {
            this();
        }
    }

    public static void I3(int i2, int i3) {
        x xVarC = f14403u0.c(i2);
        if (xVarC != null) {
            xVarC.a(i3);
        }
    }

    public static /* synthetic */ int o3(k0 k0Var) {
        int i2 = k0Var.f14414f0;
        k0Var.f14414f0 = i2 + 1;
        return i2;
    }

    public final void J3(byte b2, String str) {
        if (str == null) {
            str = "Unkown";
        }
        int[] iArr = new int[36];
        iArr[0] = 227;
        iArr[1] = 203;
        iArr[2] = 33;
        iArr[3] = b2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 5] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void K3(byte b2, String str) {
        if (str == null) {
            str = "Unkown";
        }
        try {
            byte[] bytes = str.getBytes("GB2312");
            int length = 31;
            if (bytes.length <= 31) {
                length = bytes.length;
            }
            int[] iArr = new int[36];
            iArr[0] = 227;
            iArr[1] = 203;
            iArr[2] = 33;
            iArr[3] = b2;
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2 + 4] = bytes[i2];
            }
            z.k.s(iArr);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void L3(byte b2, String str) {
        if (str == null) {
            str = "Unkown";
        }
        byte[] bytes = str.getBytes();
        int length = bytes.length <= 31 ? bytes.length : 31;
        int[] iArr = new int[36];
        for (int i2 = 0; i2 < 36; i2++) {
            iArr[i2] = 255;
        }
        iArr[0] = 227;
        iArr[1] = 203;
        iArr[2] = 33;
        iArr[3] = b2;
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3 + 4] = bytes[i3];
        }
        z.k.s(iArr);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public final void M3() {
        Z2(y0.f.f18037c);
        P2(null);
        R2(null);
    }

    @Override // k0.lt
    public void N2() {
    }

    public final synchronized void N3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        I3(1, f14400r0);
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        int i3 = nt.f8637c;
        if (i3 == 46 || i3 == 47 || i3 == 60 || i3 == 61 || i3 == 64) {
            if (i2 == 33) {
                if (iArr[1] != 0) {
                    z.k.s(227, -17, 3, 125, 64, 1);
                    return;
                }
                z.k.s(227, -17, 3, 125, 64, 0);
            }
            if (i2 == 34) {
                if (iArr[1] != 0) {
                    z.k.s(227, -17, 3, 125, 65, 1);
                    return;
                } else {
                    z.k.s(227, -17, 3, 125, 65, 0);
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
            if (i2 == 55) {
                z.k.s(227, -17, 4, 125, 69, 0, iArr[1]);
                return;
            }
            if (i2 == 56) {
                z.k.s(227, -17, 4, 125, 69, 1, iArr[1]);
                return;
            }
            if (i2 != 68) {
                switch (i2) {
                    case 36:
                        if (iArr[1] == 0) {
                            z.k.s(227, -17, 3, 125, 71, 0);
                        } else {
                            z.k.s(227, -17, 3, 125, 71, 1);
                        }
                        break;
                    case 37:
                        if (iArr[1] == 0) {
                            z.k.s(227, -17, 3, 125, 72, 0);
                        } else {
                            z.k.s(227, -17, 3, 125, 72, 1);
                        }
                        break;
                    case 38:
                        if (iArr[1] == 1) {
                            z.k.s(227, -17, 3, 125, 66, 0);
                        } else if (iArr[1] == 0) {
                            z.k.s(227, -17, 3, 125, 66, 1);
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
                return;
            } else if (iArr[1] == 11) {
                z.k.s(227, -17, 4, 125, 2, 16, 1);
                return;
            } else {
                if (iArr[1] == 12) {
                    z.k.s(227, -17, 4, 125, 2, 16, 11);
                    return;
                }
                return;
            }
        }
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
        if (i2 == 67) {
            int i4 = iArr[1];
            if (i4 == 3) {
                z.k.s(227, 135, 2, 80, 1);
                return;
            } else {
                if (i4 != 10) {
                    return;
                }
                z.k.s(227, 135, 2, 80, 0);
                return;
            }
        }
        if (i2 == 68) {
            if (iArr[1] == 1) {
                z.k.s(227, -121, 2, 2, 0);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, -121, 2, 2, 1);
                return;
            }
            if (iArr[1] == 3) {
                z.k.s(227, -121, 2, 3, 0);
                return;
            }
            if (iArr[1] == 4) {
                z.k.s(227, -121, 2, 3, 1);
                return;
            }
            if (iArr[1] == 5) {
                z.k.s(227, -121, 2, 4, 0);
                return;
            }
            if (iArr[1] == 6) {
                z.k.s(227, -121, 2, 4, 1);
                return;
            }
            if (iArr[1] == 7) {
                z.k.s(227, -121, 2, 5, 0);
                return;
            }
            if (iArr[1] == 8) {
                z.k.s(227, -121, 2, 5, 1);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, -121, 2, 6, 0);
                return;
            }
            if (iArr[1] == 10) {
                z.k.s(227, -121, 2, 6, 1);
                return;
            } else if (iArr[1] == 11) {
                z.k.s(227, -121, 2, 1, 0);
                return;
            } else {
                if (iArr[1] == 12) {
                    z.k.s(227, -121, 2, 1, 1);
                    return;
                }
                return;
            }
        }
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
                if (iArr[1] != -1) {
                    z.k.s(227, -121, 2, 9, 0);
                } else {
                    z.k.s(227, -121, 2, 9, 1);
                }
                break;
        }
    }

    public final void O3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 3) {
            i2 = 3;
        }
        f14394l0 = i2;
        if (i2 == 0) {
            z.k.s(227, -58, 2, 64, 1);
        } else if (i2 == 1) {
            z.k.s(227, -58, 2, 64, 0);
        } else if (i2 == 2) {
            z.k.s(227, -58, 2, 64, 2);
        } else if (i2 == 3) {
            z.k.s(227, -58, 2, 64, 3);
        }
        int i3 = nt.f8637c;
        if (i3 == 46 || i3 == 47 || i3 == 60 || i3 == 61 || i3 == 64) {
            return;
        }
        qt.y0(Process.MEDIA_UID, f14394l0);
        int iB = this.f14407c.b(1, 0);
        int i4 = f14394l0;
        if (iB != i4) {
            this.f14407c.g(1, i4);
        }
    }

    public final void P3(int i2, int i3) {
        f14394l0 = i2;
        z.k.s(227, -57, 2, i2, i3);
        int iB = this.f14407c.b(1, 0);
        int i4 = f14394l0;
        if (iB != i4) {
            this.f14407c.g(1, i4);
        }
    }

    public final synchronized void Q3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        I3(2, f14399q0);
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = f14402t0;
            f14399q0 = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            f14400r0 = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    public final void R3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f14395m0 = i2;
        qt.y0(176, i2);
        int iB = this.f14407c.b(2, 0);
        int i3 = f14395m0;
        if (iB != i3) {
            this.f14407c.g(2, i3);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:36:0x0132  */
    /* JADX WARN: Code duplicated, block: B:38:0x0153  */
    /* JADX WARN: Code duplicated, block: B:39:0x017d  */
    /* JADX WARN: Code duplicated, block: B:40:0x018c  */
    /* JADX WARN: Code duplicated, block: B:61:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:78:0x0235  */
    /* JADX WARN: Code duplicated, block: B:79:0x0252  */
    /* JADX WARN: Code duplicated, block: B:80:0x025a A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:8:0x0053  */
    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        if (nt.a()) {
            l0.b0.b(this.f14422n);
            y0.g.f18094d.a(this.f14423o, 1);
            y0.g.f18095e.a(this.f14423o, 1);
            w0.e.f17815a.a(this.f14422n, 1);
            u0.c.f17374a.a(this.f14422n, 1);
            u0.c.f17392s.a(this.f14422n, 1);
            u0.c.f17393t.a(this.f14422n, 1);
            int i2 = nt.f8637c;
            if (i2 != 40) {
                switch (i2) {
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                        b3();
                        break;
                }
            } else {
                b3();
            }
        }
        int i3 = nt.f8637c;
        if (i3 == 16 || i3 == 17) {
            this.f7886a.f8322q = 1;
        }
        if (i3 == 23 || i3 == 24) {
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = new String[]{"com.syu.canbus"};
            mtVar2.f8310e = 1;
            mtVar2.f8311f = 1;
            mtVar2.f8312g = 1;
        } else if (i3 == 40) {
            mt mtVar3 = this.f7886a;
            mtVar3.f8306a = new String[]{"com.syu.canbus"};
            mtVar3.f8310e = 1;
            mtVar3.f8311f = 1;
            mtVar3.f8312g = 0;
        } else if (i3 != 45) {
            switch (i3) {
                case 5:
                    mt mtVar4 = this.f7886a;
                    mtVar4.f8306a = new String[]{"com.syu.canbus"};
                    mtVar4.f8310e = 1;
                    mtVar4.f8311f = 0;
                    mtVar4.f8312g = 0;
                    u0.c.f17374a.a(this.P, 1);
                    break;
                case 6:
                case 7:
                case 10:
                    mt mtVar5 = this.f7886a;
                    mtVar5.f8306a = new String[]{"com.syu.canbus"};
                    mtVar5.f8310e = 1;
                    break;
                case 8:
                    mt mtVar6 = this.f7886a;
                    mtVar6.f8306a = new String[]{"com.syu.canbus"};
                    mtVar6.f8310e = 1;
                    mtVar6.f8311f = 1;
                    mtVar6.f8312g = 0;
                    break;
                case 9:
                    mt mtVar7 = this.f7886a;
                    mtVar7.f8306a = new String[]{"com.syu.canbus"};
                    mtVar7.f8310e = 1;
                    mtVar7.f8311f = 1;
                    mtVar7.f8312g = 0;
                    mtVar7.f8307b = 1;
                    mtVar7.f8308c = 1;
                    mtVar7.f8309d = 1;
                    if (nt.a()) {
                        init();
                        l0.b0.a(this.f14412e0);
                        M3();
                        y0.g.f18094d.a(this.f14433y, 1);
                    }
                    break;
                case 11:
                    mt mtVar8 = this.f7886a;
                    mtVar8.f8306a = new String[]{"com.syu.canbus"};
                    mtVar8.f8310e = 1;
                    mtVar8.f8311f = 1;
                    mtVar8.f8312g = 0;
                    mtVar8.f8307b = 0;
                    mtVar8.f8308c = 0;
                    mtVar8.f8309d = 0;
                    break;
                case 12:
                    mt mtVar9 = this.f7886a;
                    mtVar9.f8306a = new String[]{"com.syu.canbus"};
                    mtVar9.f8310e = 1;
                    mtVar9.f8311f = 1;
                    mtVar9.f8316k = 1;
                    mtVar9.f8314i = 1;
                    break;
                case 13:
                    mt mtVar10 = this.f7886a;
                    mtVar10.f8306a = new String[]{"com.syu.canbus"};
                    mtVar10.f8310e = 1;
                    mtVar10.f8311f = 1;
                    mtVar10.f8316k = 1;
                    break;
                default:
                    switch (i3) {
                        case 15:
                            mt mtVar11 = this.f7886a;
                            mtVar11.f8306a = new String[]{"com.syu.canbus"};
                            mtVar11.f8310e = 1;
                            mtVar11.f8311f = 1;
                            mtVar11.f8312g = 1;
                            break;
                        case 16:
                        case 17:
                            mt mtVar12 = this.f7886a;
                            mtVar12.f8306a = new String[]{"com.syu.canbus"};
                            mtVar12.f8310e = 1;
                            break;
                        default:
                            switch (i3) {
                                case 30:
                                    mt mtVar13 = this.f7886a;
                                    mtVar13.f8306a = new String[]{"com.syu.canbus"};
                                    mtVar13.f8310e = 1;
                                    mtVar13.f8311f = 1;
                                    mtVar13.f8312g = 1;
                                    this.f14434z = new y(this, null);
                                    IntentFilter intentFilter = new IntentFilter();
                                    intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                                    App.c().registerReceiver(this.f14434z, intentFilter);
                                    break;
                                case 31:
                                    mt mtVar14 = this.f7886a;
                                    mtVar14.f8306a = new String[]{"com.syu.canbus"};
                                    mtVar14.f8310e = 1;
                                    mtVar14.f8311f = 1;
                                    mtVar14.f8312g = 0;
                                    break;
                                case 32:
                                    mt mtVar15 = this.f7886a;
                                    mtVar15.f8306a = new String[]{"com.syu.canbus"};
                                    mtVar15.f8310e = 1;
                                    mtVar15.f8311f = 1;
                                    mtVar15.f8312g = 0;
                                    mtVar15.f8307b = 0;
                                    mtVar15.f8308c = 0;
                                    mtVar15.f8309d = 1;
                                    if (nt.a()) {
                                        init();
                                        l0.b0.a(this.f14412e0);
                                        M3();
                                        y0.g.f18094d.a(this.f14433y, 1);
                                    }
                                    break;
                                case 33:
                                    mt mtVar16 = this.f7886a;
                                    mtVar16.f8306a = new String[]{"com.syu.canbus"};
                                    mtVar16.f8310e = 1;
                                    mtVar16.f8311f = 1;
                                    mtVar16.f8312g = 1;
                                    break;
                                default:
                                    switch (i3) {
                                        case 48:
                                        case 49:
                                        case 50:
                                        case 51:
                                        case 52:
                                        case 53:
                                            mt mtVar17 = this.f7886a;
                                            mtVar17.f8306a = new String[]{"com.syu.canbus"};
                                            mtVar17.f8310e = 1;
                                            mtVar17.f8311f = 1;
                                            mtVar17.f8312g = 1;
                                            this.f14434z = new y(this, null);
                                            IntentFilter intentFilter2 = new IntentFilter();
                                            intentFilter2.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                                            App.c().registerReceiver(this.f14434z, intentFilter2);
                                            break;
                                        default:
                                            mt mtVar18 = this.f7886a;
                                            mtVar18.f8306a = new String[]{"com.syu.canbus"};
                                            mtVar18.f8310e = 1;
                                            mtVar18.f8311f = 1;
                                            mtVar18.f8312g = 0;
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            mt mtVar19 = this.f7886a;
            mtVar19.f8306a = new String[]{"com.syu.canbus"};
            mtVar19.f8310e = 1;
            mtVar19.f8311f = 1;
            mtVar19.f8312g = 1;
            this.f14434z = new y(this, null);
            IntentFilter intentFilter3 = new IntentFilter();
            intentFilter3.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
            App.c().registerReceiver(this.f14434z, intentFilter3);
        }
        int i4 = nt.f8637c;
        if (i4 != 3 && i4 != 4 && i4 != 20 && i4 != 28 && i4 != 29 && i4 != 37 && i4 != 38 && i4 != 43 && i4 != 44) {
            switch (i4) {
                case 12:
                case 13:
                case 14:
                    this.f7886a.f8314i = 1;
                    break;
                default:
                    this.f7886a.f8314i = 0;
                    break;
            }
        } else {
            this.f7886a.f8314i = 1;
        }
        if (i4 == 24 || i4 == 33) {
            this.f7886a.f8315j = 1;
        } else {
            this.f7886a.f8315j = 0;
        }
        if (i4 != 5) {
            this.f14407c.a();
            qt.z(this.X);
            R3(this.f14407c.b(2, 0));
            u0.c.f17388o.a(this.R, 1);
            u0.c.f17389p.a(this.T, 1);
            u0.c.f17390q.a(this.S, 1);
            u0.c.f17396w.a(this.U, 1);
            u0.c.f17379f.a(this.W, 1);
            h0.d.f2464c.a(this.V, 1);
            u0.c.f17397x.a(this.Q, 1);
        }
        int i5 = nt.f8637c;
        if (i5 == 11) {
            qt.y(this.f14432x);
        } else if (i5 != 27) {
            switch (i5) {
                default:
                    switch (i5) {
                        case 40:
                            break;
                        case 41:
                            o1.h.f16865a.a(this.f14431w, 1);
                            h0.d.f2462a.a(this.f14425q, 1);
                            h0.d.f2473l.a(this.f14426r, 1);
                            h0.d.f2465d.a(this.f14427s, 1);
                            break;
                        case 42:
                            o1.h.f16865a.a(this.f14431w, 1);
                            break;
                        default:
                            switch (i5) {
                                case 49:
                                case 50:
                                case 51:
                                case 52:
                                case 53:
                                    o1.h.f16865a.a(this.f14431w, 1);
                                    h0.d.f2462a.a(this.f14425q, 1);
                                    h0.d.f2473l.a(this.f14426r, 1);
                                    h0.d.f2465d.a(this.f14427s, 1);
                                    break;
                            }
                            break;
                    }
                case 6:
                case 7:
                case 8:
                case 9:
                    qt.y(this.f14432x);
                    break;
            }
        } else {
            o1.h.f16865a.a(this.f14431w, 1);
        }
        u0.c.f17386m.a(this.N, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56};
    }

    public final synchronized void S3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        I3(9, f14396n0);
    }

    public final void T3(String str) {
        if (str == null) {
            return;
        }
        int length = str.length() <= 31 ? str.length() : 31;
        int[] iArr = new int[36];
        iArr[0] = -29;
        iArr[1] = -53;
        iArr[2] = 33;
        iArr[3] = 1;
        int i2 = length + 4;
        for (int i3 = 4; i3 < i2; i3++) {
            iArr[i3] = (byte) (str.charAt(i3 - 4) & 255);
        }
        iArr[i2] = 15;
        z.k.s(iArr);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 22) {
            qt.y0(1031, (bArr[i2 + 2] & 255) | (65280 & (bArr[i2 + 3] << 8)));
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, GLES10.GL_AMBIENT);
            return;
        }
        if (b2 == 64) {
            int i4 = i2 + 2;
            byte b3 = bArr[i4];
            int i5 = (b3 & 4) == 0 ? 0 : 1;
            f14391i0 = i5;
            int i6 = (b3 >> 3) & 1;
            if (f14392j0 != i6) {
                f14392j0 = i6;
                if (i5 == 0 || i6 != 1) {
                    qt.a(0);
                } else {
                    qt.a(1);
                }
            }
            if ((bArr[i4] & 1) == 1) {
                byte b4 = bArr[i4];
                return;
            }
            return;
        }
        if (b2 == 112) {
            if (f14395m0 == 1) {
                int i7 = i2 + 3;
                if (this.Y != ((bArr[i7] >> 7) & 1)) {
                    int i8 = (bArr[i7] >> 7) & 1;
                    this.Y = i8;
                    if (i8 == 1) {
                        if (!o1.u.T(a.b.O)) {
                            qt.t();
                        }
                        this.f14420l = 20;
                        l0.b0.a(this.f14421m);
                    } else if (this.f14420l > 0) {
                        o1.j.e(o1.l.a(), this.f14419k);
                        o1.j.b(o1.l.a(), this.f14419k, 2000L);
                    } else {
                        if (o1.u.T(a.b.O)) {
                            qt.f();
                        }
                        l0.b0.o0(this.f14421m);
                    }
                }
            }
            int i9 = (bArr[i2 + 3] >> 6) & 1;
            if (u0.b.f17347o == 0 && i9 == 1) {
                if (o1.u.T(a.b.O)) {
                    qt.f();
                    return;
                } else {
                    if (o1.u.T(a.b.O)) {
                        return;
                    }
                    qt.t();
                    return;
                }
            }
            return;
        }
        if (b2 == 113) {
            qt.y0(1032, (bArr[i2 + 2] & 255) | (65280 & (bArr[i2 + 3] << 8)));
            return;
        }
        int i10 = 11;
        switch (b2) {
            case 32:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f14416h = b5 & 255;
                int i11 = 0;
                while (true) {
                    iArr = this.f14417i;
                    if (i11 < iArr.length) {
                        int i12 = this.f14416h;
                        if (i12 != iArr[i11][0]) {
                            i11++;
                        } else if (i12 != 0) {
                            this.f14415g = i11;
                        }
                    }
                }
                int i13 = this.f14416h;
                if (i13 != 10) {
                    if (i13 != 150) {
                        int i14 = b6 & 255;
                        if (i14 != 1) {
                            if (i14 == 0) {
                                int i15 = this.f14415g;
                                if (i15 < iArr.length && i15 != 255) {
                                    l0.b0.l0(iArr[i15][1], 1);
                                }
                                this.f14415g = 255;
                            }
                        } else if (i11 < iArr.length) {
                            l0.b0.l0(iArr[i11][1], 0);
                        }
                        break;
                    } else {
                        int i16 = b6 & 255;
                        if (i16 != 17) {
                            if (i16 != 65) {
                                if (i16 == 69 || i16 == 77) {
                                    o1.u.i();
                                    break;
                                } else if (i16 == 34) {
                                    o1.u.i();
                                    break;
                                } else if (i16 == 35) {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                    break;
                                }
                            } else {
                                o1.u.x0();
                                l0.b0.l0(74, 0);
                                l0.b0.l0(74, 1);
                                break;
                            }
                        } else {
                            o1.u.x0();
                            l0.b0.l0(75, 0);
                            l0.b0.l0(75, 1);
                            break;
                        }
                    }
                } else {
                    if ((b6 & 255) == 1) {
                        if (!ZLink.Y().d0() && s0.m("sys.carlink.type", 0) <= 0) {
                            int i17 = h0.c.E;
                            if (i17 == 3 || i17 == 4 || i17 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                            }
                        } else {
                            c.e.d().c(6);
                        }
                    }
                    break;
                }
                break;
            case 33:
                byte b7 = bArr[i2 + 2];
                qt.y0(10, (b7 >> 7) & 1);
                qt.y0(11, (b7 >> 6) & 1);
                qt.y0(12, (b7 >> 5) & 1);
                qt.y0(62, (b7 >> 4) & 1);
                qt.y0(13, (b7 >> 3) & 1);
                qt.y0(14, (b7 >> 2) & 1);
                int i18 = (b7 >> 1) & 1;
                qt.y0(16, i18);
                qt.y0(42, i18);
                byte b8 = bArr[i2 + 3];
                qt.y0(18, (b8 >> 7) & 1);
                qt.y0(19, (b8 >> 6) & 1);
                qt.y0(20, (b8 >> 5) & 1);
                qt.y0(21, b8 & DhcpPacket.DHCP_DOMAIN_NAME);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    byte b9 = bArr[i2 + 5];
                    if (b9 == -1) {
                        qt.y0(27, -3);
                    } else if (b9 != 0) {
                        qt.y0(27, b9 & 255);
                    } else {
                        qt.y0(27, -2);
                    }
                    byte b10 = bArr[i2 + 4];
                    if (b10 == -1) {
                        qt.y0(28, -3);
                    } else if (b10 != 0) {
                        qt.y0(28, b10 & 255);
                    } else {
                        qt.y0(28, -2);
                    }
                } else {
                    byte b11 = bArr[i2 + 4];
                    if (b11 == -1) {
                        qt.y0(27, -3);
                    } else if (b11 != 0) {
                        qt.y0(27, b11 & 255);
                    } else {
                        qt.y0(27, -2);
                    }
                    byte b12 = bArr[i2 + 5];
                    if (b12 == -1) {
                        qt.y0(28, -3);
                    } else if (b12 != 0) {
                        qt.y0(28, b12 & 255);
                    } else {
                        qt.y0(28, -2);
                    }
                }
                byte b13 = bArr[i2 + 6];
                qt.y0(65, (b13 >> 7) & 1);
                qt.y0(37, (b13 >> 0) & 1);
                qt.y0(67, (b13 >> 2) & 1);
                byte b14 = bArr[i2 + 7];
                qt.y0(22, (b14 >> 2) & 1);
                qt.y0(23, (b14 >> 1) & 1);
                qt.y0(24, b14 & 1);
                byte b15 = bArr[i2 + 11];
                qt.y0(31, (b15 >> 6) & 3);
                qt.y0(29, (b15 >> 4) & 3);
                qt.y0(32, (b15 >> 2) & 3);
                qt.y0(30, b15 & 3);
                break;
            case 34:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i19 = i2 + 2;
                int i20 = bArr[i19] & 255;
                int i21 = i2 + 3;
                int i22 = bArr[i21] & 255;
                int i23 = i2 + 4;
                int i24 = bArr[i23] & 255;
                int i25 = i2 + 5;
                int i26 = bArr[i25] & 255;
                if (i20 == 0 && i22 == 0 && i24 == 0 && i26 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i20 || l0.c0.f13014h != i22 || l0.c0.f13015i != i24 || l0.c0.f13016j != i26) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i20;
                l0.c0.f13014h = i22;
                l0.c0.f13015i = i24;
                l0.c0.f13016j = i26;
                u0.d.D2(l0.c0.E0(bArr[i19] & 255));
                u0.d.E2(l0.c0.E0(bArr[i21] & 255));
                u0.d.F2(l0.c0.E0(bArr[i23] & 255));
                u0.d.G2(l0.c0.E0(bArr[i25] & 255));
                break;
            case 36:
                byte b16 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b16 >> 7) & 1);
                    qt.y0(2, (b16 >> 6) & 1);
                } else {
                    qt.y0(1, (b16 >> 6) & 1);
                    qt.y0(2, (b16 >> 7) & 1);
                }
                qt.y0(3, (b16 >> 4) & 1);
                qt.y0(4, (b16 >> 5) & 1);
                qt.y0(5, (b16 >> 3) & 1);
                qt.y0(0, (b16 >> 2) & 1);
                break;
            default:
                switch (b2) {
                    case 48:
                        qt.L(new String(bArr, i2 + 2, i3 - 2));
                        break;
                    case 49:
                        qt.y0(167, bArr[i2 + 2] & 255);
                        qt.y0(168, bArr[i2 + 3] & 255);
                        qt.y0(169, bArr[i2 + 4] & 255);
                        qt.y0(170, bArr[i2 + 5] & 255);
                        qt.y0(171, bArr[i2 + 6] & 255);
                        qt.y0(172, bArr[i2 + 7] & 255);
                        qt.y0(173, bArr[i2 + 8] & 255);
                        qt.y0(174, bArr[i2 + 9] & 255);
                        qt.y0(175, bArr[i2 + 10] & 255);
                        break;
                    case 50:
                        int i27 = i2 + 2;
                        qt.y0(98, (bArr[i27] >> 6) & 3);
                        qt.y0(99, (bArr[i27] >> 4) & 3);
                        qt.y0(100, (bArr[i27] >> 0) & 15);
                        int i28 = i2 + 3;
                        qt.y0(101, (bArr[i28] >> 7) & 1);
                        qt.y0(102, (bArr[i28] >> 4) & 7);
                        qt.y0(103, (bArr[i28] >> 2) & 3);
                        qt.y0(104, (bArr[i28] >> 0) & 3);
                        int i29 = i2 + 4;
                        qt.y0(105, (bArr[i29] >> 7) & 1);
                        qt.y0(106, (bArr[i29] >> 6) & 1);
                        qt.y0(107, (bArr[i29] >> 4) & 3);
                        qt.y0(108, (bArr[i29] >> 2) & 3);
                        qt.y0(109, (bArr[i29] >> 0) & 3);
                        int i30 = i2 + 5;
                        qt.y0(110, (bArr[i30] >> 7) & 1);
                        qt.y0(111, (bArr[i30] >> 6) & 1);
                        qt.y0(112, (bArr[i30] >> 5) & 1);
                        qt.y0(113, (bArr[i30] >> 4) & 1);
                        qt.y0(114, (bArr[i30] >> 3) & 1);
                        qt.y0(115, (bArr[i30] >> 0) & 7);
                        int i31 = i2 + 6;
                        qt.y0(116, (bArr[i31] >> 6) & 3);
                        qt.y0(117, (bArr[i31] >> 5) & 1);
                        qt.y0(118, (bArr[i31] >> 4) & 1);
                        qt.y0(119, (bArr[i31] >> 3) & 1);
                        qt.y0(120, (bArr[i31] >> 2) & 1);
                        qt.y0(121, (bArr[i31] >> 1) & 1);
                        qt.y0(122, (bArr[i31] >> 0) & 1);
                        int i32 = i2 + 7;
                        qt.y0(123, (bArr[i32] >> 7) & 1);
                        qt.y0(124, (bArr[i32] >> 6) & 1);
                        qt.y0(125, (bArr[i32] >> 5) & 1);
                        qt.y0(126, (bArr[i32] >> 4) & 1);
                        qt.y0(127, (bArr[i32] >> 2) & 3);
                        qt.y0(128, (bArr[i32] >> 0) & 3);
                        int i33 = i2 + 8;
                        qt.y0(129, (bArr[i33] >> 7) & 1);
                        qt.y0(130, (bArr[i33] >> 6) & 1);
                        qt.y0(131, (bArr[i33] >> 5) & 1);
                        qt.y0(132, (bArr[i33] >> 4) & 1);
                        qt.y0(133, (bArr[i33] >> 3) & 1);
                        qt.y0(134, (bArr[i33] >> 2) & 1);
                        qt.y0(135, (bArr[i33] >> 1) & 1);
                        qt.y0(136, (bArr[i33] >> 0) & 1);
                        int i34 = i2 + 9;
                        qt.y0(137, (bArr[i34] >> 6) & 3);
                        qt.y0(138, (bArr[i34] >> 5) & 1);
                        qt.y0(139, (bArr[i34] >> 4) & 1);
                        qt.y0(140, (bArr[i34] >> 3) & 1);
                        qt.y0(141, (bArr[i34] >> 2) & 1);
                        qt.y0(142, (bArr[i34] >> 1) & 1);
                        qt.y0(143, (bArr[i34] >> 0) & 1);
                        int i35 = i2 + 10;
                        qt.y0(144, (bArr[i35] >> 6) & 3);
                        qt.y0(145, (bArr[i35] >> 5) & 1);
                        qt.y0(146, (bArr[i35] >> 4) & 1);
                        break;
                    case 51:
                        byte b17 = bArr[i2 + 2];
                        if (b17 == 1) {
                            qt.y0(147, bArr[i2 + 3] & 255);
                            qt.y0(148, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                            qt.y0(149, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                            qt.y0(150, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                            qt.y0(151, (16711680 & (bArr[i2 + 10] << 16)) | ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                            qt.y0(152, (65280 & (bArr[i2 + 13] << 8)) | (bArr[i2 + 14] & 255));
                            byte b18 = bArr[i2 + 15];
                            qt.y0(153, b18 & 3);
                            qt.y0(154, (b18 >> 2) & 3);
                            qt.y0(155, (b18 >> 4) & 3);
                            qt.y0(156, (b18 >> 6) & 1);
                            qt.y0(157, (b18 >> 7) & 1);
                            int i36 = bArr[i2 + 16] & 255;
                            if (i36 < 0) {
                                i10 = 0;
                            } else if (i36 <= 11) {
                                i10 = i36;
                            }
                            qt.y0(158, this.f14405b[i10]);
                            break;
                        } else if (b17 == 2) {
                            qt.y0(159, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                            qt.y0(160, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                            qt.y0(161, ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                            qt.y0(162, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                            qt.y0(163, (16711680 & (bArr[i2 + 13] << 16)) | ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
                            qt.y0(164, (65280 & (bArr[i2 + 16] << 8)) | (bArr[i2 + 17] & 255));
                            byte b19 = bArr[i2 + 18];
                            qt.y0(153, b19 & 3);
                            qt.y0(154, (b19 >> 2) & 3);
                            qt.y0(155, (b19 >> 4) & 3);
                            qt.y0(156, (b19 >> 6) & 1);
                            qt.y0(157, (b19 >> 7) & 1);
                            int i37 = bArr[i2 + 19] & 255;
                            if (i37 < 0) {
                                i10 = 0;
                            } else if (i37 <= 11) {
                                i10 = i37;
                            }
                            qt.y0(158, this.f14405b[i10]);
                            break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f14407c.j();
        l0.b0.p0(this.f14422n);
        y0.g.f18094d.d(this.f14423o);
        y0.g.f18095e.d(this.f14423o);
        w0.e.f17815a.d(this.f14422n);
        o1.y yVar = u0.c.f17374a;
        yVar.d(this.f14422n);
        u0.c.f17392s.d(this.f14422n);
        u0.c.f17393t.d(this.f14422n);
        u0.c.f17386m.d(this.N);
        l0.b0.p0(this.O);
        qt.q0(this.X);
        u0.c.f17388o.d(this.R);
        u0.c.f17389p.d(this.T);
        u0.c.f17390q.d(this.S);
        u0.c.f17396w.d(this.U);
        u0.c.f17379f.d(this.W);
        h0.d.f2464c.d(this.V);
        u0.c.f17397x.d(this.Q);
        yVar.d(this.P);
        l0.b0.o0(this.f14412e0);
        qt.p0(this.f14432x);
        o1.h.f16865a.d(this.f14431w);
        h0.d.f2466e.d(this.f14426r);
        h0.d.f2462a.d(this.f14425q);
        h0.d.f2465d.d(this.f14427s);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 210) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 100) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -112, 2, 51, (byte) iArr[0]);
            z.k.s(227, -112, 2, 50, 0);
        }
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (nt.f8633a == 917802) {
                P3(iArr[0], iArr[1]);
                return;
            } else {
                O3(iArr[0]);
                return;
            }
        }
        if (i2 == 1029) {
            int iW = (iArr[1] * 1024) / a.f.w();
            int i3 = (iArr[2] * 1000) / a.f.i();
            if (T2(iArr, 2)) {
                if (iArr[0] == 0) {
                    z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES, 6, 1, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0);
                    return;
                } else {
                    if (iArr[0] == 1) {
                        z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES, 6, 0, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        switch (i2) {
            case 102:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 1) {
                        iArr[0] = 1;
                    } else if (iArr[0] > 15) {
                        iArr[0] = 15;
                    }
                    z.k.s(227, -58, 2, -63, (byte) iArr[0]);
                    break;
                }
                break;
            case 103:
                z.k.s(227, -58, 2, -64, 1);
                break;
            case 104:
                if (iArr != null && iArr.length > 0) {
                    R3(iArr[0]);
                    break;
                }
                break;
            case 105:
                if (iArr != null && iArr.length >= 2) {
                    z.k.s(227, -58, 2, (byte) iArr[0], (byte) iArr[1]);
                    break;
                }
                break;
            case 106:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, -17, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 107:
                if (T2(iArr, 2)) {
                    z.k.s(227, -32, 2, iArr[0], iArr[1]);
                }
                break;
            case 108:
                if (T2(iArr, 2)) {
                    z.k.s(227, -124, 2, iArr[0], iArr[1]);
                }
                break;
            default:
                switch (i2) {
                    case 120:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, -112, 2, iArr[0], 0);
                            break;
                        }
                        break;
                    case 121:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, -125, 2, iArr[0], iArr[1]);
                            break;
                        }
                        break;
                    case 122:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, -126, 1, iArr[0]);
                            break;
                        }
                        break;
                    default:
                        switch (i2) {
                            case 150:
                                a3();
                                break;
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
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f14396n0 = f14401s0[o0.a(i2, 0, 36)];
        }
    }

    public final void a3() {
        if (nt.f8637c == 5) {
            z.k.s(227, -112, 2, 119, 0);
            z.k.s(227, -112, 2, 121, 0);
            z.k.s(227, -112, 2, 122, 0);
            z.k.s(227, -112, 2, 123, 0);
            z.k.s(227, -112, 2, 124, 0);
        }
    }

    public final void b3() {
        int[] iArr = new int[9];
        iArr[0] = 227;
        iArr[1] = 238;
        iArr[2] = 6;
        iArr[3] = 117;
        for (int i2 = 4; i2 < 9; i2++) {
            iArr[i2] = 0;
        }
        z.k.s(iArr);
    }

    public final void c3(int i2) {
        int[] iArr = new int[5];
        iArr[0] = 227;
        iArr[1] = -58;
        iArr[2] = 2;
        iArr[3] = 85;
        iArr[4] = (byte) (i2 == 0 ? 1 : 0);
        z.k.s(iArr);
    }

    public final void d3(int i2) {
        int i3 = this.H;
        if (i3 <= 0 || i3 >= f14393k0.length) {
            return;
        }
        int i4 = this.C / 100;
        a.f.p().t(LogType.CANBUS, "Route_remain ==== ---->: " + i4);
        if (i2 == 1) {
            z.k.s(227, 156, 8, f14393k0[this.H], this.G & 255, (i4 >> 8) & 255, i4 & 255, 1, 0, 0, 0);
        } else {
            z.k.s(227, 156, 8, 0, 0, 0, 0, 0, 0, 0, 0);
        }
    }

    public final void init() {
        o1.f<x> fVar = f14403u0;
        fVar.f(2, new x(2, 100));
        fVar.f(1, new x(1, 100));
        fVar.f(9, new x(9, 100));
    }
}

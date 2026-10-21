package k0;

import android.bluetooth.BluetoothClass;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import com.syu.jni.ToolsJni;
import java.util.Locale;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class gh extends lt implements o1.q {
    public static int A0 = 0;
    public static int B0 = 0;
    public static int C0 = 0;
    public static int D0 = 255;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static int f5509k0 = 0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static int f5510l0 = 0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static int f5511m0 = 0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static int f5512n0 = 0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static int f5513o0 = 20;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static int f5514p0 = 36;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static int f5515q0 = 1;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static int f5516r0 = 0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static int f5517s0 = 0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static int f5518t0 = 0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static int f5519u0 = 0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static int f5520v0 = 0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static int f5521w0 = 50;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static int f5522x0 = 128;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static int f5523y0 = 128;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public static int f5524z0 = 128;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5538h;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f5545l;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public j f5556w;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f5526b = new int[15][];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f5528c = new int[5][];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5530d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5532e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5534f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5536g = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5540i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f5542j = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{6, 12}, new int[]{7, 13}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 5}, new int[]{11, 32}, new int[]{12, 33}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 1}, new int[]{17, 54}, new int[]{18, 5}, new int[]{19, 3}, new int[]{20, 4}, new int[]{21, 6}, new int[]{22, 29}, new int[]{23, 31}, new int[]{24, 30}, new int[]{25, 62}, new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 3}, new int[]{132, 4}, new int[]{133, 3}, new int[]{134, 4}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 74}, new int[]{138, 58}, new int[]{139, 55}, new int[]{140, 16}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f5544k = {new int[]{1, 7}, new int[]{2, 8}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 3}, new int[]{20, 4}, new int[]{21, 21}, new int[]{22, 52}, new int[]{23, 22}, new int[]{24, 38}, new int[]{25, 3}, new int[]{26, 4}, new int[]{27, 1}, new int[]{28, 75}, new int[]{29, 74}, new int[]{30, 64}, new int[]{135, 12}};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f5546m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[][] f5547n = {new int[]{1, 75}, new int[]{2, 74}, new int[]{3, 74}, new int[]{4, 53}, new int[]{5, 1}, new int[]{6, 2}, new int[]{7, 9}, new int[]{8, 58}, new int[]{9, 25}, new int[]{16, 38}, new int[]{17, 62}};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final byte[] f5548o = new byte[1024];

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5549p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f5550q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f5551r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f5552s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f5553t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f5554u = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f5555v = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f5557x = new a();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f5558y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f5559z = 0;
    public Runnable A = new b();
    public int B = 0;
    public boolean C = false;
    public Runnable D = new c();
    public boolean E = false;
    public boolean F = false;
    public Runnable G = new d();
    public int H = 0;
    public Runnable I = new e();
    public Runnable J = new f();
    public o1.g0 K = new o1.g0(getClass().getSimpleName(), 32);
    public final int L = 1;
    public final int M = 8;
    public final int N = 9;
    public final int O = 10;
    public final int P = 11;
    public final int Q = 2;
    public final int R = 3;
    public final int S = 4;
    public final int T = 5;
    public final int U = 15;
    public final int V = 18;
    public final int W = 19;
    public final int X = 20;
    public final int Y = 21;
    public final int Z = 22;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final int f5525a0 = 23;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final int f5527b0 = 24;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final int f5529c0 = 25;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final int f5531d0 = 26;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f5533e0 = 0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public Runnable f5535f0 = new g();

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public Runnable f5537g0 = new h();

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f5539h0 = 0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public Runnable f5541i0 = new i();

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f5543j0 = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17366w;
            if (i2 == 0) {
                qt.y0(139, 0);
            } else {
                if (i2 != 1) {
                    return;
                }
                qt.y0(139, 1);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            gh.this.f5559z = y0.f.Q0;
            a.f.p().t(LogType.CANBUS, "mCarSendNaviSound DataSound.sNaviSoundOn= " + y0.f.Q0 + "---- caruitype =   " + gh.this.f5554u);
            if (u0.b.D != 13) {
                gh ghVar = gh.this;
                if (ghVar.E) {
                    ghVar.c3(false);
                    return;
                }
                return;
            }
            int i2 = y0.f.Q0;
            if (i2 != 0) {
                if (i2 != 1) {
                    return;
                }
                gh.this.c3(true);
            } else if (u0.b.j4 == 0) {
                gh.this.c3(false);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            gh ghVar = gh.this;
            int i2 = ghVar.B;
            int i3 = u0.b.j4;
            if (i2 != i3) {
                ghVar.B = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (ghVar.E) {
                        ghVar.c3(false);
                        return;
                    }
                    return;
                }
                int i5 = u0.b.j4;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    ghVar.c3(true);
                } else if (y0.f.Q0 == 0) {
                    ghVar.c3(false);
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
                    gh.this.c3(true);
                } else {
                    gh.this.c3(false);
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8633a;
            if ((i2 == 12648900 || i2 == 16253383 || i2 == 2621894 || i2 == 4915655 || i2 == 8585672 || i2 == 4587975 || i2 == 4719047 || i2 == 5505479 || i2 == 1114567 || i2 == 1180103) && (qt.n0("/sys/fytver/fyt_bin_version").contains("Ls18") || qt.n0("/sys/fytver/fyt_bin_version").contains("Lt18"))) {
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
            l0.b0.b(gh.this.J);
            gh.this.H = 5;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            gh ghVar = gh.this;
            int i3 = ghVar.H - 1;
            ghVar.H = i3;
            if (i3 <= 0) {
                l0.b0.p0(ghVar.J);
                gh.this.H = 6;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            z.k.s(227, -112, 2, 40, 0);
            gh ghVar2 = gh.this;
            ghVar2.M3(ghVar2.K.b(5, 0));
            gh ghVar3 = gh.this;
            ghVar3.L3(ghVar3.K.b(24, 0));
            gh ghVar4 = gh.this;
            ghVar4.J3(ghVar4.K.b(26, 255));
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8633a) {
                    case 5112263:
                    case 5177799:
                    case 5243335:
                    case 5308871:
                    case 5505479:
                        gh ghVar5 = gh.this;
                        ghVar5.N3(ghVar5.K.b(25, 0));
                        z.k.q(106, -1, 0, 0, 105);
                        break;
                }
                switch (nt.f8633a) {
                    case 65991:
                    case 4653512:
                    case 5243333:
                    case 14287303:
                        if (gh.D0 == 255) {
                            z.k.s(227, -125, 2, 39, 8);
                        }
                        break;
                    case 131527:
                    case 3604935:
                    case 3670471:
                    case 5112263:
                    case 5243335:
                    case 6554056:
                    case 8126903:
                    case 10092999:
                    case 10879431:
                    case 12059080:
                    case 14942662:
                    case 15204806:
                    case 16318918:
                        if (gh.D0 == 255) {
                            z.k.s(227, -125, 2, 39, 0);
                        }
                        break;
                    case 197063:
                    case 3736007:
                    case 4194759:
                    case 4784583:
                    case 5177799:
                    case 5308871:
                    case 6619592:
                    case 8192439:
                    case 10158535:
                    case 12124616:
                    case 16187846:
                    case 16253382:
                    case 16384454:
                        if (gh.D0 == 255) {
                            z.k.s(227, -125, 2, 39, 1);
                        }
                        break;
                    case 1114567:
                    case 1180103:
                    case 2621894:
                    case 4587975:
                    case 4719047:
                    case 4915655:
                    case 5505479:
                    case 8585672:
                    case 12648900:
                    case 16253383:
                        gh ghVar6 = gh.this;
                        ghVar6.S3(ghVar6.K.b(15, 0));
                        gh ghVar7 = gh.this;
                        ghVar7.I3(ghVar7.K.b(18, 0), gh.this.K.b(19, 50), gh.this.K.b(20, 128), gh.this.K.b(21, 128), gh.this.K.b(22, 128));
                        int i4 = nt.f8633a;
                        if (i4 != 1114567) {
                            if (i4 == 1180103 || i4 == 4587975 || i4 == 5505479) {
                                if (gh.D0 == 255) {
                                    z.k.s(227, -125, 2, 39, 1);
                                }
                            } else if (i4 == 4915655 || i4 == 8585672) {
                                if (gh.D0 == 255) {
                                    z.k.s(227, -125, 2, 39, 8);
                                }
                            } else if (i4 == 16253383) {
                                gh ghVar8 = gh.this;
                                ghVar8.R3(ghVar8.K.b(10, 20));
                                gh ghVar9 = gh.this;
                                ghVar9.G3(ghVar9.K.b(11, 36));
                            } else if (qt.n0("/sys/fytver/fyt_bin_version").contains("Ls18") || qt.n0("/sys/fytver/fyt_bin_version").contains("Lt18")) {
                                gh ghVar10 = gh.this;
                                ghVar10.H3(ghVar10.K.b(2, 1));
                                gh ghVar11 = gh.this;
                                ghVar11.F3(ghVar11.K.b(3, 0));
                                gh ghVar12 = gh.this;
                                ghVar12.R3(ghVar12.K.b(10, 20));
                                gh ghVar13 = gh.this;
                                ghVar13.G3(ghVar13.K.b(11, 36));
                                if (o1.u.S(a.b.Q)) {
                                    i2 = 4;
                                } else {
                                    i2 = 4;
                                    z.k.s(227, 227, 1, 0);
                                    y0.h.u0(gh.f5514p0);
                                }
                                gh ghVar14 = gh.this;
                                ghVar14.Q3(ghVar14.K.b(i2, 0));
                                if (gh.this.K.b(8, 0) != 0 && SystemProperties.getInt("persist.sys.width", 0) != gh.this.K.b(8, 0)) {
                                    SystemProperties.set("persist.sys.width", String.format(Locale.US, "%d", Integer.valueOf(gh.this.K.b(8, 0))));
                                }
                                gh ghVar15 = gh.this;
                                ghVar15.P3(ghVar15.K.b(8, 0));
                                if (gh.this.K.b(9, 0) != 0 && SystemProperties.getInt("persist.sys.height", 0) != gh.this.K.b(9, 0)) {
                                    SystemProperties.set("persist.sys.height", String.format(Locale.US, "%d", Integer.valueOf(gh.this.K.b(9, 0))));
                                }
                                gh ghVar16 = gh.this;
                                ghVar16.O3(ghVar16.K.b(9, 0));
                                gh ghVar17 = gh.this;
                                ghVar17.K3(ghVar17.K.b(23, 0));
                            }
                        } else if (gh.D0 == 255) {
                            z.k.s(227, -125, 2, 39, 0);
                        }
                        break;
                    case 3211719:
                    case 10551751:
                        if (gh.D0 == 255) {
                            z.k.s(227, -125, 2, 39, 3);
                        }
                        break;
                    case 3473863:
                        if (gh.D0 == 255) {
                            z.k.s(227, -125, 2, 39, 16);
                        }
                        break;
                    case 3539399:
                        if (gh.D0 == 255) {
                            z.k.s(227, -125, 2, 39, 17);
                        }
                        break;
                    case 4522440:
                    case 12714436:
                        if (gh.D0 == 255) {
                            z.k.s(227, -125, 2, 39, 6);
                        }
                        break;
                    case 4587976:
                    case 5177797:
                    case 14221767:
                    case 15073734:
                        if (gh.D0 == 255) {
                            z.k.s(227, -125, 2, 39, 7);
                        }
                        break;
                    case 6619590:
                        gh.U3(new byte[]{46, -127, 1, 1, 0});
                        break;
                    case 8126917:
                        z.k.s(227, -30, 1, 106);
                        break;
                    case 8192453:
                        z.k.s(227, -30, 1, 107);
                        break;
                }
            }
            gh ghVar18 = gh.this;
            if (ghVar18.f5555v) {
                ghVar18.T3(ghVar18.K.b(1, 0));
                if (u0.b.f17306a0 == 1) {
                    gh.this.B3(1);
                } else {
                    gh.this.B3(0);
                }
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            int i3 = gh.this.f5533e0;
            if (i2 != i3) {
                if (i3 == 13 && (qt.n0("/sys/fytver/fyt_bin_version").contains("Ls18") || qt.n0("/sys/fytver/fyt_bin_version").contains("Lt18"))) {
                    if (gh.f5515q0 != 0) {
                        z.k.s(227, 131, 2, 42, 6);
                        a.i.a0(50L);
                        z.k.s(227, 131, 2, 42, 6);
                        a.i.a0(50L);
                        z.k.s(227, 131, 2, 42, 6);
                        a.i.a0(50L);
                        z.k.s(227, 131, 2, 42, 6);
                        a.i.a0(50L);
                        z.k.s(227, 131, 2, 42, 6);
                    }
                    y0.h.u0(gh.f5514p0);
                    gh ghVar = gh.this;
                    if (ghVar.E) {
                        ghVar.c3(false);
                    }
                }
                gh.this.f5533e0 = u0.b.D;
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = (byte) time.hour;
            byte b3 = (byte) time.minute;
            byte b4 = DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0;
            if (b2 > 12) {
                b2 = (byte) (b2 - 12);
            }
            z.k.s(227, 133, 6, 0, 0, 0, b2, b3, 0);
            int i2 = nt.f8633a;
            if (i2 == 4063687 || i2 == 4129223 || i2 == 4719047) {
                gh.U3(new byte[]{90, -91, 10, -53, 0, b2, b3, 0, 0, b4, 0, 0, 0, 0, 0});
            }
            switch (nt.f8633a) {
                case 5112263:
                case 5177799:
                case 5243335:
                case 5308871:
                case 5505479:
                    z.k.q(106, -1, 0, 0, 105);
                    break;
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17357r0 == 0) {
                gh ghVar = gh.this;
                int i2 = ghVar.f5532e;
                if (i2 >= 0) {
                    ghVar.f5532e = i2 - 1;
                } else {
                    int i3 = ghVar.f5530d;
                    if (i3 == 1) {
                        if (!o1.u.a0()) {
                            qt.y0(164, 1);
                            SystemProperties.set("persist.lesc.video.ignore", "true");
                            a.i.a0(200L);
                            gh.this.f5534f = true;
                            o1.u.z();
                            float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                            gh.this.f5536g = y0.f.f18037c;
                            y0.h.t0((int) f2);
                        }
                    } else if (i3 == 0 && ghVar.f5534f && o1.u.a0()) {
                        qt.y0(164, 0);
                        y0.h.t0(gh.this.f5536g);
                        a.i.a0(100L);
                        a.i.a0(350L);
                        SystemProperties.set("persist.lesc.video.ignore", "false");
                    }
                }
            }
            gh ghVar2 = gh.this;
            int i4 = ghVar2.f5539h0 + 1;
            ghVar2.f5539h0 = i4;
            if (i4 > 2) {
                ghVar2.f5539h0 = 0;
                if (o1.u.S("com.syu.fourcamera2")) {
                    return;
                }
                SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false);
            }
        }
    }

    public class j extends BroadcastReceiver {
        public j() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.syu.canbus.fb.click".equals(intent.getAction())) {
                try {
                    z.k.s(227, 132, 2, 96, 0);
                    z.k.s(1, 12, 7);
                    switch (nt.f8633a) {
                        case 5112263:
                        case 5177799:
                        case 5243335:
                        case 5308871:
                        case 5505479:
                            if (gh.this.f5552s != 0) {
                                z.k.q(101, -1, 0, 0, 100);
                            } else {
                                z.k.q(103, -1, 0, 0, 102);
                            }
                            break;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        public /* synthetic */ j(gh ghVar, a aVar) {
            this();
        }
    }

    public static void U3(byte[] bArr) {
        int i2 = nt.f8633a;
        byte b2 = 0;
        int i3 = 1;
        if (i2 != 4129223 && i2 != 4063687 && i2 != 4719047) {
            if (bArr == null || bArr.length <= 2) {
                return;
            }
            int length = bArr.length - 1;
            while (i3 <= length) {
                b2 = (byte) (b2 + bArr[i3]);
                i3++;
            }
            bArr[length] = (byte) (b2 ^ 255);
            z.k.q(bArr);
            return;
        }
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length2 = bArr.length - 1;
        byte b3 = bArr[0];
        while (i3 <= length2) {
            b3 = (byte) (b3 + bArr[i3]);
            i3++;
        }
        bArr[length2] = (byte) (b3 & 255);
        z.k.q(bArr);
    }

    public final void B3(int i2) {
        if (i2 != 0) {
            i2 = 1;
        }
        z.k.s(227, 132, 2, 8, i2);
    }

    public final void C3(int i2, int i3) {
        z.k.s(227, -32, 2, (byte) i2, (byte) i3);
    }

    public final void D3() {
        int i2 = nt.f8633a;
        if (i2 == 5243335 || i2 == 5308871 || i2 == 5505479) {
            if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_LZ_Haites_Toyota_UI")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.air.Air_Activity_LZ_Haites_Toyota_UI");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
            return;
        }
        if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_WC_YL_Toyota_UI")) {
            return;
        }
        Intent intent2 = new Intent();
        intent2.setClassName("com.syu.canbus", "com.syu.carinfo.air.Air_Activity_WC_YL_Toyota_UI");
        intent2.addCategory(Intent.CATEGORY_DEFAULT);
        intent2.setFlags(268435456);
        App.c().startActivity(intent2);
    }

    public final void E3(int i2, int i3) {
        z.k.s(227, -125, 2, (byte) i2, (byte) i3);
    }

    public final void F3(int i2) {
        qt.y0(144, i2);
        f5516r0 = i2;
        if (i2 == 0) {
            z.k.s(227, 131, 2, 39, 4);
        } else if (i2 == 1) {
            z.k.s(227, 131, 2, 39, 5);
        } else if (i2 == 2) {
            z.k.s(227, 131, 2, 39, 7);
        } else if (i2 == 3) {
            z.k.s(227, 131, 2, 39, 8);
        }
        int iB = this.K.b(3, 1);
        int i3 = f5516r0;
        if (iB != i3) {
            this.K.g(3, i3);
        }
    }

    public final void G3(int i2) {
        qt.y0(145, i2);
        f5514p0 = i2;
        int iB = this.K.b(11, 36);
        int i3 = f5514p0;
        if (iB != i3) {
            this.K.g(11, i3);
        }
    }

    public final void H3(int i2) {
        qt.y0(143, i2);
        f5515q0 = i2;
        int iB = this.K.b(2, 1);
        int i3 = f5515q0;
        if (iB != i3) {
            this.K.g(2, i3);
        }
    }

    public final void I3(int i2, int i3, int i4, int i5, int i6) {
        qt.y0(153, i2);
        qt.y0(154, i3);
        qt.y0(155, i4);
        qt.y0(156, i5);
        qt.y0(157, i6);
        z.k.s(227, 153, 5, i2, i3, i4, i5, i6);
        f5520v0 = i2;
        int iB = this.K.b(18, 0);
        int i7 = f5520v0;
        if (iB != i7) {
            this.K.g(18, i7);
        }
        f5521w0 = i3;
        int iB2 = this.K.b(19, 0);
        int i8 = f5521w0;
        if (iB2 != i8) {
            this.K.g(19, i8);
        }
        f5522x0 = i4;
        int iB3 = this.K.b(20, 0);
        int i9 = f5522x0;
        if (iB3 != i9) {
            this.K.g(20, i9);
        }
        f5523y0 = i5;
        int iB4 = this.K.b(21, 0);
        int i10 = f5523y0;
        if (iB4 != i10) {
            this.K.g(21, i10);
        }
        f5524z0 = i6;
        int iB5 = this.K.b(22, 0);
        int i11 = f5524z0;
        if (iB5 != i11) {
            this.K.g(22, i11);
        }
    }

    public final void J3(int i2) {
        qt.y0(162, i2);
        D0 = i2;
        if (i2 != 255) {
            z.k.s(227, -125, 2, 39, i2);
        }
        int iB = this.K.b(26, 255);
        int i3 = D0;
        if (iB != i3) {
            this.K.g(26, i3);
        }
    }

    public final void K3(int i2) {
        qt.y0(160, i2);
        A0 = i2;
        if (this.K.b(23, 0) != A0) {
            SystemProperties.set("persist.sys.allscreenon", String.format(Locale.US, "%d", Integer.valueOf(A0)));
            this.K.g(23, A0);
        }
    }

    public final void L3(int i2) {
        qt.y0(161, i2);
        B0 = i2;
        int iB = this.K.b(24, 0);
        int i3 = B0;
        if (iB != i3) {
            this.K.g(24, i3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public final void M3(int i2) {
        qt.y0(148, i2);
        f5518t0 = i2;
        z.k.s(227, 132, 2, 97, i2);
        int iB = this.K.b(5, 0);
        int i3 = f5518t0;
        if (iB != i3) {
            this.K.g(5, i3);
        }
    }

    public final void N3(int i2) {
        qt.y0(163, i2);
        C0 = i2;
        if (i2 == 1) {
            Intent intent = new Intent("android.fyt.screenbutton.CanbusShow");
            intent.setPackage("com.fyt.screenbutton");
            App.c().startService(intent);
        } else if (i2 == 0) {
            Intent intent2 = new Intent("android.fyt.screenbutton.CanbusHide");
            intent2.setPackage("com.fyt.screenbutton");
            App.c().startService(intent2);
        }
        int iB = this.K.b(25, 0);
        int i3 = C0;
        if (iB != i3) {
            this.K.g(25, i3);
        }
    }

    public final void O3(int i2) {
        qt.y0(141, 65535 & i2);
        f5512n0 = i2;
        if (this.K.b(9, 0) != f5512n0) {
            SystemProperties.set("persist.sys.height", String.format(Locale.US, "%d", Integer.valueOf(f5512n0)));
            this.K.g(9, f5512n0);
        }
    }

    public final void P3(int i2) {
        qt.y0(140, 65535 & i2);
        f5511m0 = i2;
        if (this.K.b(8, 0) != f5511m0) {
            SystemProperties.set("persist.sys.width", String.format(Locale.US, "%d", Integer.valueOf(f5511m0)));
            this.K.g(8, f5511m0);
        }
    }

    public final void Q3(int i2) {
        qt.y0(147, i2);
        f5517s0 = i2;
        int iB = this.K.b(4, 0);
        int i3 = f5517s0;
        if (iB != i3) {
            this.K.g(4, i3);
        }
    }

    public final void R3(int i2) {
        qt.y0(142, i2);
        f5513o0 = i2;
        int iB = this.K.b(10, 20);
        int i3 = f5513o0;
        if (iB != i3) {
            this.K.g(10, i3);
        }
    }

    @Override // k0.lt
    public void S2() {
        this.K.a();
        u0.c.f17386m.a(this.I, 1);
        qt.z(this.f5537g0);
        l0.b0.a(this.f5541i0);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8317l = 0;
        T3(this.K.b(1, 0));
        switch (nt.f8633a) {
            case 1114567:
            case 1180103:
            case 2621894:
            case 4587975:
            case 4719047:
            case 4915655:
            case 5505479:
            case 8585672:
            case 12648900:
            case 16253383:
                this.f7886a.f8317l = 1;
                u0.c.f17374a.a(this.f5535f0, 1);
                if (qt.n0("/sys/fytver/fyt_bin_version").contains("Ls18") || qt.n0("/sys/fytver/fyt_bin_version").contains("Lt18")) {
                    y0.g.f18110t.a(this.A, 1);
                    u0.c.G.a(this.D, 1);
                    h0.d.f2462a.a(this.G, 1);
                    u0.c.f17399z.a(this.f5557x, 1);
                }
                break;
            case 4522440:
            case 12714436:
                this.f7886a.f8317l = 1;
                break;
            case 7340471:
                this.f7886a.f8307b = 1;
                break;
            case 8126917:
            case 8192453:
                l0.b0.o0(this.f5541i0);
                qt.q0(this.f5537g0);
                break;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8314i = 1;
        switch (nt.f8633a) {
            case 2621894:
            case 3211719:
            case 3670471:
            case 3736007:
            case 4587975:
            case 10092999:
            case 10158535:
            case 10551751:
            case 14877126:
            case 14942662:
            case 16253382:
            case 16318918:
            case 16384454:
                mtVar2.f8314i = 0;
                break;
        }
        this.f5556w = new j(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.syu.canbus.fb.click");
        App.c().registerReceiver(this.f5556w, intentFilter);
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
            if (a.f.w() == 1080) {
                this.f7886a.f8314i = 1;
            }
        }
    }

    public final void S3(int i2) {
        qt.y0(165, i2);
        f5519u0 = i2;
        if (i2 == 1) {
            SystemProperties.set("persist.fyt.androictrldvoice", "1");
        } else {
            SystemProperties.set("persist.fyt.androictrldvoice", "0");
        }
        int iB = this.K.b(15, 0);
        int i3 = f5519u0;
        if (iB != i3) {
            this.K.g(15, i3);
        }
    }

    public final void T3(int i2) {
        f5510l0 = i2;
        qt.y0(136, i2);
        int iB = this.K.b(1, 0);
        int i3 = f5510l0;
        if (iB != i3) {
            this.K.g(1, i3);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        int i5;
        int i6;
        int[][] iArr3;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        byte b2;
        byte b3;
        byte b4;
        byte b5;
        int i15;
        int i16;
        if (bArr[i2 + 1] == 49 && ((i11 = nt.f8633a) == 4063687 || i11 == 4129223 || i11 == 4719047)) {
            int i17 = i2 + 2;
            qt.y0(10, (bArr[i17] >> 6) & 1);
            qt.y0(53, (bArr[i17] >> 5) & 1);
            qt.y0(42, (bArr[i17] >> 4) & 1);
            qt.y0(13, (bArr[i17] >> 3) & 1);
            qt.y0(92, (bArr[i17] >> 1) & 1);
            qt.y0(37, (bArr[i17] >> 0) & 1);
            int i18 = i2 + 3;
            qt.y0(67, (bArr[i18] >> 7) & 1);
            qt.y0(11, (bArr[i18] >> 6) & 1);
            qt.y0(12, (bArr[i18] >> 4) & 1);
            qt.y0(54, (bArr[i18] >> 3) & 1);
            qt.y0(14, (bArr[i18] >> 2) & 1);
            qt.y0(52, (bArr[i18] >> 1) & 1);
            qt.y0(34, (bArr[i18] >> 0) & 1);
            int i19 = i2 + 4;
            qt.y0(43, (bArr[i19] >> 7) & 1);
            qt.y0(16, (bArr[i19] >> 5) & 1);
            qt.y0(65, (bArr[i19] >> 4) & 1);
            qt.y0(30, (bArr[i19] >> 2) & 3);
            qt.y0(29, (bArr[i19] >> 0) & 3);
            int i20 = i2 + 5;
            qt.y0(32, (bArr[i20] >> 6) & 3);
            qt.y0(31, (bArr[i20] >> 4) & 3);
            qt.y0(75, (bArr[i20] >> 2) & 1);
            qt.y0(80, (bArr[i20] >> 1) & 1);
            int i21 = i2 + 6;
            qt.y0(77, (bArr[i21] >> 0) & 15);
            int i22 = (bArr[i21] >> 0) & 15;
            if (i22 == 3) {
                i12 = 0;
                i13 = 0;
                i14 = 1;
            } else if (i22 == 5) {
                i13 = 0;
                i14 = 1;
                i12 = 1;
            } else if (i22 != 6) {
                switch (i22) {
                    case 12:
                        i12 = 0;
                        i14 = 1;
                        i13 = 1;
                        break;
                    case 13:
                        i14 = 0;
                        i12 = 1;
                        i13 = i12;
                        break;
                    case 14:
                        i14 = 1;
                        i12 = i14;
                        i13 = i12;
                        break;
                    default:
                        i14 = 0;
                        i12 = i14;
                        i13 = i12;
                        break;
                }
            } else {
                i14 = 0;
                i13 = 0;
                i12 = 1;
            }
            qt.y0(20, i14);
            qt.y0(19, i12);
            qt.y0(18, i13);
            qt.y0(22, i13);
            qt.y0(21, bArr[i2 + 7] & DhcpPacket.DHCP_DOMAIN_NAME);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b2 = 255;
                b3 = bArr[i2 + 9];
            } else {
                b3 = bArr[i2 + 8];
                b2 = 255;
            }
            int i23 = b3 & b2;
            if (i23 == 254) {
                qt.y0(27, -2);
            } else if (i23 == b2) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i23 * 5);
            }
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b4 = 255;
                b5 = bArr[i2 + 8];
            } else {
                b5 = bArr[i2 + 9];
                b4 = 255;
            }
            int i24 = b5 & b4;
            if (i24 == 254) {
                qt.y0(28, -2);
            } else if (i24 == b4) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i24 * 5);
            }
            int i25 = bArr[i2 + 10] & 255;
            if (i25 == 1) {
                i15 = 0;
                i16 = 1;
            } else if (i25 != 2) {
                i16 = i25 != 3 ? 0 : 1;
                i15 = i16;
            } else {
                i16 = 0;
                i15 = 1;
            }
            qt.y0(47, i16);
            qt.y0(46, i15);
            qt.y0(44, bArr[i2 + 11] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i26 = bArr[i2 + 12] & 255;
            if (i26 == 254) {
                qt.y0(40, -2);
            } else if (i26 == 255) {
                qt.y0(40, -3);
            } else {
                qt.y0(40, i26 * 5);
            }
        }
        byte b6 = bArr[i2];
        if (b6 == 29) {
            int i27 = i2 + 2;
            int i28 = bArr[i27] & 255;
            int i29 = i2 + 3;
            int i30 = bArr[i29] & 255;
            int i31 = i2 + 4;
            int i32 = bArr[i31] & 255;
            int i33 = i2 + 5;
            int i34 = bArr[i33] & 255;
            if (i28 == 0 && i30 == 0 && i32 == 0 && i34 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i28 || l0.c0.f13014h != i30 || l0.c0.f13015i != i32 || l0.c0.f13016j != i34) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i28;
            l0.c0.f13014h = i30;
            l0.c0.f13015i = i32;
            l0.c0.f13016j = i34;
            u0.d.D2(a3(bArr[i27] & 255));
            u0.d.E2(a3(bArr[i29] & 255));
            u0.d.F2(a3(bArr[i31] & 255));
            u0.d.G2(a3(bArr[i33] & 255));
        }
        if (b6 == 30) {
            u0.d.R2(a3(bArr[i2 + 2] & 255));
            u0.d.S2(a3(bArr[i2 + 3] & 255));
            u0.d.T2(a3(bArr[i2 + 4] & 255));
            u0.d.U2(a3(255 & bArr[i2 + 5]));
            int i35 = i2 + 6;
            qt.y0(125, (bArr[i35] >> 6) & 1);
            qt.y0(126, (bArr[i35] >> 7) & 1);
            qt.y0(127, (bArr[i35] >> 0) & 7);
            return;
        }
        if (b6 == 32) {
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            this.f5540i = b7 & 255;
            int i36 = nt.f8633a;
            if (i36 == 8126917 || i36 == 8192453) {
                int i37 = 0;
                while (true) {
                    iArr = this.f5544k;
                    if (i37 < iArr.length) {
                        int i38 = this.f5540i;
                        if (i38 != iArr[i37][0]) {
                            i37++;
                        } else if (i38 != 0) {
                            this.f5538h = i37;
                        }
                    }
                }
                if ((b8 & 255) != 0) {
                    if (i37 < iArr.length) {
                        l0.b0.l0(iArr[i37][1], 0);
                        return;
                    }
                    return;
                }
                int i39 = this.f5538h;
                if (i39 < iArr.length) {
                    i4 = 255;
                    if (i39 != 255) {
                        l0.b0.l0(iArr[i39][1], 1);
                    }
                } else {
                    i4 = 255;
                }
                this.f5538h = i4;
                return;
            }
            int i40 = 0;
            while (true) {
                iArr2 = this.f5542j;
                if (i40 < iArr2.length) {
                    int i41 = this.f5540i;
                    if (i41 != iArr2[i40][0]) {
                        i40++;
                    } else if (i41 != 0) {
                        this.f5538h = i40;
                    }
                }
            }
            int i42 = this.f5540i;
            if (i42 == 3) {
                if (b8 == 1) {
                    if (u0.b.D != 13 || o1.u.S(a.b.Q)) {
                        l0.b0.l0(3, 0);
                        l0.b0.l0(3, 1);
                        return;
                    } else {
                        z.k.s(227, -125, 2, 15, 1);
                        z.k.s(227, -125, 2, 15, 0);
                        return;
                    }
                }
                return;
            }
            if (i42 == 4) {
                if (b8 == 1) {
                    if (u0.b.D != 13 || o1.u.S(a.b.Q)) {
                        l0.b0.l0(4, 0);
                        l0.b0.l0(4, 1);
                        return;
                    } else {
                        z.k.s(227, -125, 2, 16, 1);
                        z.k.s(227, -125, 2, 16, 0);
                        return;
                    }
                }
                return;
            }
            if (i42 != 18) {
                if (i42 == 22) {
                    if ((b8 & 255) == 1) {
                        nt.f8641e.e();
                        return;
                    } else {
                        nt.f8641e.f();
                        return;
                    }
                }
                if ((b8 & 255) != 0) {
                    if (i40 < iArr2.length) {
                        l0.b0.l0(iArr2[i40][1], 0);
                        return;
                    }
                    return;
                }
                int i43 = this.f5538h;
                if (i43 < iArr2.length) {
                    i6 = 255;
                    if (i43 != 255) {
                        l0.b0.l0(iArr2[i43][1], 1);
                    }
                } else {
                    i6 = 255;
                }
                this.f5538h = i6;
                return;
            }
            if (!qt.n0("/sys/fytver/fyt_bin_version").contains("Ls18") && !qt.n0("/sys/fytver/fyt_bin_version").contains("Lt18") && (i5 = nt.f8633a) != 12648900 && i5 != 16253383) {
                if (b8 == 1) {
                    l0.b0.l0(5, 0);
                    l0.b0.l0(5, 1);
                    return;
                }
                return;
            }
            if (this.f5553t != b8) {
                if (o1.u.S(a.b.Q)) {
                    if (b8 == 2 && this.f5553t == 1) {
                        l0.b0.l0(5, 0);
                        l0.b0.l0(5, 1);
                    }
                } else if (b8 == 2 && this.f5553t == 1) {
                    o1.u.z();
                } else if (b8 == 0 && this.f5553t == 1) {
                    l0.b0.l0(5, 0);
                    l0.b0.l0(5, 1);
                }
                this.f5553t = b8;
                return;
            }
            return;
        }
        if (b6 == 53) {
            qt.k(bArr[i2 + 3], bArr[i2 + 2], false, 380);
            return;
        }
        if (b6 == 98) {
            int i44 = i2 + 2;
            if (this.f5554u != bArr[i44]) {
                byte b9 = bArr[i44];
                this.f5554u = b9;
                if (b9 == 3 || o1.u.S(a.b.Q)) {
                    return;
                }
                o1.u.f(a.b.R);
                return;
            }
            return;
        }
        if (b6 == 35) {
            int i45 = i2 + 2;
            int i46 = (bArr[i45] & 255) << 24;
            int i47 = i2 + 3;
            int i48 = i2 + 4;
            int i49 = ((bArr[i47] & 255) << 8) | (bArr[i48] & 255);
            if (i49 == 65535) {
                i49 = 0;
            }
            qt.y0(99, i49 | i46);
            o1.x.C(nt.f8643f, 1049, new int[]{16, ((bArr[i45] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i47] << 8) & 65280) | (bArr[i48] & 255)}, null, null);
            for (int i50 = 0; i50 < 5; i50++) {
                int i51 = i2 + (i50 * 2);
                int[] iArr4 = {i50, (bArr[i51 + 6] & 255) | ((bArr[i51 + 5] & 255) << 8) | i46};
                if (qt.C0(100, iArr4, this.f5528c[i50])) {
                    this.f5528c[i50] = iArr4;
                }
            }
            return;
        }
        if (b6 == 36) {
            int i52 = 255 & bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i52 >> 6) & 1);
                qt.y0(2, (i52 >> 7) & 1);
            } else {
                qt.y0(1, (i52 >> 7) & 1);
                qt.y0(2, (i52 >> 6) & 1);
            }
            qt.y0(3, (i52 >> 5) & 1);
            qt.y0(4, (i52 >> 4) & 1);
            qt.y0(5, (i52 >> 3) & 1);
            qt.y0(0, (i52 >> 0) & 1);
            qt.y0(137, (i52 >> 1) & 1);
            int i53 = i2 + 3;
            qt.y0(138, (bArr[i53] >> 1) & 1);
            if (u0.b.f17357r0 != 0 || this.f5530d == (bArr[i53] & 1)) {
                return;
            }
            int i54 = bArr[i53] & 1;
            this.f5530d = i54;
            if (i54 == 1) {
                this.f5532e = 5;
                return;
            }
            if (i54 == 0) {
                this.f5532e = 5;
                qt.y0(164, 0);
                if (this.f5534f && o1.u.a0()) {
                    y0.h.t0(this.f5536g);
                    a.i.a0(350L);
                    SystemProperties.set("persist.lesc.video.ignore", "false");
                    this.f5534f = false;
                    return;
                }
                return;
            }
            return;
        }
        if (b6 == 100) {
            byte b10 = bArr[i2 + 2];
            byte b11 = bArr[i2 + 3];
            this.f5546m = b10 & 255;
            int i55 = 0;
            while (true) {
                iArr3 = this.f5547n;
                if (i55 < iArr3.length) {
                    int i56 = this.f5546m;
                    if (i56 != iArr3[i55][0]) {
                        i55++;
                    } else if (i56 != 0) {
                        this.f5545l = i55;
                    }
                }
            }
            if ((b11 & 255) != 0) {
                if (i55 < iArr3.length) {
                    l0.b0.l0(iArr3[i55][1], 0);
                    return;
                }
                return;
            }
            int i57 = this.f5545l;
            if (i57 < iArr3.length) {
                i7 = 255;
                if (i57 != 255) {
                    l0.b0.l0(iArr3[i57][1], 1);
                }
            } else {
                i7 = 255;
            }
            this.f5545l = i7;
            return;
        }
        if (b6 == 101) {
            if (o1.u.a0()) {
                return;
            }
            nt.f8641e.g(((bArr[i2 + 2] & 255) * a.f.w()) / 255, ((bArr[i2 + 3] & 255) * a.f.i()) / 255);
            return;
        }
        switch (b6) {
            case 38:
                byte b12 = bArr[i2 + 2];
                int[] iArr5 = new int[1];
                iArr5[0] = (b12 & 128) == 0 ? 0 : 1;
                qt.y0(101, iArr5);
                qt.y0(102, (b12 & 112) >> 4);
                qt.y0(103, (b12 & DhcpPacket.DHCP_HOST_NAME) >> 2);
                qt.y0(104, b12 & 3);
                byte b13 = bArr[i2 + 3];
                int[] iArr6 = new int[1];
                iArr6[0] = (b13 & 128) == 0 ? 0 : 1;
                qt.y0(105, iArr6);
                int[] iArr7 = new int[1];
                iArr7[0] = (b13 & 64) == 0 ? 0 : 1;
                qt.y0(106, iArr7);
                int[] iArr8 = new int[1];
                iArr8[0] = (b13 & 32) == 0 ? 0 : 1;
                qt.y0(107, iArr8);
                int[] iArr9 = new int[1];
                iArr9[0] = (b13 & 16) == 0 ? 0 : 1;
                qt.y0(108, iArr9);
                qt.y0(109, b13 & 7);
                byte b14 = bArr[i2 + 4];
                int[] iArr10 = new int[1];
                iArr10[0] = (b14 & 128) == 0 ? 0 : 1;
                qt.y0(110, iArr10);
                int[] iArr11 = new int[1];
                iArr11[0] = (b14 & 64) == 0 ? 0 : 1;
                qt.y0(111, iArr11);
                int[] iArr12 = new int[1];
                iArr12[0] = (b14 & 32) == 0 ? 0 : 1;
                qt.y0(112, iArr12);
                int[] iArr13 = new int[1];
                iArr13[0] = (b14 & 16) == 0 ? 0 : 1;
                qt.y0(113, iArr13);
                int[] iArr14 = new int[1];
                iArr14[0] = (b14 & 8) == 0 ? 0 : 1;
                qt.y0(114, iArr14);
                qt.y0(115, b14 & 7);
                byte b15 = bArr[i2 + 5];
                int[] iArr15 = new int[1];
                iArr15[0] = (b15 & 128) == 0 ? 0 : 1;
                qt.y0(116, iArr15);
                int[] iArr16 = new int[1];
                iArr16[0] = (b15 & 64) == 0 ? 0 : 1;
                qt.y0(117, iArr16);
                qt.y0(118, (b15 >> 2) & 3);
                qt.y0(120, b15 & 3);
                byte b16 = bArr[i2 + 6];
                qt.y0(121, (b16 >> 2) & 7);
                qt.y0(122, b16 & 3);
                qt.y0(159, (b16 >> 5) & 3);
                break;
            case 39:
                int i58 = (bArr[i2 + 2] & 255) << 24;
                for (int i59 = 0; i59 < 15; i59++) {
                    int i60 = i2 + (i59 * 2);
                    int[] iArr17 = {i59, (bArr[i60 + 4] & 255) | ((bArr[i60 + 3] & 255) << 8) | i58};
                    if (qt.C0(119, iArr17, this.f5526b[i59])) {
                        this.f5526b[i59] = iArr17;
                    }
                }
                break;
            case 40:
                int i61 = nt.f8633a;
                if (i61 != 6619590 && i61 != 4063687 && i61 != 4129223 && i61 != 4719047) {
                    int i62 = bArr[i2 + 2] & 255;
                    qt.y0(10, (i62 >> 7) & 1);
                    qt.y0(11, (i62 >> 6) & 1);
                    qt.y0(12, (i62 >> 5) & 1);
                    qt.y0(58, (i62 >> 4) & 1);
                    qt.y0(13, (i62 >> 3) & 1);
                    qt.y0(14, (i62 >> 2) & 1);
                    qt.y0(15, (i62 >> 1) & 1);
                    qt.y0(17, (i62 >> 0) & 1);
                    int i63 = bArr[i2 + 3] & 255;
                    qt.y0(18, (i63 >> 7) & 1);
                    qt.y0(19, (i63 >> 6) & 1);
                    int i64 = i63 >> 5;
                    qt.y0(20, i64 & 1);
                    qt.y0(77, i64 & 7);
                    int i65 = i63 & 15;
                    qt.y0(21, i65 > 7 ? 7 : i65);
                    int i66 = i2 + 4;
                    int i67 = bArr[i66] & 255;
                    int i68 = i2 + 5;
                    int i69 = bArr[i68] & 255;
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        i67 = bArr[i68] & 255;
                        i69 = bArr[i66] & 255;
                    }
                    if (i67 == 0) {
                        qt.y0(27, -2);
                    } else if (i67 == 31) {
                        qt.y0(27, -3);
                    } else if (i67 >= 1 && i67 <= 29) {
                        qt.y0(27, (i67 * 5) + 175);
                    } else if (i67 < 33 || i67 > 38) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, ((i67 - 33) * 5) + 150);
                    }
                    if (i69 == 0) {
                        qt.y0(28, -2);
                    } else if (i69 == 31) {
                        qt.y0(28, -3);
                    } else if (i69 >= 1 && i69 <= 29) {
                        qt.y0(28, (i69 * 5) + 175);
                    } else if (i69 < 33 || i67 > 38) {
                        qt.y0(28, -1);
                    } else {
                        qt.y0(28, ((i69 - 33) * 5) + 150);
                    }
                    int i70 = bArr[i2 + 6] & 255;
                    qt.y0(33, (i70 >> 7) & 1);
                    qt.y0(16, (i70 >> 6) & 1);
                    qt.y0(54, (i70 >> 5) & 1);
                    qt.y0(76, (i70 >> 4) & 1);
                    qt.y0(35, (i70 >> 3) & 1);
                    switch (nt.f8633a) {
                        case 1114567:
                        case 1180103:
                        case 3604935:
                        case 4194759:
                        case 4784583:
                        case 6554056:
                        case 6619592:
                        case 10092999:
                        case 10158535:
                        case 12059080:
                        case 12124616:
                        case 15204806:
                        case 16187846:
                            int i71 = (i70 >> 2) & 1;
                            if (this.f5558y != i71) {
                                this.f5558y = i71;
                                if (i71 == 0 && qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_NewAdd_HP")) {
                                    l0.b0.l0(6, 0);
                                    l0.b0.l0(6, 1);
                                }
                            }
                            break;
                    }
                    qt.y0(67, (i70 >> 2) & 1);
                    qt.y0(37, i70 & 1);
                    int i72 = bArr[i2 + 7] & 255;
                    if (i72 == 0) {
                        qt.y0(40, -2);
                    } else if (i72 == 31) {
                        qt.y0(40, -3);
                    } else if (i72 >= 1 && i72 <= 29) {
                        qt.y0(40, (i72 + 35) * 5);
                    } else if (i72 < 33 || i72 > 38) {
                        qt.y0(40, -1);
                    } else {
                        qt.y0(40, ((i72 - 33) * 5) + 150);
                    }
                    int i73 = bArr[i2 + 8] & 255;
                    qt.y0(42, (i73 >> 7) & 1);
                    qt.y0(46, (i73 >> 6) & 1);
                    qt.y0(47, (i73 >> 5) & 1);
                    qt.y0(43, (i73 >> 4) & 1);
                    qt.y0(44, i73 & 15);
                    int i74 = i2 + 10;
                    qt.y0(85, (bArr[i74] >> 4) & 1);
                    qt.y0(92, (bArr[i74] >> 2) & 1);
                    qt.y0(34, (bArr[i74] >> 3) & 1);
                    qt.y0(75, (bArr[i74] >> 1) & 1);
                    int i75 = bArr[i2 + 9] & 255;
                    if (i75 == 0) {
                        qt.y0(41, -2);
                    } else if (i75 == 31) {
                        qt.y0(41, -3);
                    } else if (i75 >= 1 && i75 <= 29) {
                        qt.y0(41, (i75 + 35) * 5);
                    } else if (i75 < 33 || i75 > 38) {
                        qt.y0(41, -1);
                    } else {
                        qt.y0(41, ((i75 - 33) * 5) + 150);
                    }
                    int i76 = nt.f8633a;
                    if (i76 == 3473863 || i76 == 3539399) {
                        int i77 = i2 + 11;
                        qt.y0(29, (bArr[i77] >> 4) & 15);
                        qt.y0(30, (bArr[i77] >> 0) & 15);
                    }
                    break;
                }
                break;
            case 41:
                qt.k(bArr[i2 + 2], bArr[i2 + 3], false, 380);
                break;
            case 42:
                int i78 = i2 + 2;
                int i79 = ((((bArr[i78] >> 2) & 1) << 3) & 8) | ((((bArr[i78] >> 3) & 1) << 4) & 16) | ((u0.b.f17366w << 6) & 64);
                o1.x[] xVarArr = nt.f8643f;
                o1.x.C(xVarArr, 1049, new int[]{11, i79}, null, null);
                l0.c0.N1((bArr[i78] >> 2) & 1, (bArr[i78] >> 3) & 1, 0);
                qt.y0(1032, ((bArr[i2 + 3] & 255) << 8) | ((bArr[i2 + 4] & 255) << 0));
                qt.y0(123, (((bArr[i2 + 7] & 255) << 16) & Spanned.SPAN_PRIORITY) | (((bArr[i2 + 8] & 255) << 8) & 65280) | ((bArr[i2 + 9] & 255) << 0));
                int i80 = (((bArr[i2 + 10] & 255) << 8) & 65280) | ((bArr[i2 + 11] & 255) << 0);
                qt.y0(124, i80);
                qt.y0(98, i80);
                o1.x.C(xVarArr, 1049, new int[]{5, i80}, null, null);
                int i81 = bArr[i2 + 12] & 255;
                if (i81 == 0) {
                    u0.d.A3(0);
                } else if ((i81 & 128) == 128) {
                    u0.d.A3(1000 - ((256 - i81) * 10));
                } else {
                    u0.d.A3((i81 * 10) + 1000);
                }
                break;
            case 43:
                int i82 = i2 + 2;
                int i83 = (bArr[i82] & 255) << 24;
                int i84 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255);
                if (i84 == 65535) {
                    i84 = 0;
                }
                qt.y0(149, i84 | i83);
                qt.y0(150, bArr[i82] & 255);
                qt.y0(152, i83 | ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255));
                qt.y0(151, (bArr[i2 + 8] & 255) | ((bArr[i2 + 7] & 255) << 8));
                break;
            default:
                switch (b6) {
                    case 48:
                        qt.L(new String(bArr, i2 + 2, i3 - 2));
                        break;
                    case 49:
                        int i85 = i2 + 2;
                        qt.y0(128, (bArr[i85] >> 4) & 15);
                        int i86 = (bArr[i85] >> 0) & 15;
                        if (B0 == 1) {
                            i86 = 14 - i86;
                        }
                        qt.y0(129, i86);
                        int i87 = i2 + 3;
                        qt.y0(130, (bArr[i87] >> 4) & 15);
                        qt.y0(131, (bArr[i87] >> 0) & 15);
                        int i88 = i2 + 4;
                        qt.y0(132, (bArr[i88] >> 4) & 15);
                        qt.y0(133, (bArr[i88] >> 0) & 15);
                        qt.y0(134, (bArr[i2 + 5] >> 0) & 255);
                        int i89 = i2 + 6;
                        qt.y0(135, (bArr[i89] >> 0) & 1);
                        qt.y0(146, (bArr[i89] >> 4) & 3);
                        break;
                    case 50:
                        byte b17 = bArr[i2 + 2];
                        int i90 = b17 & 1;
                        int i91 = i90 >> 6;
                        if (i90 != 0) {
                            if (i91 == 0) {
                                B3(1);
                            }
                            this.f5555v = true;
                        } else {
                            this.f5555v = false;
                        }
                        int i92 = (b17 & 8) == 0 ? 0 : 1;
                        f5509k0 = i92;
                        qt.y0(Process.MEDIA_UID, i92);
                        if (u0.b.f17357r0 != 0) {
                            if (!qt.k0()) {
                                if (nt.f8633a != 10879431) {
                                    if (f5509k0 != 0) {
                                        qt.a(1);
                                    } else {
                                        qt.a(0);
                                    }
                                    break;
                                } else {
                                    int i93 = this.f5530d;
                                    int i94 = f5509k0;
                                    if (i93 != i94) {
                                        this.f5530d = i94;
                                        if (i94 == 1) {
                                            if (!o1.u.T(a.b.O)) {
                                                qt.t();
                                            }
                                            break;
                                        } else if (i94 == 0 && o1.u.T(a.b.O)) {
                                            qt.f();
                                            break;
                                        }
                                    }
                                }
                            }
                        } else {
                            int i95 = this.f5530d;
                            int i96 = f5509k0;
                            if (i95 != i96) {
                                this.f5530d = i96;
                                if (!qt.k0()) {
                                    int i97 = this.f5530d;
                                    if (i97 == 1) {
                                        if (!o1.u.a0()) {
                                            qt.y0(164, 1);
                                            SystemProperties.set("persist.lesc.video.ignore", "true");
                                            a.i.a0(200L);
                                            this.f5534f = true;
                                            o1.u.z();
                                        }
                                        break;
                                    } else if (i97 == 0 && this.f5534f && o1.u.a0()) {
                                        qt.y0(164, 0);
                                        a.i.a0(350L);
                                        SystemProperties.set("persist.lesc.video.ignore", "false");
                                        break;
                                    }
                                }
                            }
                        }
                        break;
                    default:
                        switch (b6) {
                            case 85:
                                if (nt.f8633a == 6619590) {
                                    int i98 = i2 + 5;
                                    qt.y0(37, (bArr[i98] >> 7) & 1);
                                    int i99 = (bArr[i98] >> 7) & 1;
                                    int i100 = i2 + 2;
                                    int i101 = bArr[i100] & 255;
                                    int i102 = i2 + 3;
                                    int i103 = bArr[i102] & 255;
                                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                                        i101 = bArr[i102] & 255;
                                        i103 = bArr[i100] & 255;
                                    }
                                    if (i101 == 16) {
                                        qt.y0(27, -2);
                                    } else if (i101 == 80) {
                                        qt.y0(27, -3);
                                    } else if (i99 == 1) {
                                        if (i101 < 34 || i101 > 54) {
                                            qt.y0(27, -1);
                                        } else {
                                            qt.y0(27, (i101 * 10) + 310);
                                        }
                                    } else if (i101 < 32 || i101 > 64) {
                                        qt.y0(27, -1);
                                    } else {
                                        qt.y0(27, i101 * 5);
                                    }
                                    if (i103 == 16) {
                                        qt.y0(28, -2);
                                    } else if (i103 == 80) {
                                        qt.y0(28, -3);
                                    } else if (i99 == 1) {
                                        if (i103 < 34 || i103 > 54) {
                                            qt.y0(28, -1);
                                        } else {
                                            qt.y0(28, (i103 * 10) + 310);
                                        }
                                    } else if (i103 < 32 || i103 > 64) {
                                        qt.y0(28, -1);
                                    } else {
                                        qt.y0(28, i103 * 5);
                                    }
                                    int i104 = i2 + 4;
                                    qt.y0(21, bArr[i104] & DhcpPacket.DHCP_DOMAIN_NAME);
                                    switch ((bArr[i104] >> 4) & 15) {
                                        case 1:
                                            i8 = 0;
                                            i9 = 0;
                                            i10 = 1;
                                            break;
                                        case 2:
                                            i8 = 0;
                                            i10 = 1;
                                            i9 = i10;
                                            break;
                                        case 3:
                                            i8 = 0;
                                            i10 = 0;
                                            i9 = 1;
                                            break;
                                        case 4:
                                            i10 = 0;
                                            i8 = 1;
                                            i9 = 1;
                                            break;
                                        case 5:
                                            i9 = 0;
                                            i8 = 1;
                                            i10 = 1;
                                            break;
                                        case 6:
                                            i10 = 0;
                                            i9 = 0;
                                            i8 = 1;
                                            break;
                                        case 7:
                                            i8 = 1;
                                            i10 = i8;
                                            i9 = i10;
                                            break;
                                        default:
                                            i8 = 0;
                                            i10 = i8;
                                            i9 = i10;
                                            break;
                                    }
                                    qt.y0(18, i8);
                                    qt.y0(19, i10);
                                    qt.y0(20, i9);
                                    qt.y0(67, (bArr[i98] >> 2) & 1);
                                    qt.y0(17, (bArr[i98] >> 3) & 1);
                                    int i105 = i2 + 6;
                                    qt.y0(13, (bArr[i105] >> 0) & 1);
                                    qt.y0(11, (bArr[i105] >> 1) & 1);
                                    qt.y0(62, (bArr[i105] >> 2) & 1);
                                    qt.y0(12, (bArr[i105] >> 3) & 1);
                                    qt.y0(16, (bArr[i105] >> 6) & 1);
                                    qt.y0(15, (bArr[i105] >> 7) & 1);
                                    int i106 = bArr[i2 + 7] & 255;
                                    if (i106 == 0 || i106 == 255) {
                                        u0.d.A3(0);
                                    } else {
                                        u0.d.A3((i106 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                                    }
                                    break;
                                }
                                break;
                            case 86:
                                if (nt.f8633a == 6619590) {
                                    int i107 = i2 + 6;
                                    qt.y0(71, (bArr[i107] >> 1) & 1);
                                    qt.y0(66, (bArr[i107] >> 2) & 1);
                                    qt.y0(52, (bArr[i107] >> 3) & 1);
                                    break;
                                }
                                break;
                            case 87:
                                if (nt.f8633a == 6619590) {
                                    int i108 = i2 + 2;
                                    qt.y0(29, (bArr[i108] >> 4) & 3);
                                    qt.y0(30, (bArr[i108] >> 0) & 3);
                                    qt.y0(31, (bArr[i108] >> 6) & 3);
                                    qt.y0(32, (bArr[i108] >> 2) & 3);
                                    int i109 = i2 + 5;
                                    qt.y0(49, (bArr[i109] >> 0) & 1);
                                    qt.y0(50, (bArr[i109] >> 1) & 1);
                                    break;
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
        this.K.j();
        l0.b0.o0(this.f5541i0);
        qt.q0(this.f5537g0);
        u0.c.f17374a.d(this.f5535f0);
        l0.b0.p0(this.J);
        u0.c.f17386m.d(this.I);
        y0.g.f18110t.d(this.A);
        h0.d.f2462a.d(this.G);
        u0.c.G.d(this.D);
        u0.c.f17399z.d(this.f5557x);
        Intent intent = new Intent("android.fyt.screenbutton.CanbusHide");
        intent.setPackage("com.fyt.screenbutton");
        App.c().startService(intent);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 166) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 27) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            E3(38, iArr[0]);
        }
        if (i2 == 57) {
            I3(iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
            return;
        }
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 0) {
                E3(33, 1);
            } else if (iArr[0] == 1) {
                E3(33, 2);
            } else if (iArr[0] == 3) {
                E3(33, 3);
            } else if (iArr[0] == 2) {
                E3(33, 6);
            }
            if (f5509k0 == 0 || iArr[0] != 4) {
                return;
            }
            E3(32, 0);
            return;
        }
        if (i2 == 1029) {
            if (T2(iArr, 2)) {
                int iW = (iArr[1] * 255) / a.f.w();
                int i3 = (iArr[2] * 255) / a.f.i();
                if (App.c().getResources().getConfiguration().orientation == 1) {
                    i3 = (iArr[2] * 255) / BluetoothClass.Device.PHONE_CORDLESS;
                }
                if (iArr[0] == 0) {
                    z.k.s(227, 134, 2, iW, i3);
                    return;
                } else {
                    z.k.s(227, 134, 2, 0, 0);
                    return;
                }
            }
            return;
        }
        if (i2 == 29) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            E3(37, iArr[0]);
            return;
        }
        if (i2 == 30) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            qt.y0(158, iArr[0]);
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
                    E3(6, iArr[0]);
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    E3(0, iArr[0]);
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    E3(1, iArr[0]);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    E3(2, iArr[0]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    E3(3, iArr[0]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    E3(4, iArr[0]);
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
                    E3(5, iArr[0]);
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
                    E3(7, iArr[0]);
                    break;
                }
                break;
            case 8:
                E3(8, 0);
                break;
            case 9:
                E3(9, 0);
                break;
            case 10:
                E3(10, 0);
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    E3(12, iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    E3(13, iArr[0]);
                    break;
                }
                break;
            case 13:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    E3(14, iArr[0]);
                    break;
                }
                break;
            case 14:
                if (iArr != null && iArr.length > 0) {
                    int i4 = iArr[0];
                    if (i4 == 0) {
                        E3(15, 0);
                        break;
                    } else if (i4 == 1) {
                        E3(15, 1);
                        break;
                    }
                }
                break;
            case 15:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    E3(16, iArr[0]);
                    break;
                }
                break;
            case 16:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    E3(17, iArr[0]);
                    break;
                }
                break;
            case 17:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    E3(18, iArr[0]);
                    break;
                }
                break;
            case 18:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    E3(19, iArr[0]);
                    break;
                }
                break;
            case 19:
                if (iArr != null && iArr.length > 0) {
                    E3(35, iArr[0]);
                    break;
                }
                break;
            case 20:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] == 65) {
                        z.k.s(227, -112, 2, 65, 1);
                        z.k.s(227, -112, 2, 65, 2);
                        z.k.s(227, -112, 2, 65, 3);
                    } else if (iArr[0] == 31) {
                        z.k.s(227, -112, 2, 31, 0);
                    }
                    break;
                }
                break;
            case 21:
                if (iArr != null && iArr.length > 0) {
                    E3(34, iArr[0]);
                    break;
                }
                break;
            case 22:
                if (iArr != null && iArr.length > 1) {
                    if (!SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        if (iArr[0] == 42 && iArr[1] == 1) {
                            if (nt.f8645g[67] == 1) {
                                qt.y0(67, 0);
                            } else {
                                qt.y0(67, 1);
                            }
                        }
                        C3(iArr[0], iArr[1]);
                    } else if (iArr[0] == 2) {
                        C3(4, iArr[1]);
                    } else if (iArr[0] == 3) {
                        C3(5, iArr[1]);
                    } else if (iArr[0] == 4) {
                        C3(2, iArr[1]);
                    } else if (iArr[0] != 5) {
                        C3(iArr[0], iArr[1]);
                    } else {
                        C3(3, iArr[1]);
                    }
                    break;
                }
                break;
            case 23:
                if (iArr != null && iArr.length > 0) {
                    E3(20, iArr[0]);
                    break;
                }
                break;
            case 24:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 51, 1, (byte) iArr[0]);
                    break;
                }
                break;
            case 25:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 132, 2, iArr[0], iArr[1]);
                    break;
                }
                break;
            default:
                switch (i2) {
                    case 33:
                        U3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, (byte) iArr[0], (byte) iArr[1], 0});
                        break;
                    case 34:
                        int i5 = nt.f8633a;
                        if (i5 == 5243335 || i5 == 5308871 || i5 == 5505479) {
                            if (iArr[0] != 1) {
                                if (iArr[0] == 0) {
                                    l0.b0.l0(62, 0);
                                    l0.b0.l0(62, 1);
                                }
                            } else if (!qt.i0().equals("com.syu.carinfo.air.Air_Activity_LZ_Haites_Toyota_UI")) {
                                D3();
                            }
                        } else if (iArr[0] != 1) {
                            if (iArr[0] == 0) {
                                l0.b0.l0(62, 0);
                                l0.b0.l0(62, 1);
                            }
                        } else if (!qt.i0().equals("com.syu.carinfo.air.Air_Activity_WC_YL_Toyota_UI")) {
                            D3();
                        }
                        break;
                    case 35:
                        qt.y0(158, iArr[0]);
                        break;
                    default:
                        switch (i2) {
                            case 40:
                                if (T2(iArr, 2)) {
                                    if (iArr[0] != 39) {
                                        z.k.s(227, -125, 2, iArr[0], iArr[1]);
                                    } else {
                                        J3(iArr[1]);
                                    }
                                }
                                break;
                            case 41:
                                if (T2(iArr, 1)) {
                                    if (nt.U == 1) {
                                        if (iArr[0] == 1) {
                                            o1.x.x(nt.f8643f, 1001, 0);
                                        } else {
                                            o1.x.x(nt.f8643f, 1001, 1);
                                        }
                                    }
                                    z.k.s(227, -29, 1, iArr[0]);
                                }
                                break;
                            case 42:
                                if (T2(iArr, 2)) {
                                    z.k.s(227, -122, 2, iArr[0], iArr[1]);
                                }
                                break;
                            case 43:
                                if (T2(iArr, 2)) {
                                    z.k.s(227, 144, 2, iArr[0], iArr[1]);
                                }
                                break;
                            case 44:
                                if (T2(iArr, 2)) {
                                    int i6 = iArr[0];
                                    if (i6 != 7) {
                                        switch (i6) {
                                            case 97:
                                                M3(iArr[1]);
                                                break;
                                            case 98:
                                                L3(iArr[1]);
                                                break;
                                            case 99:
                                                N3(iArr[1]);
                                                break;
                                            default:
                                                z.k.s(227, 132, 2, iArr[0], iArr[1]);
                                                break;
                                        }
                                    } else {
                                        T3(iArr[1]);
                                        z.k.s(227, 132, 2, iArr[0], iArr[1]);
                                        break;
                                    }
                                }
                                break;
                            case 45:
                                P3(iArr[0]);
                                O3(iArr[1]);
                                break;
                            case 46:
                                if (iArr[0] == 1) {
                                    y0.h.u0(f5513o0);
                                }
                                if (nt.U == 1) {
                                    if (iArr[0] == 1) {
                                        o1.x.x(nt.f8643f, 1001, 0);
                                    } else {
                                        o1.x.x(nt.f8643f, 1001, 1);
                                    }
                                }
                                z.k.s(227, 227, 1, iArr[0]);
                                break;
                            case 47:
                                R3(iArr[0]);
                                break;
                            case 48:
                                H3(iArr[0]);
                                break;
                            case 49:
                                F3(iArr[0]);
                                break;
                            case 50:
                                G3(iArr[0]);
                                break;
                            case 51:
                                Q3(iArr[0]);
                                break;
                            case 52:
                                b3(iArr[0]);
                                break;
                            case 53:
                                K3(iArr[0]);
                                break;
                            case 54:
                                S3(iArr[0]);
                                break;
                        }
                        break;
                }
                break;
        }
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
            int i9 = nt.f8633a;
            if (i9 == 4063687 || i9 == 4129223 || i9 == 4719047) {
                int[] iArr = new int[bArr.length];
                int length = bArr.length - 1;
                for (int i10 = 0; i10 < length; i10++) {
                    iArr[i10] = bArr[i10] & 255;
                }
                o1.x.B(nt.f8643f, 1052, iArr);
            }
        }
        int i11 = nt.f8633a;
        if (i11 == 4129223 || i11 == 4063687 || i11 == 4719047) {
            if (bArr == null || bArr.length <= 0) {
                return;
            }
            if (this.f5549p + bArr.length > 1024) {
                this.f5549p = 0;
                this.f5550q = 0;
                this.f5551r = 0;
            }
            System.arraycopy(bArr, 0, this.f5548o, this.f5549p, bArr.length);
            int length2 = this.f5549p + bArr.length;
            this.f5549p = length2;
            int i12 = this.f5551r;
            if (i12 != 0) {
                if (i12 >= length2) {
                    return;
                }
                byte b2 = this.f5548o[2];
                int i13 = 3;
                while (true) {
                    i4 = this.f5551r;
                    if (i13 >= i4) {
                        break;
                    }
                    b2 = (byte) (b2 + this.f5548o[i13]);
                    i13++;
                }
                byte b3 = (byte) ((b2 - 1) & 255);
                byte[] bArr2 = this.f5548o;
                if (b3 == bArr2[i4]) {
                    U2(bArr2, 2, bArr2[2]);
                    this.f5550q = this.f5551r + 1;
                } else {
                    this.f5550q = 2;
                }
                this.f5551r = 0;
            }
            int i14 = this.f5549p - 3;
            while (true) {
                i2 = this.f5550q;
                if (i2 >= i14) {
                    break;
                }
                byte[] bArr3 = this.f5548o;
                if (bArr3[i2] == 90 && bArr3[i2 + 1] == -91) {
                    if (this.f5551r > 512) {
                        this.f5551r = 0;
                    } else {
                        int i15 = bArr3[i2 + 2] + i2 + 4;
                        this.f5551r = i15;
                        if (i15 >= this.f5549p) {
                            this.f5551r = i15 - i2;
                            break;
                        }
                        byte b4 = bArr3[i2 + 2];
                        int i16 = i2 + 3;
                        while (true) {
                            i3 = this.f5551r;
                            if (i16 >= i3) {
                                break;
                            }
                            b4 = (byte) (b4 + this.f5548o[i16]);
                            i16++;
                        }
                        byte b5 = (byte) ((b4 - 1) & 255);
                        byte[] bArr4 = this.f5548o;
                        if (b5 == bArr4[i3]) {
                            int i17 = this.f5550q;
                            U2(bArr4, i17 + 2, bArr4[i17 + 2]);
                            this.f5550q = this.f5551r;
                        } else {
                            this.f5550q++;
                        }
                        this.f5551r = 0;
                    }
                }
                this.f5550q++;
            }
            if (i2 != 0) {
                int i18 = this.f5549p - i2;
                this.f5549p = i18;
                if (i18 != 0) {
                    byte[] bArr5 = this.f5548o;
                    System.arraycopy(bArr5, i2, bArr5, 0, i18);
                }
                this.f5550q = 0;
                return;
            }
            return;
        }
        if (i11 != 5112263 && i11 != 5177799 && i11 != 5243335 && i11 != 5308871 && i11 != 5505479) {
            if (bArr == null || bArr.length <= 0) {
                a.i.a0(100L);
                return;
            }
            if (this.f5549p + bArr.length > 1024) {
                this.f5549p = 0;
                this.f5550q = 0;
                this.f5551r = 0;
            }
            System.arraycopy(bArr, 0, this.f5548o, this.f5549p, bArr.length);
            int length3 = this.f5549p + bArr.length;
            this.f5549p = length3;
            int i19 = this.f5551r;
            if (i19 != 0) {
                if (i19 >= length3) {
                    return;
                }
                byte b6 = this.f5548o[1];
                int i20 = 2;
                while (true) {
                    i8 = this.f5551r;
                    if (i20 >= i8) {
                        break;
                    }
                    b6 = (byte) (b6 + this.f5548o[i20]);
                    i20++;
                }
                byte b7 = (byte) (b6 ^ 255);
                byte[] bArr6 = this.f5548o;
                if (b7 == bArr6[i8]) {
                    U2(bArr6, 1, i8 - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f5550q = this.f5551r + 1;
                } else {
                    this.f5550q = 1;
                }
                this.f5551r = 0;
            }
            int i21 = this.f5549p - 2;
            while (true) {
                i6 = this.f5550q;
                if (i6 >= i21) {
                    break;
                }
                byte[] bArr7 = this.f5548o;
                if (bArr7[i6] == 46) {
                    int i22 = bArr7[i6 + 2] & 255;
                    this.f5551r = i22;
                    int i23 = i22 + i6 + 3;
                    this.f5551r = i23;
                    if (i23 >= this.f5549p) {
                        this.f5551r = i23 - i6;
                        break;
                    }
                    byte b8 = bArr7[i6 + 1];
                    int i24 = i6 + 2;
                    while (true) {
                        i7 = this.f5551r;
                        if (i24 >= i7) {
                            break;
                        }
                        b8 = (byte) (b8 + this.f5548o[i24]);
                        i24++;
                    }
                    byte b9 = (byte) (b8 ^ 255);
                    byte[] bArr8 = this.f5548o;
                    if (b9 == bArr8[i7]) {
                        int i25 = this.f5550q;
                        U2(bArr8, i25 + 1, (i7 - i25) - 1);
                        z.a.f18158i.i(new byte[]{-1});
                        this.f5550q = this.f5551r;
                    } else {
                        this.f5550q++;
                    }
                    this.f5551r = 0;
                }
                this.f5550q++;
            }
            if (i6 != 0) {
                int i26 = this.f5549p - i6;
                this.f5549p = i26;
                if (i26 != 0) {
                    byte[] bArr9 = this.f5548o;
                    System.arraycopy(bArr9, i6, bArr9, 0, i26);
                }
                this.f5550q = 0;
                return;
            }
            return;
        }
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f5549p + bArr.length > 1024) {
            this.f5549p = 0;
            this.f5550q = 0;
            this.f5551r = 0;
        }
        System.arraycopy(bArr, 0, this.f5548o, this.f5549p, bArr.length);
        int length4 = this.f5549p + bArr.length;
        this.f5549p = length4;
        int i27 = this.f5551r;
        if (i27 != 0) {
            if (i27 >= length4) {
                return;
            }
            byte b10 = this.f5548o[0];
            int i28 = 0;
            while (true) {
                i5 = this.f5551r;
                if (i28 >= i5) {
                    break;
                }
                b10 = (byte) (b10 + this.f5548o[i28]);
                i28++;
            }
            byte b11 = (byte) (b10 & 255);
            byte[] bArr10 = this.f5548o;
            if (b11 == bArr10[i5]) {
                this.f5552s = bArr10[3];
                this.f5550q = i5 + 1;
            } else {
                this.f5550q = 1;
            }
            this.f5551r = 0;
        }
        int i29 = this.f5549p - 1;
        while (true) {
            int i30 = this.f5550q;
            if (i30 >= i29) {
                break;
            }
            if (this.f5548o[i30] == 106) {
                this.f5551r = i30 + 4;
                a.f.p().t(LogType.CANBUS, "mFrameStartIndex--> " + this.f5550q + "mChecksumIndex--> " + this.f5551r);
                int i31 = this.f5551r;
                if (i31 >= this.f5549p) {
                    this.f5551r = i31 - this.f5550q;
                    break;
                }
                byte[] bArr11 = this.f5548o;
                int i32 = this.f5550q;
                byte b12 = bArr11[i32];
                for (int i33 = i32 + 1; i33 < this.f5551r; i33++) {
                    b12 = (byte) (b12 + this.f5548o[i33]);
                }
                byte b13 = (byte) (b12 & 255);
                a.f.p().t(LogType.CANBUS, "checksum2--> " + ((int) b13) + "DATA_MISC[mChecksumIndex]--> " + ((int) this.f5548o[this.f5551r]));
                byte[] bArr12 = this.f5548o;
                int i34 = this.f5551r;
                if (b13 == bArr12[i34]) {
                    this.f5552s = bArr12[this.f5550q + 3];
                    this.f5550q = i34;
                } else {
                    this.f5550q++;
                }
                this.f5551r = 0;
            }
            this.f5550q++;
        }
        int i35 = this.f5550q;
        if (i35 != 0) {
            int i36 = this.f5549p - i35;
            this.f5549p = i36;
            if (i36 != 0) {
                byte[] bArr13 = this.f5548o;
                System.arraycopy(bArr13, i35, bArr13, 0, i36);
            }
            this.f5550q = 0;
        }
    }

    public final void b3(int i2) {
        int i3 = (this.f5543j0 + 1) % 2;
        this.f5543j0 = i3;
        byte[] bArr = new byte[8];
        bArr[0] = 46;
        bArr[1] = DhcpPacket.DHCP_LEASE_TIME;
        bArr[2] = 4;
        bArr[3] = (byte) i2;
        bArr[4] = (byte) (i3 == 0 ? 34 : 204);
        bArr[5] = 0;
        bArr[6] = 0;
        bArr[7] = 0;
        U3(bArr);
    }

    public final void c3(boolean z2) {
        if (u0.b.f17306a0 == 0) {
            return;
        }
        n1.b bVarP = a.f.p();
        LogType logType = LogType.CANBUS;
        bVarP.t(logType, "SoundChangeTo 1111111=== " + this.E);
        if (this.E == z2) {
            return;
        }
        this.E = z2;
        a.f.p().t(logType, "SoundChangeTo 222222=== " + this.E);
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
}

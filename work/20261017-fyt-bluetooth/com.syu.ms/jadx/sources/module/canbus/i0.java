package module.canbus;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
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
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class i0 extends lt {

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static int f14257h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static int f14258i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static int f14259j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static int f14260k0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14264c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f14265d;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public i f14277p;
    public static int[] W = {0, 0, 7, 3, 8, 2, 6, 4, 6, 1, 9, 10, 12, 9, 9, 14, 9, 11, 13, 5, 1};
    public static int X = 0;
    public static int Y = 16;
    public static int Z = 16;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static int f14250a0 = 16;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static int f14251b0 = 16;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static int f14252c0 = 16;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static int f14253d0 = 10;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static int f14254e0 = 0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static int f14255f0 = 0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static int f14256g0 = 0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static final int[] f14261l0 = {6, 7, 8, 9, 10, 12, 14, 15, 16, 17, 18, 20, 22, 23, 24, 25, 26};

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static final o1.f<h> f14262m0 = new o1.f<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14266e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f14267f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{11, 2}, new int[]{23, 1}, new int[]{32, 27}, new int[]{33, 28}, new int[]{69, 76}, new int[]{70, 1}, new int[]{71, 18}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f14268g = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{6, 6}, new int[]{9, 12}, new int[]{16, 16}, new int[]{18, 58}, new int[]{22, 29}, new int[]{31, 53}, new int[]{32, 1}, new int[]{33, 1}, new int[]{36, 54}, new int[]{40, 18}, new int[]{43, 5}, new int[]{44, 2}, new int[]{45, 54}, new int[]{47, 5}, new int[]{51, 24}, new int[]{53, 25}, new int[]{54, 55}, new int[]{55, 3}, new int[]{56, 4}, new int[]{57, 1}, new int[]{71, 74}, new int[]{72, 75}, new int[]{73, 15}, new int[]{74, 38}, new int[]{75, 21}, new int[]{91, 3}, new int[]{92, 4}, new int[]{100, 1}, new int[]{101, -1}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14269h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14270i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f14271j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f14272k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f14273l = 0.0f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f14274m = 255;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f14275n = 255;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f14276o = new b();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f14278q = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String f14279r = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f14280s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f14281t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f14282u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f14283v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f14284w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f14285x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f14286y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f14287z = 1;
    public int A = 255;
    public final Runnable B = new c();
    public o1.g0 C = new o1.g0(getClass().getSimpleName(), 32);
    public final int D = 1;
    public final int E = 2;
    public final int F = 3;
    public final int G = 4;
    public final int H = 5;
    public final int I = 6;
    public final int J = 7;
    public final int K = 8;
    public final int L = 10;
    public final int M = 9;
    public long N = -1;
    public int O = -1;
    public Runnable P = new d();
    public int Q = 0;
    public Runnable R = new e();
    public Runnable S = new f();
    public int T = 200;
    public Runnable U = new g();
    public int V = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (qt.k0()) {
                qt.y0(180, 0);
            } else if (u0.b.f17347o == 1) {
                qt.y0(180, 1);
            } else {
                qt.y0(180, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i0 i0Var = i0.this;
            if (i0Var.f14286y == 0) {
                i0Var.f14273l = u0.b.f17359s0;
                if ((i0.this.f14273l <= 22.5d && i0.this.f14273l >= 0.0f) || (i0.this.f14273l >= 337.5d && i0.this.f14273l <= 360.0f)) {
                    i0.this.f14275n = 7;
                } else if (i0.this.f14273l > 22.5d && i0.this.f14273l < 67.5d) {
                    i0.this.f14275n = 8;
                } else if (i0.this.f14273l >= 67.5d && i0.this.f14273l <= 112.5d) {
                    i0.this.f14275n = 1;
                } else if (i0.this.f14273l > 112.5d && i0.this.f14273l < 157.5d) {
                    i0.this.f14275n = 2;
                } else if (i0.this.f14273l >= 157.5d && i0.this.f14273l <= 202.5d) {
                    i0.this.f14275n = 3;
                } else if (i0.this.f14273l > 202.5d && i0.this.f14273l < 247.5d) {
                    i0.this.f14275n = 4;
                } else if (i0.this.f14273l >= 247.5d && i0.this.f14273l <= 292.5d) {
                    i0.this.f14275n = 5;
                } else if (i0.this.f14273l <= 292.5d || i0.this.f14273l >= 337.5d) {
                    i0.this.f14275n = 3;
                } else {
                    i0.this.f14275n = 6;
                }
                if (i0.this.f14275n != i0.this.f14274m) {
                    i0 i0Var2 = i0.this;
                    int i2 = i0Var2.f14281t * 10;
                    int i3 = i0Var2.f14280s * 10;
                    int i4 = i0.this.f14283v;
                    z.k.s(227, 19, 228, (byte) (i0Var2.f14287z << 7), (byte) (i0Var2.f14286y << 7), (i2 >> 24) & 255, (i2 >> 16) & 255, (i2 >> 8) & 255, i2 & 255, i0Var2.f14284w, (i3 >> 24) & 255, (i3 >> 16) & 255, (i3 >> 8) & 255, i3 & 255, i0Var2.f14275n, i4 / BatchedScanSettings.MAX_INTERVAL_SEC, (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i4 / BatchedScanSettings.MAX_INTERVAL_SEC, (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i0.W[i0.this.f14285x], 0, 0);
                    i0 i0Var3 = i0.this;
                    i0Var3.f14274m = i0Var3.f14275n;
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i0 i0Var = i0.this;
            i0Var.f14287z = 0;
            i0Var.f14286y = 0;
            i0Var.k3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (i0.this.N == millis && i0.this.O == zIs24HourFormat) {
                return;
            }
            i0.this.N = millis;
            i0.this.O = zIs24HourFormat ? 1 : 0;
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, zIs24HourFormat ? 1 : 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, 2);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i0 i0Var = i0.this;
            i0Var.f14269h = 0;
            i0Var.f14270i = 0;
            l0.b0.b(i0Var.S);
            i0.this.Q = 5;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i0 i0Var = i0.this;
            int i2 = i0Var.Q - 1;
            i0Var.Q = i2;
            if (i2 <= 0) {
                l0.b0.p0(i0Var.S);
                i0.this.Q = 5;
            }
            if (u0.b.f17306a0 == 1) {
                i0Var.a4(i0Var.C.b(9, 0));
                int i3 = nt.f8633a;
                if (i3 == 7143868 || i3 == 15073723) {
                    i0 i0Var2 = i0.this;
                    i0Var2.j3(i0Var2.C.b(7, 10));
                    i0 i0Var3 = i0.this;
                    i0Var3.c3(i0Var3.C.b(6, 16));
                    i0 i0Var4 = i0.this;
                    i0Var4.e3(i0Var4.C.b(5, 16));
                    i0 i0Var5 = i0.this;
                    i0Var5.d3(i0Var5.C.b(2, 16));
                    i0 i0Var6 = i0.this;
                    i0Var6.f3(i0Var6.C.b(3, 16));
                    i0 i0Var7 = i0.this;
                    i0Var7.i3(i0Var7.C.b(4, 16));
                    i0 i0Var8 = i0.this;
                    i0Var8.g3(i0Var8.C.b(8, 0));
                    i0 i0Var9 = i0.this;
                    i0Var9.h3(i0Var9.C.b(10, 0));
                }
                switch (nt.f8633a) {
                    case 65982:
                        z.k.s(227, 2, 36, 135, 9);
                        break;
                    case 131518:
                        z.k.s(227, 2, 36, 136, 9);
                        break;
                    case 197054:
                        z.k.s(227, 2, 36, 137, 9);
                        break;
                    case 328124:
                    case 393660:
                    case 2097596:
                    case 2163132:
                    case 3539388:
                        z.k.s(227, 2, 36, 60, 9);
                        break;
                    case 1311166:
                    case 3473851:
                    case 3867067:
                    case 4063676:
                        i0 i0Var10 = i0.this;
                        i0Var10.Y3(i0Var10.C.b(1, 0));
                        z.k.s(227, 2, 36, 49, 9);
                        break;
                    case 1966523:
                        z.k.s(227, 2, 36, 32, 9);
                        break;
                    case 1966524:
                    case 2032060:
                        z.k.s(227, 2, 36, 64, 9);
                        break;
                    case 2032059:
                        z.k.s(227, 2, 36, 32, 9);
                        i0.this.a3();
                        break;
                    case 2097595:
                        z.k.s(227, 2, 36, 33, 9);
                        break;
                    case 2163131:
                        i0.this.a3();
                        z.k.s(227, 2, 36, 33, 9);
                        break;
                    case 2228667:
                        z.k.s(227, 2, 36, 34, 9);
                        break;
                    case 2228668:
                        z.k.s(227, 2, 36, 61, 9);
                        break;
                    case 2294203:
                        i0.this.a3();
                        z.k.s(227, 2, 36, 34, 9);
                        break;
                    case 2294204:
                        z.k.s(227, 2, 36, 62, 9);
                        break;
                    case 2359739:
                        z.k.s(227, 2, 36, 35, 9);
                        break;
                    case 2359740:
                        z.k.s(227, 2, 36, 57, 9);
                        break;
                    case 2425275:
                        i0.this.a3();
                        z.k.s(227, 2, 36, 62, 9);
                        break;
                    case 2425276:
                        z.k.s(227, 2, 36, 63, 9);
                        break;
                    case 2490811:
                        z.k.s(227, 2, 36, 36, 9);
                        break;
                    case 2556347:
                        i0.this.a3();
                        z.k.s(227, 2, 36, 36, 9);
                        break;
                    case 2621883:
                        z.k.s(227, 2, 36, 37, 9);
                        break;
                    case 2687419:
                        z.k.s(227, 2, 36, 38, 9);
                        break;
                    case 2687422:
                        z.k.s(227, 2, 36, 97, 9);
                        break;
                    case 2752955:
                        z.k.s(227, 2, 36, 39, 9);
                        break;
                    case 2818491:
                        z.k.s(227, 2, 36, 40, 9);
                        break;
                    case 2884027:
                        z.k.s(227, 2, 36, 41, 9);
                        break;
                    case 2949563:
                        z.k.s(227, 2, 36, 42, 9);
                        break;
                    case 2949564:
                    case 3015100:
                    case 3211708:
                    case 3998140:
                        z.k.s(227, 2, 36, 65, 9);
                        break;
                    case 3015099:
                        z.k.s(227, 2, 36, 43, 9);
                        break;
                    case 3080635:
                        z.k.s(227, 2, 36, 44, 9);
                        break;
                    case 3146171:
                        i0.this.a3();
                        z.k.s(227, 2, 36, 44, 9);
                        break;
                    case 3211707:
                        z.k.s(227, 2, 36, 45, 9);
                        break;
                    case 3277243:
                        z.k.s(227, 2, 36, 46, 9);
                        break;
                    case 3342779:
                        z.k.s(227, 2, 36, 47, 9);
                        break;
                    case 3342780:
                        z.k.s(227, 2, 36, 66, 9);
                        break;
                    case 3408315:
                        z.k.s(227, 2, 36, 48, 9);
                        break;
                    case 3408316:
                        z.k.s(227, 2, 36, 67, 9);
                        break;
                    case 3473852:
                        z.k.s(227, 2, 36, 128, 9);
                        break;
                    case 3670460:
                        z.k.s(227, 2, 36, 68, 9);
                        break;
                    case 3735996:
                        z.k.s(227, 2, 36, 69, 9);
                        break;
                    case 3867070:
                        z.k.s(227, 2, 36, 94, 9);
                        break;
                    case 6422971:
                        z.k.s(227, 2, 36, 52, 9);
                        break;
                    case 6488507:
                        z.k.s(227, 2, 36, 53, 9);
                        break;
                    case 7143868:
                        z.k.s(227, 2, 36, 32, 9);
                        break;
                    case 7471548:
                        z.k.s(227, 2, 36, 49, 9);
                        break;
                    case 7537084:
                        z.k.s(227, 2, 36, 43, 9);
                        break;
                    case 7602620:
                        z.k.s(227, 2, 36, 33, 9);
                        break;
                    case 7668156:
                        z.k.s(227, 2, 36, 52, 9);
                        break;
                    case 9961915:
                        z.k.s(227, 2, 36, 51, 9);
                        break;
                    case 10027451:
                        z.k.s(227, 2, 36, 54, 9);
                        break;
                    case 10092987:
                        z.k.s(227, 2, 36, 55, 9);
                        break;
                    case 10158523:
                        z.k.s(227, 2, 36, 56, 9);
                        break;
                    case 11993532:
                    case 12059068:
                    case 12124604:
                    case 12190140:
                        z.k.s(227, 2, 36, 90, 9);
                        break;
                    case 12255676:
                        z.k.s(227, 2, 36, 2, 9);
                        break;
                    case 12321212:
                        z.k.s(227, 2, 36, 38, 9);
                        break;
                    case 12386748:
                        z.k.s(227, 2, 36, 3, 9);
                        break;
                    case 12452284:
                        z.k.s(227, 2, 36, 4, 9);
                        break;
                    case 12517820:
                    case 12583356:
                        z.k.s(227, 2, 36, 1, 9);
                        break;
                    case 12648892:
                        z.k.s(227, 2, 36, 32, 9);
                        break;
                    case 12714428:
                        z.k.s(227, 2, 36, 44, 9);
                        break;
                    case 12779964:
                        z.k.s(227, 2, 36, 5, 9);
                        break;
                    case 12845500:
                        z.k.s(227, 2, 36, 38, 9);
                        break;
                    case 12911036:
                        z.k.s(227, 2, 36, 65, 9);
                        break;
                    case 12976572:
                        z.k.s(227, 2, 36, 32, 9);
                        break;
                    case 13042108:
                        z.k.s(227, 2, 36, 6, 9);
                        break;
                    case 13107644:
                        z.k.s(227, 2, 36, 7, 9);
                        break;
                    case 13173180:
                    case 13238716:
                        z.k.s(227, 2, 36, 8, 9);
                        break;
                    case 13304252:
                        z.k.s(227, 2, 36, 9, 9);
                        break;
                    case 13369788:
                        z.k.s(227, 2, 36, 10, 9);
                        break;
                    case 13435324:
                        z.k.s(227, 2, 36, 70, 9);
                        break;
                    case 13500860:
                        z.k.s(227, 2, 36, 47, 9);
                        break;
                    case 13566396:
                        z.k.s(227, 2, 36, 11, 9);
                        break;
                    case 13631932:
                        z.k.s(227, 2, 36, 72, 9);
                        break;
                    case 13697468:
                        z.k.s(227, 2, 36, 73, 9);
                        break;
                    case 13763004:
                        z.k.s(227, 2, 36, 74, 9);
                        break;
                    case 13828540:
                        z.k.s(227, 2, 36, 18, 9);
                        break;
                    case 13894076:
                        z.k.s(227, 2, 36, 19, 9);
                        break;
                    case 13959612:
                        z.k.s(227, 2, 36, 16, 9);
                        break;
                    case 14025148:
                        z.k.s(227, 2, 36, 17, 9);
                        break;
                    case 14090684:
                        z.k.s(227, 2, 36, 20, 9);
                        break;
                    case 14156220:
                        z.k.s(227, 2, 36, 21, 9);
                        break;
                    case 14221756:
                        z.k.s(227, 2, 36, 22, 9);
                        break;
                    case 14287292:
                        z.k.s(227, 2, 36, 23, 9);
                        break;
                    case 14352828:
                        z.k.s(227, 2, 36, 24, 9);
                        break;
                    case 14418364:
                        z.k.s(227, 2, 36, 25, 9);
                        break;
                    case 14483899:
                    case 14549435:
                        z.k.s(227, 2, 36, 58, 9);
                        break;
                    case 14483900:
                        z.k.s(227, 2, 36, 44, 9);
                        break;
                    case 14549436:
                        z.k.s(227, 2, 36, 26, 9);
                        break;
                    case 14614972:
                        z.k.s(227, 2, 36, 53, 9);
                        break;
                    case 14680508:
                        z.k.s(227, 2, 36, 27, 9);
                        break;
                    case 14746044:
                        z.k.s(227, 2, 36, 28, 9);
                        break;
                    case 14811580:
                        z.k.s(227, 2, 36, 40, 9);
                        break;
                    case 14942652:
                        z.k.s(227, 2, 36, 51, 9);
                        break;
                    case 15008188:
                        z.k.s(227, 2, 36, 48, 9);
                        break;
                    case 15073723:
                        z.k.s(227, 2, 36, 59, 9);
                        break;
                    case 15073724:
                        z.k.s(227, 2, 36, 30, 9);
                        break;
                    case 15139260:
                        z.k.s(227, 2, 36, 31, 9);
                        break;
                    case 15204796:
                        z.k.s(227, 2, 36, 80, 9);
                        break;
                    case 15270332:
                        z.k.s(227, 2, 36, 81, 9);
                        break;
                    case 15335868:
                        z.k.s(227, 2, 36, 82, 9);
                        break;
                    case 15401404:
                        z.k.s(227, 2, 36, 83, 9);
                        break;
                    case 15466940:
                        z.k.s(227, 2, 36, 84, 9);
                        break;
                    case 15532476:
                        z.k.s(227, 2, 36, 85, 9);
                        break;
                    case 15598012:
                        z.k.s(227, 2, 36, 86, 9);
                        break;
                    case 15663548:
                        z.k.s(227, 2, 36, 87, 9);
                        break;
                    case 15729084:
                        z.k.s(227, 2, 36, 88, 9);
                        break;
                    case 15794620:
                        z.k.s(227, 2, 36, 89, 9);
                        break;
                    case 15925692:
                        z.k.s(227, 2, 36, 12, 9);
                        break;
                    case 15991228:
                        z.k.s(227, 2, 36, 13, 9);
                        break;
                    case 16056764:
                        z.k.s(227, 2, 36, 14, 9);
                        break;
                    case 16122300:
                        z.k.s(227, 2, 36, 75, 9);
                        break;
                    case 16187836:
                        z.k.s(227, 2, 36, 76, 9);
                        break;
                    case 16253372:
                        z.k.s(227, 2, 36, 77, 9);
                        break;
                    case 16318908:
                        z.k.s(227, 2, 36, 129, 9);
                        break;
                    case 16384444:
                        z.k.s(227, 2, 36, 130, 9);
                        break;
                    case 16449980:
                        z.k.s(227, 2, 36, 131, 9);
                        break;
                    case 16515516:
                        z.k.s(227, 2, 36, 132, 9);
                        break;
                    case 16581052:
                        z.k.s(227, 2, 36, 133, 9);
                        break;
                    case 16646588:
                        z.k.s(227, 2, 36, 134, 9);
                        break;
                }
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (i0.this.T > 100) {
                    i0.E3(i0.this);
                    if (i0.this.V == i0.this.T / 100) {
                        i0.this.V = 0;
                        return;
                    }
                }
                if (i0.this.f7886a.f8308c == 1) {
                    if (i0.f14257h0 != i0.f14259j0) {
                        i0.this.Z3();
                    }
                    if (i0.f14258i0 != i0.f14260k0) {
                        i0.this.X3();
                    }
                }
            }
        }
    }

    public static class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14295a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14296b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14297c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14298d;

        public h(int i2, int i3) {
            this.f14295a = i2;
            this.f14298d = i3;
        }

        public synchronized void a(int i2) {
            this.f14296b = i2;
            if (!this.f14297c) {
                this.f14297c = true;
                o1.k.a().postDelayed(this, this.f14298d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 2, 173, this.f14295a, this.f14296b);
            this.f14297c = false;
        }
    }

    public class i extends BroadcastReceiver {
        public i() {
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0046 A[Catch: Exception -> 0x013c, TryCatch #0 {Exception -> 0x013c, blocks: (B:5:0x0023, B:7:0x002e, B:11:0x003a, B:13:0x003e, B:15:0x0046, B:17:0x0050, B:18:0x0065, B:20:0x006d, B:22:0x007b, B:24:0x0081, B:25:0x0089, B:27:0x0093, B:28:0x009c, B:30:0x00a6, B:32:0x00b6, B:34:0x00ba, B:36:0x00be, B:37:0x00c2, B:38:0x00d4, B:40:0x00de, B:41:0x00e7, B:43:0x00f1, B:44:0x00fa, B:46:0x0104, B:48:0x0113, B:51:0x011a), top: B:56:0x0023 }] */
        /* JADX WARN: Code duplicated, block: B:17:0x0050 A[Catch: Exception -> 0x013c, TryCatch #0 {Exception -> 0x013c, blocks: (B:5:0x0023, B:7:0x002e, B:11:0x003a, B:13:0x003e, B:15:0x0046, B:17:0x0050, B:18:0x0065, B:20:0x006d, B:22:0x007b, B:24:0x0081, B:25:0x0089, B:27:0x0093, B:28:0x009c, B:30:0x00a6, B:32:0x00b6, B:34:0x00ba, B:36:0x00be, B:37:0x00c2, B:38:0x00d4, B:40:0x00de, B:41:0x00e7, B:43:0x00f1, B:44:0x00fa, B:46:0x0104, B:48:0x0113, B:51:0x011a), top: B:56:0x0023 }] */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            i0 i0Var;
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
                                i0 i0Var2 = i0.this;
                                i0Var2.f14287z = 1;
                                i0Var2.f14286y = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                i0Var = i0.this;
                                i0Var.f14287z = 1;
                                i0Var.f14286y = 0;
                                if (u0.b.f17306a0 == 1) {
                                    i0Var.f14274m = 255;
                                    o1.j.b(o1.l.a(), i0.this.f14276o, 1000L);
                                }
                                z2 = true;
                                break;
                        }
                    } else {
                        i0Var = i0.this;
                        i0Var.f14287z = 1;
                        i0Var.f14286y = 0;
                        if (u0.b.f17306a0 == 1) {
                            i0Var.f14274m = 255;
                            o1.j.b(o1.l.a(), i0.this.f14276o, 1000L);
                        }
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!i0.this.f14278q.equals(extras.getString("CUR_ROAD_NAME")) && extras.getString("CUR_ROAD_NAME") != null) {
                        i0.this.f14278q = extras.getString("CUR_ROAD_NAME");
                    }
                    if (i0.this.f14281t != extras.getInt("SEG_REMAIN_DIS")) {
                        i0.this.f14281t = extras.getInt("SEG_REMAIN_DIS");
                        z2 = true;
                    }
                    if (i0.this.f14280s != extras.getInt("ROUTE_REMAIN_DIS")) {
                        i0.this.f14280s = extras.getInt("ROUTE_REMAIN_DIS");
                        i0 i0Var3 = i0.this;
                        if (i0Var3.f14287z == 0 && i0Var3.f14280s > 100 && u0.b.f17306a0 == 1) {
                            i0Var3.f14287z = 1;
                            i0Var3.f14286y = 1;
                        }
                        i0Var3.f14284w = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (i0.this.f14282u != extras.getInt("CAR_DIRECTION")) {
                        i0.this.f14282u = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (i0.this.f14283v != extras.getInt("ROUTE_REMAIN_TIME")) {
                        i0.this.f14283v = extras.getInt("ROUTE_REMAIN_TIME");
                        z2 = true;
                    }
                    if (i0.this.f14285x != extras.getInt("ICON")) {
                        i0.this.f14285x = extras.getInt("ICON");
                        i0 i0Var4 = i0.this;
                        if (i0Var4.f14285x >= 2) {
                            i0Var4.f14287z = 1;
                            i0Var4.f14286y = 1;
                        }
                        z2 = true;
                    }
                }
                if (z2) {
                    i0.this.k3();
                    o1.j.e(o1.l.a(), i0.this.B);
                    o1.j.b(o1.l.a(), i0.this.B, 20000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ i(i0 i0Var, a aVar) {
            this();
        }
    }

    public static /* synthetic */ int E3(i0 i0Var) {
        int i2 = i0Var.V;
        i0Var.V = i2 + 1;
        return i2;
    }

    public static void V3(int i2, int i3) {
        h hVarC = f14262m0.c(i2);
        if (hVarC != null) {
            hVarC.a(i3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = f14261l0;
            f14259j0 = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            f14260k0 = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8309d = 0;
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        u0.c.f17386m.a(this.R, 1);
        u0.c.f17379f.a(this.f14272k, 1);
        this.C.a();
        a aVar = null;
        switch (nt.f8633a) {
            case 328124:
            case 1966524:
            case 2032060:
            case 2097596:
            case 2163132:
            case 2687422:
            case 2949564:
            case 3015100:
            case 3211708:
            case 3342780:
            case 3408315:
            case 3408316:
            case 3473852:
            case 3539388:
            case 3998140:
            case 11993532:
            case 12059068:
            case 12124604:
            case 12190140:
            case 14942652:
            case 15008188:
            case 15073723:
                this.f7886a.f8314i = 1;
                break;
            case 393660:
            case 3867067:
                mt mtVar2 = this.f7886a;
                mtVar2.f8308c = 1;
                mtVar2.f8314i = 1;
                if (nt.a()) {
                    init();
                    l0.b0.a(this.U);
                    W3();
                }
                break;
            case 1311166:
                mt mtVar3 = this.f7886a;
                mtVar3.f8308c = 1;
                mtVar3.f8314i = 0;
                if (nt.a()) {
                    init();
                    l0.b0.a(this.U);
                    W3();
                }
                break;
            case 14483899:
                this.f7886a.f8306a = null;
                break;
            case 14549435:
                mt mtVar4 = this.f7886a;
                mtVar4.f8306a = null;
                mtVar4.f8313h = 2;
                break;
        }
        int i2 = nt.f8633a;
        if (i2 == 14483899 || i2 == 14549435) {
            return;
        }
        qt.z(l0.g0.f13049e);
        w0.e.f17815a.a(l0.g0.f13049e, 1);
        w0.e.f17819e.a(l0.g0.f13049e, 1);
        qt.z(this.P);
        o1.h.f16865a.a(this.f14276o, 1);
        this.f14277p = new i(this, aVar);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
        App.c().registerReceiver(this.f14277p, intentFilter);
        k3();
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        byte b2 = bArr[i2 + 1];
        if (b2 == -90) {
            int i13 = nt.f8633a;
            if (i13 == 7143868 || i13 == 15073723) {
                return;
            }
            qt.y0(106, bArr[i2 + 2] & 255);
            int i14 = i2 + 3;
            qt.y0(107, bArr[i14] & 255);
            int i15 = i2 + 4;
            qt.y0(108, bArr[i15] & 255);
            qt.y0(109, bArr[i2 + 5] & 255);
            qt.y0(110, bArr[i2 + 6] & 255);
            qt.y0(111, bArr[i2 + 7] & 255);
            qt.y0(112, bArr[i2 + 8] & 255);
            qt.y0(204, (bArr[i2 + 9] >> 0) & 1);
            byte b3 = bArr[i14];
            f14257h0 = o0.a(bArr[i15] & 255, 6, 26);
            f14258i0 = o0.a(b3 & 255, 6, 26);
            return;
        }
        if (b2 == -23) {
            byte b4 = bArr[i2 + 2];
            qt.y0(102, (b4 >> 6) & 3);
            qt.y0(101, (b4 >> 4) & 3);
            int i16 = i2 + 3;
            qt.y0(100, (bArr[i16] >> 5) & 1);
            qt.y0(99, (bArr[i16] >> 4) & 1);
            qt.y0(181, (bArr[i16] >> 0) & 15);
            if (((bArr[i16] >> 6) & 1) == 1) {
                qt.a(1);
            } else {
                qt.a(0);
            }
            int i17 = bArr[i16] & DhcpPacket.DHCP_DOMAIN_NAME;
            if (i17 == 0) {
                qt.y0(Process.MEDIA_UID, 0);
                return;
            }
            if (i17 <= 5) {
                qt.y0(Process.MEDIA_UID, 2);
                return;
            } else if (i17 <= 10) {
                qt.y0(Process.MEDIA_UID, 1);
                return;
            } else {
                qt.y0(Process.MEDIA_UID, 0);
                return;
            }
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 26) {
            if (qt.k0()) {
                int i18 = i2 + 4;
                l0.c0.N1((bArr[i18] >> 0) & 1, (bArr[i18] >> 1) & 1, (bArr[i18] >> 2) & 1);
            } else if (f14256g0 == 1) {
                int i19 = i2 + 4;
                if (((bArr[i19] >> 0) & 1) == 1 || ((bArr[i19] >> 1) & 1) == 1) {
                    if (!o1.u.T(a.b.O)) {
                        qt.t();
                    }
                } else if (o1.u.T(a.b.O)) {
                    qt.f();
                }
            }
            int i20 = i2 + 4;
            o1.x.C(nt.f8643f, 1049, new int[]{11, ((((bArr[i20] >> 1) & 1) << 4) & 16) | ((((bArr[i20] >> 0) & 1) << 3) & 8) | ((u0.b.f17366w << 6) & 64)}, null, null);
            return;
        }
        if (b2 == 63) {
            qt.y0(123, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(124, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(125, bArr[i2 + 6] & 255);
            qt.y0(126, bArr[i2 + 7] & 255);
            int i21 = i2 + 8;
            qt.y0(127, (bArr[i21] >> 6) & 3);
            qt.y0(128, (bArr[i21] >> 4) & 3);
            qt.y0(129, (bArr[i21] >> 2) & 3);
            qt.y0(130, (bArr[i21] >> 0) & 3);
            qt.y0(131, (bArr[i2 + 9] >> 0) & 15);
            return;
        }
        if (b2 == 65) {
            u0.d.R2(l0.c0.b1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.b1(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.b1(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.b1(bArr[i2 + 5] & 255));
            int i22 = i2 + 6;
            int i23 = bArr[i22] & 255;
            int i24 = i2 + 7;
            int i25 = bArr[i24] & 255;
            int i26 = i2 + 8;
            int i27 = bArr[i26] & 255;
            int i28 = i2 + 9;
            int i29 = bArr[i28] & 255;
            if (i23 == 0 && i25 == 0 && i27 == 0 && i29 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i23 || l0.c0.f13014h != i25 || l0.c0.f13015i != i27 || l0.c0.f13016j != i29) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i23;
            l0.c0.f13014h = i25;
            l0.c0.f13015i = i27;
            l0.c0.f13016j = i29;
            u0.d.D2(l0.c0.b1(bArr[i22] & 255));
            u0.d.E2(l0.c0.b1(bArr[i24] & 255));
            u0.d.F2(l0.c0.b1(bArr[i26] & 255));
            u0.d.G2(l0.c0.b1(bArr[i28] & 255));
            return;
        }
        if (b2 == 17) {
            byte b5 = bArr[i2 + 5];
            this.f14265d = bArr[i2 + 4] & 255;
            int i30 = 0;
            while (true) {
                iArr = this.f14267f;
                if (i30 >= iArr.length) {
                    break;
                }
                int i31 = this.f14265d;
                if (i31 == iArr[i30][0]) {
                    if (i31 == 0) {
                        break;
                    }
                    this.f14263b = i30;
                    break;
                }
                i30++;
            }
            int i32 = this.f14265d;
            if (i32 != 6) {
                if (i32 != 101) {
                    if ((b5 & 255) == 0) {
                        int i33 = this.f14263b;
                        if (i33 < iArr.length) {
                            i4 = 255;
                            if (i33 != 255) {
                                l0.b0.l0(iArr[i33][1], 1);
                            }
                        } else {
                            i4 = 255;
                        }
                        this.f14263b = i4;
                    } else if (i30 < iArr.length) {
                        l0.b0.l0(iArr[i30][1], 0);
                    }
                } else if ((b5 & 255) == 1 && !o1.u.S("com.syu.carlink")) {
                    o1.u.g("com.syu.carlink");
                }
            } else if ((b5 & 255) == 1) {
                if (nt.f8633a == 3998140) {
                    c.e.d().c(633);
                } else {
                    l0.b0.l0(26, 0);
                    l0.b0.l0(26, 1);
                }
            }
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
            return;
        }
        if (b2 == 18) {
            byte b6 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b6 >> 7) & 1);
                qt.y0(1, (b6 >> 6) & 1);
            } else {
                qt.y0(1, (b6 >> 7) & 1);
                qt.y0(2, (b6 >> 6) & 1);
            }
            qt.y0(3, (b6 >> 5) & 1);
            qt.y0(4, (b6 >> 4) & 1);
            qt.y0(5, (b6 >> 3) & 1);
            qt.y0(0, (b6 >> 2) & 1);
            qt.y0(122, bArr[i2 + 5] & 255);
            return;
        }
        if (b2 == 22) {
            qt.y0(132, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(133, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(134, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(135, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(136, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(137, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(138, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
            qt.y0(139, ((bArr[i2 + 16] << 8) & 65280) | (bArr[i2 + 17] & 255));
            qt.y0(140, ((bArr[i2 + 18] << 8) & 65280) | (bArr[i2 + 19] & 255));
            qt.y0(141, ((bArr[i2 + 20] << 8) & 65280) | (bArr[i2 + 21] & 255));
            qt.y0(153, ((bArr[i2 + 22] << 8) & 65280) | (bArr[i2 + 23] & 255));
            qt.y0(154, ((bArr[i2 + 24] << 8) & 65280) | (bArr[i2 + 25] & 255));
            qt.y0(155, ((bArr[i2 + 26] << 8) & 65280) | (bArr[i2 + 27] & 255));
            qt.y0(156, ((bArr[i2 + 28] << 8) & 65280) | (bArr[i2 + 29] & 255));
            qt.y0(157, ((bArr[i2 + 30] << 8) & 65280) | (bArr[i2 + 31] & 255));
            qt.y0(158, ((bArr[i2 + 32] << 8) & 65280) | (bArr[i2 + 33] & 255));
            qt.y0(159, ((bArr[i2 + 34] << 8) & 65280) | (bArr[i2 + 35] & 255));
            qt.y0(160, ((bArr[i2 + 36] << 8) & 65280) | (bArr[i2 + 37] & 255));
            qt.y0(161, ((bArr[i2 + 38] << 8) & 65280) | (bArr[i2 + 39] & 255));
            qt.y0(162, ((bArr[i2 + 40] << 8) & 65280) | (bArr[i2 + 41] & 255));
            qt.y0(142, bArr[i2 + 42] & 255);
            return;
        }
        if (b2 == 23) {
            qt.y0(143, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(144, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(145, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(146, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(147, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(148, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(149, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
            qt.y0(150, ((bArr[i2 + 16] << 8) & 65280) | (bArr[i2 + 17] & 255));
            qt.y0(151, ((bArr[i2 + 18] << 8) & 65280) | (bArr[i2 + 19] & 255));
            qt.y0(152, ((bArr[i2 + 20] << 8) & 65280) | (bArr[i2 + 21] & 255));
            qt.y0(163, ((bArr[i2 + 22] << 8) & 65280) | (bArr[i2 + 23] & 255));
            qt.y0(164, ((bArr[i2 + 24] << 8) & 65280) | (bArr[i2 + 25] & 255));
            qt.y0(165, ((bArr[i2 + 26] << 8) & 65280) | (bArr[i2 + 27] & 255));
            qt.y0(166, ((bArr[i2 + 28] << 8) & 65280) | (bArr[i2 + 29] & 255));
            qt.y0(167, ((bArr[i2 + 30] << 8) & 65280) | (bArr[i2 + 31] & 255));
            qt.y0(168, ((bArr[i2 + 32] << 8) & 65280) | (bArr[i2 + 33] & 255));
            qt.y0(169, ((bArr[i2 + 34] << 8) & 65280) | (bArr[i2 + 35] & 255));
            qt.y0(170, ((bArr[i2 + 36] << 8) & 65280) | (bArr[i2 + 37] & 255));
            qt.y0(171, ((bArr[i2 + 38] << 8) & 65280) | (bArr[i2 + 39] & 255));
            qt.y0(172, (bArr[i2 + 41] & 255) | ((bArr[i2 + 40] << 8) & 65280));
            return;
        }
        if (b2 == 33) {
            this.f14266e = bArr[i2 + 2] & 255;
            byte b7 = bArr[i2 + 3];
            int i34 = 0;
            while (true) {
                iArr2 = this.f14268g;
                if (i34 >= iArr2.length) {
                    break;
                }
                int i35 = this.f14266e;
                if (i35 == iArr2[i34][0]) {
                    if (i35 == 0) {
                        break;
                    }
                    this.f14264c = i34;
                    break;
                }
                i34++;
            }
            if (this.f14266e == 101) {
                if ((b7 & 255) == 1) {
                    o1.u.f("com.syu.carlink");
                    return;
                }
                return;
            } else {
                if ((b7 & 255) != 0) {
                    if (i34 < iArr2.length) {
                        l0.b0.l0(iArr2[i34][1], 0);
                        return;
                    }
                    return;
                }
                int i36 = this.f14264c;
                if (i36 < iArr2.length) {
                    i5 = 255;
                    if (i36 != 255) {
                        l0.b0.l0(iArr2[i36][1], 1);
                    }
                } else {
                    i5 = 255;
                }
                this.f14264c = i5;
                return;
            }
        }
        if (b2 == 34) {
            byte b8 = bArr[i2 + 2];
            byte b9 = bArr[i2 + 3];
            if (b8 == 1) {
                int i37 = this.f14269h;
                if (b9 != i37) {
                    if (b9 > i37) {
                        for (int i38 = 0; i38 < b9 - this.f14269h; i38++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (b9 < i37) {
                        for (int i39 = 0; i39 < this.f14269h - b9; i39++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    }
                    this.f14269h = b9;
                    return;
                }
                return;
            }
            if ((b8 == 2 || b8 == 3) && b9 != (i6 = this.f14270i)) {
                if (b9 > i6) {
                    for (int i40 = 0; i40 < b9 - this.f14270i; i40++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                } else if (b9 < i6) {
                    for (int i41 = 0; i41 < this.f14270i - b9; i41++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                }
                this.f14270i = b9;
                return;
            }
            return;
        }
        if (b2 != 49) {
            if (b2 == 50) {
                int i42 = i2 + 15;
                qt.y0(103, (bArr[i42] >> 5) & 7);
                qt.y0(104, (bArr[i42] >> 3) & 3);
                return;
            }
            if (b2 == 97) {
                int i43 = i2 + 2;
                qt.y0(113, (bArr[i43] >> 7) & 1);
                qt.y0(120, (bArr[i43] >> 6) & 1);
                qt.y0(121, (bArr[i43] >> 5) & 1);
                qt.y0(173, (bArr[i43] >> 4) & 1);
                qt.y0(182, (bArr[i43] >> 3) & 1);
                int i44 = i2 + 3;
                qt.y0(114, (bArr[i44] >> 7) & 1);
                qt.y0(115, (bArr[i44] >> 6) & 1);
                qt.y0(116, (bArr[i44] >> 5) & 1);
                qt.y0(117, (bArr[i44] >> 4) & 1);
                qt.y0(186, (bArr[i44] >> 2) & 3);
                qt.y0(187, (bArr[i44] >> 1) & 1);
                qt.y0(188, (bArr[i44] >> 0) & 1);
                int i45 = i2 + 4;
                qt.y0(118, (bArr[i45] >> 4) & 15);
                qt.y0(179, (bArr[i45] >> 3) & 1);
                qt.y0(183, (bArr[i45] >> 2) & 1);
                qt.y0(184, (bArr[i45] >> 1) & 1);
                qt.y0(185, (bArr[i45] >> 0) & 1);
                qt.y0(119, bArr[i2 + 5] & 255);
                int i46 = i2 + 6;
                qt.y0(174, (bArr[i46] >> 6) & 3);
                qt.y0(175, (bArr[i46] >> 4) & 3);
                qt.y0(176, (bArr[i46] >> 3) & 1);
                qt.y0(177, (bArr[i46] >> 2) & 1);
                qt.y0(178, (bArr[i46] >> 1) & 1);
                int i47 = i2 + 7;
                qt.y0(189, (bArr[i47] >> 7) & 1);
                qt.y0(190, (bArr[i47] >> 4) & 7);
                qt.y0(191, (bArr[i47] >> 3) & 1);
                qt.y0(192, (bArr[i47] >> 2) & 1);
                int i48 = i2 + 8;
                qt.y0(193, (bArr[i48] >> 3) & 31);
                qt.y0(194, (bArr[i48] >> 2) & 1);
                qt.y0(195, (bArr[i48] >> 0) & 3);
                int i49 = i2 + 9;
                qt.y0(196, (bArr[i49] >> 7) & 1);
                qt.y0(197, (bArr[i49] >> 6) & 1);
                qt.y0(198, (bArr[i49] >> 5) & 1);
                qt.y0(199, (bArr[i49] >> 4) & 1);
                qt.y0(200, (bArr[i49] >> 3) & 1);
                qt.y0(201, (bArr[i49] >> 2) & 1);
                qt.y0(202, (bArr[i49] >> 0) & 3);
                return;
            }
            if (b2 != 98) {
                return;
            }
            int i50 = i2 + 2;
            qt.y0(205, (bArr[i50] >> 7) & 1);
            qt.y0(206, (bArr[i50] >> 5) & 3);
            qt.y0(207, (bArr[i50] >> 2) & 7);
            qt.y0(208, (bArr[i50] >> 1) & 1);
            qt.y0(209, (bArr[i50] >> 0) & 1);
            int i51 = i2 + 3;
            qt.y0(210, (bArr[i51] >> 6) & 3);
            qt.y0(211, (bArr[i51] >> 5) & 1);
            qt.y0(212, (bArr[i51] >> 4) & 1);
            qt.y0(213, (bArr[i51] >> 3) & 1);
            qt.y0(214, (bArr[i51] >> 2) & 1);
            qt.y0(215, (bArr[i51] >> 0) & 3);
            int i52 = i2 + 4;
            qt.y0(216, (bArr[i52] >> 6) & 3);
            qt.y0(217, (bArr[i52] >> 5) & 1);
            qt.y0(218, (bArr[i52] >> 4) & 1);
            qt.y0(219, (bArr[i52] >> 3) & 1);
            qt.y0(220, (bArr[i52] >> 2) & 1);
            qt.y0(221, (bArr[i52] >> 1) & 1);
            qt.y0(222, (bArr[i52] >> 0) & 1);
            int i53 = i2 + 5;
            qt.y0(223, (bArr[i53] >> 2) & 3);
            qt.y0(224, (bArr[i53] >> 0) & 3);
            int i54 = i2 + 6;
            qt.y0(225, (bArr[i54] >> 7) & 1);
            qt.y0(226, (bArr[i54] >> 6) & 1);
            qt.y0(227, (bArr[i54] >> 4) & 3);
            qt.y0(228, (bArr[i54] >> 2) & 3);
            qt.y0(229, (bArr[i54] >> 0) & 3);
            int i55 = i2 + 8;
            qt.y0(230, (bArr[i55] >> 7) & 1);
            qt.y0(231, (bArr[i55] >> 0) & 127);
            int i56 = i2 + 9;
            qt.y0(232, (bArr[i56] >> 7) & 1);
            qt.y0(233, (bArr[i56] >> 4) & 7);
            int i57 = i2 + 10;
            qt.y0(234, (bArr[i57] >> 7) & 1);
            qt.y0(235, (bArr[i57] >> 6) & 1);
            qt.y0(236, (bArr[i57] >> 5) & 1);
            qt.y0(237, (bArr[i57] >> 4) & 1);
            qt.y0(238, (bArr[i57] >> 3) & 1);
            qt.y0(239, (bArr[i57] >> 2) & 1);
            qt.y0(240, (bArr[i57] >> 1) & 1);
            qt.y0(i.a.Theme_actionModeShareDrawable, (bArr[i57] >> 0) & 1);
            int i58 = i2 + 11;
            qt.y0(i.a.Theme_actionModeFindDrawable, (bArr[i58] >> 2) & 3);
            qt.y0(i.a.Theme_actionModeWebSearchDrawable, (bArr[i58] >> 0) & 3);
            int i59 = i2 + 12;
            qt.y0(i.a.Theme_actionModePopupWindowStyle, (bArr[i59] >> 7) & 1);
            qt.y0(i.a.Theme_preferenceFragmentStyle, (bArr[i59] >> 6) & 1);
            qt.y0(i.a.Theme_preferencePanelStyle, (bArr[i59] >> 5) & 1);
            qt.y0(i.a.Theme_preferenceHeaderPanelStyle, (bArr[i59] >> 4) & 1);
            qt.y0(248, (bArr[i59] >> 3) & 1);
            qt.y0(249, (bArr[i59] >> 1) & 3);
            qt.y0(250, ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255));
            qt.y0(251, (bArr[i2 + 17] & 255) | ((bArr[i2 + 15] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 16] << 8) & 65280));
            return;
        }
        byte b10 = bArr[i2 + 2];
        byte b11 = bArr[i2 + 3];
        byte b12 = bArr[i2 + 4];
        byte b13 = bArr[i2 + 6];
        byte b14 = bArr[i2 + 7];
        int i60 = (b10 >> 7) & 1;
        if (this.f14271j != i60) {
            if (this.f7886a.f8314i == 1) {
                if (!qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_NewAdd_HP")) {
                    l0.b0.l0(62, 0);
                    l0.b0.l0(62, 1);
                } else if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_NewAdd_HP")) {
                    l0.b0.l0(6, 0);
                    l0.b0.l0(6, 1);
                }
            }
            this.f14271j = i60;
        }
        int i61 = (b10 >> 6) & 1;
        qt.y0(10, i61);
        int i62 = (b10 >> 4) & 1;
        qt.y0(42, i62);
        qt.y0(13, (b10 >> 3) & 1);
        qt.y0(62, (b10 >> 2) & 1);
        qt.y0(11, (b10 >> 0) & 3);
        qt.y0(67, (b11 >> 7) & 1);
        qt.y0(12, (b11 >> 4) & 1);
        qt.y0(76, (b11 >> 5) & 1);
        qt.y0(36, (b11 >> 3) & 1);
        qt.y0(16, (b12 >> 5) & 1);
        qt.y0(65, (b12 >> 4) & 1);
        qt.y0(30, (b12 >> 2) & 3);
        qt.y0(29, (b12 >> 0) & 3);
        qt.y0(43, (b12 >> 7) & 1);
        int i63 = i2 + 5;
        qt.y0(32, (bArr[i63] >> 2) & 3);
        qt.y0(31, (bArr[i63] >> 0) & 3);
        if (b13 == 1) {
            i7 = 0;
            i8 = 0;
            i9 = 0;
            i10 = 1;
        } else if (b13 != 3) {
            if (b13 == 5) {
                i7 = 0;
                i10 = 0;
                i8 = 1;
            } else if (b13 != 6) {
                switch (b13) {
                    case 11:
                        i8 = 0;
                        i9 = 0;
                        i10 = 0;
                        i7 = 1;
                        break;
                    case 12:
                        i9 = 0;
                        i10 = 0;
                        i7 = 1;
                        i8 = 1;
                        break;
                    case 13:
                        i8 = 0;
                        i10 = 0;
                        i7 = 1;
                        i9 = 1;
                        break;
                    case 14:
                        i10 = 0;
                        i7 = 1;
                        i8 = 1;
                        break;
                    default:
                        i7 = 0;
                        i8 = 0;
                        i9 = 0;
                        i10 = 0;
                        break;
                }
            } else {
                i7 = 0;
                i8 = 0;
                i10 = 0;
                i9 = 1;
            }
            i9 = i8;
        } else {
            i7 = 0;
            i9 = 0;
            i10 = 0;
            i8 = 1;
        }
        qt.y0(18, i7);
        qt.y0(20, i8);
        qt.y0(19, i9);
        qt.y0(49, i10);
        qt.y0(21, b14);
        int i64 = i2 + 8;
        int i65 = bArr[i64] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i65 = bArr[i2 + 9] & 255;
        }
        if (i65 == 254) {
            qt.y0(27, -2);
        } else if (i65 == 255) {
            qt.y0(27, -3);
        } else if (i61 == 0) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, i65 * 5);
        }
        int i66 = bArr[i2 + 9] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i66 = bArr[i64] & 255;
        }
        if (i66 == 254) {
            qt.y0(28, -2);
        } else if (i66 == 255) {
            qt.y0(28, -3);
        } else if (i61 == 0) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, i66 * 5);
        }
        int i67 = bArr[i2 + 10] & 255;
        if (i67 == 1) {
            i11 = 0;
            i12 = 1;
        } else if (i67 != 2) {
            i12 = i67 != 3 ? 0 : 1;
            i11 = i12;
        } else {
            i12 = 0;
            i11 = 1;
        }
        qt.y0(47, i12);
        qt.y0(46, i11);
        qt.y0(44, bArr[i2 + 11] & 255);
        int i68 = bArr[i2 + 12] & 255;
        if (i68 == 254) {
            qt.y0(40, -2);
        } else if (i68 == 255) {
            qt.y0(40, -3);
        } else if (i62 == 0) {
            qt.y0(40, -1);
        } else {
            qt.y0(40, i68 * 5);
        }
        int i69 = bArr[i2 + 13] & 255;
        if (i69 == 0 || i69 == 255) {
            u0.d.B3(0);
        } else {
            u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((i69 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i69 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
    }

    @Override // k0.lt
    public void W2() {
        this.C.j();
        qt.q0(this.P);
        qt.q0(l0.g0.f13049e);
        w0.e.f17815a.d(l0.g0.f13049e);
        w0.e.f17819e.d(l0.g0.f13049e);
        u0.c.f17386m.d(this.R);
        l0.b0.p0(this.S);
        u0.c.f17379f.d(this.f14272k);
        l0.b0.o0(this.U);
    }

    public final void W3() {
        R2(null);
    }

    public final synchronized void X3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        V3(2, f14260k0);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 252) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    public final void Y3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        X = i2;
        qt.y0(105, i2);
        int iB = this.C.b(1, 0);
        int i3 = X;
        if (iB != i3) {
            this.C.g(1, i3);
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1003) {
            a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CHANGE_PANORAMA == ints[0] = " + iArr[0]);
            z.k.s(227, 2, 249, 6, 1);
            a.i.a0(100L);
            z.k.s(227, 2, 249, 6, 0);
        }
        if (i2 == 1005) {
            a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CAMERA_MODE == ints[0] = " + iArr[0]);
            if (iArr.length > 0) {
                if (iArr[0] <= 4) {
                    z.k.s(227, 2, -7, 1, iArr[0]);
                    return;
                }
                if (iArr[0] == 9) {
                    z.k.s(227, 2, -7, 1, 5);
                    return;
                } else if (iArr[0] == 10) {
                    z.k.s(227, 2, -7, 1, 10);
                    return;
                } else {
                    z.k.s(227, 2, -7, 1, iArr[0] + 1);
                    return;
                }
            }
            return;
        }
        if (i2 == 1029) {
            int iW = (iArr[1] * 1024) / a.f.w();
            int i3 = (iArr[2] * 1000) / a.f.i();
            a.f.p().t(LogType.CANBUS, "touch_x = " + iW + "touch_y ==" + i3 + " ObjApp.getHeight()" + a.f.i());
            if (T2(iArr, 2)) {
                if (iArr[0] == 0) {
                    z.k.s(227, 6, 44, 1, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
                    return;
                } else {
                    z.k.s(227, 6, 44, 0, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
                    return;
                }
            }
            return;
        }
        switch (i2) {
            case 0:
                z.k.s(227, 2, 61, iArr[0], iArr[1]);
                break;
            case 1:
                if (iArr != null && iArr.length >= 2) {
                    z.k.s(227, 2, -7, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 2:
                Y3(iArr[0]);
                break;
            case 3:
                int i4 = nt.f8633a;
                if (i4 != 7143868 && i4 != 15073723) {
                    z.k.s(227, 2, -83, iArr[0], iArr[1]);
                    break;
                } else {
                    switch (iArr[0]) {
                        case 1:
                            j3(iArr[1]);
                            break;
                        case 2:
                            c3(iArr[1]);
                            break;
                        case 3:
                            e3(iArr[1]);
                            break;
                        case 4:
                            d3(iArr[1]);
                            break;
                        case 5:
                            f3(iArr[1]);
                            break;
                        case 6:
                            i3(iArr[1]);
                            break;
                        case 7:
                            g3(iArr[1]);
                            break;
                        case 8:
                            h3(iArr[1]);
                            break;
                    }
                }
                break;
            case 4:
                z.k.s(227, 4, 111, iArr[0], iArr[1], iArr[2], iArr[3]);
                break;
            case 5:
                z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, iArr[0], iArr[1]);
                break;
            case 6:
                if (iArr[0] == 1) {
                    l0.b0.l0(5, 0);
                    l0.b0.l0(5, 1);
                    break;
                }
                break;
            case 7:
                a4(iArr[0]);
                break;
        }
    }

    public final synchronized void Z3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        V3(3, f14259j0);
    }

    public final void a3() {
        z.k.s(227, 2, 173, 7, 0);
    }

    public final void a4(int i2) {
        f14256g0 = i2;
        qt.y0(203, i2);
        int iB = this.C.b(9, 0);
        int i3 = f14256g0;
        if (iB != i3) {
            this.C.g(9, i3);
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
            return 7;
        }
        if (d2 > 22.5d && d2 < 67.5d) {
            return 8;
        }
        if (d2 >= 67.5d && d2 <= 112.5d) {
            return 1;
        }
        if (d2 > 112.5d && d2 < 157.5d) {
            return 2;
        }
        if (d2 >= 157.5d && d2 <= 202.5d) {
            return 3;
        }
        if (d2 > 202.5d && d2 < 247.5d) {
            return 4;
        }
        if (d2 < 247.5d || d2 > 292.5d) {
            return (d2 <= 292.5d || d2 >= 337.5d) ? 15 : 6;
        }
        return 5;
    }

    public final void c3(int i2) {
        f14252c0 = i2;
        z.k.s(227, 2, 173, 2, i2);
        qt.y0(107, f14252c0);
        int iB = this.C.b(6, 16);
        int i3 = f14252c0;
        if (iB != i3) {
            this.C.g(6, i3);
        }
    }

    public final void d3(int i2) {
        Y = i2;
        z.k.s(227, 2, 173, 4, i2);
        qt.y0(109, Y);
        int iB = this.C.b(2, 16);
        int i3 = Y;
        if (iB != i3) {
            this.C.g(2, i3);
        }
    }

    public final void e3(int i2) {
        f14251b0 = i2;
        z.k.s(227, 2, 173, 3, i2);
        qt.y0(108, f14251b0);
        int iB = this.C.b(5, 16);
        int i3 = f14251b0;
        if (iB != i3) {
            this.C.g(5, i3);
        }
    }

    public final void f3(int i2) {
        Z = i2;
        z.k.s(227, 2, 173, 5, i2);
        qt.y0(110, Z);
        int iB = this.C.b(3, 16);
        int i3 = Z;
        if (iB != i3) {
            this.C.g(3, i3);
        }
    }

    public final void g3(int i2) {
        f14254e0 = i2;
        z.k.s(227, 2, 173, 7, i2);
        qt.y0(112, f14254e0);
        int iB = this.C.b(8, 0);
        int i3 = f14254e0;
        if (iB != i3) {
            this.C.g(8, i3);
        }
    }

    public final void h3(int i2) {
        f14255f0 = i2;
        z.k.s(227, 2, 173, 8, i2);
        qt.y0(204, f14255f0);
        int iB = this.C.b(10, 0);
        int i3 = f14255f0;
        if (iB != i3) {
            this.C.g(10, i3);
        }
    }

    public final void i3(int i2) {
        f14250a0 = i2;
        z.k.s(227, 2, 173, 6, i2);
        qt.y0(111, f14250a0);
        int iB = this.C.b(4, 16);
        int i3 = f14250a0;
        if (iB != i3) {
            this.C.g(4, i3);
        }
    }

    public final void init() {
        o1.f<h> fVar = f14262m0;
        fVar.f(3, new h(3, 100));
        fVar.f(2, new h(2, 100));
    }

    public final void j3(int i2) {
        f14253d0 = i2;
        z.k.s(227, 2, 173, 1, i2);
        qt.y0(106, f14253d0);
        int iB = this.C.b(7, 10);
        int i3 = f14253d0;
        if (iB != i3) {
            this.C.g(7, i3);
        }
    }

    public final void k3() {
        int i2 = this.f14285x;
        if (i2 < 0 || i2 >= W.length) {
            return;
        }
        int i3 = this.f14286y;
        if (i3 == 0 && this.f14282u == 0) {
            return;
        }
        int i4 = this.f14281t * 10;
        int i5 = this.f14280s * 10;
        int i6 = this.f14283v;
        z.k.s(227, 19, 228, (byte) (this.f14287z << 7), (byte) (i3 << 7), (i4 >> 24) & 255, (i4 >> 16) & 255, (i4 >> 8) & 255, i4 & 255, this.f14284w, (i5 >> 24) & 255, (i5 >> 16) & 255, (i5 >> 8) & 255, i5 & 255, b3(this.f14282u), i6 / BatchedScanSettings.MAX_INTERVAL_SEC, (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i6 / BatchedScanSettings.MAX_INTERVAL_SEC, (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, W[this.f14285x], 0, 0);
    }
}

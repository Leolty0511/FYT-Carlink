package module.canbus;

import android.bluetooth.BluetoothClass;
import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;
import java.util.Calendar;
import java.util.TimeZone;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class y extends lt implements o1.q {
    public static int T;
    public static int U;
    public static int V;
    public static final int[] W = {0, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 20, 21, 21, 22, 22, 23, 24, 25, 26, 27, 27, 28, 28, 29, 30};
    public static final o1.f<i> X = new o1.f<>();
    public static int Y = 0;
    public static int Z = 0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static int f14971a0 = 10;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static int f14972b0 = 10;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static int f14973c0 = 10;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static int f14974d0 = 10;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static int f14975e0 = 10;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static int f14976f0 = 0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static int f14977g0 = 18;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static int f14978h0 = 0;
    public int B;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14980c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f14981d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, 25}, new int[]{49, 1}, new int[]{50, 38}, new int[]{51, 24}, new int[]{52, 55}, new int[]{53, 24}, new int[]{54, 21}, new int[]{55, 54}, new int[]{56, 18}, new int[]{57, 3}, new int[]{58, 4}, new int[]{59, 25}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f14982e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, 58}, new int[]{49, 1}, new int[]{50, -1}, new int[]{51, -1}, new int[]{52, 55}, new int[]{53, 29}, new int[]{54, 21}, new int[]{55, 54}, new int[]{56, 18}, new int[]{57, 3}, new int[]{58, 4}, new int[]{59, 25}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f14983f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, 38}, new int[]{49, 54}, new int[]{50, -1}, new int[]{51, -1}, new int[]{52, 4}, new int[]{53, 29}, new int[]{54, 1}, new int[]{55, 1}, new int[]{56, 55}, new int[]{57, 21}, new int[]{58, 3}, new int[]{59, 25}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f14984g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, -1}, new int[]{49, 1}, new int[]{50, 58}, new int[]{51, 55}, new int[]{52, -1}, new int[]{53, 29}, new int[]{54, 21}, new int[]{55, 54}, new int[]{56, 18}, new int[]{57, 3}, new int[]{58, 4}, new int[]{59, 25}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f14985h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, -1}, new int[]{49, 54}, new int[]{50, 25}, new int[]{51, -1}, new int[]{52, 55}, new int[]{53, 29}, new int[]{54, 5}, new int[]{55, 21}, new int[]{56, 18}, new int[]{57, 3}, new int[]{58, 4}, new int[]{59, 25}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f14986i = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, -1}, new int[]{49, 5}, new int[]{50, 18}, new int[]{51, 55}, new int[]{52, -1}, new int[]{53, 29}, new int[]{54, 21}, new int[]{55, 54}, new int[]{56, 1}, new int[]{57, 4}, new int[]{58, 3}, new int[]{59, 25}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f14987j = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, -1}, new int[]{49, 1}, new int[]{50, 1}, new int[]{51, 55}, new int[]{52, -1}, new int[]{53, 29}, new int[]{54, 21}, new int[]{55, 54}, new int[]{56, 38}, new int[]{57, 3}, new int[]{58, 4}, new int[]{59, -1}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f14988k = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, -1}, new int[]{49, 1}, new int[]{50, 3}, new int[]{51, 55}, new int[]{52, 4}, new int[]{53, 29}, new int[]{54, 21}, new int[]{55, 21}, new int[]{56, 38}, new int[]{57, 1}, new int[]{58, 54}, new int[]{59, -1}, new int[]{64, 25}, new int[]{65, 55}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int[][] f14989l = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, 25}, new int[]{49, 1}, new int[]{50, 18}, new int[]{51, 55}, new int[]{52, 55}, new int[]{53, 24}, new int[]{54, 21}, new int[]{55, 53}, new int[]{56, 54}, new int[]{57, 4}, new int[]{58, 3}, new int[]{59, 25}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[][] f14990m = {new int[]{1, 4}, new int[]{2, 18}, new int[]{3, 8}, new int[]{4, 7}, new int[]{5, 13}, new int[]{6, 3}, new int[]{7, 2}, new int[]{18, 26}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{48, 25}, new int[]{49, 1}, new int[]{50, 18}, new int[]{51, 55}, new int[]{52, 55}, new int[]{53, 24}, new int[]{54, 21}, new int[]{55, 53}, new int[]{56, 54}, new int[]{57, 4}, new int[]{58, 3}, new int[]{59, 25}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final byte[] f14991n = new byte[1024];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f14992o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f14993p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f14994q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f14995r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f14996s = new a();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public byte f14997t = DhcpPacket.DHCP_HOST_NAME;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f14998u = new b();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f14999v = new c();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f15000w = new d();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f15001x = new e();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f15002y = 100;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f15003z = new f();
    public int A = 0;
    public Runnable C = new g();
    public Runnable D = new h();
    public long E = -1;
    public int F = -1;
    public o1.g0 G = new o1.g0(getClass().getSimpleName(), 32);
    public final int H = 1;
    public final int I = 2;
    public final int J = 3;
    public final int K = 4;
    public final int L = 5;
    public final int M = 6;
    public final int N = 7;
    public final int O = 8;
    public final int P = 9;
    public final int Q = 10;
    public int[] R = {34, 204};
    public int S = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(y.this.f14999v);
            y.this.f14997t = DhcpPacket.DHCP_HOST_NAME;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y yVar = y.this;
            byte b2 = (byte) (yVar.f14997t - 1);
            yVar.f14997t = b2;
            if (b2 <= 0) {
                l0.b0.p0(yVar.f14999v);
                y.this.f14997t = DhcpPacket.DHCP_HOST_NAME;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 1, 48);
                z.k.s(227, 144, 1, 39);
                y yVar2 = y.this;
                yVar2.d3(yVar2.G.b(1, 1));
                y yVar3 = y.this;
                yVar3.g3(yVar3.G.b(10, 0));
                int i2 = nt.f8637c;
                if (i2 == 2 || i2 == 10 || i2 == 13 || i2 == 25 || i2 == 28 || i2 == 39 || i2 == 42 || i2 == 7 || i2 == 8 || i2 == 16 || i2 == 17 || i2 == 21 || i2 == 22 || i2 == 30 || i2 == 31) {
                    y yVar4 = y.this;
                    yVar4.f3(yVar4.G.b(9, 18), y.this.G.b(8, 0));
                    y yVar5 = y.this;
                    yVar5.e3(yVar5.G.b(2, 0), y.this.G.b(6, 10), y.this.G.b(7, 10), y.this.G.b(5, 10), y.this.G.b(4, 10), y.this.G.b(3, 10));
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 1, 38);
                z.k.s(227, 144, 4, 38, 0, 0, 0);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y.this.I3();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                y.D3(y.this);
                if (y.this.B == 10) {
                    y.this.B = 0;
                    y.this.H3();
                }
                if (y.this.f15002y > 100) {
                    y.l3(y.this);
                    if (y.this.A == y.this.f15002y / 100) {
                        y.this.A = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = y.V = y.W[0];
                } else {
                    int unused2 = y.V = y.W[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (y.this.f7886a.f8307b == 1) {
                    if (y.U == y.V && y.T == i4) {
                        return;
                    }
                    int unused3 = y.T = i4;
                    y.this.I3();
                }
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (qt.k0()) {
                qt.y0(123, 0);
            } else if (u0.b.f17347o == 1) {
                qt.y0(123, 1);
            } else {
                qt.y0(123, 0);
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
            long millis = time.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (y.this.E == millis && y.this.F == i2) {
                return;
            }
            y.this.E = millis;
            y.this.F = i2;
            byte b2 = (byte) time.hour;
            byte b3 = (byte) time.minute;
            byte b4 = (byte) time.second;
            if (i2 != 0 && b2 > 12) {
                b2 = (byte) (b2 - 12);
            }
            z.k.s(227, 198, 8, 1, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) (((i2 << 7) | b2) & 255), (byte) (b3 & 255), (byte) (b4 & 255), (byte) ((((byte) (Calendar.getInstance(TimeZone.getDefault()).get(9) == 0 ? 0 : 1)) << 7) | 64));
        }
    }

    public static class i implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15012a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f15013b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f15014c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f15015d;

        public i(int i2, int i3) {
            this.f15012a = i2;
            this.f15014c = i3;
        }

        public synchronized void a(int i2) {
            this.f15015d = i2;
            if (!this.f15013b) {
                this.f15013b = true;
                o1.k.a().postDelayed(this, this.f15014c);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            if (this.f15012a == 2) {
                z.k.s(227, 196, 1, this.f15015d);
                this.f15013b = false;
            }
        }
    }

    public static /* synthetic */ int D3(y yVar) {
        int i2 = yVar.B;
        yVar.B = i2 + 1;
        return i2;
    }

    public static void G3(int i2, int i3) {
        i iVarC = X.c(i2);
        if (iVarC != null) {
            iVarC.a(i3);
        }
    }

    public static void J3(byte[] bArr) {
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

    public static /* synthetic */ int l3(y yVar) {
        int i2 = yVar.A;
        yVar.A = i2 + 1;
        return i2;
    }

    public final void H3() {
        I3();
    }

    public final synchronized void I3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        if (u0.b.f17306a0 == 0) {
            return;
        }
        int i2 = U;
        int i3 = V;
        if (i2 < i3) {
            U = i2 + 1;
            this.B = 0;
        } else if (i2 > i3) {
            U = i2 - 1;
            this.B = 0;
        } else {
            U = i3;
        }
        if (T == 1) {
            G3(2, U | 128);
        } else {
            G3(2, U & 127);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        if (nt.f8637c != 25) {
            y0.f.C0 = 18;
        } else {
            y0.f.C0 = 34;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.G.a();
        if (nt.a()) {
            qt.z(this.f14996s);
            w0.e.f17815a.a(this.f14996s, 1);
            qt.x(this.f15000w);
            u0.c.f17386m.a(this.f14998u, 1);
        }
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        if (nt.f8637c == 25) {
            mtVar.f8307b = 1;
            if (nt.a()) {
                init();
                l0.b0.a(this.f15003z);
                H3();
                y0.g.f18094d.a(this.f15001x, 1);
            }
        }
        qt.z(this.D);
        u0.c.f17379f.a(this.C, 1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:216:0x0494  */
    /* JADX WARN: Code duplicated, block: B:219:0x049a  */
    /* JADX WARN: Code duplicated, block: B:222:0x04a4  */
    /* JADX WARN: Code duplicated, block: B:223:0x04a7 A[LOOP:7: B:217:0x0495->B:223:0x04a7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:226:0x04ad  */
    /* JADX WARN: Code duplicated, block: B:228:0x04b0  */
    /* JADX WARN: Code duplicated, block: B:229:0x04b9  */
    /* JADX WARN: Code duplicated, block: B:424:0x04aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:425:0x04a2 A[SYNTHETIC] */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int i7;
        int[][] iArr4;
        int i8;
        int i9;
        int[][] iArr5;
        int[][] iArr6;
        int[][] iArr7;
        int[][] iArr8;
        int[][] iArr9;
        int[][] iArr10;
        byte b2 = bArr[i2];
        int i10 = 0;
        if (b2 == -107) {
            int i11 = i2 + 2;
            int i12 = bArr[i11] & 255;
            int i13 = this.f14995r;
            if (i13 != i12) {
                if (i12 != 0) {
                    if (y0.f.f18055i != 1) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                } else if ((i13 == 1 || i13 == 2) && i12 == 0 && y0.f.f18055i == 1) {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                }
                qt.y0(111, bArr[i11] & 255);
                this.f14995r = i12;
            }
            return;
        }
        if (b2 == 42) {
            qt.y0(29, (bArr[i2 + 2] >> 0) & 15);
            qt.y0(30, (bArr[i2 + 3] >> 0) & 15);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 50) {
            int i14 = i2 + 2;
            byte b3 = bArr[i14];
            int i15 = bArr[i2 + 3] & 255;
            int i16 = bArr[i2 + 4] & 255;
            int i17 = 255 & bArr[i2 + 5];
            switch (b3) {
                case 1:
                    qt.y0(104, i15);
                    break;
                case 2:
                    qt.y0(105, (i15 * BatchedScanSettings.MAX_INTERVAL_SEC) + (i16 * 60) + i17);
                    break;
                case 3:
                    qt.x0(106, new String(bArr, i14, i3 - 2));
                    break;
                case 4:
                    qt.x0(107, new String(bArr, i14, i3 - 2));
                    break;
                case 5:
                    qt.x0(108, new String(bArr, i14, i3 - 2));
                    break;
                case 6:
                    qt.x0(109, new String(bArr, i14, i3 - 2));
                    break;
                case 7:
                    qt.y0(110, i15);
                    break;
            }
        }
        if (b2 == 80) {
            int i18 = i2 + 2;
            int i19 = (bArr[i18] >> 6) & 3;
            if (i19 != 0) {
                qt.a(1);
            } else if (i19 == 0) {
                qt.a(0);
            }
            qt.y0(Process.MEDIA_UID, (bArr[i18] >> 6) & 3);
            qt.y0(121, (bArr[i18] >> 6) & 3);
            qt.y0(122, bArr[i18] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i20 = i2 + 3;
            qt.y0(100, (bArr[i20] >> 7) & 1);
            qt.y0(101, (bArr[i20] >> 6) & 1);
            qt.y0(102, (bArr[i20] >> 3) & 3);
            qt.y0(103, (bArr[i20] >> 0) & 3);
            return;
        }
        if (b2 == 85) {
            int i21 = nt.f8637c;
            if (i21 == 37 || i21 == 38 || i21 == 39 || i21 == 40 || i21 == 41 || i21 == 42) {
                int i22 = SystemProperties.getInt("persist.fyt.temperature", 0);
                int i23 = i2 + 2;
                int i24 = bArr[i23] & 255;
                int i25 = i2 + 3;
                int i26 = bArr[i25] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i24 = bArr[i25] & 255;
                    i26 = bArr[i23] & 255;
                }
                if (i24 < 10) {
                    qt.y0(27, -1);
                } else if (i24 < 36) {
                    qt.y0(27, -2);
                } else if (i24 > 64) {
                    qt.y0(27, -3);
                } else if (i22 == 1) {
                    qt.y0(27, (i24 * 10) + 290);
                } else {
                    qt.y0(27, i24 * 5);
                }
                if (i26 < 10) {
                    qt.y0(28, -1);
                } else if (i26 < 36) {
                    qt.y0(28, -2);
                } else if (i26 > 64) {
                    qt.y0(28, -3);
                } else if (i22 == 1) {
                    qt.y0(28, (i26 * 10) + 290);
                } else {
                    qt.y0(28, i26 * 5);
                }
                int i27 = i2 + 4;
                int i28 = (bArr[i27] >> 4) & 15;
                if (i28 != 1) {
                    if (i28 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i28 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i28 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i28 != 6) {
                        i4 = 0;
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                    }
                    i5 = i6;
                } else {
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                }
                qt.y0(18, i4);
                qt.y0(65, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(21, (bArr[i27] >> 0) & 15);
                int i29 = i2 + 5;
                qt.y0(29, (bArr[i29] >> 0) & 3);
                qt.y0(30, (bArr[i29] >> 4) & 3);
                int i30 = i2 + 6;
                qt.y0(13, (bArr[i30] >> 0) & 1);
                qt.y0(11, (bArr[i30] >> 1) & 1);
                qt.y0(62, (bArr[i30] >> 2) & 1);
                qt.y0(16, (bArr[i30] >> 6) & 1);
                qt.y0(12, (bArr[i2 + 7] >> 0) & 3);
                int i31 = bArr[i2 + 9] & 255;
                if (i31 == 0 || i31 == 255) {
                    u0.d.A3(0);
                    return;
                } else {
                    u0.d.B3(i22 == 0 ? (i31 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR : (((i31 * 18) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1));
                    return;
                }
            }
            return;
        }
        if (b2 == 108) {
            qt.y0(76, bArr[i2 + 2]);
            return;
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b4 = bArr[i2 + 2];
                    byte b5 = bArr[i2 + 3];
                    int i32 = b4 & 255;
                    this.f14980c = i32;
                    if (i32 != 129) {
                        if (i32 != 130) {
                            if (i32 != 138) {
                                if (i32 != 139) {
                                    switch (i32) {
                                        case 60:
                                            break;
                                        case 61:
                                            break;
                                        case 62:
                                            for (int i33 = 0; i33 < (b5 & 255); i33++) {
                                                l0.b0.l0(31, 0);
                                            }
                                            l0.b0.l0(31, 1);
                                            break;
                                        case 63:
                                            for (int i34 = 0; i34 < (b5 & 255); i34++) {
                                                l0.b0.l0(30, 0);
                                            }
                                            l0.b0.l0(30, 1);
                                            break;
                                        default:
                                            int i35 = nt.f8637c;
                                            if (i35 != 1 && i35 != 2) {
                                                switch (i35) {
                                                    default:
                                                        switch (i35) {
                                                            case 27:
                                                                int i36 = 0;
                                                                while (true) {
                                                                    iArr3 = this.f14985h;
                                                                    if (i36 < iArr3.length) {
                                                                        int i37 = this.f14980c;
                                                                        if (i37 != iArr3[i36][0]) {
                                                                            i36++;
                                                                        } else if (i37 != 0) {
                                                                            this.f14979b = i36;
                                                                        }
                                                                    }
                                                                }
                                                                if ((b5 & 255) == 0) {
                                                                    int i38 = this.f14979b;
                                                                    if (i38 < iArr3.length && i38 != 255) {
                                                                        l0.b0.l0(iArr3[i38][1], 1);
                                                                    }
                                                                    this.f14979b = 255;
                                                                } else if (i36 < iArr3.length) {
                                                                    l0.b0.l0(iArr3[i36][1], 0);
                                                                }
                                                                break;
                                                            case 28:
                                                                i7 = 0;
                                                                while (true) {
                                                                    iArr4 = this.f14984g;
                                                                    if (i7 >= iArr4.length) {
                                                                        i9 = this.f14980c;
                                                                        if (i9 == iArr4[i7][0]) {
                                                                            i7++;
                                                                        } else if (i9 != 0) {
                                                                            this.f14979b = i7;
                                                                        }
                                                                    }
                                                                }
                                                                if ((b5 & 255) != 0) {
                                                                    i8 = this.f14979b;
                                                                    if (i8 < iArr4.length && i8 != 255) {
                                                                        l0.b0.l0(iArr4[i8][1], 1);
                                                                    }
                                                                    this.f14979b = 255;
                                                                } else if (i7 < iArr4.length) {
                                                                    l0.b0.l0(iArr4[i7][1], 0);
                                                                }
                                                                break;
                                                            case 29:
                                                                int i39 = 0;
                                                                while (true) {
                                                                    iArr5 = this.f14986i;
                                                                    if (i39 < iArr5.length) {
                                                                        int i40 = this.f14980c;
                                                                        if (i40 != iArr5[i39][0]) {
                                                                            i39++;
                                                                        } else if (i40 != 0) {
                                                                            this.f14979b = i39;
                                                                        }
                                                                    }
                                                                }
                                                                if ((b5 & 255) == 0) {
                                                                    int i41 = this.f14979b;
                                                                    if (i41 < iArr5.length && i41 != 255) {
                                                                        l0.b0.l0(iArr5[i41][1], 1);
                                                                    }
                                                                    this.f14979b = 255;
                                                                } else if (i39 < iArr5.length) {
                                                                    l0.b0.l0(iArr5[i39][1], 0);
                                                                }
                                                                break;
                                                            case 30:
                                                                int i42 = 0;
                                                                while (true) {
                                                                    iArr6 = this.f14987j;
                                                                    if (i42 < iArr6.length) {
                                                                        int i43 = this.f14980c;
                                                                        if (i43 != iArr6[i42][0]) {
                                                                            i42++;
                                                                        } else if (i43 != 0) {
                                                                            this.f14979b = i42;
                                                                        }
                                                                    }
                                                                }
                                                                if ((b5 & 255) == 0) {
                                                                    int i44 = this.f14979b;
                                                                    if (i44 < iArr6.length && i44 != 255) {
                                                                        l0.b0.l0(iArr6[i44][1], 1);
                                                                    }
                                                                    this.f14979b = 255;
                                                                } else if (i42 < iArr6.length) {
                                                                    l0.b0.l0(iArr6[i42][1], 0);
                                                                }
                                                                break;
                                                            default:
                                                                switch (i35) {
                                                                    case 32:
                                                                        int i45 = 0;
                                                                        while (true) {
                                                                            iArr7 = this.f14988k;
                                                                            if (i45 < iArr7.length) {
                                                                                int i46 = this.f14980c;
                                                                                if (i46 != iArr7[i45][0]) {
                                                                                    i45++;
                                                                                } else if (i46 != 0) {
                                                                                    this.f14979b = i45;
                                                                                }
                                                                            }
                                                                        }
                                                                        if ((b5 & 255) == 0) {
                                                                            int i47 = this.f14979b;
                                                                            if (i47 < iArr7.length && i47 != 255) {
                                                                                l0.b0.l0(iArr7[i47][1], 1);
                                                                            }
                                                                            this.f14979b = 255;
                                                                        } else if (i45 < iArr7.length) {
                                                                            l0.b0.l0(iArr7[i45][1], 0);
                                                                        }
                                                                        break;
                                                                    case 33:
                                                                    case 36:
                                                                        int i48 = 0;
                                                                        while (true) {
                                                                            iArr8 = this.f14989l;
                                                                            if (i48 < iArr8.length) {
                                                                                int i49 = this.f14980c;
                                                                                if (i49 != iArr8[i48][0]) {
                                                                                    i48++;
                                                                                } else if (i49 != 0) {
                                                                                    this.f14979b = i48;
                                                                                }
                                                                            }
                                                                        }
                                                                        if ((b5 & 255) == 0) {
                                                                            int i50 = this.f14979b;
                                                                            if (i50 < iArr8.length && i50 != 255) {
                                                                                l0.b0.l0(iArr8[i50][1], 1);
                                                                            }
                                                                            this.f14979b = 255;
                                                                        } else if (i48 < iArr8.length) {
                                                                            l0.b0.l0(iArr8[i48][1], 0);
                                                                        }
                                                                        break;
                                                                    case 34:
                                                                        i7 = 0;
                                                                        while (true) {
                                                                            iArr4 = this.f14984g;
                                                                            if (i7 >= iArr4.length) {
                                                                                i9 = this.f14980c;
                                                                                if (i9 == iArr4[i7][0]) {
                                                                                    i7++;
                                                                                } else if (i9 != 0) {
                                                                                    this.f14979b = i7;
                                                                                }
                                                                            }
                                                                        }
                                                                        if ((b5 & 255) != 0) {
                                                                            i8 = this.f14979b;
                                                                            if (i8 < iArr4.length) {
                                                                                l0.b0.l0(iArr4[i8][1], 1);
                                                                            }
                                                                            this.f14979b = 255;
                                                                        } else if (i7 < iArr4.length) {
                                                                            l0.b0.l0(iArr4[i7][1], 0);
                                                                        }
                                                                        break;
                                                                    case 35:
                                                                        int i51 = 0;
                                                                        while (true) {
                                                                            iArr9 = this.f14990m;
                                                                            if (i51 < iArr9.length) {
                                                                                int i52 = this.f14980c;
                                                                                if (i52 != iArr9[i51][0]) {
                                                                                    i51++;
                                                                                } else if (i52 != 0) {
                                                                                    this.f14979b = i51;
                                                                                }
                                                                            }
                                                                        }
                                                                        if (this.f14980c != 18) {
                                                                            if ((b5 & 255) == 0) {
                                                                                int i53 = this.f14979b;
                                                                                if (i53 < iArr9.length && i53 != 255) {
                                                                                    l0.b0.l0(iArr9[i53][1], 1);
                                                                                }
                                                                                this.f14979b = 255;
                                                                            } else if (i51 < iArr9.length) {
                                                                                l0.b0.l0(iArr9[i51][1], 0);
                                                                            }
                                                                        } else if ((b5 & 255) == 1) {
                                                                            int i54 = h0.c.E;
                                                                            if (i54 == 3 || i54 == 4 || i54 == 5) {
                                                                                l0.b0.l0(26, 0);
                                                                                l0.b0.l0(26, 1);
                                                                            } else {
                                                                                l0.b0.l0(12, 0);
                                                                                l0.b0.l0(12, 1);
                                                                            }
                                                                        }
                                                                        break;
                                                                    default:
                                                                        switch (i35) {
                                                                            case 38:
                                                                            case 39:
                                                                                break;
                                                                            case 40:
                                                                            case 41:
                                                                            case 42:
                                                                                break;
                                                                            default:
                                                                                int i55 = 0;
                                                                                while (true) {
                                                                                    iArr10 = this.f14981d;
                                                                                    if (i55 < iArr10.length) {
                                                                                        int i56 = this.f14980c;
                                                                                        if (i56 != iArr10[i55][0]) {
                                                                                            i55++;
                                                                                        } else if (i56 != 0) {
                                                                                            this.f14979b = i55;
                                                                                        }
                                                                                    }
                                                                                }
                                                                                if ((b5 & 255) == 0) {
                                                                                    int i57 = this.f14979b;
                                                                                    if (i57 < iArr10.length && i57 != 255) {
                                                                                        l0.b0.l0(iArr10[i57][1], 1);
                                                                                    }
                                                                                    this.f14979b = 255;
                                                                                } else if (i55 < iArr10.length) {
                                                                                    l0.b0.l0(iArr10[i55][1], 0);
                                                                                }
                                                                                break;
                                                                        }
                                                                        break;
                                                                }
                                                                break;
                                                        }
                                                    case 23:
                                                    case 24:
                                                    case 25:
                                                        int i58 = 0;
                                                        while (true) {
                                                            iArr2 = this.f14983f;
                                                            if (i58 < iArr2.length) {
                                                                int i59 = this.f14980c;
                                                                if (i59 != iArr2[i58][0]) {
                                                                    i58++;
                                                                } else if (i59 != 0) {
                                                                    this.f14979b = i58;
                                                                }
                                                            }
                                                        }
                                                        int i60 = this.f14980c;
                                                        if (i60 != 5 && i60 != 48) {
                                                            int i61 = b5 & 255;
                                                            if (i61 == 1) {
                                                                if (i58 < iArr2.length) {
                                                                    l0.b0.l0(iArr2[i58][1], 0);
                                                                }
                                                            } else if (i61 == 0) {
                                                                int i62 = this.f14979b;
                                                                if (i62 < iArr2.length && i62 != 255) {
                                                                    l0.b0.l0(iArr2[i62][1], 1);
                                                                }
                                                                this.f14979b = 255;
                                                            }
                                                        } else if ((b5 & 255) == 1) {
                                                            if (o1.u.W()) {
                                                                l0.b0.l0(18, 0);
                                                                l0.b0.l0(18, 1);
                                                            } else {
                                                                o1.u.f(a.b.f23k);
                                                            }
                                                        }
                                                        break;
                                                }
                                            }
                                            while (true) {
                                                iArr = this.f14982e;
                                                if (i10 < iArr.length) {
                                                    int i63 = this.f14980c;
                                                    if (i63 != iArr[i10][0]) {
                                                        i10++;
                                                    } else if (i63 != 0) {
                                                        this.f14979b = i10;
                                                    }
                                                }
                                            }
                                            if ((b5 & 255) == 0) {
                                                int i64 = this.f14979b;
                                                if (i64 < iArr.length && i64 != 255) {
                                                    l0.b0.l0(iArr[i64][1], 1);
                                                }
                                                this.f14979b = 255;
                                            } else if (i10 < iArr.length) {
                                                l0.b0.l0(iArr[i10][1], 0);
                                            }
                                            break;
                                    }
                                }
                            }
                        }
                        while (i10 < (b5 & 255)) {
                            l0.b0.l0(8, 0);
                            i10++;
                        }
                        l0.b0.l0(8, 1);
                        break;
                    }
                    while (i10 < (b5 & 255)) {
                        l0.b0.l0(7, 0);
                        i10++;
                    }
                    l0.b0.l0(7, 1);
                }
                break;
            case 33:
                int i65 = nt.f8637c;
                if (i65 != 37 && i65 != 38 && i65 != 39 && i65 != 40 && i65 != 41 && i65 != 42) {
                    byte b6 = bArr[i2 + 2];
                    byte b7 = bArr[i2 + 3];
                    byte b8 = bArr[i2 + 4];
                    byte b9 = bArr[i2 + 5];
                    qt.y0(10, (b6 >> 7) & 1);
                    qt.y0(11, (b6 >> 6) & 1);
                    qt.y0(12, (b6 >> 5) & 1);
                    qt.y0(13, (b6 >> 3) & 1);
                    qt.y0(14, (b6 >> 2) & 1);
                    qt.y0(15, (b6 >> 1) & 1);
                    qt.y0(65, (b6 >> 0) & 1);
                    qt.y0(18, (b7 >> 7) & 1);
                    qt.y0(19, (b7 >> 6) & 1);
                    qt.y0(20, (b7 >> 5) & 1);
                    qt.y0(80, (b7 >> 4) & 1);
                    qt.y0(21, b7 & DhcpPacket.DHCP_DOMAIN_NAME);
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        qt.y0(27, b9);
                        qt.y0(28, b8);
                    } else {
                        qt.y0(27, b8);
                        qt.y0(28, b9);
                    }
                    switch (nt.f8637c) {
                        case 6:
                        case 7:
                        case 8:
                            qt.y0(16, (bArr[i2 + 6] >> 2) & 1);
                            break;
                        case 9:
                        case 10:
                            int i66 = i2 + 6;
                            qt.y0(54, (bArr[i66] >> 7) & 1);
                            qt.y0(16, (bArr[i66] >> 2) & 1);
                            qt.y0(38, (bArr[i66] >> 1) & 1);
                            break;
                        default:
                            int i67 = i2 + 7;
                            qt.y0(42, (bArr[i67] >> 7) & 1);
                            qt.y0(44, bArr[i67] & DhcpPacket.DHCP_DOMAIN_NAME);
                            qt.y0(40, bArr[i2 + 8] & 255);
                            break;
                    }
                }
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(c3(bArr[i2 + 2] & 255));
                    u0.d.S2(c3(bArr[i2 + 3] & 255));
                    u0.d.T2(c3(bArr[i2 + 4] & 255));
                    u0.d.U2(c3(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    int i68 = i2 + 2;
                    int i69 = bArr[i68] & 255;
                    int i70 = i2 + 3;
                    int i71 = bArr[i70] & 255;
                    int i72 = i2 + 4;
                    int i73 = bArr[i72] & 255;
                    int i74 = i2 + 5;
                    int i75 = bArr[i74] & 255;
                    if (i69 == 0 && i71 == 0 && i73 == 0 && i75 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i69 || l0.c0.f13014h != i71 || l0.c0.f13015i != i73 || l0.c0.f13016j != i75) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i69;
                    l0.c0.f13014h = i71;
                    l0.c0.f13015i = i73;
                    l0.c0.f13016j = i75;
                    u0.d.D2(c3(bArr[i68] & 255));
                    u0.d.E2(c3(bArr[i70] & 255));
                    u0.d.F2(c3(bArr[i72] & 255));
                    u0.d.G2(c3(bArr[i74] & 255));
                }
                break;
            case 36:
                byte b10 = bArr[i2 + 3];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b10 >> 1) & 1);
                    qt.y0(2, b10 & 1);
                } else {
                    qt.y0(1, b10 & 1);
                    qt.y0(2, (b10 >> 1) & 1);
                }
                qt.y0(3, (b10 >> 2) & 1);
                qt.y0(4, (b10 >> 3) & 1);
                qt.y0(5, (b10 >> 4) & 1);
                qt.y0(0, (b10 >> 5) & 1);
                break;
            case 37:
                int i76 = i2 + 2;
                byte b11 = bArr[i76];
                qt.y0(BluetoothClass.Device.AUDIO_VIDEO_MICROPHONE, (bArr[i76] >> 2) & 3);
                break;
            case 38:
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 4600);
                break;
            case 39:
                if (nt.a()) {
                    int i77 = i2 + 2;
                    int i78 = bArr[i77] & 128;
                    int i79 = bArr[i77] & 127;
                    u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? ((((i78 != 0 ? 1320 - ((i79 * 9) / 5) : ((i79 * 9) / 5) + 1320) / 10) * 10) | 268435456) & (-1) : i78 != 0 ? 1000 - (i79 * 10) : (i79 * 10) + 1000);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.G.j();
        qt.q0(this.f14996s);
        w0.e.f17815a.d(this.f14996s);
        qt.o0(this.f15000w);
        qt.q0(this.D);
        u0.c.f17386m.d(this.f14998u);
        l0.b0.p0(this.f14999v);
        u0.c.f17379f.d(this.C);
        y0.g.f18094d.d(this.f15001x);
        l0.b0.o0(this.f15003z);
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
            if (T2(iArr, 1)) {
                z.k.s(227, 224, 2, iArr[0], 1);
                a.i.a0(100L);
                z.k.s(227, 224, 2, iArr[0], 0);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (T2(iArr, 2)) {
                z.k.s(227, 132, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 2) {
            d3(iArr[0]);
            return;
        }
        if (i2 == 3) {
            f3(iArr[0], iArr[1]);
            return;
        }
        if (i2 == 4) {
            e3(iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
            return;
        }
        if (i2 == 5) {
            g3(iArr[0]);
            return;
        }
        if (i2 == 24) {
            J3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.R[this.S % 2], 37, 0, -86});
            J3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.R[this.S % 2], 37, 0, -86});
            J3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.R[this.S % 2], 37, 0, -86});
            int i3 = this.S + 1;
            this.S = i3;
            this.S = i3 % 2;
            return;
        }
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            if (iArr[0] <= 4) {
                z.k.s(227, -124, 2, 1, iArr[0] + 4);
            } else {
                z.k.s(227, -124, 2, 1, iArr[0] - 4);
            }
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            V = W[o0.a(i2, 0, 36)];
        }
    }

    public final void a3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        b3(iArr);
        switch (u0.b.D) {
            case 1:
                int i3 = w0.d.f17797i;
                int i4 = w0.d.f17798j & 255;
                int i5 = w0.d.f17796h;
                if (i5 == 65536) {
                    iArr[4] = 1;
                } else if (i5 == 65537) {
                    iArr[4] = 2;
                } else if (i5 == 65538) {
                    iArr[4] = 3;
                } else if (i5 == 0) {
                    iArr[4] = 17;
                } else if (i5 == 1) {
                    iArr[4] = 18;
                }
                iArr[5] = i3 & 255;
                iArr[6] = (i3 >> 8) & 255;
                iArr[7] = (i4 % 6) + 1;
                iArr[8] = 0;
                iArr[9] = 0;
                break;
            case 2:
            case 5:
            case 6:
            case 7:
                iArr[4] = 0;
                iArr[5] = 0;
                iArr[6] = 0;
                iArr[7] = 0;
                iArr[8] = 0;
                iArr[9] = 0;
                break;
            case 4:
                int i6 = o0.e.C;
                iArr[4] = (i6 >> 8) & 255;
                iArr[5] = i6 & 255;
                iArr[6] = 0;
                int i7 = o0.e.f16794r;
                iArr[7] = i7 / BatchedScanSettings.MAX_INTERVAL_SEC;
                iArr[8] = (i7 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[9] = i7 % 60;
                break;
            case 8:
            case 9:
                int i8 = u0.b.s3;
                iArr[4] = (i8 >> 8) & 255;
                iArr[5] = i8 & 255;
                iArr[6] = 0;
                int i9 = u0.b.t3;
                iArr[7] = i9 / BatchedScanSettings.MAX_INTERVAL_SEC;
                iArr[8] = (i9 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[9] = i9 % 60;
                break;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i10 = i2 + 1;
            iArr2[i10] = iArr[i2];
            i2 = i10;
        }
        z.k.s(iArr2);
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
        if (this.f14992o + bArr.length > 1024) {
            this.f14992o = 0;
            this.f14993p = 0;
            this.f14994q = 0;
        }
        System.arraycopy(bArr, 0, this.f14991n, this.f14992o, bArr.length);
        int length = this.f14992o + bArr.length;
        this.f14992o = length;
        int i5 = this.f14994q;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f14991n[1];
            int i6 = 2;
            while (true) {
                i4 = this.f14994q;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f14991n[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f14991n;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f14993p = this.f14994q + 1;
            } else {
                this.f14993p = 1;
            }
            this.f14994q = 0;
        }
        int i7 = this.f14992o - 2;
        while (true) {
            i2 = this.f14993p;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f14991n;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f14994q = i8;
                int i9 = i8 + i2 + 3;
                this.f14994q = i9;
                if (i9 >= this.f14992o) {
                    this.f14994q = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f14994q;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f14991n[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f14991n;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f14993p;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f14993p = this.f14994q;
                } else {
                    this.f14993p++;
                }
                this.f14994q = 0;
            }
            this.f14993p++;
        }
        if (i2 != 0) {
            int i12 = this.f14992o - i2;
            this.f14992o = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f14991n;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f14993p = 0;
        }
    }

    public final void b3(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
                iArr[2] = 11;
                iArr[3] = 0;
                break;
            case 3:
            case 9:
            default:
                iArr[2] = 12;
                iArr[3] = 48;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 19;
                } else if (i2 == 2) {
                    iArr[2] = 8;
                    iArr[3] = 19;
                } else if (i2 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 19;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 6:
                iArr[2] = 12;
                iArr[3] = 34;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 10:
                iArr[2] = 8;
                iArr[3] = 19;
                break;
        }
    }

    public final int c3(int i2) {
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

    public void d3(int i2) {
        Y = i2;
        qt.y0(98, i2);
        int iB = this.G.b(1, 1);
        int i3 = Y;
        if (iB != i3) {
            this.G.g(1, i3);
        }
        z.k.s(227, 198, 8, 2, i2, 0, 0, 0, 0, 0, 0);
    }

    public final void e3(int i2, int i3, int i4, int i5, int i6, int i7) {
        Z = i2;
        f14974d0 = i3;
        f14975e0 = i4;
        f14973c0 = i5;
        f14972b0 = i6;
        f14971a0 = i7;
        z.k.s(227, 199, 6, i2, i3, i4, i5, i6, i7);
        qt.y0(112, Z);
        int iB = this.G.b(2, 0);
        int i8 = Z;
        if (iB != i8) {
            this.G.g(2, i8);
        }
        qt.y0(117, f14975e0);
        int iB2 = this.G.b(7, 10);
        int i9 = f14975e0;
        if (iB2 != i9) {
            this.G.g(7, i9);
        }
        qt.y0(116, f14974d0);
        int iB3 = this.G.b(6, 10);
        int i10 = f14974d0;
        if (iB3 != i10) {
            this.G.g(6, i10);
        }
        qt.y0(113, f14971a0);
        int iB4 = this.G.b(3, 10);
        int i11 = f14971a0;
        if (iB4 != i11) {
            this.G.g(3, i11);
        }
        qt.y0(114, f14972b0);
        int iB5 = this.G.b(4, 10);
        int i12 = f14972b0;
        if (iB5 != i12) {
            this.G.g(4, i12);
        }
        qt.y0(115, f14973c0);
        int iB6 = this.G.b(5, 10);
        int i13 = f14973c0;
        if (iB6 != i13) {
            this.G.g(5, i13);
        }
    }

    public final void f3(int i2, int i3) {
        f14977g0 = i2;
        f14976f0 = i3;
        z.k.s(227, 196, 1, (i2 & 127) | ((i3 << 7) & 128));
        qt.y0(119, f14976f0);
        qt.y0(118, f14977g0);
        int iB = this.G.b(9, 18);
        int i4 = f14977g0;
        if (iB != i4) {
            this.G.g(9, i4);
        }
        int iB2 = this.G.b(8, 0);
        int i5 = f14976f0;
        if (iB2 != i5) {
            this.G.g(8, i5);
        }
    }

    public final void g3(int i2) {
        f14978h0 = i2;
        qt.y0(120, i2);
        int iB = this.G.b(10, 0);
        int i3 = f14978h0;
        if (iB != i3) {
            this.G.g(10, i3);
        }
    }

    public final void init() {
        X.f(2, new i(2, 100));
    }
}

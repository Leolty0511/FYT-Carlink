package module.canbus;

import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.text.format.DateFormat;
import android.text.format.Time;
import android.util.Log;
import app.App;
import java.util.Calendar;
import java.util.TimeZone;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import n0.j4;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class u extends lt {
    public static int A;
    public static int B;
    public static int C;
    public static int D;
    public static int E;
    public static final int[] F = {0, 2, 3, 5, 6, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40};
    public static final int[] G = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    public static final int[] H = {0, 1, 1, 2, 2, 3, 3, 4, 5, 6, 7, 78, 8, 9, 9, 10};
    public static final o1.f<g> I = new o1.f<>();
    public static final o1.y J = new o1.y();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f14855t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f14856u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f14857v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f14858w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f14859x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f14860y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f14861z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14863c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f14864d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14865e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14866f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f14867g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14862b = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14868h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f14869i = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 13}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{11, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 16}, new int[]{16, 6}, new int[]{129, 34}, new int[]{130, 35}, new int[]{131, 32}, new int[]{132, 33}, new int[]{133, 3}, new int[]{134, 4}, new int[]{135, 32}, new int[]{136, 33}, new int[]{137, 6}, new int[]{138, 6}, new int[]{141, 1}, new int[]{139, 5}, new int[]{140, 1}, new int[]{141, 9}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f14870j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f14871k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f14872l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f14873m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f14874n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f14875o = new d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f14876p = new e();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f14877q = 200;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f14878r = new f();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f14879s = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u uVar = u.this;
            int i2 = uVar.f14862b;
            if (i2 > 0) {
                uVar.f14862b = i2 - 1;
            }
            if (uVar.f14862b == 0) {
                u.a3();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.this.c3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 1000;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (u.this.f14873m == millis && u.this.f14874n == zIs24HourFormat) {
                return;
            }
            u.this.f14873m = millis;
            u.this.f14874n = zIs24HourFormat ? 1 : 0;
            z.k.s(227, 10, -53, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, zIs24HourFormat ? 1 : 0, (byte) (Calendar.getInstance(TimeZone.getDefault()).get(9) == 0 ? 0 : 1), 0, 0, 0);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.this.K3((byte) -45, u0.b.i3);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.this.J3((byte) -44, u0.b.k3);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (u.this.f14877q > 100) {
                    u.C3(u.this);
                    if (u.this.f14879s == u.this.f14877q / 100) {
                        u.this.f14879s = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = u.f14856u = u.F[0];
                } else {
                    int unused2 = u.f14856u = u.F[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (u.this.f7886a.f8307b == 1 && u.f14855t != u.f14856u) {
                    u.this.R3();
                }
                if (u.this.f7886a.f8309d == 1) {
                    if (u.f14857v != u.f14860y) {
                        u.this.N3();
                    }
                    if (u.f14858w != u.f14861z) {
                        u.this.P3();
                    }
                    if (u.f14859x != u.A) {
                        u.this.Q3();
                    }
                }
                if (u.this.f7886a.f8308c == 1) {
                    if (u.B != u.D) {
                        u.this.O3();
                    }
                    if (u.C != u.E) {
                        u.this.M3();
                    }
                }
            }
        }
    }

    public static class g implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14886a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14887b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14888c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14889d;

        public g(int i2, int i3) {
            this.f14886a = i2;
            this.f14889d = i3;
        }

        public synchronized void a(int i2) {
            this.f14887b = i2;
            if (!this.f14888c) {
                this.f14888c = true;
                o1.k.a().postDelayed(this, this.f14889d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 2, 173, this.f14886a, this.f14887b);
            this.f14888c = false;
        }
    }

    public static /* synthetic */ int C3(u uVar) {
        int i2 = uVar.f14879s;
        uVar.f14879s = i2 + 1;
        return i2;
    }

    public static void I3(int i2, int i3) {
        g gVarC = I.c(i2);
        if (gVarC != null) {
            gVarC.a(i3);
        }
    }

    public static void a3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 210;
        iArr[2] = b3();
        int i4 = u0.b.D;
        if (i4 == 1) {
            int i5 = w0.d.f17796h;
            if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                iArr[3] = 48;
                iArr[4] = ((w0.d.f17798j & 255) % 6) + 1 + 48;
                if (iArr[4] == 0) {
                    iArr[4] = 54;
                }
                int i6 = w0.d.f17797i;
                iArr[6] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                iArr[7] = ((i6 % 10000) / 1000) + 48;
                iArr[8] = ((i6 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i6 % 100) / 10) + 48;
            } else {
                iArr[3] = 48;
                iArr[4] = ((w0.d.f17798j & 255) % 6) + 1 + 48;
                if (iArr[4] == 0) {
                    iArr[4] = 54;
                }
                int i7 = w0.d.f17797i;
                iArr[6] = i7 / 10000 == 0 ? (i7 / 10000) + 32 : (i7 / 10000) + 48;
                iArr[7] = (i7 % 10000) / 1000 == 0 ? ((i7 % 10000) / 1000) + 32 : ((i7 % 10000) / 1000) + 48;
                iArr[8] = ((i7 % 1000) / 100) + 48;
                iArr[9] = ((i7 % 100) / 10) + 48;
                iArr[10] = (i7 % 10) + 48;
            }
        } else if (i4 != 4) {
            if (i4 != 6) {
                if ((i4 == 8 || i4 == 9) && u0.b.s3 != 0) {
                    int i8 = u0.b.r3;
                    iArr[3] = ((i8 / 100) % 10) + 48;
                    iArr[4] = ((i8 / 10) % 10) + 48;
                    iArr[5] = (i8 % 10) + 48;
                    iArr[6] = 32;
                    int i9 = u0.b.t3;
                    iArr[7] = ((i9 / 60) / 10) + 48;
                    iArr[8] = ((i9 / 60) % 10) + 48;
                    iArr[9] = ((i9 % 60) / 10) + 48;
                    iArr[10] = ((i9 % 60) % 10) + 48;
                }
            } else if (d1.d.f1570c == 1) {
                int i10 = d1.d.f1572e;
                if (i10 / 10 > 0) {
                    iArr[3] = (i10 / 10) + 48;
                }
                iArr[4] = (i10 % 10) + 48;
                iArr[5] = 45;
                int i11 = d1.d.f1571d / 100;
                int i12 = i11 / 10000;
                if (i12 > 0) {
                    iArr[6] = i12 + 48;
                }
                iArr[7] = ((i11 % 10000) / 1000) + 48;
                iArr[8] = ((i11 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i11 % 100) / 10) + 48;
                iArr[11] = ((i11 % 10) / 1) + 48;
            }
        } else if (o0.e.C != 0) {
            int i13 = o0.e.B;
            iArr[3] = ((i13 / 100) % 10) + 48;
            iArr[4] = ((i13 / 10) % 10) + 48;
            iArr[5] = (i13 % 10) + 48;
            iArr[6] = 32;
            int i14 = o0.e.f16794r;
            iArr[7] = ((i14 / 60) / 10) + 48;
            iArr[8] = ((i14 / 60) % 10) + 48;
            iArr[9] = ((i14 % 60) / 10) + 48;
            iArr[10] = ((i14 % 60) % 10) + 48;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i15 = i2 + 1;
            iArr2[i15] = (byte) iArr[i2];
            i2 = i15;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:5:0x000e  */
    public static byte b3() {
        byte b2 = 3;
        switch (u0.b.D) {
            case 0:
                b2 = 9;
                break;
            case 1:
                int i2 = w0.d.f17796h;
                if (i2 - 65536 == 0) {
                    b2 = 1;
                } else if (1 == i2 - 65536) {
                    b2 = 2;
                } else if (2 != i2 - 65536) {
                    if (i2 + 0 != 0) {
                        b2 = 1 != i2 - 0 ? (byte) 0 : (byte) 5;
                    } else {
                        b2 = 4;
                    }
                }
                break;
            case 2:
            case 3:
                b2 = 10;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    b2 = 7;
                } else if (i3 == 2) {
                    b2 = 14;
                } else if (i3 != 3) {
                    b2 = 0;
                } else {
                    b2 = 13;
                }
                break;
            case 5:
                b2 = DhcpPacket.DHCP_HOST_NAME;
                break;
            case 6:
                b2 = 8;
                break;
            case 7:
                b2 = 11;
                break;
            case 8:
            case 10:
                b2 = 13;
                break;
            case 9:
            default:
                b2 = 0;
                break;
        }
        if (u0.b.f17347o == 1) {
            return (byte) 16;
        }
        return b2;
    }

    public static int d3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 9;
        }
        if (i2 == 2) {
            return 6;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 0;
        }
        return 3;
    }

    public final void J3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void K3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[19];
        iArr[0] = 227;
        iArr[1] = 16;
        iArr[2] = b2;
        int length = str.length() < 7 ? str.length() : 7;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void L3() {
        Z2(y0.f.f18037c);
        P2(null);
        R2(null);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public final synchronized void M3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        I3(2, E);
    }

    public final synchronized void N3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        I3(4, f14860y);
    }

    public final synchronized void O3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        I3(3, D);
    }

    @Override // k0.lt
    public void P2(int[] iArr) {
        if (nt.a() && this.f7886a.f8309d == 1) {
            int[] iArr2 = G;
            int[] iArr3 = y0.f.f18038c0;
            f14860y = iArr2[o0.a(iArr3[0] >> 1, 0, 10)];
            f14861z = iArr2[o0.a(iArr3[1] >> 1, 0, 10)];
            A = iArr2[o0.a(iArr3[2] >> 1, 0, 10)];
        }
    }

    public final synchronized void P3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        I3(8, f14861z);
    }

    public final synchronized void Q3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        I3(6, A);
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = H;
            D = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            E = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    public final synchronized void R3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        I3(1, f14856u);
    }

    @Override // k0.lt
    public void S2() {
        int i2 = (nt.f8633a >> 16) & 65535;
        qt.z(this.f14872l);
        u0.c.f17388o.a(this.f14875o, 1);
        u0.c.f17390q.a(this.f14876p, 1);
        this.f7886a.f8320o = 0;
        if (nt.a()) {
            qt.z(this.f14870j);
            y0.g.f18094d.a(this.f14871k, 1);
            y0.g.f18095e.a(this.f14871k, 1);
            w0.e.f17815a.a(this.f14870j, 1);
            w0.e.f17819e.a(this.f14870j, 1);
        }
        if (i2 == 1 || i2 == 2) {
            if (j4.f16464b == 14) {
                mt mtVar = this.f7886a;
                mtVar.f8308c = 1;
                mtVar.f8309d = 1;
            } else {
                mt mtVar2 = this.f7886a;
                mtVar2.f8308c = 0;
                mtVar2.f8309d = 0;
            }
            mt mtVar3 = this.f7886a;
            mtVar3.f8306a = null;
            mtVar3.f8310e = 0;
            mtVar3.f8311f = 0;
            mtVar3.f8312g = 0;
            mtVar3.f8307b = 0;
            mtVar3.f8314i = 0;
            return;
        }
        if (i2 == 3) {
            mt mtVar4 = this.f7886a;
            mtVar4.f8306a = new String[]{"com.syu.canbus"};
            mtVar4.f8310e = 0;
            mtVar4.f8311f = 0;
            mtVar4.f8312g = 0;
            mtVar4.f8307b = 0;
            mtVar4.f8308c = 0;
            mtVar4.f8309d = 0;
            mtVar4.f8314i = 0;
            return;
        }
        if (i2 != 4) {
            mt mtVar5 = this.f7886a;
            mtVar5.f8306a = null;
            mtVar5.f8310e = 0;
            mtVar5.f8311f = 0;
            mtVar5.f8312g = 0;
            mtVar5.f8307b = 0;
            mtVar5.f8308c = 0;
            mtVar5.f8309d = 0;
            mtVar5.f8314i = 0;
            return;
        }
        mt mtVar6 = this.f7886a;
        mtVar6.f8306a = new String[]{"com.syu.canbus"};
        mtVar6.f8310e = 0;
        mtVar6.f8311f = 0;
        mtVar6.f8312g = 0;
        mtVar6.f8307b = 1;
        mtVar6.f8308c = 1;
        mtVar6.f8309d = 1;
        mtVar6.f8314i = 0;
        if (nt.a()) {
            init();
            l0.b0.a(this.f14878r);
            L3();
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2 + 1];
        if (b2 == -90) {
            byte b3 = bArr[i2 + 8];
            byte b4 = bArr[i2 + 9];
            qt.y0(1, (b3 >> 4) & 1);
            qt.y0(2, (b3 >> 3) & 1);
            qt.y0(3, (b3 >> 0) & 7);
            qt.y0(4, (b4 >> 0) & 255);
            if (nt.a()) {
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                byte b7 = bArr[i2 + 4];
                byte b8 = bArr[i2 + 5];
                byte b9 = bArr[i2 + 7];
                f14855t = o0.a(b5 & 255, 0, 40);
                B = o0.a(b7 & 255, 0, 10);
                C = o0.a(b6 & 255, 0, 10);
                f14857v = o0.a(b8 & 255, 0, 10);
                f14858w = o0.a(b4 & 255, 0, 10);
                f14859x = o0.a(b9 & 255, 0, 10);
                return;
            }
            return;
        }
        if (b2 == -32) {
            if (nt.a()) {
                e3(bArr[i2 + 2] & 255);
                return;
            }
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 65) {
            if (nt.a()) {
                u0.d.R2(d3(bArr[i2 + 2] & 255));
                u0.d.S2(d3(bArr[i2 + 3] & 255));
                u0.d.T2(d3(bArr[i2 + 4] & 255));
                u0.d.U2(d3(bArr[i2 + 5] & 255));
                u0.d.D2(d3(bArr[i2 + 6] & 255));
                u0.d.E2(d3(bArr[i2 + 7] & 255));
                u0.d.F2(d3(bArr[i2 + 8] & 255));
                u0.d.G2(d3(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b2 == 114) {
            if (nt.a()) {
                if ((bArr[i2 + 2] & 255 & 128) == 128) {
                    this.f14863c = 1;
                } else {
                    this.f14863c = 0;
                }
                qt.i(bArr[i2 + 7], bArr[i2 + 6], true, 540);
                this.f14866f = bArr[i2 + 4] & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f14869i;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f14866f;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f14864d = i4;
                        break;
                    }
                    i4++;
                }
                if (this.f14866f != 0) {
                    if (i4 < iArr.length) {
                        l0.b0.l0(iArr[i4][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i6 = this.f14864d;
                    if (i6 < iArr.length && i6 != 255) {
                        l0.b0.l0(iArr[i6][1], 1);
                    }
                    this.f14864d = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 116 && nt.a()) {
            int i7 = bArr[i2 + 2] & 255;
            this.f14868h = i7;
            if (i7 != 0) {
                this.f14868h = i7 | 128;
                int i8 = 0;
                while (true) {
                    iArr2 = this.f14869i;
                    if (i8 >= iArr2.length) {
                        break;
                    }
                    int i9 = this.f14868h;
                    if (i9 == iArr2[i8][0]) {
                        if (i9 == 0) {
                            break;
                        }
                        this.f14865e = i8;
                        break;
                    }
                    i8++;
                }
                if (this.f14868h != 0) {
                    if (i8 < iArr2.length) {
                        l0.b0.l0(iArr2[i8][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i10 = this.f14865e;
                    if (i10 < iArr2.length && i10 != 255) {
                        l0.b0.l0(iArr2[i10][1], 1);
                    }
                    this.f14865e = 255;
                    return;
                }
            }
            if (i7 == 0) {
                int i11 = i2 + 3;
                int i12 = bArr[i11] & 255;
                int i13 = this.f14867g;
                if (i12 != i13) {
                    if (i13 == 0 && (bArr[i11] & 255) == 255) {
                        this.f14868h = 2;
                    } else if (!(i13 == 255 && (bArr[i11] & 255) == 0) && (bArr[i11] & 255) <= i13) {
                        this.f14868h = 2;
                    } else {
                        this.f14868h = 1;
                    }
                }
                this.f14867g = bArr[i11] & 255;
                int i14 = this.f14868h;
                if (i14 == 1) {
                    l0.b0.l0(7, 0);
                    l0.b0.l0(7, 1);
                } else if (i14 == 2) {
                    l0.b0.l0(8, 0);
                    l0.b0.l0(8, 1);
                }
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f14872l);
        u0.c.f17388o.d(this.f14875o);
        u0.c.f17390q.d(this.f14876p);
        qt.q0(this.f14870j);
        y0.g.f18094d.d(this.f14871k);
        y0.g.f18095e.d(this.f14871k);
        w0.e.f17815a.d(this.f14870j);
        w0.e.f17819e.d(this.f14870j);
        l0.b0.o0(this.f14878r);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 5) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            if (i2 != 1003) {
                return;
            }
            z.k.s(227, 2, -3, 1, 0);
        } else if (T2(iArr, 2)) {
            z.k.s(227, 2, 173, iArr[0], iArr[1]);
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f14856u = F[o0.a(i2, 0, 36)];
        }
    }

    public void c3() {
        int i2;
        int[] iArr = new int[15];
        Log.d("LG", "CarDisVolume");
        this.f14862b = 4;
        int i3 = 0;
        for (int i4 = 0; i4 < 15; i4++) {
            iArr[i4] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 210;
        iArr[2] = b3();
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            iArr[3] = 77;
            iArr[4] = 85;
            iArr[5] = 84;
            iArr[6] = 69;
        } else {
            iArr[3] = 86;
            iArr[4] = 79;
            iArr[5] = 76;
            if (i2 >= 10) {
                iArr[7] = (i2 / 10) + 48;
            }
            iArr[8] = (i2 % 10) + 48;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i3 < 15) {
            int i5 = i3 + 1;
            iArr2[i5] = (byte) iArr[i3];
            i3 = i5;
        }
        z.k.s(iArr2);
    }

    public void e3(int i2) {
        int i3;
        switch (i2) {
            case 32:
            case 33:
            case 34:
                if (i2 != 32) {
                    if (i2 != 33) {
                        if (i2 == 34 && (i3 = w0.d.f17796h) >= 65536 && i3 < 131072) {
                            w0.f.f(65537);
                            break;
                        }
                    } else {
                        int i4 = w0.d.f17796h;
                        if (i4 >= 65536 && i4 < 131072) {
                            w0.f.f(65536);
                            break;
                        }
                    }
                } else {
                    int i5 = w0.d.f17796h;
                    if (i5 >= 0 && i5 < 65536) {
                        w0.f.f(0);
                        break;
                    }
                }
                break;
            case 35:
                o1.u.E();
                break;
            case 36:
                o1.u.i();
                break;
            case 37:
                o1.u.q();
                break;
            case 38:
                o1.u.j();
                break;
            case 39:
                o1.u.i();
                break;
        }
    }

    public final void init() {
        o1.f<g> fVar = I;
        fVar.f(3, new g(3, 100));
        fVar.f(2, new g(2, 100));
        fVar.f(4, new g(4, 100));
        fVar.f(6, new g(6, 100));
        fVar.f(8, new g(8, 100));
        fVar.f(1, new g(1, 100));
    }
}

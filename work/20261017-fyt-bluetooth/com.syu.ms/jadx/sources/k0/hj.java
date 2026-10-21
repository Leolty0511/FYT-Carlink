package k0;

import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;
import java.util.Calendar;
import java.util.TimeZone;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class hj extends lt implements o1.q {
    public static int B;
    public static int C;
    public static int D;
    public static int E;
    public static int F;
    public static int G;
    public static int H;
    public static int I;
    public static final int[] J = {0, 2, 3, 5, 6, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40};
    public static final int[] K = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    public static final int[] L = {0, 1, 1, 2, 2, 3, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10};
    public static final o1.f<l> M = new o1.f<>();
    public static final o1.y N = new o1.y();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6001c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6002d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6003e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6004f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f6005g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6006h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6000b = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6007i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f6008j = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 13}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{11, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 16}, new int[]{16, 6}, new int[]{129, 34}, new int[]{130, 35}, new int[]{131, 32}, new int[]{132, 33}, new int[]{133, 3}, new int[]{134, 4}, new int[]{135, 32}, new int[]{136, 33}, new int[]{137, 6}, new int[]{138, 9}, new int[]{141, 1}, new int[]{139, 9}, new int[]{141, 9}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final byte[] f6009k = new byte[1024];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f6010l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f6011m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f6012n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public byte f6013o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f6014p = new c();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f6015q = new d();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f6016r = new e();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f6017s = new f();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f6018t = new g();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f6019u = new h();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public long f6020v = -1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f6021w = -1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f6022x = true;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f6023y = new i();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f6024z = new a();
    public Runnable A = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 0 || u0.b.f17320f == 0 || hj.I == 0) {
                hj.this.Z2(0);
            } else if (u0.b.f17306a0 == 1 && u0.b.f17320f == 1 && hj.I == 1) {
                hj.this.v3();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 1 && u0.b.f17320f == 1) {
                if (y0.f.f18055i == 1) {
                    hj.this.Z2(0);
                } else {
                    hj.this.Z2(y0.f.f18037c);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hj hjVar = hj.this;
            byte b2 = (byte) (hjVar.f6013o + 1);
            hjVar.f6013o = b2;
            if (b2 > 5) {
                l0.b0.o0(hjVar.f6014p);
                hj.this.f6013o = (byte) 0;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hj hjVar = hj.this;
            int i2 = hjVar.f6000b;
            if (i2 > 0) {
                hjVar.f6000b = i2 - 1;
            }
            if (hjVar.f6000b == 0) {
                hj.a3();
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hj.this.c3();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hj.this.x3(211, u0.b.i3);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 2, 10, 1, 50);
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
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (hj.this.f6020v == millis && hj.this.f6021w == zIs24HourFormat) {
                return;
            }
            hj.this.f6020v = millis;
            hj.this.f6021w = zIs24HourFormat ? 1 : 0;
            z.k.s(227, 10, -53, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, zIs24HourFormat ? 1 : 0, (byte) (Calendar.getInstance(TimeZone.getDefault()).get(9) == 0 ? 0 : 1), 0, 0, 0);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (hj.this.f6022x) {
                hj.this.w3(hj.C);
                qt.p0(hj.this.f6023y);
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hj.this.w3(hj.B);
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hj.this.w3(hj.B);
        }
    }

    public static class l implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f6036a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f6037b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f6038c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f6039d;

        public synchronized void a(int i2) {
            this.f6037b = i2;
            if (!this.f6038c) {
                this.f6038c = true;
                o1.k.a().postDelayed(this, this.f6039d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 2, 173, this.f6036a, this.f6037b);
            this.f6038c = false;
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

    public static void u3(int i2, int i3) {
        l lVarC = M.c(i2);
        if (lVarC != null) {
            lVarC.a(i3);
        }
    }

    public static void y3(byte[] bArr) {
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

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        g3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    g3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        g3(2);
                    }
                } else if (nt.f8645g[11] == 0) {
                    g3(2);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        g3(4);
                    }
                } else if (nt.f8645g[13] == 0) {
                    g3(4);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        g3(5);
                    }
                } else if (nt.f8645g[65] == 0) {
                    g3(5);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        g3(6);
                    }
                } else if (nt.f8645g[16] == 0) {
                    g3(6);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        g3(7);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    g3(7);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    g3(12);
                } else {
                    g3(11);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    g3(14);
                } else {
                    g3(13);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    g3(16);
                } else {
                    g3(15);
                }
                break;
        }
    }

    @Override // k0.lt
    public void P2(int[] iArr) {
        if (this.f7886a.f8309d == 1) {
            int[] iArr2 = y0.f.f18038c0;
            D = o1.o0.a(iArr2[0] >> 1, 0, 10);
            E = o1.o0.a(iArr2[1] >> 1, 0, 10);
            int iA = o1.o0.a(iArr2[2] >> 1, 0, 10);
            F = iA;
            if (iArr == null || iArr.length == 0) {
                int[] iArr3 = K;
                u3(4, iArr3[D]);
                u3(8, iArr3[E]);
                u3(6, iArr3[F]);
                return;
            }
            if (iArr.length > 1) {
                int i2 = iArr[1];
                if (i2 == 0) {
                    u3(4, K[D]);
                } else if (i2 == 1) {
                    u3(8, K[E]);
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    u3(6, K[iA]);
                }
            }
        }
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (this.f7886a.f8308c == 1) {
            G = o1.o0.a(y0.f.f18061l, 0, 16);
            int iA = o1.o0.a(y0.f.f18057j, 0, 16);
            H = iA;
            if (iArr == null || iArr.length == 0) {
                int[] iArr2 = L;
                u3(3, iArr2[G]);
                u3(2, iArr2[H]);
            } else if (iArr.length > 1) {
                int i2 = iArr[1];
                if (i2 == 0) {
                    u3(2, L[iA]);
                } else {
                    if (i2 != 1) {
                        return;
                    }
                    u3(3, L[G]);
                }
            }
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f6020v = -1L;
        this.f6021w = -1;
        u0.c.f17388o.a(this.f6017s, 1);
        qt.z(this.f6019u);
        if (App.c().getResources().getConfiguration().orientation == 1) {
            qt.y(this.f6018t);
        }
        qt.z(this.f6015q);
        w0.e.f17815a.a(this.f6015q, 1);
        w0.e.f17819e.a(this.f6015q, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        mtVar.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
        int i2 = nt.f8637c;
        if (i2 == 1 || i2 == 2) {
            mtVar.f8313h = 1;
        }
        mtVar.f8313h = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2;
        int[][] iArr2;
        byte b3;
        int[][] iArr3;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        byte b4 = bArr[i2 + 1];
        if (b4 == -32) {
            e3(bArr[i2 + 2] & 255);
            return;
        }
        if (b4 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b4 == 65) {
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
        if (b4 == 114) {
            if ((bArr[i2 + 2] & 255 & 128) == 128) {
                this.f6001c = 1;
            } else {
                this.f6001c = 0;
            }
            qt.p(bArr[i2 + 6] & 255, bArr[i2 + 7] & 255, 134);
            this.f6005g = bArr[i2 + 4] & 255;
            int i10 = 0;
            while (true) {
                iArr = this.f6008j;
                if (i10 >= iArr.length) {
                    break;
                }
                int i11 = this.f6005g;
                if (i11 == iArr[i10][0]) {
                    if (i11 == 0) {
                        break;
                    }
                    this.f6002d = i10;
                    break;
                }
                i10++;
            }
            if (this.f6005g != 0) {
                if (i10 >= iArr.length || (b2 = this.f6013o) != 0) {
                    return;
                }
                this.f6013o = (byte) (b2 + 1);
                if (iArr[i10][0] == 15 && nt.f8637c == 2) {
                    f3();
                } else {
                    l0.b0.l0(iArr[i10][1], 0);
                }
                l0.b0.a(this.f6014p);
                return;
            }
            int i12 = this.f6002d;
            if (i12 < iArr.length) {
                i4 = 255;
                if (i12 != 255) {
                    l0.b0.l0(iArr[i12][1], 1);
                    l0.b0.o0(this.f6014p);
                    this.f6013o = (byte) 0;
                }
            } else {
                i4 = 255;
            }
            this.f6002d = i4;
            return;
        }
        if (b4 == 116) {
            int i13 = bArr[i2 + 2] & 255;
            this.f6007i = i13;
            if (i13 != 0) {
                this.f6007i = i13 | 128;
            }
            int i14 = 0;
            while (true) {
                iArr2 = this.f6008j;
                if (i14 >= iArr2.length) {
                    break;
                }
                int i15 = this.f6007i;
                if (i15 == iArr2[i14][0]) {
                    if (i15 == 0) {
                        break;
                    }
                    this.f6003e = i14;
                    break;
                }
                i14++;
            }
            if (this.f6007i != 0) {
                if (i14 < iArr2.length) {
                    l0.b0.l0(iArr2[i14][1], 0);
                }
                b3 = 255;
            } else {
                int i16 = this.f6003e;
                if (i16 < iArr2.length) {
                    b3 = 255;
                    if (i16 != 255) {
                        l0.b0.l0(iArr2[i16][1], 1);
                    }
                } else {
                    b3 = 255;
                }
                this.f6003e = b3;
            }
            if (this.f6007i == 0) {
                int i17 = i2 + 3;
                int i18 = bArr[i17] & b3;
                int i19 = this.f6006h;
                if (i18 != i19) {
                    if (i19 == 0 && (bArr[i17] & b3) == b3) {
                        this.f6007i = 2;
                    } else if (!(i19 == b3 && (bArr[i17] & b3) == 0) && (bArr[i17] & b3) <= i19) {
                        this.f6007i = 2;
                    } else {
                        this.f6007i = 1;
                    }
                }
                this.f6006h = bArr[i17] & b3;
                int i20 = 0;
                while (true) {
                    iArr3 = this.f6008j;
                    if (i20 >= iArr3.length) {
                        break;
                    }
                    if (this.f6007i == iArr3[i20][0]) {
                        if (this.f6005g == 0) {
                            break;
                        }
                        this.f6004f = i20;
                        break;
                    }
                    i20++;
                }
                if (this.f6007i != 0) {
                    if (i20 < iArr3.length) {
                        l0.b0.l0(iArr3[i20][1], 0);
                        return;
                    }
                    return;
                }
                int i21 = this.f6004f;
                if (i21 < iArr3.length) {
                    i5 = 255;
                    if (i21 != 255) {
                        l0.b0.l0(iArr3[i21][1], 1);
                    }
                } else {
                    i5 = 255;
                }
                this.f6004f = i5;
                return;
            }
            return;
        }
        if (b4 != 49) {
            if (b4 != 50) {
                return;
            }
            int i22 = i2 + 4;
            int i23 = i2 + 5;
            qt.y0(99, ((bArr[i22] << 8) & 65280) | (bArr[i23] & 255));
            qt.y0(1032, ((bArr[i22] << 8) & 65280) | (bArr[i23] & 255));
            qt.y0(98, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
            return;
        }
        byte b5 = bArr[i2 + 2];
        byte b6 = bArr[i2 + 3];
        byte b7 = bArr[i2 + 4];
        byte b8 = bArr[i2 + 6];
        byte b9 = bArr[i2 + 7];
        int i24 = i2 + 8;
        byte b10 = bArr[i24];
        int i25 = i2 + 9;
        byte b11 = bArr[i25];
        qt.y0(10, (b5 >> 6) & 1);
        qt.y0(62, (b5 >> 2) & 1);
        qt.y0(11, (b5 >> 0) & 1);
        qt.y0(12, (b6 >> 4) & 1);
        qt.y0(13, (b6 >> 3) & 1);
        qt.y0(16, (b7 >> 5) & 1);
        qt.y0(65, (b7 >> 4) & 1);
        int i26 = b8 & 255;
        if (i26 == 1) {
            i6 = 0;
            i7 = 0;
            i8 = 0;
            i9 = 1;
        } else if (i26 == 3) {
            i6 = 0;
            i7 = 0;
            i9 = 0;
            i8 = 1;
        } else if (i26 == 12) {
            i7 = 0;
            i9 = 0;
            i6 = 1;
            i8 = 1;
        } else if (i26 == 5) {
            i6 = 0;
            i9 = 0;
            i7 = 1;
            i8 = 1;
        } else if (i26 != 6) {
            i6 = 0;
            i7 = 0;
            i8 = 0;
            i9 = 0;
        } else {
            i6 = 0;
            i8 = 0;
            i9 = 0;
            i7 = 1;
        }
        qt.y0(15, 0);
        qt.y0(18, i6);
        qt.y0(19, i7);
        qt.y0(20, i8);
        qt.y0(49, i9);
        qt.y0(77, b8);
        qt.y0(21, b9 & 255);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b10 = bArr[i25];
            b11 = bArr[i24];
        }
        byte b12 = b11;
        int i27 = b10 & 255;
        if (i27 == 254) {
            qt.y0(27, -2);
        } else if (i27 != 255) {
            qt.y0(27, i27);
        } else {
            qt.y0(27, -3);
        }
        int i28 = b12 & 255;
        if (i28 == 254) {
            qt.y0(28, -2);
        } else if (i28 != 255) {
            qt.y0(28, i28);
        } else {
            qt.y0(28, -3);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17388o.d(this.f6017s);
        qt.q0(this.f6019u);
        if (App.c().getResources().getConfiguration().orientation == 1) {
            qt.p0(this.f6018t);
        }
        qt.q0(this.f6015q);
        w0.e.f17815a.d(this.f6015q);
        w0.e.f17819e.d(this.f6015q);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 100) {
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
        } else {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            if (iArr[1] == 1) {
                y3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, (byte) iArr[0], 1, 0});
            } else if (iArr[1] == 0) {
                y3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, (byte) iArr[0], 0, 0});
            }
            if (iArr[1] == 1) {
                z.k.s(227, 2, 61, iArr[0], 1);
            } else if (iArr[1] == 0) {
                z.k.s(227, 2, 61, iArr[0], 0);
            }
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (this.f7886a.f8307b == 1) {
            int i3 = J[o1.o0.a(i2, 0, 36)];
            C = i3;
            w3(i3);
        }
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
            return;
        }
        if (this.f6010l + bArr.length > 1024) {
            this.f6010l = 0;
            this.f6011m = 0;
            this.f6012n = 0;
        }
        System.arraycopy(bArr, 0, this.f6009k, this.f6010l, bArr.length);
        int length = this.f6010l + bArr.length;
        this.f6010l = length;
        int i5 = this.f6012n;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f6009k[2];
            int i6 = 3;
            while (true) {
                i4 = this.f6012n;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f6009k[i6]);
                i6++;
            }
            byte b3 = (byte) ((b2 - 1) & 255);
            byte[] bArr2 = this.f6009k;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 2, bArr2[2]);
                this.f6011m = this.f6012n + 1;
            } else {
                this.f6011m = 2;
            }
            this.f6012n = 0;
        }
        int i7 = this.f6010l - 3;
        while (true) {
            i2 = this.f6011m;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f6009k;
            if (bArr3[i2] == 90 && bArr3[i2 + 1] == -91) {
                if (this.f6012n > 512) {
                    this.f6012n = 0;
                } else {
                    int i8 = bArr3[i2 + 2] + i2 + 4;
                    this.f6012n = i8;
                    if (i8 >= this.f6010l) {
                        this.f6012n = i8 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 2];
                    int i9 = i2 + 3;
                    while (true) {
                        i3 = this.f6012n;
                        if (i9 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f6009k[i9]);
                        i9++;
                    }
                    byte b5 = (byte) ((b4 - 1) & 255);
                    byte[] bArr4 = this.f6009k;
                    if (b5 == bArr4[i3]) {
                        int i10 = this.f6011m;
                        U2(bArr4, i10 + 2, bArr4[i10 + 2]);
                        this.f6011m = this.f6012n;
                    } else {
                        this.f6011m++;
                    }
                    this.f6012n = 0;
                }
            }
            this.f6011m++;
        }
        if (i2 != 0) {
            int i11 = this.f6010l - i2;
            this.f6010l = i11;
            if (i11 != 0) {
                byte[] bArr5 = this.f6009k;
                System.arraycopy(bArr5, i2, bArr5, 0, i11);
            }
            this.f6011m = 0;
        }
    }

    public void c3() {
        int i2;
        int[] iArr = new int[15];
        this.f6000b = 4;
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
        switch (i2) {
            case 32:
                w0.d.f17790b.x(-2);
                break;
            case 33:
            case 34:
                w0.d.f17790b.x(-3);
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

    public void f3() {
        z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 1, 0);
    }

    public final void g3(int i2) {
        byte b2 = (byte) i2;
        y3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, b2, 1, 0});
        y3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, b2, 0, 0});
        z.k.s(227, 2, 61, i2, 1);
        z.k.s(227, 2, 61, i2, 0);
    }

    public final void v3() {
        Z2(y0.f.f18037c);
        P2(null);
        R2(null);
    }

    public final synchronized void w3(int i2) {
        int i3 = B;
        int i4 = C;
        if (i3 < i4) {
            this.f6022x = false;
            int i5 = i3 + 1;
            B = i5;
            u3(1, i5);
            o1.k.a().postDelayed(new j(), 100L);
        } else if (i3 > i4) {
            this.f6022x = false;
            int i6 = i3 - 1;
            B = i6;
            u3(1, i6);
            o1.k.a().postDelayed(new k(), 100L);
        } else {
            this.f6022x = true;
            B = i4;
            u3(1, i4);
        }
    }

    public final void x3(int i2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[19];
        iArr[0] = 227;
        iArr[1] = 16;
        iArr[2] = i2;
        int length = str.length() <= 7 ? str.length() : 7;
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            iArr[i4 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i4 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }
}

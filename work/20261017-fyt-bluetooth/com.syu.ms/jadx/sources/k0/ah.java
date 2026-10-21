package k0;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ah extends lt {
    public static int A = 7;
    public static int B = 7;
    public static int C = 7;
    public static int D = 7;
    public static int E = 7;
    public static int F = 0;
    public static int G = 3;
    public static int H = 1;
    public static int I = 1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f3306x = 255;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f3307y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f3308z = 16;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3310c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3311d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 18}, new int[]{7, 13}, new int[]{8, 26}, new int[]{9, 0}, new int[]{10, 1}, new int[]{11, 6}, new int[]{12, 21}, new int[]{13, 12}, new int[]{14, 7}, new int[]{15, 8}, new int[]{16, 30}, new int[]{17, 31}, new int[]{18, 80}, new int[]{19, 81}, new int[]{20, 82}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f3312e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f3313f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f3314g = new c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3315h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3316i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3317j = 3;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f3318k = 4;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f3319l = 5;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f3320m = 6;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f3321n = 7;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f3322o = 8;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f3323p = 9;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f3324q = 10;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f3325r = 11;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public o1.g0 f3326s = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f3327t = new d();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public byte f3328u = 5;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f3329v = new e();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f3330w = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = ah.f3306x;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 == 13 && ah.f3306x != 13) {
                    z.k.s(227, 192, 5, 12, 0, 0, 0, 0);
                }
                ah.f3306x = u0.b.D;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            z.k.s(227, 198, 6, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ah.a3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ah.this.f3330w);
            ah.this.f3328u = (byte) 5;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ah ahVar = ah.this;
            ahVar.f3328u = (byte) (ahVar.f3328u - 1);
            if (u0.b.f17306a0 == 1) {
                ahVar.g3(ahVar.f3326s.b(1, 0));
                ah ahVar2 = ah.this;
                ahVar2.b3(ahVar2.f3326s.b(2, 16), ah.this.f3326s.b(3, 7), ah.this.f3326s.b(4, 7), ah.this.f3326s.b(5, 7), ah.this.f3326s.b(6, 7), ah.this.f3326s.b(7, 7), ah.this.f3326s.b(8, 0), ah.this.f3326s.b(9, 3), ah.this.f3326s.b(10, 1), ah.this.f3326s.b(11, 1));
                switch (nt.f8633a) {
                    case 1442244:
                    case 7602631:
                        z.k.s(227, 198, 2, 19, 1);
                        break;
                    case 7537095:
                    case 9241015:
                        z.k.s(227, 198, 2, 19, 0);
                        break;
                }
            }
            ah ahVar3 = ah.this;
            if (ahVar3.f3328u > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(ahVar3.f3330w);
                ah.this.f3328u = (byte) 5;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0033  */
    /* JADX WARN: Code duplicated, block: B:17:0x003a  */
    public static void a3() {
        int[] iArr = new int[7];
        int i2 = 0;
        for (int i3 = 0; i3 < 7; i3++) {
            iArr[i3] = 0;
        }
        iArr[0] = 192;
        iArr[1] = 5;
        int i4 = u0.b.D;
        if (i4 == 1) {
            iArr[2] = 1;
            int i5 = w0.d.f17796h;
            if (i5 == 65536 || i5 == 65537 || i5 == 65538) {
                iArr[3] = 0;
            } else if (i5 == 0 || i5 == 1) {
                iArr[3] = 16;
            }
            int i6 = w0.d.f17797i;
            iArr[4] = (i6 >> 8) & 255;
            iArr[5] = i6 & 255;
        } else if (i4 == 4) {
            iArr[2] = 2;
            iArr[3] = o0.e.C;
        } else if (i4 == 10) {
            iArr[2] = 8;
            iArr[3] = u0.b.r3;
        } else if (i4 == 13) {
            iArr[2] = 12;
        } else if (i4 == 7) {
            iArr[2] = 2;
            iArr[3] = o0.e.C;
        } else if (i4 != 8) {
            iArr[2] = 7;
        } else {
            iArr[2] = 8;
            iArr[3] = u0.b.r3;
        }
        int[] iArr2 = new int[8];
        iArr2[0] = 227;
        while (i2 < 7) {
            int i7 = i2 + 1;
            iArr2[i7] = iArr[i2];
            i2 = i7;
        }
        z.k.s(iArr2);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f3326s.a();
        u0.c.f17386m.a(this.f3329v, 1);
        u0.c.f17374a.a(this.f3312e, 1);
        qt.z(this.f3313f);
        qt.z(this.f3314g);
        this.f3328u = (byte) 5;
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8317l = 0;
        mtVar.f8320o = 0;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        } else {
            this.f7886a.f8314i = 1;
        }
        l0.b0.a(this.f3327t);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f3310c = b3 & 255;
            int i6 = 0;
            while (true) {
                iArr = this.f3311d;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f3310c;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f3309b = i6;
                    break;
                }
                i6++;
            }
            switch (this.f3310c) {
                case 14:
                    for (int i8 = 0; i8 < (b4 & 255); i8++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    break;
                case 15:
                    for (int i9 = 0; i9 < (b4 & 255); i9++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    break;
                case 16:
                    for (int i10 = 0; i10 < (b4 & 255); i10++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    break;
                case 17:
                    for (int i11 = 0; i11 < (b4 & 255); i11++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    break;
                case 18:
                    for (int i12 = 0; i12 < (b4 & 255); i12++) {
                        l0.b0.l0(81, 0);
                    }
                    l0.b0.l0(81, 1);
                    break;
                case 19:
                    for (int i13 = 0; i13 < (b4 & 255); i13++) {
                        l0.b0.l0(80, 0);
                    }
                    l0.b0.l0(80, 1);
                    break;
                default:
                    int i14 = b4 & 255;
                    if (i14 == 1) {
                        if (i6 < iArr.length) {
                            l0.b0.l0(iArr[i6][1], 0);
                        }
                    } else if (i14 == 0) {
                        int i15 = this.f3309b;
                        if (i15 < iArr.length && i15 != 255) {
                            l0.b0.l0(iArr[i15][1], 1);
                        }
                        this.f3309b = 255;
                    }
                    break;
            }
        }
        if (b2 == 39) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            int i16 = i2 + 4;
            byte b7 = bArr[i16];
            int i17 = i2 + 5;
            byte b8 = bArr[i17];
            byte b9 = bArr[i2 + 6];
            qt.y0(10, (b5 >> 7) & 1);
            qt.y0(11, (b5 >> 6) & 1);
            qt.y0(12, (b5 >> 5) & 1);
            qt.y0(13, (b5 >> 4) & 1);
            qt.y0(26, (b5 >> 3) & 1);
            qt.y0(14, (b5 >> 2) & 1);
            qt.y0(65, (b5 >> 1) & 1);
            qt.y0(16, (b5 >> 0) & 1);
            qt.y0(18, (b6 >> 7) & 1);
            qt.y0(19, (b6 >> 6) & 1);
            int i18 = b6 >> 5;
            qt.y0(20, i18 & 1);
            qt.y0(77, 7 & i18);
            qt.y0(21, b6 & DhcpPacket.DHCP_DOMAIN_NAME);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i5 = b7;
                i4 = b8;
                i5 = bArr[i17] & 255;
                i4 = bArr[i16] & 255;
            }
            i5 = b7;
            i4 = b8;
            int i19 = i5 & 255;
            if (i5 == 0) {
                qt.y0(27, -2);
            } else if (i5 == -1) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i19);
            }
            int i20 = i4 & 255;
            if (i4 == 0) {
                qt.y0(28, -2);
            } else if (i4 == -1) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i20);
            }
            qt.y0(22, (b9 >> 7) & 1);
            qt.y0(23, (b9 >> 6) & 1);
            qt.y0(24, (b9 >> 5) & 1);
            qt.y0(67, (b9 >> 3) & 1);
            qt.y0(54, (b9 >> 2) & 1);
            qt.y0(52, (b9 >> 1) & 1);
            qt.y0(37, (b9 >> 0) & 1);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 10880);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            this.f3328u = (byte) 0;
            return;
        }
        if (b2 == 53) {
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i21 = i2 + 2;
                l0.c0.b((bArr[i21] >> 5) & 1, (bArr[i21] >> 4) & 1, 0);
            } else {
                int i22 = i2 + 2;
                l0.c0.a((bArr[i22] >> 5) & 1, (bArr[i22] >> 4) & 1, 0);
            }
            qt.y0(116, bArr[i2 + 2] & 255);
            qt.y0(117, bArr[i2 + 3] & 255);
            qt.y0(118, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(119, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(120, ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(121, bArr[i2 + 12] & 255);
            int i23 = i2 + 13;
            qt.y0(122, (bArr[i23] >> 7) & 1);
            qt.y0(123, (bArr[i23] >> 6) & 1);
            l0.h0.u(bArr[i2 + 8] & 255);
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.t1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.t1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.t1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.t1(bArr[i2 + 5] & 255));
                break;
            case 35:
                u0.d.D2(l0.c0.t1(bArr[i2 + 2] & 255));
                u0.d.E2(l0.c0.t1(bArr[i2 + 3] & 255));
                u0.d.F2(l0.c0.t1(bArr[i2 + 4] & 255));
                u0.d.G2(l0.c0.t1(bArr[i2 + 5] & 255));
                break;
            case 36:
                int i24 = i2 + 2;
                int i25 = bArr[i24] & 255;
                if ((bArr[i24] & 1) == 1) {
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(2, (i25 >> 6) & 1);
                        qt.y0(1, (i25 >> 7) & 1);
                    } else {
                        qt.y0(2, (i25 >> 7) & 1);
                        qt.y0(1, (i25 >> 6) & 1);
                    }
                    qt.y0(4, (i25 >> 5) & 1);
                    qt.y0(3, (i25 >> 4) & 1);
                    qt.y0(5, (i25 >> 3) & 1);
                    qt.y0(0, (i25 >> 2) & 1);
                }
                break;
            default:
                switch (b2) {
                    case 55:
                        int i26 = i2 + 2;
                        qt.y0(99, (bArr[i26] >> 4) & 1);
                        qt.y0(100, (bArr[i26] >> 0) & 15);
                        break;
                    case 56:
                        int i27 = i2 + 2;
                        qt.y0(101, (bArr[i27] >> 0) & 1);
                        qt.y0(102, (bArr[i27] >> 1) & 3);
                        qt.y0(103, (bArr[i27] >> 3) & 3);
                        qt.y0(104, (bArr[i27] >> 5) & 3);
                        qt.y0(105, (bArr[i27] >> 7) & 1);
                        qt.y0(106, bArr[i2 + 3] & 255);
                        qt.y0(107, bArr[i2 + 4] & 255);
                        qt.y0(108, bArr[i2 + 5] & 255);
                        qt.y0(109, 255 & bArr[i2 + 6]);
                        int i28 = i2 + 7;
                        qt.y0(110, (bArr[i28] >> 7) & 1);
                        qt.y0(111, (bArr[i28] >> 6) & 1);
                        qt.y0(112, (bArr[i28] >> 5) & 1);
                        int i29 = i2 + 8;
                        qt.y0(149, 7 & (bArr[i29] >> 5));
                        qt.y0(150, (bArr[i29] >> 4) & 1);
                        qt.y0(151, (bArr[i29] >> 3) & 1);
                        break;
                    case 57:
                        int i30 = i2 + 2;
                        qt.y0(113, (bArr[i30] >> 0) & 1);
                        qt.y0(114, (bArr[i30] >> 5) & 3);
                        qt.y0(115, (bArr[i30] >> 4) & 1);
                        break;
                    case 58:
                        int i31 = i2 + 2;
                        qt.y0(135, (bArr[i31] >> 0) & 1);
                        qt.y0(136, (bArr[i31] >> 1) & 1);
                        qt.y0(137, (bArr[i31] >> 2) & 1);
                        qt.y0(138, (bArr[i31] >> 3) & 1);
                        qt.y0(139, (bArr[i31] >> 4) & 1);
                        qt.y0(140, (bArr[i31] >> 5) & 1);
                        int i32 = i2 + 3;
                        qt.y0(141, (bArr[i32] >> 4) & 15);
                        qt.y0(142, 3 & (bArr[i32] >> 2));
                        qt.y0(143, (bArr[i32] >> 1) & 1);
                        qt.y0(144, (bArr[i32] >> 0) & 1);
                        qt.y0(145, bArr[i2 + 4] & 255);
                        qt.y0(146, bArr[i2 + 5] & 255);
                        qt.y0(147, bArr[i2 + 6] & 255);
                        qt.y0(148, bArr[i2 + 7] & 255);
                        break;
                    case 59:
                        qt.y0(124, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(125, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(126, bArr[i2 + 6] & 255);
                        qt.y0(127, bArr[i2 + 7] & 255);
                        break;
                    case 60:
                        qt.y0(128, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(129, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(130, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(131, bArr[i2 + 8] & 255);
                        qt.y0(132, bArr[i2 + 11] & 255);
                        qt.y0(133, (bArr[i2 + 10] & 255) | ((bArr[i2 + 9] << 8) & 65280));
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f3326s.j();
        u0.c.f17386m.d(this.f3329v);
        l0.b0.p0(this.f3330w);
        u0.c.f17374a.d(this.f3312e);
        qt.q0(this.f3313f);
        qt.q0(this.f3314g);
        l0.b0.o0(this.f3327t);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 163) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 198, 2, 8, iArr[0]);
            return;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                z.k.s(227, 200, 2, iArr[0], iArr[1]);
            } else if (i2 == 3) {
                z.k.s(227, 144, 2, iArr[0], iArr[1]);
            } else if (i2 == 4) {
                b3(iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7], iArr[8], iArr[9]);
            }
        } else {
            if (iArr[0] == 20) {
                g3(iArr[1]);
                return;
            }
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
        }
    }

    public final void b3(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        f3308z = i2;
        A = i3;
        B = i4;
        C = i5;
        D = i6;
        E = i7;
        F = i8;
        G = i9;
        H = i10;
        I = i11;
        z.k.s(227, 201, 8, i2, i3, i4, i5, i6, i7, ((i8 << 4) & 240) | (i9 & 15), ((i10 << 7) & 128) | ((i11 << 6) & 64));
        qt.y0(153, f3308z);
        int iB = this.f3326s.b(2, 16);
        int i12 = f3308z;
        if (iB != i12) {
            this.f3326s.g(2, i12);
        }
        qt.y0(154, A);
        int iB2 = this.f3326s.b(3, 7);
        int i13 = A;
        if (iB2 != i13) {
            this.f3326s.g(3, i13);
        }
        qt.y0(155, B);
        int iB3 = this.f3326s.b(4, 7);
        int i14 = B;
        if (iB3 != i14) {
            this.f3326s.g(4, i14);
        }
        qt.y0(156, C);
        int iB4 = this.f3326s.b(5, 7);
        int i15 = C;
        if (iB4 != i15) {
            this.f3326s.g(5, i15);
        }
        qt.y0(157, D);
        int iB5 = this.f3326s.b(6, 7);
        int i16 = D;
        if (iB5 != i16) {
            this.f3326s.g(6, i16);
        }
        qt.y0(158, E);
        int iB6 = this.f3326s.b(7, 7);
        int i17 = E;
        if (iB6 != i17) {
            this.f3326s.g(7, i17);
        }
        qt.y0(159, F);
        int iB7 = this.f3326s.b(8, 0);
        int i18 = F;
        if (iB7 != i18) {
            this.f3326s.g(8, i18);
        }
        qt.y0(160, G);
        int iB8 = this.f3326s.b(9, 3);
        int i19 = G;
        if (iB8 != i19) {
            this.f3326s.g(9, i19);
        }
        qt.y0(161, H);
        int iB9 = this.f3326s.b(10, 1);
        int i20 = H;
        if (iB9 != i20) {
            this.f3326s.g(10, i20);
        }
        qt.y0(162, I);
        int iB10 = this.f3326s.b(11, 1);
        int i21 = I;
        if (iB10 != i21) {
            this.f3326s.g(11, i21);
        }
    }

    public final void g3(int i2) {
        qt.y0(152, i2);
        z.k.s(227, 198, 2, 20, i2);
        f3307y = i2;
        int iB = this.f3326s.b(1, 0);
        int i3 = f3307y;
        if (iB != i3) {
            this.f3326s.g(1, i3);
        }
    }
}

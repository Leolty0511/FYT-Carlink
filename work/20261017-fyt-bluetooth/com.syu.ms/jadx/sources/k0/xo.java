package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class xo extends lt {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f12205r = 10;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f12206s = 9;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f12207t = 9;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f12208u = 9;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f12209v = 9;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f12210w = 9;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f12211x;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12212b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12213c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12214d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 13}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 1}, new int[]{11, 12}, new int[]{12, 0}, new int[]{13, 38}, new int[]{14, 5}, new int[]{15, 34}, new int[]{16, 35}, new int[]{17, 32}, new int[]{18, 33}, new int[]{19, 29}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 31}, new int[]{23, 30}, new int[]{24, 24}, new int[]{25, 54}, new int[]{26, 18}, new int[]{27, 6}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f12215e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f12216f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12217g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f12218h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f12219i = new d();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public o1.g0 f12220j = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f12221k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f12222l = 3;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f12223m = 4;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f12224n = 5;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f12225o = 6;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f12226p = 7;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f12227q = 8;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            byte b2 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b3 = (byte) (time.month + 1);
            byte b4 = (byte) time.monthDay;
            byte b5 = (byte) time.hour;
            byte b6 = (byte) time.minute;
            z.k.s(227, 198, 6, 0, i2, 0, 0, 0, 0);
            z.k.s(227, 198, 6, 1, b2, b3, b4, b5, b6);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            xo.a3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(xo.this.f12219i);
            xo.this.f12217g = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            xo xoVar = xo.this;
            int i2 = xoVar.f12217g - 1;
            xoVar.f12217g = i2;
            if (i2 <= 0) {
                l0.b0.p0(xoVar.f12219i);
                xo.this.f12217g = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 2, 53, 0);
                xo xoVar2 = xo.this;
                xoVar2.b3(xoVar2.f12220j.b(1, 10), xo.this.f12220j.b(6, 9), xo.this.f12220j.b(7, 9), xo.this.f12220j.b(3, 9), xo.this.f12220j.b(4, 9), xo.this.f12220j.b(5, 9), xo.this.f12220j.b(8, 0));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0031  */
    /* JADX WARN: Code duplicated, block: B:16:0x0038  */
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
            if (i5 == 65536) {
                iArr[3] = 0;
            } else if (i5 == 65537) {
                iArr[3] = 1;
            } else if (i5 == 65538) {
                iArr[3] = 2;
            } else if (i5 == 0 || i5 == 1) {
                iArr[3] = 16;
            }
            if (i5 < 65536 || i5 > 65538) {
                int i6 = w0.d.f17797i;
                iArr[4] = (i6 >> 8) & 255;
                iArr[5] = i6 & 255;
            } else {
                int i7 = w0.d.f17797i;
                iArr[4] = (i7 >> 8) & 255;
                iArr[5] = i7 & 255;
            }
        } else if (i4 == 10) {
            iArr[2] = 8;
            iArr[3] = u0.b.r3;
        } else if (i4 == 4) {
            iArr[2] = 2;
            iArr[3] = o0.e.C;
        } else if (i4 == 5) {
            iArr[2] = 7;
        } else if (i4 == 7) {
            iArr[2] = 2;
            iArr[3] = o0.e.C;
        } else if (i4 != 8) {
            iArr[2] = 12;
        } else {
            iArr[2] = 8;
            iArr[3] = u0.b.r3;
        }
        int[] iArr2 = new int[8];
        iArr2[0] = 227;
        while (i2 < 7) {
            int i8 = i2 + 1;
            iArr2[i8] = iArr[i2];
            i2 = i8;
        }
        z.k.s(iArr2);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f12220j.a();
        u0.c.f17386m.a(this.f12218h, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        w0.e.f17815a.a(this.f12216f, 1);
        w0.e.f17819e.a(this.f12216f, 1);
        u0.c.f17392s.a(this.f12216f, 1);
        u0.c.f17374a.a(this.f12216f, 1);
        qt.z(this.f12215e);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12213c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f12214d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f12213c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f12212b = i4;
                    break;
                }
                i4++;
            }
            switch (this.f12213c) {
                case 20:
                    for (int i6 = 0; i6 < (b4 & 255); i6++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    break;
                case 21:
                    for (int i7 = 0; i7 < (b4 & 255); i7++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    break;
                case 22:
                    for (int i8 = 0; i8 < (b4 & 255); i8++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    break;
                case 23:
                    for (int i9 = 0; i9 < (b4 & 255); i9++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    break;
                default:
                    int i10 = b4 & 255;
                    if (i10 == 1) {
                        if (i4 < iArr.length) {
                            l0.b0.l0(iArr[i4][1], 0);
                        }
                    } else if (i10 == 0) {
                        int i11 = this.f12212b;
                        if (i11 < iArr.length && i11 != 255) {
                            l0.b0.l0(iArr[i11][1], 1);
                        }
                        this.f12212b = 255;
                    }
                    break;
            }
        }
        if (b2 == 39) {
            int i12 = i2 + 2;
            qt.y0(10, (bArr[i12] >> 7) & 1);
            qt.y0(11, (bArr[i12] >> 6) & 1);
            qt.y0(12, (bArr[i12] >> 5) & 1);
            qt.y0(36, (bArr[i12] >> 3) & 3);
            qt.y0(62, (bArr[i12] >> 2) & 1);
            qt.y0(65, (bArr[i12] >> 1) & 1);
            qt.y0(16, (bArr[i12] >> 0) & 1);
            int i13 = i2 + 3;
            qt.y0(18, (bArr[i13] >> 7) & 1);
            qt.y0(19, (bArr[i13] >> 6) & 1);
            qt.y0(20, (bArr[i13] >> 5) & 1);
            qt.y0(49, (bArr[i13] >> 4) & 1);
            qt.y0(22, (bArr[i13] >> 3) & 1);
            qt.y0(23, (bArr[i13] >> 2) & 1);
            qt.y0(24, (bArr[i13] >> 1) & 1);
            qt.y0(50, (bArr[i13] >> 0) & 1);
            int i14 = i2 + 4;
            int i15 = bArr[i14] & 255;
            int i16 = i2 + 5;
            int i17 = bArr[i16] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i15 = bArr[i16] & 255;
                i17 = bArr[i14] & 255;
            }
            if (i15 == 0) {
                qt.y0(27, -2);
            } else if (i15 == 255) {
                qt.y0(27, -3);
            } else if (i15 < 30 || i15 > 64) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, i15);
            }
            if (i17 == 0) {
                qt.y0(28, -2);
            } else if (i17 == 255) {
                qt.y0(28, -3);
            } else if (i17 < 30 || i17 > 64) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, i17);
            }
            int i18 = i2 + 6;
            qt.y0(66, (bArr[i18] >> 7) & 1);
            qt.y0(37, (bArr[i18] >> 0) & 1);
            int i19 = i2 + 7;
            qt.y0(29, (bArr[i19] >> 4) & 15);
            qt.y0(30, (bArr[i19] >> 0) & 15);
            qt.y0(21, bArr[i2 + 8] & 255);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, 1024);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 34:
                if (nt.a()) {
                    u0.d.R2(l0.c0.F0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.F0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.F0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.F0(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    int i20 = i2 + 2;
                    int i21 = bArr[i20] & 255;
                    int i22 = i2 + 3;
                    int i23 = bArr[i22] & 255;
                    int i24 = i2 + 4;
                    int i25 = bArr[i24] & 255;
                    int i26 = i2 + 5;
                    int i27 = bArr[i26] & 255;
                    if (i21 == 0 && i23 == 0 && i25 == 0 && i27 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i21 || l0.c0.f13014h != i23 || l0.c0.f13015i != i25 || l0.c0.f13016j != i27) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i21;
                    l0.c0.f13014h = i23;
                    l0.c0.f13015i = i25;
                    l0.c0.f13016j = i27;
                    u0.d.D2(l0.c0.F0(bArr[i20] & 255));
                    u0.d.E2(l0.c0.F0(bArr[i22] & 255));
                    u0.d.F2(l0.c0.F0(bArr[i24] & 255));
                    u0.d.G2(l0.c0.F0(bArr[i26] & 255));
                }
                break;
            case 36:
                byte b5 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 7) & 1);
                    qt.y0(2, (b5 >> 6) & 1);
                } else {
                    qt.y0(1, (b5 >> 6) & 1);
                    qt.y0(2, (b5 >> 7) & 1);
                }
                qt.y0(4, (b5 >> 5) & 1);
                qt.y0(3, (b5 >> 4) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                break;
            default:
                switch (b2) {
                    case 53:
                        qt.y0(126, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(127, ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | (65280 & (bArr[i2 + 10] << 8)) | (bArr[i2 + 11] & 255));
                        int i28 = i2 + 12;
                        qt.y0(128, (bArr[i28] >> 7) & 1);
                        qt.y0(129, (bArr[i28] >> 6) & 1);
                        qt.y0(130, (bArr[i28] >> 0) & 15);
                        qt.y0(131, (bArr[i2 + 13] >> 0) & 15);
                        int i29 = bArr[i2 + 8] & 255;
                        u0.d.B3(((bArr[i28] >> 7) & 1) == 1 ? (268435456 | ((i29 * 18) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR)) & (-1) : (i29 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                        break;
                    case 54:
                        qt.y0(99, bArr[i2 + 2] & 255);
                        qt.y0(98, bArr[i2 + 3] & 255);
                        qt.y0(101, bArr[i2 + 4] & 255);
                        qt.y0(100, bArr[i2 + 5] & 255);
                        qt.y0(102, bArr[i2 + 6] & 255);
                        break;
                    case 55:
                        qt.y0(103, bArr[i2 + 2] & 255);
                        break;
                    case 56:
                        int i30 = i2 + 2;
                        qt.y0(104, (bArr[i30] >> 7) & 1);
                        qt.y0(105, (bArr[i30] >> 6) & 1);
                        qt.y0(106, (bArr[i30] >> 5) & 1);
                        qt.y0(107, (bArr[i30] >> 4) & 1);
                        qt.y0(108, (bArr[i30] >> 2) & 3);
                        qt.y0(109, (bArr[i30] >> 0) & 3);
                        qt.y0(110, (bArr[i2 + 3] >> 0) & 255);
                        int i31 = i2 + 4;
                        qt.y0(111, (bArr[i31] >> 7) & 1);
                        qt.y0(112, (bArr[i31] >> 6) & 1);
                        qt.y0(113, (bArr[i31] >> 5) & 1);
                        qt.y0(114, (bArr[i31] >> 4) & 1);
                        qt.y0(115, (bArr[i31] >> 3) & 1);
                        qt.y0(116, (bArr[i31] >> 2) & 1);
                        qt.y0(117, (bArr[i31] >> 0) & 3);
                        int i32 = i2 + 5;
                        qt.y0(118, (bArr[i32] >> 5) & 7);
                        qt.y0(119, (bArr[i32] >> 3) & 3);
                        qt.y0(120, (bArr[i32] >> 0) & 7);
                        int i33 = i2 + 6;
                        qt.y0(121, (bArr[i33] >> 6) & 3);
                        qt.y0(122, (bArr[i33] >> 4) & 3);
                        qt.y0(123, (bArr[i33] >> 3) & 1);
                        qt.y0(124, (bArr[i33] >> 2) & 1);
                        qt.y0(125, bArr[i2 + 7] & 255);
                        int i34 = i2 + 8;
                        qt.y0(132, (bArr[i34] >> 7) & 1);
                        qt.y0(133, (bArr[i34] >> 6) & 1);
                        qt.y0(134, (bArr[i34] >> 5) & 1);
                        qt.y0(135, (bArr[i34] >> 4) & 1);
                        qt.y0(136, (bArr[i34] >> 3) & 1);
                        qt.y0(137, (bArr[i34] >> 2) & 1);
                        qt.y0(138, (bArr[i34] >> 1) & 1);
                        qt.y0(139, (bArr[i34] >> 0) & 1);
                        int i35 = i2 + 9;
                        qt.y0(140, (bArr[i35] >> 7) & 1);
                        qt.y0(141, (bArr[i35] >> 6) & 1);
                        qt.y0(142, (bArr[i35] >> 5) & 1);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f12220j.j();
        u0.c.f17386m.d(this.f12218h);
        l0.b0.p0(this.f12219i);
        w0.e.f17815a.d(this.f12216f);
        w0.e.f17819e.d(this.f12216f);
        u0.c.f17392s.d(this.f12216f);
        u0.c.f17374a.d(this.f12216f);
        qt.q0(this.f12215e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 150) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 2) {
                return;
            }
            b3(iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6]);
        }
    }

    public final void b3(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        f12205r = i2;
        f12209v = i4;
        f12210w = i3;
        f12206s = i5;
        f12207t = i6;
        f12208u = i7;
        f12211x = i8;
        z.k.s(227, 199, 7, i2, i3, i4, i5, i6, i7, i8 & 15);
        qt.y0(147, f12210w);
        int iB = this.f12220j.b(7, 9);
        int i9 = f12210w;
        if (iB != i9) {
            this.f12220j.g(7, i9);
        }
        qt.y0(146, f12209v);
        int iB2 = this.f12220j.b(6, 9);
        int i10 = f12209v;
        if (iB2 != i10) {
            this.f12220j.g(6, i10);
        }
        qt.y0(143, f12206s);
        int iB3 = this.f12220j.b(3, 9);
        int i11 = f12206s;
        if (iB3 != i11) {
            this.f12220j.g(3, i11);
        }
        qt.y0(144, f12207t);
        int iB4 = this.f12220j.b(4, 9);
        int i12 = f12207t;
        if (iB4 != i12) {
            this.f12220j.g(4, i12);
        }
        qt.y0(145, f12208u);
        int iB5 = this.f12220j.b(5, 9);
        int i13 = f12208u;
        if (iB5 != i13) {
            this.f12220j.g(5, i13);
        }
        qt.y0(148, f12205r);
        int iB6 = this.f12220j.b(1, 10);
        int i14 = f12205r;
        if (iB6 != i14) {
            this.f12220j.g(1, i14);
        }
        qt.y0(149, f12211x);
        int iB7 = this.f12220j.b(8, 0);
        int i15 = f12211x;
        if (iB7 != i15) {
            this.f12220j.g(8, i15);
        }
    }
}

package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class jp extends lt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f7018s = 10;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f7019t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f7020u = 9;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f7021v = 9;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f7022w = 9;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f7023x = 9;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f7024y = 9;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f7025z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7026b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7027c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7028d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 12}, new int[]{7, 18}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 34}, new int[]{11, 35}, new int[]{12, 9}, new int[]{13, 29}, new int[]{16, 6}, new int[]{17, 7}, new int[]{18, 8}, new int[]{19, 31}, new int[]{20, 30}, new int[]{21, 24}, new int[]{22, 1}, new int[]{23, 54}, new int[]{24, 0}, new int[]{25, 13}, new int[]{27, 5}, new int[]{28, 11}, new int[]{29, 25}, new int[]{30, 16}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public o1.g0 f7029e = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f7030f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f7031g = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f7032h = 3;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f7033i = 4;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f7034j = 5;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f7035k = 6;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f7036l = 7;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f7037m = 8;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f7038n = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f7039o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f7040p = new b();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f7041q = new c();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f7042r = new d();

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
            l0.b0.b(jp.this.f7041q);
            jp.this.f7039o = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jp jpVar = jp.this;
            int i2 = jpVar.f7039o - 1;
            jpVar.f7039o = i2;
            if (i2 <= 0) {
                l0.b0.p0(jpVar.f7041q);
                jp.this.f7039o = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8633a) {
                    case 5571013:
                    case 7078342:
                        z.k.s(227, 198, 2, 42, 0);
                        break;
                    case 5636549:
                        z.k.s(227, 198, 2, 42, 1);
                        break;
                    case 12714440:
                        z.k.s(227, 198, 2, 42, 2);
                        break;
                }
                jp jpVar2 = jp.this;
                jpVar2.b3(jpVar2.f7029e.b(1, 10), jp.this.f7029e.b(6, 9), jp.this.f7029e.b(7, 9), jp.this.f7029e.b(3, 9), jp.this.f7029e.b(4, 9), jp.this.f7029e.b(5, 9), jp.this.f7029e.b(2, 0), jp.this.f7029e.b(8, 0));
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jp.a3();
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0033  */
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
        } else if (i4 == 4) {
            iArr[2] = 2;
            iArr[3] = o0.e.C;
        } else if (i4 != 5) {
            switch (i4) {
                case 7:
                    iArr[2] = 2;
                    iArr[3] = o0.e.C;
                    break;
                case 8:
                case 9:
                case 10:
                    iArr[2] = 8;
                    iArr[3] = u0.b.r3;
                    break;
                default:
                    iArr[2] = 12;
                    break;
            }
        } else {
            iArr[2] = 7;
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
        this.f7029e.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        u0.c.f17386m.a(this.f7040p, 1);
        w0.e.f17815a.a(this.f7042r, 1);
        w0.e.f17819e.a(this.f7042r, 1);
        u0.c.f17392s.a(this.f7042r, 1);
        u0.c.f17374a.a(this.f7042r, 1);
        qt.z(this.f7038n);
        qt.z(this.f7042r);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f7027c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f7028d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f7027c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f7026b = i4;
                    break;
                }
                i4++;
            }
            switch (this.f7027c) {
                case 17:
                    for (int i6 = 0; i6 < (b4 & 255); i6++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    break;
                case 18:
                    for (int i7 = 0; i7 < (b4 & 255); i7++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    break;
                case 19:
                    for (int i8 = 0; i8 < (b4 & 255); i8++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    break;
                case 20:
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
                        int i11 = this.f7026b;
                        if (i11 < iArr.length && i11 != 255) {
                            l0.b0.l0(iArr[i11][1], 1);
                        }
                        this.f7026b = 255;
                    }
                    break;
            }
            return;
        }
        if (b2 == 3) {
            int i12 = bArr[i2 + 2] & 255;
            int i13 = bArr[i2 + 3] & 255;
            qt.y0(10, (i12 >> 7) & 1);
            qt.y0(11, (i12 >> 6) & 1);
            qt.y0(12, (i12 >> 5) & 1);
            qt.y0(13, (i12 >> 4) & 1);
            qt.y0(26, (i12 >> 3) & 1);
            qt.y0(62, (i12 >> 2) & 1);
            qt.y0(65, (i12 >> 1) & 1);
            qt.y0(16, i12 & 1);
            qt.y0(18, (i13 >> 7) & 1);
            qt.y0(19, (i13 >> 6) & 1);
            qt.y0(20, (i13 >> 5) & 1);
            qt.y0(21, i13 & 15);
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
            } else if (i15 == 127) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, i15);
            }
            if (i17 == 0) {
                qt.y0(28, -2);
            } else if (i17 == 255) {
                qt.y0(28, -3);
            } else if (i17 == 127) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, i17);
            }
            int i18 = i2 + 6;
            qt.y0(44, (bArr[i18] >> 4) & 15);
            qt.y0(53, (bArr[i18] >> 3) & 1);
            qt.y0(15, (bArr[i18] >> 2) & 1);
            qt.y0(66, (bArr[i18] >> 1) & 1);
            qt.y0(37, (bArr[i18] >> 0) & 1);
            int i19 = i2 + 7;
            qt.y0(31, (bArr[i19] >> 6) & 3);
            qt.y0(29, (bArr[i19] >> 4) & 3);
            qt.y0(32, (bArr[i19] >> 2) & 3);
            qt.y0(30, (bArr[i19] >> 0) & 3);
            int i20 = i2 + 8;
            qt.y0(42, (bArr[i20] >> 7) & 1);
            qt.y0(78, (bArr[i20] >> 6) & 1);
            qt.y0(43, (bArr[i20] >> 5) & 1);
            qt.y0(39, (bArr[i20] >> 4) & 1);
            qt.y0(67, (bArr[i20] >> 3) & 1);
            qt.y0(48, (bArr[i20] >> 2) & 1);
            qt.y0(46, (bArr[i20] >> 1) & 1);
            qt.y0(47, (bArr[i20] >> 0) & 1);
            int i21 = bArr[i2 + 9] & 255;
            if (i21 == 0) {
                qt.y0(40, -2);
            } else if (i21 == 255) {
                qt.y0(40, -3);
            } else if (i21 == 127) {
                qt.y0(40, -1);
            } else {
                qt.y0(40, i21);
            }
            int i22 = bArr[i2 + 10] & 255;
            if (i22 == 0) {
                qt.y0(41, -2);
            } else if (i22 == 255) {
                qt.y0(41, -3);
            } else if (i22 == 127) {
                qt.y0(41, -1);
            } else {
                qt.y0(41, i22);
            }
            int i23 = i2 + 11;
            qt.y0(22, (bArr[i23] >> 7) & 1);
            qt.y0(23, (bArr[i23] >> 6) & 1);
            qt.y0(24, (bArr[i23] >> 5) & 1);
            qt.y0(54, (bArr[i23] >> 4) & 1);
            return;
        }
        if (b2 == 6) {
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                int i24 = i2 + 2;
                qt.y0(1, (bArr[i24] >> 7) & 1);
                qt.y0(2, (bArr[i24] >> 6) & 1);
            } else {
                int i25 = i2 + 2;
                qt.y0(1, (bArr[i25] >> 6) & 1);
                qt.y0(2, (bArr[i25] >> 7) & 1);
            }
            int i26 = i2 + 2;
            qt.y0(3, (bArr[i26] >> 4) & 1);
            qt.y0(4, (bArr[i26] >> 5) & 1);
            qt.y0(5, (bArr[i26] >> 3) & 1);
            qt.y0(0, (bArr[i26] >> 2) & 1);
            return;
        }
        if (b2 == 10) {
            qt.j(bArr[i2 + 3], bArr[i2 + 4], (bArr[i2 + 2] & 1) != 1 ? 1 : 0, 480);
            return;
        }
        if (b2 == 53) {
            int i27 = bArr[i2 + 8] & 255;
            if (i27 != 0) {
                u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((i27 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i27 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            } else {
                u0.d.B3(0);
            }
            int i28 = i2 + 2;
            l0.c0.a((bArr[i28] >> 5) & 1, (bArr[i28] >> 4) & 1, 0);
            return;
        }
        if (b2 != 56) {
            if (b2 != 127) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        int i29 = i2 + 2;
        qt.y0(99, (bArr[i29] >> 7) & 1);
        qt.y0(100, (bArr[i29] >> 5) & 3);
        qt.y0(101, (bArr[i29] >> 4) & 1);
        qt.y0(102, (bArr[i29] >> 3) & 1);
        qt.y0(103, (bArr[i29] >> 2) & 1);
        qt.y0(104, (bArr[i29] >> 0) & 3);
        int i30 = i2 + 3;
        qt.y0(105, (bArr[i30] >> 6) & 3);
        qt.y0(106, (bArr[i30] >> 5) & 1);
        qt.y0(107, (bArr[i30] >> 4) & 1);
        qt.y0(108, (bArr[i30] >> 3) & 1);
        qt.y0(109, (bArr[i30] >> 2) & 1);
        qt.y0(110, (bArr[i30] >> 1) & 1);
        qt.y0(111, (bArr[i30] >> 0) & 1);
        int i31 = i2 + 4;
        qt.y0(112, (bArr[i31] >> 7) & 1);
        qt.y0(113, (bArr[i31] >> 6) & 1);
        qt.y0(114, (bArr[i31] >> 5) & 1);
        qt.y0(115, (bArr[i31] >> 4) & 1);
        qt.y0(116, (bArr[i31] >> 3) & 1);
        qt.y0(117, (bArr[i31] >> 2) & 1);
        qt.y0(118, (bArr[i31] >> 1) & 1);
        qt.y0(119, (bArr[i31] >> 0) & 1);
        int i32 = i2 + 5;
        qt.y0(120, (bArr[i32] >> 6) & 3);
        qt.y0(121, (bArr[i32] >> 4) & 3);
        qt.y0(122, (bArr[i32] >> 3) & 1);
        qt.y0(123, (bArr[i32] >> 2) & 1);
        qt.y0(124, (bArr[i32] >> 1) & 1);
        qt.y0(125, (bArr[i32] >> 0) & 1);
        qt.y0(126, 255 & bArr[i2 + 6]);
        int i33 = i2 + 7;
        qt.y0(127, (bArr[i33] >> 7) & 1);
        qt.y0(128, (bArr[i33] >> 6) & 1);
        qt.y0(129, (bArr[i33] >> 5) & 1);
        qt.y0(130, (bArr[i33] >> 4) & 1);
        qt.y0(131, (bArr[i33] >> 3) & 1);
        qt.y0(132, (bArr[i33] >> 2) & 1);
        qt.y0(133, (bArr[i33] >> 1) & 1);
        qt.y0(134, (bArr[i33] >> 0) & 1);
        int i34 = i2 + 8;
        qt.y0(135, (bArr[i34] >> 6) & 3);
        qt.y0(136, (bArr[i34] >> 4) & 3);
        qt.y0(137, (bArr[i34] >> 2) & 3);
        qt.y0(138, (bArr[i34] >> 0) & 3);
        int i35 = i2 + 9;
        qt.y0(139, (bArr[i35] >> 6) & 3);
        qt.y0(140, (bArr[i35] >> 4) & 3);
        qt.y0(141, (bArr[i35] >> 3) & 1);
        qt.y0(142, (bArr[i35] >> 2) & 1);
        qt.y0(143, (bArr[i35] >> 1) & 1);
        qt.y0(144, (bArr[i35] >> 0) & 1);
        int i36 = i2 + 10;
        qt.y0(145, (bArr[i36] >> 7) & 1);
        qt.y0(146, (bArr[i36] >> 6) & 1);
        qt.y0(147, (bArr[i36] >> 5) & 1);
        qt.y0(148, (bArr[i36] >> 4) & 1);
        qt.y0(149, (bArr[i36] >> 3) & 1);
        qt.y0(150, (bArr[i36] >> 2) & 1);
        qt.y0(151, (bArr[i36] >> 0) & 3);
        int i37 = i2 + 11;
        qt.y0(152, (bArr[i37] >> 6) & 3);
        qt.y0(153, (bArr[i37] >> 4) & 3);
        qt.y0(154, (bArr[i37] >> 3) & 1);
        qt.y0(155, (bArr[i37] >> 1) & 3);
    }

    @Override // k0.lt
    public void W2() {
        this.f7029e.j();
        u0.c.f17386m.d(this.f7040p);
        l0.b0.p0(this.f7041q);
        w0.e.f17815a.d(this.f7042r);
        w0.e.f17819e.d(this.f7042r);
        u0.c.f17392s.d(this.f7042r);
        u0.c.f17374a.d(this.f7042r);
        qt.q0(this.f7038n);
        qt.q0(this.f7042r);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 164) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, -58, 2, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, -1, 1, iArr[0]);
        } else {
            if (i2 != 2) {
                return;
            }
            b3(iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7]);
        }
    }

    public final void b3(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        f7018s = i2;
        f7019t = i8;
        f7023x = i4;
        f7024y = i3;
        f7020u = i5;
        f7021v = i6;
        f7022w = i7;
        f7025z = i9;
        z.k.s(227, 199, 7, i2, i3, i4, i5, i6, i7, ((i8 << 7) & 128) | (i9 & 15));
        qt.y0(160, f7024y);
        int iB = this.f7029e.b(7, 9);
        int i10 = f7024y;
        if (iB != i10) {
            this.f7029e.g(7, i10);
        }
        qt.y0(159, f7023x);
        int iB2 = this.f7029e.b(6, 9);
        int i11 = f7023x;
        if (iB2 != i11) {
            this.f7029e.g(6, i11);
        }
        qt.y0(156, f7020u);
        int iB3 = this.f7029e.b(3, 9);
        int i12 = f7020u;
        if (iB3 != i12) {
            this.f7029e.g(3, i12);
        }
        qt.y0(157, f7021v);
        int iB4 = this.f7029e.b(4, 9);
        int i13 = f7021v;
        if (iB4 != i13) {
            this.f7029e.g(4, i13);
        }
        qt.y0(158, f7022w);
        int iB5 = this.f7029e.b(5, 9);
        int i14 = f7022w;
        if (iB5 != i14) {
            this.f7029e.g(5, i14);
        }
        qt.y0(161, f7018s);
        int iB6 = this.f7029e.b(1, 10);
        int i15 = f7018s;
        if (iB6 != i15) {
            this.f7029e.g(1, i15);
        }
        qt.y0(162, f7019t);
        int iB7 = this.f7029e.b(2, 0);
        int i16 = f7019t;
        if (iB7 != i16) {
            this.f7029e.g(2, i16);
        }
        qt.y0(163, f7025z);
        int iB8 = this.f7029e.b(8, 0);
        int i17 = f7025z;
        if (iB8 != i17) {
            this.f7029e.g(8, i17);
        }
    }
}

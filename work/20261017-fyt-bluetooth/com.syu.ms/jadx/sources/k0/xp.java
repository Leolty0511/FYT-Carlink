package k0;

import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class xp extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12233c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12234d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 0}, new int[]{7, 13}, new int[]{8, 2}, new int[]{9, 18}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f12235e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f12236f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12237g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12238h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f12239i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f12240j = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (xp.this.f12236f == millis && xp.this.f12237g == zIs24HourFormat) {
                return;
            }
            xp.this.f12236f = millis;
            xp.this.f12237g = zIs24HourFormat ? 1 : 0;
            z.k.s(227, -55, 6, time.year - 2018, time.month + 1, time.weekDay, time.monthDay, time.hour, time.minute);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(xp.this.f12240j);
            xp.this.f12238h = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            xp xpVar = xp.this;
            int i2 = xpVar.f12238h - 1;
            xpVar.f12238h = i2;
            if (i2 <= 0) {
                l0.b0.p0(xpVar.f12240j);
                xp.this.f12238h = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 1, 65);
                z.k.s(227, 144, 1, 66);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f12239i, 1);
        qt.z(this.f12235e);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8317l = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12233c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f12234d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f12233c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f12232b = i7;
                    break;
                }
                i7++;
            }
            int i9 = b4 & 255;
            if (i9 == 1) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 == 0) {
                    int i10 = this.f12232b;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f12232b = 255;
                }
                return;
            }
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i11 = i2 + 3;
            l0.c0.a((bArr[i11] >> 3) & 1, (bArr[i11] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i11] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 40) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b5 >> 6) & 1);
                qt.y0(1, (b5 >> 7) & 1);
            } else {
                qt.y0(2, (b5 >> 7) & 1);
                qt.y0(1, (b5 >> 6) & 1);
            }
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 2) & 1);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 3] & 255, bArr[i2 + 2] & 255, false, 5570);
            return;
        }
        if (b2 == 56) {
            qt.y0(144, bArr[i2 + 2] & 255);
            qt.y0(145, bArr[i2 + 3] & 255);
            qt.y0(146, bArr[i2 + 4] & 255);
            qt.y0(147, bArr[i2 + 5] & 255);
            qt.y0(140, bArr[i2 + 6] & 255);
            qt.y0(141, bArr[i2 + 7] & 255);
            qt.y0(142, bArr[i2 + 8] & 255);
            qt.y0(143, bArr[i2 + 9] & 255);
            return;
        }
        if (b2 == 57) {
            int i12 = i2 + 6;
            qt.y0(148, (bArr[i12] & 256) | (bArr[i2 + 2] & 255));
            qt.y0(149, (bArr[i12] & 256) | (bArr[i2 + 3] & 255));
            qt.y0(151, (bArr[i12] & 256) | (bArr[i2 + 4] & 255));
            qt.y0(150, (bArr[i2 + 5] & 255) | (bArr[i12] & 256));
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2]));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3]));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4]));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5]));
                break;
            case 35:
                int i13 = i2 + 2;
                int i14 = bArr[i13] & 255;
                int i15 = i2 + 3;
                int i16 = bArr[i15] & 255;
                int i17 = i2 + 4;
                int i18 = bArr[i17] & 255;
                int i19 = i2 + 5;
                int i20 = 255 & bArr[i19];
                if (i14 == 0 && i16 == 0 && i18 == 0 && i20 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i14 || l0.c0.f13014h != i16 || l0.c0.f13015i != i18 || l0.c0.f13016j != i20) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i14;
                l0.c0.f13014h = i16;
                l0.c0.f13015i = i18;
                l0.c0.f13016j = i20;
                u0.d.D2(l0.c0.E0(bArr[i13]));
                u0.d.E2(l0.c0.E0(bArr[i15]));
                u0.d.F2(l0.c0.E0(bArr[i17]));
                u0.d.G2(l0.c0.E0(bArr[i19]));
                break;
            case 36:
                int i21 = bArr[i2 + 2] & 255;
                int i22 = bArr[i2 + 3] & 255;
                int i23 = bArr[i2 + 4] & 255;
                int i24 = i2 + 5;
                int i25 = bArr[i24] & 255;
                int i26 = i2 + 6;
                int i27 = bArr[i26] & 255;
                qt.y0(10, (i21 >> 7) & 1);
                qt.y0(11, (i21 >> 6) & 1);
                qt.y0(12, (i21 >> 5) & 1);
                qt.y0(63, (i21 >> 4) & 1);
                qt.y0(13, (i21 >> 3) & 1);
                qt.y0(16, (i21 >> 1) & 1);
                qt.y0(65, (i21 >> 0) & 1);
                int i28 = i22 & 255;
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
                    } else if (i28 != 5) {
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
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(21, i23 & 255);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i25 = bArr[i26] & 255;
                    i27 = bArr[i24] & 255;
                }
                if (i25 == 36) {
                    qt.y0(27, -2);
                } else if (i25 == 64) {
                    qt.y0(27, -3);
                } else if (i25 <= 37 || i25 >= 63) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, i25 * 5);
                }
                if (i27 == 36) {
                    qt.y0(28, -2);
                } else if (i27 == 64) {
                    qt.y0(28, -3);
                } else if (i27 <= 37 || i27 >= 63) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, i25 * 5);
                }
                int i29 = i2 + 7;
                qt.y0(29, (bArr[i29] >> 4) & 15);
                qt.y0(30, (bArr[i29] >> 0) & 15);
                break;
            default:
                switch (b2) {
                    case 64:
                        qt.y0(152, bArr[i2 + 2] & 255);
                        qt.y0(153, bArr[i2 + 3] & 255);
                        qt.y0(154, bArr[i2 + 4] & 255);
                        qt.y0(155, bArr[i2 + 5] & 255);
                        qt.y0(156, bArr[i2 + 6] & 255);
                        qt.y0(157, bArr[i2 + 7] & 255);
                        qt.y0(158, bArr[i2 + 8] & 255);
                        break;
                    case 65:
                        int i30 = i2 + 2;
                        qt.y0(99, (bArr[i30] >> 7) & 1);
                        qt.y0(100, (bArr[i30] >> 5) & 3);
                        qt.y0(101, (bArr[i30] >> 3) & 3);
                        qt.y0(102, (bArr[i30] >> 2) & 1);
                        qt.y0(103, (bArr[i30] >> 0) & 3);
                        int i31 = i2 + 3;
                        qt.y0(104, (bArr[i31] >> 7) & 1);
                        qt.y0(105, (bArr[i31] >> 3) & 7);
                        qt.y0(106, (bArr[i31] >> 0) & 7);
                        int i32 = i2 + 4;
                        qt.y0(107, (bArr[i32] >> 6) & 3);
                        qt.y0(108, (bArr[i32] >> 4) & 3);
                        qt.y0(109, (bArr[i32] >> 3) & 1);
                        qt.y0(110, (bArr[i32] >> 0) & 7);
                        int i33 = i2 + 5;
                        qt.y0(111, (bArr[i33] >> 7) & 1);
                        qt.y0(112, (bArr[i33] >> 6) & 1);
                        qt.y0(113, (bArr[i33] >> 5) & 1);
                        qt.y0(114, (bArr[i33] >> 4) & 1);
                        qt.y0(134, (bArr[i33] >> 3) & 1);
                        qt.y0(135, (bArr[i33] >> 2) & 1);
                        qt.y0(136, (bArr[i33] >> 1) & 1);
                        qt.y0(137, (bArr[i33] >> 0) & 1);
                        int i34 = i2 + 6;
                        qt.y0(115, (bArr[i34] >> 6) & 3);
                        qt.y0(116, (bArr[i34] >> 5) & 1);
                        qt.y0(117, (bArr[i34] >> 3) & 3);
                        qt.y0(118, (bArr[i34] >> 2) & 1);
                        qt.y0(119, (bArr[i34] >> 1) & 1);
                        qt.y0(120, (bArr[i34] >> 0) & 1);
                        int i35 = i2 + 7;
                        qt.y0(121, (bArr[i35] >> 6) & 3);
                        qt.y0(122, (bArr[i35] >> 4) & 3);
                        qt.y0(138, (bArr[i35] >> 3) & 1);
                        qt.y0(139, (bArr[i35] >> 2) & 1);
                        qt.y0(123, (bArr[i2 + 8] >> 0) & 255);
                        break;
                    case 66:
                        qt.y0(124, bArr[i2 + 2] & 255);
                        qt.y0(125, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(126, bArr[i2 + 5] & 255);
                        qt.y0(127, bArr[i2 + 6] & 255);
                        qt.y0(128, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                        qt.y0(129, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                        qt.y0(130, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                        qt.y0(131, ((bArr[i2 + 14] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 15] << 8) & 65280) | (bArr[i2 + 16] & 255));
                        qt.y0(132, ((bArr[i2 + 17] << 8) & 65280) | (bArr[i2 + 18] & 255));
                        qt.y0(133, (bArr[i2 + 20] & 255) | ((bArr[i2 + 19] << 8) & 65280));
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f12239i);
        l0.b0.p0(this.f12240j);
        qt.q0(this.f12235e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 159) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 168, 2, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, 144, 1, iArr[0]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 200, 2, iArr[0], iArr[1]);
        }
    }
}

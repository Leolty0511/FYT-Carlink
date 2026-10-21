package k0;

import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class yk extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12540c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12541d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{16, 6}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12542e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12543f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f12544g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12545h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12546i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f12547j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f12548k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f12549l = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            if (yk.this.f12542e == time.hour && yk.this.f12543f == time.minute) {
                return;
            }
            z.k.s(227, 10, -53, 0, time.hour, time.minute, 0, 0, 0, 0, 0, 0, 0);
            yk.this.f12542e = time.hour;
            yk.this.f12543f = time.minute;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(yk.this.f12549l);
            yk ykVar = yk.this;
            ykVar.f12547j = 7;
            ykVar.f12546i = 0;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            yk ykVar = yk.this;
            int i2 = ykVar.f12547j - 1;
            ykVar.f12547j = i2;
            if (i2 <= 0) {
                l0.b0.p0(ykVar.f12549l);
                yk.this.f12547j = 7;
            }
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8637c) {
                    case 21:
                        z.k.s(227, 2, 36, 1, 48);
                        break;
                    case 22:
                        z.k.s(227, 2, 36, 2, 48);
                        break;
                    case 23:
                        z.k.s(227, 2, 36, 3, 48);
                        break;
                    case 24:
                        z.k.s(227, 2, 36, 1, 49);
                        break;
                    case 25:
                        z.k.s(227, 2, 36, 4, 48);
                        break;
                    case 26:
                        z.k.s(227, 2, 36, 1, 50);
                        break;
                }
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8312g = 1;
        mtVar.f8311f = 1;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        int i2 = nt.f8637c;
        if (i2 == 21) {
            qt.z(this.f12544g);
        } else if (i2 == 26 || i2 == 23) {
            mtVar.f8306a = null;
        } else if (i2 == 24) {
            mtVar.f8312g = 0;
        }
        u0.c.f17386m.a(this.f12548k, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 17) {
            byte b3 = bArr[i2 + 4];
            byte b4 = bArr[i2 + 5];
            this.f12540c = b3 & 255;
            int i8 = 0;
            while (true) {
                iArr = this.f12541d;
                if (i8 >= iArr.length) {
                    break;
                }
                int i9 = this.f12540c;
                if (i9 == iArr[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f12539b = i8;
                    break;
                }
                i8++;
            }
            int i10 = b4 & 255;
            if (i10 == 1) {
                if (i8 < iArr.length) {
                    l0.b0.l0(iArr[i8][1], 0);
                }
            } else if (i10 == 0) {
                int i11 = this.f12539b;
                if (i11 < iArr.length && i11 != 255) {
                    l0.b0.l0(iArr[i11][1], 1);
                }
                this.f12539b = 255;
            }
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                int i12 = i2 + 6;
                qt.y0(2, (bArr[i12] >> 6) & 1);
                qt.y0(1, (bArr[i12] >> 7) & 1);
            } else {
                int i13 = i2 + 6;
                qt.y0(1, (bArr[i13] >> 6) & 1);
                qt.y0(2, (bArr[i13] >> 7) & 1);
            }
            int i14 = i2 + 6;
            qt.y0(3, (bArr[i14] >> 4) & 1);
            qt.y0(4, (bArr[i14] >> 5) & 1);
            qt.y0(5, (bArr[i14] >> 3) & 1);
            qt.y0(0, (bArr[i14] >> 2) & 1);
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
            return;
        }
        if (b2 != 49) {
            if (b2 == 65) {
                u0.d.R2(l0.c0.A1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.A1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.A1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.A1(bArr[i2 + 5] & 255));
                return;
            }
            if (b2 == 72) {
                int i15 = i2 + 2;
                qt.y0(113, (bArr[i15] >> 7) & 1);
                qt.y0(114, (bArr[i15] >> 6) & 1);
                qt.y0(115, bArr[i2 + 4] & 255);
                qt.y0(116, bArr[i2 + 5] & 255);
                qt.y0(117, bArr[i2 + 6] & 255);
                qt.y0(118, bArr[i2 + 7] & 255);
                qt.y0(119, bArr[i2 + 9] & 255);
                qt.y0(120, bArr[i2 + 10] & 255);
                qt.y0(121, bArr[i2 + 11] & 255);
                qt.y0(122, bArr[i2 + 12] & 255);
                return;
            }
            if (b2 == 19) {
                qt.y0(99, (((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255)) & 65535);
                qt.y0(100, (((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255)) & 65535);
                qt.y0(101, (((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255)) & 16777215);
                qt.y0(102, bArr[i2 + 9] & 255);
                qt.y0(103, (((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255)) & 65535);
                qt.y0(104, (((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255)) & 65535);
                qt.y0(105, bArr[i2 + 14] & 255);
                qt.y0(106, (((bArr[i2 + 15] << 8) & 65280) | (bArr[i2 + 16] & 255)) & 65535);
                qt.y0(107, ((bArr[i2 + 18] & 255) | ((bArr[i2 + 17] << 8) & 65280)) & 65535);
                return;
            }
            if (b2 != 20) {
                return;
            }
            qt.y0(108, bArr[i2 + 2] & 255);
            qt.y0(109, bArr[i2 + 3] & 255);
            qt.y0(110, bArr[i2 + 4] & 255);
            byte b5 = bArr[i2 + 5];
            qt.y0(111, b5);
            if (this.f12545h != b5) {
                this.f12545h = b5;
                int i16 = this.f12546i + 1;
                this.f12546i = i16;
                qt.y0(112, i16);
                return;
            }
            return;
        }
        int i17 = i2 + 2;
        qt.y0(10, (bArr[i17] >> 6) & 1);
        qt.y0(13, (bArr[i17] >> 3) & 1);
        int i18 = i2 + 3;
        qt.y0(11, (bArr[i18] >> 6) & 1);
        qt.y0(12, (bArr[i18] >> 4) & 1);
        int i19 = i2 + 4;
        qt.y0(43, (bArr[i19] >> 7) & 1);
        qt.y0(33, (bArr[i19] >> 6) & 1);
        qt.y0(16, (bArr[i19] >> 5) & 1);
        qt.y0(65, (bArr[i19] >> 4) & 1);
        int i20 = bArr[i2 + 6] & 255;
        if (i20 == 1) {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 1;
        } else if (i20 != 3) {
            if (i20 == 5) {
                i7 = 0;
                i4 = 0;
                i5 = 1;
            } else if (i20 != 6) {
                switch (i20) {
                    case 11:
                        i7 = 0;
                        i5 = 0;
                        i6 = 0;
                        i4 = 1;
                        break;
                    case 12:
                        i7 = 0;
                        i5 = 0;
                        i4 = 1;
                        i6 = 1;
                        break;
                    case 13:
                        i7 = 0;
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                        break;
                    case 14:
                        i7 = 0;
                        i4 = 1;
                        i5 = i4;
                        break;
                    default:
                        i7 = 0;
                        i4 = 0;
                        i5 = i4;
                        break;
                }
            } else {
                i7 = 0;
                i4 = 0;
                i6 = 0;
                i5 = 1;
            }
            i6 = i5;
        } else {
            i7 = 0;
            i4 = 0;
            i5 = 0;
            i6 = 1;
        }
        qt.y0(49, i7);
        qt.y0(18, i4);
        qt.y0(19, i5);
        qt.y0(20, i6);
        qt.y0(21, bArr[i2 + 7] & 255);
        int i21 = i2 + 8;
        byte b6 = bArr[i21];
        int i22 = i2 + 9;
        byte b7 = bArr[i22];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b6 = bArr[i22];
            b7 = bArr[i21];
        }
        int i23 = b6 & 255;
        if (i23 == 254) {
            qt.y0(27, -2);
        } else if (i23 == 255) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i23);
        }
        int i24 = b7 & 255;
        if (i24 == 254) {
            qt.y0(28, -2);
        } else if (i24 == 255) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i24);
        }
        int i25 = bArr[i2 + 13] & 255;
        if (i25 == 0) {
            u0.d.A3(0);
        } else {
            u0.d.A3((i25 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f12548k);
        l0.b0.p0(this.f12549l);
        qt.q0(this.f12544g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 123) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 3, 106, (byte) iArr[0], (byte) iArr[1], (byte) iArr[2]);
    }
}

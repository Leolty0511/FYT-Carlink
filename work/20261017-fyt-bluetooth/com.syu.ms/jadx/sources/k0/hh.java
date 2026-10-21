package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class hh extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5974c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5975d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 18}, new int[]{4, 12}, new int[]{5, 3}, new int[]{6, 4}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 26}, new int[]{32, 0}, new int[]{33, 9}, new int[]{34, 1}, new int[]{35, 21}, new int[]{36, 16}, new int[]{37, 38}, new int[]{38, 67}, new int[]{39, 68}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f5976e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f5977f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f5978g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f5979h = 5;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f5980i = new c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f5981j = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            if (hh.this.f5976e != millis) {
                hh.this.f5976e = millis;
                byte b2 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
                byte b3 = (byte) (time.month + 1);
                byte b4 = (byte) time.monthDay;
                byte b5 = (byte) time.hour;
                byte b6 = (byte) time.minute;
                z.k.s(227, 198, 6, 0, b2, b3, b4, 0, 0);
                z.k.s(227, 198, 6, 1, b5, b6, 0, 0, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0033  */
        /* JADX WARN: Code duplicated, block: B:19:0x003f  */
        @Override // java.lang.Runnable
        public void run() {
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
                int i7 = w0.d.f17798j;
                int i8 = i7 % 6;
                if (i8 != 0 || i7 == 0) {
                    iArr[6] = i8;
                } else {
                    iArr[6] = 6;
                }
            } else if (i4 == 10) {
                iArr[2] = 8;
                iArr[3] = u0.b.r3;
            } else if (i4 == 13) {
                iArr[2] = 12;
            } else if (i4 == 4) {
                iArr[2] = 2;
                iArr[3] = o0.e.C;
            } else if (i4 == 5) {
                iArr[2] = 7;
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
                int i9 = i2 + 1;
                iArr2[i9] = iArr[i2];
                i2 = i9;
            }
            z.k.s(iArr2);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(hh.this.f5981j);
            hh.this.f5979h = (byte) 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hh hhVar = hh.this;
            byte b2 = (byte) (hhVar.f5979h - 1);
            hhVar.f5979h = b2;
            if (b2 <= 0) {
                l0.b0.p0(hhVar.f5981j);
                hh.this.f5979h = (byte) 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8633a) {
                    case 262597:
                    case 328133:
                    case 16187831:
                        z.k.s(227, 198, 3, 12, 0, 0);
                        break;
                    case 393669:
                    case 459205:
                    case 13828548:
                        z.k.s(227, 198, 3, 12, 1, 0);
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
        mtVar.f8314i = 0;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        u0.c.f17386m.a(this.f5980i, 1);
        l0.b0.b(this.f5978g);
        qt.z(this.f5977f);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == -111) {
            qt.y0(7, bArr[i2 + 2] & 255);
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f5974c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f5975d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f5974c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f5973b = i4;
                    break;
                }
                i4++;
            }
            int i6 = b4 & 255;
            if (i6 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i6 == 0) {
                    int i7 = this.f5973b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f5973b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 7800);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 53) {
            qt.y0(34, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 2] & 255));
            qt.y0(35, bArr[i2 + 3] & 255);
            qt.y0(36, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(37, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(39, ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
            int i8 = i2 + 12;
            qt.y0(40, (bArr[i8] >> 7) & 1);
            qt.y0(41, (bArr[i8] >> 6) & 1);
            qt.y0(57, bArr[i2 + 13] & 255);
            qt.y0(58, bArr[i2 + 14] & 255);
            qt.y0(59, (bArr[i2 + 16] & 255) | ((bArr[i2 + 15] << 8) & 65280));
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.a1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.a1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.a1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.a1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i9 = i2 + 2;
                int i10 = bArr[i9] & 255;
                int i11 = i2 + 3;
                int i12 = bArr[i11] & 255;
                int i13 = i2 + 4;
                int i14 = bArr[i13] & 255;
                int i15 = i2 + 5;
                int i16 = bArr[i15] & 255;
                if (i10 > 253 && i12 > 253 && i14 > 253 && i16 > 253) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i10 || l0.c0.f13014h != i12 || l0.c0.f13015i != i14 || l0.c0.f13016j != i16) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i10;
                l0.c0.f13014h = i12;
                l0.c0.f13015i = i14;
                l0.c0.f13016j = i16;
                u0.d.D2(l0.c0.a1(bArr[i9] & 255));
                u0.d.E2(l0.c0.a1(bArr[i11] & 255));
                u0.d.F2(l0.c0.a1(bArr[i13] & 255));
                u0.d.G2(l0.c0.a1(bArr[i15] & 255));
                break;
            case 36:
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    int i17 = i2 + 2;
                    qt.y0(1, (bArr[i17] >> 7) & 1);
                    qt.y0(2, (bArr[i17] >> 6) & 1);
                } else {
                    int i18 = i2 + 2;
                    qt.y0(1, (bArr[i18] >> 6) & 1);
                    qt.y0(2, (bArr[i18] >> 7) & 1);
                }
                int i19 = i2 + 2;
                qt.y0(4, (bArr[i19] >> 5) & 1);
                qt.y0(3, (bArr[i19] >> 4) & 1);
                qt.y0(5, (bArr[i19] >> 3) & 1);
                qt.y0(0, (bArr[i19] >> 2) & 1);
                int i20 = i2 + 3;
                l0.c0.N1((bArr[i20] >> 5) & 1, (bArr[i20] >> 4) & 1, 0);
                break;
            default:
                switch (b2) {
                    case 55:
                        qt.y0(8, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(9, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(10, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        int i21 = i2 + 8;
                        qt.y0(11, (bArr[i21] >> 0) & 1);
                        qt.y0(12, (bArr[i21] >> 1) & 3);
                        break;
                    case 56:
                        qt.y0(13, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        int i22 = i2 + 4;
                        qt.y0(14, (bArr[i22] >> 0) & 1);
                        qt.y0(15, (bArr[i22] >> 1) & 1);
                        qt.y0(16, (bArr[i22] >> 2) & 3);
                        qt.y0(17, (bArr[i22] >> 4) & 1);
                        qt.y0(18, (bArr[i22] >> 5) & 1);
                        qt.y0(19, (bArr[i22] >> 6) & 1);
                        qt.y0(20, (bArr[i22] >> 7) & 1);
                        qt.y0(21, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                        qt.y0(22, bArr[i2 + 7] & 255);
                        qt.y0(23, bArr[i2 + 8] & 255);
                        qt.y0(24, bArr[i2 + 9] & 255);
                        int i23 = i2 + 10;
                        qt.y0(47, (bArr[i23] >> 1) & 1);
                        qt.y0(48, (bArr[i23] >> 2) & 1);
                        qt.y0(49, (bArr[i23] >> 3) & 1);
                        qt.y0(50, (bArr[i23] >> 4) & 1);
                        qt.y0(51, (bArr[i23] >> 5) & 1);
                        qt.y0(52, (bArr[i23] >> 6) & 1);
                        qt.y0(53, bArr[i2 + 11] & 255);
                        qt.y0(54, bArr[i2 + 12] & 255);
                        qt.y0(55, bArr[i2 + 13] & 255);
                        qt.y0(56, bArr[i2 + 14] & 255);
                        break;
                    case 57:
                        int i24 = i2 + 2;
                        qt.y0(26, (bArr[i24] >> 4) & 15);
                        qt.y0(27, (bArr[i24] >> 0) & 15);
                        qt.y0(28, bArr[i2 + 3] & 255);
                        qt.y0(29, bArr[i2 + 4] & 255);
                        qt.y0(30, bArr[i2 + 5] & 255);
                        break;
                    case 58:
                        String str = new String(bArr, i2 + 3, bArr[i2 + 1] - 1);
                        int i25 = bArr[i2 + 2] & 255;
                        if (i25 == 0) {
                            qt.x0(31, str);
                            break;
                        } else if (i25 == 1) {
                            qt.x0(32, str);
                            break;
                        } else if (i25 == 2) {
                            qt.x0(33, str);
                            break;
                        }
                        break;
                    case 59:
                        int i26 = i2 + 2;
                        qt.y0(42, (bArr[i26] >> 4) & 15);
                        qt.y0(43, (bArr[i26] >> 1) & 1);
                        qt.y0(44, (bArr[i26] >> 0) & 1);
                        qt.y0(45, bArr[i2 + 3] & 255);
                        qt.y0(46, bArr[i2 + 4] & 255);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f5980i);
        l0.b0.p0(this.f5981j);
        l0.b0.p0(this.f5978g);
        qt.q0(this.f5977f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 60) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 198, 3, iArr[0], iArr[1], iArr[2]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 200, 2, iArr[0], iArr[1]);
        } else if (i2 == 2) {
            z.k.s(227, 198, 6, iArr[0], iArr[1], 0, 0, 0, 0);
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, 202, 2, iArr[0], iArr[1]);
        }
    }
}

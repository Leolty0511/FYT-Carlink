package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class zg extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12791c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12792d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 31}, new int[]{9, 30}, new int[]{10, 34}, new int[]{11, 35}, new int[]{12, 32}, new int[]{13, 33}, new int[]{15, 29}, new int[]{16, 5}, new int[]{17, 9}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f12793e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f12794f = 5;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f12795g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f12796h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b3 = (byte) (time.month + 1);
            z.k.s(227, 130, 6, 0, (byte) time.hour, (byte) time.minute, (byte) time.monthDay, b3, b2);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 0) {
                z.k.s(227, 192, 2, 0, 0);
            } else {
                l0.b0.b(zg.this.f12796h);
                zg.this.f12794f = (byte) 5;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            zg zgVar = zg.this;
            byte b2 = (byte) (zgVar.f12794f - 1);
            zgVar.f12794f = b2;
            if (b2 <= 0) {
                l0.b0.p0(zgVar.f12796h);
                zg.this.f12794f = (byte) 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 1, 3);
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
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        u0.c.f17386m.a(this.f12795g, 1);
        qt.z(this.f12793e);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5 = bArr[i2] & 255;
        if (i5 == 3) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (i5 == 25) {
            int i6 = i2 + 2;
            qt.y0(35, (bArr[i6] >> 7) & 1);
            qt.y0(36, (bArr[i6] >> 6) & 1);
            qt.y0(37, 15 & (bArr[i6] >> 0));
            int i7 = i2 + 3;
            qt.y0(38, (bArr[i7] >> 7) & 1);
            qt.y0(39, (bArr[i7] >> 6) & 1);
            qt.y0(40, (bArr[i7] >> 5) & 1);
            qt.y0(41, (bArr[i7] >> 4) & 1);
            qt.y0(42, (bArr[i7] >> 3) & 1);
            qt.y0(43, (bArr[i7] >> 2) & 1);
            qt.y0(44, (bArr[i7] >> 1) & 1);
            qt.y0(45, (bArr[i7] >> 0) & 1);
            qt.y0(46, (bArr[i2 + 4] >> 0) & 1);
            qt.y0(47, (bArr[i2 + 5] >> 0) & 255);
            qt.y0(48, (bArr[i2 + 6] >> 0) & 255);
            qt.y0(49, (bArr[i2 + 7] >> 0) & 255);
            return;
        }
        if (i5 == 56) {
            int i8 = i2 + 2;
            qt.y0(17, (bArr[i8] >> 7) & 1);
            qt.y0(18, (bArr[i8] >> 6) & 1);
            qt.y0(19, (bArr[i8] >> 5) & 1);
            qt.y0(20, (bArr[i8] >> 4) & 1);
            qt.y0(21, (bArr[i8] >> 3) & 1);
            qt.y0(22, (bArr[i8] >> 2) & 1);
            qt.y0(23, (bArr[i8] >> 1) & 1);
            qt.y0(24, (bArr[i8] >> 0) & 1);
            int i9 = i2 + 3;
            qt.y0(25, (bArr[i9] >> 7) & 1);
            qt.y0(26, 3 & (bArr[i9] >> 5));
            qt.y0(34, (bArr[i9] >> 4) & 1);
            qt.y0(27, bArr[i2 + 4] & 255);
            qt.y0(28, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(29, bArr[i2 + 7] & 255);
            return;
        }
        switch (i5) {
            case 32:
                byte b2 = bArr[i2 + 2];
                byte b3 = bArr[i2 + 3];
                this.f12791c = b2 & 255;
                int i10 = 0;
                while (true) {
                    iArr = this.f12792d;
                    if (i10 < iArr.length) {
                        int i11 = this.f12791c;
                        if (i11 != iArr[i10][0]) {
                            i10++;
                        } else if (i11 != 0) {
                            this.f12790b = i10;
                        }
                    }
                }
                int i12 = this.f12791c;
                if (i12 == 5) {
                    if ((b3 & 255) == 1) {
                        int i13 = h0.c.E;
                        if (i13 == 3 || i13 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        }
                    }
                    break;
                } else if (i12 == 8) {
                    for (int i14 = 0; i14 < (b3 & 255); i14++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    break;
                } else if (i12 == 9) {
                    for (int i15 = 0; i15 < (b3 & 255); i15++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    break;
                } else if ((b3 & 255) == 1 && (i4 = this.f12790b) < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    l0.b0.l0(this.f12792d[this.f12790b][1], 1);
                    break;
                }
                break;
            case 33:
                int i16 = i2 + 5;
                l0.c0.N1((bArr[i16] >> 7) & 1, (bArr[i16] >> 6) & 1, 0);
                break;
            case 34:
                u0.d.R2(l0.c0.i1(bArr[i2 + 2] & 255));
                int i17 = i2 + 3;
                u0.d.S2(l0.c0.i1(bArr[i17] & 255));
                u0.d.T2(l0.c0.i1(bArr[i17] & 255));
                u0.d.U2(l0.c0.i1(bArr[i2 + 4] & 255));
                int i18 = i2 + 5;
                int i19 = bArr[i18] & 255;
                int i20 = i2 + 6;
                int i21 = bArr[i20] & 255;
                int i22 = bArr[i20] & 255;
                int i23 = i2 + 7;
                int i24 = bArr[i23] & 255;
                if (i19 == 0 && i21 == 0 && i22 == 0 && i24 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i19 || l0.c0.f13014h != i21 || l0.c0.f13015i != i22 || l0.c0.f13016j != i24) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i19;
                l0.c0.f13014h = i21;
                l0.c0.f13015i = i22;
                l0.c0.f13016j = i24;
                u0.d.D2(l0.c0.i1(bArr[i18] & 255));
                u0.d.E2(l0.c0.i1(bArr[i20] & 255));
                u0.d.F2(l0.c0.i1(bArr[i20] & 255));
                u0.d.G2(l0.c0.i1(bArr[i23] & 255));
                break;
            case 35:
                qt.o(bArr[i2 + 2], true, 40);
                break;
            case 36:
                int i25 = i2 + 2;
                int i26 = bArr[i25] & 255;
                if ((bArr[i25] & 1) == 1) {
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(2, (i26 >> 6) & 1);
                        qt.y0(1, (i26 >> 7) & 1);
                    } else {
                        qt.y0(2, (i26 >> 7) & 1);
                        qt.y0(1, (i26 >> 6) & 1);
                    }
                    qt.y0(4, (i26 >> 5) & 1);
                    qt.y0(3, (i26 >> 4) & 1);
                    qt.y0(5, (i26 >> 3) & 1);
                    qt.y0(0, (i26 >> 2) & 1);
                }
                break;
            default:
                switch (i5) {
                    case 52:
                        qt.y0(7, bArr[i2 + 2] & 255);
                        qt.y0(8, bArr[i2 + 3] & 255);
                        qt.y0(9, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(10, bArr[i2 + 6] & 255);
                        qt.y0(11, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                        qt.y0(12, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                        qt.y0(13, (bArr[i2 + 12] & 255) | ((bArr[i2 + 11] << 8) & 65280));
                        break;
                    case 53:
                        qt.y0(14, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(15, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(16, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(50, bArr[i2 + 8] & 255);
                        qt.y0(51, (bArr[i2 + 11] & 255) | ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 10] << 8) & 65280));
                        break;
                    case 54:
                        int i27 = i2 + 2;
                        qt.y0(30, (bArr[i27] >> 7) & 1);
                        qt.y0(31, (bArr[i27] >> 6) & 1);
                        qt.y0(32, (bArr[i27] >> 5) & 1);
                        qt.y0(33, (bArr[i27] >> 4) & 1);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f12795g);
        l0.b0.p0(this.f12796h);
        qt.q0(this.f12793e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 52) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 130, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 130, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
        } else if (i2 == 2) {
            z.k.s(227, 144, 1, iArr[0]);
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, 153, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
        }
    }
}

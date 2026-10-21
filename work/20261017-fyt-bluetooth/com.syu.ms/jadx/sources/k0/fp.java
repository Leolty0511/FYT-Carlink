package k0;

import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class fp extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5271c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5272d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 13}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 1}, new int[]{11, 12}, new int[]{12, 0}, new int[]{13, 38}, new int[]{14, 5}, new int[]{15, 34}, new int[]{16, 35}, new int[]{17, 32}, new int[]{18, 33}, new int[]{19, 29}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 31}, new int[]{23, 30}, new int[]{24, 24}, new int[]{25, 54}, new int[]{26, 18}, new int[]{27, 6}, new int[]{28, 9}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5273e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f5274f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f5275g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(fp.this.f5275g);
            fp.this.f5273e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            fp fpVar = fp.this;
            int i2 = fpVar.f5273e - 1;
            fpVar.f5273e = i2;
            if (i2 <= 0) {
                l0.b0.p0(fpVar.f5275g);
                fp.this.f5273e = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 2, 53, 0);
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
        u0.c.f17386m.a(this.f5274f, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8317l = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f5271c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f5272d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f5271c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f5270b = i4;
                    break;
                }
                i4++;
            }
            switch (this.f5271c) {
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
                        int i11 = this.f5270b;
                        if (i11 < iArr.length && i11 != 255) {
                            l0.b0.l0(iArr[i11][1], 1);
                        }
                        this.f5270b = 255;
                    }
                    break;
            }
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, BatchedScanSettings.MAX_INTERVAL_SEC);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 53) {
            qt.y0(7, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(8, ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | (65280 & (bArr[i2 + 10] << 8)) | (bArr[i2 + 11] & 255));
            int i12 = i2 + 12;
            qt.y0(10, (bArr[i12] >> 6) & 1);
            int i13 = bArr[i2 + 8] & 255;
            u0.d.B3(((bArr[i12] >> 7) & 1) == 1 ? (268435456 | ((i13 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR)) & (-1) : (i13 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            return;
        }
        switch (b2) {
            case 34:
                if (nt.a()) {
                    u0.d.R2(l0.c0.J1(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.J1(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.J1(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.J1(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    int i14 = i2 + 2;
                    int i15 = bArr[i14] & 255;
                    int i16 = i2 + 3;
                    int i17 = bArr[i16] & 255;
                    int i18 = i2 + 4;
                    int i19 = bArr[i18] & 255;
                    int i20 = i2 + 5;
                    int i21 = bArr[i20] & 255;
                    if (i15 == 0 && i17 == 0 && i19 == 0 && i21 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i15 || l0.c0.f13014h != i17 || l0.c0.f13015i != i19 || l0.c0.f13016j != i21) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i15;
                    l0.c0.f13014h = i17;
                    l0.c0.f13015i = i19;
                    l0.c0.f13016j = i21;
                    u0.d.D2(l0.c0.J1(bArr[i14] & 255));
                    u0.d.E2(l0.c0.J1(bArr[i16] & 255));
                    u0.d.F2(l0.c0.J1(bArr[i18] & 255));
                    u0.d.G2(l0.c0.J1(bArr[i20] & 255));
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
                qt.y0(0, (b5 >> 2) & 1);
                qt.a((bArr[i2 + 3] >> 6) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f5274f);
        l0.b0.p0(this.f5275g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 11) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 227, 1, iArr[0]);
        }
    }
}

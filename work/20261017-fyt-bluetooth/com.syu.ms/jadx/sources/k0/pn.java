package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class pn extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9274c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9275d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 25}, new int[]{20, 7}, new int[]{21, 8}, new int[]{41, 30}, new int[]{42, 31}, new int[]{43, 32}, new int[]{44, 33}, new int[]{45, 34}, new int[]{46, 35}, new int[]{47, 29}, new int[]{48, 54}, new int[]{49, 24}, new int[]{50, 5}, new int[]{51, 53}, new int[]{52, 55}, new int[]{53, 6}, new int[]{70, 65}, new int[]{71, 66}, new int[]{72, 64}, new int[]{73, 39}, new int[]{74, 1}};

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
        mtVar.f8312g = 1;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f9274c = b3 & 255;
            int i5 = 0;
            while (true) {
                iArr = this.f9275d;
                if (i5 >= iArr.length) {
                    break;
                }
                int i6 = this.f9274c;
                if (i6 == iArr[i5][0]) {
                    if (i6 == 0) {
                        break;
                    }
                    this.f9273b = i5;
                    break;
                }
                i5++;
            }
            int i7 = this.f9274c;
            if (i7 == 20) {
                for (int i8 = 0; i8 < (b4 & 255); i8++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i7 == 21) {
                for (int i9 = 0; i9 < (b4 & 255); i9++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            if (i7 == 41) {
                for (int i10 = 0; i10 < (b4 & 255); i10++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            if (i7 == 42) {
                for (int i11 = 0; i11 < (b4 & 255); i11++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                return;
            }
            if ((b4 & 255) != 0) {
                if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                    return;
                }
                return;
            }
            int i12 = this.f9273b;
            if (i12 < iArr.length) {
                i4 = 255;
                if (i12 != 255) {
                    l0.b0.l0(iArr[i12][1], 1);
                }
            } else {
                i4 = 255;
            }
            this.f9273b = i4;
            return;
        }
        if (b2 != 33) {
            if (b2 == 39) {
                qt.y0(98, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
                qt.y0(99, bArr[i2 + 4] & 255);
                return;
            }
            if (b2 == 40) {
                int i13 = i2 + 2;
                qt.y0(100, (bArr[i13] >> 2) & 1);
                qt.y0(101, (bArr[i13] >> 0) & 3);
                return;
            } else if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            } else {
                if (b2 == 125 && (bArr[i2 + 2] & 255) == 1) {
                    int i14 = i2 + 3;
                    l0.c0.a((bArr[i14] >> 3) & 1, (bArr[i14] >> 4) & 1, 0);
                    o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i14] & 255}, null, null);
                    return;
                }
                return;
            }
        }
        int i15 = bArr[i2 + 2] & 255;
        int i16 = bArr[i2 + 3] & 255;
        int i17 = i2 + 5;
        int i18 = bArr[i17] & 255;
        int i19 = i2 + 6;
        int i20 = bArr[i19] & 255;
        int i21 = bArr[i2 + 7] & 255;
        qt.y0(10, (i15 >> 7) & 1);
        qt.y0(11, (i15 >> 6) & 1);
        qt.y0(12, (i15 >> 5) & 1);
        qt.y0(53, (i15 >> 4) & 1);
        qt.y0(65, (i15 >> 1) & 1);
        qt.y0(16, (i15 >> 0) & 1);
        qt.y0(18, (i16 >> 7) & 1);
        qt.y0(19, (i16 >> 6) & 1);
        qt.y0(20, (i16 >> 5) & 1);
        qt.y0(21, i16 & 15);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i18 = bArr[i19] & 255;
            i20 = bArr[i17] & 255;
        }
        int i22 = i18 & 255;
        if (i22 == 0) {
            qt.y0(27, -2);
        } else if (i22 == 31) {
            qt.y0(27, -3);
        } else if (i18 < 1 || i18 > 30) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, i22);
        }
        int i23 = i20 & 255;
        if (i23 == 0) {
            qt.y0(28, -2);
        } else if (i23 == 31) {
            qt.y0(28, -3);
        } else if (i20 < 1 || i20 > 30) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, i23);
        }
        qt.y0(29, (i21 >> 4) & 3);
        qt.y0(30, (i21 >> 0) & 3);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 102) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && qt.l0(iArr, 2)) {
            z.k.s(227, -118, 2, iArr[0], iArr[1]);
        }
    }
}

package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class wm extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11808b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11809c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11810d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 29}, new int[]{6, 65}, new int[]{7, 2}, new int[]{8, 13}, new int[]{18, 0}, new int[]{19, 32}, new int[]{20, 33}, new int[]{21, 12}, new int[]{22, 64}, new int[]{23, 54}, new int[]{24, 78}, new int[]{25, 55}, new int[]{32, 7}, new int[]{33, 8}, new int[]{34, 25}, new int[]{35, 9}, new int[]{36, 18}, new int[]{37, 24}, new int[]{38, 5}, new int[]{39, 18}, new int[]{40, 1}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
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
            this.f11809c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f11810d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f11809c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f11808b = i7;
                    break;
                }
                i7++;
            }
            int i9 = this.f11809c;
            if (i9 == 32) {
                for (int i10 = 0; i10 < (b4 & 255); i10++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i9 == 33) {
                for (int i11 = 0; i11 < (b4 & 255); i11++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            if (i9 == 39) {
                if ((b4 & 255) != 1 || o1.u.S("com.syu.carlink")) {
                    return;
                }
                o1.u.g("com.syu.carlink");
                return;
            }
            int i12 = b4 & 255;
            if (i12 == 1) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                if (i12 == 0) {
                    int i13 = this.f11808b;
                    if (i13 < iArr.length && i13 != 255) {
                        l0.b0.l0(iArr[i13][1], 1);
                    }
                    this.f11808b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 != 33) {
            if (b2 == 125 && (bArr[i2 + 2] & 255) == 1) {
                int i14 = i2 + 3;
                l0.c0.a((bArr[i14] >> 3) & 1, (bArr[i14] >> 4) & 1, 0);
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i14] & 255}, null, null);
                return;
            }
            return;
        }
        int i15 = i2 + 2;
        qt.y0(11, (bArr[i15] >> 6) & 1);
        qt.y0(12, (bArr[i15] >> 4) & 3);
        qt.y0(13, (bArr[i15] >> 3) & 1);
        qt.y0(65, (bArr[i15] >> 0) & 1);
        qt.y0(16, (bArr[i15] >> 1) & 1);
        int i16 = bArr[i2 + 3] & 255;
        if (i16 != 1) {
            if (i16 == 2) {
                i4 = 0;
                i6 = 1;
            } else if (i16 == 3) {
                i4 = 0;
                i6 = 0;
                i5 = 1;
            } else if (i16 == 4) {
                i6 = 0;
                i4 = 1;
                i5 = 1;
            } else if (i16 != 5) {
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
        qt.y0(21, (bArr[i2 + 4] >> 0) & 255);
        int i17 = i2 + 5;
        int i18 = bArr[i17] & 255;
        int i19 = i2 + 6;
        int i20 = bArr[i19] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i18 = bArr[i19] & 255;
            i20 = bArr[i17] & 255;
        }
        if (i18 == 0) {
            qt.y0(27, -2);
        } else if (i18 == 30) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i18);
        }
        if (i20 == 0) {
            qt.y0(28, -2);
        } else if (i20 == 30) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i20);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}

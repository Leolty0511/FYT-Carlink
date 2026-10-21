package k0;

import android.os.SystemProperties;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class tl extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10707b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10710e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10708c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10709d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{6, 13}, new int[]{7, 12}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10711f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f10712g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{7, 12}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
        mtVar.f8317l = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f10708c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f10709d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f10708c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f10707b = i4;
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
                    int i7 = this.f10707b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f10707b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 2) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f10711f = b5 & 255;
            int i8 = 0;
            while (true) {
                iArr2 = this.f10712g;
                if (i8 >= iArr2.length) {
                    break;
                }
                int i9 = this.f10711f;
                if (i9 == iArr2[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f10710e = i8;
                    break;
                }
                i8++;
            }
            int i10 = b6 & 255;
            if (i10 == 1) {
                if (i8 < iArr2.length) {
                    l0.b0.l0(iArr2[i8][1], 0);
                    return;
                }
                return;
            } else {
                if (i10 == 0) {
                    int i11 = this.f10710e;
                    if (i11 < iArr2.length && i11 != 255) {
                        l0.b0.l0(iArr2[i11][1], 1);
                    }
                    this.f10710e = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 3) {
            int i12 = i2 + 2;
            qt.y0(10, (bArr[i12] >> 7) & 1);
            qt.y0(12, (bArr[i12] >> 5) & 3);
            qt.y0(21, (bArr[i12] >> 0) & 15);
            int i13 = i2 + 3;
            qt.y0(65, (bArr[i13] >> 7) & 1);
            qt.y0(18, (bArr[i13] >> 6) & 1);
            qt.y0(19, (bArr[i13] >> 5) & 1);
            qt.y0(20, (bArr[i13] >> 4) & 1);
            qt.y0(16, (bArr[i13] >> 3) & 1);
            int i14 = i2 + 4;
            qt.y0(13, (bArr[i14] >> 7) & 1);
            qt.y0(14, (bArr[i14] >> 6) & 1);
            qt.y0(11, 3 & (bArr[i14] >> 4));
            int i15 = i2 + 5;
            qt.y0(56, (bArr[i15] >> 7) & 1);
            int i16 = bArr[i15] & 127;
            int i17 = i2 + 6;
            int i18 = bArr[i17] & 127;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i16 = bArr[i17] & 127;
                i18 = bArr[i15] & 127;
            }
            if (i16 == 0) {
                qt.y0(27, -2);
            } else if (i16 != 127) {
                qt.y0(27, i16);
            } else {
                qt.y0(27, -3);
            }
            if (i18 == 0) {
                qt.y0(28, -2);
            } else if (i18 != 127) {
                qt.y0(28, i18);
            } else {
                qt.y0(28, -3);
            }
            int i19 = i2 + 7;
            qt.y0(29, (bArr[i19] >> 4) & 15);
            qt.y0(30, (bArr[i19] >> 0) & 15);
            return;
        }
        if (b2 == 5) {
            int i20 = bArr[i2 + 2] & 255;
            if (i20 != 5) {
                switch (i20) {
                    case 80:
                        qt.y0(98, (bArr[i2 + 5] & 255) | (65280 & (bArr[i2 + 4] << 8)) | ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY));
                        break;
                    case 81:
                        qt.y0(99, (bArr[i2 + 4] & 255) | (65280 & (bArr[i2 + 3] << 8)));
                        break;
                    case 82:
                        qt.y0(100, bArr[i2 + 3] & 255);
                        break;
                }
                return;
            }
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                int i21 = i2 + 3;
                qt.y0(1, (bArr[i21] >> 6) & 1);
                qt.y0(2, (bArr[i21] >> 7) & 1);
            } else {
                int i22 = i2 + 3;
                qt.y0(1, (bArr[i22] >> 7) & 1);
                qt.y0(2, (bArr[i22] >> 6) & 1);
            }
            int i23 = i2 + 3;
            qt.y0(3, (bArr[i23] >> 5) & 1);
            qt.y0(4, (bArr[i23] >> 4) & 1);
            qt.y0(5, (bArr[i23] >> 2) & 1);
            qt.y0(0, (bArr[i23] >> 3) & 1);
            return;
        }
        if (b2 == 6) {
            qt.i(bArr[i2 + 7], bArr[i2 + 6], true, 540);
            return;
        }
        if (b2 != 7) {
            if (b2 != 48) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        int i24 = i2 + 2;
        int i25 = bArr[i24] & 255;
        int i26 = i2 + 3;
        int i27 = bArr[i26] & 255;
        int i28 = i2 + 4;
        int i29 = bArr[i28] & 255;
        int i30 = i2 + 5;
        int i31 = bArr[i30] & 255;
        if (i25 == 0 && i27 == 0 && i29 == 0 && i31 == 0) {
            u0.d.C2(0);
        } else if ((l0.c0.f13013g != i25 || l0.c0.f13014h != i27 || l0.c0.f13015i != i29 || l0.c0.f13016j != i31) && u0.b.f17347o == 0) {
            u0.d.C2(1);
            l0.c0.f13017k = 4;
            l0.b0.b(l0.c0.f13018l);
        }
        l0.c0.f13013g = i25;
        l0.c0.f13014h = i27;
        l0.c0.f13015i = i29;
        l0.c0.f13016j = i31;
        u0.d.D2(l0.c0.L0(bArr[i24] & 255));
        u0.d.E2(l0.c0.L0(bArr[i26] & 255));
        u0.d.F2(l0.c0.L0(bArr[i28] & 255));
        u0.d.G2(l0.c0.L0(bArr[i30] & 255));
        u0.d.R2(l0.c0.L0(bArr[i2 + 6] & 255));
        u0.d.S2(l0.c0.L0(bArr[i2 + 7] & 255));
        u0.d.T2(l0.c0.L0(bArr[i2 + 8] & 255));
        u0.d.U2(l0.c0.L0(bArr[i2 + 9] & 255));
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 101) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}

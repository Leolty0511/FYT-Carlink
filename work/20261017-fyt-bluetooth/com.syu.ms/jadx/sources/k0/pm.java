package k0;

import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class pm extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9271c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9272d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 3}, new int[]{12, 4}, new int[]{13, 13}, new int[]{14, 12}, new int[]{16, 21}, new int[]{17, 0}, new int[]{18, 7}, new int[]{19, 8}, new int[]{20, 18}, new int[]{21, 8}, new int[]{22, 38}, new int[]{23, 6}, new int[]{24, 5}, new int[]{25, 5}, new int[]{26, 32}, new int[]{27, 33}, new int[]{32, 62}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 1;
        mtVar.f8312g = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 33) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f9271c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f9272d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f9271c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f9270b = i7;
                    break;
                }
                i7++;
            }
            int i9 = this.f9271c;
            if (i9 == 18) {
                for (int i10 = 0; i10 < (b4 & 255); i10++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i9 == 19) {
                for (int i11 = 0; i11 < (b4 & 255); i11++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            if (i9 == 26) {
                for (int i12 = 0; i12 < (b4 & 255); i12++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            if (i9 == 27) {
                for (int i13 = 0; i13 < (b4 & 255); i13++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                return;
            }
            int i14 = b4 & 255;
            if (i14 == 1) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                if (i14 == 0) {
                    int i15 = this.f9270b;
                    if (i15 < iArr.length && i15 != 255) {
                        l0.b0.l0(iArr[i15][1], 1);
                    }
                    this.f9270b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 != 35) {
            if (b2 == 125) {
                if ((bArr[i2 + 2] & 255) != 1) {
                    return;
                }
                int i16 = i2 + 3;
                l0.c0.a((bArr[i16] >> 3) & 1, (bArr[i16] >> 4) & 1, 0);
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i16] & 255}, null, null);
                return;
            }
            if (b2 == 127) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            switch (b2) {
                case 38:
                    u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
                    break;
                case 39:
                    int i17 = i2 + 2;
                    int i18 = bArr[i17] & 255;
                    int i19 = i2 + 3;
                    int i20 = bArr[i19] & 255;
                    int i21 = i2 + 4;
                    int i22 = bArr[i21] & 255;
                    int i23 = i2 + 5;
                    int i24 = bArr[i23] & 255;
                    if (i18 == 0 && i20 == 0 && i22 == 0 && i24 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i18 || l0.c0.f13014h != i20 || l0.c0.f13015i != i22 || l0.c0.f13016j != i24) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i18;
                    l0.c0.f13014h = i20;
                    l0.c0.f13015i = i22;
                    l0.c0.f13016j = i24;
                    u0.d.D2(l0.c0.K0(bArr[i17] & 255));
                    u0.d.E2(l0.c0.K0(bArr[i19] & 255));
                    u0.d.F2(l0.c0.K0(bArr[i21] & 255));
                    u0.d.G2(l0.c0.K0(bArr[i23] & 255));
                    break;
                case 40:
                    byte b5 = bArr[i2 + 2];
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b5 >> 7) & 1);
                        qt.y0(2, (b5 >> 6) & 1);
                    } else {
                        qt.y0(1, (b5 >> 6) & 1);
                        qt.y0(2, (b5 >> 7) & 1);
                    }
                    qt.y0(3, (b5 >> 4) & 1);
                    qt.y0(4, (b5 >> 5) & 1);
                    qt.y0(5, (b5 >> 3) & 1);
                    qt.y0(0, (b5 >> 2) & 1);
                    break;
                case 41:
                    qt.i(bArr[i2 + 3], bArr[i2 + 2], true, 5500);
                    break;
            }
            return;
        }
        int i25 = i2 + 2;
        qt.y0(10, (bArr[i25] >> 7) & 1);
        qt.y0(11, (bArr[i25] >> 6) & 1);
        qt.y0(12, (bArr[i25] >> 5) & 1);
        qt.y0(57, (bArr[i25] >> 4) & 1);
        qt.y0(13, (bArr[i25] >> 3) & 1);
        qt.y0(14, (bArr[i25] >> 2) & 1);
        qt.y0(16, (bArr[i25] >> 1) & 1);
        qt.y0(65, (bArr[i25] >> 0) & 1);
        switch (bArr[i2 + 3]) {
            case 1:
                i4 = 0;
                i5 = 0;
                i6 = 1;
                break;
            case 2:
                i4 = 0;
                i6 = 1;
                i5 = i6;
                break;
            case 3:
                i4 = 0;
                i6 = 0;
                i5 = 1;
                break;
            case 4:
                i6 = 0;
                i4 = 1;
                i5 = 1;
                break;
            case 5:
                i6 = 0;
                i5 = 0;
                i4 = 1;
                break;
            case 6:
                i5 = 0;
                i4 = 1;
                i6 = 1;
                break;
            case 7:
                i4 = 1;
                i6 = i4;
                i5 = i6;
                break;
            default:
                i4 = 0;
                i6 = i4;
                i5 = i6;
                break;
        }
        qt.y0(18, i4);
        qt.y0(19, i6);
        qt.y0(20, i5);
        qt.y0(21, bArr[i2 + 4] & 255);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            int i26 = i2 + 5;
            int i27 = bArr[i26] & 255;
            if (i27 == 0) {
                qt.y0(28, -2);
            } else if (i27 != 255) {
                qt.y0(28, bArr[i26] & 255);
            } else {
                qt.y0(28, -3);
            }
            int i28 = i2 + 6;
            int i29 = bArr[i28] & 255;
            if (i29 == 0) {
                qt.y0(27, -2);
            } else if (i29 != 255) {
                qt.y0(27, bArr[i28] & 255);
            } else {
                qt.y0(27, -3);
            }
        } else {
            int i30 = i2 + 5;
            int i31 = bArr[i30] & 255;
            if (i31 == 0) {
                qt.y0(27, -2);
            } else if (i31 != 255) {
                qt.y0(27, bArr[i30] & 255);
            } else {
                qt.y0(27, -3);
            }
            int i32 = i2 + 6;
            int i33 = bArr[i32] & 255;
            if (i33 == 0) {
                qt.y0(28, -2);
            } else if (i33 != 255) {
                qt.y0(28, bArr[i32] & 255);
            } else {
                qt.y0(28, -3);
            }
        }
        u0.d.A3(((bArr[i2 + 7] & 255) * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
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
        if (i2 == 0) {
            z.k.s(227, -124, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, -112, 2, iArr[0], iArr[1]);
        }
    }
}

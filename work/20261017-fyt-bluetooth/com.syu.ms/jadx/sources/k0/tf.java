package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class tf extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10631c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10632d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{36, 18}, new int[]{38, 5}, new int[]{39, -1}, new int[]{40, -1}, new int[]{41, -1}, new int[]{48, -1}, new int[]{49, -1}};

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
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = bArr[i2] & 255;
        if (i9 == 1) {
            byte b2 = bArr[i2 + 2];
            byte b3 = bArr[i2 + 3];
            this.f10631c = b2 & 255;
            int i10 = 0;
            while (true) {
                iArr = this.f10632d;
                if (i10 >= iArr.length) {
                    break;
                }
                int i11 = this.f10631c;
                if (i11 == iArr[i10][0]) {
                    if (i11 == 0) {
                        break;
                    }
                    this.f10630b = i10;
                    break;
                }
                i10++;
            }
            int i12 = this.f10631c;
            if (i12 == 48) {
                if ((b3 & 255) == 1) {
                    if (qt.k0()) {
                        c.e.d().c(591);
                        return;
                    } else {
                        if (u0.b.f17347o == 0) {
                            qt.a(1);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (i12 == 49) {
                if ((b3 & 255) == 1) {
                    if (qt.k0()) {
                        c.e.d().c(592);
                        return;
                    } else {
                        if (u0.b.f17347o == 0) {
                            qt.a(1);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            switch (i12) {
                case 39:
                    if (!qt.k0()) {
                        if (u0.b.f17347o != 0) {
                            qt.a(0);
                        } else {
                            qt.a(1);
                        }
                    } else if (!o1.u.S("com.syu.fourcamera2")) {
                        c.e.d().c(590);
                    } else {
                        c.e.d().c(614);
                    }
                    break;
                case 40:
                    if ((b3 & 255) == 1) {
                        if (qt.k0()) {
                            c.e.d().c(595);
                        } else if (u0.b.f17347o == 0) {
                            qt.a(1);
                        }
                    }
                    break;
                case 41:
                    if ((b3 & 255) == 1) {
                        if (qt.k0()) {
                            c.e.d().c(596);
                        } else if (u0.b.f17347o == 0) {
                            qt.a(1);
                        }
                    }
                    break;
                default:
                    int i13 = b3 & 255;
                    if (i13 == 1) {
                        if (i10 < iArr.length) {
                            l0.b0.l0(iArr[i10][1], 0);
                        }
                        break;
                    } else if (i13 == 0 && i10 <= iArr.length) {
                        l0.b0.l0(iArr[this.f10630b][1], 1);
                        break;
                    }
                    break;
            }
            return;
        }
        if (i9 != 3) {
            if (i9 == 6) {
                int i14 = i2 + 2;
                qt.y0(98, (bArr[i14] >> 0) & 1);
                qt.y0(99, (bArr[i14] >> 1) & 1);
                return;
            }
            if (i9 == 27) {
                int i15 = bArr[i2 + 2] & 255;
                int i16 = bArr[i2 + 3] & 255;
                int i17 = bArr[i2 + 4] & 255;
                qt.y0(42, (i15 >> 0) & 1);
                qt.y0(47, (i15 >> 2) & 1);
                qt.y0(46, (i15 >> 3) & 1);
                int i18 = i16 & 255;
                if (i18 == 0) {
                    qt.y0(40, -2);
                } else if (i18 != 31) {
                    qt.y0(40, i18);
                } else {
                    qt.y0(40, -3);
                }
                qt.y0(44, (i17 >> 0) & 15);
                return;
            }
            if (i9 == 38) {
                qt.m(bArr[i2 + 2], bArr[i2 + 3], 7575, false, 6440);
                return;
            }
            if (i9 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            switch (i9) {
                case 34:
                    u0.d.R2(l0.c0.j1(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.j1(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.j1(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.j1(bArr[i2 + 5] & 255));
                    break;
                case 35:
                    int i19 = i2 + 2;
                    int i20 = bArr[i19] & 255;
                    int i21 = i2 + 3;
                    int i22 = bArr[i21] & 255;
                    int i23 = i2 + 4;
                    int i24 = bArr[i23] & 255;
                    int i25 = i2 + 5;
                    int i26 = bArr[i25] & 255;
                    if (i20 == 0 && i22 == 0 && i24 == 0 && i26 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i20 || l0.c0.f13014h != i22 || l0.c0.f13015i != i24 || l0.c0.f13016j != i26) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i20;
                    l0.c0.f13014h = i22;
                    l0.c0.f13015i = i24;
                    l0.c0.f13016j = i26;
                    u0.d.D2(l0.c0.j1(bArr[i19] & 255));
                    u0.d.E2(l0.c0.j1(bArr[i21] & 255));
                    u0.d.F2(l0.c0.j1(bArr[i23] & 255));
                    u0.d.G2(l0.c0.j1(bArr[i25] & 255));
                    break;
                case 36:
                    int i27 = bArr[i2 + 2] & 255;
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(2, (i27 >> 6) & 1);
                        qt.y0(1, (i27 >> 7) & 1);
                    } else {
                        qt.y0(2, (i27 >> 7) & 1);
                        qt.y0(1, (i27 >> 6) & 1);
                    }
                    qt.y0(4, (i27 >> 5) & 1);
                    qt.y0(3, (i27 >> 4) & 1);
                    qt.y0(5, (i27 >> 3) & 1);
                    break;
            }
            return;
        }
        int i28 = bArr[i2 + 2] & 255;
        int i29 = bArr[i2 + 3] & 255;
        int i30 = i2 + 4;
        int i31 = bArr[i30] & 255;
        int i32 = i2 + 5;
        int i33 = bArr[i32] & 255;
        int i34 = bArr[i2 + 8] & 255;
        qt.y0(21, (i28 & 7) | ((i29 >> 1) & 8));
        qt.y0(16, (i28 >> 4) & 1);
        qt.y0(12, (i28 >> 5) & 1);
        qt.y0(11, (i28 >> 6) & 1);
        qt.y0(10, (i28 >> 7) & 1);
        switch (i29 & 15) {
            case 1:
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 0;
                i8 = 1;
                break;
            case 2:
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i8 = 0;
                i7 = 1;
                break;
            case 3:
                i4 = 0;
                i5 = 0;
                i8 = 0;
                i7 = 0;
                i6 = 1;
                break;
            case 4:
                i4 = 0;
                i8 = 0;
                i7 = 0;
                i5 = 1;
                i6 = i5;
                break;
            case 5:
                i4 = 0;
                i6 = 0;
                i8 = 0;
                i7 = 0;
                i5 = 1;
                break;
            case 6:
                i6 = 0;
                i8 = 0;
                i7 = 0;
                i4 = 1;
                i5 = 1;
                break;
            case 7:
                i5 = 0;
                i6 = 0;
                i8 = 0;
                i7 = 0;
                i4 = 1;
                break;
            case 8:
                i5 = 0;
                i8 = 0;
                i7 = 0;
                i4 = 1;
                i6 = 1;
                break;
            case 9:
                i8 = 0;
                i7 = 0;
                i4 = 1;
                i5 = 1;
                i6 = i5;
                break;
            default:
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i8 = 0;
                i7 = 0;
                break;
        }
        qt.y0(18, i4);
        qt.y0(19, i5);
        qt.y0(20, i6);
        qt.y0(49, i8);
        qt.y0(65, i7);
        qt.y0(14, (i29 >> 5) & 1);
        qt.y0(13, (i34 >> 2) & 1);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i31 = bArr[i32] & 255;
            i33 = bArr[i30] & 255;
        }
        int i35 = i31 & 255;
        if (i35 == 0) {
            qt.y0(27, -2);
        } else if (i35 != 30) {
            qt.y0(27, i35);
        } else {
            qt.y0(27, -3);
        }
        int i36 = i33 & 255;
        if (i36 == 0) {
            qt.y0(28, -2);
        } else if (i36 != 30) {
            qt.y0(28, i36);
        } else {
            qt.y0(28, -3);
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 100) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && iArr != null && iArr.length >= 2) {
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
        }
    }
}

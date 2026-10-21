package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class fr extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5289b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5292e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5290c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5291d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{9, 13}, new int[]{10, 18}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5293f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f5294g = {new int[]{1, 0}, new int[]{3, 12}, new int[]{4, 18}, new int[]{6, 2}, new int[]{14, 8}, new int[]{15, 7}, new int[]{17, 3}, new int[]{18, 4}, new int[]{20, 13}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        int i2 = nt.f8633a;
        if (i2 == 7209414) {
            mtVar.f8314i = 0;
            mtVar.f8306a = null;
        } else {
            if (i2 != 7274950) {
                return;
            }
            mtVar.f8314i = 1;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 40) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            } else {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            }
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
        }
        if (b2 == 48) {
            qt.m(bArr[i2 + 3], bArr[i2 + 2], 7784, false, 5943);
            return;
        }
        if (b2 == 64) {
            int i7 = i2 + 2;
            qt.y0(98, (bArr[i7] >> 5) & 1);
            qt.y0(99, (bArr[i7] >> 3) & 3);
            qt.y0(100, (bArr[i7] >> 2) & 1);
            qt.y0(101, (bArr[i7] >> 0) & 3);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i8 = i2 + 3;
            l0.c0.a((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i8] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 33:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f5290c = b4 & 255;
                int i9 = 0;
                while (true) {
                    iArr = this.f5291d;
                    if (i9 < iArr.length) {
                        int i10 = this.f5290c;
                        if (i10 != iArr[i9][0]) {
                            i9++;
                        } else if (i10 != 0) {
                            this.f5289b = i9;
                        }
                    }
                }
                if (this.f5290c != 9) {
                    int i11 = b5 & 255;
                    if (i11 != 1) {
                        if (i11 == 0) {
                            int i12 = this.f5289b;
                            if (i12 < iArr.length && i12 != 255) {
                                l0.b0.l0(iArr[i12][1], 1);
                            }
                            this.f5289b = 255;
                        }
                    } else if (i9 < iArr.length) {
                        l0.b0.l0(iArr[i9][1], 0);
                    }
                } else if ((b5 & 255) == 1) {
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
            case 34:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                this.f5293f = b6 & 255;
                int i14 = 0;
                while (true) {
                    iArr2 = this.f5294g;
                    if (i14 < iArr2.length) {
                        int i15 = this.f5293f;
                        if (i15 != iArr2[i14][0]) {
                            i14++;
                        } else if (i15 != 0) {
                            this.f5292e = i14;
                        }
                    }
                }
                int i16 = b7 & 255;
                if (i16 != 1) {
                    if (i16 == 0) {
                        int i17 = this.f5292e;
                        if (i17 < iArr2.length && i17 != 255) {
                            l0.b0.l0(iArr2[i17][1], 1);
                        }
                        this.f5292e = 255;
                    }
                } else if (i14 < iArr2.length) {
                    l0.b0.l0(iArr2[i14][1], 0);
                }
                break;
            case 35:
                byte b8 = bArr[i2 + 2];
                qt.y0(10, (b8 >> 7) & 1);
                qt.y0(11, (b8 >> 6) & 1);
                qt.y0(12, (b8 >> 5) & 1);
                qt.y0(53, (b8 >> 4) & 1);
                qt.y0(16, (b8 >> 1) & 1);
                qt.y0(15, (b8 >> 0) & 1);
                byte b9 = bArr[i2 + 3];
                if (b9 != 0) {
                    if (b9 == 1) {
                        i4 = 0;
                        i6 = 1;
                    } else if (b9 == 2) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (b9 == 3) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (b9 != 4) {
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
                qt.y0(77, b9 & 255);
                qt.y0(21, bArr[i2 + 4] & 255);
                int i18 = i2 + 5;
                int i19 = bArr[i18] & 255;
                int i20 = i2 + 6;
                int i21 = bArr[i20] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i19 = bArr[i20] & 255;
                    i21 = bArr[i18] & 255;
                }
                if (i19 == 0) {
                    qt.y0(27, -2);
                } else if (i19 == 254) {
                    qt.y0(27, -1);
                } else if (i19 != 255) {
                    qt.y0(27, i19);
                } else {
                    qt.y0(27, -3);
                }
                if (i21 == 0) {
                    qt.y0(28, -2);
                } else if (i21 == 254) {
                    qt.y0(28, -1);
                } else if (i21 == 255) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i21);
                }
                break;
            case 36:
                u0.d.R2(l0.c0.k1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.k1(bArr[i2 + 5] & 255));
                break;
            case 37:
                int i22 = i2 + 2;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 3;
                int i25 = bArr[i24] & 255;
                int i26 = i2 + 4;
                int i27 = bArr[i26] & 255;
                int i28 = i2 + 5;
                int i29 = bArr[i28] & 255;
                if (i23 == 0 && i25 == 0 && i27 == 0 && i29 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i23 || l0.c0.f13014h != i25 || l0.c0.f13015i != i27 || l0.c0.f13016j != i29) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i23;
                l0.c0.f13014h = i25;
                l0.c0.f13015i = i27;
                l0.c0.f13016j = i29;
                u0.d.D2(l0.c0.k1(bArr[i22] & 255));
                u0.d.E2(l0.c0.E0(bArr[i24] & 255));
                u0.d.F2(l0.c0.E0(bArr[i26] & 255));
                u0.d.G2(l0.c0.k1(bArr[i28] & 255));
                break;
        }
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
        if (i2 == 0) {
            z.k.s(227, 128, 2, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, 224, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 144, 1, iArr[0]);
        }
    }
}

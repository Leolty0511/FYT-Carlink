package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class om extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8907b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8910e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8913h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8908c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8909d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8911f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f8912g = {new int[]{1, 25}, new int[]{2, 54}, new int[]{3, 6}, new int[]{4, 5}, new int[]{5, 21}, new int[]{6, 67}, new int[]{7, 68}, new int[]{8, 55}, new int[]{9, 12}, new int[]{10, 1}, new int[]{11, 29}, new int[]{13, 18}, new int[]{14, 26}, new int[]{16, 7}, new int[]{17, 8}, new int[]{18, 31}, new int[]{19, 30}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 38}, new int[]{40, 64}, new int[]{41, 18}, new int[]{42, 13}, new int[]{43, 4}, new int[]{44, 3}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f8913h = (nt.f8633a >> 16) & 65535;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 38) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 780);
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 65) {
            if (bArr[i2 + 2] != 1) {
                return;
            }
            byte b3 = bArr[i2 + 3];
            qt.y0(5, (b3 >> 4) & 1);
            qt.y0(4, (b3 >> 3) & 1);
            qt.y0(3, (b3 >> 2) & 1);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 1) & 1);
                qt.y0(2, (b3 >> 0) & 1);
                return;
            } else {
                qt.y0(1, (b3 >> 0) & 1);
                qt.y0(2, (b3 >> 1) & 1);
                return;
            }
        }
        if (b2 == 80) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            this.f8911f = b4 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f8912g;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f8911f;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f8910e = i4;
                    break;
                }
                i4++;
            }
            int i6 = b5 & 255;
            if (i6 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i6 == 0) {
                    int i7 = this.f8910e;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f8910e = 255;
                    return;
                }
                return;
            }
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
        switch (b2) {
            case 32:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                this.f8908c = b6 & 255;
                int i9 = 0;
                while (true) {
                    iArr2 = this.f8909d;
                    if (i9 < iArr2.length) {
                        int i10 = this.f8908c;
                        if (i10 != iArr2[i9][0]) {
                            i9++;
                        } else if (i10 != 0) {
                            this.f8907b = i9;
                        }
                    }
                }
                int i11 = this.f8908c;
                if (i11 == 4) {
                    if ((b7 & 255) == 1) {
                        int i12 = h0.c.E;
                        if (i12 == 3 || i12 == 4 || i12 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(3, 0);
                            l0.b0.l0(3, 1);
                        }
                    }
                } else if (i11 != 8) {
                    int i13 = b7 & 255;
                    if (i13 != 1) {
                        if (i13 == 0) {
                            int i14 = this.f8907b;
                            if (i14 < iArr2.length && i14 != 255) {
                                l0.b0.l0(iArr2[i14][1], 1);
                            }
                            this.f8907b = 255;
                        }
                    } else if (i9 < iArr2.length) {
                        l0.b0.l0(iArr2[i9][1], 0);
                    }
                } else if ((b7 & 255) == 1) {
                    if (h0.c.E == 4) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    } else {
                        l0.b0.l0(13, 0);
                        l0.b0.l0(13, 1);
                    }
                }
                break;
            case 33:
                int i15 = bArr[i2 + 2] & 255;
                int i16 = bArr[i2 + 3] & 255;
                int i17 = bArr[i2 + 4] & 255;
                int i18 = bArr[i2 + 5] & 255;
                int i19 = bArr[i2 + 6] & 255;
                qt.y0(10, (i15 >> 7) & 1);
                qt.y0(11, (i15 >> 6) & 1);
                qt.y0(12, (i15 >> 5) & 1);
                qt.y0(13, (i15 >> 4) & 1);
                qt.y0(26, (i15 >> 3) & 1);
                qt.y0(14, (i15 >> 2) & 1);
                qt.y0(65, (i15 >> 1) & 1);
                qt.y0(16, (i15 >> 0) & 1);
                qt.y0(18, (i16 >> 7) & 1);
                qt.y0(19, (i16 >> 6) & 1);
                qt.y0(20, (i16 >> 5) & 1);
                qt.y0(21, i16 & 15);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    qt.y0(27, i18 & 255);
                    qt.y0(28, i17 & 255);
                } else {
                    qt.y0(27, i17 & 255);
                    qt.y0(28, i18 & 255);
                }
                qt.y0(29, (i19 >> 4) & 3);
                qt.y0(30, (i19 >> 0) & 3);
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(l0.c0.K1(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.K1(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.K1(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.K1(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    int i20 = i2 + 2;
                    int i21 = bArr[i20] & 255;
                    int i22 = i2 + 3;
                    int i23 = bArr[i22] & 255;
                    int i24 = i2 + 4;
                    int i25 = bArr[i24] & 255;
                    int i26 = i2 + 5;
                    int i27 = bArr[i26] & 255;
                    if (i21 == 0 && i23 == 0 && i25 == 0 && i27 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i21 || l0.c0.f13014h != i23 || l0.c0.f13015i != i25 || l0.c0.f13016j != i27) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i21;
                    l0.c0.f13014h = i23;
                    l0.c0.f13015i = i25;
                    l0.c0.f13016j = i27;
                    u0.d.D2(l0.c0.K1(bArr[i20] & 255));
                    u0.d.E2(l0.c0.K1(bArr[i22] & 255));
                    u0.d.F2(l0.c0.K1(bArr[i24] & 255));
                    u0.d.G2(l0.c0.K1(bArr[i26] & 255));
                }
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
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && qt.l0(iArr, 2)) {
            z.k.s(227, 149, 2, iArr[0], iArr[1]);
        }
    }
}

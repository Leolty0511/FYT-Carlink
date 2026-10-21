package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ar extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3443c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3444d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 12}, new int[]{6, 2}, new int[]{7, 18}, new int[]{8, 26}, new int[]{9, 21}, new int[]{10, 0}, new int[]{20, 13}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == -1) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 5500);
            return;
        }
        if (b2 == 58) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 4) & 1);
                qt.y0(2, (b3 >> 5) & 1);
            } else {
                qt.y0(1, (b3 >> 5) & 1);
                qt.y0(2, (b3 >> 4) & 1);
            }
            qt.y0(4, (b3 >> 2) & 1);
            qt.y0(3, (b3 >> 3) & 1);
            qt.y0(5, (b3 >> 1) & 1);
            qt.y0(0, (b3 >> 0) & 1);
            return;
        }
        if (b2 == 60) {
            int i7 = i2 + 2;
            l0.c0.N1((bArr[i7] >> 6) & 1, (bArr[i7] >> 5) & 1, 0);
            return;
        }
        if (b2 == 64) {
            qt.y0(98, bArr[i2 + 2] & 255);
            qt.y0(99, bArr[i2 + 3] & 255);
            return;
        }
        if (b2 == 65) {
            qt.y0(100, bArr[i2 + 2] & 255);
            qt.y0(101, bArr[i2 + 3] & 255);
            qt.y0(102, bArr[i2 + 4] & 255);
            qt.y0(103, bArr[i2 + 5] & 255);
            return;
        }
        switch (b2) {
            case 32:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f3443c = b4 & 255;
                int i8 = 0;
                while (true) {
                    iArr = this.f3444d;
                    if (i8 < iArr.length) {
                        int i9 = this.f3443c;
                        if (i9 != iArr[i8][0]) {
                            i8++;
                        } else if (i9 != 0) {
                            this.f3442b = i8;
                        }
                    }
                }
                int i10 = b5 & 255;
                if (i10 != 1) {
                    if (i10 == 0) {
                        int i11 = this.f3442b;
                        if (i11 < iArr.length && i11 != 255) {
                            l0.b0.l0(iArr[i11][1], 1);
                        }
                        this.f3442b = 255;
                    }
                } else if (i8 < iArr.length) {
                    l0.b0.l0(iArr[i8][1], 0);
                }
                break;
            case 33:
                byte b6 = bArr[i2 + 2];
                qt.y0(10, (b6 >> 7) & 1);
                qt.y0(53, (b6 >> 5) & 1);
                qt.y0(13, (b6 >> 4) & 1);
                qt.y0(11, (b6 >> 3) & 1);
                qt.y0(12, (b6 >> 2) & 1);
                qt.y0(15, (b6 >> 1) & 1);
                qt.y0(63, (b6 >> 0) & 1);
                qt.y0(21, bArr[i2 + 3] & 255);
                switch (bArr[i2 + 4]) {
                    case 0:
                        i4 = 0;
                        i5 = 0;
                        i6 = 1;
                        break;
                    case 1:
                        i4 = 0;
                        i6 = 1;
                        i5 = i6;
                        break;
                    case 2:
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                        break;
                    case 3:
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                        break;
                    case 4:
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                        break;
                    case 5:
                        i4 = 1;
                        i6 = i4;
                        i5 = i6;
                        break;
                    case 6:
                        i5 = 0;
                        i4 = 1;
                        i6 = 1;
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
                int i12 = bArr[i2 + 5] & 255;
                if (i12 == 0) {
                    qt.y0(27, -2);
                } else if (i12 == 30) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i12);
                }
                break;
            case 34:
                u0.d.R2(l0.c0.b1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.b1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.b1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.b1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i13 = i2 + 2;
                int i14 = bArr[i13] & 255;
                int i15 = i2 + 3;
                int i16 = bArr[i15] & 255;
                int i17 = i2 + 4;
                int i18 = bArr[i17] & 255;
                int i19 = i2 + 5;
                int i20 = bArr[i19] & 255;
                if (i14 == 0 && i16 == 0 && i18 == 0 && i20 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i14 || l0.c0.f13014h != i16 || l0.c0.f13015i != i18 || l0.c0.f13016j != i20) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i14;
                l0.c0.f13014h = i16;
                l0.c0.f13015i = i18;
                l0.c0.f13016j = i20;
                u0.d.D2(l0.c0.b1(bArr[i13] & 255));
                u0.d.E2(l0.c0.b1(bArr[i15] & 255));
                u0.d.F2(l0.c0.b1(bArr[i17] & 255));
                u0.d.G2(l0.c0.b1(bArr[i19] & 255));
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
        if (i2 < 0 || i2 >= 104) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 134, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
        } else if (i2 == 1) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
        }
    }
}

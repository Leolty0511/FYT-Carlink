package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class j5 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6689c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6690d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 13}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 18}, new int[]{12, 26}, new int[]{13, 26}, new int[]{16, 32}, new int[]{17, 33}, new int[]{18, 29}, new int[]{19, 34}, new int[]{20, 35}, new int[]{21, 6}, new int[]{22, 29}, new int[]{23, 9}, new int[]{129, 5}, new int[]{130, 1}, new int[]{131, 38}};

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
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f6689c = b3 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f6690d;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f6689c;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f6688b = i4;
                        break;
                    }
                    i4++;
                }
                int i6 = this.f6689c;
                if (i6 == 132) {
                    for (int i7 = 0; i7 < (b4 & 255); i7++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                }
                if (i6 == 133) {
                    for (int i8 = 0; i8 < (b4 & 255); i8++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    return;
                }
                int i9 = b4 & 255;
                if (i9 == 1) {
                    if (i4 < iArr.length) {
                        l0.b0.l0(iArr[i4][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i9 == 0) {
                        int i10 = this.f6688b;
                        if (i10 < iArr.length && i10 != 255) {
                            l0.b0.l0(iArr[i10][1], 1);
                        }
                        this.f6688b = 255;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 50) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            byte b7 = bArr[i2 + 4];
            qt.y0(98, (b5 >> 5) & 7);
            qt.y0(99, (b5 >> 4) & 1);
            qt.y0(100, (b5 >> 2) & 3);
            qt.y0(101, b5 & 3);
            qt.y0(102, (b6 >> 7) & 1);
            qt.y0(103, (b6 >> 5) & 3);
            qt.y0(104, (b6 >> 3) & 3);
            qt.y0(105, b6 & 7);
            qt.y0(106, (b7 >> 7) & 1);
            qt.y0(107, (b7 >> 4) & 7);
            qt.y0(108, (b7 >> 3) & 1);
            return;
        }
        switch (b2) {
            case 34:
                if (nt.a()) {
                    u0.d.R2(a3(bArr[i2 + 2] & 255));
                    u0.d.S2(a3(bArr[i2 + 3] & 255));
                    u0.d.T2(a3(bArr[i2 + 4] & 255));
                    u0.d.U2(a3(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    int i11 = i2 + 2;
                    int i12 = bArr[i11] & 255;
                    int i13 = i2 + 3;
                    int i14 = bArr[i13] & 255;
                    int i15 = i2 + 4;
                    int i16 = bArr[i15] & 255;
                    int i17 = i2 + 5;
                    int i18 = bArr[i17] & 255;
                    if (i12 == 0 && i14 == 0 && i16 == 0 && i18 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i12 || l0.c0.f13014h != i14 || l0.c0.f13015i != i16 || l0.c0.f13016j != i18) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i12;
                    l0.c0.f13014h = i14;
                    l0.c0.f13015i = i16;
                    l0.c0.f13016j = i18;
                    u0.d.D2(a3(bArr[i11] & 255));
                    u0.d.E2(a3(bArr[i13] & 255));
                    u0.d.F2(a3(bArr[i15] & 255));
                    u0.d.G2(a3(bArr[i17] & 255));
                }
                break;
            case 36:
                byte b8 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b8 >> 7) & 1);
                    qt.y0(2, (b8 >> 6) & 1);
                } else {
                    qt.y0(1, (b8 >> 6) & 1);
                    qt.y0(2, (b8 >> 7) & 1);
                }
                qt.y0(4, (b8 >> 5) & 1);
                qt.y0(3, (b8 >> 4) & 1);
                qt.y0(5, (b8 >> 3) & 1);
                qt.y0(0, (b8 >> 2) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 110) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && iArr != null && iArr.length > 1) {
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
        }
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                return 4;
            }
            if (i2 == 3) {
                return 8;
            }
            if (i2 == 4) {
                return 15;
            }
        }
        return 0;
    }
}

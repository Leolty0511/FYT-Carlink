package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class v7 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11240c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11241d = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{1, 25}, new int[]{2, 3}, new int[]{3, 4}, new int[]{5, 38}, new int[]{6, 6}, new int[]{7, 21}, new int[]{8, 22}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 11}, new int[]{17, 11}, new int[]{18, 1}, new int[]{19, 56}, new int[]{20, 2}, new int[]{21, 39}, new int[]{22, 5}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 33}, new int[]{26, 32}, new int[]{27, 16}, new int[]{28, 33}, new int[]{29, 32}, new int[]{52, 33}, new int[]{53, 32}, new int[]{64, 53}, new int[]{80, 5}, new int[]{81, 2}, new int[]{82, 36}, new int[]{83, 5}, new int[]{84, 2}, new int[]{85, 1}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f11242e = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 27}, new int[]{132, 28}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{1, 41}, new int[]{2, 12}, new int[]{3, 6}, new int[]{5, 24}, new int[]{6, 4}, new int[]{7, 0}, new int[]{9, 1}, new int[]{10, 42}, new int[]{11, 43}, new int[]{12, 44}, new int[]{13, 45}, new int[]{16, 39}, new int[]{17, 11}, new int[]{20, 38}, new int[]{21, 40}, new int[]{22, 3}, new int[]{27, 36}, new int[]{54, 22}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f11243f = {new int[]{129, 33}, new int[]{130, 32}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 13}, new int[]{134, 18}, new int[]{135, 26}, new int[]{1, 4}, new int[]{2, 44}, new int[]{3, 43}, new int[]{4, 42}, new int[]{5, 0}, new int[]{6, 1}, new int[]{7, 39}, new int[]{7, 40}, new int[]{9, 41}, new int[]{10, 3}, new int[]{12, 6}, new int[]{13, 38}, new int[]{14, 11}, new int[]{15, 11}, new int[]{18, 13}, new int[]{19, 36}, new int[]{20, 24}, new int[]{21, 12}, new int[]{22, 45}, new int[]{23, 33}, new int[]{24, 32}, new int[]{25, 27}, new int[]{52, 27}, new int[]{26, 28}, new int[]{53, 28}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f11244g = false;

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f11240c = (b3 | 128) & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f11241d;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f11240c;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f11239b = i4;
                        break;
                    }
                    i4++;
                }
                if ((b4 & 255) == 0) {
                    if (i4 <= iArr.length) {
                        l0.b0.l0(iArr[this.f11239b][1], 1);
                    }
                    return;
                } else {
                    if (i4 < iArr.length) {
                        l0.b0.l0(iArr[i4][1], 0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 2) {
            int i6 = i2 + 2;
            int i7 = bArr[i6] & 255;
            int i8 = i2 + 3;
            if ((bArr[i8] & 255) == 1 && i7 == 4) {
                o1.u.v();
            }
            if (nt.a()) {
                byte b5 = bArr[i6];
                byte b6 = bArr[i8];
                this.f11240c = b5 & 255;
                int i9 = 0;
                while (true) {
                    iArr2 = this.f11241d;
                    if (i9 >= iArr2.length) {
                        break;
                    }
                    int i10 = this.f11240c;
                    if (i10 == iArr2[i9][0]) {
                        if (i10 == 0) {
                            break;
                        }
                        this.f11239b = i9;
                        break;
                    }
                    i9++;
                }
                if ((b6 & 255) != 0) {
                    if (i9 < iArr2.length) {
                        l0.b0.l0(iArr2[i9][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i9 <= iArr2.length) {
                        l0.b0.l0(iArr2[this.f11239b][1], 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 3) {
            if (nt.a()) {
                byte b7 = bArr[i2 + 7];
                u0.d.A3((b7 & 128) > 0 ? 1000 - ((((~(b7 & 255)) + 1) & 255) * 10) : ((b7 & 255) * 10) + 1000);
                return;
            }
            return;
        }
        if (b2 == 38) {
            if (this.f11244g) {
                return;
            }
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 7700);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 125) {
            int i11 = bArr[i2 + 2] & 255;
            if (i11 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i12 = i2 + 3;
                    l0.c0.b((bArr[i12] >> 3) & 1, (bArr[i12] >> 4) & 1, 0);
                    return;
                } else {
                    int i13 = i2 + 3;
                    l0.c0.a((bArr[i13] >> 3) & 1, (bArr[i13] >> 4) & 1, 0);
                    return;
                }
            }
            if (i11 == 3) {
                int i14 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i14);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i14}, null, null);
                return;
            } else {
                if (i11 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f11244g = true;
                return;
            }
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
                    u0.d.D2(a3(bArr[i2 + 2] & 255));
                    u0.d.E2(a3(bArr[i2 + 3] & 255));
                    u0.d.F2(a3(bArr[i2 + 4] & 255));
                    u0.d.G2(a3(bArr[i2 + 5] & 255));
                }
                break;
            case 36:
                byte b8 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b8 >> 6) & 1);
                    qt.y0(1, (b8 >> 7) & 1);
                } else {
                    qt.y0(2, (b8 >> 7) & 1);
                    qt.y0(1, (b8 >> 6) & 1);
                }
                qt.y0(4, (b8 >> 5) & 1);
                qt.y0(3, (b8 >> 4) & 1);
                qt.y0(5, (b8 >> 3) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 6) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 10;
        }
        return ((i2 * 10) / 7) - 1;
    }
}

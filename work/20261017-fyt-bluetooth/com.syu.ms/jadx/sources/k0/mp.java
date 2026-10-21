package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class mp extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8274c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8275d = {new int[]{1, 2}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 29}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 0}, new int[]{8, 13}, new int[]{9, 7}, new int[]{10, 8}, new int[]{11, 21}, new int[]{12, 22}, new int[]{13, 1}, new int[]{14, -1}, new int[]{15, 5}, new int[]{16, 55}, new int[]{17, 6}, new int[]{18, 40}, new int[]{19, 41}, new int[]{20, 42}, new int[]{21, 43}, new int[]{22, 49}, new int[]{23, 47}, new int[]{24, 64}, new int[]{25, 38}, new int[]{26, 43}, new int[]{27, 45}};

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
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 2) {
            if (b2 != 3) {
                if (b2 == 5) {
                    qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, 5100);
                    return;
                }
                if (b2 != 8) {
                    if (b2 != 127) {
                        return;
                    }
                    qt.L(new String(bArr, i2 + 2, i3 - 2));
                    return;
                }
                byte b3 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b3 >> 6) & 1);
                    qt.y0(2, (b3 >> 7) & 1);
                } else {
                    qt.y0(1, (b3 >> 7) & 1);
                    qt.y0(2, (b3 >> 6) & 1);
                }
                qt.y0(3, (b3 >> 5) & 1);
                qt.y0(4, (b3 >> 4) & 1);
                qt.y0(5, (b3 >> 3) & 1);
                return;
            }
            qt.y0(55, bArr[i2 + 2] & 255);
            int i4 = i2 + 3;
            qt.y0(18, (bArr[i4] >> 7) & 1);
            qt.y0(19, (bArr[i4] >> 6) & 1);
            qt.y0(20, (bArr[i4] >> 5) & 1);
            qt.y0(12, (bArr[i4] >> 4) & 1);
            qt.y0(21, (bArr[i4] >> 0) & 15);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                qt.y0(27, bArr[i2 + 5] & 255);
                qt.y0(28, bArr[i2 + 4] & 255);
            } else {
                qt.y0(27, bArr[i2 + 4] & 255);
                qt.y0(28, bArr[i2 + 5] & 255);
            }
            int i5 = i2 + 6;
            qt.y0(65, (bArr[i5] >> 7) & 1);
            qt.y0(16, (bArr[i5] >> 6) & 1);
            int i6 = i2 + 7;
            qt.y0(67, (bArr[i6] >> 7) & 1);
            qt.y0(43, (bArr[i6] >> 6) & 1);
            qt.y0(44, (bArr[i6] >> 0) & 15);
            return;
        }
        byte b4 = bArr[i2 + 2];
        byte b5 = bArr[i2 + 3];
        this.f8274c = b4 & 255;
        int i7 = 0;
        while (true) {
            iArr = this.f8275d;
            if (i7 >= iArr.length) {
                break;
            }
            int i8 = this.f8274c;
            if (i8 == iArr[i7][0]) {
                if (i8 == 0) {
                    break;
                }
                this.f8273b = i7;
                break;
            }
            i7++;
        }
        int i9 = this.f8274c;
        if (i9 == 2) {
            if ((b5 & 255) == 1) {
                if (o1.u.W()) {
                    l0.b0.l0(46, 0);
                    l0.b0.l0(46, 1);
                    return;
                } else {
                    l0.b0.l0(3, 0);
                    l0.b0.l0(3, 1);
                }
            }
            return;
        }
        if (i9 == 3) {
            if ((b5 & 255) == 1) {
                if (o1.u.W()) {
                    l0.b0.l0(48, 0);
                    l0.b0.l0(48, 1);
                    return;
                } else {
                    l0.b0.l0(4, 0);
                    l0.b0.l0(4, 1);
                    return;
                }
            }
            return;
        }
        switch (i9) {
            case 18:
                if ((b5 & 255) == 1) {
                    if (o1.u.W() || u0.b.D == 11) {
                        l0.b0.l0(40, 0);
                        l0.b0.l0(40, 1);
                    } else {
                        l0.b0.l0(65, 0);
                        l0.b0.l0(65, 1);
                    }
                }
                break;
            case 19:
                if ((b5 & 255) == 1) {
                    if (o1.u.W() || u0.b.D == 11) {
                        l0.b0.l0(41, 0);
                        l0.b0.l0(41, 1);
                    } else {
                        l0.b0.l0(25, 0);
                        l0.b0.l0(25, 1);
                    }
                }
                break;
            case 20:
                if ((b5 & 255) == 1) {
                    if (o1.u.W() || u0.b.D == 11) {
                        l0.b0.l0(42, 0);
                        l0.b0.l0(42, 1);
                    } else {
                        l0.b0.l0(66, 0);
                        l0.b0.l0(66, 1);
                    }
                }
                break;
            case 21:
                if ((b5 & 255) == 1) {
                    if (o1.u.W() || u0.b.D == 11) {
                        l0.b0.l0(44, 0);
                        l0.b0.l0(44, 1);
                    } else {
                        l0.b0.l0(34, 0);
                        l0.b0.l0(34, 1);
                    }
                }
                break;
            case 22:
                if ((b5 & 255) == 1) {
                    if (o1.u.W() || u0.b.D == 11) {
                        l0.b0.l0(49, 0);
                        l0.b0.l0(49, 1);
                    } else {
                        l0.b0.l0(35, 0);
                        l0.b0.l0(35, 1);
                    }
                }
                break;
            case 23:
                if ((b5 & 255) == 1) {
                    if (!o1.u.W()) {
                        l0.b0.l0(38, 0);
                        l0.b0.l0(38, 1);
                    } else {
                        l0.b0.l0(47, 0);
                        l0.b0.l0(47, 1);
                    }
                }
                break;
            case 24:
                if ((b5 & 255) == 1) {
                    if (!o1.u.W()) {
                        l0.b0.l0(64, 0);
                        l0.b0.l0(64, 1);
                    } else {
                        l0.b0.l0(50, 0);
                        l0.b0.l0(50, 1);
                    }
                }
                break;
            case 25:
                if ((b5 & 255) == 1) {
                    if (!o1.u.W()) {
                        l0.b0.l0(38, 0);
                        l0.b0.l0(38, 1);
                    } else {
                        l0.b0.l0(51, 0);
                        l0.b0.l0(51, 1);
                    }
                }
                break;
            default:
                int i10 = b5 & 255;
                if (i10 != 1) {
                    if (i10 == 0) {
                        int i11 = this.f8273b;
                        if (i11 < iArr.length && i11 != 255) {
                            l0.b0.l0(iArr[i11][1], 1);
                        }
                        this.f8273b = 255;
                    }
                } else if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
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
    }
}

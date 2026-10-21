package k0;

/* JADX INFO: loaded from: classes2.dex */
public class k5 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7172c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7173d = {new int[]{1, 25}, new int[]{2, 34}, new int[]{3, 35}, new int[]{7, 21}, new int[]{8, 22}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{17, 11}, new int[]{22, 29}, new int[]{23, 7}, new int[]{24, 8}, new int[]{28, 3}, new int[]{29, 4}, new int[]{30, 65}, new int[]{31, 66}, new int[]{32, 38}, new int[]{33, 55}, new int[]{34, 64}, new int[]{35, 39}, new int[]{25, 27}, new int[]{26, 28}, new int[]{36, 13}, new int[]{37, 54}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f7172c = b3 & 255;
                int i7 = 0;
                while (true) {
                    iArr = this.f7173d;
                    if (i7 >= iArr.length) {
                        break;
                    }
                    int i8 = this.f7172c;
                    if (i8 == iArr[i7][0]) {
                        if (i8 == 0) {
                            break;
                        }
                        this.f7171b = i7;
                        break;
                    }
                    i7++;
                }
                int i9 = b4 & 255;
                if (i9 == 1) {
                    if (i7 < iArr.length) {
                        l0.b0.l0(iArr[i7][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i9 == 0) {
                        int i10 = this.f7171b;
                        if (i10 < iArr.length && i10 != 255) {
                            l0.b0.l0(iArr[i10][1], 1);
                        }
                        this.f7171b = 255;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 != 3) {
            return;
        }
        byte b5 = bArr[i2 + 2];
        byte b6 = bArr[i2 + 3];
        byte b7 = bArr[i2 + 4];
        qt.y0(15, (b5 >> 7) & 1);
        qt.y0(11, (b5 >> 6) & 1);
        qt.y0(12, (b5 >> 5) & 1);
        qt.y0(16, (b5 >> 4) & 1);
        qt.y0(21, (b5 >> 0) & 15);
        int i11 = b6 & 255;
        if (i11 == 2) {
            i4 = 0;
            i5 = 0;
            i6 = 1;
        } else if (i11 != 3) {
            if (i11 == 4) {
                i6 = 0;
                i4 = 1;
            } else if (i11 == 5) {
                i6 = 0;
                i5 = 0;
                i4 = 1;
            } else if (i11 != 8) {
                i6 = 0;
                i4 = 0;
            } else {
                i4 = 0;
                i6 = 1;
                i5 = 1;
            }
            i5 = i4;
        } else {
            i6 = 0;
            i4 = 0;
            i5 = 1;
        }
        qt.y0(18, i6);
        qt.y0(19, i4);
        qt.y0(20, i5);
        int i12 = b7 & 255;
        if (i12 < 1 || i12 > 29) {
            return;
        }
        qt.y0(27, i12);
    }

    @Override // k0.lt
    public void W2() {
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

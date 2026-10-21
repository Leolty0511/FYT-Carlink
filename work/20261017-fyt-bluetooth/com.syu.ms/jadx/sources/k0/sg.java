package k0;

/* JADX INFO: loaded from: classes2.dex */
public class sg extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10277b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10278c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10279d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{7, 12}, new int[]{8, 27}, new int[]{9, 28}, new int[]{14, 0}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f10278c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f10279d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f10278c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f10277b = i4;
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
                    int i7 = this.f10277b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f10277b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 5) {
            qt.y0(99, bArr[i2 + 2] & 255);
            qt.y0(100, bArr[i2 + 3] & 255);
            qt.y0(101, bArr[i2 + 4] & 255);
            qt.y0(102, bArr[i2 + 5] & 255);
            qt.y0(103, bArr[i2 + 6] & 255);
            qt.y0(104, bArr[i2 + 7] & 255);
            return;
        }
        if (b2 != 33) {
            if (b2 != 113) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        int i8 = bArr[i2 + 2] & 255;
        int i9 = bArr[i2 + 3] & 255;
        int i10 = bArr[i2 + 4] & 255;
        int i11 = bArr[i2 + 5] & 255;
        int i12 = bArr[i2 + 6] & 255;
        qt.y0(10, (i8 >> 7) & 1);
        qt.y0(14, (i8 >> 5) & 1);
        qt.y0(13, (i8 >> 4) & 1);
        qt.y0(12, (i8 >> 3) & 1);
        qt.y0(65, (i8 >> 0) & 1);
        qt.y0(21, i9 & 31);
        qt.y0(18, (i10 >> 6) & 1);
        qt.y0(19, (i10 >> 4) & 1);
        qt.y0(20, (i10 >> 5) & 1);
        qt.y0(49, (i10 >> 7) & 1);
        int i13 = i11 & 255;
        if (i11 == 0) {
            qt.y0(27, -2);
        } else if (i11 == 63) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i13);
        }
        int i14 = i12 & 255;
        if (i12 == 0) {
            qt.y0(28, -2);
        } else if (i12 == 63) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i14);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 105) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 133, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
    }
}

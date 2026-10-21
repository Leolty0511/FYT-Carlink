package k0;

/* JADX INFO: loaded from: classes2.dex */
public class ep extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4919c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4920d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 0}, new int[]{6, 1}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 12}, new int[]{12, 7}, new int[]{13, 8}, new int[]{14, 31}, new int[]{15, 30}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 32) {
            if (b2 != 40) {
                if (b2 != 48) {
                    return;
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            int i4 = bArr[i2 + 2] & 255;
            int i5 = bArr[i2 + 3] & 255;
            qt.y0(10, (i4 >> 7) & 1);
            qt.y0(12, (i4 >> 5) & 1);
            qt.y0(65, (i4 >> 1) & 1);
            qt.y0(18, (i5 >> 7) & 1);
            qt.y0(19, (i5 >> 6) & 1);
            qt.y0(20, (i5 >> 5) & 1);
            qt.y0(49, (i5 >> 4) & 1);
            qt.y0(13, (i5 >> 3) & 1);
            qt.y0(21, i5 & 7);
            int i6 = bArr[i2 + 4] & 255;
            if (i6 == 0) {
                qt.y0(27, -2);
                return;
            } else if (i6 == 255) {
                qt.y0(27, -3);
                return;
            } else {
                qt.y0(27, i6);
                return;
            }
        }
        byte b3 = bArr[i2 + 2];
        byte b4 = bArr[i2 + 3];
        this.f4919c = b3 & 255;
        int i7 = 0;
        while (true) {
            iArr = this.f4920d;
            if (i7 >= iArr.length) {
                break;
            }
            int i8 = this.f4919c;
            if (i8 == iArr[i7][0]) {
                if (i8 == 0) {
                    break;
                }
                this.f4918b = i7;
                break;
            }
            i7++;
        }
        switch (this.f4919c) {
            case 12:
                for (int i9 = 0; i9 < (b4 & 255); i9++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                break;
            case 13:
                for (int i10 = 0; i10 < (b4 & 255); i10++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                break;
            case 14:
                for (int i11 = 0; i11 < (b4 & 255); i11++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                break;
            case 15:
                for (int i12 = 0; i12 < (b4 & 255); i12++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                break;
            default:
                int i13 = b4 & 255;
                if (i13 == 1) {
                    if (i7 < iArr.length) {
                        l0.b0.l0(iArr[i7][1], 0);
                    }
                } else if (i13 == 0) {
                    int i14 = this.f4918b;
                    if (i14 < iArr.length && i14 != 255) {
                        l0.b0.l0(iArr[i14][1], 1);
                    }
                    this.f4918b = 255;
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
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 224, 1, iArr[0]);
    }
}

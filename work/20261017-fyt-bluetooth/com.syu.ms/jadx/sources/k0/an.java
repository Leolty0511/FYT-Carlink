package k0;

/* JADX INFO: loaded from: classes2.dex */
public class an extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3404c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3405d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}};

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
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 32) {
            if (b2 == 125 && (bArr[i2 + 2] & 255) == 1) {
                int i4 = i2 + 3;
                l0.c0.a((bArr[i4] >> 3) & 1, (bArr[i4] >> 4) & 1, 0);
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i4] & 255}, null, null);
                return;
            }
            return;
        }
        byte b3 = bArr[i2 + 2];
        byte b4 = bArr[i2 + 3];
        this.f3404c = b3 & 255;
        int i5 = 0;
        while (true) {
            iArr = this.f3405d;
            if (i5 >= iArr.length) {
                break;
            }
            int i6 = this.f3404c;
            if (i6 == iArr[i5][0]) {
                if (i6 == 0) {
                    break;
                }
                this.f3403b = i5;
                break;
            }
            i5++;
        }
        if (this.f3404c != 9) {
            int i7 = b4 & 255;
            if (i7 == 1) {
                if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                    return;
                }
                return;
            } else {
                if (i7 == 0) {
                    int i8 = this.f3403b;
                    if (i8 < iArr.length && i8 != 255) {
                        l0.b0.l0(iArr[i8][1], 1);
                    }
                    this.f3403b = 255;
                    return;
                }
                return;
            }
        }
        if ((b4 & 255) == 1) {
            int i9 = h0.c.E;
            if (i9 != 3) {
                if (i9 == 4) {
                    l0.b0.l0(18, 0);
                    l0.b0.l0(18, 1);
                    return;
                } else if (i9 != 5) {
                    l0.b0.l0(18, 0);
                    l0.b0.l0(18, 1);
                    return;
                }
            }
            l0.b0.l0(26, 0);
            l0.b0.l0(26, 1);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}

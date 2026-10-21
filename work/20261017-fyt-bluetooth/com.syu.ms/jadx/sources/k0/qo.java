package k0;

/* JADX INFO: loaded from: classes2.dex */
public class qo extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9674b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9675c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9676d = {new int[]{17, 8}, new int[]{34, 2}, new int[]{51, 18}, new int[]{33, 7}, new int[]{49, 12}, new int[]{65, 16}, new int[]{136, 3}, new int[]{153, 4}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        if (bArr[i2] != 104) {
            return;
        }
        byte b2 = bArr[i2 + 2];
        byte b3 = bArr[i2 + 3];
        this.f9675c = b2 & 255;
        int i4 = 0;
        while (true) {
            iArr = this.f9676d;
            if (i4 >= iArr.length) {
                break;
            }
            int i5 = this.f9675c;
            if (i5 == iArr[i4][0]) {
                if (i5 == 0) {
                    break;
                }
                this.f9674b = i4;
                break;
            }
            i4++;
        }
        int i6 = this.f9675c;
        if (i6 == 49) {
            if ((b3 & 255) == 1) {
                int i7 = h0.c.E;
                if (i7 != 3) {
                    if (i7 == 4) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    } else if (i7 != 5) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                        return;
                    }
                }
                l0.b0.l0(26, 0);
                l0.b0.l0(26, 1);
                return;
            }
            return;
        }
        if (i6 == 51) {
            if ((b3 & 255) == 1) {
                if (nt.f8637c == 51) {
                    l0.b0.l0(24, 0);
                    l0.b0.l0(24, 1);
                    return;
                }
                int i8 = h0.c.E;
                if (i8 == 3 || i8 == 5) {
                    l0.b0.l0(26, 0);
                    l0.b0.l0(26, 1);
                    return;
                } else {
                    l0.b0.l0(18, 0);
                    l0.b0.l0(18, 1);
                    return;
                }
            }
            return;
        }
        if (i6 == 65) {
            if ((b3 & 255) == 1) {
                if (u0.b.D != 1) {
                    l0.b0.l0(16, 0);
                    l0.b0.l0(16, 1);
                    return;
                } else {
                    l0.b0.l0(39, 0);
                    l0.b0.l0(39, 1);
                    return;
                }
            }
            return;
        }
        int i9 = b3 & 255;
        if (i9 == 1) {
            if (i4 < iArr.length) {
                l0.b0.l0(iArr[i4][1], 0);
            }
        } else if (i9 == 0) {
            int i10 = this.f9674b;
            if (i10 < iArr.length && i10 != 255) {
                l0.b0.l0(iArr[i10][1], 1);
            }
            this.f9674b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}

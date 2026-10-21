package k0;

/* JADX INFO: loaded from: classes2.dex */
public class ur extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11170b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11171c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11172d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{16, 18}, new int[]{17, 26}};

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
        mtVar.f8314i = 0;
        mtVar.f8317l = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        if (bArr[i2] != 33) {
            return;
        }
        byte b2 = bArr[i2 + 2];
        byte b3 = bArr[i2 + 3];
        this.f11171c = b2 & 255;
        int i4 = 0;
        while (true) {
            iArr = this.f11172d;
            if (i4 >= iArr.length) {
                break;
            }
            int i5 = this.f11171c;
            if (i5 == iArr[i4][0]) {
                if (i5 == 0) {
                    break;
                }
                this.f11170b = i4;
                break;
            }
            i4++;
        }
        int i6 = b3 & 255;
        if (i6 == 1) {
            if (i4 < iArr.length) {
                l0.b0.l0(iArr[i4][1], 0);
            }
        } else if (i6 == 0) {
            int i7 = this.f11170b;
            if (i7 < iArr.length && i7 != 255) {
                l0.b0.l0(iArr[i7][1], 1);
            }
            this.f11170b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 1) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}

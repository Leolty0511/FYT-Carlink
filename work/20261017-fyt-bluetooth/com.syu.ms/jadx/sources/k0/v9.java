package k0;

/* JADX INFO: loaded from: classes2.dex */
public class v9 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11251c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11252d = {new int[]{1, 25}, new int[]{2, 34}, new int[]{3, 35}, new int[]{7, 21}, new int[]{8, 22}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{17, 11}, new int[]{22, 29}, new int[]{23, 7}, new int[]{24, 8}, new int[]{28, 3}, new int[]{29, 4}, new int[]{30, 65}, new int[]{31, 66}, new int[]{32, 38}, new int[]{33, 55}, new int[]{34, 64}, new int[]{35, 39}, new int[]{25, 27}, new int[]{26, 28}, new int[]{36, 13}, new int[]{37, 54}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        if (bArr[i2] == 2 && nt.a()) {
            byte b2 = bArr[i2 + 2];
            byte b3 = bArr[i2 + 3];
            this.f11251c = b2 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f11252d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f11251c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f11250b = i4;
                    break;
                }
                i4++;
            }
            if ((b3 & 255) != 0) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                }
            } else {
                int i6 = this.f11250b;
                if (i6 < iArr.length && i6 != 255) {
                    l0.b0.l0(iArr[i6][1], 1);
                }
                this.f11250b = 255;
            }
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

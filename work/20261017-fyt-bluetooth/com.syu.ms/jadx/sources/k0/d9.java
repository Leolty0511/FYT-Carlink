package k0;

/* JADX INFO: loaded from: classes2.dex */
public class d9 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4395b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4396c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4397d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 26}};

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
        if (bArr[i2] == 1 && nt.a()) {
            byte b2 = bArr[i2 + 2];
            byte b3 = bArr[i2 + 3];
            this.f4396c = b2 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f4397d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f4396c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f4395b = i4;
                    break;
                }
                i4++;
            }
            if ((b3 & 255) != 0) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                }
            } else if (i4 <= iArr.length) {
                l0.b0.l0(iArr[this.f4395b][1], 1);
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

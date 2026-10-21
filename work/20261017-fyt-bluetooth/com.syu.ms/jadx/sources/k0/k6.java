package k0;

/* JADX INFO: loaded from: classes2.dex */
public class k6 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7175c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7176d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 12}, new int[]{6, 2}, new int[]{7, 29}, new int[]{8, 32}, new int[]{9, 33}, new int[]{10, 34}, new int[]{11, 35}};

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
        byte b2 = bArr[i2];
        if (b2 != 2) {
            if (b2 == 3) {
                if (nt.a()) {
                    byte b3 = bArr[i2 + 7];
                    u0.d.A3((b3 > 40 ? 1000 - (b3 * 10) : (b3 * 10) + 1000) - 400);
                    return;
                }
                return;
            }
            if (b2 == 50 && nt.a()) {
                u0.d.R2(l0.c0.O0(bArr[i2 + 3] & 255));
                u0.d.S2(l0.c0.O0(bArr[i2 + 4] & 255));
                u0.d.T2(l0.c0.O0(bArr[i2 + 5] & 255));
                u0.d.U2(l0.c0.O0(bArr[i2 + 6] & 255));
                return;
            }
            return;
        }
        if (nt.a()) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            this.f7175c = b4 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f7176d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f7175c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f7174b = i4;
                    break;
                }
                i4++;
            }
            if ((b5 & 255) != 0) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                }
            } else {
                int i6 = this.f7174b;
                if (i6 < iArr.length && i6 != 255) {
                    l0.b0.l0(iArr[i6][1], 1);
                }
                this.f7174b = 255;
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

package k0;

/* JADX INFO: loaded from: classes2.dex */
public class x7 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12040c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12041d = {new int[]{2, 2}, new int[]{3, 34}, new int[]{4, 35}, new int[]{7, 29}, new int[]{8, 6}, new int[]{16, 2}, new int[]{17, 13}, new int[]{18, 67}, new int[]{19, 68}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{23, 3}, new int[]{24, 4}, new int[]{48, 18}, new int[]{49, 26}};

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
            if (b2 != 50) {
                if (b2 == 54 && nt.a()) {
                    byte b3 = bArr[i2 + 2];
                    boolean z2 = (b3 & 128) != 0;
                    int i4 = b3 & 127;
                    u0.d.A3((z2 ? 1000 - (i4 * 10) : (i4 * 10) + 1000) - 400);
                    return;
                }
                return;
            }
            if (nt.a()) {
                u0.d.R2(l0.c0.J0(bArr[i2 + 3] & 255));
                int i5 = i2 + 4;
                u0.d.S2(l0.c0.J0(bArr[i5] & 255));
                u0.d.T2(l0.c0.J0(bArr[i5] & 255));
                u0.d.U2(l0.c0.J0(bArr[i2 + 5] & 255));
                return;
            }
            return;
        }
        if (nt.a()) {
            int i6 = bArr[i2 + 2] & 255;
            this.f12040c = i6;
            int i7 = 0;
            while (true) {
                iArr = this.f12041d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f12040c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f12039b = i7;
                    break;
                }
                i7++;
            }
            if (i6 != 0) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                }
            } else if (i7 <= iArr.length) {
                l0.b0.l0(iArr[this.f12039b][1], 1);
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

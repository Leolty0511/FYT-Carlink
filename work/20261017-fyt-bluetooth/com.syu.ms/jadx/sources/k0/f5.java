package k0;

/* JADX INFO: loaded from: classes2.dex */
public class f5 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5066c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5067d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 13}};

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
        if (b2 != 32) {
            if (b2 == 36 && nt.a()) {
                byte b3 = bArr[i2 + 2];
                int i4 = b3 & 128;
                int i5 = b3 & 255;
                u0.d.A3(i4 != 0 ? 1000 - (((~i5) + 1) * 10) : (i5 * 10) + 1000);
                return;
            }
            return;
        }
        if (nt.a()) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            this.f5066c = b4 & 255;
            int i6 = 0;
            while (true) {
                iArr = this.f5067d;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f5066c;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f5065b = i6;
                    break;
                }
                i6++;
            }
            if ((b5 & 255) != 0) {
                if (i6 < iArr.length) {
                    l0.b0.l0(iArr[i6][1], 0);
                }
            } else {
                int i8 = this.f5065b;
                if (i8 < iArr.length && i8 != 255) {
                    l0.b0.l0(iArr[i8][1], 1);
                }
                this.f5065b = 255;
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

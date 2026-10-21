package k0;

/* JADX INFO: loaded from: classes2.dex */
public class i3 extends lt {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f6270f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f6271g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6272b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6273c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6274d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f6275e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{10, 2}, new int[]{11, -1}, new int[]{12, -1}, new int[]{13, 4}, new int[]{14, 3}};

    public static void a3(int i2) {
        f6270f = i2;
        boolean z2 = i2 == 1 || i2 == 2;
        if (f6271g != i2) {
            if (z2) {
                qt.y0(1015, 1);
            } else {
                qt.y0(1015, 0);
            }
        }
        f6271g = f6270f;
    }

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
        byte b2 = bArr[i2 + 1];
        if (b2 == -79) {
            if (nt.a()) {
                a3(bArr[i2 + 2] & 255);
                return;
            }
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 114 && nt.a()) {
            this.f6273c = bArr[i2 + 4] & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f6275e;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f6273c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f6272b = i4;
                    break;
                }
                i4++;
            }
            if (this.f6273c == 0) {
                int i6 = this.f6272b;
                if (i6 < iArr.length && i6 != 255) {
                    l0.b0.l0(iArr[i6][1], 1);
                }
                this.f6272b = 255;
            } else if (i4 < iArr.length) {
                l0.b0.l0(iArr[i4][1], 0);
            }
            qt.l(bArr[i2 + 7], bArr[i2 + 6], false, 7800);
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

package k0;

/* JADX INFO: loaded from: classes2.dex */
public class za extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12750c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12751d = {new int[]{1, 12}, new int[]{2, 2}, new int[]{3, 18}, new int[]{4, 4}, new int[]{5, 3}, new int[]{6, 21}, new int[]{7, 38}, new int[]{8, 0}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12752e = 0;

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
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 112) {
            if (b2 == 113 && nt.a()) {
                int i4 = bArr[i2 + 2] & 3;
                if (i4 == 1) {
                    u0.d.L1();
                } else if (i4 == 2) {
                    u0.d.x1();
                }
                this.f12752e = bArr[i2 + 3] & 255;
                return;
            }
            return;
        }
        if (nt.a()) {
            this.f12750c = bArr[i2 + 2] & 255;
            int i5 = 0;
            while (true) {
                iArr = this.f12751d;
                if (i5 >= iArr.length) {
                    break;
                }
                int i6 = this.f12750c;
                if (i6 == iArr[i5][0]) {
                    if (i6 == 0) {
                        break;
                    }
                    this.f12749b = i5;
                    break;
                }
                i5++;
            }
            if (this.f12750c != 0) {
                if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                }
            } else {
                int i7 = this.f12749b;
                if (i7 < iArr.length && i7 != 255) {
                    l0.b0.l0(iArr[i7][1], 1);
                }
                this.f12749b = 255;
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

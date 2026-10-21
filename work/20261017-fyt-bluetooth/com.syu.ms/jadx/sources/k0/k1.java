package k0;

/* JADX INFO: loaded from: classes2.dex */
public class k1 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7153b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7154c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7155d = {new int[]{0, -1}, new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 34}, new int[]{4, 35}, new int[]{5, 12}, new int[]{6, 2}, new int[]{7, 18}, new int[]{8, 26}};

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
            if (b2 == 48) {
                if (nt.a()) {
                    if ((bArr[i2 + 2] & 128) != 0) {
                        qt.a(1);
                        return;
                    } else {
                        qt.a(0);
                        return;
                    }
                }
                return;
            }
            if (b2 == 34) {
                if (nt.a()) {
                    u0.d.R2(a3(bArr[i2 + 2] & 255));
                    u0.d.S2(a3(bArr[i2 + 3] & 255));
                    u0.d.T2(a3(bArr[i2 + 4] & 255));
                    u0.d.U2(a3(bArr[i2 + 5] & 255));
                    return;
                }
                return;
            }
            if (b2 == 35 && nt.a()) {
                u0.d.D2(a3(bArr[i2 + 2] & 255));
                u0.d.E2(a3(bArr[i2 + 3] & 255));
                u0.d.F2(a3(bArr[i2 + 4] & 255));
                u0.d.G2(a3(bArr[i2 + 5] & 255));
                return;
            }
            return;
        }
        if (nt.a()) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f7154c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f7155d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f7154c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f7153b = i4;
                    break;
                }
                i4++;
            }
            if ((b4 & 255) != 0) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                }
            } else {
                int i6 = this.f7153b;
                if (i6 < iArr.length && i6 != 255) {
                    l0.b0.l0(iArr[i6][1], 1);
                }
                this.f7153b = 255;
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

    public final int a3(int i2) {
        if (i2 == 0 || i2 == 1) {
            return 15;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 0;
        }
        return 5;
    }
}

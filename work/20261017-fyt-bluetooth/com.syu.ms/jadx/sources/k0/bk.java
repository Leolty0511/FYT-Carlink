package k0;

/* JADX INFO: loaded from: classes2.dex */
public class bk extends lt {
    public static int a3(int i2) {
        switch (i2) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 3;
            case 3:
                return 5;
            case 4:
                return 6;
            case 5:
                return 8;
            case 6:
                return 9;
            default:
                return 15;
        }
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
        byte b2 = bArr[i2 + 1];
        if (b2 != -41) {
            if (b2 != 26) {
                return;
            }
            qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
            return;
        }
        u0.d.R2(a3(bArr[i2 + 3] & 255));
        u0.d.S2(a3(bArr[i2 + 4] & 255));
        u0.d.T2(a3(bArr[i2 + 5] & 255));
        u0.d.U2(a3(bArr[i2 + 6] & 255));
        u0.d.D2(a3(bArr[i2 + 7] & 255));
        u0.d.E2(a3(bArr[i2 + 8] & 255));
        u0.d.F2(a3(bArr[i2 + 9] & 255));
        u0.d.G2(a3(bArr[i2 + 10] & 255));
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

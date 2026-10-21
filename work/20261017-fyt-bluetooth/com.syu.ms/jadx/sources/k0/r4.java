package k0;

/* JADX INFO: loaded from: classes2.dex */
public class r4 extends lt {
    public static int a3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 10 : 7;
        }
        return 5;
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
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 114 && nt.a()) {
            qt.p(bArr[i2 + 6] & 255, bArr[i2 + 7] & 255, 134);
            u0.d.R2(a3(bArr[i2 + 8]));
            u0.d.S2(a3(bArr[i2 + 9]));
            u0.d.T2(a3(bArr[i2 + 10]));
            u0.d.U2(a3(bArr[i2 + 11]));
            u0.d.D2(a3(bArr[i2 + 12]));
            u0.d.E2(a3(bArr[i2 + 13]));
            u0.d.F2(a3(bArr[i2 + 14]));
            u0.d.G2(a3(bArr[i2 + 15]));
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

package k0;

/* JADX INFO: loaded from: classes2.dex */
public class e3 extends lt {
    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        if (bArr[i2] == 34 && nt.a()) {
            byte b2 = bArr[i2 + 2];
            byte b3 = bArr[i2 + 3];
            byte b4 = bArr[i2 + 4];
            byte b5 = bArr[i2 + 5];
            byte b6 = bArr[i2 + 6];
            if ((b2 & 1) == 0) {
                u0.d.D2(l0.c0.E0(b3 & 255));
                u0.d.E2(l0.c0.E0(b4 & 255));
                u0.d.F2(l0.c0.E0(b5 & 255));
                u0.d.G2(l0.c0.E0(b6 & 255));
                return;
            }
            u0.d.R2(l0.c0.E0(b3 & 255));
            u0.d.S2(l0.c0.E0(b4 & 255));
            u0.d.T2(l0.c0.E0(b5 & 255));
            u0.d.U2(l0.c0.E0(b6 & 255));
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

package k0;

/* JADX INFO: loaded from: classes2.dex */
public class no extends lt {
    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 != 3) {
            if (b2 != 9) {
                return;
            }
            int i4 = i2 + 2;
            if ((bArr[i4] == 1 && bArr[i2 + 3] == 1) || ((bArr[i4] == 2 && bArr[i2 + 3] == 1) || (bArr[i4] == 3 && bArr[i2 + 3] == 1))) {
                u0.i.l3().g4(131072, true);
                return;
            } else {
                u0.i.l3().g4(131072, false);
                return;
            }
        }
        int i5 = i2 + 3;
        l0.c0.N1((bArr[i5] >> 1) & 1, (bArr[i5] >> 0) & 1, (bArr[i5] >> 2) & 1);
        qt.y0(1031, bArr[i2 + 4] & 255);
        qt.m(bArr[i2 + 5], 0, 128, true, 128);
        int i6 = i2 + 6;
        u0.d.D2(l0.c0.s1((bArr[i6] >> 0) & 3));
        u0.d.E2(l0.c0.s1((bArr[i6] >> 2) & 3));
        u0.d.F2(l0.c0.s1((bArr[i6] >> 6) & 3));
        u0.d.G2(l0.c0.s1((bArr[i6] >> 4) & 3));
        int i7 = i2 + 7;
        u0.d.R2(l0.c0.s1((bArr[i7] >> 0) & 3));
        u0.d.S2(l0.c0.s1((bArr[i7] >> 2) & 3));
        u0.d.T2(l0.c0.s1((bArr[i7] >> 6) & 3));
        u0.d.U2(l0.c0.s1((bArr[i7] >> 4) & 3));
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

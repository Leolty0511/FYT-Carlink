package k0;

/* JADX INFO: loaded from: classes2.dex */
public class ys extends lt {
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
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        mtVar.f8323r = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4 = ((bArr[i2] << 8) & 65280) | (bArr[i2 + 1] & 255);
        if (i4 == 224) {
            qt.i(bArr[i2 + 4] & 255, bArr[i2 + 3] & 255, true, 7799);
            return;
        }
        if (i4 == 293) {
            qt.v(bArr[i2 + 3] & 255);
            return;
        }
        if (i4 == 912) {
            int i5 = i2 + 4;
            u0.d.D2(l0.c0.L0(bArr[i5] & 7));
            u0.d.E2(l0.c0.L0((bArr[i5] >> 5) & 7));
            int i6 = i2 + 5;
            u0.d.F2(l0.c0.L0(bArr[i6] & 7));
            u0.d.G2(l0.c0.L0((bArr[i6] >> 5) & 7));
            int i7 = i2 + 6;
            u0.d.R2(l0.c0.L0(bArr[i7] & 7));
            u0.d.S2(l0.c0.L0((bArr[i7] >> 5) & 7));
            int i8 = i2 + 7;
            u0.d.T2(l0.c0.L0(bArr[i8] & 7));
            u0.d.U2(l0.c0.L0((bArr[i8] >> 5) & 7));
            int i9 = i2 + 8;
            u0.d.I2(l0.c0.L0((bArr[i9] >> 0) & 7));
            u0.d.K2(l0.c0.L0((bArr[i9] >> 3) & 7));
            int i10 = i2 + 9;
            u0.d.O2(l0.c0.L0((bArr[i10] >> 0) & 7));
            u0.d.Q2(l0.c0.L0((bArr[i10] >> 3) & 7));
            return;
        }
        if (i4 != 2730) {
            return;
        }
        int i11 = i2 + 3;
        if (((bArr[i11] >> 0) & 3) == 1) {
            l0.b0.l0(3, 0);
            l0.b0.l0(3, 1);
            return;
        }
        if (((bArr[i11] >> 2) & 3) == 1) {
            l0.b0.l0(16, 0);
            l0.b0.l0(16, 1);
            return;
        }
        if (((bArr[i11] >> 4) & 3) == 1) {
            l0.b0.l0(4, 0);
            l0.b0.l0(4, 1);
            return;
        }
        if (((bArr[i11] >> 6) & 3) == 1) {
            l0.b0.l0(18, 0);
            l0.b0.l0(18, 1);
            return;
        }
        int i12 = i2 + 4;
        if (((bArr[i12] >> 0) & 3) == 1) {
            l0.b0.l0(26, 0);
            l0.b0.l0(26, 1);
            return;
        }
        if (((bArr[i12] >> 2) & 3) == 1) {
            l0.b0.l0(7, 0);
            l0.b0.l0(7, 1);
            return;
        }
        if (((bArr[i12] >> 4) & 3) == 1) {
            l0.b0.l0(8, 0);
            l0.b0.l0(8, 1);
            return;
        }
        if (((bArr[i12] >> 6) & 3) == 1) {
            l0.b0.l0(12, 0);
            l0.b0.l0(12, 1);
            return;
        }
        int i13 = i2 + 5;
        if (((bArr[i13] >> 0) & 3) == 1) {
            l0.b0.l0(13, 0);
            l0.b0.l0(13, 1);
            return;
        }
        if (((bArr[i13] >> 2) & 3) == 1) {
            l0.b0.l0(6, 0);
            l0.b0.l0(6, 1);
            return;
        }
        if (((bArr[i13] >> 4) & 3) == 1) {
            l0.b0.l0(5, 0);
            l0.b0.l0(5, 1);
            return;
        }
        if (((bArr[i13] >> 6) & 3) == 1) {
            l0.b0.l0(29, 0);
            l0.b0.l0(29, 1);
            return;
        }
        int i14 = i2 + 6;
        if (((bArr[i14] >> 0) & 3) == 1) {
            l0.b0.l0(2, 0);
            l0.b0.l0(2, 1);
        } else if (((bArr[i14] >> 2) & 3) == 1) {
            l0.b0.l0(65, 0);
            l0.b0.l0(65, 1);
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

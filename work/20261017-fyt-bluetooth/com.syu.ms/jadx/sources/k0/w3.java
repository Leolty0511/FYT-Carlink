package k0;

/* JADX INFO: loaded from: classes2.dex */
public class w3 extends lt {
    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        if (bArr[i2 + 1] != 115) {
            return;
        }
        byte b2 = bArr[i2 + 2];
        qt.y0(10, (b2 >> 6) & 1);
        qt.y0(12, (b2 >> 4) & 1);
        qt.y0(13, (b2 >> 3) & 1);
        qt.y0(14, (b2 >> 1) & 1);
        byte b3 = bArr[i2 + 3];
        qt.y0(16, (b3 >> 7) & 1);
        qt.y0(11, (b3 >> 6) & 1);
        qt.y0(27, bArr[i2 + 4]);
        byte b4 = bArr[i2 + 6];
        qt.y0(65, (b4 >> 7) & 1);
        qt.y0(20, (b4 >> 6) & 1);
        qt.y0(19, (b4 >> 5) & 1);
        qt.y0(18, (b4 >> 4) & 1);
        qt.y0(21, b4 & 7);
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}

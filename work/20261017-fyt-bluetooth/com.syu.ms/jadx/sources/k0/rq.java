package k0;

/* JADX INFO: loaded from: classes2.dex */
public class rq extends lt {
    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 != 66) {
            if (b2 != 127) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        } else {
            int i4 = i2 + 14;
            u0.d.R2(l0.c0.b1(bArr[i4] & 255));
            u0.d.S2(l0.c0.b1(bArr[i4] & 255));
            u0.d.T2(l0.c0.b1(bArr[i4] & 255));
            u0.d.U2(l0.c0.b1(bArr[i4] & 255));
            qt.i(bArr[i2 + 15], bArr[i2 + 16], true, 8600);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}

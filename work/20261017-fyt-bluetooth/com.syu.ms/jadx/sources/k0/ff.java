package k0;

/* JADX INFO: loaded from: classes2.dex */
public class ff extends lt {
    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1003) {
            if (iArr[0] == 0) {
                z.k.s(227, 2, 2, i.a.Theme_actionModeShareDrawable, 0);
            }
        } else if (i2 == 1029 && T2(iArr, 2)) {
            int iW = (iArr[1] * 4096) / a.f.w();
            int i3 = (iArr[2] * 4096) / a.f.i();
            z.k.s(227, 5, 5, iArr[0] == 0 ? 1 : 0, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255);
        }
    }
}

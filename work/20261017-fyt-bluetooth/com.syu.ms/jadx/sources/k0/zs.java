package k0;

import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class zs extends lt {
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
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        if ((((bArr[i2] << 8) & 65280) | (bArr[i2 + 1] & 255)) != 21845) {
            return;
        }
        a.f.p().t(LogType.CANBUS, "re---->:2222 ==   " + o1.b0.d(bArr, i2, i3));
        o1.x.C(nt.f8643f, 1049, new int[]{23, bArr[i2 + 2], bArr[i2 + 3], bArr[i2 + 4], bArr[i2 + 5], bArr[i2 + 6]}, null, null);
    }

    @Override // k0.lt
    public void W2() {
    }
}

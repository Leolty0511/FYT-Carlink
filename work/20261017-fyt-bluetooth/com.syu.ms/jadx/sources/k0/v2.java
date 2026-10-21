package k0;

import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes2.dex */
public class v2 extends lt {
    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 122) {
            return;
        }
        byte b3 = bArr[i2 + 2];
        qt.y0(1, (b3 >> 6) & 3);
        qt.y0(2, (b3 >> 5) & 1);
        qt.y0(3, (b3 >> 4) & 1);
        qt.y0(4, (b3 >> 3) & 1);
        qt.y0(5, (b3 >> 2) & 1);
        qt.y0(6, bArr[i2 + 4] & 255);
        qt.y0(7, bArr[i2 + 5] & 255);
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 8) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                if (T2(iArr, 1)) {
                    a3(1, iArr[0]);
                }
                break;
            case 1:
                if (T2(iArr, 1)) {
                    a3(2, iArr[0]);
                }
                break;
            case 2:
                if (T2(iArr, 1)) {
                    a3(3, iArr[0]);
                }
                break;
            case 3:
                if (T2(iArr, 1)) {
                    a3(4, iArr[0]);
                }
                break;
            case 4:
                if (T2(iArr, 1)) {
                    a3(5, iArr[0]);
                }
                break;
            case 5:
            case 6:
                if (T2(iArr, 2)) {
                    b3(6, iArr[0], iArr[1]);
                }
                break;
        }
    }

    public final void a3(int i2, int i3) {
        z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, (byte) i2, (byte) i3);
    }

    public final void b3(int i2, int i3, int i4) {
        z.k.s(227, 3, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, (byte) i2, (byte) i3, (byte) i4);
    }
}

package k0;

import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ag extends lt {
    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        } else {
            this.f7886a.f8306a = null;
        }
        mt mtVar = this.f7886a;
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        if ((bArr[i2] & 255) != 33) {
            return;
        }
        int i4 = bArr[i2 + 2] & 255;
        int i5 = bArr[i2 + 3] & 255;
        int i6 = i2 + 4;
        int i7 = bArr[i6] & 255;
        int i8 = i2 + 5;
        int i9 = bArr[i8] & 255;
        qt.y0(10, (i4 >> 7) & 1);
        qt.y0(11, (i4 >> 6) & 1);
        qt.y0(12, (i4 >> 5) & 1);
        qt.y0(16, (i4 >> 0) & 1);
        int i10 = (i5 >> 7) & 1;
        int i11 = (i5 >> 6) & 1;
        int i12 = (i5 >> 5) & 1;
        qt.y0(18, i10);
        qt.y0(19, i11);
        qt.y0(20, i12);
        if (i10 == 1 && i11 == 0 && i12 == 0) {
            qt.y0(65, 1);
        } else {
            qt.y0(65, 0);
        }
        qt.y0(21, i5 & 15);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i7 = bArr[i8] & 255;
            i9 = bArr[i6] & 255;
        }
        int i13 = i7 & 255;
        if (i13 == 1) {
            qt.y0(27, -2);
        } else if (i13 != 15) {
            qt.y0(27, i13);
        } else {
            qt.y0(27, -3);
        }
        int i14 = i9 & 255;
        if (i14 == 1) {
            qt.y0(28, -2);
        } else if (i14 != 15) {
            qt.y0(28, i14);
        } else {
            qt.y0(28, -3);
        }
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
        if (i2 == 0 && iArr != null && iArr.length >= 2) {
            z.k.s(227, 133, 2, iArr[0], iArr[1]);
        }
    }
}

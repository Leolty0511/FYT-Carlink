package k0;

import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class jj extends lt {
    public static int a3(int i2) {
        int i3 = i2 / 12;
        if (i3 > 10) {
            return 15;
        }
        return i3;
    }

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
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 114) {
            u0.d.R2(a3(bArr[i2 + 8] & 255));
            u0.d.S2(a3(bArr[i2 + 9] & 255));
            u0.d.T2(a3(bArr[i2 + 10] & 255));
            u0.d.U2(a3(bArr[i2 + 11] & 255));
            return;
        }
        if (b2 != 115) {
            return;
        }
        int i4 = i2 + 8;
        if ((bArr[i4] & 128) == 128) {
            u0.d.A3(((bArr[i4] & 127) * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        } else {
            u0.d.A3(0);
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

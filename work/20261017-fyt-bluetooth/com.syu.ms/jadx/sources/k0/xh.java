package k0;

import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class xh extends lt {
    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        } else {
            this.f7886a.f8314i = 1;
        }
        mt mtVar = this.f7886a;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7 = bArr[i2] & 255;
        if (i7 != 33) {
            if (i7 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            } else {
                if (i7 == 125 && (bArr[i2 + 2] & 255) == 1) {
                    int i8 = i2 + 3;
                    l0.c0.a((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
                    o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i8] & 255}, null, null);
                    return;
                }
                return;
            }
        }
        byte b2 = bArr[i2 + 2];
        byte b3 = bArr[i2 + 3];
        byte b4 = bArr[i2 + 4];
        int i9 = i2 + 5;
        byte b5 = bArr[i9];
        int i10 = i2 + 6;
        byte b6 = bArr[i10];
        qt.y0(10, (b2 >> 7) & 1);
        qt.y0(11, (b2 >> 3) & 1);
        qt.y0(12, (b2 >> 2) & 1);
        qt.y0(13, (b2 >> 6) & 1);
        qt.y0(16, (b2 >> 0) & 1);
        qt.y0(65, (b2 >> 1) & 1);
        qt.y0(21, b3 & 255);
        int i11 = b4 & 255;
        if (i11 != 0) {
            if (i11 == 1) {
                i4 = 0;
                i6 = 1;
            } else if (i11 == 2) {
                i4 = 0;
                i6 = 0;
                i5 = 1;
            } else if (i11 != 3) {
                i4 = 0;
                i6 = 0;
            } else {
                i6 = 0;
                i4 = 1;
                i5 = 1;
            }
            i5 = i6;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 1;
        }
        qt.y0(18, i4);
        qt.y0(19, i6);
        qt.y0(20, i5);
        qt.y0(77, i11);
        int i12 = b5;
        int i13 = b6;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i12 = bArr[i10] & 255;
            i13 = bArr[i9] & 255;
        }
        int i14 = i12 & 255;
        if (i14 == 0) {
            qt.y0(27, -2);
        } else if (i14 == 255) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i14);
        }
        int i15 = i13 & 255;
        if (i15 == 0) {
            qt.y0(28, -2);
        } else if (i15 == 255) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i15);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
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
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 132, 2, iArr[0], iArr[1]);
    }
}

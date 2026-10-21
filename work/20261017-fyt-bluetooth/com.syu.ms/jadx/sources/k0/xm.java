package k0;

import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class xm extends lt {
    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 1;
        mtVar.f8317l = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == 36) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            } else {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            }
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            return;
        }
        if (b2 == 64) {
            int i4 = i2 + 2;
            qt.y0(99, (bArr[i4] >> 7) & 1);
            qt.y0(100, (bArr[i4] >> 6) & 1);
            qt.y0(101, (bArr[i4] >> 5) & 1);
            qt.y0(102, (bArr[i4] >> 4) & 1);
            qt.y0(103, (bArr[i4] >> 0) & 15);
            int i5 = i2 + 3;
            qt.y0(104, (bArr[i5] >> 4) & 15);
            qt.y0(105, (bArr[i5] >> 0) & 15);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i6 = i2 + 3;
            l0.c0.a((bArr[i6] >> 3) & 1, (bArr[i6] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i6] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 40) {
            if (b2 != 41) {
                return;
            }
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 7799);
            return;
        }
        int i7 = i2 + 2;
        qt.y0(10, (bArr[i7] >> 7) & 1);
        qt.y0(11, (bArr[i7] >> 6) & 1);
        qt.y0(12, (bArr[i7] >> 5) & 1);
        qt.y0(53, (bArr[i7] >> 4) & 1);
        qt.y0(13, (bArr[i7] >> 3) & 1);
        qt.y0(14, (bArr[i7] >> 2) & 1);
        qt.y0(65, (bArr[i7] >> 1) & 1);
        qt.y0(16, (bArr[i7] >> 0) & 1);
        int i8 = i2 + 3;
        qt.y0(18, (bArr[i8] >> 7) & 1);
        qt.y0(19, (bArr[i8] >> 6) & 1);
        qt.y0(20, (bArr[i8] >> 5) & 1);
        qt.y0(21, (bArr[i8] >> 0) & 15);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            int i9 = i2 + 4;
            if ((bArr[i9] & 255) == 0) {
                qt.y0(28, -2);
            } else if ((bArr[i9] & 255) == 31) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, bArr[i9] & 255);
            }
            int i10 = i2 + 5;
            if ((bArr[i10] & 255) == 0) {
                qt.y0(27, -2);
            } else if ((bArr[i10] & 255) == 31) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, bArr[i10] & 255);
            }
        } else {
            int i11 = i2 + 4;
            if ((bArr[i11] & 255) == 0) {
                qt.y0(27, -2);
            } else if ((bArr[i11] & 255) == 31) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, bArr[i11] & 255);
            }
            int i12 = i2 + 5;
            if ((bArr[i12] & 255) == 0) {
                qt.y0(28, -2);
            } else if ((bArr[i12] & 255) == 31) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, bArr[i12] & 255);
            }
        }
        int i13 = i2 + 6;
        qt.y0(63, (bArr[i13] >> 6) & 1);
        qt.y0(98, (bArr[i13] >> 0) & 7);
        int i14 = bArr[i2 + 7] & 255;
        if (i14 == 0 || i14 == 255) {
            u0.d.A3(0);
        } else {
            u0.d.A3((i14 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 106) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 224, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 225, 2, iArr[0], iArr[1]);
        }
    }
}

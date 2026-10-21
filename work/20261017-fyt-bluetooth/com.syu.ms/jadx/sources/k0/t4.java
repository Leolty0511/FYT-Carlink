package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class t4 extends lt {
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
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2 + 0];
        if (b2 != 1) {
            if (b2 == 2) {
                qt.o(bArr[i2 + 2], false, 100);
                return;
            }
            if (b2 != 3) {
                if (b2 == 4 && nt.a()) {
                    if ((bArr[i2 + 3] & 1) != 0) {
                        qt.a(1);
                        return;
                    } else {
                        qt.a(0);
                        return;
                    }
                }
                return;
            }
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                byte b5 = bArr[i2 + 4];
                byte b6 = bArr[i2 + 5];
                byte b7 = bArr[i2 + 6];
                byte b8 = bArr[i2 + 7];
                byte b9 = bArr[i2 + 8];
                byte b10 = bArr[i2 + 9];
                u0.d.D2(l0.c0.J1(b3 & 255));
                u0.d.E2(l0.c0.J1(b4 & 255));
                u0.d.F2(l0.c0.J1(b5 & 255));
                u0.d.G2(l0.c0.J1(b6 & 255));
                u0.d.R2(l0.c0.J1(b7 & 255));
                u0.d.S2(l0.c0.J1(b8 & 255));
                u0.d.T2(l0.c0.J1(b9 & 255));
                u0.d.U2(l0.c0.J1(b10 & 255));
                return;
            }
            return;
        }
        int i7 = bArr[i2 + 2] & 255;
        qt.y0(21, i7 & 15);
        int i8 = i7 >> 4;
        if (i8 != 1) {
            if (i8 == 2) {
                i4 = 0;
                i5 = 1;
            } else if (i8 == 3) {
                i4 = 0;
                i6 = 0;
                i5 = 1;
            } else if (i8 == 4) {
                i6 = 0;
                i4 = 1;
                i5 = 1;
            } else if (i8 != 5) {
                i4 = 0;
                i5 = 0;
            } else {
                i5 = 0;
                i6 = 0;
                i4 = 1;
            }
            i6 = i5;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 1;
        }
        qt.y0(18, i4);
        qt.y0(20, i5);
        qt.y0(19, i6);
        int i9 = i2 + 3;
        int i10 = bArr[i9] & 255;
        int i11 = i2 + 4;
        int i12 = bArr[i11] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i10 = bArr[i11] & 255;
            i12 = bArr[i9] & 255;
        }
        int i13 = i10 & 1;
        int i14 = (i10 >> 1) & 127;
        if (i13 == 0) {
            qt.y0(29, 0);
        } else {
            qt.y0(29, 1);
        }
        qt.y0(27, i14);
        int i15 = (i12 >> 1) & 127;
        if ((i12 & 1) == 0) {
            qt.y0(28, 0);
        } else {
            qt.y0(28, 1);
        }
        qt.y0(28, i15);
        int i16 = bArr[i2 + 5] & 255;
        qt.y0(16, (i16 >> 7) & 1);
        qt.y0(13, (i16 >> 6) & 1);
        qt.y0(14, (i16 >> 5) & 1);
        qt.y0(65, (i16 >> 4) & 1);
        int[] iArr = new int[1];
        iArr[0] = ((i16 & 15) >> 2) == 2 ? 1 : 0;
        qt.y0(12, iArr);
        int[] iArr2 = new int[1];
        iArr2[0] = (i16 & 3) != 2 ? 0 : 1;
        qt.y0(11, iArr2);
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

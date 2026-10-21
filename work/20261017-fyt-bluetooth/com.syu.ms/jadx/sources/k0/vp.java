package k0;

import android.os.SystemProperties;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class vp extends lt {
    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        int i2 = nt.f8633a;
        if (i2 == 11665862 || i2 == 11731398) {
            mtVar.f8314i = 0;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
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
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 125) {
            int i7 = bArr[i2 + 2] & 255;
            if (i7 != 1) {
                if (i7 != 3) {
                    return;
                }
                int i8 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i8);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i8}, null, null);
                return;
            }
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i9 = i2 + 3;
                l0.c0.b((bArr[i9] >> 3) & 1, (bArr[i9] >> 4) & 1, 0);
            } else {
                int i10 = i2 + 3;
                l0.c0.a((bArr[i10] >> 3) & 1, (bArr[i10] >> 4) & 1, 0);
            }
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i2 + 3] & 255}, null, null);
            return;
        }
        switch (b2) {
            case 39:
                qt.y0(98, bArr[i2 + 2] & 255);
                qt.y0(99, bArr[i2 + 3] & 255);
                qt.y0(100, bArr[i2 + 4] & 255);
                qt.y0(101, bArr[i2 + 5] & 255);
                int i11 = i2 + 6;
                qt.y0(102, (bArr[i11] >> 7) & 1);
                qt.y0(103, (bArr[i11] >> 6) & 1);
                qt.y0(104, (bArr[i11] >> 4) & 3);
                qt.y0(105, 15 & (bArr[i11] >> 0));
                qt.y0(106, bArr[i11] & 255);
                break;
            case 40:
                int i12 = i2 + 2;
                qt.y0(10, (bArr[i12] >> 7) & 1);
                qt.y0(11, (bArr[i12] >> 6) & 1);
                qt.y0(12, (bArr[i12] >> 5) & 1);
                qt.y0(53, (bArr[i12] >> 4) & 1);
                qt.y0(15, (bArr[i12] >> 1) & 1);
                int i13 = i2 + 3;
                int i14 = (bArr[i13] >> 4) & 15;
                if (i14 != 1) {
                    if (i14 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i14 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i14 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i14 != 5) {
                        i4 = 0;
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
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
                qt.y0(21, (bArr[i13] >> 0) & 15);
                int i15 = i2 + 4;
                int i16 = bArr[i15] & 255;
                if (i16 == 0) {
                    qt.y0(27, -2);
                } else if (i16 != 15) {
                    qt.y0(27, bArr[i15] & 255);
                } else {
                    qt.y0(27, -3);
                }
                break;
            case 41:
                qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, View.PFLAG2_TEXT_DIRECTION_RESOLVED_MASK);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 107) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, -32, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 117, 2, iArr[0], iArr[1]);
        }
    }
}

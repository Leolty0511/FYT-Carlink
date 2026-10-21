package k0;

import android.os.SystemProperties;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class fo extends lt {
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
        mtVar.f8317l = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
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
        if (b2 == 41) {
            int i8 = i2 + 3;
            int i9 = i2 + 2;
            if ((((bArr[i8] << 8) & 65280) | (bArr[i9] & 255)) == 32768) {
                qt.i(0, 0, true, 5696);
                return;
            } else {
                qt.i(bArr[i9], bArr[i8], true, 5696);
                return;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 85) {
            if (b2 == 104) {
                qt.y0(110, (bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280));
                return;
            }
            if (b2 == 107) {
                qt.y0(107, ((bArr[i2 + 5] << 24) & (-16777216)) | ((bArr[i2 + 4] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
                qt.y0(108, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(109, (bArr[i2 + 8] & 255) | ((bArr[i2 + 9] << 8) & 65280));
                return;
            } else {
                if (b2 != 110) {
                    return;
                }
                qt.y0(98, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
                qt.y0(99, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
                qt.y0(100, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(101, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255));
                int i10 = i2 + 10;
                qt.y0(103, (bArr[i10] >> 4) & 15);
                qt.y0(102, (bArr[i10] >> 0) & 15);
                int i11 = i2 + 11;
                qt.y0(105, (bArr[i11] >> 4) & 15);
                qt.y0(104, (bArr[i11] >> 0) & 15);
                return;
            }
        }
        int i12 = i2 + 2;
        int i13 = bArr[i12] & 255;
        int i14 = i2 + 3;
        int i15 = bArr[i14] & 255;
        int i16 = bArr[i2 + 4] & 255;
        byte b4 = bArr[i2 + 5];
        int i17 = bArr[i2 + 6] & 255;
        byte b5 = bArr[i2 + 7];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i13 = bArr[i14] & 255;
            i15 = bArr[i12] & 255;
        }
        if (i13 == 16) {
            qt.y0(27, -2);
        } else if (i13 == 80) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i13);
        }
        if (i15 == 16) {
            qt.y0(28, -2);
        } else if (i15 == 80) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i15);
        }
        switch ((i16 >> 4) & 15) {
            case 0:
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 1;
                break;
            case 1:
                i7 = 0;
                i4 = 0;
                i6 = 0;
                i5 = 1;
                break;
            case 2:
                i7 = 0;
                i4 = 0;
                i5 = 1;
                i6 = i5;
                break;
            case 3:
                i7 = 0;
                i4 = 0;
                i5 = 0;
                i6 = 1;
                break;
            case 4:
                i7 = 0;
                i5 = 0;
                i4 = 1;
                i6 = 1;
                break;
            case 5:
                i7 = 0;
                i6 = 0;
                i4 = 1;
                i5 = 1;
                break;
            case 6:
                i7 = 0;
                i5 = 0;
                i6 = 0;
                i4 = 1;
                break;
            case 7:
                i7 = 0;
                i4 = 1;
                i5 = i4;
                i6 = i5;
                break;
            default:
                i7 = 0;
                i4 = 0;
                i5 = i4;
                i6 = i5;
                break;
        }
        qt.y0(49, i7);
        qt.y0(18, i4);
        qt.y0(19, i5);
        qt.y0(20, i6);
        qt.y0(21, (i16 >> 0) & 15);
        qt.y0(15, (i17 >> 7) & 1);
        qt.y0(65, (i17 >> 6) & 1);
        qt.y0(16, (i17 >> 5) & 1);
        qt.y0(53, (i17 >> 4) & 1);
        qt.y0(12, (i17 >> 3) & 1);
        qt.y0(14, (i17 >> 2) & 1);
        qt.y0(11, (i17 >> 1) & 1);
        qt.y0(13, (i17 >> 0) & 1);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 111) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}

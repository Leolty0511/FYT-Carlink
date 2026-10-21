package k0;

import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class gm extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5606c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5607d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 13}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 1}, new int[]{11, 12}};

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
        mtVar.f8314i = 0;
        mtVar.f8317l = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f5606c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f5607d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f5606c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f5605b = i4;
                    break;
                }
                i4++;
            }
            int i6 = b4 & 255;
            if (i6 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i6 == 0) {
                    int i7 = this.f5605b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f5605b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 36) {
            int i8 = i2 + 2;
            if ((bArr[i8] & 1) == 1) {
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (bArr[i8] >> 7) & 1);
                    qt.y0(2, (bArr[i8] >> 6) & 1);
                } else {
                    qt.y0(1, (bArr[i8] >> 6) & 1);
                    qt.y0(2, (bArr[i8] >> 7) & 1);
                }
                qt.y0(3, (bArr[i8] >> 4) & 1);
                qt.y0(4, (bArr[i8] >> 5) & 1);
                qt.y0(5, (bArr[i8] >> 3) & 1);
                qt.y0(0, (bArr[i8] >> 2) & 1);
                return;
            }
            return;
        }
        if (b2 != 39) {
            if (b2 == 41) {
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 8600);
                return;
            }
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 != 53) {
                if (b2 != 54) {
                    return;
                }
                qt.y0(106, bArr[i2 + 2] & 255);
                qt.y0(107, bArr[i2 + 3] & 255);
                qt.y0(108, bArr[i2 + 4] & 255);
                qt.y0(109, bArr[i2 + 5] & 255);
                return;
            }
            qt.y0(99, bArr[i2 + 2] & 255);
            qt.y0(100, bArr[i2 + 3] & 255);
            qt.y0(101, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(102, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(103, ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | (65280 & (bArr[i2 + 10] << 8)) | (bArr[i2 + 11] & 255));
            int i9 = i2 + 12;
            qt.y0(104, (bArr[i9] >> 7) & 1);
            qt.y0(105, (bArr[i9] >> 6) & 1);
            int i10 = bArr[i2 + 8] & 255;
            if (i10 == 255) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3((i10 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        int i11 = i2 + 2;
        qt.y0(10, (bArr[i11] >> 7) & 1);
        qt.y0(11, (bArr[i11] >> 6) & 1);
        qt.y0(12, (bArr[i11] >> 5) & 1);
        qt.y0(13, (bArr[i11] >> 3) & 1);
        qt.y0(14, (bArr[i11] >> 2) & 1);
        qt.y0(72, (bArr[i11] >> 1) & 1);
        int i12 = i2 + 3;
        qt.y0(18, (bArr[i12] >> 7) & 1);
        qt.y0(20, (bArr[i12] >> 5) & 1);
        qt.y0(22, (bArr[i12] >> 4) & 1);
        qt.y0(24, (bArr[i12] >> 3) & 1);
        int i13 = i2 + 4;
        int i14 = bArr[i13] & 255;
        int i15 = i2 + 5;
        int i16 = bArr[i15] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i14 = bArr[i15] & 255;
            i16 = bArr[i13] & 255;
        }
        if (i14 == 0) {
            qt.y0(27, -2);
        } else if (i14 != 32) {
            qt.y0(27, i14);
        } else {
            qt.y0(27, -3);
        }
        if (i16 == 0) {
            qt.y0(28, -2);
        } else if (i16 != 32) {
            qt.y0(28, i16);
        } else {
            qt.y0(28, -3);
        }
        int i17 = i2 + 6;
        qt.y0(16, (bArr[i17] >> 6) & 1);
        qt.y0(65, (bArr[i17] >> 7) & 1);
        qt.y0(37, (bArr[i17] >> 0) & 1);
        qt.y0(21, bArr[i2 + 8] & 255);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 112) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 144, 2, iArr[0], iArr[1]);
    }
}

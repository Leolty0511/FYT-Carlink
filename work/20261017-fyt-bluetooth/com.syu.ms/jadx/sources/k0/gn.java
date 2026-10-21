package k0;

import android.os.SystemProperties;
import android.text.Spanned;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class gn extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5609c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5610d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 0}, new int[]{11, 21}, new int[]{12, 53}, new int[]{13, 13}, new int[]{14, 54}, new int[]{15, 1}, new int[]{16, 40}, new int[]{17, 41}, new int[]{18, 42}, new int[]{19, 43}, new int[]{20, 44}, new int[]{21, 45}, new int[]{22, 38}, new int[]{23, 68}, new int[]{24, 67}, new int[]{25, 18}, new int[]{26, 26}, new int[]{27, 6}, new int[]{28, 5}};

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
        mtVar.f8313h = 0;
        mtVar.f8314i = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f5609c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f5610d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f5609c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f5608b = i4;
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
                    int i7 = this.f5608b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f5608b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 != 33) {
            if (b2 == 36) {
                byte b5 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 7) & 1);
                    qt.y0(2, (b5 >> 6) & 1);
                } else {
                    qt.y0(1, (b5 >> 6) & 1);
                    qt.y0(2, (b5 >> 7) & 1);
                }
                qt.y0(3, (b5 >> 4) & 1);
                qt.y0(4, (b5 >> 5) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                return;
            }
            if (b2 == 41) {
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 6300);
                return;
            }
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 == 104) {
                qt.y0(110, (bArr[i2 + 2] & 255) | (65280 & (bArr[i2 + 3] << 8)));
                return;
            }
            if (b2 == 125) {
                if ((bArr[i2 + 2] & 255) != 1) {
                    return;
                }
                int i8 = i2 + 3;
                l0.c0.a((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i8] & 255}, null, null);
                return;
            }
            if (b2 != 112) {
                if (b2 != 113) {
                    return;
                }
                qt.y0(107, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
                qt.y0(108, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
                qt.y0(109, (bArr[i2 + 6] & 255) | (65280 & (bArr[i2 + 7] << 8)) | ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY));
                return;
            }
            qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(98, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(101, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(100, (65280 & (bArr[i2 + 10] << 8)) | (255 & bArr[i2 + 9]));
            int i9 = i2 + 2;
            qt.y0(103, (bArr[i9] >> 3) & 17);
            qt.y0(102, (bArr[i9] >> 2) & 17);
            qt.y0(105, (bArr[i9] >> 1) & 17);
            qt.y0(104, (bArr[i9] >> 0) & 17);
            return;
        }
        int i10 = i2 + 2;
        qt.y0(10, (bArr[i10] >> 7) & 1);
        qt.y0(11, (bArr[i10] >> 6) & 1);
        qt.y0(12, (bArr[i10] >> 5) & 1);
        qt.y0(16, (bArr[i10] >> 4) & 1);
        qt.y0(13, (bArr[i10] >> 3) & 1);
        qt.y0(14, (bArr[i10] >> 2) & 1);
        qt.y0(15, (bArr[i10] >> 1) & 1);
        int i11 = i2 + 3;
        qt.y0(18, (bArr[i11] >> 7) & 1);
        qt.y0(19, (bArr[i11] >> 6) & 1);
        qt.y0(20, (bArr[i11] >> 5) & 1);
        qt.y0(21, 15 & bArr[i11]);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            int i12 = i2 + 4;
            if ((bArr[i12] & 255) == 0) {
                qt.y0(28, -2);
            } else if ((bArr[i12] & 255) == 127) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, bArr[i12] & 255);
            }
            int i13 = i2 + 5;
            if ((bArr[i13] & 255) == 0) {
                qt.y0(27, -2);
                return;
            } else if ((bArr[i13] & 255) == 127) {
                qt.y0(27, -3);
                return;
            } else {
                qt.y0(27, bArr[i13] & 255);
                return;
            }
        }
        int i14 = i2 + 4;
        if ((bArr[i14] & 255) == 0) {
            qt.y0(27, -2);
        } else if ((bArr[i14] & 255) == 127) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, bArr[i14] & 255);
        }
        int i15 = i2 + 5;
        if ((bArr[i15] & 255) == 0) {
            qt.y0(28, -2);
        } else if ((bArr[i15] & 255) == 127) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, bArr[i15] & 255);
        }
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
        if (i2 == 0) {
            z.k.s(227, 139, 2, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, 144, 1, iArr[0]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 137, 1, iArr[0]);
        }
    }
}

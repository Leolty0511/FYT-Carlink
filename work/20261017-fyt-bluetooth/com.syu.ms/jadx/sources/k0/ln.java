package k0;

import android.os.SystemProperties;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class ln extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7805c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7806d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 13}, new int[]{12, 62}};

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
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8313h = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        boolean z2;
        byte b2 = bArr[i2];
        if (b2 == 33) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f7805c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f7806d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f7805c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f7804b = i7;
                    break;
                }
                i7++;
            }
            if (this.f7805c == 6) {
                if ((b4 & 255) == 1) {
                    int i9 = h0.c.E;
                    if (i9 == 3 || i9 == 4 || i9 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                        return;
                    } else {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                        return;
                    }
                }
                return;
            }
            int i10 = b4 & 255;
            if (i10 == 1) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                if (i10 == 0) {
                    int i11 = this.f7804b;
                    if (i11 < iArr.length && i11 != 255) {
                        l0.b0.l0(iArr[i11][1], 1);
                    }
                    this.f7804b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 35) {
            int i12 = i2 + 2;
            qt.y0(10, (bArr[i12] >> 7) & 1);
            qt.y0(11, (bArr[i12] >> 6) & 1);
            qt.y0(12, (bArr[i12] >> 5) & 1);
            qt.y0(68, (bArr[i12] >> 4) & 1);
            qt.y0(13, (bArr[i12] >> 3) & 1);
            qt.y0(72, (bArr[i12] >> 2) & 1);
            qt.y0(16, (bArr[i12] >> 1) & 1);
            qt.y0(65, (bArr[i12] >> 0) & 1);
            int i13 = bArr[i2 + 3] & 255;
            if (i13 != 1) {
                if (i13 == 2) {
                    i4 = 0;
                    i6 = 1;
                } else if (i13 == 3) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (i13 == 4) {
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
                } else if (i13 != 5) {
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
            qt.y0(21, bArr[i2 + 4] & 255);
            int i14 = i2 + 6;
            if ((bArr[i14] & 255) == 0) {
                qt.y0(27, -2);
                qt.y0(28, -2);
                return;
            } else if ((bArr[i14] & 255) == 30) {
                qt.y0(27, -3);
                qt.y0(28, -3);
                return;
            } else {
                qt.y0(27, bArr[i14] & 255);
                qt.y0(28, bArr[i14] & 255);
                return;
            }
        }
        if (b2 == 38) {
            u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 64) {
            int i15 = i2 + 2;
            qt.y0(99, (bArr[i15] >> 7) & 1);
            qt.y0(100, (bArr[i15] >> 6) & 1);
            int i16 = bArr[i2 + 3] & 255;
            if ((i16 & 128) > 0) {
                i16 = 255 - i16;
                z2 = true;
            } else {
                z2 = false;
            }
            u0.d.A3(z2 ? 1000 - (i16 * 10) : (i16 * 10) + 1000);
            qt.y0(102, bArr[i2 + 4] & 255);
            qt.y0(103, bArr[i2 + 5] & 255);
            qt.y0(104, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(105, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(106, (bArr[i2 + 12] & 255) | ((bArr[i2 + 10] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 11] << 8) & 65280));
            return;
        }
        if (b2 == 125) {
            int i17 = bArr[i2 + 2] & 255;
            if (i17 != 1) {
                if (i17 != 3) {
                    return;
                }
                int i18 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i18);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i18}, null, null);
                return;
            }
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i19 = i2 + 3;
                l0.c0.b((bArr[i19] >> 3) & 1, (bArr[i19] >> 4) & 1, 0);
            } else {
                int i20 = i2 + 3;
                l0.c0.a((bArr[i20] >> 3) & 1, (bArr[i20] >> 4) & 1, 0);
            }
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i2 + 3] & 255}, null, null);
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
            qt.m(bArr[i2 + 3] & 255, bArr[i2 + 2] & 255, 7744, false, 5705);
            return;
        }
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
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 138, 2, iArr[0], iArr[1]);
    }
}

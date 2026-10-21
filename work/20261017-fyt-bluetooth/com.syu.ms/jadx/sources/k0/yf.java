package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class yf extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12477b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12480e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12478c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12479d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 2}, new int[]{8, 13}, new int[]{16, 21}, new int[]{17, 21}, new int[]{18, 25}, new int[]{19, 3}, new int[]{20, 4}, new int[]{21, 12}, new int[]{22, 64}, new int[]{23, 2}, new int[]{24, 1}, new int[]{25, 55}, new int[]{32, 7}, new int[]{33, 8}, new int[]{34, 38}, new int[]{35, 5}, new int[]{36, 18}, new int[]{37, 24}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12481f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f12482g = {new int[]{1, 25}, new int[]{2, 7}, new int[]{3, 8}, new int[]{4, 12}, new int[]{5, 3}, new int[]{6, 4}, new int[]{7, 2}, new int[]{8, 5}, new int[]{9, 1}, new int[]{10, 21}, new int[]{11, 11}, new int[]{12, 38}, new int[]{13, 64}, new int[]{16, 18}, new int[]{17, 1}, new int[]{18, 55}};

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
        mtVar.f8312g = 1;
        mtVar.f8319n = 0;
        mtVar.f8314i = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        boolean z2 = false;
        if (b2 == 2) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12481f = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f12482g;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f12481f;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f12480e = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f12481f;
            if (i6 == 2) {
                for (int i7 = 0; i7 < (b4 & 255); i7++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i6 == 3) {
                for (int i8 = 0; i8 < (b4 & 255); i8++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            int i9 = b4 & 255;
            if (i9 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 == 0) {
                    int i10 = this.f12480e;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f12480e = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 16) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            byte b7 = bArr[i2 + 4];
            byte b8 = bArr[i2 + 5];
            qt.y0(75, b5 & 255);
            qt.y0(12, (b6 >> 7) & 1);
            qt.y0(65, (b6 >> 6) & 1);
            qt.y0(16, (b6 >> 5) & 1);
            qt.y0(20, (b6 >> 4) & 1);
            qt.y0(19, (b6 >> 3) & 1);
            qt.y0(13, (b6 >> 2) & 1);
            qt.y0(10, (b6 >> 1) & 1);
            qt.y0(11, (b6 >> 0) & 1);
            qt.y0(21, b7 & DhcpPacket.DHCP_DOMAIN_NAME);
            int i11 = b8 & 255;
            if (i11 == 1) {
                qt.y0(27, -2);
            } else if (i11 != 61) {
                qt.y0(27, i11);
            } else {
                qt.y0(27, -3);
            }
            byte b9 = bArr[i2 + 9];
            int i12 = b9 & 255;
            if ((b9 & 128) != 0) {
                i12 = 256 - i12;
                z2 = true;
            }
            u0.d.A3(z2 ? 1000 - (i12 * 10) : (i12 * 10) + 1000);
            return;
        }
        if (b2 == 32) {
            byte b10 = bArr[i2 + 2];
            byte b11 = bArr[i2 + 3];
            this.f12478c = b10 & 255;
            int i13 = 0;
            while (true) {
                iArr2 = this.f12479d;
                if (i13 >= iArr2.length) {
                    break;
                }
                int i14 = this.f12478c;
                if (i14 == iArr2[i13][0]) {
                    if (i14 == 0) {
                        break;
                    }
                    this.f12477b = i13;
                    break;
                }
                i13++;
            }
            int i15 = this.f12478c;
            if (i15 == 32) {
                for (int i16 = 0; i16 < (b11 & 255); i16++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i15 == 33) {
                for (int i17 = 0; i17 < (b11 & 255); i17++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            int i18 = b11 & 255;
            if (i18 == 1) {
                if (i13 < iArr2.length) {
                    l0.b0.l0(iArr2[i13][1], 0);
                    return;
                }
                return;
            } else {
                if (i18 == 0) {
                    int i19 = this.f12477b;
                    if (i19 < iArr2.length && i19 != 255) {
                        l0.b0.l0(iArr2[i19][1], 1);
                    }
                    this.f12477b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 34) {
            byte b12 = bArr[i2 + 2];
            byte b13 = bArr[i2 + 3];
            byte b14 = bArr[i2 + 4];
            byte b15 = bArr[i2 + 5];
            u0.d.R2(l0.c0.L0(b12 & 255));
            u0.d.S2(l0.c0.L0(b13 & 255));
            u0.d.T2(l0.c0.L0(b14 & 255));
            u0.d.U2(l0.c0.L0(b15 & 255));
            return;
        }
        if (b2 == 36) {
            byte b16 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b16 >> 6) & 1);
                qt.y0(1, (b16 >> 7) & 1);
            } else {
                qt.y0(2, (b16 >> 7) & 1);
                qt.y0(1, (b16 >> 6) & 1);
            }
            qt.y0(4, (b16 >> 5) & 1);
            qt.y0(3, (b16 >> 4) & 1);
            qt.y0(5, (b16 >> 3) & 1);
            return;
        }
        if (b2 == 41) {
            qt.m(bArr[i2 + 2], bArr[i2 + 3], 32768, false, 8360);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 64) {
            return;
        }
        int i20 = i2 + 2;
        if (bArr[i20] == 0) {
            qt.y0(99, bArr[i2 + 3]);
            return;
        }
        if (bArr[i20] == 1) {
            qt.y0(100, bArr[i2 + 3]);
            return;
        }
        if (bArr[i20] == 2) {
            qt.y0(101, bArr[i2 + 3]);
            return;
        }
        if (bArr[i20] == 3) {
            qt.y0(102, bArr[i2 + 3]);
            return;
        }
        if (bArr[i20] == 4) {
            qt.y0(103, bArr[i2 + 3]);
            return;
        }
        if (bArr[i20] == 5) {
            qt.y0(104, bArr[i2 + 3]);
        } else if (bArr[i20] == 6) {
            qt.y0(105, bArr[i2 + 3]);
        } else if (bArr[i20] == 7) {
            qt.y0(106, bArr[i2 + 3]);
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
        if (i2 != 0) {
            if (i2 == 1 && iArr != null) {
                z.k.s(227, 144, 2, 64, 0);
                return;
            }
            return;
        }
        if (iArr == null || iArr.length < 2) {
            return;
        }
        z.k.s(227, 198, 2, (byte) iArr[0], (byte) iArr[1]);
    }
}

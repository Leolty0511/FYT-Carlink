package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class s7 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10165c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10166d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 3}, new int[]{12, 4}, new int[]{13, 8}, new int[]{14, 7}, new int[]{15, 29}, new int[]{23, 5}, new int[]{24, 2}, new int[]{129, 25}, new int[]{130, 3}, new int[]{131, 4}, new int[]{132, 16}, new int[]{135, 24}, new int[]{137, 12}, new int[]{149, 54}, new int[]{161, 7}, new int[]{162, 8}, new int[]{166, 3}, new int[]{167, 4}, new int[]{169, 19}, new int[]{176, 20}, new int[]{177, 2}, new int[]{178, 18}, new int[]{179, 26}, new int[]{180, 64}, new int[]{181, 55}, new int[]{182, 5}, new int[]{183, 18}, new int[]{134, 6}, new int[]{136, 22}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{144, 46}, new int[]{145, 47}, new int[]{146, 48}, new int[]{147, 49}, new int[]{150, 58}, new int[]{151, 56}, new int[]{160, 29}, new int[]{163, 7}, new int[]{164, 8}, new int[]{165, 16}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f10167e = {new int[]{17, 2}, new int[]{18, 3}, new int[]{19, 4}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{48, 18}, new int[]{49, 26}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8320o = 1;
        int i2 = nt.f8637c;
        if (i2 != 2) {
            if (i2 == 3) {
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8310e = 1;
                mtVar.f8311f = 0;
                mtVar.f8314i = 0;
                mtVar.f8312g = 0;
                return;
            }
            if (i2 != 4) {
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8310e = 1;
                mtVar.f8311f = 1;
                mtVar.f8312g = 0;
                return;
            }
        }
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 1;
        mtVar.f8312g = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int i4 = bArr[i2] & 255;
        if (i4 == 18) {
            if (nt.a()) {
                byte b2 = bArr[i2 + 2];
                byte b3 = bArr[i2 + 3];
                this.f10165c = b2 & 255;
                int i5 = 0;
                while (true) {
                    iArr = this.f10167e;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = this.f10165c;
                    if (i6 == iArr[i5][0]) {
                        if (i6 == 0) {
                            break;
                        }
                        this.f10164b = i5;
                        break;
                    }
                    i5++;
                }
                if (nt.f8633a == 196845) {
                    if (this.f10165c == 0 || i5 >= iArr.length) {
                        return;
                    }
                    l0.b0.l0(iArr[this.f10164b][1], 0);
                    l0.b0.l0(this.f10167e[this.f10164b][1], 1);
                    return;
                }
                if ((b3 & 255) == 0) {
                    if (i5 <= iArr.length) {
                        l0.b0.l0(iArr[this.f10164b][1], 1);
                    }
                    return;
                } else {
                    if (i5 < iArr.length) {
                        l0.b0.l0(iArr[i5][1], 0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i4 == 40) {
            int i7 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i7 >> 6) & 1);
                qt.y0(1, (i7 >> 7) & 1);
            } else {
                qt.y0(2, (i7 >> 7) & 1);
                qt.y0(1, (i7 >> 6) & 1);
            }
            qt.y0(4, (i7 >> 5) & 1);
            qt.y0(3, (i7 >> 4) & 1);
            qt.y0(0, (i7 >> 2) & 1);
            qt.y0(5, (i7 >> 3) & 1);
            return;
        }
        if (i4 == 104) {
            int i8 = i2 + 3;
            int i9 = i2 + 2;
            qt.y0(99, ((bArr[i8] << 8) & 65280) | (bArr[i9] & 255));
            qt.y0(1032, (bArr[i9] & 255) | ((bArr[i8] << 8) & 65280));
            return;
        }
        if (i4 == 106) {
            qt.y0(98, (bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280));
            return;
        }
        if (i4 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (i4 == 210) {
            qt.y0(101, bArr[i2 + 2]);
            qt.y0(102, bArr[i2 + 3]);
            qt.y0(103, bArr[i2 + 4] & 255);
            int i10 = i2 + 5;
            qt.y0(104, bArr[i10]);
            qt.y0(105, ((bArr[i10] >> 6) & 1) | bArr[i2 + 6]);
            qt.y0(106, bArr[i2 + 7]);
            qt.y0(107, bArr[i2 + 8] & 255);
            int i11 = i2 + 9;
            qt.y0(108, bArr[i11]);
            qt.y0(109, ((bArr[i11] >> 6) & 1) | bArr[i2 + 10]);
            qt.y0(110, bArr[i2 + 11]);
            qt.y0(111, bArr[i2 + 12] & 255);
            int i12 = i2 + 13;
            qt.y0(112, bArr[i12]);
            qt.y0(113, ((bArr[i12] >> 6) & 1) | bArr[i2 + 14]);
            qt.y0(114, bArr[i2 + 15]);
            qt.y0(115, bArr[i2 + 16] & 255);
            int i13 = i2 + 17;
            qt.y0(116, bArr[i13]);
            qt.y0(117, ((bArr[i13] >> 6) & 1) | bArr[i2 + 18]);
            return;
        }
        if (i4 == 48) {
            if (nt.f8637c == 3) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            } else {
                qt.l(bArr[i2 + 2], bArr[i2 + 3], true, 5400);
                return;
            }
        }
        if (i4 == 49) {
            if (nt.f8637c == 3) {
                qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 5620);
                return;
            } else {
                qt.y0(120, (bArr[i2 + 2] >> 7) & 1);
                return;
            }
        }
        switch (i4) {
            case 33:
                if (nt.a()) {
                    byte b4 = bArr[i2 + 2];
                    byte b5 = bArr[i2 + 3];
                    this.f10165c = b4 & 255;
                    int i14 = 0;
                    while (true) {
                        iArr2 = this.f10166d;
                        if (i14 < iArr2.length) {
                            int i15 = this.f10165c;
                            if (i15 != iArr2[i14][0]) {
                                i14++;
                            } else if (i15 != 0) {
                                this.f10164b = i14;
                            }
                        }
                    }
                    if ((b5 & 255) == 0) {
                        if (i14 <= iArr2.length) {
                            l0.b0.l0(iArr2[this.f10164b][1], 1);
                        }
                    } else if (i14 < iArr2.length) {
                        l0.b0.l0(iArr2[i14][1], 0);
                    }
                }
                break;
            case 34:
                if (nt.a()) {
                    byte b6 = bArr[i2 + 2];
                    byte b7 = bArr[i2 + 3];
                    this.f10165c = (b6 | 128) & 255;
                    int i16 = 0;
                    while (true) {
                        iArr3 = this.f10166d;
                        if (i16 < iArr3.length) {
                            int i17 = this.f10165c;
                            if (i17 != iArr3[i16][0]) {
                                i16++;
                            } else if (i17 != 0) {
                                this.f10164b = i16;
                            }
                        }
                    }
                    int i18 = b6 & 255;
                    if (i18 == 33 || i18 == 34) {
                        l0.b0.l0(iArr3[i16][1], 0);
                        l0.b0.l0(this.f10166d[i16][1], 1);
                    } else if ((b7 & 255) == 0) {
                        if (i16 <= iArr3.length) {
                            l0.b0.l0(iArr3[this.f10164b][1], 1);
                        }
                    } else if (i16 < iArr3.length) {
                        l0.b0.l0(iArr3[i16][1], 0);
                    }
                }
                break;
            case 35:
                byte b8 = bArr[i2 + 2];
                byte b9 = bArr[i2 + 3];
                byte b10 = bArr[i2 + 4];
                byte b11 = bArr[i2 + 5];
                byte b12 = bArr[i2 + 6];
                qt.y0(10, (b8 >> 7) & 1);
                qt.y0(11, (b8 >> 6) & 1);
                qt.y0(12, (b8 >> 5) & 1);
                qt.y0(13, (b8 >> 3) & 1);
                qt.y0(18, (b9 >> 7) & 1);
                qt.y0(19, (b9 >> 6) & 1);
                qt.y0(20, (b9 >> 5) & 1);
                qt.y0(21, b9 & DhcpPacket.DHCP_DOMAIN_NAME);
                int i19 = b12 & 1;
                if (b10 == 0) {
                    qt.y0(27, -2);
                } else if (b10 == 31) {
                    qt.y0(27, -3);
                } else if (b10 < 1 || b10 > 28) {
                    if (b10 >= 32 && b10 <= 36 && i19 == 0) {
                        qt.y0(27, (b10 & 255) + 28);
                    }
                } else if (i19 == 0) {
                    qt.y0(27, (b10 & 255) + 31);
                } else {
                    qt.y0(27, (b10 & 255) + 59);
                }
                if (b11 == 0) {
                    qt.y0(28, -2);
                } else if (b11 == 31) {
                    qt.y0(28, -3);
                } else if (b11 < 1 || b11 > 28) {
                    if (b11 >= 32 && b11 <= 36 && i19 == 0) {
                        qt.y0(28, (b11 & 255) + 28);
                    }
                } else if (i19 == 0) {
                    qt.y0(28, (b11 & 255) + 31);
                } else {
                    qt.y0(28, (b11 & 255) + 59);
                }
                qt.y0(37, i19);
                qt.y0(65, (b12 >> 7) & 1);
                qt.y0(16, (b12 >> 6) & 1);
                qt.y0(38, (bArr[i2 + 8] >> 7) & 1);
                break;
            case 36:
                int i20 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i20 >> 6) & 1);
                    qt.y0(1, (i20 >> 7) & 1);
                } else {
                    qt.y0(2, (i20 >> 7) & 1);
                    qt.y0(1, (i20 >> 6) & 1);
                }
                qt.y0(4, (i20 >> 5) & 1);
                qt.y0(3, (i20 >> 4) & 1);
                qt.y0(5, (i20 >> 3) & 1);
                qt.y0(0, (i20 >> 2) & 1);
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
        if (i2 < 0 || i2 >= 122) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && iArr != null && iArr.length >= 2) {
            z.k.s(227, -125, 2, iArr[0], iArr[1]);
        }
    }
}

package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class tg extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10633b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10636e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10634c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10635d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{6, 13}, new int[]{7, 12}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10637f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f10638g = {new int[]{1, 54}, new int[]{2, 40}, new int[]{3, 41}, new int[]{4, 42}, new int[]{5, 43}, new int[]{6, 44}, new int[]{7, 45}, new int[]{8, 58}, new int[]{9, 0}, new int[]{10, 2}, new int[]{11, -1}, new int[]{12, 29}, new int[]{13, 12}, new int[]{14, 3}, new int[]{15, 4}, new int[]{16, -1}, new int[]{17, 6}, new int[]{18, 56}, new int[]{19, 6}, new int[]{20, -1}, new int[]{21, -1}, new int[]{22, -1}, new int[]{23, -1}, new int[]{24, 9}, new int[]{48, 7}, new int[]{49, 8}, new int[]{50, 31}, new int[]{51, 30}};

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
        mtVar.f8314i = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8307b = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f10634c = b3 & 255;
            int i11 = 0;
            while (true) {
                iArr = this.f10635d;
                if (i11 >= iArr.length) {
                    break;
                }
                int i12 = this.f10634c;
                if (i12 == iArr[i11][0]) {
                    if (i12 == 0) {
                        break;
                    }
                    this.f10633b = i11;
                    break;
                }
                i11++;
            }
            int i13 = b4 & 255;
            if (i13 == 1) {
                if (i11 < iArr.length) {
                    l0.b0.l0(iArr[i11][1], 0);
                    return;
                }
                return;
            } else {
                if (i13 == 0) {
                    int i14 = this.f10633b;
                    if (i14 < iArr.length) {
                        i4 = 255;
                        if (i14 != 255) {
                            l0.b0.l0(iArr[i14][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f10633b = i4;
                    return;
                }
                return;
            }
        }
        if (b2 == 2) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f10637f = b5 & 255;
            int i15 = 0;
            while (true) {
                iArr2 = this.f10638g;
                if (i15 >= iArr2.length) {
                    break;
                }
                int i16 = this.f10637f;
                if (i16 == iArr2[i15][0]) {
                    if (i16 == 0) {
                        break;
                    }
                    this.f10636e = i15;
                    break;
                }
                i15++;
            }
            switch (this.f10634c) {
                case 48:
                    for (int i17 = 0; i17 < (b6 & 255); i17++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    break;
                case 49:
                    for (int i18 = 0; i18 < (b6 & 255); i18++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    break;
                case 50:
                    for (int i19 = 0; i19 < (b6 & 255); i19++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    break;
                case 51:
                    for (int i20 = 0; i20 < (b6 & 255); i20++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    break;
                default:
                    int i21 = b6 & 255;
                    if (i21 == 1) {
                        if (i15 < iArr2.length) {
                            l0.b0.l0(iArr2[i15][1], 0);
                        }
                    } else if (i21 == 0) {
                        int i22 = this.f10636e;
                        if (i22 < iArr2.length) {
                            i5 = 255;
                            if (i22 != 255) {
                                l0.b0.l0(iArr2[i22][1], 1);
                            }
                        } else {
                            i5 = 255;
                        }
                        this.f10636e = i5;
                    }
                    break;
            }
            return;
        }
        if (b2 != 3) {
            if (b2 == 5) {
                int i23 = i2 + 2;
                qt.y0(99, (bArr[i23] >> 6) & 3);
                qt.y0(100, (bArr[i23] >> 4) & 3);
                qt.y0(101, 3 & (bArr[i23] >> 2));
                qt.y0(102, (bArr[i23] >> 1) & 1);
                qt.y0(103, (bArr[i23] >> 0) & 1);
                return;
            }
            if (b2 == 6) {
                int i24 = i2 + 2;
                qt.y0(104, (bArr[i24] >> 7) & 1);
                qt.y0(105, (bArr[i24] >> 5) & 3);
                qt.y0(106, (bArr[i24] >> 4) & 1);
                qt.y0(107, (bArr[i24] >> 3) & 1);
                qt.y0(108, (bArr[i24] >> 1) & 3);
                qt.y0(109, (bArr[i24] >> 0) & 1);
                int i25 = i2 + 3;
                qt.y0(110, (bArr[i25] >> 7) & 1);
                qt.y0(111, (bArr[i25] >> 5) & 3);
                qt.y0(112, (bArr[i25] >> 4) & 1);
                qt.y0(113, (bArr[i25] >> 3) & 1);
                qt.y0(114, (bArr[i25] >> 2) & 1);
                qt.y0(115, (bArr[i25] >> 1) & 1);
                qt.y0(116, (bArr[i25] >> 0) & 1);
                return;
            }
            if (b2 == 34) {
                u0.d.R2(l0.c0.Q0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.Q0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.Q0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.Q0(bArr[i2 + 5] & 255));
                return;
            }
            if (b2 != 36) {
                if (b2 == 38) {
                    qt.l(bArr[i2 + 2], bArr[i2 + 3], true, 500);
                    return;
                } else {
                    if (b2 != 48) {
                        return;
                    }
                    qt.L(new String(bArr, i2 + 2, i3 - 2));
                    return;
                }
            }
            int i26 = bArr[i2 + 3] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i26 >> 6) & 1);
                qt.y0(1, (i26 >> 7) & 1);
            } else {
                qt.y0(2, (i26 >> 7) & 1);
                qt.y0(1, (i26 >> 6) & 1);
            }
            qt.y0(4, (i26 >> 5) & 1);
            qt.y0(3, (i26 >> 4) & 1);
            qt.y0(5, (i26 >> 3) & 1);
            qt.y0(0, (i26 >> 2) & 1);
            return;
        }
        byte b7 = bArr[i2 + 2];
        byte b8 = bArr[i2 + 3];
        int i27 = i2 + 4;
        byte b9 = bArr[i27];
        int i28 = i2 + 5;
        byte b10 = bArr[i28];
        byte b11 = bArr[i2 + 6];
        qt.y0(10, (b7 >> 7) & 1);
        qt.y0(11, (b7 >> 6) & 1);
        qt.y0(12, (b7 >> 4) & 1);
        qt.y0(36, (b7 >> 5) & 1);
        qt.y0(21, (b7 >> 0) & 15);
        qt.y0(16, (b8 >> 7) & 1);
        qt.y0(13, (b8 >> 6) & 1);
        qt.y0(14, (b8 >> 5) & 1);
        switch (b8 & DhcpPacket.DHCP_DOMAIN_NAME) {
            case 1:
                i6 = 0;
                i7 = 0;
                i8 = 0;
                i9 = 0;
                i10 = 1;
                break;
            case 2:
                i6 = 0;
                i7 = 0;
                i8 = 0;
                i10 = 0;
                i9 = 1;
                break;
            case 3:
                i6 = 0;
                i7 = 0;
                i10 = 0;
                i9 = 0;
                i8 = 1;
                break;
            case 4:
                i7 = 0;
                i10 = 0;
                i9 = 0;
                i6 = 1;
                i8 = 1;
                break;
            case 5:
                i6 = 0;
                i10 = 0;
                i9 = 0;
                i7 = 1;
                i8 = i7;
                break;
            case 6:
                i6 = 0;
                i8 = 0;
                i10 = 0;
                i9 = 0;
                i7 = 1;
                break;
            case 7:
                i10 = 0;
                i9 = 0;
                i6 = 1;
                i7 = 1;
                i8 = i7;
                break;
            default:
                i6 = 0;
                i7 = 0;
                i8 = 0;
                i10 = 0;
                i9 = 0;
                break;
        }
        qt.y0(18, i6);
        qt.y0(19, i7);
        qt.y0(20, i8);
        qt.y0(49, i10);
        qt.y0(15, i9);
        int i29 = b9;
        int i30 = b10;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i29 = bArr[i28] & 255;
            i30 = bArr[i27] & 255;
        }
        int i31 = i29 & 255;
        if ((i31 & 128) == 128) {
            qt.y0(27, -1);
        } else if (i29 == 0) {
            qt.y0(27, -2);
        } else if (i29 == 30) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i31);
        }
        int i32 = i30 & 255;
        if ((i32 & 128) == 128) {
            qt.y0(28, -1);
        } else if (i30 == 0) {
            qt.y0(28, -2);
        } else if (i30 == 30) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i32);
        }
        qt.y0(29, (b11 >> 4) & 15);
        qt.y0(30, (b11 >> 0) & 15);
        byte b12 = bArr[i2 + 7];
        int i33 = b12 & 255;
        u0.d.A3((b12 & 128) != 0 ? 1000 - ((((~i33) + 1) & 127) * 10) : (i33 * 10) + 1000);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 117) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 130, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1 && iArr != null && iArr.length > 0) {
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
        }
    }
}

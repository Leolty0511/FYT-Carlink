package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class nm extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8577c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8578d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 3}, new int[]{12, 4}, new int[]{18, 13}};

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
        mtVar.f8313h = 0;
        mtVar.f8314i = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f8577c = b3 & 255;
            int i9 = 0;
            while (true) {
                iArr = this.f8578d;
                if (i9 >= iArr.length) {
                    break;
                }
                int i10 = this.f8577c;
                if (i10 == iArr[i9][0]) {
                    if (i10 == 0) {
                        break;
                    }
                    this.f8576b = i9;
                    break;
                }
                i9++;
            }
            int i11 = b4 & 255;
            if (i11 == 1) {
                if (i9 < iArr.length) {
                    l0.b0.l0(iArr[i9][1], 0);
                    return;
                }
                return;
            } else {
                if (i11 == 0) {
                    int i12 = this.f8576b;
                    if (i12 < iArr.length && i12 != 255) {
                        l0.b0.l0(iArr[i12][1], 1);
                    }
                    this.f8576b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 != 3) {
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
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 == 51) {
                qt.y0(98, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                qt.y0(99, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                int i13 = i2 + 7;
                qt.y0(100, 3 & (bArr[i13] >> 4));
                qt.y0(101, (bArr[i13] >> 7) & 1);
                qt.y0(102, bArr[i2 + 8] & 255);
                return;
            }
            if (b2 == 125) {
                if ((bArr[i2 + 2] & 255) != 1) {
                    return;
                }
                int i14 = i2 + 3;
                l0.c0.a((bArr[i14] >> 3) & 1, (bArr[i14] >> 4) & 1, 0);
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i14] & 255}, null, null);
                return;
            }
            if (b2 != 56) {
                if (b2 != 57) {
                    return;
                }
                qt.y0(111, bArr[i2 + 2] & 255);
                qt.y0(112, bArr[i2 + 3] & 255);
                qt.y0(113, bArr[i2 + 4] & 255);
                qt.y0(114, bArr[i2 + 5] & 255);
                return;
            }
            qt.y0(107, bArr[i2 + 2] & 255);
            qt.y0(108, bArr[i2 + 3] & 255);
            qt.y0(109, bArr[i2 + 4] & 255);
            qt.y0(110, bArr[i2 + 5] & 255);
            qt.y0(103, bArr[i2 + 6] & 255);
            qt.y0(104, bArr[i2 + 7] & 255);
            qt.y0(105, bArr[i2 + 8] & 255);
            qt.y0(106, bArr[i2 + 9] & 255);
            return;
        }
        int i15 = i2 + 2;
        qt.y0(10, (bArr[i15] >> 7) & 1);
        qt.y0(11, (bArr[i15] >> 6) & 1);
        qt.y0(12, (bArr[i15] >> 5) & 1);
        qt.y0(16, (bArr[i15] >> 4) & 1);
        qt.y0(54, (bArr[i15] >> 3) & 1);
        int i16 = i2 + 3;
        qt.y0(21, ((bArr[i15] >> 0) & 7) | ((bArr[i16] >> 1) & 8));
        qt.y0(14, (bArr[i16] >> 5) & 1);
        switch (bArr[i16] & DhcpPacket.DHCP_DOMAIN_NAME) {
            case 1:
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 0;
                i8 = 1;
                break;
            case 2:
                i5 = 0;
                i6 = 0;
                i7 = 0;
                i8 = 0;
                i4 = 1;
                break;
            case 3:
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i8 = 0;
                i7 = 1;
                break;
            case 4:
                i4 = 0;
                i5 = 0;
                i8 = 0;
                i6 = 1;
                i7 = i6;
                break;
            case 5:
                i4 = 0;
                i5 = 0;
                i7 = 0;
                i8 = 0;
                i6 = 1;
                break;
            case 6:
                i4 = 0;
                i7 = 0;
                i8 = 0;
                i5 = 1;
                i6 = 1;
                break;
            case 7:
                i4 = 0;
                i6 = 0;
                i7 = 0;
                i8 = 0;
                i5 = 1;
                break;
            case 8:
                i4 = 0;
                i6 = 0;
                i8 = 0;
                i5 = 1;
                i7 = 1;
                break;
            case 9:
                i4 = 0;
                i8 = 0;
                i5 = 1;
                i6 = 1;
                i7 = i6;
                break;
            default:
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 0;
                i8 = 0;
                break;
        }
        qt.y0(65, i4);
        qt.y0(18, i5);
        qt.y0(19, i6);
        qt.y0(20, i7);
        qt.y0(49, i8);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            int i17 = i2 + 4;
            if ((bArr[i17] & 255) == 0) {
                qt.y0(28, -2);
            } else if ((bArr[i17] & 255) == 30) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, bArr[i17] & 255);
            }
            int i18 = i2 + 5;
            if ((bArr[i18] & 255) == 0) {
                qt.y0(27, -2);
            } else if ((bArr[i18] & 255) == 30) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, bArr[i18] & 255);
            }
        } else {
            int i19 = i2 + 4;
            if ((bArr[i19] & 255) == 0) {
                qt.y0(27, -2);
            } else if ((bArr[i19] & 255) == 30) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, bArr[i19] & 255);
            }
            int i20 = i2 + 5;
            if ((bArr[i20] & 255) == 0) {
                qt.y0(28, -2);
            } else if ((bArr[i20] & 255) == 30) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, bArr[i20] & 255);
            }
        }
        int i21 = i2 + 6;
        qt.y0(29, (bArr[i21] >> 4) & 15);
        qt.y0(30, (bArr[i21] >> 0) & 15);
        u0.d.B3((bArr[i2 + 7] * 10) + 1000);
        int i22 = i2 + 8;
        qt.y0(13, (bArr[i22] >> 1) & 1);
        qt.y0(33, (bArr[i22] >> 0) & 1);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 115) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 130, 2, iArr[0], iArr[1]);
    }
}

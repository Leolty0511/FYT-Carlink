package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class uh extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11047b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11048c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11049d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 26}, new int[]{9, 0}};

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
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        switch (nt.f8637c) {
            case 11:
            case 14:
            case 15:
                mtVar.f8314i = 1;
                mtVar.f8312g = 0;
                break;
            case 12:
                mtVar.f8312g = 1;
                mtVar.f8314i = 0;
                break;
            case 13:
            default:
                mtVar.f8314i = 0;
                mtVar.f8312g = 0;
                break;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 39) {
            byte b3 = bArr[i2 + 2];
            int i5 = bArr[i2 + 3] & 255;
            if (i5 < 70) {
                int i6 = 70 - i5;
                i4 = (1000 - ((i6 / 2) * 10)) - ((i6 % 2) * 5);
            } else {
                int i7 = i5 - 70;
                i4 = ((i7 % 2) * 5) + ((i7 / 2) * 10) + 1000;
            }
            u0.d.A3(i4);
        }
        if (b2 == 41) {
            qt.m(bArr[i2 + 2], bArr[i2 + 3], 32768, false, 8800);
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
        if (b2 == 56) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            byte b6 = bArr[i2 + 4];
            byte b7 = bArr[i2 + 5];
            byte b8 = bArr[i2 + 6];
            byte b9 = bArr[i2 + 7];
            byte b10 = bArr[i2 + 8];
            byte b11 = bArr[i2 + 9];
            qt.y0(98, b4 & 255);
            qt.y0(99, b5 & 255);
            qt.y0(100, b6 & 255);
            qt.y0(101, b7 & 255);
            qt.y0(102, b8 & 255);
            qt.y0(103, b9 & 255);
            qt.y0(104, b10 & 255);
            qt.y0(105, b11 & 255);
            return;
        }
        if (b2 == 57) {
            int i9 = nt.f8633a;
            if (i9 == 721335 || i9 == 917943 || i9 == 786871) {
                byte b12 = bArr[i2 + 2];
                byte b13 = bArr[i2 + 3];
                qt.y0(106, (b12 >> 7) & 1);
                qt.y0(107, (b12 >> 6) & 1);
                qt.y0(108, (b12 >> 5) & 1);
                qt.y0(109, (b12 >> 4) & 1);
                qt.y0(110, (b12 >> 3) & 1);
                qt.y0(111, (b12 >> 2) & 1);
                qt.y0(112, (b13 >> 7) & 1);
                qt.y0(113, (b13 >> 6) & 1);
                qt.y0(114, (b13 >> 5) & 1);
                qt.y0(115, (b13 >> 4) & 1);
                qt.y0(116, (b13 >> 3) & 1);
                qt.y0(117, (b13 >> 2) & 1);
                return;
            }
            return;
        }
        if (b2 == 64) {
            int i10 = nt.f8633a;
            if (i10 == 721335 || i10 == 917943) {
                byte b14 = bArr[i2 + 2];
                byte b15 = bArr[i2 + 3];
                byte b16 = bArr[i2 + 4];
                byte b17 = bArr[i2 + 5];
                byte b18 = bArr[i2 + 6];
                if (b14 == 0) {
                    qt.y0(102, b15 & 255);
                    qt.y0(98, b16 & 255);
                    qt.y0(118, (b17 >> 7) & 1);
                    qt.y0(119, (b17 >> 6) & 1);
                    qt.y0(120, (b17 >> 5) & 1);
                    qt.y0(121, (b17 >> 4) & 1);
                    qt.y0(122, (b18 >> 7) & 1);
                    qt.y0(123, (b18 >> 6) & 1);
                    qt.y0(124, (b18 >> 5) & 1);
                    qt.y0(125, (b18 >> 4) & 1);
                    qt.y0(126, (b18 >> 3) & 1);
                    qt.y0(127, (b18 >> 2) & 1);
                    qt.y0(128, (b18 >> 1) & 1);
                    return;
                }
                if (b14 == 1) {
                    qt.y0(103, b15 & 255);
                    qt.y0(99, b16 & 255);
                    qt.y0(129, (b17 >> 7) & 1);
                    qt.y0(130, (b17 >> 6) & 1);
                    qt.y0(131, (b17 >> 5) & 1);
                    qt.y0(132, (b17 >> 4) & 1);
                    qt.y0(133, (b18 >> 7) & 1);
                    qt.y0(134, (b18 >> 6) & 1);
                    qt.y0(135, (b18 >> 5) & 1);
                    qt.y0(136, (b18 >> 4) & 1);
                    qt.y0(137, (b18 >> 3) & 1);
                    qt.y0(138, (b18 >> 2) & 1);
                    qt.y0(139, (b18 >> 1) & 1);
                    return;
                }
                if (b14 == 2) {
                    qt.y0(104, b15 & 255);
                    qt.y0(100, b16 & 255);
                    qt.y0(140, (b17 >> 7) & 1);
                    qt.y0(141, (b17 >> 6) & 1);
                    qt.y0(142, (b17 >> 5) & 1);
                    qt.y0(143, (b17 >> 4) & 1);
                    qt.y0(144, (b18 >> 7) & 1);
                    qt.y0(145, (b18 >> 6) & 1);
                    qt.y0(146, (b18 >> 5) & 1);
                    qt.y0(147, (b18 >> 4) & 1);
                    qt.y0(148, (b18 >> 3) & 1);
                    qt.y0(149, (b18 >> 2) & 1);
                    qt.y0(150, (b18 >> 1) & 1);
                    return;
                }
                if (b14 != 3) {
                    return;
                }
                qt.y0(105, b15 & 255);
                qt.y0(101, b16 & 255);
                qt.y0(151, (b17 >> 7) & 1);
                qt.y0(152, (b17 >> 6) & 1);
                qt.y0(153, (b17 >> 5) & 1);
                qt.y0(154, (b17 >> 4) & 1);
                qt.y0(155, (b18 >> 7) & 1);
                qt.y0(156, (b18 >> 6) & 1);
                qt.y0(157, (b18 >> 5) & 1);
                qt.y0(158, (b18 >> 4) & 1);
                qt.y0(159, (b18 >> 3) & 1);
                qt.y0(160, (b18 >> 2) & 1);
                qt.y0(161, (b18 >> 1) & 1);
                return;
            }
            return;
        }
        if (b2 == 65) {
            int i11 = i2 + 2;
            qt.y0(162, (bArr[i11] >> 4) & 15);
            qt.y0(163, (bArr[i11] >> 3) & 1);
            qt.y0(164, (bArr[i11] >> 2) & 1);
            return;
        }
        switch (b2) {
            case 32:
                byte b19 = bArr[i2 + 2];
                byte b20 = bArr[i2 + 3];
                this.f11048c = b19 & 255;
                int i12 = 0;
                while (true) {
                    iArr = this.f11049d;
                    if (i12 < iArr.length) {
                        int i13 = this.f11048c;
                        if (i13 != iArr[i12][0]) {
                            i12++;
                        } else if (i13 != 0) {
                            this.f11047b = i12;
                        }
                    }
                }
                if ((b20 & 255) == 0) {
                    int i14 = this.f11047b;
                    if (i14 < iArr.length && i14 != 255) {
                        l0.b0.l0(iArr[i14][1], 1);
                    }
                    this.f11047b = 255;
                } else if (i12 < iArr.length) {
                    l0.b0.l0(iArr[i12][1], 0);
                }
                break;
            case 33:
                byte b21 = bArr[i2 + 2];
                byte b22 = bArr[i2 + 3];
                byte b23 = bArr[i2 + 4];
                byte b24 = bArr[i2 + 5];
                byte b25 = bArr[i2 + 6];
                qt.y0(10, (b21 >> 7) & 1);
                qt.y0(11, (b21 >> 6) & 1);
                qt.y0(12, (b21 >> 5) & 1);
                qt.y0(26, (b21 >> 4) & 1);
                qt.y0(13, (b21 >> 3) & 1);
                qt.y0(14, (b21 >> 2) & 1);
                qt.y0(38, (b21 >> 0) & 1);
                qt.y0(15, (b21 >> 1) & 1);
                qt.y0(18, (b22 >> 7) & 1);
                qt.y0(19, (b22 >> 6) & 1);
                qt.y0(20, (b22 >> 5) & 1);
                qt.y0(21, b22 & DhcpPacket.DHCP_DOMAIN_NAME);
                int i15 = b23 & 255;
                if (i15 == 0) {
                    qt.y0(27, -2);
                } else if (i15 != 31) {
                    qt.y0(27, (i15 * 5) + 175);
                } else {
                    qt.y0(27, -3);
                }
                int i16 = b24 & 255;
                if (i16 == 0) {
                    qt.y0(28, -2);
                } else if (i16 != 127) {
                    qt.y0(28, (i15 * 5) + 175);
                } else {
                    qt.y0(28, -3);
                }
                qt.y0(65, (b25 >> 7) & 1);
                qt.y0(16, (b25 >> 6) & 1);
                qt.y0(54, (b25 >> 5) & 1);
                qt.y0(52, (b25 >> 4) & 1);
                qt.y0(53, (b25 >> 3) & 1);
                int i17 = i2 + 7;
                qt.y0(29, (bArr[i17] >> 4) & 15);
                qt.y0(30, (bArr[i17] >> 0) & 15);
                break;
            case 34:
                u0.d.R2(l0.c0.j1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.j1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.j1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.j1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i18 = i2 + 2;
                int i19 = bArr[i18] & 255;
                int i20 = i2 + 3;
                int i21 = bArr[i20] & 255;
                int i22 = i2 + 4;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 5;
                int i25 = bArr[i24] & 255;
                if (i19 == 0 && i21 == 0 && i23 == 0 && i25 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i19 || l0.c0.f13014h != i21 || l0.c0.f13015i != i23 || l0.c0.f13016j != i25) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i19;
                l0.c0.f13014h = i21;
                l0.c0.f13015i = i23;
                l0.c0.f13016j = i25;
                u0.d.D2(l0.c0.j1(bArr[i18] & 255));
                u0.d.E2(l0.c0.j1(bArr[i20] & 255));
                u0.d.F2(l0.c0.j1(bArr[i22] & 255));
                u0.d.G2(l0.c0.j1(bArr[i24] & 255));
                break;
            case 36:
                byte b26 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b26 >> 7) & 1);
                    qt.y0(2, (b26 >> 6) & 1);
                } else {
                    qt.y0(1, (b26 >> 6) & 1);
                    qt.y0(2, (b26 >> 7) & 1);
                }
                qt.y0(4, (b26 >> 5) & 1);
                qt.y0(3, (b26 >> 4) & 1);
                qt.y0(5, (b26 >> 3) & 1);
                qt.y0(0, (b26 >> 2) & 1);
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
        if (i2 < 0 || i2 >= 166) {
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
            z.k.s(227, -57, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
            return;
        }
        if (i2 == 1 && iArr != null && iArr.length > 0) {
            z.k.s(227, -58, 2, iArr[0], iArr[1]);
        }
    }
}

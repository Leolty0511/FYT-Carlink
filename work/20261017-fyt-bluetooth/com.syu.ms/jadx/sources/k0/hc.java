package k0;

import android.content.ComponentName;
import android.content.Intent;
import android.hardware.Camera;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class hc extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5892c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5893d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f5898i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5891b = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5894e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f5895f = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{1, 25}, new int[]{2, 3}, new int[]{3, 4}, new int[]{5, 38}, new int[]{6, 6}, new int[]{7, 21}, new int[]{8, 22}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 11}, new int[]{17, 11}, new int[]{18, 1}, new int[]{19, 56}, new int[]{20, 2}, new int[]{21, 39}, new int[]{22, 5}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 33}, new int[]{26, 32}, new int[]{27, 16}, new int[]{28, 33}, new int[]{29, 32}, new int[]{52, 33}, new int[]{53, 32}, new int[]{64, 53}, new int[]{80, 5}, new int[]{81, 2}, new int[]{82, 36}, new int[]{83, 5}, new int[]{84, 2}, new int[]{85, 1}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f5896g = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 27}, new int[]{132, 28}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{1, 41}, new int[]{2, 12}, new int[]{3, 6}, new int[]{5, 24}, new int[]{6, 4}, new int[]{7, 0}, new int[]{9, 1}, new int[]{10, 42}, new int[]{11, 43}, new int[]{12, 44}, new int[]{13, 45}, new int[]{16, 39}, new int[]{17, 11}, new int[]{20, 38}, new int[]{21, 40}, new int[]{22, 3}, new int[]{27, 36}, new int[]{54, 22}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f5897h = {new int[]{129, 33}, new int[]{130, 32}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 13}, new int[]{134, 18}, new int[]{135, 26}, new int[]{1, 4}, new int[]{2, 44}, new int[]{3, 43}, new int[]{4, 42}, new int[]{5, 0}, new int[]{6, 1}, new int[]{7, 39}, new int[]{7, 40}, new int[]{9, 41}, new int[]{10, 3}, new int[]{12, 6}, new int[]{13, 38}, new int[]{14, 11}, new int[]{15, 11}, new int[]{18, 13}, new int[]{19, 36}, new int[]{20, 24}, new int[]{21, 12}, new int[]{22, 45}, new int[]{23, 33}, new int[]{24, 32}, new int[]{25, 27}, new int[]{52, 27}, new int[]{26, 28}, new int[]{53, 28}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f5899j = false;

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
        mtVar.f8320o = 1;
        b3();
    }

    /* JADX WARN: Code duplicated, block: B:216:0x088c  */
    /* JADX WARN: Code duplicated, block: B:230:0x08e1  */
    /* JADX WARN: Code duplicated, block: B:295:0x0a07  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        byte b2 = bArr[i2];
        if (b2 != 1) {
            if (b2 == 2) {
                int i9 = i2 + 2;
                int i10 = bArr[i9] & 255;
                int i11 = i2 + 3;
                if ((bArr[i11] & 255) == 1 && i10 == 4) {
                    o1.u.v();
                }
                if (nt.a()) {
                    byte b3 = bArr[i9];
                    byte b4 = bArr[i11];
                    this.f5894e = b3 & 255;
                    int i12 = 0;
                    while (true) {
                        iArr2 = this.f5895f;
                        if (i12 >= iArr2.length) {
                            break;
                        }
                        int i13 = this.f5894e;
                        if (i13 == iArr2[i12][0]) {
                            if (i13 == 0) {
                                break;
                            }
                            this.f5893d = i12;
                            break;
                        }
                        i12++;
                    }
                    if ((b4 & 255) != 0) {
                        if (i12 < iArr2.length) {
                            l0.b0.l0(iArr2[i12][1], 0);
                        }
                    } else if (i12 <= iArr2.length) {
                        l0.b0.l0(iArr2[this.f5893d][1], 1);
                    }
                }
            } else if (b2 == 3) {
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                int i14 = i2 + 4;
                byte b7 = bArr[i14];
                int i15 = i2 + 5;
                byte b8 = bArr[i15];
                byte b9 = bArr[i2 + 6];
                qt.y0(10, (b5 >> 7) & 1);
                qt.y0(11, (b5 >> 6) & 1);
                int[] iArr3 = new int[1];
                iArr3[0] = ((b5 >> 5) & 1) == 0 ? 1 : 0;
                qt.y0(12, iArr3);
                qt.y0(16, (b5 >> 4) & 1);
                qt.y0(54, (b5 >> 3) & 1);
                int i16 = (b6 >> 4) & 1;
                if (i16 == 0) {
                    qt.y0(21, b5 & 7);
                } else if (i16 == 1) {
                    qt.y0(21, 8);
                }
                qt.y0(52, (b6 >> 6) & 1);
                qt.y0(62, (b6 >> 5) & 1);
                switch (b6 & DhcpPacket.DHCP_DOMAIN_NAME & 255) {
                    case 1:
                        i4 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        i8 = 1;
                        break;
                    case 2:
                        i8 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        i4 = 1;
                        break;
                    case 3:
                        i8 = 0;
                        i4 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 1;
                        break;
                    case 4:
                        i8 = 0;
                        i4 = 0;
                        i5 = 0;
                        i6 = 1;
                        i7 = i6;
                        break;
                    case 5:
                        i8 = 0;
                        i4 = 0;
                        i5 = 0;
                        i7 = 0;
                        i6 = 1;
                        break;
                    case 6:
                        i8 = 0;
                        i4 = 0;
                        i7 = 0;
                        i5 = 1;
                        i6 = 1;
                        break;
                    case 7:
                        i8 = 0;
                        i4 = 0;
                        i6 = 0;
                        i7 = 0;
                        i5 = 1;
                        break;
                    case 8:
                        i8 = 0;
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                        i7 = 1;
                        break;
                    case 9:
                        i8 = 0;
                        i4 = 0;
                        i5 = 1;
                        i6 = i5;
                        i7 = i6;
                        break;
                    default:
                        i8 = 0;
                        i4 = 0;
                        i5 = 0;
                        i6 = i5;
                        i7 = i6;
                        break;
                }
                qt.y0(49, i8);
                qt.y0(15, i4);
                qt.y0(18, i5);
                qt.y0(19, i6);
                qt.y0(20, i7);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b7 = bArr[i15];
                    b8 = bArr[i14];
                }
                int i17 = 255;
                int i18 = b7 & 255;
                if (i18 == 0) {
                    qt.y0(27, i18);
                    i17 = 255;
                } else if (i18 != 255) {
                    switch (i18) {
                        case 29:
                            qt.y0(27, 160);
                            break;
                        case 30:
                            qt.y0(27, i18);
                            break;
                        case 31:
                            qt.y0(27, 165);
                            break;
                        case 32:
                            qt.y0(27, 150);
                            break;
                        case 33:
                            qt.y0(27, 155);
                            break;
                        case 34:
                            qt.y0(27, 310);
                            break;
                        default:
                            if (i18 >= 1 && i18 <= 28) {
                                qt.y0(27, (i18 * 5) + 165);
                            }
                            break;
                    }
                    i17 = 255;
                }
                int i19 = b8 & 255;
                if (i19 == 0) {
                    qt.y0(28, i19);
                } else if (i19 != i17) {
                    switch (i19) {
                        case 29:
                            qt.y0(28, 160);
                            break;
                        case 30:
                            qt.y0(28, i19);
                            break;
                        case 31:
                            qt.y0(28, 165);
                            break;
                        case 32:
                            qt.y0(28, 150);
                            break;
                        case 33:
                            qt.y0(28, 155);
                            break;
                        case 34:
                            qt.y0(28, 310);
                            break;
                        default:
                            if (i19 >= 1 && i19 <= 28) {
                                qt.y0(28, (i19 * 5) + 165);
                            }
                            break;
                    }
                }
                qt.y0(29, (b9 >> 4) & 15);
                qt.y0(30, b9 & DhcpPacket.DHCP_DOMAIN_NAME);
                if (nt.a()) {
                    byte b10 = bArr[i2 + 7];
                    u0.d.A3((b10 & 128) > 0 ? 1000 - ((((~(b10 & 255)) + 1) & 255) * 10) : ((b10 & 255) * 10) + 1000);
                }
                qt.y0(13, (bArr[i2 + 8] >> 0) & 1);
            } else if (b2 == 5) {
                byte b11 = bArr[i2 + 2];
                byte b12 = bArr[i2 + 3];
                qt.y0(97, (b11 >> 6) & 3);
                qt.y0(98, (b11 >> 4) & 3);
                qt.y0(99, (b11 >> 2) & 3);
                qt.y0(100, (b11 >> 1) & 1);
                qt.y0(101, b11 & 1);
                qt.y0(102, (b12 >> 3) & 1);
                qt.y0(103, b12 & 3);
            } else if (b2 == 6) {
                byte b13 = bArr[i2 + 2];
                byte b14 = bArr[i2 + 3];
                qt.y0(104, (b13 >> 7) & 1);
                qt.y0(105, (b13 >> 5) & 3);
                qt.y0(106, (b13 >> 4) & 1);
                qt.y0(107, (b13 >> 3) & 1);
                qt.y0(108, (b13 >> 1) & 3);
                qt.y0(109, b13 & 1);
                qt.y0(110, (b14 >> 7) & 1);
                qt.y0(111, (b14 >> 5) & 3);
                qt.y0(112, (b14 >> 4) & 1);
                qt.y0(113, (b14 >> 3) & 1);
                qt.y0(114, b14 & 1);
            } else if (b2 == 13) {
                qt.y0(131, bArr[i2 + 2]);
            } else if (b2 == 26) {
                byte b15 = bArr[i2 + 2];
                byte b16 = bArr[i2 + 3];
                int i20 = b15 & 255;
                if (i20 == 0) {
                    qt.y0(154, b16 & 1);
                    qt.y0(155, (b16 >> 1) & 1);
                    qt.y0(156, (b16 >> 2) & 1);
                    qt.y0(157, (b16 >> 3) & 1);
                    qt.y0(158, (b16 >> 4) & 1);
                    qt.y0(159, (b16 >> 5) & 1);
                    qt.y0(160, (b16 >> 6) & 1);
                    qt.y0(161, (b16 >> 7) & 1);
                } else if (i20 == 1) {
                    qt.y0(162, (b16 & 1) == 0 ? 0 : 1);
                    qt.y0(163, ((b16 >> 1) & 1) == 0 ? 0 : 1);
                    qt.y0(186, ((b16 >> 2) & 1) == 0 ? 0 : 1);
                } else if (i20 == 2) {
                    qt.y0(164, (b16 & 1) == 0 ? 0 : 1);
                    qt.y0(165, ((b16 >> 1) & 1) == 0 ? 0 : 1);
                    qt.y0(166, ((b16 >> 2) & 1) == 0 ? 0 : 1);
                    qt.y0(167, ((b16 >> 3) & 1) == 0 ? 0 : 1);
                    qt.y0(168, ((b16 >> 4) & 1) == 0 ? 0 : 1);
                    qt.y0(169, ((b16 >> 5) & 1) == 0 ? 0 : 1);
                    qt.y0(170, ((b16 >> 6) & 1) == 0 ? 0 : 1);
                } else if (i20 == 3) {
                    qt.y0(171, (b16 & 1) == 0 ? 0 : 1);
                    qt.y0(172, ((b16 >> 1) & 1) == 0 ? 0 : 1);
                } else if (i20 == 4) {
                    qt.y0(173, (b16 & 1) == 0 ? 0 : 1);
                    qt.y0(174, ((b16 >> 1) & 1) == 0 ? 0 : 1);
                    qt.y0(175, ((b16 >> 2) & 1) == 0 ? 0 : 1);
                    qt.y0(172, ((b16 >> 3) & 1) == 0 ? 0 : 1);
                } else if (i20 == 5) {
                    qt.y0(177, (b16 & 1) == 0 ? 0 : 1);
                    qt.y0(178, ((b16 >> 1) & 1) == 0 ? 0 : 1);
                    qt.y0(179, ((b16 >> 2) & 1) == 0 ? 0 : 1);
                    qt.y0(180, ((b16 >> 3) & 1) == 0 ? 0 : 1);
                    qt.y0(181, ((b16 >> 4) & 1) == 0 ? 0 : 1);
                    qt.y0(182, ((b16 >> 5) & 1) == 0 ? 0 : 1);
                    qt.y0(183, ((b16 >> 6) & 1) == 0 ? 0 : 1);
                }
            } else if (b2 != 38) {
                if (b2 != 70) {
                    if (b2 != 125) {
                        switch (b2) {
                            case 8:
                                d3(bArr, i2 + 2, i3 - 2);
                                break;
                            case 9:
                                if (nt.R != 0) {
                                    e3(bArr[i2 + 2]);
                                }
                                break;
                            case 10:
                                byte b17 = bArr[i2 + 2];
                                byte b18 = bArr[i2 + 3];
                                byte b19 = bArr[i2 + 4];
                                qt.y0(117, (b17 >> 7) & 1);
                                qt.y0(118, (b17 >> 6) & 1);
                                qt.y0(119, (b17 >> 5) & 1);
                                qt.y0(120, (b17 >> 4) & 1);
                                int i21 = (b18 >> 4) & 1;
                                qt.y0(121, i21);
                                qt.y0(128, (b19 >> 4) & 1);
                                int i22 = b18 >> 6;
                                qt.y0(185, i22 & 3);
                                qt.y0(126, (b19 >> 1) & 1);
                                qt.y0(122, (b17 >> 2) & 1);
                                qt.y0(123, b17 & 3);
                                qt.y0(124, (b18 >> 7) & 1);
                                qt.y0(125, i22 & 1);
                                qt.y0(127, i21);
                                qt.y0(129, (b19 >> 5) & 1);
                                break;
                            case 11:
                                qt.y0(130, (((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255)) / 16);
                                break;
                            default:
                                switch (b2) {
                                    case 34:
                                        if (nt.a()) {
                                            u0.d.R2(a3(bArr[i2 + 2] & 255));
                                            u0.d.S2(a3(bArr[i2 + 3] & 255));
                                            u0.d.T2(a3(bArr[i2 + 4] & 255));
                                            u0.d.U2(a3(bArr[i2 + 5] & 255));
                                        }
                                        break;
                                    case 35:
                                        if (nt.a()) {
                                            u0.d.D2(a3(bArr[i2 + 2] & 255));
                                            u0.d.E2(a3(bArr[i2 + 3] & 255));
                                            u0.d.F2(a3(bArr[i2 + 4] & 255));
                                            u0.d.G2(a3(bArr[i2 + 5] & 255));
                                        }
                                        break;
                                    case 36:
                                        byte b20 = bArr[i2 + 2];
                                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                                            qt.y0(2, (b20 >> 6) & 1);
                                            qt.y0(1, (b20 >> 7) & 1);
                                        } else {
                                            qt.y0(2, (b20 >> 7) & 1);
                                            qt.y0(1, (b20 >> 6) & 1);
                                        }
                                        qt.y0(4, (b20 >> 5) & 1);
                                        qt.y0(3, (b20 >> 4) & 1);
                                        qt.y0(5, (b20 >> 3) & 1);
                                        break;
                                    default:
                                        switch (b2) {
                                            case 49:
                                                byte b21 = bArr[i2 + 3];
                                                byte b22 = bArr[i2 + 4];
                                                byte b23 = bArr[i2 + 6];
                                                byte b24 = bArr[i2 + 7];
                                                byte b25 = bArr[i2 + 8];
                                                byte b26 = bArr[i2 + 9];
                                                qt.y0(132, b21 & 255);
                                                int i23 = (b22 >> 7) & 1;
                                                int i24 = b22 & 127;
                                                if (i23 == 1) {
                                                    i24 = 255 - i24;
                                                }
                                                qt.y0(133, i24);
                                                qt.y0(134, ((b23 & 255) << 24) | ((b24 & 255) << 16) | ((b25 & 255) << 8) | (b26 & 255));
                                                break;
                                            case 50:
                                                byte b27 = bArr[i2 + 2];
                                                byte b28 = bArr[i2 + 3];
                                                byte b29 = bArr[i2 + 4];
                                                byte b30 = bArr[i2 + 5];
                                                byte b31 = bArr[i2 + 6];
                                                int i25 = ((b27 & 255) << 8) | (b28 & 255);
                                                qt.y0(135, i25);
                                                qt.y0(1032, i25);
                                                qt.y0(136, ((b29 & 255) << 8) | (b30 & 255));
                                                qt.y0(137, b31 & 255);
                                                break;
                                            case 51:
                                                int i26 = i2 + 2;
                                                byte b32 = bArr[i26];
                                                byte b33 = bArr[i26 + 1];
                                                byte b34 = bArr[i26 + 2];
                                                byte b35 = bArr[i26 + 3];
                                                byte b36 = bArr[i26 + 4];
                                                byte b37 = bArr[i26 + 5];
                                                byte b38 = bArr[i26 + 6];
                                                byte b39 = bArr[i26 + 7];
                                                byte b40 = bArr[i26 + 10];
                                                byte b41 = bArr[i26 + 11];
                                                byte b42 = bArr[i26 + 12];
                                                byte b43 = bArr[i26 + 13];
                                                qt.y0(138, ((b32 & 255) << 8) | (b33 & 255));
                                                qt.y0(139, ((b34 & 255) << 8) | (b35 & 255));
                                                qt.y0(140, ((b36 & 255) << 8) | (b37 & 255));
                                                qt.y0(141, ((b38 & 255) << 8) | (b39 & 255));
                                                qt.y0(142, b40 & 1);
                                                qt.y0(143, (b40 >> 1) & 1);
                                                qt.y0(144, (b40 >> 2) & 1);
                                                qt.y0(145, b41 & 1);
                                                qt.y0(146, (b41 >> 1) & 1);
                                                qt.y0(147, (b41 >> 2) & 1);
                                                qt.y0(148, b42 & 1);
                                                qt.y0(149, (b42 >> 1) & 1);
                                                qt.y0(150, (b42 >> 2) & 1);
                                                qt.y0(151, b43 & 1);
                                                qt.y0(152, (b43 >> 1) & 1);
                                                qt.y0(153, (b43 >> 2) & 1);
                                                break;
                                            default:
                                                switch (b2) {
                                                    case 65:
                                                        o1.x.A(nt.f8643f, 187, c3(bArr, i2 + 2, i3 - 2));
                                                        break;
                                                    case 66:
                                                        o1.x.A(nt.f8643f, 188, c3(bArr, i2 + 2, i3 - 2));
                                                        break;
                                                    case 67:
                                                        qt.y0(189, (bArr[i2 + 2] >> 7) & 1);
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                    } else {
                        int i27 = bArr[i2 + 2] & 255;
                        if (i27 != 1) {
                            if (i27 == 3) {
                                int i28 = (((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255)) / 100;
                                qt.y0(1031, i28);
                                o1.x.C(nt.f8643f, 1049, new int[]{1, i28}, null, null);
                            } else if (i27 == 8) {
                                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                                this.f5899j = true;
                            }
                        } else if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                            int i29 = i2 + 3;
                            l0.c0.b((bArr[i29] >> 3) & 1, (bArr[i29] >> 4) & 1, 0);
                        } else {
                            int i30 = i2 + 3;
                            l0.c0.a((bArr[i30] >> 3) & 1, (bArr[i30] >> 4) & 1, 0);
                        }
                    }
                } else if (bArr[i2 + 2] == 1) {
                    o1.x.C(nt.f8643f, 190, new int[]{1}, null, null);
                }
            } else if (!this.f5899j) {
                qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 7700);
            }
        } else if (nt.a()) {
            byte b44 = bArr[i2 + 2];
            byte b45 = bArr[i2 + 3];
            this.f5894e = (b44 | 128) & 255;
            int i31 = 0;
            while (true) {
                iArr = this.f5895f;
                if (i31 >= iArr.length) {
                    break;
                }
                int i32 = this.f5894e;
                if (i32 == iArr[i31][0]) {
                    if (i32 == 0) {
                        break;
                    }
                    this.f5893d = i31;
                    break;
                }
                i31++;
            }
            int i33 = this.f5894e;
            if (i33 != 134) {
                if (i33 != 135) {
                    int i34 = b45 & 255;
                    if (i34 == 1) {
                        if (i31 < iArr.length) {
                            l0.b0.l0(iArr[i31][1], 0);
                        }
                    } else if (i34 == 0) {
                        int i35 = this.f5893d;
                        if (i35 < iArr.length && i35 != 255) {
                            l0.b0.l0(iArr[i35][1], 1);
                        }
                        this.f5893d = 255;
                    }
                } else if ((b45 & 255) == 1) {
                    int i36 = h0.c.E;
                    if (i36 == 3) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else if (i36 == 4) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    } else if (i36 != 5) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    } else {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    }
                }
            } else if ((255 & b45) == 1) {
                if (h0.c.E != 4) {
                    l0.b0.l0(13, 0);
                    l0.b0.l0(13, 1);
                } else {
                    l0.b0.l0(18, 0);
                    l0.b0.l0(18, 1);
                }
            }
        }
        super.U2(bArr, i2, i3);
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 191) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1) {
            if (T2(iArr, 2)) {
                z.k.s(227, 130, 2, iArr[0], iArr[1]);
            }
            return;
        }
        if (i2 == 96) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 135, 1, iArr[0]);
            return;
        }
        switch (i2) {
            case 3:
                if (T2(iArr, 2)) {
                    z.k.s(227, 131, 2, iArr[0], iArr[1]);
                }
                break;
            case 4:
                if (T2(iArr, 1)) {
                    z.k.s(227, 132, 1, iArr[0]);
                }
                break;
            case 5:
                if (T2(iArr, 1)) {
                    z.k.s(227, 133, 1, iArr[0]);
                }
                break;
            case 6:
                f3(134, (byte) 10, iArr);
                break;
            case 7:
                if (T2(iArr, 1)) {
                    z.k.s(227, 136, 1, iArr[0]);
                }
                break;
            case 8:
                if (T2(iArr, 1)) {
                    z.k.s(227, 144, 1, iArr[0]);
                }
                break;
            case 9:
                if (T2(iArr, 1)) {
                    z.k.s(227, 139, 1, iArr[0]);
                }
                break;
        }
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 10;
        }
        return ((i2 * 10) / 7) - 1;
    }

    public final void b3() {
        qt.y0(154, 1);
        qt.y0(155, 1);
        qt.y0(156, 1);
        qt.y0(157, 1);
        qt.y0(158, 1);
        qt.y0(159, 1);
        qt.y0(160, 1);
        qt.y0(161, 1);
        qt.y0(162, 1);
        qt.y0(163, 1);
        qt.y0(164, 1);
        qt.y0(165, 1);
        qt.y0(166, 1);
        qt.y0(167, 1);
        qt.y0(168, 1);
        qt.y0(169, 1);
        qt.y0(170, 1);
        qt.y0(171, 1);
        qt.y0(172, 1);
        qt.y0(173, 1);
        qt.y0(174, 1);
        qt.y0(175, 1);
        qt.y0(172, 1);
        qt.y0(177, 1);
        qt.y0(178, 1);
        qt.y0(179, 1);
        qt.y0(180, 1);
        qt.y0(181, 1);
        qt.y0(182, 1);
        qt.y0(183, 1);
    }

    public final String c3(byte[] bArr, int i2, int i3) {
        int i4 = 0;
        while (i4 < i3 && bArr[i4 + i2] != 0) {
            i4++;
        }
        return new String(bArr, i2, i4);
    }

    public final void d3(byte[] bArr, int i2, int i3) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 + i4;
            int i6 = ((bArr[i5] & 240) >> 4) & 255;
            if (i6 == 15) {
                break;
            }
            if (i6 > -1 && i6 < 10) {
                stringBuffer.append((char) (i6 + 48));
            } else if (i6 == 10) {
                stringBuffer.append('*');
            } else if (i6 == 11) {
                stringBuffer.append('#');
            }
            int i7 = bArr[i5] & DhcpPacket.DHCP_DOMAIN_NAME & 255;
            if (i7 == 15) {
                break;
            }
            if (i7 > -1 && i7 < 10) {
                stringBuffer.append((char) (i7 + 48));
            } else if (i7 == 10) {
                stringBuffer.append('*');
            } else if (i7 == 11) {
                stringBuffer.append('#');
            }
        }
        String string = stringBuffer.toString();
        if (qt.B0(115, string, this.f5898i)) {
            this.f5898i = string;
        }
    }

    public final void e3(int i2) {
        int i3;
        qt.y0(116, i2);
        if (i2 == 0) {
            if (this.f5891b == 1 && (i3 = this.f5892c) != 12) {
                u0.b.f17311c.c(i3);
            }
            this.f5891b = 0;
            return;
        }
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
            int i4 = h0.c.G;
            if (i4 != 0 || this.f5891b != 0) {
                if (i4 == 0 || this.f5891b != 0) {
                    return;
                }
                z.k.s(227, 186, 2, 3, 0);
                return;
            }
            this.f5891b = 1;
            this.f5892c = u0.b.D;
            if (u0.b.f17332j != 0) {
                u0.d.M(0);
            }
            if (u0.b.D == 12 && this.f5891b != 0 && y0.f.f18055i != 0) {
                y0.h.u0(-4);
            }
            if (u0.b.D != 12) {
                u0.b.f17311c.c(12);
            }
            if (o1.u.S(u0.b.J1)) {
                App.c().sendOrderedBroadcast(new Intent("com.syu.onstar.xp.yinglang.showpip"), "com.syu.canbus");
                return;
            }
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.syu.canbus", "com.syu.carinfo.xp.yinglang.YLOnStarAct"));
            intent.putExtra("onstar", Camera.Parameters.FLASH_MODE_ON);
            intent.setFlags((intent.getFlags() & (-2097153)) | 268435456);
            try {
                App.c().startActivity(intent);
            } catch (Exception unused) {
            }
        }
    }

    public final void f3(int i2, byte b2, int... iArr) {
        int[] iArr2 = new int[13];
        iArr2[0] = -29;
        iArr2[1] = -122;
        iArr2[2] = 10;
        int length = iArr.length;
        int i3 = length <= 10 ? length : 10;
        for (int i4 = 0; i4 < i3; i4++) {
            iArr2[3 + i4] = (byte) (iArr[i4] & 255);
        }
        for (int i5 = 3 + i3; i5 < 13; i5++) {
            iArr2[i5] = 0;
        }
        z.k.s(iArr2);
    }
}

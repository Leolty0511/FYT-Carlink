package k0;

import android.content.ComponentName;
import android.content.Intent;
import android.hardware.Camera;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ua extends lt {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10978d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10979e;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f10985k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10976b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10977c = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10980f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f10981g = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 3}, new int[]{132, 4}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{136, 13}, new int[]{137, 12}, new int[]{1, 25}, new int[]{2, 3}, new int[]{3, 4}, new int[]{5, 38}, new int[]{6, 6}, new int[]{7, 21}, new int[]{8, 22}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 11}, new int[]{17, 11}, new int[]{18, 1}, new int[]{19, 56}, new int[]{20, 2}, new int[]{21, 39}, new int[]{22, 5}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 33}, new int[]{26, 32}, new int[]{27, 16}, new int[]{28, 35}, new int[]{29, 34}, new int[]{52, 33}, new int[]{53, 32}, new int[]{64, 53}, new int[]{80, 5}, new int[]{81, 2}, new int[]{82, 36}, new int[]{84, 2}, new int[]{85, 1}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f10982h = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 27}, new int[]{132, 28}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{1, 41}, new int[]{2, 12}, new int[]{3, 6}, new int[]{5, 24}, new int[]{6, 4}, new int[]{7, 0}, new int[]{9, 1}, new int[]{10, 42}, new int[]{11, 43}, new int[]{12, 44}, new int[]{13, 45}, new int[]{16, 39}, new int[]{17, 11}, new int[]{20, 38}, new int[]{21, 40}, new int[]{22, 3}, new int[]{27, 36}, new int[]{54, 22}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f10983i = {new int[]{129, 33}, new int[]{130, 32}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 13}, new int[]{134, 18}, new int[]{135, 26}, new int[]{1, 4}, new int[]{2, 44}, new int[]{3, 43}, new int[]{4, 42}, new int[]{5, 0}, new int[]{6, 1}, new int[]{7, 39}, new int[]{7, 40}, new int[]{9, 41}, new int[]{10, 3}, new int[]{12, 6}, new int[]{13, 38}, new int[]{14, 11}, new int[]{15, 11}, new int[]{18, 13}, new int[]{19, 36}, new int[]{20, 24}, new int[]{21, 12}, new int[]{22, 45}, new int[]{23, 33}, new int[]{24, 32}, new int[]{25, 27}, new int[]{52, 27}, new int[]{26, 28}, new int[]{53, 28}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f10984j = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 1, 38);
            }
        }
    }

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
        mtVar.f8314i = 0;
        mtVar.f8320o = 1;
        if (nt.a()) {
            u0.c.f17379f.a(this.f10984j, 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:189:0x07d8  */
    /* JADX WARN: Code duplicated, block: B:202:0x082d  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int[][] iArr4;
        int[][] iArr5;
        int[][] iArr6;
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
                    this.f10980f = b3 & 255;
                    int i12 = nt.f8633a;
                    if (i12 == 253 || i12 == 262462 || i12 == 327998 || i12 == 131097) {
                        int i13 = 0;
                        while (true) {
                            iArr4 = this.f10981g;
                            if (i13 >= iArr4.length) {
                                break;
                            }
                            int i14 = this.f10980f;
                            if (i14 == iArr4[i13][0]) {
                                if (i14 == 0) {
                                    break;
                                }
                                this.f10979e = i13;
                                break;
                            }
                            i13++;
                        }
                        if ((b4 & 255) != 0) {
                            if (i13 < iArr4.length) {
                                l0.b0.l0(iArr4[i13][1], 0);
                            }
                        } else if (i13 <= iArr4.length) {
                            l0.b0.l0(iArr4[this.f10979e][1], 1);
                        }
                    } else if (i12 == 65561) {
                        int i15 = 0;
                        while (true) {
                            iArr6 = this.f10982h;
                            if (i15 >= iArr6.length) {
                                break;
                            }
                            int i16 = this.f10980f;
                            if (i16 == iArr6[i15][0]) {
                                if (i16 == 0) {
                                    break;
                                }
                                this.f10979e = i15;
                                break;
                            }
                            i15++;
                        }
                        if ((b4 & 255) != 0) {
                            if (i15 < iArr6.length) {
                                l0.b0.l0(iArr6[i15][1], 0);
                            }
                        } else if (i15 <= iArr6.length) {
                            l0.b0.l0(iArr6[this.f10979e][1], 1);
                        }
                    } else if (i12 == 196633 || i12 == 393241) {
                        int i17 = 0;
                        while (true) {
                            iArr5 = this.f10983i;
                            if (i17 >= iArr5.length) {
                                break;
                            }
                            int i18 = this.f10980f;
                            if (i18 == iArr5[i17][0]) {
                                if (i18 == 0) {
                                    break;
                                }
                                this.f10979e = i17;
                                break;
                            }
                            i17++;
                        }
                        if ((b4 & 255) != 0) {
                            if (i17 < iArr5.length) {
                                l0.b0.l0(iArr5[i17][1], 0);
                            }
                        } else if (i17 <= iArr5.length) {
                            l0.b0.l0(iArr5[this.f10979e][1], 1);
                        }
                    }
                }
            } else if (b2 == 3) {
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                int i19 = i2 + 4;
                byte b7 = bArr[i19];
                int i20 = i2 + 5;
                byte b8 = bArr[i20];
                byte b9 = bArr[i2 + 6];
                qt.y0(10, (b5 >> 7) & 1);
                qt.y0(11, (b5 >> 6) & 1);
                qt.y0(12, (b5 >> 5) & 1);
                qt.y0(16, (b5 >> 4) & 1);
                qt.y0(54, (b5 >> 3) & 1);
                int i21 = (b6 >> 4) & 1;
                if (i21 == 0) {
                    qt.y0(21, b5 & 7);
                } else if (i21 == 1) {
                    qt.y0(21, 8);
                }
                qt.y0(52, (b6 >> 6) & 1);
                int i22 = b6 & DhcpPacket.DHCP_DOMAIN_NAME & 255;
                switch (i22) {
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
                qt.y0(77, i22);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b7 = bArr[i20];
                    b8 = bArr[i19];
                }
                int i23 = b7 & 255;
                if (i23 != 0 && i23 != 255) {
                    switch (i23) {
                        case 29:
                            qt.y0(27, 160);
                            break;
                        case 30:
                            qt.y0(27, i23);
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
                            if (i23 >= 1 && i23 <= 28) {
                                qt.y0(27, (i23 * 5) + 165);
                            }
                            break;
                    }
                } else {
                    qt.y0(27, i23);
                }
                int i24 = b8 & 255;
                if (i24 != 0 && i24 != 255) {
                    switch (i24) {
                        case 29:
                            qt.y0(28, 160);
                            break;
                        case 30:
                            qt.y0(28, i24);
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
                            if (i24 >= 1 && i24 <= 28) {
                                qt.y0(28, (i24 * 5) + 165);
                            }
                            break;
                    }
                } else {
                    qt.y0(28, i24);
                }
                qt.y0(29, (b9 >> 4) & 15);
                qt.y0(30, b9 & DhcpPacket.DHCP_DOMAIN_NAME);
                if (nt.a()) {
                    byte b10 = bArr[i2 + 7];
                    u0.d.A3((b10 & 128) > 0 ? 1000 - ((((~(b10 & 255)) + 1) & 255) * 10) : ((b10 & 255) * 10) + 1000);
                }
            } else if (b2 == 13) {
                qt.y0(131, bArr[i2 + 2]);
            } else if (b2 == 26) {
                byte b11 = bArr[i2 + 2];
                byte b12 = bArr[i2 + 3];
                int i25 = b11 & 255;
                if (i25 == 0) {
                    qt.y0(154, b12 & 1);
                    qt.y0(155, (b12 >> 1) & 1);
                    qt.y0(156, (b12 >> 2) & 1);
                    qt.y0(157, (b12 >> 3) & 1);
                    qt.y0(158, (b12 >> 4) & 1);
                    qt.y0(159, (b12 >> 5) & 1);
                    qt.y0(160, (b12 >> 6) & 1);
                    qt.y0(161, (b12 >> 7) & 1);
                } else if (i25 == 1) {
                    qt.y0(162, (b12 & 1) == 0 ? 0 : 1);
                    qt.y0(163, ((b12 >> 1) & 1) == 0 ? 0 : 1);
                    qt.y0(186, ((b12 >> 2) & 1) == 0 ? 0 : 1);
                } else if (i25 == 2) {
                    qt.y0(164, (b12 & 1) == 0 ? 0 : 1);
                    qt.y0(165, ((b12 >> 1) & 1) == 0 ? 0 : 1);
                    qt.y0(166, ((b12 >> 2) & 1) == 0 ? 0 : 1);
                    qt.y0(167, ((b12 >> 3) & 1) == 0 ? 0 : 1);
                    qt.y0(168, ((b12 >> 4) & 1) == 0 ? 0 : 1);
                    qt.y0(169, ((b12 >> 5) & 1) == 0 ? 0 : 1);
                    qt.y0(170, ((b12 >> 6) & 1) == 0 ? 0 : 1);
                } else if (i25 == 3) {
                    qt.y0(171, (b12 & 1) == 0 ? 0 : 1);
                    qt.y0(172, ((b12 >> 1) & 1) == 0 ? 0 : 1);
                } else if (i25 == 4) {
                    qt.y0(173, (b12 & 1) == 0 ? 0 : 1);
                    qt.y0(174, ((b12 >> 1) & 1) == 0 ? 0 : 1);
                    qt.y0(175, ((b12 >> 2) & 1) == 0 ? 0 : 1);
                    qt.y0(172, ((b12 >> 3) & 1) == 0 ? 0 : 1);
                } else if (i25 == 5) {
                    qt.y0(177, (b12 & 1) == 0 ? 0 : 1);
                    qt.y0(178, ((b12 >> 1) & 1) == 0 ? 0 : 1);
                    qt.y0(179, ((b12 >> 2) & 1) == 0 ? 0 : 1);
                    qt.y0(180, ((b12 >> 3) & 1) == 0 ? 0 : 1);
                    qt.y0(181, ((b12 >> 4) & 1) == 0 ? 0 : 1);
                    qt.y0(182, ((b12 >> 5) & 1) == 0 ? 0 : 1);
                    qt.y0(183, ((b12 >> 6) & 1) == 0 ? 0 : 1);
                }
            } else if (b2 != 38) {
                switch (b2) {
                    case 5:
                        byte b13 = bArr[i2 + 2];
                        byte b14 = bArr[i2 + 3];
                        qt.y0(97, (b13 >> 6) & 3);
                        qt.y0(98, (b13 >> 4) & 3);
                        qt.y0(99, (b13 >> 2) & 3);
                        qt.y0(100, (b13 >> 1) & 1);
                        qt.y0(101, b13 & 1);
                        if (((b14 >> 6) & 1) == 0) {
                            qt.y0(102, (b14 >> 3) & 1);
                        } else {
                            qt.y0(102, (b14 >> 4) & 3);
                        }
                        qt.y0(103, b14 & 3);
                        break;
                    case 6:
                        byte b15 = bArr[i2 + 2];
                        byte b16 = bArr[i2 + 3];
                        qt.y0(104, (b15 >> 7) & 1);
                        qt.y0(105, (b15 >> 5) & 3);
                        qt.y0(106, (b15 >> 4) & 1);
                        qt.y0(107, (b15 >> 3) & 1);
                        qt.y0(108, (b15 >> 1) & 3);
                        qt.y0(109, b15 & 1);
                        qt.y0(110, (b16 >> 7) & 1);
                        qt.y0(111, (b16 >> 5) & 3);
                        qt.y0(112, (b16 >> 4) & 1);
                        qt.y0(113, (b16 >> 3) & 1);
                        qt.y0(114, b16 & 1);
                        break;
                    case 7:
                        qt.y0(184, bArr[i2 + 2] & 1);
                        break;
                    case 8:
                        b3(bArr, i2 + 2, i3 - 2);
                        break;
                    case 9:
                        c3(bArr[i2 + 2]);
                        break;
                    case 10:
                        byte b17 = bArr[i2 + 2];
                        byte b18 = bArr[i2 + 3];
                        qt.y0(117, (b17 >> 7) & 1);
                        qt.y0(118, (b17 >> 6) & 1);
                        qt.y0(119, (b17 >> 5) & 1);
                        qt.y0(120, (b17 >> 4) & 1);
                        qt.y0(121, (b17 >> 3) & 1);
                        qt.y0(122, (b17 >> 2) & 1);
                        qt.y0(123, b17 & 3);
                        qt.y0(124, (b18 >> 7) & 1);
                        qt.y0(125, (b18 >> 6) & 1);
                        qt.y0(126, (b18 >> 5) & 1);
                        qt.y0(127, (b18 >> 4) & 1);
                        qt.y0(128, (b18 >> 3) & 1);
                        qt.y0(129, (b18 >> 2) & 1);
                        qt.y0(185, b18 & 3);
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
                                byte b19 = bArr[i2 + 2];
                                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                                    qt.y0(2, (b19 >> 6) & 1);
                                    qt.y0(1, (b19 >> 7) & 1);
                                } else {
                                    qt.y0(2, (b19 >> 7) & 1);
                                    qt.y0(1, (b19 >> 6) & 1);
                                }
                                qt.y0(4, (b19 >> 5) & 1);
                                qt.y0(3, (b19 >> 4) & 1);
                                qt.y0(5, (b19 >> 3) & 1);
                                break;
                            default:
                                switch (b2) {
                                    case 49:
                                        byte b20 = bArr[i2 + 3];
                                        byte b21 = bArr[i2 + 4];
                                        byte b22 = bArr[i2 + 6];
                                        byte b23 = bArr[i2 + 7];
                                        byte b24 = bArr[i2 + 8];
                                        byte b25 = bArr[i2 + 9];
                                        qt.y0(132, b20 & 255);
                                        int i26 = (b21 >> 7) & 1;
                                        int i27 = b21 & 127;
                                        if (i26 == 1) {
                                            i27 = 255 - i27;
                                        }
                                        qt.y0(133, i27);
                                        qt.y0(134, ((b22 & 255) << 24) | ((b23 & 255) << 16) | ((b24 & 255) << 8) | (b25 & 255));
                                        break;
                                    case 50:
                                        byte b26 = bArr[i2 + 2];
                                        byte b27 = bArr[i2 + 3];
                                        byte b28 = bArr[i2 + 4];
                                        byte b29 = bArr[i2 + 5];
                                        byte b30 = bArr[i2 + 6];
                                        int i28 = ((b26 & 255) << 8) | (b27 & 255);
                                        qt.y0(135, i28);
                                        qt.y0(1032, i28);
                                        qt.y0(136, ((b28 & 255) << 8) | (b29 & 255));
                                        qt.y0(137, 255 & b30);
                                        break;
                                    case 51:
                                        int i29 = i2 + 2;
                                        byte b31 = bArr[i29];
                                        byte b32 = bArr[i29 + 1];
                                        byte b33 = bArr[i29 + 2];
                                        byte b34 = bArr[i29 + 3];
                                        byte b35 = bArr[i29 + 4];
                                        byte b36 = bArr[i29 + 5];
                                        byte b37 = bArr[i29 + 6];
                                        byte b38 = bArr[i29 + 7];
                                        byte b39 = bArr[i29 + 10];
                                        byte b40 = bArr[i29 + 11];
                                        byte b41 = bArr[i29 + 12];
                                        byte b42 = bArr[i29 + 13];
                                        qt.y0(138, ((b31 & 255) << 8) | (b32 & 255));
                                        qt.y0(139, ((b33 & 255) << 8) | (b34 & 255));
                                        qt.y0(140, ((b35 & 255) << 8) | (b36 & 255));
                                        qt.y0(141, (255 & b38) | ((b37 & 255) << 8));
                                        qt.y0(142, b39 & 1);
                                        qt.y0(143, (b39 >> 1) & 1);
                                        qt.y0(144, (b39 >> 2) & 1);
                                        qt.y0(145, b40 & 1);
                                        qt.y0(146, (b40 >> 1) & 1);
                                        qt.y0(147, (b40 >> 2) & 1);
                                        qt.y0(148, b41 & 1);
                                        qt.y0(149, (b41 >> 1) & 1);
                                        qt.y0(150, (b41 >> 2) & 1);
                                        qt.y0(151, b42 & 1);
                                        qt.y0(152, (b42 >> 1) & 1);
                                        qt.y0(153, (b42 >> 2) & 1);
                                        break;
                                }
                                break;
                        }
                        break;
                }
            } else {
                qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 7800);
            }
        } else if (nt.a()) {
            byte b43 = bArr[i2 + 2];
            byte b44 = bArr[i2 + 3];
            this.f10980f = (b43 | 128) & 255;
            int i30 = nt.f8633a;
            if (i30 == 253 || i30 == 262462 || i30 == 327998 || i30 == 131097) {
                int i31 = 0;
                while (true) {
                    iArr = this.f10981g;
                    if (i31 >= iArr.length) {
                        break;
                    }
                    int i32 = this.f10980f;
                    if (i32 == iArr[i31][0]) {
                        if (i32 == 0) {
                            break;
                        }
                        this.f10979e = i31;
                        break;
                    }
                    i31++;
                }
                if ((b44 & 255) != 0) {
                    if (i31 < iArr.length) {
                        l0.b0.l0(iArr[i31][1], 0);
                    }
                } else if (i31 <= iArr.length) {
                    l0.b0.l0(iArr[this.f10979e][1], 1);
                }
            } else if (i30 == 65561) {
                int i33 = 0;
                while (true) {
                    iArr3 = this.f10982h;
                    if (i33 >= iArr3.length) {
                        break;
                    }
                    int i34 = this.f10980f;
                    if (i34 == iArr3[i33][0]) {
                        if (i34 == 0) {
                            break;
                        }
                        this.f10979e = i33;
                        break;
                    }
                    i33++;
                }
                if ((b44 & 255) != 0) {
                    if (i33 < iArr3.length) {
                        l0.b0.l0(iArr3[i33][1], 0);
                    }
                } else if (i33 <= iArr3.length) {
                    l0.b0.l0(iArr3[this.f10979e][1], 1);
                }
            } else if (i30 == 196633 || i30 == 393241) {
                int i35 = 0;
                while (true) {
                    iArr2 = this.f10983i;
                    if (i35 >= iArr2.length) {
                        break;
                    }
                    int i36 = this.f10980f;
                    if (i36 == iArr2[i35][0]) {
                        if (i36 == 0) {
                            break;
                        }
                        this.f10979e = i35;
                        break;
                    }
                    i35++;
                }
                if ((b44 & 255) != 0) {
                    if (i35 < iArr2.length) {
                        l0.b0.l0(iArr2[i35][1], 0);
                    }
                } else if (i35 <= iArr2.length) {
                    l0.b0.l0(iArr2[this.f10979e][1], 1);
                }
            }
        }
        super.U2(bArr, i2, i3);
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            u0.c.f17379f.d(this.f10984j);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 187) {
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
            if (T2(iArr, 1)) {
                z.k.s(227, -121, 1, iArr[0]);
                return;
            }
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
                d3(134, (byte) 10, iArr);
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
        if (n0.j4.f16464b == 21) {
            return (i2 == 0 || i2 >= 8) ? 10 : 0;
        }
        if (i2 == 0) {
            return 10;
        }
        return ((i2 * 10) / 7) - 1;
    }

    public final void b3(byte[] bArr, int i2, int i3) {
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
        if (qt.B0(115, string, this.f10985k)) {
            this.f10985k = string;
        }
    }

    public final void c3(int i2) {
        int i3;
        qt.y0(116, i2);
        if (i2 == 0) {
            if (this.f10977c == 1 && (i3 = this.f10978d) != 12) {
                u0.b.f17311c.c(i3);
            }
            this.f10977c = 0;
            this.f10976b = 0;
            return;
        }
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
            int i4 = h0.c.G;
            if (i4 != 0 || this.f10977c != 0) {
                if (i4 == 0 || this.f10977c != 0) {
                    return;
                }
                z.k.s(227, 186, 3, 0);
                return;
            }
            this.f10977c = 1;
            this.f10978d = u0.b.D;
            if (u0.b.f17332j != 0) {
                u0.d.M(0);
            }
            if (u0.b.D == 12 && this.f10977c != 0 && y0.f.f18055i != 0) {
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

    public final void d3(int i2, byte b2, int... iArr) {
        int i3 = b2 & 255;
        if (i3 < iArr.length) {
            throw new IllegalArgumentException("params data length > size!");
        }
        int i4 = i3 + 4;
        int[] iArr2 = new int[i4];
        iArr2[0] = -29;
        iArr2[1] = b2;
        iArr2[2] = (byte) i2;
        int length = iArr.length;
        for (int i5 = 0; i5 < length; i5++) {
            iArr2[3 + i5] = (byte) (iArr[i5] & 255);
        }
        for (int i6 = 3 + length; i6 < i4; i6++) {
            iArr2[i6] = 0;
        }
        z.k.s(iArr2);
    }
}

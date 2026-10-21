package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class d7 extends lt {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f4352e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f4353f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f4354g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f4355h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f4356i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f4357j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f4358k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f4359l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f4360m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f4361n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f4362o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4364c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4365d = {new int[]{2, 5}, new int[]{3, 34}, new int[]{4, 35}, new int[]{7, 29}, new int[]{8, 6}, new int[]{16, 2}, new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{23, 3}, new int[]{24, 4}, new int[]{33, 2}, new int[]{34, 11}, new int[]{35, 18}, new int[]{41, 12}, new int[]{48, 18}, new int[]{49, 26}, new int[]{50, 1}, new int[]{51, 24}, new int[]{52, 55}, new int[]{54, 54}, new int[]{56, 34}, new int[]{57, 35}, new int[]{64, 32}, new int[]{65, 33}, new int[]{66, 20}, new int[]{67, 19}, new int[]{68, 40}, new int[]{69, 41}, new int[]{70, 42}, new int[]{71, 43}, new int[]{72, 44}, new int[]{73, 45}, new int[]{80, 21}, new int[]{81, 1}, new int[]{82, 38}, new int[]{83, 58}, new int[]{84, 25}, new int[]{85, 11}, new int[]{86, 3}, new int[]{87, 4}, new int[]{88, 34}, new int[]{89, 35}, new int[]{128, 25}, new int[]{42, 55}, new int[]{43, 0}, new int[]{44, 54}, new int[]{45, 18}, new int[]{46, 10}, new int[]{47, 62}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        z.k.s(227, -112, 4, -1, 0, 0, 0);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == 2) {
            int i4 = i2 + 2;
            if (bArr[i4] == 32) {
                nt.f8643f[115].s(115, new int[]{1}, null, null);
            } else if (nt.a()) {
                int i5 = bArr[i4] & 255;
                this.f4364c = i5;
                int i6 = 0;
                while (true) {
                    iArr = this.f4365d;
                    if (i6 >= iArr.length) {
                        break;
                    }
                    int i7 = this.f4364c;
                    if (i7 == iArr[i6][0]) {
                        if (i7 == 0) {
                            break;
                        }
                        this.f4363b = i6;
                        break;
                    }
                    i6++;
                }
                if (i5 != 0) {
                    if (i6 < iArr.length) {
                        l0.b0.l0(iArr[i6][1], 0);
                    }
                } else if (i6 <= iArr.length) {
                    l0.b0.l0(iArr[this.f4363b][1], 1);
                }
            }
        } else if (b2 == 33) {
            byte b3 = bArr[i2 + 2];
            qt.y0(10, (b3 >> 7) & 1);
            qt.y0(11, (b3 >> 6) & 1);
            int[] iArr2 = new int[1];
            iArr2[0] = (b3 & 32) == 0 ? 0 : 1;
            qt.y0(12, iArr2);
            qt.y0(13, (b3 >> 3) & 1);
            qt.y0(14, (b3 >> 2) & 1);
            qt.y0(16, (b3 >> 0) & 1);
            byte b4 = bArr[i2 + 3];
            qt.y0(18, (b4 >> 7) & 1);
            qt.y0(19, (b4 >> 6) & 1);
            qt.y0(20, (b4 >> 5) & 1);
            int[] iArr3 = new int[1];
            iArr3[0] = (b4 & 224) == 0 ? 0 : 1;
            qt.y0(49, iArr3);
            int i8 = b4 & DhcpPacket.DHCP_DOMAIN_NAME;
            if (i8 > 9) {
                i8 = 9;
            }
            qt.y0(21, i8);
            int i9 = i2 + 4;
            byte b5 = bArr[i9];
            int i10 = i2 + 5;
            byte b6 = bArr[i10];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b5 = bArr[i10];
                b6 = bArr[i9];
            }
            int i11 = i2 + 6;
            if ((bArr[i11] & 2) == 0) {
                if (b5 == -1) {
                    qt.y0(27, -3);
                } else if (b5 != 0) {
                    qt.y0(27, b5 & 255);
                } else {
                    qt.y0(27, -2);
                }
            }
            if ((bArr[i11] & 2) == 0) {
                if (b6 == -1) {
                    qt.y0(28, -3);
                } else if (b6 != 0) {
                    qt.y0(28, b6 & 255);
                } else {
                    qt.y0(28, -2);
                }
            }
            byte b7 = bArr[i11];
            qt.y0(65, (b7 >> 7) & 1);
            qt.y0(53, (b7 >> 3) & 1);
            qt.y0(37, (b7 >> 0) & 1);
            int[] iArr4 = new int[1];
            iArr4[0] = ((bArr[i2 + 7] & 255) & 128) == 0 ? 0 : 1;
            qt.y0(55, iArr4);
            int i12 = (bArr[i2 + 8] >> 6) & 3;
            qt.y0(52, i12 <= 2 ? i12 : 2);
        } else if (b2 == 41) {
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, 5450);
        } else if (b2 != 48) {
            if (b2 != 56) {
                if (b2 != 61) {
                    if (b2 != 58) {
                        if (b2 != 59) {
                            switch (b2) {
                                case 50:
                                    if (nt.a()) {
                                        u0.d.R2(l0.e0.m(bArr[i2 + 3]));
                                        int i13 = i2 + 4;
                                        u0.d.S2(l0.e0.m(bArr[i13]));
                                        u0.d.T2(l0.e0.m(bArr[i13]));
                                        u0.d.U2(l0.e0.m(bArr[i2 + 5]));
                                        if (i3 > 7) {
                                            u0.d.D2(l0.e0.m(bArr[i2 + 6]));
                                            int i14 = i2 + 7;
                                            u0.d.E2(l0.e0.m(bArr[i14]));
                                            u0.d.F2(l0.e0.m(bArr[i14]));
                                            u0.d.G2(l0.e0.m(bArr[i2 + 8]));
                                        }
                                    }
                                    break;
                                case 51:
                                    int i15 = ((bArr[i2 + 8] & 255) << 16) | ((bArr[i2 + 9] & 255) << 8) | (bArr[i2 + 10] & 255);
                                    qt.y0(102, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                                    qt.y0(103, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                                    qt.y0(104, ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
                                    qt.y0(98, i15);
                                    break;
                                case 52:
                                    qt.y0(99, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                                    qt.y0(101, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                                    qt.y0(105, ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
                                    break;
                                case 53:
                                    qt.y0(106, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                                    qt.y0(109, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                                    qt.y0(108, ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
                                    break;
                                case 54:
                                    if (nt.a()) {
                                        l0.f0.a(bArr[i2 + 2]);
                                    }
                                    break;
                            }
                        }
                    } else {
                        int i16 = bArr[i2 + 2] & 255;
                        int i17 = bArr[i2 + 3] & 255;
                        qt.y0(145, i16);
                        qt.y0(114, i17);
                    }
                    return;
                }
                int i18 = bArr[i2 + 2] & 255;
                int i19 = bArr[i2 + 3] & 255;
                int i20 = bArr[i2 + 4] & 255;
                int i21 = bArr[i2 + 5] & 255;
                int i22 = bArr[i2 + 6] & 255;
                int i23 = bArr[i2 + 7] & 255;
                int i24 = bArr[i2 + 8] & 255;
                int i25 = bArr[i2 + 9] & 255;
                int i26 = bArr[i2 + 10] & 255;
                int i27 = bArr[i2 + 11] & 255;
                int i28 = bArr[i2 + 12] & 255;
                int i29 = bArr[i2 + 13] & 255;
                qt.y0(169, i18);
                qt.y0(170, i19);
                qt.y0(178, i20);
                qt.y0(117, i21);
                qt.y0(150, i22);
                qt.y0(149, i23);
                qt.y0(172, i24);
                qt.y0(173, i25);
                qt.y0(174, i26);
                qt.y0(175, i27);
                qt.y0(176, i28);
                qt.y0(177, i29);
            } else {
                byte b8 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b8 >> 6) & 1);
                    qt.y0(2, (b8 >> 7) & 1);
                } else {
                    qt.y0(1, (b8 >> 7) & 1);
                    qt.y0(2, (b8 >> 6) & 1);
                }
                qt.y0(3, (b8 >> 5) & 1);
                qt.y0(4, (b8 >> 4) & 1);
                qt.y0(5, (b8 >> 3) & 1);
                int i30 = bArr[i2 + 3] & 255;
                qt.y0(133, (i30 >> 7) & 1);
                qt.y0(134, (i30 >> 5) & 1);
                qt.y0(132, (i30 >> 3) & 1);
                int i31 = bArr[i2 + 4] & 255;
                qt.y0(110, (i31 >> 7) & 1);
                qt.y0(118, (i31 >> 5) & 3);
                int i32 = bArr[i2 + 5] & 255;
                qt.y0(119, i32 >> 5);
                qt.y0(171, (i32 >> 3) & 1);
                int i33 = bArr[i2 + 6] & 255;
                qt.y0(113, i33 >> 6);
                qt.y0(166, (i33 >> 4) & 3);
                qt.y0(135, (i33 >> 1) & 3);
                qt.y0(136, (i33 >> 0) & 1);
                int i34 = bArr[i2 + 7] & 255;
                qt.y0(167, (i34 >> 7) & 1);
                qt.y0(168, (i34 >> 6) & 1);
                qt.y0(111, (i34 >> 5) & 1);
                qt.y0(126, (i34 >> 4) & 1);
                qt.y0(137, (i34 >> 0) & 15);
            }
        } else if (nt.a()) {
            u0.d.R2(l0.e0.m(bArr[i2 + 5]));
            int i35 = i2 + 6;
            u0.d.S2(l0.e0.m(bArr[i35]));
            u0.d.T2(l0.e0.m(bArr[i35]));
            u0.d.U2(l0.e0.m(bArr[i2 + 7]));
            u0.d.D2(l0.e0.m(bArr[i2 + 2]));
            int i36 = i2 + 3;
            u0.d.E2(l0.e0.m(bArr[i36]));
            u0.d.F2(l0.e0.m(bArr[i36]));
            u0.d.G2(l0.e0.m(bArr[i2 + 4]));
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 179) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 9:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(3, iArr[0]);
                    break;
                }
                break;
            case 10:
                if (iArr != null && iArr.length > 0) {
                    b3(4, iArr[0]);
                    break;
                }
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    b3(5, iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    b3(7, iArr[0]);
                    break;
                }
                break;
            case 14:
                if (iArr != null && iArr.length > 0) {
                    b3(8, iArr[0]);
                    break;
                }
                break;
            case 17:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(12, iArr[0]);
                    break;
                }
                break;
            case 18:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(13, iArr[0]);
                    break;
                }
                break;
            case 19:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(14, iArr[0]);
                    break;
                }
                break;
            case 20:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(15, iArr[0]);
                    break;
                }
                break;
            case 21:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(1, iArr[0]);
                    break;
                }
                break;
            case 22:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(2, iArr[0]);
                    break;
                }
                break;
            case 23:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(16, iArr[0]);
                    break;
                }
                break;
            case 24:
                if (iArr != null && iArr.length > 0) {
                    b3(9, iArr[0] + 1);
                    break;
                }
                break;
            case 25:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(10, iArr[0]);
                    break;
                }
                break;
            case 26:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(11, iArr[0]);
                    break;
                }
                break;
            case 27:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(6, iArr[0]);
                    break;
                }
                break;
            case 28:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 6, -126, (byte) (iArr[0] == 2 ? 65 : iArr[0] == 3 ? 34 : 0), 0, 0);
                    break;
                }
                break;
            case 29:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 6, -126, (byte) iArr[0], 0, 0);
                    break;
                }
                break;
            case 30:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    a3(2, iArr[0]);
                    break;
                }
                break;
            case 31:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    a3(3, iArr[0]);
                    break;
                }
                break;
            case 32:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    a3(1, iArr[0]);
                    break;
                }
                break;
            case 36:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    a3(7, iArr[0]);
                    break;
                }
                break;
            case 37:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    a3(6, iArr[0]);
                    break;
                }
                break;
            case 38:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    a3(8, iArr[0]);
                    break;
                }
                break;
            case 39:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        a3(10, 2);
                    } else {
                        a3(10, 1);
                    }
                    break;
                }
                break;
            case 40:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        a3(4, 2);
                    } else {
                        a3(4, 1);
                    }
                    break;
                }
                break;
            case 41:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        a3(5, 2);
                    } else {
                        a3(5, 1);
                    }
                    break;
                }
                break;
            case 42:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    }
                    if (iArr[0] > 2) {
                        iArr[0] = 2;
                    }
                    a3(9, iArr[0]);
                    break;
                }
                break;
            case 43:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    a3(11, iArr[0]);
                    break;
                }
                break;
            case 50:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] == 1) {
                        f4361n = 1;
                        f4362o = 0;
                    }
                    d3();
                    break;
                }
                break;
            case 51:
                if (iArr != null && iArr.length > 0) {
                    f4353f = iArr[0];
                    f4359l = 0;
                    f4360m = 1;
                    f4361n = 0;
                    f4362o = 1;
                    d3();
                    break;
                }
                break;
            case 52:
                if (iArr != null && iArr.length > 0) {
                    f4354g = iArr[0];
                    f4359l = 0;
                    f4360m = 1;
                    f4361n = 0;
                    f4362o = 1;
                    d3();
                    break;
                }
                break;
            case 53:
                if (iArr != null && iArr.length > 0) {
                    f4355h = iArr[0];
                    f4359l = 0;
                    f4360m = 1;
                    f4361n = 0;
                    f4362o = 1;
                    d3();
                    break;
                }
                break;
            case 54:
                if (iArr != null && iArr.length > 0) {
                    f4356i = iArr[0];
                    f4359l = 0;
                    f4360m = 1;
                    f4361n = 0;
                    f4362o = 1;
                    d3();
                    break;
                }
                break;
            case 55:
                if (iArr != null && iArr.length > 0) {
                    f4357j = iArr[0];
                    f4359l = 0;
                    f4360m = 1;
                    f4361n = 0;
                    f4362o = 1;
                    d3();
                    break;
                }
                break;
            case 56:
                if (iArr != null && iArr.length > 0) {
                    f4358k = iArr[0];
                    f4359l = 1;
                    f4360m = 0;
                    f4361n = 0;
                    f4362o = 1;
                    d3();
                    break;
                }
                break;
            case 60:
                if (iArr != null && iArr.length > 0) {
                    f4353f = iArr[0];
                    f4359l = 1;
                    f4360m = 0;
                    f4361n = 0;
                    f4362o = 1;
                    d3();
                    break;
                }
                break;
            case 61:
                if (iArr != null && iArr.length > 0) {
                    f4354g = iArr[0];
                    f4359l = 1;
                    f4360m = 0;
                    f4361n = 0;
                    f4362o = 1;
                    d3();
                    break;
                }
                break;
            case 62:
                if (iArr != null && iArr.length > 0) {
                    f4355h = iArr[0];
                    f4359l = 1;
                    f4360m = 0;
                    f4361n = 0;
                    f4362o = 1;
                    d3();
                    break;
                }
                break;
            case 63:
                if (iArr != null && iArr.length > 0) {
                    f4356i = iArr[0];
                    f4359l = 1;
                    f4360m = 0;
                    f4361n = 0;
                    f4362o = 1;
                    d3();
                    break;
                }
                break;
            case 64:
                if (iArr != null && iArr.length > 0) {
                    f4357j = iArr[0];
                    f4359l = 1;
                    f4360m = 0;
                    f4361n = 0;
                    f4362o = 1;
                    d3();
                    break;
                }
                break;
            case 65:
                if (iArr != null && iArr.length > 0) {
                    f4358k = iArr[0];
                    f4359l = 1;
                    f4360m = 0;
                    f4361n = 0;
                    f4362o = 1;
                    d3();
                    break;
                }
                break;
            case 70:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 4, -113, (byte) iArr[0]);
                    break;
                }
                break;
            case 71:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 4, -113, (byte) iArr[0]);
                    break;
                }
                break;
            case 72:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 4, -113, (byte) iArr[0]);
                    break;
                }
                break;
        }
    }

    public final void a3(int i2, int i3) {
        z.k.s(227, 5, -118, (byte) i2, (byte) i3);
    }

    public final void b3(int i2, int i3) {
        z.k.s(227, 5, -128, (byte) i2, (byte) i3);
    }

    public final void c3() {
        z.k.s(227, 15, -119, (byte) f4352e, (byte) f4353f, (byte) f4354g, (byte) f4355h, (byte) f4356i, (byte) f4357j, (byte) f4358k, 0, 0, 0, 0, 0);
    }

    public final void d3() {
        f4352e = 0;
        int i2 = 0 | (f4359l << 7);
        f4352e = i2;
        int i3 = i2 | (f4360m << 6);
        f4352e = i3;
        int i4 = i3 | (f4361n << 5);
        f4352e = i4;
        f4352e = i4 | (f4362o << 4);
        c3();
    }
}

package k0;

import android.content.Intent;
import android.os.SystemProperties;
import android.text.Spanned;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class fh extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5177c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5178d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 13}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 1}, new int[]{11, 12}, new int[]{12, 58}, new int[]{13, -1}, new int[]{14, 3}, new int[]{15, 28}, new int[]{16, 66}, new int[]{17, 4}, new int[]{18, 27}, new int[]{19, 65}, new int[]{20, -1}, new int[]{21, 7}, new int[]{22, 8}, new int[]{23, 0}, new int[]{24, 31}, new int[]{25, 30}, new int[]{26, 29}, new int[]{27, 4}, new int[]{28, 3}, new int[]{29, 74}, new int[]{30, 75}, new int[]{31, 22}, new int[]{32, 1}, new int[]{33, 21}, new int[]{34, 22}, new int[]{35, 53}, new int[]{36, 40}, new int[]{37, 41}, new int[]{38, 42}, new int[]{39, 43}, new int[]{40, 44}, new int[]{41, 45}, new int[]{42, 64}, new int[]{43, 6}, new int[]{44, 5}, new int[]{45, 18}, new int[]{46, 25}, new int[]{47, 58}, new int[]{48, 49}, new int[]{49, 40}, new int[]{50, 41}, new int[]{51, 42}, new int[]{52, 43}, new int[]{53, 44}, new int[]{54, 45}, new int[]{55, 46}, new int[]{56, 47}, new int[]{57, 48}, new int[]{58, 50}, new int[]{59, 51}, new int[]{60, -1}, new int[]{61, 31}, new int[]{62, 30}, new int[]{63, 38}, new int[]{64, 11}, new int[]{65, 56}, new int[]{66, 56}, new int[]{67, 55}, new int[]{68, 34}, new int[]{69, 35}, new int[]{70, 32}, new int[]{71, 33}, new int[]{72, 25}, new int[]{73, 62}, new int[]{74, 1}, new int[]{75, 72}, new int[]{76, 71}, new int[]{77, -1}, new int[]{78, 1}, new int[]{79, 1}, new int[]{80, 1}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5179e = 0;

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
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f5177c = b3 & 255;
            int i5 = 0;
            while (true) {
                iArr = this.f5178d;
                if (i5 >= iArr.length) {
                    break;
                }
                int i6 = this.f5177c;
                if (i6 == iArr[i5][0]) {
                    if (i6 == 0) {
                        break;
                    }
                    this.f5176b = i5;
                    break;
                }
                i5++;
            }
            int i7 = this.f5177c;
            if (i7 == 9) {
                if ((b4 & 255) == 1) {
                    int i8 = h0.c.E;
                    if (i8 != 3) {
                        if (i8 == 4) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                            return;
                        } else if (i8 != 5) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                            return;
                        }
                    }
                    l0.b0.l0(26, 0);
                    l0.b0.l0(26, 1);
                }
                return;
            }
            if (i7 == 13) {
                if ((b4 & 255) == 1) {
                    try {
                        if (qt.i0().equals("com.syu.carinfo.lz.nissan.gtr.LuzNissanGTRCarOilInfo")) {
                            return;
                        }
                        Intent intent = new Intent();
                        intent.setClassName("com.syu.canbus", "com.syu.carinfo.lz.nissan.gtr.LuzNissanGTRCarOilInfo");
                        intent.addCategory(Intent.CATEGORY_DEFAULT);
                        intent.setFlags(268435456);
                        App.c().startActivity(intent);
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                return;
            }
            int i9 = b4 & 255;
            if (i9 == 1) {
                if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 == 0) {
                    int i10 = this.f5176b;
                    if (i10 < iArr.length) {
                        i4 = 255;
                        if (i10 != 255) {
                            l0.b0.l0(iArr[i10][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f5176b = i4;
                    return;
                }
                return;
            }
        }
        if (b2 == 39) {
            int i11 = bArr[i2 + 2] & 255;
            int i12 = bArr[i2 + 3] & 255;
            int i13 = bArr[i2 + 4] & 255;
            int i14 = bArr[i2 + 5] & 255;
            int i15 = bArr[i2 + 6] & 255;
            qt.y0(10, (i11 >> 7) & 1);
            qt.y0(11, (i11 >> 6) & 1);
            qt.y0(12, (i11 >> 5) & 1);
            qt.y0(13, (i11 >> 3) & 1);
            qt.y0(14, (i11 >> 2) & 1);
            qt.y0(18, (i12 >> 7) & 1);
            qt.y0(19, (i12 >> 6) & 1);
            int i16 = i12 >> 5;
            qt.y0(20, i16 & 1);
            qt.y0(77, i16 & 7);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                if (i13 == 0) {
                    qt.y0(28, -2);
                } else if (i13 == 32) {
                    qt.y0(28, -3);
                } else if (i13 != 255) {
                    qt.y0(28, i13);
                } else {
                    qt.y0(28, -1);
                }
                if (i14 == 0) {
                    qt.y0(27, -2);
                } else if (i14 == 32) {
                    qt.y0(27, -3);
                } else if (i14 != 255) {
                    qt.y0(27, i14);
                } else {
                    qt.y0(27, -1);
                }
            } else {
                if (i13 == 0) {
                    qt.y0(27, -2);
                } else if (i13 == 32) {
                    qt.y0(27, -3);
                } else if (i13 != 255) {
                    qt.y0(27, i13);
                } else {
                    qt.y0(27, -1);
                }
                if (i14 == 0) {
                    qt.y0(28, -2);
                } else if (i14 == 32) {
                    qt.y0(28, -3);
                } else if (i14 != 255) {
                    qt.y0(28, i14);
                } else {
                    qt.y0(28, -1);
                }
            }
            qt.y0(65, (i15 >> 7) & 1);
            qt.y0(16, (i15 >> 6) & 1);
            qt.y0(37, (i15 >> 0) & 1);
            qt.y0(21, bArr[i2 + 8] & 255);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 4600);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 64) {
            qt.y0(143, bArr[i2 + 2] & 255);
            qt.y0(144, bArr[i2 + 3] & 255);
            qt.y0(145, bArr[i2 + 4] & 255);
            qt.y0(146, bArr[i2 + 5] & 255);
            qt.y0(147, bArr[i2 + 6] & 255);
            qt.y0(148, bArr[i2 + 7] & 255);
            qt.y0(149, bArr[i2 + 8] & 255);
            qt.y0(150, bArr[i2 + 9] & 255);
            qt.y0(151, bArr[i2 + 10] & 255);
            qt.y0(152, bArr[i2 + 11] & 255);
            qt.y0(153, bArr[i2 + 12] & 255);
            qt.y0(154, bArr[i2 + 13] & 255);
            qt.y0(155, bArr[i2 + 14] & 255);
            qt.y0(156, bArr[i2 + 15] & 255);
            qt.y0(157, bArr[i2 + 16] & 255);
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i17 = i2 + 2;
                int i18 = bArr[i17] & 255;
                int i19 = i2 + 3;
                int i20 = bArr[i19] & 255;
                int i21 = i2 + 4;
                int i22 = bArr[i21] & 255;
                int i23 = i2 + 5;
                int i24 = bArr[i23] & 255;
                if (i18 == 0 && i20 == 0 && i22 == 0 && i24 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i18 || l0.c0.f13014h != i20 || l0.c0.f13015i != i22 || l0.c0.f13016j != i24) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i18;
                l0.c0.f13014h = i20;
                l0.c0.f13015i = i22;
                l0.c0.f13016j = i24;
                u0.d.D2(l0.c0.K0(bArr[i17] & 255));
                u0.d.E2(l0.c0.K0(bArr[i19] & 255));
                u0.d.F2(l0.c0.K0(bArr[i21] & 255));
                u0.d.G2(l0.c0.K0(bArr[i23] & 255));
                break;
            case 36:
                byte b5 = bArr[i2 + 2];
                if ((b5 & 1) != 0) {
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
                    qt.y0(0, (b5 >> 2) & 1);
                }
                break;
            default:
                switch (b2) {
                    case 51:
                        qt.y0(158, bArr[i2 + 2] & 255);
                        int i25 = i2 + 3;
                        qt.y0(159, (bArr[i25] >> 4) & 15);
                        qt.y0(160, (bArr[i25] >> 0) & 15);
                        qt.y0(161, bArr[i2 + 4] & 255);
                        qt.y0(162, bArr[i2 + 5] & 255);
                        int i26 = i2 + 6;
                        qt.y0(163, (bArr[i26] >> 7) & 1);
                        qt.y0(164, (bArr[i26] >> 6) & 1);
                        qt.y0(165, (bArr[i26] >> 4) & 3);
                        qt.y0(166, (bArr[i26] >> 2) & 3);
                        qt.y0(167, (bArr[i26] >> 1) & 1);
                        qt.y0(168, (bArr[i26] >> 0) & 1);
                        int i27 = i2 + 7;
                        qt.y0(169, (bArr[i27] >> 7) & 1);
                        qt.y0(170, (bArr[i27] >> 6) & 1);
                        break;
                    case 52:
                        qt.y0(99, bArr[i2 + 2] & 255);
                        qt.y0(100, bArr[i2 + 3] & 255);
                        qt.y0(101, bArr[i2 + 4] & 255);
                        qt.y0(102, bArr[i2 + 5] & 255);
                        qt.y0(103, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(104, bArr[i2 + 8] & 255);
                        qt.y0(105, (65280 & (bArr[i2 + 9] << 8)) | (bArr[i2 + 10] & 255));
                        qt.y0(106, bArr[i2 + 11] & 255);
                        qt.y0(107, bArr[i2 + 12] & 127);
                        break;
                    case 53:
                        qt.y0(108, bArr[i2 + 2] & 255);
                        qt.y0(109, bArr[i2 + 3] & 255);
                        qt.y0(110, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(111, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(112, bArr[i2 + 8] & 255);
                        qt.y0(113, (65280 & (bArr[i2 + 10] << 8)) | ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | (bArr[i2 + 11] & 255));
                        qt.y0(114, bArr[i2 + 12] & 255);
                        break;
                    case 54:
                        int i28 = i2 + 6;
                        qt.y0(115, ((bArr[i28] & 8) << 5) | (bArr[i2 + 2] & 255));
                        qt.y0(116, ((bArr[i28] & 4) << 6) | (bArr[i2 + 3] & 255));
                        qt.y0(117, ((2 & bArr[i28]) << 7) | (bArr[i2 + 4] & 255));
                        qt.y0(118, ((bArr[i28] & 1) << 8) | (bArr[i2 + 5] & 255));
                        qt.y0(119, (bArr[i28] >> 7) & 1);
                        qt.y0(120, (bArr[i28] >> 6) & 1);
                        qt.y0(121, (bArr[i28] >> 5) & 1);
                        qt.y0(122, (bArr[i28] >> 4) & 1);
                        break;
                    case 55:
                        qt.y0(139, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(140, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(141, ((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                        qt.y0(142, (bArr[i2 + 10] & 255) | (65280 & (bArr[i2 + 9] << 8)));
                        break;
                    case 56:
                        qt.y0(125, bArr[i2 + 2] & 255);
                        qt.y0(126, bArr[i2 + 3] & 255);
                        qt.y0(127, bArr[i2 + 4] & 255);
                        qt.y0(128, bArr[i2 + 5] & 255);
                        qt.y0(129, bArr[i2 + 6] & 255);
                        qt.y0(130, bArr[i2 + 7] & 255);
                        qt.y0(131, bArr[i2 + 8] & 255);
                        qt.y0(132, bArr[i2 + 9] & 255);
                        qt.y0(133, bArr[i2 + 10] & 255);
                        qt.y0(134, bArr[i2 + 11] & 255);
                        qt.y0(135, bArr[i2 + 12] & 255);
                        int i29 = i2 + 13;
                        qt.y0(136, (bArr[i29] >> 7) & 1);
                        qt.y0(137, (bArr[i29] >> 6) & 1);
                        break;
                    case 57:
                        qt.y0(171, bArr[i2 + 2] & 255);
                        qt.y0(172, bArr[i2 + 3]);
                        qt.y0(173, bArr[i2 + 4]);
                        qt.y0(174, bArr[i2 + 5]);
                        qt.y0(175, bArr[i2 + 6]);
                        int i30 = i2 + 7;
                        qt.y0(176, (bArr[i30] >> 4) & 1);
                        qt.y0(177, (bArr[i30] >> 0) & 15);
                        break;
                }
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
        if (i2 < 0 || i2 >= 178) {
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
            z.k.s(227, 198, 3, iArr[0], iArr[1], iArr[2]);
            return;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                z.k.s(227, 144, 2, iArr[0], iArr[1]);
                return;
            }
            if (i2 == 3 && iArr != null && iArr.length > 0) {
                z.k.s(227, 201, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        if (nt.W == 0) {
            z.k.s(227, 197, 2, iArr[0], iArr[1]);
            return;
        }
        int i3 = iArr[0];
        if (i3 == 1) {
            z.k.s(227, 197, 2, 3, iArr[1]);
            return;
        }
        if (i3 == 2) {
            z.k.s(227, 197, 2, 4, iArr[1]);
            return;
        }
        if (i3 == 3) {
            z.k.s(227, 197, 2, 1, iArr[1]);
        } else if (i3 != 4) {
            z.k.s(227, 197, 2, iArr[0], iArr[1]);
        } else {
            z.k.s(227, 197, 2, 2, iArr[1]);
        }
    }
}

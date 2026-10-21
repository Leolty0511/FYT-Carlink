package k0;

import android.content.ComponentName;
import android.content.Intent;
import android.hardware.Camera;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class co extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4155b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4158e;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4163j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f4164k;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4156c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4157d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{6, 13}, new int[]{7, 12}, new int[]{16, 67}, new int[]{17, 68}, new int[]{20, 55}, new int[]{21, 0}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4159f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f4160g = {new int[]{1, 40}, new int[]{2, 41}, new int[]{3, 42}, new int[]{4, 43}, new int[]{5, 44}, new int[]{6, 45}, new int[]{7, 54}, new int[]{8, 58}, new int[]{9, 0}, new int[]{10, 2}, new int[]{11, 21}, new int[]{12, 29}, new int[]{13, 12}, new int[]{14, 3}, new int[]{15, 4}, new int[]{16, 29}, new int[]{17, 6}, new int[]{18, 38}, new int[]{19, 11}, new int[]{20, 1}, new int[]{21, 21}, new int[]{22, 56}, new int[]{23, 16}, new int[]{24, 5}, new int[]{25, 3}, new int[]{26, 4}, new int[]{27, 18}, new int[]{28, 1}, new int[]{29, 5}, new int[]{30, -1}, new int[]{31, -1}, new int[]{32, -1}, new int[]{33, 34}, new int[]{34, 35}, new int[]{35, 35}, new int[]{36, 34}, new int[]{37, 33}, new int[]{38, 32}, new int[]{39, 5}, new int[]{40, 22}, new int[]{41, 53}, new int[]{42, 3}, new int[]{43, 4}, new int[]{44, -1}, new int[]{45, -1}, new int[]{48, 7}, new int[]{49, 8}, new int[]{50, -1}, new int[]{51, -1}, new int[]{52, -1}, new int[]{53, -1}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4161h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4162i = 0;

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
        mtVar.f8317l = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8314i = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f4156c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f4157d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f4156c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f4155b = i4;
                    break;
                }
                i4++;
            }
            int i6 = b4 & 255;
            if (i6 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i6 == 0) {
                    int i7 = this.f4155b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f4155b = 255;
                }
                return;
            }
        }
        if (b2 == 2) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f4159f = b5 & 255;
            int i8 = 0;
            while (true) {
                iArr2 = this.f4160g;
                if (i8 >= iArr2.length) {
                    break;
                }
                int i9 = this.f4159f;
                if (i9 == iArr2[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f4158e = i8;
                    break;
                }
                i8++;
            }
            int i10 = this.f4159f;
            if (i10 == 45) {
                if ((b6 & 255) == 1) {
                    a3();
                    return;
                }
                return;
            }
            switch (i10) {
                case 48:
                case 52:
                    for (int i11 = 0; i11 < (b6 & 255); i11++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    break;
                case 49:
                case 53:
                    for (int i12 = 0; i12 < (b6 & 255); i12++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    break;
                case 50:
                    for (int i13 = 0; i13 < (b6 & 255); i13++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    break;
                case 51:
                    for (int i14 = 0; i14 < (b6 & 255); i14++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    break;
                default:
                    int i15 = b6 & 255;
                    if (i15 == 1) {
                        if (i8 < iArr2.length) {
                            l0.b0.l0(iArr2[i8][1], 0);
                        }
                    } else if (i15 == 0) {
                        int i16 = this.f4158e;
                        if (i16 < iArr2.length && i16 != 255) {
                            l0.b0.l0(iArr2[i16][1], 1);
                        }
                        this.f4158e = 255;
                    }
                    break;
            }
        }
        if (b2 == 31) {
            qt.m(bArr[i2 + 2], 0, 128, true, 128);
            return;
        }
        if (b2 == 113) {
            String str = "XC_";
            int i17 = bArr[i2 + 3] & 63;
            if (i17 == 0) {
                str = "XC_Null";
            } else if (i17 == 1) {
                str = "XC_Cruze_";
            } else if (i17 == 2) {
                str = "XC_Excelle_";
            } else if (i17 == 3) {
                str = "XC_Regal_";
            } else if (i17 == 4) {
                str = "XC_LaCrosse_";
            } else if (i17 == 6) {
                str = "XC_GL8_";
            } else if (i17 != 32) {
                switch (i17) {
                    case 15:
                        str = "XC_Aveo_";
                        break;
                    case 16:
                        str = "XC_Malibu_";
                        break;
                    case 17:
                        str = "XC_Encore_";
                        break;
                }
            } else {
                str = "XC_Roewe950_";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("20");
            int i18 = i2 + 4;
            sb.append((bArr[i18] >> 4) & 15);
            sb.append((bArr[i18] >> 0) & 15);
            sb.append(".");
            int i19 = i2 + 5;
            sb.append((bArr[i19] >> 4) & 15);
            sb.append((bArr[i19] >> 0) & 15);
            sb.append(".");
            int i20 = i2 + 6;
            sb.append((bArr[i20] >> 4) & 15);
            sb.append((bArr[i20] >> 0) & 15);
            sb.append("_V");
            sb.append(new String(bArr, i2 + 8, 3));
            qt.L(sb.toString());
            return;
        }
        if (b2 == 42) {
            u0.d.R2(l0.c0.L0(bArr[i2 + 2] & 255));
            int i21 = i2 + 3;
            u0.d.S2(l0.c0.L0(bArr[i21] & 255));
            u0.d.T2(l0.c0.L0(bArr[i21] & 255));
            u0.d.U2(l0.c0.L0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 43) {
            int i22 = i2 + 2;
            int i23 = bArr[i22] & 255;
            int i24 = i2 + 3;
            int i25 = bArr[i24] & 255;
            int i26 = bArr[i24] & 255;
            int i27 = i2 + 5;
            int i28 = bArr[i27] & 255;
            if (i23 == 0 && i25 == 0 && i26 == 0 && i28 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i23 || l0.c0.f13014h != i25 || l0.c0.f13015i != i26 || l0.c0.f13016j != i28) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i23;
            l0.c0.f13014h = i25;
            l0.c0.f13015i = i26;
            l0.c0.f13016j = i28;
            u0.d.D2(l0.c0.L0(bArr[i22] & 255));
            u0.d.E2(l0.c0.L0(bArr[i24] & 255));
            u0.d.F2(l0.c0.L0(bArr[i24] & 255));
            u0.d.G2(l0.c0.L0(bArr[i27] & 255));
            return;
        }
        switch (b2) {
            case 4:
                byte b7 = bArr[i2 + 3];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b7 >> 6) & 1);
                    qt.y0(2, (b7 >> 7) & 1);
                } else {
                    qt.y0(1, (b7 >> 7) & 1);
                    qt.y0(2, (b7 >> 6) & 1);
                }
                qt.y0(3, (b7 >> 5) & 1);
                qt.y0(4, (b7 >> 4) & 1);
                qt.y0(5, (b7 >> 3) & 1);
                qt.y0(0, (b7 >> 2) & 1);
                break;
            case 5:
                int i29 = i2 + 2;
                qt.y0(98, (bArr[i29] >> 6) & 3);
                qt.y0(99, (bArr[i29] >> 4) & 3);
                qt.y0(100, (bArr[i29] >> 2) & 3);
                qt.y0(101, (bArr[i29] >> 0) & 3);
                int i30 = i2 + 3;
                qt.y0(144, 3 & (bArr[i30] >> 2));
                qt.y0(145, (bArr[i30] >> 1) & 1);
                qt.y0(146, (bArr[i30] >> 0) & 1);
                break;
            case 6:
                int i31 = i2 + 2;
                qt.y0(102, (bArr[i31] >> 7) & 1);
                qt.y0(103, (bArr[i31] >> 5) & 3);
                qt.y0(104, (bArr[i31] >> 4) & 1);
                qt.y0(105, (bArr[i31] >> 3) & 1);
                qt.y0(106, (bArr[i31] >> 1) & 3);
                qt.y0(107, (bArr[i31] >> 0) & 1);
                int i32 = i2 + 3;
                qt.y0(108, (bArr[i32] >> 7) & 1);
                qt.y0(109, (bArr[i32] >> 5) & 3);
                qt.y0(110, (bArr[i32] >> 4) & 1);
                qt.y0(111, (bArr[i32] >> 3) & 1);
                qt.y0(112, (bArr[i32] >> 2) & 1);
                qt.y0(113, (bArr[i32] >> 1) & 1);
                qt.y0(114, (bArr[i32] >> 0) & 1);
                int i33 = i2 + 4;
                qt.y0(115, (bArr[i33] >> 7) & 1);
                qt.y0(116, (bArr[i33] >> 6) & 1);
                qt.y0(117, (bArr[i33] >> 5) & 1);
                qt.y0(118, (bArr[i33] >> 4) & 1);
                qt.y0(119, (bArr[i33] >> 3) & 1);
                qt.y0(120, (bArr[i33] >> 2) & 1);
                break;
            case 7:
                qt.y0(121, (bArr[i2 + 2] >> 0) & 1);
                break;
            case 8:
                b3(bArr, i2 + 2, i3 - 2);
                break;
            case 9:
                if (nt.R != 0) {
                    c3(bArr[i2 + 2]);
                    break;
                }
                break;
            case 10:
                int i34 = i2 + 2;
                qt.y0(10, (bArr[i34] >> 7) & 1);
                qt.y0(11, (bArr[i34] >> 6) & 1);
                qt.y0(52, (bArr[i34] >> 5) & 1);
                qt.y0(13, (bArr[i34] >> 4) & 1);
                qt.y0(12, (bArr[i34] >> 2) & 3);
                qt.y0(16, (bArr[i34] >> 1) & 1);
                int i35 = i2 + 3;
                qt.y0(57, (bArr[i35] >> 6) & 1);
                qt.y0(65, (bArr[i35] >> 5) & 1);
                qt.y0(49, (bArr[i35] >> 4) & 1);
                qt.y0(21, (bArr[i35] >> 0) & 15);
                int i36 = i2 + 4;
                qt.y0(49, (bArr[i36] >> 7) & 1);
                qt.y0(18, (bArr[i36] >> 6) & 1);
                qt.y0(20, (bArr[i36] >> 5) & 1);
                qt.y0(19, (bArr[i36] >> 4) & 1);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    int i37 = i2 + 5;
                    if ((bArr[i37] & 255) == 0) {
                        qt.y0(28, -2);
                    } else if ((bArr[i37] & 255) == 63) {
                        qt.y0(28, -3);
                    } else {
                        qt.y0(28, bArr[i37] & 255);
                    }
                    int i38 = i2 + 6;
                    if ((bArr[i38] & 255) == 0) {
                        qt.y0(27, -2);
                    } else if ((bArr[i38] & 255) == 63) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, bArr[i38] & 255);
                    }
                } else {
                    int i39 = i2 + 5;
                    if ((bArr[i39] & 255) == 0) {
                        qt.y0(27, -2);
                    } else if ((bArr[i39] & 255) == 63) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, bArr[i39] & 255);
                    }
                    int i40 = i2 + 6;
                    if ((bArr[i40] & 255) == 0) {
                        qt.y0(28, -2);
                    } else if ((bArr[i40] & 255) == 63) {
                        qt.y0(28, -3);
                    } else {
                        qt.y0(28, bArr[i40] & 255);
                    }
                }
                int i41 = i2 + 7;
                qt.y0(29, ((bArr[i41] >> 5) & 7) | ((bArr[i41] << 2) & 8));
                qt.y0(30, ((bArr[i41] << 3) & 8) | ((bArr[i41] >> 2) & 7));
                int i42 = bArr[i2 + 8] & 255;
                if (i42 == 0) {
                    u0.d.A3(0);
                } else {
                    u0.d.A3((i42 * 5) + 500);
                }
                break;
            case 11:
                int i43 = i2 + 2;
                qt.y0(42, (bArr[i43] >> 7) & 1);
                qt.y0(44, (bArr[i43] >> 0) & 15);
                int i44 = i2 + 3;
                qt.y0(43, (bArr[i44] >> 7) & 1);
                qt.y0(48, (bArr[i44] >> 6) & 1);
                qt.y0(47, (bArr[i44] >> 5) & 1);
                qt.y0(46, (bArr[i44] >> 4) & 1);
                int i45 = i2 + 4;
                if ((bArr[i45] & 255) == 0) {
                    qt.y0(40, -2);
                } else if ((bArr[i45] & 255) == 63) {
                    qt.y0(40, -3);
                } else {
                    qt.y0(40, bArr[i45] & 255);
                }
                break;
            default:
                switch (b2) {
                    case 22:
                        int i46 = i2 + 2;
                        qt.y0(124, (bArr[i46] >> 6) & 3);
                        qt.y0(125, (bArr[i46] >> 2) & 3);
                        qt.y0(126, (bArr[i46] >> 0) & 3);
                        break;
                    case 23:
                        int i47 = i2 + 2;
                        qt.y0(127, (bArr[i47] >> 7) & 1);
                        qt.y0(128, (bArr[i47] >> 6) & 1);
                        qt.y0(129, (bArr[i47] >> 5) & 1);
                        qt.y0(130, (bArr[i47] >> 4) & 1);
                        qt.y0(131, (bArr[i47] >> 3) & 1);
                        qt.y0(132, (bArr[i47] >> 2) & 1);
                        qt.y0(133, (bArr[i47] >> 1) & 1);
                        qt.y0(134, (bArr[i47] >> 0) & 1);
                        break;
                    case 24:
                        qt.y0(135, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(136, bArr[i2 + 4] & 255);
                        qt.y0(137, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                        qt.y0(138, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                        qt.y0(139, bArr[i2 + 9] & 255);
                        qt.y0(140, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
                        qt.y0(141, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
                        qt.y0(142, (bArr[i2 + 15] & 255) | ((bArr[i2 + 14] << 8) & 65280));
                        break;
                    case 25:
                        qt.y0(143, (bArr[i2 + 2] & 255) + 1);
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
        if (i2 < 0 || i2 >= 147) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                z.k.s(227, 141, 2, iArr[0], iArr[1]);
                break;
            case 1:
                z.k.s(227, 131, 2, iArr[0], iArr[1]);
                break;
            case 2:
                z.k.s(227, 130, 2, iArr[0], iArr[1]);
                break;
            case 3:
                z.k.s(227, 132, 1, iArr[0]);
                break;
            case 4:
                z.k.s(227, 145, 2, iArr[0], iArr[1]);
                break;
            case 5:
                if (T2(iArr, 1)) {
                    z.k.s(227, 133, 1, iArr[0]);
                }
                break;
            case 6:
                d3(134, (byte) 10, iArr);
                break;
        }
    }

    public final void a3() {
        try {
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.xc.gm.XC_GMadRongweiCarInfo");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
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
        if (qt.B0(122, string, this.f4164k)) {
            this.f4164k = string;
        }
    }

    public final void c3(int i2) {
        int i3;
        qt.y0(123, i2);
        if (i2 == 0) {
            if (this.f4162i == 1 && (i3 = this.f4163j) != 12) {
                u0.b.f17311c.c(i3);
            }
            this.f4162i = 0;
            this.f4161h = 0;
            return;
        }
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
            int i4 = h0.c.G;
            if (i4 != 0 || this.f4162i != 0) {
                if (i4 == 0 || this.f4162i != 0) {
                    return;
                }
                z.k.s(227, 186, 2, 3, 0);
                return;
            }
            this.f4162i = 1;
            this.f4163j = u0.b.D;
            if (u0.b.f17332j != 0) {
                u0.d.M(0);
            }
            if (u0.b.D == 12 && this.f4162i != 0 && y0.f.f18055i != 0) {
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

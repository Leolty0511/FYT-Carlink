package k0;

import android.content.Intent;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class go extends lt {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f5611i = 255;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5612b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5613c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5614d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 13}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{21, 6}, new int[]{22, 29}, new int[]{135, 0}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 21}, new int[]{40, 22}, new int[]{41, 53}, new int[]{43, 64}, new int[]{46, 39}, new int[]{48, 54}, new int[]{49, 11}, new int[]{50, 37}, new int[]{51, 65}, new int[]{67, 32}, new int[]{68, 33}, new int[]{70, 58}, new int[]{71, 55}, new int[]{73, 72}, new int[]{74, 71}, new int[]{78, 5}, new int[]{79, 62}, new int[]{80, 32}, new int[]{81, 35}, new int[]{82, 34}, new int[]{83, 33}, new int[]{84, 25}, new int[]{87, 1}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5615e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f5616f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[] f5617g = {34, 204};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5618h = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = go.f5611i;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13 && i3 != 11 && i3 != 5) {
                    z.k.s(227, 143, 2, 4, 0);
                }
                go.f5611i = u0.b.D;
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
        mtVar.f8314i = 1;
        mtVar.f8317l = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        u0.c.f17374a.a(this.f5616f, 1);
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == -109) {
            qt.y0(140, bArr[i2 + 2] & 255);
            qt.y0(141, bArr[i2 + 3]);
            qt.y0(142, bArr[i2 + 4]);
            qt.y0(143, bArr[i2 + 5]);
            qt.y0(144, bArr[i2 + 6]);
            qt.y0(145, bArr[i2 + 7] & 255);
            qt.y0(146, bArr[i2 + 8] & 255);
            qt.y0(147, bArr[i2 + 9]);
            qt.y0(148, bArr[i2 + 10] & 255);
        }
        if (b2 == 41) {
            int i8 = i2 + 3;
            int i9 = i2 + 2;
            if ((((bArr[i8] << 8) & 65280) | (bArr[i9] & 255)) == 32768) {
                qt.i(0, 0, true, 5696);
                return;
            } else {
                qt.i(bArr[i9], bArr[i8], true, 5696);
                return;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 85) {
            int i10 = i2 + 2;
            int i11 = bArr[i10] & 255;
            int i12 = i2 + 3;
            int i13 = bArr[i12] & 255;
            int i14 = bArr[i2 + 4] & 255;
            int i15 = bArr[i2 + 6] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i11 = bArr[i12] & 255;
                i13 = bArr[i10] & 255;
            }
            if (i11 == 16) {
                qt.y0(27, -2);
            } else if (i11 == 80) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i11);
            }
            if (i13 == 16) {
                qt.y0(28, -2);
            } else if (i13 == 80) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i13);
            }
            switch ((i14 >> 4) & 15) {
                case 0:
                    i4 = 0;
                    i5 = 0;
                    i6 = 0;
                    i7 = 1;
                    break;
                case 1:
                    i7 = 0;
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                    break;
                case 2:
                    i7 = 0;
                    i4 = 0;
                    i5 = 1;
                    i6 = i5;
                    break;
                case 3:
                    i7 = 0;
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                    break;
                case 4:
                    i7 = 0;
                    i5 = 0;
                    i4 = 1;
                    i6 = 1;
                    break;
                case 5:
                    i7 = 0;
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
                    break;
                case 6:
                    i7 = 0;
                    i5 = 0;
                    i6 = 0;
                    i4 = 1;
                    break;
                case 7:
                    i7 = 0;
                    i4 = 1;
                    i5 = i4;
                    i6 = i5;
                    break;
                default:
                    i7 = 0;
                    i4 = 0;
                    i5 = i4;
                    i6 = i5;
                    break;
            }
            qt.y0(49, i7);
            qt.y0(18, i4);
            qt.y0(19, i5);
            qt.y0(20, i6);
            qt.y0(21, (i14 >> 0) & 15);
            qt.y0(15, (i15 >> 7) & 1);
            qt.y0(16, (i15 >> 6) & 1);
            qt.y0(65, (i15 >> 5) & 1);
            qt.y0(53, (i15 >> 4) & 1);
            qt.y0(12, (i15 >> 3) & 1);
            qt.y0(14, (i15 >> 2) & 1);
            qt.y0(11, (i15 >> 1) & 1);
            qt.y0(13, (i15 >> 0) & 1);
            int i16 = bArr[i2 + 7] & 255;
            int i17 = (i16 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
            if (i16 == 0) {
                u0.d.A3(0);
            } else {
                u0.d.A3(i17);
            }
            int i18 = i2 + 8;
            qt.y0(72, (bArr[i18] >> 1) & 1);
            qt.y0(38, (bArr[i18] >> 0) & 1);
            return;
        }
        if (b2 == 96) {
            int i19 = i2 + 2;
            qt.y0(129, bArr[i19] & 7);
            if ((bArr[i19] & 7) != this.f5615e) {
                int i20 = bArr[i19] & 7;
                this.f5615e = i20;
                if (i20 == 1) {
                    b3();
                    return;
                }
                if (i20 == 2) {
                    a3();
                    return;
                } else {
                    if (i20 == 3) {
                        l0.b0.l0(5, 0);
                        l0.b0.l0(5, 1);
                        u0.b.f17311c.c(0);
                        return;
                    }
                    return;
                }
            }
            if ((bArr[i19] & 7) == 2 && u0.b.D != 13) {
                a3();
                return;
            }
            if ((bArr[i19] & 7) == 1 && u0.b.D != 11) {
                b3();
                return;
            }
            if ((bArr[i19] & 7) == 3) {
                int i21 = u0.b.D;
                if (i21 == 13 || i21 == 11) {
                    a3();
                    return;
                }
                return;
            }
            return;
        }
        if (b2 == 104) {
            qt.y0(111, (bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280));
            return;
        }
        if (b2 == 29) {
            int i22 = i2 + 2;
            int i23 = bArr[i22] & 255;
            int i24 = i2 + 3;
            int i25 = bArr[i24] & 255;
            int i26 = i2 + 4;
            int i27 = bArr[i26] & 255;
            int i28 = i2 + 5;
            int i29 = bArr[i28] & 255;
            if (i23 == 0 && i25 == 0 && i27 == 0 && i29 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i23 || l0.c0.f13014h != i25 || l0.c0.f13015i != i27 || l0.c0.f13016j != i29) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i23;
            l0.c0.f13014h = i25;
            l0.c0.f13015i = i27;
            l0.c0.f13016j = i29;
            u0.d.D2(l0.c0.v1(bArr[i22] & 255));
            u0.d.E2(l0.c0.v1(bArr[i24] & 255));
            u0.d.F2(l0.c0.v1(bArr[i26] & 255));
            u0.d.G2(l0.c0.v1(bArr[i28] & 255));
            return;
        }
        if (b2 == 30) {
            u0.d.R2(l0.c0.v1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.v1(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.v1(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.v1(bArr[i2 + 5] & 255));
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f5613c = b3 & 255;
                int i30 = 0;
                while (true) {
                    iArr = this.f5614d;
                    if (i30 < iArr.length) {
                        int i31 = this.f5613c;
                        if (i31 != iArr[i30][0]) {
                            i30++;
                        } else if (i31 != 0) {
                            this.f5612b = i30;
                        }
                    }
                }
                int i32 = b4 & 255;
                if (i32 != 1) {
                    if (i32 == 0) {
                        int i33 = this.f5612b;
                        if (i33 < iArr.length && i33 != 255) {
                            l0.b0.l0(iArr[i33][1], 1);
                        }
                        this.f5612b = 255;
                    }
                } else if (i30 < iArr.length) {
                    l0.b0.l0(iArr[i30][1], 0);
                }
                break;
            case 33:
                int i34 = i2 + 2;
                qt.y0(112, (bArr[i34] >> 7) & 1);
                qt.y0(113, (bArr[i34] >> 0) & 7);
                qt.y0(114, (bArr[i2 + 4] & 255) | ((bArr[i2 + 3] << 8) & 65280));
                break;
            case 34:
                qt.y0(115, (bArr[i2 + 2] >> 0) & 7);
                qt.y0(116, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                qt.y0(117, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(118, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                qt.y0(119, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                qt.y0(120, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                qt.y0(121, (bArr[i2 + 14] & 255) | ((bArr[i2 + 13] << 8) & 65280));
                break;
            case 35:
                qt.y0(122, bArr[i2 + 2] & 255);
                int i35 = i2 + 3;
                qt.y0(123, (bArr[i35] >> 1) & 1);
                qt.y0(124, (bArr[i35] >> 0) & 1);
                qt.y0(125, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(126, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(127, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                qt.y0(128, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] << 8) & 65280));
                break;
            case 36:
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
                break;
            default:
                switch (b2) {
                    case 107:
                        qt.y0(108, ((bArr[i2 + 5] << 24) & (-16777216)) | ((bArr[i2 + 4] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
                        qt.y0(109, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
                        qt.y0(110, (bArr[i2 + 8] & 255) | ((bArr[i2 + 9] << 8) & 65280));
                        break;
                    case 108:
                        qt.y0(130, bArr[i2 + 2] & 255);
                        qt.y0(131, bArr[i2 + 3] & 255);
                        qt.y0(132, bArr[i2 + 4] & 255);
                        break;
                    case 109:
                        int i36 = i2 + 2;
                        qt.y0(133, (bArr[i36] >> 4) & 1);
                        qt.y0(134, (bArr[i36] >> 3) & 1);
                        qt.y0(135, (bArr[i36] >> 2) & 1);
                        qt.y0(136, (bArr[i36] >> 1) & 1);
                        qt.y0(137, (bArr[i36] >> 0) & 1);
                        qt.y0(138, bArr[i2 + 3] & 255);
                        qt.y0(139, bArr[i2 + 4] & 255);
                        break;
                    case 110:
                        qt.y0(99, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
                        qt.y0(100, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
                        qt.y0(101, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
                        qt.y0(102, (255 & bArr[i2 + 8]) | (65280 & (bArr[i2 + 9] << 8)));
                        int i37 = i2 + 10;
                        qt.y0(104, (bArr[i37] >> 4) & 15);
                        qt.y0(103, (bArr[i37] >> 0) & 15);
                        int i38 = i2 + 11;
                        qt.y0(106, (bArr[i38] >> 4) & 15);
                        qt.y0(105, (bArr[i38] >> 0) & 15);
                        break;
                    default:
                        switch (b2) {
                            case 112:
                                qt.y0(162, bArr[i2 + 2] & 255);
                                qt.y0(163, bArr[i2 + 3] & 255);
                                qt.y0(164, bArr[i2 + 4] & 255);
                                qt.y0(165, bArr[i2 + 5] & 255);
                                qt.y0(166, bArr[i2 + 6] & 255);
                                break;
                            case 113:
                                int i39 = i2 + 2;
                                qt.y0(167, (bArr[i39] >> 5) & 1);
                                qt.y0(168, (bArr[i39] >> 4) & 1);
                                qt.y0(169, (bArr[i39] >> 3) & 1);
                                qt.y0(170, (bArr[i39] >> 2) & 1);
                                qt.y0(171, (bArr[i39] >> 1) & 1);
                                qt.y0(172, (bArr[i39] >> 0) & 1);
                                break;
                            case 114:
                                int i40 = i2 + 2;
                                qt.y0(149, (bArr[i40] >> 6) & 3);
                                qt.y0(150, (bArr[i40] >> 4) & 3);
                                qt.y0(151, (bArr[i40] >> 2) & 3);
                                qt.y0(152, (bArr[i40] >> 1) & 1);
                                qt.y0(153, (bArr[i40] >> 0) & 1);
                                int i41 = i2 + 3;
                                qt.y0(154, (bArr[i41] >> 7) & 1);
                                qt.y0(155, (bArr[i41] >> 6) & 1);
                                break;
                            case 115:
                                int i42 = i2 + 2;
                                qt.y0(156, (bArr[i42] >> 7) & 1);
                                qt.y0(157, (bArr[i42] >> 5) & 3);
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        u0.c.f17374a.d(this.f5616f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 173) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                z.k.s(227, 52, 1, iArr[0]);
                break;
            case 1:
                z.k.s(227, 53, 1, iArr[0]);
                break;
            case 2:
                z.k.s(227, 131, 2, iArr[0], iArr[1]);
                break;
            case 3:
                z.k.s(227, 54, 1, iArr[0]);
                break;
            case 4:
                z.k.s(227, 55, 1, iArr[0]);
                break;
            case 5:
                z.k.s(227, 144, 2, iArr[0], iArr[1]);
                break;
            case 6:
                z.k.s(227, 51, 4, iArr[0], this.f5617g[this.f5618h % 2], 0, 0);
                int i3 = this.f5618h + 1;
                this.f5618h = i3;
                this.f5618h = i3 % 2;
                break;
            case 7:
                z.k.s(227, 143, 2, iArr[0], iArr[1]);
                break;
            case 8:
                z.k.s(227, 163, 2, iArr[0], iArr[1]);
                break;
            case 9:
                z.k.s(227, 161, 2, iArr[0], iArr[1]);
                break;
        }
    }

    public final void a3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.xc.tule.XCTuleCDCarCD")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.xc.tule.XCTuleCDCarCD");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void b3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.xc.tule.XCTuleCDCarRadio")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.xc.tule.XCTuleCDCarRadio");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}

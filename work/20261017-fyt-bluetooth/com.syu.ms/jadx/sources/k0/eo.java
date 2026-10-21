package k0;

import android.content.Intent;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class eo extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4906b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4909e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4907c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4908d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 13}, new int[]{6, 6}, new int[]{7, 29}, new int[]{8, 34}, new int[]{9, 35}, new int[]{10, 12}, new int[]{12, 2}, new int[]{17, 18}, new int[]{18, 26}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4910f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f4911g = {new int[]{6, 3}, new int[]{7, 4}, new int[]{8, 29}, new int[]{9, 6}, new int[]{11, 38}, new int[]{12, 1}, new int[]{14, 30}, new int[]{15, 31}, new int[]{16, 32}, new int[]{17, 33}, new int[]{18, 34}, new int[]{19, 35}, new int[]{32, 54}, new int[]{49, 40}, new int[]{50, 41}, new int[]{51, 42}, new int[]{52, 43}, new int[]{53, 44}, new int[]{54, 45}, new int[]{63, 13}, new int[]{65, 25}, new int[]{66, 72}, new int[]{67, 71}, new int[]{77, 5}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4912h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4913i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f4914j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f4915k = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(eo.this.f4915k);
            eo.this.f4913i = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            eo eoVar = eo.this;
            int i2 = eoVar.f4913i - 1;
            eoVar.f4913i = i2;
            if (i2 <= 0) {
                l0.b0.p0(eoVar.f4915k);
                eo.this.f4913i = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8633a) {
                    case 8520132:
                        z.k.s(227, 226, 1, 1);
                        break;
                    case 8585668:
                        z.k.s(227, 226, 1, 4);
                        break;
                    case 14418372:
                        z.k.s(227, 226, 1, 2);
                        break;
                    case 14483908:
                        z.k.s(227, 226, 1, 3);
                        break;
                    case 14549444:
                        z.k.s(227, 226, 1, 5);
                        break;
                    case 14614980:
                        z.k.s(227, 226, 1, 6);
                        break;
                }
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f4914j, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        int i5;
        byte b2 = bArr[i2];
        if (b2 == 16) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f4910f = b3 & 255;
            int i6 = 0;
            while (true) {
                iArr = this.f4911g;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f4910f;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f4909e = i6;
                    break;
                }
                i6++;
            }
            int i8 = this.f4910f;
            if (i8 == 14) {
                for (int i9 = 0; i9 < (b4 & 255); i9++) {
                    l0.b0.l0(8, 0);
                    l0.b0.l0(8, 1);
                }
                return;
            }
            if (i8 == 15) {
                for (int i10 = 0; i10 < (b4 & 255); i10++) {
                    l0.b0.l0(7, 0);
                    l0.b0.l0(7, 1);
                }
                return;
            }
            int i11 = b4 & 255;
            if (i11 == 1) {
                if (i6 < iArr.length) {
                    l0.b0.l0(iArr[i6][1], 0);
                    return;
                }
                return;
            } else {
                if (i11 == 0) {
                    int i12 = this.f4909e;
                    if (i12 < iArr.length) {
                        i4 = 255;
                        if (i12 != 255) {
                            l0.b0.l0(iArr[i12][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f4909e = i4;
                    return;
                }
                return;
            }
        }
        if (b2 == 41) {
            qt.m(bArr[i2 + 2], 0, 128, true, 128);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 114) {
            switch (bArr[i2 + 2]) {
                case 1:
                    int i13 = i2 + 3;
                    qt.y0(98, (bArr[i13] >> 7) & 1);
                    qt.y0(99, bArr[i13] & 127);
                    break;
                case 2:
                    qt.y0(100, bArr[i2 + 3] & 255);
                    break;
                case 3:
                    qt.y0(101, bArr[i2 + 3] & 255);
                    break;
                case 4:
                    qt.y0(102, bArr[i2 + 3] & 255);
                    break;
                case 5:
                    qt.y0(103, bArr[i2 + 3] & 255);
                    break;
                case 6:
                    qt.y0(104, bArr[i2 + 3] & 255);
                    break;
                case 7:
                    qt.y0(105, bArr[i2 + 3] & 255);
                    break;
            }
        }
        if (b2 == 115) {
            int i14 = i2 + 2;
            qt.y0(106, (bArr[i14] >> 4) & 15);
            qt.y0(107, (bArr[i14] >> 0) & 15);
            int i15 = i2 + 3;
            qt.y0(108, (bArr[i15] >> 4) & 15);
            qt.y0(109, (bArr[i15] >> 0) & 15);
            int i16 = i2 + 4;
            qt.y0(110, 15 & (bArr[i16] >> 4));
            qt.y0(111, (bArr[i16] >> 3) & 1);
            int i17 = i2 + 5;
            qt.y0(112, (bArr[i17] >> 7) & 1);
            qt.y0(112, (bArr[i17] >> 0) & 127);
            return;
        }
        if (b2 == 120) {
            int i18 = i2 + 2;
            qt.y0(114, (bArr[i18] >> 0) & 1);
            qt.y0(115, (bArr[i18] >> 1) & 1);
            qt.y0(116, (bArr[i18] >> 2) & 1);
            qt.y0(117, (bArr[i18] >> 3) & 1);
            qt.y0(118, (bArr[i18] >> 4) & 1);
            qt.y0(119, (bArr[i18] >> 5) & 1);
            int i19 = i2 + 3;
            qt.y0(120, (bArr[i19] >> 4) & 15);
            qt.y0(121, (bArr[i19] >> 0) & 15);
            return;
        }
        if (b2 == 121) {
            int i20 = i2 + 2;
            qt.y0(122, bArr[i20] & 255);
            if (bArr[i20] != this.f4912h) {
                byte b5 = bArr[i20];
                this.f4912h = b5;
                if (b5 == 1) {
                    b3();
                } else if (b5 == 2) {
                    a3();
                } else if (b5 == 4) {
                    c3();
                }
            } else if (bArr[i20] == 2 && u0.b.D != 11) {
                a3();
            } else if (bArr[i20] == 1 && u0.b.D != 11) {
                b3();
            } else if (bArr[i20] == 4 && u0.b.D != 11) {
                c3();
            }
            int i21 = bArr[i20] & 255;
            if (i21 == 1) {
                int i22 = i2 + 3;
                if (bArr[i22] == 0) {
                    qt.y0(123, bArr[i2 + 4] & 255);
                    int i23 = i2 + 5;
                    qt.y0(124, (bArr[i23] >> 7) & 1);
                    qt.y0(125, (bArr[i23] >> 5) & 1);
                    qt.y0(126, (bArr[i23] >> 0) & 15);
                    qt.y0(127, (bArr[i2 + 7] & 255) | (65280 & (bArr[i2 + 6] << 8)));
                    return;
                }
                if (bArr[i22] == 1) {
                    qt.y0(123, bArr[i2 + 4] & 255);
                    qt.y0(128, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                    qt.y0(129, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                    qt.y0(130, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                    qt.y0(131, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                    qt.y0(132, ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255));
                    qt.y0(133, (bArr[i2 + 16] & 255) | (65280 & (bArr[i2 + 15] << 8)));
                    return;
                }
                return;
            }
            if (i21 == 2 || i21 == 4) {
                int i24 = i2 + 3;
                if (bArr[i24] == 0) {
                    qt.y0(134, bArr[i2 + 4] & 255);
                    qt.y0(135, bArr[i2 + 5] & 255);
                    qt.y0(136, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                    qt.y0(137, (65280 & (bArr[i2 + 8] << 8)) | (bArr[i2 + 9] & 255));
                    qt.y0(140, bArr[i2 + 10] & 255);
                    qt.y0(139, bArr[i2 + 11] & 255);
                    qt.y0(138, bArr[i2 + 12] & 255);
                    return;
                }
                if (bArr[i24] == 1) {
                    int i25 = i2 + 4;
                    qt.y0(141, (bArr[i25] >> 5) & 7);
                    qt.y0(142, (bArr[i25] >> 4) & 1);
                    qt.y0(143, (bArr[i25] >> 3) & 1);
                    qt.y0(146, bArr[i2 + 5] & 255);
                    qt.y0(145, bArr[i2 + 6] & 255);
                    qt.y0(144, bArr[i2 + 7] & 255);
                    return;
                }
                return;
            }
            return;
        }
        switch (b2) {
            case 32:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                this.f4907c = b6 & 255;
                int i26 = 0;
                while (true) {
                    iArr2 = this.f4908d;
                    if (i26 < iArr2.length) {
                        int i27 = this.f4907c;
                        if (i27 != iArr2[i26][0]) {
                            i26++;
                        } else if (i27 != 0) {
                            this.f4906b = i26;
                        }
                    }
                }
                if (this.f4907c != 16) {
                    int i28 = b7 & 255;
                    if (i28 == 1) {
                        if (i26 < iArr2.length) {
                            l0.b0.l0(iArr2[i26][1], 0);
                        }
                    } else if (i28 == 0) {
                        int i29 = this.f4906b;
                        if (i29 < iArr2.length) {
                            i5 = 255;
                            if (i29 != 255) {
                                l0.b0.l0(iArr2[i29][1], 1);
                            }
                        } else {
                            i5 = 255;
                        }
                        this.f4906b = i5;
                    }
                } else if ((b7 & 255) == 1) {
                    int i30 = h0.c.E;
                    if (i30 == 3 || i30 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    }
                }
                break;
            case 33:
                int i31 = bArr[i2 + 2] & 255;
                int i32 = bArr[i2 + 3] & 255;
                int i33 = i2 + 4;
                int i34 = bArr[i33] & 255;
                int i35 = i2 + 5;
                int i36 = bArr[i35] & 255;
                int i37 = bArr[i2 + 6] & 255;
                int i38 = bArr[i2 + 7] & 255;
                qt.y0(10, (i31 >> 7) & 1);
                qt.y0(11, (i31 >> 6) & 1);
                qt.y0(12, (i31 >> 4) & 3);
                qt.y0(13, (i31 >> 3) & 1);
                qt.y0(14, (i31 >> 2) & 1);
                qt.y0(65, (i31 >> 1) & 1);
                qt.y0(16, (i31 >> 0) & 1);
                qt.y0(18, (i32 >> 7) & 1);
                qt.y0(19, (i32 >> 6) & 1);
                qt.y0(20, (i32 >> 5) & 1);
                qt.y0(21, i32 & 15);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i34 = bArr[i35] & 255;
                    i36 = bArr[i33] & 255;
                }
                int i39 = i34 & 255;
                int i40 = i36 & 255;
                if (i39 == 0) {
                    qt.y0(27, -2);
                } else if (i39 == 127) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i39);
                }
                if (i40 == 0) {
                    qt.y0(28, -2);
                } else if (i40 == 127) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i40);
                }
                qt.y0(76, (i37 >> 3) & 1);
                if (i38 == 128) {
                    u0.d.A3(0);
                } else if ((i38 & 128) != 0) {
                    u0.d.A3(1000 - ((256 - i38) * 10));
                } else {
                    u0.d.A3((i38 * 10) + 1000);
                }
                break;
            case 34:
                int i41 = i2 + 2;
                u0.d.R2(l0.c0.K0((bArr[i41] >> 4) & 15));
                u0.d.S2(l0.c0.K0((bArr[i41] >> 0) & 15));
                int i42 = i2 + 3;
                u0.d.T2(l0.c0.K0((bArr[i42] >> 4) & 15));
                u0.d.U2(l0.c0.K0((bArr[i42] >> 0) & 15));
                break;
            case 35:
                int i43 = i2 + 2;
                int i44 = (bArr[i43] >> 4) & 15;
                int i45 = (bArr[i43] >> 0) & 15;
                int i46 = i2 + 3;
                int i47 = (bArr[i46] >> 4) & 15;
                int i48 = (bArr[i46] >> 0) & 15;
                if (i44 == 0 && i45 == 0 && i47 == 0 && i48 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i44 || l0.c0.f13014h != i45 || l0.c0.f13015i != i47 || l0.c0.f13016j != i48) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i44;
                l0.c0.f13014h = i45;
                l0.c0.f13015i = i47;
                l0.c0.f13016j = i48;
                u0.d.D2(l0.c0.K0((bArr[i43] >> 4) & 15));
                u0.d.E2(l0.c0.K0((bArr[i43] >> 0) & 15));
                u0.d.F2(l0.c0.K0((bArr[i46] >> 4) & 15));
                u0.d.G2(l0.c0.K0((bArr[i46] >> 0) & 15));
                break;
            case 36:
                int i49 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i49 >> 6) & 1);
                    qt.y0(1, (i49 >> 7) & 1);
                } else {
                    qt.y0(2, (i49 >> 7) & 1);
                    qt.y0(1, (i49 >> 6) & 1);
                }
                qt.y0(4, (i49 >> 5) & 1);
                qt.y0(3, (i49 >> 4) & 1);
                qt.y0(5, (i49 >> 3) & 1);
                qt.y0(0, (i49 >> 2) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f4914j);
        l0.b0.p0(this.f4915k);
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
        if (i2 == 0) {
            z.k.s(227, 130, 2, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 144, 1, iArr[0]);
        }
    }

    public final void a3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.xc.lexus.XCLexusCd")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.xc.lexus.XCLexusCd");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void b3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.xc.lexus.XCLexusRadio")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.xc.lexus.XCLexusRadio");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void c3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.xc.lexus.XCLexusCarUSB")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.xc.lexus.XCLexusCarUSB");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}

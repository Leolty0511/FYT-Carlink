package k0;

import android.opengl.GLES10;
import android.os.SystemProperties;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class bs extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3816c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3817d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 1}, new int[]{10, 26}, new int[]{11, 13}, new int[]{12, 6}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 32}, new int[]{17, 33}, new int[]{18, 29}, new int[]{32, 49}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}, new int[]{42, 50}, new int[]{43, 51}, new int[]{51, 13}, new int[]{52, 24}, new int[]{53, 22}, new int[]{54, 53}, new int[]{55, 9}, new int[]{56, 38}, new int[]{57, 18}, new int[]{61, 56}, new int[]{63, 0}, new int[]{72, 29}, new int[]{73, 32}, new int[]{74, 33}, new int[]{75, 34}, new int[]{76, 35}, new int[]{82, 3}, new int[]{83, 4}, new int[]{84, 11}, new int[]{86, 78}, new int[]{87, 58}, new int[]{89, 38}, new int[]{90, 12}, new int[]{91, 25}, new int[]{92, -1}, new int[]{93, -1}, new int[]{94, -1}, new int[]{95, -1}, new int[]{111, 54}, new int[]{134, 16}, new int[]{240, -1}, new int[]{i.a.Theme_actionModeShareDrawable, -1}, new int[]{i.a.Theme_actionModeFindDrawable, -1}, new int[]{i.a.Theme_actionModeWebSearchDrawable, -1}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3818e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3819f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f3820g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f3821h = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(bs.this.f3821h);
            bs.this.f3819f = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bs bsVar = bs.this;
            int i2 = bsVar.f3819f - 1;
            bsVar.f3819f = i2;
            if (i2 <= 0) {
                l0.b0.p0(bsVar.f3821h);
                bs.this.f3819f = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 2, 48, 0);
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
        u0.c.f17386m.a(this.f3820g, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8314i = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 41) {
            int i4 = bArr[i2 + 2] & 255;
            if (i4 == 2) {
                int i5 = i2 + 3;
                qt.y0(98, (bArr[i5] >> 1) & 1);
                qt.y0(99, (bArr[i5] >> 0) & 1);
                qt.y0(100, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255));
                qt.y0(101, (bArr[i2 + 12] & 255) | ((bArr[i2 + 10] << 16) & Spanned.SPAN_PRIORITY) | (65280 & (bArr[i2 + 11] << 8)));
            }
            if (i4 != 3) {
                if (i4 != 4) {
                    return;
                }
                qt.y0(111, bArr[i2 + 3] & 255);
                qt.y0(113, bArr[i2 + 6] & 255);
                qt.y0(112, (bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280));
                return;
            }
            qt.y0(102, bArr[i2 + 3] & 255);
            qt.y0(103, bArr[i2 + 4] & 255);
            qt.y0(104, bArr[i2 + 5] & 255);
            qt.y0(105, bArr[i2 + 6] & 255);
            qt.y0(106, bArr[i2 + 7] & 255);
            qt.y0(107, bArr[i2 + 8] & 255);
            qt.y0(108, bArr[i2 + 9] & 255);
            qt.y0(109, bArr[i2 + 10] & 255);
            qt.y0(110, bArr[i2 + 11] & 255);
            return;
        }
        if (b2 == 53) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, GLES10.GL_AMBIENT);
            return;
        }
        if (b2 == 101) {
            switch (bArr[i2 + 2] & 255) {
                case 1:
                    qt.y0(127, bArr[i2 + 3] & 255);
                    qt.y0(128, bArr[i2 + 4] & 255);
                    qt.y0(129, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
                    qt.y0(130, bArr[i2 + 7] & 255);
                    break;
                case 2:
                    qt.y0(131, bArr[i2 + 3] & 255);
                    qt.y0(132, bArr[i2 + 4] & 255);
                    qt.y0(133, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
                    qt.y0(134, (bArr[i2 + 8] & 255) | ((bArr[i2 + 7] << 8) & 65280));
                    break;
                case 3:
                    qt.y0(135, bArr[i2 + 3] & 255);
                    qt.y0(136, bArr[i2 + 4] & 255);
                    qt.y0(137, bArr[i2 + 5] & 255);
                    qt.y0(138, bArr[i2 + 6] & 255);
                    qt.y0(139, bArr[i2 + 7] & 255);
                    break;
                case 4:
                    qt.y0(140, bArr[i2 + 3] & 255);
                    break;
                case 5:
                    qt.y0(141, bArr[i2 + 3] & 255);
                    qt.y0(142, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
                    qt.y0(143, (bArr[i2 + 6] & 255) | ((bArr[i2 + 7] << 8) & 65280));
                    break;
                case 6:
                    qt.y0(144, (bArr[i2 + 3] >> 7) & 1);
                    qt.y0(145, bArr[i2 + 4] & 255);
                    break;
                case 7:
                    qt.y0(146, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
                    qt.y0(147, (bArr[i2 + 5] & 255) | ((bArr[i2 + 6] << 8) & 65280));
                    break;
                case 8:
                    qt.y0(148, bArr[i2 + 3] & 255);
                    qt.y0(149, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                    qt.y0(150, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
                    break;
                case 9:
                    qt.y0(151, (bArr[i2 + 3] >> 7) & 1);
                    qt.y0(152, bArr[i2 + 4] & 255);
                    break;
                case 10:
                    qt.y0(153, (bArr[i2 + 3] >> 7) & 1);
                    qt.y0(154, bArr[i2 + 4] & 255);
                    break;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            int i6 = i2 + 2;
            qt.y0(114, (bArr[i6] >> 4) & 15);
            qt.y0(115, (bArr[i6] >> 0) & 15);
            int i7 = i2 + 3;
            qt.y0(116, (bArr[i7] >> 7) & 1);
            qt.y0(117, (bArr[i7] >> 6) & 1);
            qt.y0(118, (bArr[i7] >> 5) & 1);
            qt.y0(119, (bArr[i7] >> 4) & 1);
            qt.y0(120, (bArr[i7] >> 3) & 1);
            qt.y0(121, (bArr[i7] >> 2) & 1);
            qt.y0(122, (bArr[i7] >> 1) & 1);
            qt.y0(123, (bArr[i7] >> 0) & 1);
            int i8 = i2 + 4;
            qt.y0(124, (bArr[i8] >> 7) & 1);
            qt.y0(125, (bArr[i8] >> 6) & 1);
            qt.y0(126, (bArr[i2 + 5] >> 4) & 15);
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f3816c = b3 & 255;
                int i9 = 0;
                while (true) {
                    iArr = this.f3817d;
                    if (i9 < iArr.length) {
                        int i10 = this.f3816c;
                        if (i10 != iArr[i9][0]) {
                            i9++;
                        } else if (i10 != 0) {
                            this.f3815b = i9;
                        }
                    }
                }
                int i11 = this.f3816c;
                if (i11 == 42) {
                    int i12 = this.f3818e;
                    if (i12 != (b4 & 255)) {
                        if (b4 == 0 && i12 == 1) {
                            l0.b0.l0(50, 0);
                            l0.b0.l0(50, 1);
                        } else if (b4 == 2 && i12 == 1) {
                            l0.b0.l0(63, 0);
                            l0.b0.l0(63, 1);
                        }
                        this.f3818e = b4;
                    }
                    break;
                } else {
                    switch (i11) {
                        case 240:
                            for (int i13 = 0; i13 < (b4 & 255); i13++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        case i.a.Theme_actionModeShareDrawable /* 241 */:
                            for (int i14 = 0; i14 < (b4 & 255); i14++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            break;
                        case i.a.Theme_actionModeFindDrawable /* 242 */:
                            for (int i15 = 0; i15 < (b4 & 255); i15++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            break;
                        case i.a.Theme_actionModeWebSearchDrawable /* 243 */:
                            for (int i16 = 0; i16 < (b4 & 255); i16++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            break;
                        default:
                            int i17 = b4 & 255;
                            if (i17 == 1) {
                                if (i9 < iArr.length) {
                                    l0.b0.l0(iArr[i9][1], 0);
                                }
                            } else if (i17 == 0) {
                                int i18 = this.f3815b;
                                if (i18 < iArr.length && i18 != 255) {
                                    l0.b0.l0(iArr[i18][1], 1);
                                }
                                this.f3815b = 255;
                            }
                            break;
                    }
                }
                break;
            case 33:
                int i19 = bArr[i2 + 2] & 255;
                int i20 = bArr[i2 + 3] & 255;
                int i21 = i2 + 4;
                int i22 = bArr[i21] & 255;
                int i23 = i2 + 5;
                int i24 = bArr[i23] & 255;
                int i25 = i2 + 6;
                byte b5 = bArr[i25];
                qt.y0(10, (i19 >> 7) & 1);
                qt.y0(11, (i19 >> 6) & 1);
                qt.y0(12, (i19 >> 5) & 1);
                qt.y0(13, (i19 >> 3) & 1);
                qt.y0(14, (i19 >> 2) & 1);
                qt.y0(16, (i19 >> 0) & 1);
                qt.y0(65, (i19 >> 1) & 1);
                qt.y0(18, (i20 >> 7) & 1);
                qt.y0(19, (i20 >> 6) & 1);
                qt.y0(20, (i20 >> 5) & 1);
                qt.y0(21, i20 & 15);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i22 = bArr[i23] & 255;
                    i24 = bArr[i21] & 255;
                }
                if (i22 == 0) {
                    qt.y0(27, -2);
                } else if (i22 == 127) {
                    qt.y0(27, -3);
                } else if (i22 <= 31 || i22 >= 63) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, i22 * 5);
                }
                if (i24 == 0) {
                    qt.y0(28, -2);
                } else if (i24 == 127) {
                    qt.y0(28, -3);
                } else if (i24 <= 31 || i24 >= 63) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, i24 * 5);
                }
                qt.y0(53, (bArr[i25] >> 2) & 1);
                qt.y0(15, (bArr[i25] >> 3) & 1);
                qt.y0(37, (bArr[i25] >> 6) & 1);
                int i26 = bArr[i2 + 7] & 255;
                u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((((i26 & 128) != 0 ? 1320 - ((256 - i26) * 18) : (i26 * 18) + 1320) / 10) * 10) | 268435456) & (-1) : (i26 & 128) != 0 ? 1000 - ((256 - i26) * 10) : ((i26 & 255) * 10) + 1000);
                break;
            case 34:
                u0.d.R2(l0.c0.b1(bArr[i2 + 2]));
                u0.d.S2(l0.c0.b1(bArr[i2 + 3]));
                u0.d.T2(l0.c0.b1(bArr[i2 + 4]));
                u0.d.U2(l0.c0.b1(bArr[i2 + 5]));
                break;
            case 35:
                int i27 = i2 + 2;
                int i28 = bArr[i27] & 255;
                int i29 = i2 + 3;
                int i30 = bArr[i29] & 255;
                int i31 = i2 + 4;
                int i32 = bArr[i31] & 255;
                int i33 = i2 + 5;
                int i34 = 255 & bArr[i33];
                if (i28 == 0 && i30 == 0 && i32 == 0 && i34 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i28 || l0.c0.f13014h != i30 || l0.c0.f13015i != i32 || l0.c0.f13016j != i34) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i28;
                l0.c0.f13014h = i30;
                l0.c0.f13015i = i32;
                l0.c0.f13016j = i34;
                u0.d.D2(l0.c0.b1(bArr[i27]));
                u0.d.E2(l0.c0.b1(bArr[i29]));
                u0.d.F2(l0.c0.b1(bArr[i31]));
                u0.d.G2(l0.c0.b1(bArr[i33]));
                break;
            case 36:
                int i35 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (i35 >> 7) & 1);
                    qt.y0(2, (i35 >> 6) & 1);
                } else {
                    qt.y0(1, (i35 >> 6) & 1);
                    qt.y0(2, (i35 >> 7) & 1);
                }
                qt.y0(3, (i35 >> 4) & 1);
                qt.y0(4, (i35 >> 5) & 1);
                qt.y0(5, (i35 >> 3) & 1);
                qt.y0(0, (i35 >> 2) & 1);
                int i36 = i2 + 6;
                l0.c0.a((bArr[i36] >> 2) & 1, (bArr[i36] >> 3) & 1, 0);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f3820g);
        l0.b0.p0(this.f3821h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 155) {
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
            z.k.s(227, 199, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3 && iArr != null && iArr.length > 0) {
            z.k.s(227, 240, 2, iArr[0], iArr[1]);
        }
    }
}

package k0;

import android.content.pm.PackageManager;
import android.os.SystemProperties;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class rk extends lt {
    public static int A = 0;
    public static int B = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f9940w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f9941x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f9942y = 1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f9943z = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9945c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9946d = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 8}, new int[]{5, 7}, new int[]{6, 12}, new int[]{9, 2}, new int[]{16, 1}, new int[]{17, 13}, new int[]{18, 18}, new int[]{19, 24}, new int[]{20, 54}, new int[]{21, -1}, new int[]{22, -1}, new int[]{23, -1}, new int[]{24, 58}, new int[]{25, 26}, new int[]{32, 5}, new int[]{33, 34}, new int[]{34, 35}, new int[]{35, 32}, new int[]{36, 33}, new int[]{37, 29}, new int[]{38, 6}, new int[]{39, 5}, new int[]{129, -1}, new int[]{130, -1}, new int[]{145, -1}, new int[]{146, -1}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9947e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f9948f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f9949g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9950h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f9951i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f9952j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public o1.g0 f9953k = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f9954l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f9955m = 2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f9956n = 3;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f9957o = 4;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f9958p = 5;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f9959q = 15;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f9960r = 6;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f9961s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f9962t = new c();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f9963u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f9964v = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(rk.this.f9952j);
            rk rkVar = rk.this;
            rkVar.f9950h = 10;
            rkVar.f9963u = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rk rkVar = rk.this;
            int i2 = rkVar.f9950h - 1;
            rkVar.f9950h = i2;
            if (i2 <= 0) {
                l0.b0.p0(rkVar.f9952j);
                rk.this.f9950h = 11;
                return;
            }
            z.k.s(227, 1, 129, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                rk rkVar2 = rk.this;
                rkVar2.b3(rkVar2.f9953k.b(1, 1));
                rk rkVar3 = rk.this;
                rkVar3.d3(rkVar3.f9953k.b(2, 0));
                rk rkVar4 = rk.this;
                rkVar4.e3(rkVar4.f9953k.b(3, 1));
                rk rkVar5 = rk.this;
                rkVar5.c3(rkVar5.f9953k.b(4, 0));
                rk rkVar6 = rk.this;
                rkVar6.a3(rkVar6.f9953k.b(5, 0));
                rk rkVar7 = rk.this;
                rkVar7.o3(rkVar7.f9953k.b(15, 0));
                int i3 = nt.f8633a;
                if (i3 == 7078332 || i3 == 2294206) {
                    rk rkVar8 = rk.this;
                    rkVar8.n3(rkVar8.f9953k.b(6, 0));
                }
                if (o1.u.a0()) {
                    return;
                }
                z.k.s(227, 2, 146, 0, 0);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (rk.this.f9961s == 1) {
                z.k.s(227, 1, 144, 22);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rk rkVar = rk.this;
            int i2 = rkVar.f9963u + 1;
            rkVar.f9963u = i2;
            if (i2 % 2 == 0) {
                if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                    z.k.s(227, 1, 144, 97);
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
        this.f9953k.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        mtVar.f8322q = 0;
        mtVar.f8314i = 0;
        mtVar.f8317l = 1;
        int i2 = nt.f8633a;
        if (i2 == 6095292 || i2 == 6488508 || i2 == 2097598 || i2 == 2163134) {
            mtVar.f8314i = 1;
        }
        u0.c.f17386m.a(this.f9951i, 1);
        qt.y(this.f9962t);
        l0.b0.a(this.f9964v);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == 1) {
            int i4 = i2 + 2;
            qt.y0(118, (bArr[i4] >> 6) & 1);
            qt.y0(119, (bArr[i4] >> 7) & 1);
            return;
        }
        if (b2 == 18) {
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                int i5 = i2 + 6;
                qt.y0(1, (bArr[i5] >> 6) & 1);
                qt.y0(2, (bArr[i5] >> 7) & 1);
            } else {
                int i6 = i2 + 6;
                qt.y0(1, (bArr[i6] >> 7) & 1);
                qt.y0(2, (bArr[i6] >> 6) & 1);
            }
            int i7 = i2 + 6;
            qt.y0(3, (bArr[i7] >> 5) & 1);
            qt.y0(4, (bArr[i7] >> 4) & 1);
            qt.y0(5, (bArr[i7] >> 3) & 1);
            qt.y0(104, bArr[i2 + 5] & 255);
            int i8 = i2 + 7;
            qt.y0(106, bArr[i8] & 255);
            int i9 = i2 + 8;
            qt.y0(102, (bArr[i9] >> 6) & 3);
            int i10 = i2 + 10;
            qt.y0(98, bArr[i10] & 255);
            qt.y0(116, bArr[i2 + 4] & 255);
            qt.y0(109, bArr[i8] & 255);
            qt.y0(110, (bArr[i9] >> 6) & 3);
            qt.y0(111, (bArr[i9] >> 4) & 3);
            int i11 = i2 + 9;
            u0.d.B3(((bArr[i11] >> 7) & 1) == 1 ? 1000 - ((bArr[i11] & 127) * 5) : ((bArr[i11] & 127) * 5) + 1000);
            if (u0.b.P == 0) {
                if (bArr[i10] != 0) {
                    qt.b(1);
                    return;
                } else {
                    qt.b(0);
                    return;
                }
            }
            return;
        }
        if (b2 == 22) {
            int i12 = i2 + 2;
            int i13 = i2 + 3;
            qt.y0(105, ((bArr[i12] << 8) & 65280) | (bArr[i13] & 255));
            qt.y0(1031, ((bArr[i12] << 8) & 65280) | (bArr[i13] & 255));
            o1.x.C(nt.f8643f, 1049, new int[]{1, (bArr[i13] & 255) | ((bArr[i12] << 8) & 65280)}, null, null);
            qt.y0(107, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
            return;
        }
        if (b2 == 34) {
            this.f9945c = bArr[i2 + 2] & 255;
            int i14 = bArr[i2 + 3] & 255;
            int i15 = 0;
            while (true) {
                iArr = this.f9946d;
                if (i15 >= iArr.length) {
                    break;
                }
                int i16 = this.f9945c;
                if (i16 == iArr[i15][0]) {
                    if (i16 == 0) {
                        break;
                    }
                    this.f9944b = i15;
                    break;
                }
                i15++;
            }
            int i17 = this.f9945c;
            if (i17 == 4) {
                if (f9940w == 1 && (i14 & 255) == 1) {
                    l0.b0.l0(8, 0);
                    l0.b0.l0(8, 1);
                    return;
                }
                return;
            }
            if (i17 == 5) {
                if (f9940w == 1 && (i14 & 255) == 1) {
                    l0.b0.l0(7, 0);
                    l0.b0.l0(7, 1);
                    return;
                }
                return;
            }
            if (i17 == 129) {
                for (int i18 = 0; i18 < (i14 & 255); i18++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                return;
            }
            if (i17 == 130) {
                for (int i19 = 0; i19 < (i14 & 255); i19++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            if (i17 == 145) {
                if (f9940w == 1) {
                    for (int i20 = 0; i20 < (i14 & 255); i20++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    return;
                }
                return;
            }
            if (i17 == 146) {
                if (f9940w == 1) {
                    for (int i21 = 0; i21 < (i14 & 255); i21++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    return;
                }
                return;
            }
            int i22 = i14 & 255;
            if (i22 == 1) {
                if (i15 < iArr.length) {
                    l0.b0.l0(iArr[i15][1], 0);
                    return;
                }
                return;
            } else {
                if (i22 == 0) {
                    int i23 = this.f9944b;
                    if (i23 < iArr.length && i23 != 255) {
                        l0.b0.l0(iArr[i23][1], 1);
                    }
                    this.f9944b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 78) {
            qt.y0(167, bArr[i2 + 2] & 255);
            qt.y0(168, bArr[i2 + 3] & 255);
            qt.y0(169, bArr[i2 + 4] & 255);
            qt.y0(170, bArr[i2 + 6] & 255);
            return;
        }
        if (b2 == 82) {
            int i24 = i2 + 2;
            qt.y0(120, (bArr[i24] >> 4) & 15);
            qt.y0(121, (bArr[i24] >> 0) & 15);
            qt.y0(122, (bArr[i2 + 3] >> 0) & 255);
            qt.y0(123, (bArr[i2 + 4] >> 0) & 255);
            int i25 = i2 + 5;
            qt.y0(124, (bArr[i25] >> 6) & 3);
            qt.y0(125, (bArr[i25] >> 4) & 3);
            qt.y0(126, (bArr[i25] >> 2) & 3);
            qt.y0(127, (bArr[i25] >> 0) & 3);
            int i26 = i2 + 6;
            qt.y0(128, (bArr[i26] >> 6) & 3);
            qt.y0(129, (bArr[i26] >> 4) & 3);
            qt.y0(130, (bArr[i26] >> 2) & 3);
            int i27 = i2 + 7;
            qt.y0(131, (bArr[i27] >> 7) & 1);
            qt.y0(132, (bArr[i27] >> 4) & 1);
            qt.y0(133, (bArr[i27] >> 0) & 15);
            int i28 = i2 + 8;
            qt.y0(134, (bArr[i28] >> 6) & 3);
            qt.y0(135, (bArr[i28] >> 4) & 3);
            qt.y0(136, (bArr[i28] >> 2) & 3);
            int i29 = (bArr[i24] >> 0) & 15;
            if (i29 != 0) {
                if (i29 == 1) {
                    qt.y0(137, bArr[i2 + 10] & 255);
                    return;
                }
                if (i29 != 3) {
                    if (i29 != 15) {
                        return;
                    }
                    int i30 = i2 + 10;
                    qt.y0(146, (bArr[i30] >> 7) & 1);
                    qt.y0(147, (bArr[i30] >> 6) & 1);
                    qt.x0(148, new String(bArr, i2 + 11, bArr[i30] & 31));
                    return;
                }
                qt.y0(139, bArr[i2 + 10] & 255);
                qt.y0(140, bArr[i2 + 11] & 255);
                qt.y0(141, bArr[i2 + 12] & 255);
                qt.y0(142, bArr[i2 + 13] & 255);
                qt.y0(143, bArr[i2 + 14] & 255);
                qt.y0(144, bArr[i2 + 15] & 255);
                qt.y0(145, bArr[i2 + 16] & 255);
                return;
            }
            int i31 = (bArr[i24] >> 4) & 15;
            if (i31 == 1) {
                qt.y0(149, bArr[i2 + 10] & 255);
                qt.y0(150, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                qt.y0(151, (bArr[i2 + 13] >> 7) & 1);
                return;
            }
            if (i31 == 2) {
                qt.y0(152, bArr[i2 + 10] & 255);
                qt.y0(153, bArr[i2 + 12] & 255);
                qt.y0(154, bArr[i2 + 14] & 255);
                qt.y0(155, bArr[i2 + 15] & 255);
                return;
            }
            if (i31 == 4) {
                qt.y0(156, bArr[i2 + 12] & 255);
                qt.y0(157, bArr[i2 + 14] & 255);
                qt.y0(158, bArr[i2 + 15] & 255);
                return;
            } else {
                if (i31 != 5) {
                    return;
                }
                qt.y0(159, bArr[i2 + 11] & 255);
                qt.y0(160, bArr[i2 + 13] & 255);
                qt.y0(161, bArr[i2 + 14] & 255);
                qt.y0(162, bArr[i2 + 15] & 255);
                return;
            }
        }
        if (b2 == 103) {
            qt.y0(171, bArr[i2 + 2] & 255);
            qt.y0(172, bArr[i2 + 3] & 255);
            return;
        }
        if (b2 == 36) {
            int i32 = i2 + 2;
            qt.y0(37, (bArr[i32] >> 3) & 1);
            qt.y0(10, (bArr[i32] >> 2) & 1);
            qt.y0(14, (bArr[i32] >> 0) & 3);
            int i33 = i2 + 3;
            int i34 = bArr[i33] & 255;
            int i35 = i2 + 4;
            int i36 = bArr[i35] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i34 = bArr[i35] & 255;
                i36 = bArr[i33] & 255;
            }
            int i37 = i34 & 255;
            if (i37 == 0) {
                qt.y0(27, -2);
            } else if (i37 == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i37);
            }
            int i38 = i36 & 255;
            if (i38 == 0) {
                qt.y0(28, -2);
            } else if (i38 == 255) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i38);
            }
            int i39 = i2 + 5;
            qt.y0(49, (bArr[i39] >> 7) & 1);
            qt.y0(18, (bArr[i39] >> 6) & 1);
            qt.y0(19, (bArr[i39] >> 5) & 1);
            qt.y0(20, (bArr[i39] >> 4) & 1);
            int i40 = i2 + 6;
            qt.y0(77, (bArr[i40] >> 4) & 15);
            qt.y0(21, (bArr[i40] >> 0) & 15);
            int i41 = i2 + 7;
            qt.y0(12, (bArr[i41] >> 7) & 1);
            qt.y0(11, (bArr[i41] >> 5) & 1);
            int i42 = i2 + 8;
            qt.y0(29, (bArr[i42] >> 4) & 3);
            qt.y0(30, (bArr[i42] >> 0) & 3);
            int i43 = i2 + 9;
            qt.y0(31, (bArr[i43] >> 4) & 3);
            qt.y0(32, (bArr[i43] >> 0) & 3);
            int i44 = i2 + 10;
            qt.y0(50, (bArr[i44] >> 7) & 1);
            qt.y0(22, (bArr[i44] >> 6) & 1);
            qt.y0(23, (bArr[i44] >> 5) & 1);
            qt.y0(24, (bArr[i44] >> 4) & 1);
            int i45 = i2 + 11;
            qt.y0(87, (bArr[i45] >> 4) & 15);
            qt.y0(25, (bArr[i45] >> 0) & 15);
            return;
        }
        if (b2 != 37) {
            if (b2 != 97) {
                if (b2 == 98 && this.f9950h == 11) {
                    byte b3 = bArr[i2 + 2];
                    this.f9949g = b3;
                    if (b3 == 1) {
                        if (o1.u.S(a.b.Q)) {
                            return;
                        }
                        o1.u.f(a.b.R);
                        return;
                    } else {
                        if (o1.u.S(a.b.Q)) {
                            o1.u.k();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            byte b4 = bArr[i2 + 2];
            if (u0.b.f17357r0 == 0 && this.f9947e != b4) {
                this.f9947e = b4;
                if (b4 == 1) {
                    if (!o1.u.S(a.b.Q)) {
                        qt.y0(173, 1);
                        this.f9948f = true;
                        SystemProperties.set("persist.lesc.video.ignore", "true");
                        a.i.a0(200L);
                        o1.u.z();
                    }
                } else if (b4 == 0) {
                    if (o1.u.S(a.b.Q) && this.f9948f) {
                        qt.y0(173, 0);
                        a.i.a0(350L);
                        SystemProperties.set("persist.lesc.video.ignore", "false");
                        o1.u.k();
                    }
                    this.f9948f = false;
                }
            }
            u0.d.D2(bArr[i2 + 4] & 255);
            u0.d.E2(bArr[i2 + 5] & 255);
            u0.d.F2(bArr[i2 + 6] & 255);
            u0.d.G2(bArr[i2 + 7] & 255);
            u0.d.R2(bArr[i2 + 8] & 255);
            u0.d.S2(bArr[i2 + 9] & 255);
            u0.d.T2(bArr[i2 + 10] & 255);
            u0.d.U2(bArr[i2 + 11] & 255);
            qt.l(bArr[i2 + 13], bArr[i2 + 12], true, 780);
            int i46 = i2 + 3;
            l0.c0.N1((bArr[i46] >> 0) & 1, (bArr[i46] >> 1) & 1, 0);
            return;
        }
        int i47 = i2 + 2;
        qt.y0(10, (bArr[i47] >> 7) & 1);
        qt.y0(11, (bArr[i47] >> 6) & 1);
        qt.y0(12, (bArr[i47] >> 4) & 3);
        qt.y0(13, (bArr[i47] >> 2) & 3);
        qt.y0(65, (bArr[i47] >> 1) & 1);
        qt.y0(16, (bArr[i47] >> 0) & 1);
        int i48 = i2 + 3;
        qt.y0(15, (bArr[i48] >> 7) & 1);
        qt.y0(62, (bArr[i48] >> 6) & 1);
        int i49 = i2 + 4;
        qt.y0(18, (bArr[i49] >> 7) & 1);
        qt.y0(19, (bArr[i49] >> 6) & 1);
        qt.y0(20, (bArr[i49] >> 5) & 1);
        qt.y0(21, (bArr[i49] >> 0) & 15);
        int i50 = i2 + 5;
        int i51 = bArr[i50] & 255;
        int i52 = i2 + 6;
        int i53 = bArr[i52] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i51 = bArr[i52] & 255;
            i53 = bArr[i50] & 255;
        }
        int i54 = i51 & 255;
        if (i54 == 0) {
            qt.y0(27, -2);
        } else if (i54 == 128) {
            qt.y0(27, -3);
        } else if (i54 < 32 || i54 > 64) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, i54);
        }
        int i55 = i53 & 255;
        if (i55 == 0) {
            qt.y0(28, -2);
        } else if (i55 == 128) {
            qt.y0(28, -3);
        } else if (i55 < 32 || i55 > 64) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, i55);
        }
        int i56 = i2 + 8;
        qt.y0(49, (bArr[i56] >> 7) & 1);
        qt.y0(33, (bArr[i56] >> 6) & 1);
        if ((bArr[i2 + 9] & 255) == 120) {
            int i57 = i2 + 10;
            qt.y0(22, (bArr[i57] >> 7) & 1);
            qt.y0(23, (bArr[i57] >> 6) & 1);
            qt.y0(24, (bArr[i57] >> 5) & 1);
            qt.y0(25, (bArr[i57] >> 0) & 15);
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f9953k.j();
        u0.c.f17386m.d(this.f9951i);
        qt.p0(this.f9962t);
        l0.b0.o0(this.f9964v);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 174) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                c3(iArr[0]);
                break;
            case 1:
                z.k.s(227, 2, -110, iArr[0], 0);
                break;
            case 2:
                z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_MANIFEST_EMPTY, iArr[0], 0);
                break;
            case 3:
                z.k.s(227, 1, -119, iArr[0]);
                break;
            case 4:
                int i3 = iArr[0];
                if (i3 == 1) {
                    b3(iArr[1]);
                    break;
                } else if (i3 == 2) {
                    d3(iArr[1]);
                    break;
                } else if (i3 == 3) {
                    e3(iArr[1]);
                    break;
                } else if (i3 == 4) {
                    a3(iArr[1]);
                    break;
                } else if (i3 == 5) {
                    o3(iArr[1]);
                    break;
                }
                break;
            case 5:
                z.k.s(227, 13, -80, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7], iArr[8], 0, 0, 0, 0);
                break;
            case 6:
                this.f9961s = iArr[0];
                break;
            case 7:
                z.k.s(227, 3, -63, iArr[0], iArr[1], iArr[2]);
                break;
            case 8:
                z.k.s(227, 2, -62, iArr[0], iArr[1]);
                break;
            case 9:
                z.k.s(227, 2, -78, iArr[0], iArr[1]);
                break;
            case 10:
                qt.y0(163, 0);
                qt.y0(165, iArr[0]);
                break;
            case 11:
                if ((iArr[0] & 255) == 251) {
                    n3(iArr[1]);
                }
                break;
            case 12:
                z.k.s(227, 2, -79, iArr[0], iArr[1]);
                break;
            case 13:
                z.k.s(227, 2, -114, iArr[0], iArr[1]);
                break;
        }
    }

    public final void a3(int i2) {
        A = i2;
        qt.y0(117, i2);
        int iB = this.f9953k.b(5, 0);
        int i3 = A;
        if (iB != i3) {
            this.f9953k.g(5, i3);
        }
    }

    public final void b3(int i2) {
    }

    public final void c3(int i2) {
        f9943z = i2;
        qt.y0(112, i2);
        z.k.s(227, 1, -121, i2);
        int iB = this.f9953k.b(4, 0);
        int i3 = f9943z;
        if (iB != i3) {
            this.f9953k.g(4, i3);
        }
    }

    public final void d3(int i2) {
        f9941x = i2;
        qt.y0(114, i2);
        int iB = this.f9953k.b(2, 0);
        int i3 = f9941x;
        if (iB != i3) {
            this.f9953k.g(2, i3);
            SystemProperties.set("persist.sys.splitscreenon", String.format(Locale.US, "%d", Integer.valueOf(f9941x)));
        }
    }

    public final void e3(int i2) {
        f9942y = i2;
        qt.y0(115, i2);
        qt.y0(1038, f9942y);
        int iB = this.f9953k.b(3, 1);
        int i3 = f9942y;
        if (iB != i3) {
            this.f9953k.g(3, i3);
        }
    }

    public final void n3(int i2) {
        qt.y0(166, i2);
        B = i2;
        int iB = this.f9953k.b(6, 0);
        int i3 = B;
        if (iB != i3) {
            this.f9953k.g(6, i3);
            SystemProperties.set("persist.sys.penneltype", String.format(Locale.US, "%d", Integer.valueOf(B)));
        }
    }

    public final void o3(int i2) {
        qt.y0(164, i2);
        f9940w = i2;
        int iB = this.f9953k.b(15, 0);
        int i3 = f9940w;
        if (iB != i3) {
            this.f9953k.g(15, i3);
        }
    }
}

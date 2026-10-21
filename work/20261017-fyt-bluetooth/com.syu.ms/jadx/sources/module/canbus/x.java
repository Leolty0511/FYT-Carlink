package module.canbus;

import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.util.DisplayMetrics;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class x extends lt {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f14942m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f14943n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f14944o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f14945p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f14946q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f14947r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int[] f14948s = {0, 1, 3, 7, 10, 13, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int[] f14949t = {0, 1, 3, 4, 5, 7, 8, 9, 11, 13, 14, 15, 16, 17, 18, 20, 22};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final o1.f<f> f14950u = new o1.f<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14951b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14952c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f14953d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{33, 0}, new int[]{34, 5}, new int[]{35, 6}, new int[]{36, 1}, new int[]{37, 7}, new int[]{38, 8}, new int[]{39, 24}, new int[]{40, 54}, new int[]{41, 30}, new int[]{42, 31}, new int[]{43, 7}, new int[]{44, 7}, new int[]{45, 30}, new int[]{46, 31}, new int[]{47, 5}, new int[]{48, 18}, new int[]{49, 54}, new int[]{50, 2}, new int[]{51, 16}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f14954e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14955f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f14956g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f14957h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f14958i = new d();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f14959j = 100;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f14960k = new e();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f14961l = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(x.this.f14957h);
            x.this.f14955f = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x xVar = x.this;
            int i2 = xVar.f14955f - 1;
            xVar.f14955f = i2;
            if (i2 <= 0) {
                l0.b0.p0(xVar.f14957h);
                x.this.f14955f = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (nt.f8637c != 2) {
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 2, 48, 0);
                }
            } else {
                if (u0.b.f17306a0 != 1) {
                    z.k.s(227, 132, 2, 9, 0);
                    return;
                }
                z.k.s(227, 132, 2, 9, 1);
                z.k.s(227, 144, 2, 23, 0);
                z.k.s(227, 144, 2, 48, 0);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x.this.r3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (x.this.f14959j > 100) {
                    x.f3(x.this);
                    if (x.this.f14961l == x.this.f14959j / 100) {
                        x.this.f14961l = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = x.f14943n = x.f14948s[0];
                } else {
                    int unused2 = x.f14943n = x.f14948s[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (x.this.f7886a.f8308c == 1) {
                    if (x.f14944o != x.f14946q) {
                        x.this.q3();
                    }
                    if (x.f14945p != x.f14947r) {
                        x.this.p3();
                    }
                }
            }
        }
    }

    public static class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14967a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14968b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14969c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14970d;

        public f(int i2, int i3) {
            this.f14967a = i2;
            this.f14970d = i3;
        }

        public synchronized void a(int i2) {
            this.f14968b = i2;
            if (!this.f14969c) {
                this.f14969c = true;
                o1.k.a().postDelayed(this, this.f14970d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 132, 2, this.f14967a, this.f14968b);
            this.f14969c = false;
        }
    }

    public static /* synthetic */ int f3(x xVar) {
        int i2 = xVar.f14961l;
        xVar.f14961l = i2 + 1;
        return i2;
    }

    public static void n3(int i2, int i3) {
        f fVarC = f14950u.c(i2);
        if (fVarC != null) {
            fVarC.a(i3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        if (nt.f8637c == 2) {
            y0.f.C0 = 7;
        }
        y0.f.C0 = 18;
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = f14949t;
            f14946q = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            f14947r = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        mtVar.f8309d = 0;
        qt.x(this.f14954e);
        u0.c.f17386m.a(this.f14956g, 1);
        if (nt.f8637c != 2) {
            mt mtVar2 = this.f7886a;
            mtVar2.f8307b = 0;
            mtVar2.f8308c = 0;
        } else {
            mt mtVar3 = this.f7886a;
            mtVar3.f8307b = 1;
            mtVar3.f8308c = 0;
            init();
            o3();
            y0.g.f18094d.a(this.f14958i, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2;
        int[][] iArr;
        int i4;
        int i5;
        byte b3 = bArr[i2];
        if (b3 == -53) {
            qt.y0(98, bArr[i2 + 2] & 255);
        }
        if (b3 == 23) {
            if (nt.a()) {
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                byte b6 = bArr[i2 + 5];
                byte b7 = bArr[i2 + 6];
                byte b8 = bArr[i2 + 7];
                byte b9 = bArr[i2 + 9];
                b2 = 255;
                f14944o = o0.a(b4 & 255, 0, 22);
                f14945p = o0.a(b5 & 255, 0, 22);
                f14942m = o0.a(b9 & 255, 0, 45);
            } else {
                b2 = 255;
            }
            qt.y0(125, bArr[i2 + 2] & b2);
            qt.y0(126, bArr[i2 + 3] & b2);
            qt.y0(127, bArr[i2 + 4] & b2);
            qt.y0(128, bArr[i2 + 5] & b2);
            qt.y0(129, bArr[i2 + 6] & b2);
            qt.y0(130, bArr[i2 + 7] & b2);
            qt.y0(131, bArr[i2 + 8] & b2);
            qt.y0(132, bArr[i2 + 9] & b2);
            qt.y0(133, bArr[i2 + 10] & b2);
            qt.y0(134, bArr[i2 + 11] & b2);
            qt.y0(135, bArr[i2 + 12] & b2);
            qt.y0(136, bArr[i2 + 13] & b2);
            qt.y0(137, bArr[i2 + 14] & b2);
            return;
        }
        if (b3 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 64) {
            int i6 = i2 + 2;
            qt.y0(99, (bArr[i6] >> 5) & 7);
            qt.y0(100, (bArr[i6] >> 2) & 3);
            int i7 = i2 + 3;
            qt.y0(101, (bArr[i7] >> 6) & 3);
            qt.y0(102, (bArr[i7] >> 5) & 1);
            qt.y0(103, (bArr[i7] >> 4) & 1);
            qt.y0(104, (bArr[i7] >> 2) & 3);
            qt.y0(105, (bArr[i7] >> 1) & 1);
            int i8 = i2 + 4;
            qt.y0(106, (bArr[i8] >> 7) & 1);
            qt.y0(107, (bArr[i8] >> 4) & 7);
            qt.y0(108, (bArr[i8] >> 1) & 7);
            int i9 = i2 + 5;
            qt.y0(109, (bArr[i9] >> 6) & 3);
            qt.y0(110, (bArr[i9] >> 4) & 3);
            qt.y0(111, (bArr[i9] >> 0) & 7);
            int i10 = i2 + 6;
            qt.y0(112, (bArr[i10] >> 7) & 1);
            qt.y0(113, (bArr[i10] >> 6) & 1);
            qt.y0(114, (bArr[i10] >> 5) & 1);
            qt.y0(115, (bArr[i10] >> 3) & 3);
            qt.y0(116, (bArr[i10] >> 2) & 1);
            qt.y0(117, (bArr[i10] >> 0) & 3);
            int i11 = i2 + 7;
            qt.y0(118, (bArr[i11] >> 7) & 1);
            qt.y0(119, (bArr[i11] >> 6) & 1);
            qt.y0(120, (bArr[i11] >> 4) & 3);
            qt.y0(121, (bArr[i11] >> 2) & 3);
            qt.y0(122, (bArr[i11] >> 1) & 1);
            int i12 = i2 + 8;
            qt.y0(123, (bArr[i12] >> 6) & 3);
            qt.y0(124, (bArr[i12] >> 4) & 3);
            return;
        }
        if (b3 == 40) {
            int i13 = bArr[i2 + 2] & 255;
            int i14 = bArr[i2 + 3] & 255;
            int i15 = i2 + 4;
            int i16 = bArr[i15] & 255;
            int i17 = i2 + 5;
            int i18 = bArr[i17] & 255;
            int i19 = bArr[i2 + 6] & 255;
            qt.y0(10, (i13 >> 7) & 1);
            qt.y0(11, (i13 >> 6) & 1);
            qt.y0(12, (i13 >> 5) & 1);
            qt.y0(13, (i13 >> 3) & 1);
            qt.y0(14, (i13 >> 2) & 1);
            qt.y0(65, (i13 >> 1) & 1);
            qt.y0(18, (i14 >> 7) & 1);
            qt.y0(19, (i14 >> 6) & 1);
            qt.y0(20, (i14 >> 5) & 1);
            qt.y0(21, (i14 >> 0) & 15);
            qt.y0(16, (i19 >> 6) & 1);
            qt.y0(67, (i19 >> 2) & 1);
            int i20 = (i19 >> 0) & 1;
            qt.y0(37, i20);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i16 = bArr[i17] & 255;
                i18 = bArr[i15] & 255;
            }
            if (i16 == 0) {
                qt.y0(27, -2);
            } else if (i16 == 31) {
                qt.y0(27, -3);
            } else if (i20 == 0) {
                if (i16 >= 1 && i16 <= 29) {
                    qt.y0(27, (i16 * 5) + 175);
                } else if (i16 < 33 || i16 > 38) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, ((i16 - 33) * 5) + 150);
                }
            } else if (i16 >= 1 && i16 <= 29) {
                qt.y0(27, (i16 * 10) + DisplayMetrics.DENSITY_XXXHIGH);
            } else if (i16 < 33 || i16 > 38) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, ((i16 - 33) * 10) + 590);
            }
            if (i18 == 0) {
                qt.y0(28, -2);
            } else if (i18 == 31) {
                qt.y0(28, -3);
            } else if (i20 == 0) {
                if (i18 >= 1 && i18 <= 29) {
                    qt.y0(28, (i18 * 5) + 175);
                } else if (i18 < 33 || i18 > 38) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, ((i18 - 33) * 5) + 150);
                }
            } else if (i18 >= 1 && i18 <= 29) {
                qt.y0(28, (i18 * 10) + DisplayMetrics.DENSITY_XXXHIGH);
            } else if (i18 < 33 || i18 > 38) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, ((i18 - 33) * 10) + 590);
            }
            int i21 = bArr[i2 + 7] & 255;
            if (i21 == 255 || i21 == 0) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3((i21 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        if (b3 == 41) {
            if (nt.f8637c == 3) {
                qt.o(bArr[i2 + 2], false, 100);
                return;
            } else {
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 1340);
                return;
            }
        }
        switch (b3) {
            case 32:
                if (nt.a()) {
                    byte b10 = bArr[i2 + 2];
                    byte b11 = bArr[i2 + 3];
                    this.f14952c = b10 & 255;
                    int i22 = 0;
                    while (true) {
                        iArr = this.f14953d;
                        if (i22 < iArr.length) {
                            int i23 = this.f14952c;
                            if (i23 != iArr[i22][0]) {
                                i22++;
                            } else if (i23 != 0) {
                                this.f14951b = i22;
                            }
                        }
                    }
                    switch (this.f14952c) {
                        case 41:
                        case 45:
                            for (int i24 = 0; i24 < (b11 & 255); i24++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            break;
                        case 42:
                        case 46:
                            for (int i25 = 0; i25 < (b11 & 255); i25++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            break;
                        case 43:
                            for (int i26 = 0; i26 < (b11 & 255); i26++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            break;
                        case 44:
                            for (int i27 = 0; i27 < (b11 & 255); i27++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        default:
                            int i28 = b11 & 255;
                            if (i28 == 1) {
                                if (i22 < iArr.length) {
                                    l0.b0.l0(iArr[i22][1], 0);
                                }
                            } else if (i28 == 0) {
                                int i29 = this.f14951b;
                                if (i29 < iArr.length) {
                                    i4 = 255;
                                    if (i29 != 255) {
                                        l0.b0.l0(iArr[i29][1], 1);
                                    }
                                } else {
                                    i4 = 255;
                                }
                                this.f14951b = i4;
                            }
                            break;
                    }
                }
                break;
            case 33:
                int i30 = bArr[i2 + 2] & 255;
                int i31 = bArr[i2 + 3] & 255;
                int i32 = i2 + 4;
                int i33 = bArr[i32] & 255;
                int i34 = i2 + 5;
                int i35 = bArr[i34] & 255;
                int i36 = bArr[i2 + 6] & 255;
                qt.y0(10, (i30 >> 7) & 1);
                qt.y0(11, (i30 >> 6) & 1);
                qt.y0(12, (i30 >> 5) & 1);
                qt.y0(13, (i30 >> 3) & 1);
                qt.y0(14, (i30 >> 2) & 1);
                qt.y0(18, (i31 >> 7) & 1);
                qt.y0(19, (i31 >> 6) & 1);
                qt.y0(20, (i31 >> 5) & 1);
                qt.y0(16, (i36 >> 6) & 1);
                qt.y0(21, (i31 >> 0) & 15);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i5 = 255;
                    i33 = bArr[i34] & 255;
                    i35 = bArr[i32] & 255;
                } else {
                    i5 = 255;
                }
                if (((i36 >> 1) & 1) == 0) {
                    if (i33 == 0) {
                        qt.y0(27, -2);
                    } else if (i33 != i5) {
                        qt.y0(27, i33);
                    } else {
                        qt.y0(27, -3);
                    }
                    if (i35 == 0) {
                        qt.y0(28, -2);
                    } else if (i35 != 255) {
                        qt.y0(28, i35);
                    } else {
                        qt.y0(28, -3);
                    }
                } else {
                    qt.y0(27, -1);
                    qt.y0(28, -1);
                }
                break;
            case 34:
                u0.d.R2(l0.c0.b1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.b1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.b1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.b1(bArr[i2 + 5] & 255));
                break;
            case 35:
                u0.d.D2(l0.c0.b1(bArr[i2 + 2] & 255));
                u0.d.E2(l0.c0.b1(bArr[i2 + 3] & 255));
                u0.d.F2(l0.c0.b1(bArr[i2 + 4] & 255));
                u0.d.G2(l0.c0.b1(bArr[i2 + 5] & 255));
                break;
            case 36:
                byte b12 = bArr[i2 + 2];
                if (((b12 >> 0) & 1) == 1) {
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b12 >> 7) & 1);
                        qt.y0(2, (b12 >> 6) & 1);
                    } else {
                        qt.y0(1, (b12 >> 6) & 1);
                        qt.y0(2, (b12 >> 7) & 1);
                    }
                    qt.y0(3, (b12 >> 4) & 1);
                    qt.y0(4, (b12 >> 5) & 1);
                    qt.y0(5, (b12 >> 3) & 1);
                    qt.y0(0, (b12 >> 2) & 1);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f14956g);
        l0.b0.p0(this.f14957h);
        y0.g.f18094d.d(this.f14958i);
        l0.b0.o0(this.f14960k);
        qt.o0(this.f14954e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 139) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 202, 2, iArr[0], 0);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
        } else if (i2 == 2) {
            z.k.s(227, 132, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, 224, 2, iArr[0], iArr[1]);
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f14943n = f14948s[o0.a(i2, 0, 36)];
        }
    }

    public final void init() {
        o1.f<f> fVar = f14950u;
        fVar.f(1, new f(1, 100));
        fVar.f(2, new f(2, 100));
        fVar.f(8, new f(8, 100));
    }

    public final void o3() {
        Z2(y0.f.f18037c);
        R2(null);
    }

    public final synchronized void p3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        n3(2, f14947r);
    }

    public final synchronized void q3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        n3(1, f14946q);
    }

    public final synchronized void r3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        n3(8, f14948s[o0.a(y0.f.f18037c, 0, 36)]);
    }
}

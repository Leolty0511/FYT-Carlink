package k0;

import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class vs extends lt {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f11525t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f11526u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f11527v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f11528w;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11533f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11529b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11530c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f11531d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f11532e = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11534g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f11535h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{17, 1}, new int[]{21, 6}, new int[]{22, 29}, new int[]{23, 12}, new int[]{24, 13}, new int[]{32, 34}, new int[]{33, 35}, new int[]{34, 32}, new int[]{35, 33}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11536i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11537j = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f11538k = 3;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f11539l = 4;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public o1.g0 f11540m = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f11541n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f11542o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f11543p = new a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f11544q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f11545r = new b();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f11546s = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vs vsVar = vs.this;
            int i2 = y0.f.Q0;
            vsVar.f11542o = i2;
            z.k.s(227, 161, 1, (vsVar.f11541n & 1) | ((i2 << 3) & 8));
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(vs.this.f11546s);
            vs.this.f11544q = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vs vsVar = vs.this;
            int i2 = vsVar.f11544q - 1;
            vsVar.f11544q = i2;
            if (i2 <= 0) {
                l0.b0.p0(vsVar.f11546s);
                vs.this.f11544q = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                vs vsVar2 = vs.this;
                vsVar2.d3(vsVar2.f11540m.b(1, 0) & 255, (vs.this.f11540m.b(1, 0) >> 8) & 255, vs.this.f11540m.b(2, 0) & 255, (vs.this.f11540m.b(2, 0) >> 8) & 255);
                vs vsVar3 = vs.this;
                vsVar3.e3(vsVar3.f11540m.b(3, 0), vs.this.f11540m.b(4, 0));
                switch (nt.f8633a) {
                    case 1769928:
                    case 1835464:
                        z.k.s(227, 226, 1, 1);
                        break;
                    case 1901000:
                        z.k.s(227, 226, 1, 2);
                        break;
                    case 1966536:
                        z.k.s(227, 226, 1, 3);
                        break;
                    case 2032072:
                        z.k.s(227, 226, 1, 4);
                        break;
                    case 2097608:
                        z.k.s(227, 226, 1, 5);
                        break;
                    case 2163144:
                        z.k.s(227, 226, 1, 16);
                        break;
                    case 2228680:
                        z.k.s(227, 226, 1, 17);
                        break;
                    case 2294216:
                        z.k.s(227, 226, 1, 18);
                        break;
                    case 2359752:
                        z.k.s(227, 226, 1, 32);
                        break;
                    case 2425288:
                        z.k.s(227, 226, 1, 33);
                        break;
                    case 2490824:
                        z.k.s(227, 226, 1, 34);
                        break;
                    case 2556360:
                        z.k.s(227, 226, 1, 48);
                        break;
                    case 2621896:
                        z.k.s(227, 226, 1, 49);
                        break;
                    case 2687432:
                        z.k.s(227, 226, 1, 50);
                        break;
                    case 2752968:
                        z.k.s(227, 226, 1, 51);
                        break;
                    case 2818504:
                        z.k.s(227, 226, 1, 52);
                        break;
                    case 2884040:
                        z.k.s(227, 226, 1, 53);
                        break;
                    case 2949576:
                        z.k.s(227, 226, 1, 64);
                        break;
                    case 3015112:
                        z.k.s(227, 226, 1, 65);
                        break;
                    case 3080648:
                        z.k.s(227, 226, 1, 66);
                        break;
                    case 3146184:
                        z.k.s(227, 226, 1, 80);
                        break;
                    case 3211720:
                        z.k.s(227, 226, 1, 81);
                        break;
                    case 3277256:
                        z.k.s(227, 226, 1, 82);
                        break;
                    case 3342792:
                        z.k.s(227, 226, 1, 112);
                        break;
                    case 3408328:
                        z.k.s(227, 226, 1, 113);
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
        this.f11540m.a();
        u0.c.f17386m.a(this.f11545r, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8317l = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
        y0.g.f18110t.a(this.f11543p, 1);
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0369  */
    /* JADX WARN: Code duplicated, block: B:105:0x0372  */
    /* JADX WARN: Code duplicated, block: B:106:0x037b  */
    /* JADX WARN: Code duplicated, block: B:109:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:110:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:98:0x0355 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:99:0x0357  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        byte b2 = bArr[i2];
        if (b2 == 41) {
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, 540);
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            qt.y0(99, bArr[i2 + 2] & 255);
            qt.y0(100, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(101, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(102, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(103, (255 & bArr[i2 + 9]) | ((bArr[i2 + 10] << 8) & 65280));
            int i9 = i2 + 11;
            qt.y0(104, (bArr[i9] >> 4) & 15);
            qt.y0(105, (bArr[i9] >> 3) & 1);
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f11534g = b3 & 255;
                int i10 = 0;
                while (true) {
                    iArr = this.f11535h;
                    if (i10 < iArr.length) {
                        int i11 = this.f11534g;
                        if (i11 != iArr[i10][0]) {
                            i10++;
                        } else if (i11 != 0) {
                            this.f11533f = i10;
                        }
                    }
                }
                if (this.f11534g != 10) {
                    int i12 = b4 & 255;
                    if (i12 != 1) {
                        if (i12 == 0) {
                            int i13 = this.f11533f;
                            if (i13 < iArr.length && i13 != 255) {
                                l0.b0.l0(iArr[i13][1], 1);
                            }
                            this.f11533f = 255;
                        }
                    } else if (i10 < iArr.length) {
                        l0.b0.l0(iArr[i10][1], 0);
                    }
                } else if ((b4 & 255) == 1) {
                    int i14 = h0.c.E;
                    if (i14 == 3 || i14 == 4 || i14 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else if (!u0.i.l3().r3()) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    } else {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    }
                }
                break;
            case 33:
                int i15 = i2 + 2;
                qt.y0(10, (bArr[i15] >> 7) & 1);
                qt.y0(11, (bArr[i15] >> 6) & 1);
                qt.y0(12, (bArr[i15] >> 5) & 1);
                qt.y0(16, (bArr[i15] >> 4) & 1);
                qt.y0(13, (bArr[i15] >> 3) & 1);
                qt.y0(62, (bArr[i15] >> 2) & 1);
                qt.y0(65, (bArr[i15] >> 1) & 1);
                qt.y0(15, (bArr[i15] >> 0) & 1);
                int i16 = i2 + 3;
                qt.y0(18, (bArr[i16] >> 7) & 1);
                qt.y0(19, (bArr[i16] >> 6) & 1);
                qt.y0(20, (bArr[i16] >> 5) & 1);
                qt.y0(53, (bArr[i16] >> 4) & 1);
                qt.y0(21, 15 & (bArr[i16] >> 0));
                int i17 = i2 + 4;
                int i18 = bArr[i17] & 255;
                int i19 = i2 + 5;
                int i20 = bArr[i19] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i18 = bArr[i19] & 255;
                    i20 = bArr[i17] & 255;
                }
                if (i18 == 0) {
                    qt.y0(27, -2);
                } else if (i18 == 127) {
                    qt.y0(27, -3);
                } else if (i18 < 74 || i18 > 106) {
                    qt.y0(27, i18 * 5);
                } else {
                    qt.y0(27, (i18 - 16) * 10);
                }
                if (i20 == 0) {
                    qt.y0(28, -2);
                } else if (i20 == 127) {
                    qt.y0(28, -3);
                } else if (i20 < 74 || i20 > 106) {
                    qt.y0(28, i20 * 5);
                } else {
                    qt.y0(28, (i20 - 16) * 10);
                }
                int i21 = i2 + 6;
                qt.y0(42, (bArr[i21] >> 7) & 1);
                qt.y0(43, (bArr[i21] >> 6) & 1);
                qt.y0(44, (bArr[i21] >> 3) & 7);
                if (((bArr[i21] >> 2) & 1) != 1) {
                    if (((bArr[i21] >> 1) & 1) == 1) {
                        i4 = 1;
                        i5 = 0;
                    } else if (((bArr[i21] >> 0) & 1) == 1) {
                        i5 = 1;
                        i4 = 0;
                    } else {
                        i4 = 0;
                    }
                    qt.y0(46, i4);
                    qt.y0(47, i5);
                    i6 = bArr[i2 + 8] & 255;
                    if (i6 != 0) {
                        qt.y0(40, -2);
                    } else if (i6 != 127) {
                        qt.y0(40, -3);
                    } else if (i6 >= 74 || i6 > 106) {
                        qt.y0(40, i6 * 5);
                    } else {
                        qt.y0(40, (i6 - 16) * 10);
                    }
                    int i22 = i2 + 9;
                    qt.y0(29, (bArr[i22] >> 2) & 3);
                    qt.y0(30, (bArr[i22] >> 0) & 3);
                    int i23 = i2 + 10;
                    qt.y0(31, (bArr[i23] >> 2) & 3);
                    qt.y0(32, (bArr[i23] >> 0) & 3);
                    i7 = i2 + 11;
                    if (((bArr[i7] >> 1) & 3) == 2) {
                        qt.y0(37, 1);
                    } else {
                        qt.y0(37, 0);
                    }
                    qt.y0(67, (bArr[i7] >> 0) & 1);
                    i8 = bArr[i2 + 7] & 255;
                    if (i8 == 255 && i8 != 0) {
                        u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((i8 * 18) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i8 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                    } else {
                        u0.d.B3(0);
                    }
                } else {
                    i4 = 1;
                }
                i5 = i4;
                qt.y0(46, i4);
                qt.y0(47, i5);
                i6 = bArr[i2 + 8] & 255;
                if (i6 != 0) {
                    qt.y0(40, -2);
                } else if (i6 != 127) {
                    qt.y0(40, -3);
                } else if (i6 >= 74) {
                    qt.y0(40, i6 * 5);
                } else {
                    qt.y0(40, i6 * 5);
                }
                int i24 = i2 + 9;
                qt.y0(29, (bArr[i24] >> 2) & 3);
                qt.y0(30, (bArr[i24] >> 0) & 3);
                int i25 = i2 + 10;
                qt.y0(31, (bArr[i25] >> 2) & 3);
                qt.y0(32, (bArr[i25] >> 0) & 3);
                i7 = i2 + 11;
                if (((bArr[i7] >> 1) & 3) == 2) {
                    qt.y0(37, 1);
                } else {
                    qt.y0(37, 0);
                }
                qt.y0(67, (bArr[i7] >> 0) & 1);
                i8 = bArr[i2 + 7] & 255;
                if (i8 == 255) {
                }
                u0.d.B3(0);
                break;
            case 34:
                u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i26 = i2 + 2;
                int i27 = bArr[i26] & 255;
                int i28 = i2 + 3;
                int i29 = bArr[i28] & 255;
                int i30 = i2 + 4;
                int i31 = bArr[i30] & 255;
                int i32 = i2 + 5;
                int i33 = bArr[i32] & 255;
                if (i27 == 0 && i29 == 0 && i31 == 0 && i33 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i27 || l0.c0.f13014h != i29 || l0.c0.f13015i != i31 || l0.c0.f13016j != i33) && this.f11529b == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 5;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i27;
                l0.c0.f13014h = i29;
                l0.c0.f13015i = i31;
                l0.c0.f13016j = i33;
                u0.d.D2(l0.c0.K0(bArr[i26] & 255));
                u0.d.E2(l0.c0.K0(bArr[i28] & 255));
                u0.d.F2(l0.c0.K0(bArr[i30] & 255));
                u0.d.G2(l0.c0.K0(bArr[i32] & 255));
                break;
            case 36:
                int i34 = i2 + 2;
                byte b5 = bArr[i34];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b5 >> 6) & 1);
                    qt.y0(1, (b5 >> 7) & 1);
                } else {
                    qt.y0(2, (b5 >> 7) & 1);
                    qt.y0(1, (b5 >> 6) & 1);
                }
                qt.y0(4, (b5 >> 5) & 1);
                qt.y0(3, (b5 >> 4) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                qt.y0(0, (b5 >> 2) & 1);
                if (this.f11529b != ((bArr[i34] >> 0) & 3) || this.f11530c != ((bArr[i2 + 3] >> 0) & 1)) {
                    int i35 = (bArr[i34] >> 0) & 3;
                    this.f11529b = i35;
                    int i36 = (bArr[i2 + 3] >> 0) & 1;
                    this.f11530c = i36;
                    if (u0.b.f17357r0 == 0) {
                        if (i35 == 1 || i36 == 1) {
                            if (!o1.u.a0()) {
                                qt.y0(98, 1);
                                this.f11532e = true;
                                SystemProperties.set("persist.lesc.video.ignore", "true");
                                a.i.a0(200L);
                                o1.u.z();
                                float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                                this.f11531d = y0.f.f18037c;
                                y0.h.t0((int) f2);
                            }
                            u0.d.C2(0);
                        } else if (i35 == 0 && i36 == 0) {
                            y0.h.t0(this.f11531d);
                            if (this.f11532e && o1.u.a0()) {
                                qt.y0(98, 0);
                                a.i.a0(350L);
                                SystemProperties.set("persist.lesc.video.ignore", "false");
                            }
                            this.f11532e = false;
                        }
                    }
                }
                int i37 = i2 + 3;
                l0.c0.a((bArr[i37] >> 1) & 1, (bArr[i37] >> 0) & 1, (bArr[i37] >> 2) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f11540m.j();
        u0.c.f17386m.d(this.f11545r);
        l0.b0.p0(this.f11546s);
        y0.g.f18110t.d(this.f11543p);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 110) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                z.k.s(227, 232, 2, iArr[0], iArr[1]);
                break;
            case 1:
                int i3 = iArr[0];
                this.f11541n = i3;
                z.k.s(227, 161, 1, (i3 & 1) | (8 & (this.f11542o << 3)));
                break;
            case 2:
                z.k.s(227, 175, 1, iArr[0]);
                break;
            case 3:
                z.k.s(227, 162, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                break;
            case 4:
                d3(iArr[0], iArr[1], iArr[2], iArr[3]);
                break;
            case 5:
                e3(iArr[0], iArr[1]);
                break;
            case 6:
                if (nt.U == 1) {
                    o1.x.x(nt.f8643f, 1001, iArr[0]);
                }
                break;
        }
    }

    public final void d3(int i2, int i3, int i4, int i5) {
        int i6 = ((i3 << 8) & 65280) | (i2 & 255);
        qt.y0(106, i6);
        int i7 = (65280 & (i5 << 8)) | (i4 & 255);
        qt.y0(107, i7);
        f11525t = i6;
        f11526u = i7;
        z.k.s(227, 163, 4, i2, i3, i4, i5);
        int iB = this.f11540m.b(1, 0);
        int i8 = f11525t;
        if (iB != i8) {
            this.f11540m.g(1, i8);
        }
        int iB2 = this.f11540m.b(2, 0);
        int i9 = f11526u;
        if (iB2 != i9) {
            this.f11540m.g(2, i9);
        }
    }

    public final void e3(int i2, int i3) {
        qt.y0(108, i2);
        qt.y0(109, i3);
        f11527v = i2;
        f11528w = i3;
        z.k.s(227, 164, 2, i2, i3);
        int iB = this.f11540m.b(3, 0);
        int i4 = f11527v;
        if (iB != i4) {
            this.f11540m.g(3, i4);
        }
        int iB2 = this.f11540m.b(4, 0);
        int i5 = f11528w;
        if (iB2 != i5) {
            this.f11540m.g(4, i5);
        }
    }
}

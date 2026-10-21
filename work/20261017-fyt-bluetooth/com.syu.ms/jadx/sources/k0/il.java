package k0;

import android.os.SystemProperties;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class il extends lt {
    public static int K = 0;
    public static int L = 0;
    public static int M = 8;
    public static int N = 1;
    public static int O = 1;
    public static int P = 1;
    public static int Q = 255;
    public static e.e.a R = new e.e.a(0, 0, 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6480c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6481d = {new int[]{1, 34}, new int[]{2, 35}, new int[]{3, 32}, new int[]{4, 33}, new int[]{5, 82}, new int[]{6, 81}, new int[]{7, 80}, new int[]{8, 5}, new int[]{9, -1}, new int[]{10, -1}, new int[]{11, -1}, new int[]{12, 6}, new int[]{13, 55}, new int[]{14, 1}, new int[]{15, 38}, new int[]{16, 2}, new int[]{17, 18}, new int[]{18, 26}, new int[]{19, 50}, new int[]{20, 13}, new int[]{21, 7}, new int[]{22, 8}, new int[]{23, 3}, new int[]{24, 4}, new int[]{25, 16}, new int[]{26, 12}, new int[]{27, 11}, new int[]{28, 28}, new int[]{29, 27}, new int[]{30, 34}, new int[]{31, 35}, new int[]{32, 32}, new int[]{33, 33}, new int[]{34, 0}, new int[]{35, 58}, new int[]{36, -1}, new int[]{49, 40}, new int[]{50, 41}, new int[]{51, 42}, new int[]{52, 43}, new int[]{53, 44}, new int[]{54, 45}, new int[]{55, 46}, new int[]{56, 47}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f6482e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f6483f = 2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f6484g = 3;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f6485h = 4;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f6486i = 5;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f6487j = 6;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public o1.g0 f6488k = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f6489l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f6490m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f6491n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f6492o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f6493p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f6494q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f6495r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f6496s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f6497t = new c();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f6498u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f6499v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f6500w = new d();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f6501x = new e();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f6502y = new f();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public o1.p f6503z = new g();
    public boolean A = false;
    public boolean B = false;
    public boolean C = false;
    public Runnable D = new h();
    public Runnable E = new i();
    public byte F = 5;
    public Runnable G = new j();
    public Runnable H = new k();
    public Runnable I = new a();
    public Runnable J = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            il ilVar = il.this;
            if (ilVar.f6494q) {
                o1.x.x(nt.f8643f, 1038, ilVar.f6493p);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            il ilVar = il.this;
            byte b2 = (byte) (ilVar.F - 1);
            ilVar.F = b2;
            if (b2 > 0) {
                z.k.s(227, 0, 97, 1, 1);
            } else {
                l0.b0.p0(ilVar.J);
                il.this.F = (byte) 5;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            il ilVar = il.this;
            ilVar.f6496s = y0.f.Q0;
            int i2 = u0.b.D;
            if (i2 == 13 || i2 == 0) {
                int i3 = y0.f.Q0;
                if (i3 != 0) {
                    if (i3 != 1) {
                        return;
                    }
                    ilVar.b3(true);
                } else if (u0.b.j4 == 0) {
                    ilVar.b3(false);
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            il ilVar = il.this;
            int i2 = ilVar.f6498u;
            int i3 = u0.b.j4;
            if (i2 != i3) {
                ilVar.f6498u = i3;
                int i4 = u0.b.D;
                if (i4 == 13 || i4 == 0) {
                    int i5 = u0.b.j4;
                    if (i5 != 0) {
                        if (i5 == 1) {
                            ilVar.b3(true);
                        }
                    } else if (y0.f.Q0 == 0) {
                        ilVar.b3(false);
                    }
                }
                int i6 = u0.b.j4;
                if (i6 == 0) {
                    if (il.this.f6499v) {
                        z.k.s(227, 0, 103, 3, 0, 0, 128);
                        il.this.f6499v = false;
                        return;
                    }
                    return;
                }
                if (i6 == 1 && o1.u.S(a.b.Q)) {
                    z.k.s(227, 0, 103, 3, 1, 0, 128);
                    il.this.f6499v = true;
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3 = il.Q;
            int i4 = u0.b.D;
            if (i3 != i4) {
                if (i4 != 0 && i4 != 13 && ((i2 = il.Q) == 0 || i2 == 13)) {
                    if (il.O == 0) {
                        z.k.s(227, 0, 110, 4, 0, il.M, 0, 0);
                    }
                    il.this.b3(false);
                }
                il.Q = u0.b.D;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17332j;
            if (i2 == 1) {
                z.k.s(227, 0, 103, 3, 1, 0, 0);
            } else if (i2 == 0) {
                z.k.s(227, 0, 103, 3, 1, 0, 128);
            }
        }
    }

    public class g implements o1.p {
        public g() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            e.e.a unused = il.R = (e.e.a) obj;
            if (u0.b.f17357r0 != 1 || u0.b.f17347o != 1) {
                if (il.this.f6489l == 0 && !o1.u.S(a.b.Q) && il.R.f1628a == 0) {
                    z.k.s(227, 0, 103, 3, 1, 0, 128);
                    return;
                }
                return;
            }
            if (il.R.f1628a == 0) {
                z.k.s(227, 0, 107, 6, 1, (il.R.f1629b >> 8) & 255, il.R.f1629b & 255, (il.R.f1630c >> 8) & 255, il.R.f1630c & 255, 1);
            } else if (il.R.f1628a == 1) {
                z.k.s(227, 0, 107, 6, 1, (il.R.f1629b >> 8) & 255, il.R.f1629b & 255, (il.R.f1630c >> 8) & 255, il.R.f1630c & 255, 0);
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (il.P == 0) {
                int i2 = h0.c.E;
                if (i2 == 3 || i2 == 4 || i2 == 5) {
                    if (o1.u.S(a.b.Q)) {
                        z.k.s(227, 0, 103, 3, 1, 0, 128);
                        il.this.b3(true);
                        il.this.C = true;
                        return;
                    }
                    return;
                }
                if (il.this.C) {
                    if (!o1.u.S(a.b.Q)) {
                        o1.u.f(a.b.R);
                        il.this.b3(false);
                    }
                    il.this.C = false;
                }
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            il.this.a3(u0.b.K3);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(il.this.J);
            il.this.F = (byte) 5;
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(il.this.I);
        }
    }

    @Override // k0.lt
    public int[] K2() {
        return new int[]{8, 8};
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
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8317l = 1;
        o1.y yVar = u0.c.f17386m;
        yVar.a(this.G, 1);
        yVar.a(this.H, 1);
        z.k.s(227, 0, 97, 1, 1);
        z.k.s(227, 0, 104, 2, 1, 0);
        y0.g.f18110t.a(this.f6497t, 1);
        u0.c.G.a(this.f6500w, 1);
        u0.c.f17374a.a(this.f6501x, 1);
        u0.c.f17387n.a(this.f6502y, 1);
        u0.c.f17397x.a(this.E, 1);
        e.e.f1627e.a(this.f6503z);
        h0.d.f2462a.a(this.D, 1);
        this.f6488k.a();
        l3(this.f6488k.b(5, 0));
        m3(this.f6488k.b(3, 0));
        n3(this.f6488k.b(4, 0));
        o3(this.f6488k.b(6, 0));
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int[][] iArr;
        int i5;
        if (bArr[i2] != 0) {
            return;
        }
        int i6 = bArr[i2 + 1] & 255;
        if (i6 == 18) {
            this.F = (byte) 0;
            qt.L(new String(bArr, i2 + 3, i3 - 3));
            return;
        }
        if (i6 == 19) {
            qt.y0(99, bArr[i2 + 3] & 255);
            int i7 = i2 + 7;
            qt.y0(98, bArr[i7] & 255);
            this.f6491n = bArr[i7] & 255;
            int i8 = i2 + 4;
            if ((bArr[i8] & 255) == 1) {
                qt.y0(122, 0);
                this.f6493p = 0;
            } else if ((bArr[i8] & 255) == 0) {
                qt.y0(122, 1);
                this.f6493p = 1;
            }
            this.f6494q = true;
            qt.y0(118, bArr[i2 + 5] & 255);
            qt.y0(119, bArr[i2 + 6] & 255);
            qt.y0(120, bArr[i2 + 8] & 255);
            qt.y0(121, 255 & bArr[i2 + 9]);
            int i9 = i2 + 10;
            qt.y0(127, (bArr[i9] >> 6) & 1);
            qt.y0(128, (bArr[i9] >> 7) & 1);
            return;
        }
        if (i6 == 21) {
            this.f6489l = bArr[i2 + 3] & 255;
            return;
        }
        if (i6 != 161) {
            return;
        }
        int i10 = bArr[i2 + 3] & 255;
        if (i10 == 16) {
            if (this.f6491n == 1 && this.f6490m != (i4 = (bArr[i2 + 4] >> 2) & 1)) {
                this.f6490m = i4;
                if (i4 == 1) {
                    o1.x.C(nt.f8643f, 104, new int[]{1}, null, null);
                } else {
                    o1.x.C(nt.f8643f, 104, new int[]{0}, null, null);
                }
            }
            if (P == 1) {
                int i11 = (bArr[i2 + 4] >> 6) & 1;
                if (i11 == 1) {
                    if (!o1.u.S(a.b.Q)) {
                        this.f6495r = true;
                        o1.u.f(a.b.R);
                    }
                } else if (i11 == 0 && this.f6495r) {
                    if (o1.u.S(a.b.Q)) {
                        z.k.s(227, 0, 103, 3, 1, 0, 128);
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                    }
                    this.f6495r = false;
                }
            }
            qt.y0(103, (bArr[i2 + 4] >> 3) & 1);
            qt.y0(116, (bArr[i2 + 5] >> 0) & 1);
            return;
        }
        if (i10 == 18) {
            int i12 = bArr[i2 + 4] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i12 >> 4) & 1);
                qt.y0(1, (i12 >> 5) & 1);
                qt.y0(4, (i12 >> 6) & 1);
                qt.y0(3, (i12 >> 7) & 1);
            } else {
                qt.y0(2, (i12 >> 5) & 1);
                qt.y0(1, (i12 >> 4) & 1);
                qt.y0(4, (i12 >> 7) & 1);
                qt.y0(3, (i12 >> 6) & 1);
            }
            qt.y0(5, (i12 >> 2) & 1);
            qt.y0(0, (i12 >> 3) & 1);
            return;
        }
        if (i10 != 23) {
            if (i10 != 28) {
                if (i10 != 25) {
                    if (i10 != 26) {
                        return;
                    }
                    int i13 = i2 + 4;
                    qt.y0(112, (bArr[i13] >> 7) & 1);
                    qt.y0(113, (bArr[i13] >> 6) & 1);
                    qt.y0(114, (bArr[i13] >> 5) & 1);
                    qt.y0(115, (bArr[i13] >> 4) & 1);
                    return;
                }
                qt.y0(105, (((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255)) & 65535);
                qt.y0(106, (((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255)) & 65535);
                qt.y0(107, (((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255)) & 65535);
                qt.y0(108, (((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255)) & 65535);
                qt.y0(117, (((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255)) & 65535);
                int i14 = i2 + 15;
                qt.y0(109, (bArr[i14] >> 0) & 1);
                qt.y0(110, (bArr[i14] >> 1) & 1);
                qt.y0(111, ((bArr[i2 + 18] & 255) | ((bArr[i2 + 16] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 17] << 8) & 65280)) & 16777215);
                return;
            }
            int i15 = i2 + 4;
            qt.y0(10, (bArr[i15] >> 7) & 1);
            qt.y0(11, (bArr[i15] >> 6) & 1);
            qt.y0(12, (bArr[i15] >> 5) & 1);
            qt.y0(65, (bArr[i15] >> 3) & 1);
            qt.y0(16, (bArr[i15] >> 1) & 1);
            qt.y0(14, (bArr[i15] >> 0) & 1);
            int i16 = i2 + 5;
            qt.y0(18, (bArr[i16] >> 7) & 1);
            qt.y0(19, (bArr[i16] >> 6) & 1);
            qt.y0(20, (bArr[i16] >> 5) & 1);
            qt.y0(49, (bArr[i16] >> 4) & 1);
            qt.y0(22, (bArr[i16] >> 3) & 1);
            qt.y0(23, (bArr[i16] >> 2) & 1);
            qt.y0(24, (bArr[i16] >> 1) & 1);
            qt.y0(50, (bArr[i16] >> 0) & 1);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i17 = i2 + 6;
                int i18 = bArr[i17] & 255;
                if (i18 == 0) {
                    qt.y0(28, -2);
                } else if (i18 != 255) {
                    qt.y0(28, bArr[i17] & 255);
                } else {
                    qt.y0(28, -3);
                }
                int i19 = i2 + 7;
                int i20 = bArr[i19] & 255;
                if (i20 == 0) {
                    qt.y0(27, -2);
                } else if (i20 != 255) {
                    qt.y0(27, bArr[i19] & 255);
                } else {
                    qt.y0(27, -3);
                }
            } else {
                int i21 = i2 + 6;
                int i22 = bArr[i21] & 255;
                if (i22 == 0) {
                    qt.y0(27, -2);
                } else if (i22 != 255) {
                    qt.y0(27, bArr[i21] & 255);
                } else {
                    qt.y0(27, -3);
                }
                int i23 = i2 + 7;
                int i24 = bArr[i23] & 255;
                if (i24 == 0) {
                    qt.y0(28, -2);
                } else if (i24 != 255) {
                    qt.y0(28, bArr[i23] & 255);
                } else {
                    qt.y0(28, -3);
                }
            }
            int i25 = i2 + 8;
            qt.y0(21, (bArr[i25] >> 0) & 15);
            qt.y0(49, (bArr[i25] >> 4) & 1);
            int i26 = i2 + 9;
            qt.y0(29, (bArr[i26] >> 4) & 7);
            qt.y0(30, (bArr[i26] >> 0) & 7);
            return;
        }
        byte b2 = bArr[i2 + 4];
        byte b3 = bArr[i2 + 5];
        this.f6480c = b2 & 255;
        int i27 = 0;
        while (true) {
            iArr = this.f6481d;
            if (i27 >= iArr.length) {
                break;
            }
            int i28 = this.f6480c;
            if (i28 == iArr[i27][0]) {
                if (i28 == 0) {
                    break;
                }
                this.f6479b = i27;
                break;
            }
            i27++;
        }
        int i29 = b3 & 255;
        if (i29 == 1) {
            if (i27 < iArr.length) {
                int i30 = this.f6480c;
                if (i30 != 14) {
                    if (i30 != 17) {
                        if (i30 != 20) {
                            switch (i30) {
                                case 8:
                                    break;
                                case 9:
                                case 10:
                                case 11:
                                    if (!o1.u.S(a.b.Q)) {
                                        o1.u.f(a.b.R);
                                    }
                                    break;
                                default:
                                    if (!o1.u.S(a.b.Q)) {
                                        l0.b0.l0(this.f6481d[i27][1], 0);
                                    }
                                    break;
                            }
                        }
                    } else if (P == 0) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    } else if (!o1.u.S(a.b.Q)) {
                        o1.u.f(a.b.R);
                    }
                } else if (!o1.u.S(a.b.Q)) {
                    l0.b0.l0(1, 0);
                    l0.b0.l0(1, 1);
                }
            }
            this.f6492o = false;
            return;
        }
        if (i29 != 2) {
            if (i29 == 0) {
                if (i27 < iArr.length && (i5 = this.f6480c) != 14 && i5 != 17 && i5 != 20) {
                    switch (i5) {
                        case 8:
                            if (!o1.u.S(a.b.Q)) {
                                l0.b0.l0(5, 0);
                                l0.b0.l0(5, 1);
                            }
                            break;
                        case 9:
                        case 10:
                        case 11:
                            break;
                        default:
                            if (!o1.u.S(a.b.Q)) {
                                l0.b0.l0(this.f6481d[this.f6479b][1], 1);
                            }
                            break;
                    }
                }
                this.f6492o = false;
                return;
            }
            return;
        }
        if (i27 >= iArr.length || this.f6492o) {
            return;
        }
        int i31 = this.f6480c;
        if (i31 != 8) {
            if (i31 != 14) {
                if (i31 == 20) {
                    if (o1.u.S(a.b.Q)) {
                        l0.b0.l0(13, 0);
                        l0.b0.l0(13, 1);
                        z.k.s(227, 0, 103, 3, 1, 0, 128);
                        this.f6499v = true;
                    } else {
                        l0.b0.l0(13, 0);
                        l0.b0.l0(13, 1);
                    }
                }
            } else if (o1.u.S(a.b.Q)) {
                l0.b0.l0(6, 0);
                l0.b0.l0(6, 1);
                l0.b0.l0(1, 0);
                l0.b0.l0(1, 1);
                z.k.s(227, 0, 103, 3, 1, 0, 128);
                this.f6499v = true;
            }
        } else if (!o1.u.S(a.b.Q)) {
            o1.u.f(a.b.R);
        } else if (o1.u.S(a.b.Q)) {
            z.k.s(227, 0, 103, 3, 1, 0, 128);
            l0.b0.l0(6, 0);
            l0.b0.l0(6, 1);
        }
        this.f6492o = true;
    }

    @Override // k0.lt
    public void W2() {
        o1.y yVar = u0.c.f17386m;
        yVar.d(this.G);
        l0.b0.p0(this.J);
        yVar.d(this.H);
        y0.g.f18110t.d(this.f6497t);
        u0.c.G.d(this.f6500w);
        u0.c.f17374a.d(this.f6501x);
        u0.c.f17387n.d(this.f6502y);
        e.e.f1627e.d(this.f6503z);
        h0.d.f2462a.d(this.D);
        u0.c.f17397x.d(this.E);
        this.f6488k.j();
        l0.b0.p0(this.I);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 129) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            if (i2 == 1) {
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                z.k.s(227, 0, 103, 3, 0, 0, 128);
                return;
            }
            if (i2 != 2) {
                if (i2 == 3 && iArr != null && iArr.length > 0) {
                    z.k.s(227, 0, 112, 2, iArr[0], iArr[1]);
                    return;
                }
                return;
            }
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[4] == 4) {
                z.k.s(227, 0, 103, 3, 1, 0, 128);
                return;
            } else {
                z.k.s(227, 0, 107, 6, 2, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                return;
            }
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        if (iArr[0] == 22) {
            q3(iArr[1]);
            return;
        }
        if (iArr[0] == 23) {
            p3(iArr[1]);
            return;
        }
        if (iArr[0] == 160) {
            m3(iArr[1]);
            return;
        }
        if (iArr[0] == 161) {
            n3(iArr[1]);
            return;
        }
        if (iArr[0] == 162) {
            l3(iArr[1]);
            return;
        }
        if (iArr[0] == 163) {
            o3(iArr[1]);
        } else if (iArr[0] == 19) {
            z.k.s(227, 0, 106, 2, iArr[0], iArr[1]);
        } else {
            z.k.s(227, 0, 106, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3(int i2) {
        if (i2 == 1) {
            z.k.s(227, 0, 106, 2, 8, 1);
        } else if (i2 != 2) {
            z.k.s(227, 0, 106, 2, 8, 0);
        } else {
            z.k.s(227, 0, 106, 2, 8, 2);
        }
    }

    public final void b3(boolean z2) {
        a.f.p().s("SoundChangeFlag " + this.A);
        a.f.p().s("SoundChangeTo " + z2);
        if (this.A == z2) {
            return;
        }
        this.A = z2;
        if (z2) {
            z.k.s(1, 0, 145);
        } else {
            z.k.s(1, 0, 144);
        }
    }

    public final void l3(int i2) {
        qt.y0(125, i2);
        O = i2;
        z.k.s(227, 0, 112, 2, 9, i2);
        int iB = this.f6488k.b(5, 0);
        int i3 = O;
        if (iB != i3) {
            this.f6488k.g(5, i3);
        }
    }

    public final void m3(int i2) {
        qt.y0(123, i2);
        M = i2;
        int iB = this.f6488k.b(3, 0);
        int i3 = M;
        if (iB != i3) {
            this.f6488k.g(3, i3);
        }
    }

    public final void n3(int i2) {
        qt.y0(124, i2);
        N = i2;
        int iB = this.f6488k.b(4, 0);
        int i3 = N;
        if (iB != i3) {
            this.f6488k.g(4, i3);
        }
    }

    public final void o3(int i2) {
        qt.y0(126, i2);
        P = i2;
        z.k.s(227, 0, 112, 2, 5, i2);
        int iB = this.f6488k.b(6, 0);
        int i3 = P;
        if (iB != i3) {
            this.f6488k.g(6, i3);
        }
    }

    public final void p3(int i2) {
        qt.y0(101, i2);
        K = i2;
        z.k.s(227, 106, 2, 23, i2);
        int iB = this.f6488k.b(1, 0);
        int i3 = K;
        if (iB != i3) {
            this.f6488k.g(1, i3);
        }
    }

    public final void q3(int i2) {
        qt.y0(102, i2);
        L = i2;
        z.k.s(227, 0, 106, 2, 22, i2);
        int iB = this.f6488k.b(2, 0);
        int i3 = L;
        if (iB != i3) {
            this.f6488k.g(2, i3);
        }
    }
}

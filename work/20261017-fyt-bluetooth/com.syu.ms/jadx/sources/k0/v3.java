package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class v3 extends lt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f11201s = 10;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f11202t = 10;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f11203u = 10;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f11204v = 7;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f11205w = 7;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11207c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11208d = {new int[]{16, 29}, new int[]{17, 2}, new int[]{18, 3}, new int[]{19, 4}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 18}, new int[]{23, 26}, new int[]{24, 0}, new int[]{25, 7}, new int[]{26, 8}, new int[]{27, 21}, new int[]{28, 54}, new int[]{29, 18}, new int[]{30, 38}, new int[]{31, 3}, new int[]{32, 4}, new int[]{33, 1}, new int[]{34, 16}, new int[]{35, 64}, new int[]{36, 5}, new int[]{37, 29}, new int[]{38, 19}, new int[]{39, 20}, new int[]{40, 13}, new int[]{41, 5}, new int[]{42, 74}, new int[]{43, 75}, new int[]{44, 55}, new int[]{45, 9}, new int[]{46, 6}, new int[]{47, 34}, new int[]{49, 1}, new int[]{50, 58}, new int[]{51, 18}, new int[]{52, 35}, new int[]{53, 18}, new int[]{54, 53}, new int[]{55, 22}, new int[]{56, 66}, new int[]{57, 65}, new int[]{58, 78}, new int[]{59, 64}, new int[]{60, 16}, new int[]{48, 13}, new int[]{132, 7}, new int[]{133, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f11209e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11210f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f11211g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f11212h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o1.g0 f11213i = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11214j = 3;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f11215k = 4;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f11216l = 5;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f11217m = 6;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f11218n = 7;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f11219o = new d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f11220p = new e();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public byte f11221q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f11222r = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = y0.f.f18037c;
            if (i2 <= 35) {
                z.k.s(227, 5, 5, i2);
            } else {
                z.k.s(227, 5, 5, 35);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(v3.this.f11212h);
            v3.this.f11210f = 7;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v3 v3Var = v3.this;
            int i2 = v3Var.f11210f - 1;
            v3Var.f11210f = i2;
            if (i2 <= 0) {
                l0.b0.p0(v3Var.f11212h);
                v3.this.f11210f = 7;
                return;
            }
            int i3 = u0.b.f17306a0;
            if (i3 != 1) {
                if (i3 == 0) {
                    z.k.s(227, 5, 4, 1);
                    return;
                }
                return;
            }
            z.k.s(227, 5, 4, 0);
            z.k.s(227, 5, 255, 127);
            int i4 = nt.f8637c;
            if (i4 == 2 || i4 == 3) {
                v3 v3Var2 = v3.this;
                v3Var2.b3(v3Var2.f11213i.b(3, 10), v3.this.f11213i.b(4, 10), v3.this.f11213i.b(5, 10));
                v3 v3Var3 = v3.this;
                v3Var3.a3(v3Var3.f11213i.b(6, 7), v3.this.f11213i.b(7, 7));
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.e0.c();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.e0.k();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v3 v3Var = v3.this;
            byte b2 = (byte) (v3Var.f11221q + 1);
            v3Var.f11221q = b2;
            if (b2 > 5) {
                l0.b0.o0(v3Var.f11222r);
                v3.this.f11221q = (byte) 0;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        int i2 = nt.f8637c;
        if (i2 == 2 || i2 == 3) {
            y0.f.C0 = 36;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f11213i.a();
        if (nt.a()) {
            l0.b0.b(this.f11219o);
            y0.g.f18094d.a(this.f11220p, 1);
            y0.g.f18095e.a(this.f11220p, 1);
            w0.e.f17815a.a(this.f11219o, 1);
            u0.c.f17374a.a(this.f11219o, 1);
            u0.c.f17393t.a(this.f11219o, 1);
            u0.c.f17392s.a(this.f11219o, 1);
        }
        int i2 = nt.f8637c;
        if (i2 == 2) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 0;
            mtVar.f8311f = 1;
            mtVar.f8312g = 1;
            mtVar.f8307b = 1;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
            if (nt.a()) {
                y0.g.f18094d.a(this.f11209e, 1);
                return;
            }
            return;
        }
        if (i2 != 3) {
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = null;
            mtVar2.f8310e = 0;
            mtVar2.f8311f = 1;
            mtVar2.f8312g = 1;
            mtVar2.f8307b = 0;
            mtVar2.f8308c = 0;
            mtVar2.f8309d = 0;
            return;
        }
        mt mtVar3 = this.f7886a;
        mtVar3.f8306a = new String[]{"com.syu.canbus"};
        mtVar3.f8310e = 0;
        mtVar3.f8311f = 0;
        mtVar3.f8312g = 1;
        mtVar3.f8307b = 0;
        mtVar3.f8308c = 0;
        mtVar3.f8309d = 0;
        if (nt.a()) {
            y0.g.f18094d.a(this.f11209e, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == 1) {
            if (bArr[i2] < 6) {
                int i4 = i2 + 2;
                int i5 = bArr[i4] & 128;
                int i6 = bArr[i4] & 127;
                u0.d.A3(i5 != 0 ? 1000 - (i6 * 10) : (i6 * 10) + 1000);
                return;
            }
            int i7 = i2 + 2;
            if ((bArr[i7] & 255) != 255) {
                int i8 = bArr[i7] & 128;
                int i9 = bArr[i7] & 127;
                u0.d.A3(i8 != 0 ? 1000 - (i9 * 10) : (i9 * 10) + 1000);
                return;
            } else {
                int i10 = i2 + 3;
                if ((bArr[i10] & 255) != 255) {
                    u0.d.B3(((((bArr[i10] & 255) * 10) + 1000) | 268435456) & (-1));
                    return;
                } else {
                    u0.d.A3(0);
                    return;
                }
            }
        }
        if (b2 != 2) {
            if (b2 == 3) {
                int i11 = i2 + 2;
                int i12 = bArr[i11] & 255;
                int i13 = i2 + 3;
                int i14 = bArr[i13] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i12 = bArr[i13] & 255;
                    i14 = bArr[i11] & 255;
                }
                qt.y0(37, (i12 < 50 || i12 > 100) ? 0 : 1);
                if (i12 == 0) {
                    qt.y0(27, -2);
                } else if (i12 == 30) {
                    qt.y0(27, -3);
                } else if (i12 != 255) {
                    qt.y0(27, (i12 * 5) + 170);
                } else {
                    qt.y0(27, -1);
                }
                if (i14 == 0) {
                    qt.y0(28, -2);
                } else if (i14 == 30) {
                    qt.y0(28, -3);
                } else if (i14 != 255) {
                    qt.y0(28, (i14 * 5) + 170);
                } else {
                    qt.y0(28, -1);
                }
                int i15 = bArr[i2 + 4] & 255;
                qt.y0(21, i15 <= 8 ? i15 : 8);
                byte b3 = bArr[i2 + 5];
                int[] iArr2 = new int[1];
                iArr2[0] = (b3 & 128) == 0 ? 0 : 1;
                qt.y0(12, iArr2);
                qt.y0(65, (b3 >> 6) & 1);
                qt.y0(16, (b3 >> 5) & 1);
                qt.y0(20, (b3 >> 4) & 1);
                qt.y0(19, (b3 >> 3) & 1);
                qt.y0(13, (b3 >> 2) & 1);
                qt.y0(14, (b3 >> 1) & 1);
                qt.y0(11, (b3 >> 0) & 1);
                return;
            }
            if (b2 == 4) {
                if (nt.a()) {
                    byte b4 = bArr[i2 + 2];
                    byte b5 = bArr[i2 + 3];
                    u0.d.R2(l0.e0.n(((b5 & 192) >> 6) & 255, 1));
                    int i16 = ((b5 & DhcpPacket.DHCP_HOST_NAME) >> 2) & 255;
                    u0.d.S2(l0.e0.n(i16, 2));
                    u0.d.T2(l0.e0.n(i16, 2));
                    u0.d.U2(l0.e0.n(b5 & 3 & 255, 1));
                    u0.d.D2(l0.e0.n(((b4 & 192) >> 6) & 255, 1));
                    int i17 = ((b4 & DhcpPacket.DHCP_HOST_NAME) >> 2) & 255;
                    u0.d.E2(l0.e0.n(i17, 2));
                    u0.d.F2(l0.e0.n(i17, 2));
                    u0.d.G2(l0.e0.n(b4 & 3 & 255, 1));
                    return;
                }
                return;
            }
            if (b2 != 5) {
                if (b2 == 8) {
                    if (nt.f8633a == 196745) {
                        l0.f0.f(bArr[i2 + 2]);
                        return;
                    }
                    return;
                } else {
                    if (b2 == 127 && nt.f8633a == 196745) {
                        qt.L(new String(bArr, i2 + 2, i3 - 2));
                        return;
                    }
                    return;
                }
            }
            byte b6 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b6 >> 1) & 1);
                qt.y0(2, (b6 >> 0) & 1);
            } else {
                qt.y0(1, (b6 >> 0) & 1);
                qt.y0(2, (b6 >> 1) & 1);
            }
            qt.y0(4, (b6 >> 3) & 1);
            qt.y0(3, (b6 >> 2) & 1);
            qt.y0(5, (b6 >> 4) & 1);
            qt.y0(0, (b6 >> 5) & 1);
            return;
        }
        if (nt.a()) {
            int i18 = bArr[i2 + 2] & 255;
            this.f11207c = i18;
            int i19 = 0;
            while (true) {
                iArr = this.f11208d;
                if (i19 >= iArr.length) {
                    break;
                }
                int i20 = this.f11207c;
                if (i20 == iArr[i19][0]) {
                    if (i20 == 0) {
                        break;
                    }
                    this.f11206b = i19;
                    break;
                }
                i19++;
            }
            if (bArr[i2] == 5) {
                if (i18 == 0) {
                    l0.b0.o0(this.f11222r);
                    this.f11221q = (byte) 0;
                    return;
                }
                int i21 = this.f11206b;
                if (i21 < iArr.length && i21 != 255 && this.f11221q == 0) {
                    l0.b0.l0(iArr[i21][1], 0);
                    l0.b0.l0(this.f11208d[this.f11206b][1], 1);
                    this.f11221q = (byte) (this.f11221q + 1);
                    l0.b0.a(this.f11222r);
                }
                this.f11206b = 255;
                return;
            }
            if (bArr[i2] == 6) {
                int i22 = bArr[i2 + 3] & 255;
                int i23 = this.f11207c;
                if (i23 != 25) {
                    if (i23 != 26) {
                        if (i23 == 38) {
                            for (int i24 = 0; i24 < (i22 & 255); i24++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            return;
                        }
                        if (i23 == 39) {
                            for (int i25 = 0; i25 < (i22 & 255); i25++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            return;
                        }
                        if (i23 != 132) {
                            if (i23 != 133) {
                                int i26 = i22 & 255;
                                if (i26 == 1) {
                                    if (i19 < iArr.length) {
                                        l0.b0.l0(iArr[i19][1], 0);
                                        return;
                                    }
                                    return;
                                } else {
                                    if (i26 == 0) {
                                        int i27 = this.f11206b;
                                        if (i27 < iArr.length && i27 != 255) {
                                            l0.b0.l0(iArr[i27][1], 1);
                                        }
                                        this.f11206b = 255;
                                        return;
                                    }
                                    return;
                                }
                            }
                        }
                    }
                    for (int i28 = 0; i28 < (i22 & 255); i28++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    return;
                }
                for (int i29 = 0; i29 < (i22 & 255); i29++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f11213i.j();
        l0.b0.p0(this.f11219o);
        o1.y yVar = y0.g.f18094d;
        yVar.d(this.f11220p);
        y0.g.f18095e.d(this.f11220p);
        w0.e.f17815a.d(this.f11219o);
        u0.c.f17374a.d(this.f11219o);
        u0.c.f17393t.d(this.f11219o);
        u0.c.f17392s.d(this.f11219o);
        yVar.d(this.f11209e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 103) {
            return;
        }
        y.e.a(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 2) {
            if (iArr != null) {
                b3(iArr[0], iArr[1], iArr[2]);
            }
        } else if (i2 == 3 && iArr != null) {
            a3(iArr[0], iArr[1]);
        }
    }

    public final void a3(int i2, int i3) {
        f11204v = i2;
        f11205w = i3;
        z.k.s(227, 6, 7, i2, i3);
        qt.y0(102, f11205w);
        int iB = this.f11213i.b(7, 7);
        int i4 = f11205w;
        if (iB != i4) {
            this.f11213i.g(7, i4);
        }
        qt.y0(101, f11204v);
        int iB2 = this.f11213i.b(6, 7);
        int i5 = f11204v;
        if (iB2 != i5) {
            this.f11213i.g(6, i5);
        }
    }

    public final void b3(int i2, int i3, int i4) {
        f11201s = i2;
        f11202t = i3;
        f11203u = i4;
        z.k.s(227, 7, 8, i2, i3, i4);
        qt.y0(98, f11201s);
        int iB = this.f11213i.b(3, 10);
        int i5 = f11201s;
        if (iB != i5) {
            this.f11213i.g(3, i5);
        }
        qt.y0(99, f11202t);
        int iB2 = this.f11213i.b(4, 10);
        int i6 = f11202t;
        if (iB2 != i6) {
            this.f11213i.g(4, i6);
        }
        qt.y0(100, f11203u);
        int iB3 = this.f11213i.b(5, 10);
        int i7 = f11203u;
        if (iB3 != i7) {
            this.f11213i.g(5, i7);
        }
    }
}

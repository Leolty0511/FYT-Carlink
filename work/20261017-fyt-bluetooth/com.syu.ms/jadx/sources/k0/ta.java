package k0;

import android.net.ProxyProperties;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ta extends lt {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f10582r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f10583s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f10584t = 255;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f10585u = 255;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f10586v = 255;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f10587w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f10588x = 255;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f10589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10591d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10592e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f10593f = {new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{24, -1}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f10594g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f10595h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f10596i = new c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f10597j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f10598k = new d();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f10599l = new e();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f10600m = new f();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f10601n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f10602o = new g();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f10603p = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f10604q = 2;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = ta.f10588x;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 == 13) {
                    int i4 = ta.f10585u;
                    if (i4 != 10 && i4 != 11 && i4 != 6) {
                        ta.c3();
                    }
                } else {
                    z.k.s(227, 3, 161, 128, 3, 0);
                }
                ta.f10588x = u0.b.D;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.W1 == 1) {
                o1.u.z();
            }
            u0.b.W1 = 0;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ta.f10585u != 3) {
                if (u0.b.j4 == 1) {
                    if (ta.f10584t == 0) {
                        ta.this.b3();
                    }
                } else if (ta.f10584t == 1) {
                    ta.this.b3();
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ta.f10585u != 3 && u0.b.j4 == 1 && !ta.this.f10597j) {
                z.k.s(227, 3, 161, 128, 3, 0);
                ta.this.f10597j = true;
            } else if (ta.this.f10597j && u0.b.j4 == 0 && ta.f10585u == 3) {
                z.k.s(227, 3, 161, 128, ta.f10586v, 0);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.a(ta.this.f10600m);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.b.f16e0 == 1) {
                qt.h(1);
                l0.b0.o0(ta.this.f10600m);
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 2, 10, 1, 50);
            if (n0.j4.f16464b == 31 && nt.f8633a == 65853 && u0.b.f17357r0 == 0 && ta.f10587w == 0 && u0.b.C != 13 && o1.u.S(a.b.Q)) {
                o1.u.k();
            }
        }
    }

    public static int a3(int i2) {
        if (i2 >= 255) {
            return 10;
        }
        return (i2 * 10) / 255;
    }

    public static void c3() {
        z.k.s(227, 2, 42, 50, 1);
        z.k.s(227, 2, 42, 50, 0);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        y0.f.C0 = 36;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (i3(iArr, 2)) {
            switch (iArr[0]) {
                case 33:
                    if ((iArr[1] != 0 && nt.f8645g[10] != 1) || (iArr[1] == 0 && nt.f8645g[10] == 1)) {
                        f3(1, 1);
                        f3(1, 0);
                        break;
                    }
                    break;
                case 34:
                    if ((iArr[1] != 0 && nt.f8645g[11] != 1) || (iArr[1] == 0 && nt.f8645g[11] == 1)) {
                        f3(2, 1);
                        f3(2, 0);
                        break;
                    }
                    break;
                case 35:
                    if ((iArr[1] != 0 && nt.f8645g[13] != 1) || (iArr[1] == 0 && nt.f8645g[13] == 1)) {
                        f3(4, 1);
                        f3(4, 0);
                        break;
                    }
                    break;
                case 36:
                    if ((iArr[1] != 0 && nt.f8645g[65] != 1) || (iArr[1] == 0 && nt.f8645g[65] == 1)) {
                        f3(5, 1);
                        f3(5, 0);
                        break;
                    }
                    break;
                case 37:
                    if ((iArr[1] != 0 && nt.f8645g[16] != 1) || (iArr[1] == 0 && nt.f8645g[16] == 1)) {
                        f3(6, 1);
                        f3(6, 0);
                        break;
                    }
                    break;
                case 38:
                    if ((iArr[1] != 0 && nt.f8645g[12] != 2) || (iArr[1] == 0 && nt.f8645g[12] == 2)) {
                        f3(7, 1);
                        f3(7, 0);
                        break;
                    }
                    break;
                case 39:
                    if (iArr[1] == -2) {
                        f3(12, 1);
                        f3(12, 0);
                    } else if (iArr[1] == -1) {
                        f3(11, 1);
                        f3(11, 0);
                    }
                    break;
                case 41:
                    if (iArr[1] != 0) {
                        f3(13, 1);
                        f3(13, 0);
                    } else {
                        f3(14, 1);
                        f3(14, 0);
                    }
                    break;
                case 42:
                    if (iArr[1] != 0) {
                        f3(15, 1);
                        f3(15, 0);
                    } else {
                        f3(16, 1);
                        f3(16, 0);
                    }
                    break;
            }
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8317l = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        if (o1.q0.v()) {
            qt.y(this.f10602o);
        }
        if (n0.j4.f16464b == 31 && nt.f8633a == 65853) {
            z.c.f18185e.a(this.f10595h, 1);
        }
        if (nt.a()) {
            qt.y(this.f10594g);
        }
        u0.b.Y3 = true;
        mt mtVar2 = this.f7886a;
        mtVar2.f8307b = 1;
        mtVar2.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
        if (g.e.a() == 7) {
            if (a.f.v() != null) {
                a.f.v().a(true);
            }
            n0.j4.f16466d.g3(true);
            y0.h.V(4);
            u0.c.G.a(this.f10598k, 1);
            u0.c.f17386m.a(this.f10599l, 1);
            if (App.c().getResources().getConfiguration().orientation != 1) {
                this.f7886a.f8314i = 1;
            } else {
                this.f7886a.f8314i = 0;
            }
        } else {
            u0.c.G.a(this.f10596i, 1);
        }
        switch (nt.f8633a) {
            case 317:
                j3(43);
                break;
            case 65853:
                j3(44);
                break;
            case 131389:
            case 196925:
            case 393533:
            case 459069:
                j3(44);
                break;
            case 262461:
            case 327997:
                j3(21);
                break;
            case 524605:
                if (App.c().getResources().getConfiguration().orientation == 1) {
                    this.f7886a.f8306a = new String[]{"com.syu.canbus"};
                } else {
                    this.f7886a.f8306a = null;
                }
                this.f7886a.f8322q = 1;
                j3(36);
                break;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -81) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            f10584t = (b3 >> 6) & 1;
            int i4 = f10585u;
            int i5 = b4 & 255;
            if (i4 != i5) {
                f10586v = i4;
                f10585u = i5;
                return;
            }
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 43) {
            if (nt.a()) {
                int i6 = i2 + 2;
                if (bArr[i6] == 1) {
                    int i7 = i2 + 3;
                    if (bArr[i7] != 0) {
                        if ((bArr[i7] & 255) < 128) {
                            u0.d.O1();
                            return;
                        } else {
                            u0.d.M1();
                            return;
                        }
                    }
                }
                if (bArr[i6] == 2 || bArr[i6] == 3) {
                    int i8 = i2 + 3;
                    if (bArr[i8] != 0) {
                        if ((bArr[i8] & 255) < 128) {
                            u0.d.I1();
                            return;
                        } else {
                            u0.d.B1();
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (b2 == 65) {
            if (nt.a()) {
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(a3(bArr[i2 + 3] & 255));
                u0.d.T2(a3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                u0.d.D2(a3(bArr[i2 + 6] & 255));
                u0.d.E2(a3(bArr[i2 + 7] & 255));
                u0.d.F2(a3(bArr[i2 + 8] & 255));
                u0.d.G2(a3(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b2 == 17) {
            int i9 = (bArr[i2 + 2] >> 2) & 1;
            if (f10587w != i9) {
                f10587w = i9;
                if (u0.b.f17357r0 == 0) {
                    if (f10587w != 0) {
                        if (o1.u.S(a.b.Q)) {
                            this.f10589b = true;
                        } else {
                            this.f10589b = false;
                            o1.u.f(a.b.R);
                        }
                    } else if (!this.f10589b && u0.b.C != 13 && o1.u.S(a.b.Q)) {
                        o1.u.k();
                    }
                }
            }
            if (nt.a()) {
                byte b5 = bArr[i2 + 4];
                byte b6 = bArr[i2 + 5];
                this.f10591d = b5 & 255;
                int i10 = 0;
                while (true) {
                    iArr = this.f10593f;
                    if (i10 >= iArr.length) {
                        break;
                    }
                    int i11 = this.f10591d;
                    if (i11 == iArr[i10][0]) {
                        if (i11 == 0) {
                            break;
                        }
                        this.f10590c = i10;
                        break;
                    }
                    i10++;
                }
                int i12 = this.f10591d;
                if (i12 != 1 && i12 != 2 && i12 != 3) {
                    if ((b6 & 255) == 0) {
                        int i13 = this.f10590c;
                        if (i13 < iArr.length && i13 != 255) {
                            l0.b0.l0(iArr[i13][1], 1);
                        }
                        this.f10590c = 255;
                    } else if (i10 < iArr.length) {
                        l0.b0.l0(iArr[i10][1], 0);
                    }
                }
                qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                return;
            }
            return;
        }
        if (b2 == 18) {
            byte b7 = bArr[i2 + 4];
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
            qt.y0(54, (b7 >> 1) & 1);
            qt.y0(80, (b7 >> 0) & 1);
            return;
        }
        if (b2 != 49) {
            if (b2 != 50) {
                return;
            }
            int i14 = i2 + 4;
            int i15 = i2 + 5;
            qt.y0(99, ((bArr[i14] << 8) & 65280) | (bArr[i15] & 255));
            qt.y0(1032, ((bArr[i14] << 8) & 65280) | (bArr[i15] & 255));
            qt.y0(98, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
            return;
        }
        byte b8 = bArr[i2 + 2];
        byte b9 = bArr[i2 + 3];
        byte b10 = bArr[i2 + 4];
        byte b11 = bArr[i2 + 5];
        byte b12 = bArr[i2 + 6];
        byte b13 = bArr[i2 + 7];
        int i16 = i2 + 8;
        byte b14 = bArr[i16];
        int i17 = i2 + 9;
        byte b15 = bArr[i17];
        qt.y0(10, (b8 >> 6) & 1);
        qt.y0(13, (b8 >> 3) & 1);
        qt.y0(62, (b8 >> 2) & 1);
        qt.y0(11, (b8 >> 0) & 3);
        qt.y0(12, (b9 >> 4) & 1);
        qt.y0(65, (b10 >> 6) & 1);
        qt.y0(16, (b10 >> 5) & 1);
        if (((b9 >> 7) & 1) == 1) {
            qt.y0(30, 0);
            qt.y0(32, (b10 >> 2) & 3);
        } else {
            qt.y0(32, 0);
            qt.y0(30, (b10 >> 2) & 3);
        }
        if (((b9 >> 6) & 1) == 1) {
            qt.y0(29, 0);
            qt.y0(31, (b10 >> 0) & 3);
        } else {
            qt.y0(31, 0);
            qt.y0(29, (b10 >> 0) & 3);
        }
        int i18 = b12 & 255;
        if (i18 == 0) {
            qt.y0(18, 0);
            qt.y0(20, 0);
            qt.y0(19, 0);
        } else if (i18 == 1) {
            qt.y0(49, 1);
            qt.y0(18, 0);
            qt.y0(20, 0);
            qt.y0(19, 0);
        } else if (i18 == 2) {
            qt.y0(18, 0);
            qt.y0(20, 0);
            qt.y0(19, 0);
        } else if (i18 == 3) {
            qt.y0(20, 1);
            qt.y0(18, 0);
            qt.y0(19, 0);
        } else if (i18 == 5) {
            qt.y0(19, 1);
            qt.y0(20, 1);
            qt.y0(18, 0);
        } else if (i18 != 6) {
            switch (i18) {
                case 11:
                    qt.y0(18, 1);
                    qt.y0(20, 0);
                    qt.y0(19, 0);
                    break;
                case 12:
                    qt.y0(18, 1);
                    qt.y0(20, 1);
                    qt.y0(19, 0);
                    break;
                case 13:
                    qt.y0(18, 1);
                    qt.y0(19, 1);
                    qt.y0(20, 0);
                    break;
                case 14:
                    qt.y0(18, 1);
                    qt.y0(19, 1);
                    qt.y0(20, 1);
                    break;
            }
        } else {
            qt.y0(19, 1);
            qt.y0(18, 0);
            qt.y0(20, 0);
        }
        qt.y0(77, b12);
        qt.y0(21, b13);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b14 = bArr[i17];
            b15 = bArr[i16];
        }
        byte b16 = b14;
        byte b17 = b15;
        int i19 = b16 & 255;
        if (b16 == -2) {
            qt.y0(27, -2);
        } else if (b16 == -1) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i19);
        }
        int i20 = b17 & 255;
        if (b17 == -2) {
            qt.y0(28, -2);
        } else if (b17 == -1) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i20);
        }
    }

    @Override // k0.lt
    public void W2() {
        if (o1.q0.v()) {
            qt.p0(this.f10602o);
        }
        z.c.f18185e.d(this.f10595h);
        u0.c.G.d(this.f10596i);
        if (nt.a()) {
            qt.p0(this.f10594g);
        }
        u0.b.Y3 = false;
        this.f7886a.f8307b = 0;
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 100) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (i3(iArr, 2)) {
                g3(iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (i3(iArr, 3)) {
                h3(iArr[0], iArr[1], iArr[2]);
            }
        } else if (i2 == 2) {
            if (i3(iArr, 2)) {
                f3(iArr[0], iArr[1]);
            }
        } else if (i2 == 3) {
            if (i3(iArr, 2)) {
                z.k.s(227, 2, 42, iArr[0], iArr[1]);
            }
        } else if (i2 == 4 && i3(iArr, 2)) {
            z.k.s(227, 2, 43, iArr[0], iArr[1]);
        }
    }

    public final void b3() {
        z.k.s(227, 2, 42, 1, 1);
        z.k.s(227, 2, 42, 1, 0);
    }

    public final void f3(int i2, int i3) {
        z.k.s(227, 2, 61, (byte) i2, (byte) i3);
    }

    public final void g3(int i2, int i3) {
        if (n0.j4.f16464b != 6) {
            if (nt.f8633a == 65853) {
                if (i3 == 53) {
                    z.k.s(227, 2, 42, 65, (byte) i2);
                    return;
                } else if (i3 == 54) {
                    z.k.s(227, 2, 42, 64, (byte) i2);
                    return;
                } else {
                    z.k.s(227, 2, 42, (byte) i3, (byte) i2);
                    return;
                }
            }
            if ((i3 == 51 || i3 == 52) && i2 == 0) {
                if (i3 == 51) {
                    int i4 = f10582r;
                    if (i4 == 255) {
                        f10582r = 0;
                    } else {
                        f10582r = i4 + 1;
                    }
                } else if (i3 == 52) {
                    int i5 = f10582r;
                    if (i5 == 0) {
                        f10582r = 255;
                    } else {
                        f10582r = i5 - 1;
                    }
                }
                z.k.s(227, 2, 43, this.f10604q, (byte) f10582r);
                return;
            }
            if ((i3 != 53 && i3 != 54) || i2 != 0) {
                z.k.s(227, 2, 42, (byte) i3, (byte) i2);
                return;
            }
            if (i3 == 53) {
                int i6 = f10583s;
                if (i6 == 255) {
                    f10583s = 0;
                } else {
                    f10583s = i6 + 1;
                }
            } else if (i3 == 54) {
                int i7 = f10583s;
                if (i7 == 0) {
                    f10583s = 255;
                } else {
                    f10583s = i7 - 1;
                }
            }
            z.k.s(227, 2, 43, this.f10603p, (byte) f10583s);
            return;
        }
        if (nt.f8633a != 317) {
            if (i3 == 53 || i3 == 51) {
                z.k.s(227, 2, 42, 65, (byte) i2);
                return;
            } else if (i3 == 54 || i3 == 52) {
                z.k.s(227, 2, 42, 64, (byte) i2);
                return;
            } else {
                z.k.s(227, 2, 42, (byte) i3, (byte) i2);
                return;
            }
        }
        if ((i3 == 51 || i3 == 52) && i2 == 0) {
            if (i3 == 51) {
                int i8 = f10582r;
                if (i8 == 255) {
                    f10582r = 0;
                } else {
                    f10582r = i8 + 1;
                }
            } else if (i3 == 52) {
                int i9 = f10582r;
                if (i9 == 0) {
                    f10582r = 255;
                } else {
                    f10582r = i9 - 1;
                }
            }
            z.k.s(227, 2, 43, this.f10604q, (byte) f10582r);
            return;
        }
        if ((i3 != 53 && i3 != 54) || i2 != 0) {
            z.k.s(227, 2, 42, (byte) i3, (byte) i2);
            return;
        }
        if (i3 == 53) {
            int i10 = f10583s;
            if (i10 == 255) {
                f10583s = 0;
            } else {
                f10583s = i10 + 1;
            }
        } else if (i3 == 54) {
            int i11 = f10583s;
            if (i11 == 0) {
                f10583s = 255;
            } else {
                f10583s = i11 - 1;
            }
        }
        z.k.s(227, 2, 43, this.f10603p, (byte) f10583s);
    }

    public final void h3(int i2, int i3, int i4) {
        int i5 = nt.f8633a;
        if (i5 != 65853 && i5 != 131389 && i5 != 196925 && i5 != 327997 && i5 != 262461 && i5 != 393533 && i5 != 524605 && i5 != 459069) {
            z.k.s(227, 5, 44, (byte) i2, (byte) ((i3 >> 8) & 255), (byte) (i3 & 255), (byte) ((i4 >> 8) & 255), (byte) (i4 & 255));
            return;
        }
        a.f.p().u(ProxyProperties.LOCAL_EXCL_LIST + i2 + ":" + i3 + "/ " + i4);
        z.k.s(227, 6, 44, (byte) i2, (byte) ((i3 >> 8) & 255), (byte) (i3 & 255), (byte) ((i4 >> 8) & 255), (byte) (i4 & 255), 0);
    }

    public final boolean i3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public final void j3(int i2) {
        z.k.s(227, 2, 36, (byte) i2, 7);
    }
}

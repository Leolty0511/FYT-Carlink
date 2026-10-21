package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ej extends lt {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f4829v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f4830w;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4831b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4832c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4833d = {new int[]{23, 3}, new int[]{24, 4}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f4834e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f4835f = 2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public o1.g0 f4836g = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4837h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4838i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4839j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4840k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f4841l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f4842m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f4843n = new c();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f4844o = new d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f4845p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f4846q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f4847r = new e();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public byte f4848s = 5;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f4849t = new f();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f4850u = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ej ejVar = ej.this;
            int i2 = ejVar.f4840k;
            int i3 = y0.f.Q0;
            if (i2 != i3) {
                ejVar.f4840k = i3;
                z.k.s(227, 105, 2, 19, i3);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 108, 1, u0.b.K);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            switch (h0.c.E) {
                case 0:
                case 1:
                case 2:
                case 6:
                default:
                    i2 = 0;
                    break;
                case 3:
                    i2 = 3;
                    break;
                case 4:
                    i2 = 2;
                    break;
                case 5:
                    i2 = 1;
                    break;
            }
            z.k.s(227, 99, 2, 0, i2);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (u0.b.D) {
                case 2:
                    z.k.s(227, 103, 1, 3);
                    break;
                case 3:
                    z.k.s(227, 103, 1, 4);
                    break;
                case 5:
                    z.k.s(227, 103, 1, 6);
                    break;
                case 6:
                    z.k.s(227, 103, 1, 9);
                    break;
                case 8:
                    z.k.s(227, 103, 1, 1);
                    break;
                case 9:
                    z.k.s(227, 103, 1, 2);
                    break;
                case 10:
                    z.k.s(227, 103, 1, 1);
                    break;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ej ejVar = ej.this;
            int i2 = ejVar.f4845p;
            int i3 = u0.b.j4;
            if (i2 != i3) {
                ejVar.f4845p = i3;
                z.k.s(227, 105, 2, 19, i3);
                ej ejVar2 = ej.this;
                int i4 = ejVar2.f4838i;
                if (i4 == 2 && u0.b.j4 == 1) {
                    ejVar2.f4846q = true;
                    z.k.s(227, 107, 6, 2, 0, 10, 0, 10, 0);
                } else if (i4 == 1 && u0.b.j4 == 0 && ejVar2.f4846q) {
                    ejVar2.f4846q = false;
                    z.k.s(227, 105, 2, 18, 2);
                }
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ej.this.f4850u);
            ej.this.f4848s = (byte) 5;
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ej ejVar = ej.this;
            byte b2 = (byte) (ejVar.f4848s - 1);
            ejVar.f4848s = b2;
            if (b2 > 0) {
                z.k.s(227, 97, 1, 1);
                z.k.s(227, 104, 2, 1, 0);
            } else {
                l0.b0.p0(ejVar.f4850u);
                ej.this.f4848s = (byte) 5;
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
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8317l = 1;
        this.f4836g.a();
        b3(this.f4836g.b(1, 0));
        c3(this.f4836g.b(2, 0));
        u0.c.f17386m.a(this.f4849t, 1);
        y0.g.f18110t.a(this.f4841l, 1);
        u0.c.f17374a.a(this.f4844o, 1);
        u0.c.G.a(this.f4847r, 1);
        u0.c.L.a(this.f4842m, 1);
        h0.d.f2462a.a(this.f4843n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != -95) {
            switch (b2) {
                case 17:
                    int i4 = i2 + 2;
                    if (bArr[i4] == 1 || bArr[i4] == 2 || bArr[i4] == 3) {
                        int i5 = i2 + 3;
                        if (this.f4837h != bArr[i5]) {
                            byte b3 = bArr[i5];
                            this.f4837h = b3;
                            if (b3 != 1) {
                                o1.x.C(nt.f8643f, 13, new int[]{0}, null, null);
                            } else {
                                o1.x.C(nt.f8643f, 13, new int[]{1}, null, null);
                            }
                        }
                    }
                    break;
                case 18:
                    qt.L(new String(bArr, i2 + 2, i3 - 2));
                    break;
                case 19:
                    qt.y0(8, bArr[i2 + 2] & 255);
                    qt.y0(12, bArr[i2 + 3] & 255);
                    qt.y0(7, bArr[i2 + 10] & 255);
                    break;
            }
            return;
        }
        int i6 = bArr[i2 + 2] & 255;
        if (i6 == 16) {
            qt.y0(12, (bArr[i2 + 3] >> 3) & 1);
            return;
        }
        if (i6 == 18) {
            int i7 = bArr[i2 + 3] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i7 >> 4) & 1);
                qt.y0(1, (i7 >> 5) & 1);
            } else {
                qt.y0(2, (i7 >> 5) & 1);
                qt.y0(1, (i7 >> 4) & 1);
            }
            qt.y0(4, (i7 >> 7) & 1);
            qt.y0(3, (i7 >> 6) & 1);
            qt.y0(5, (i7 >> 2) & 1);
            qt.y0(0, (i7 >> 3) & 1);
            return;
        }
        if (i6 != 23) {
            if (i6 != 26) {
                return;
            }
            int i8 = bArr[i2 + 3] & 255;
            this.f4838i = i8;
            qt.y0(9, i8);
            if (i8 != 2 || o1.u.S(a.b.Q)) {
                return;
            }
            o1.u.f(a.b.R);
            return;
        }
        byte b4 = bArr[i2 + 3];
        byte b5 = bArr[i2 + 4];
        this.f4832c = b4 & 255;
        int i9 = 0;
        while (true) {
            iArr = this.f4833d;
            if (i9 >= iArr.length) {
                break;
            }
            int i10 = this.f4832c;
            if (i10 == iArr[i9][0]) {
                if (i10 == 0) {
                    break;
                }
                this.f4831b = i9;
                break;
            }
            i9++;
        }
        int i11 = b5 & 255;
        if (i11 == 1) {
            if (i9 < iArr.length) {
                l0.b0.l0(iArr[i9][1], 0);
            }
        } else if (i11 == 0) {
            int i12 = this.f4831b;
            if (i12 < iArr.length && i12 != 255) {
                l0.b0.l0(iArr[i12][1], 1);
            }
            this.f4831b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f4836g.j();
        u0.c.f17386m.d(this.f4849t);
        l0.b0.p0(this.f4850u);
        y0.g.f18110t.d(this.f4841l);
        u0.c.f17374a.d(this.f4844o);
        u0.c.G.d(this.f4847r);
        u0.c.L.d(this.f4842m);
        h0.d.f2462a.d(this.f4843n);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 14) {
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
            if (iArr[0] == 23) {
                b3(iArr[1]);
                return;
            } else if (iArr[0] == 22) {
                c3(iArr[1]);
                return;
            } else {
                z.k.s(227, 106, 2, iArr[0], iArr[1]);
                return;
            }
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 105, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2 && iArr != null && iArr.length > 0 && this.f4838i == 2) {
            z.k.s(227, 107, 6, 2, iArr[0], iArr[1], iArr[2], iArr[3], 0);
        }
    }

    public final void b3(int i2) {
        qt.y0(10, i2);
        f4829v = i2;
        z.k.s(227, 106, 2, 23, i2);
        int iB = this.f4836g.b(1, 0);
        int i3 = f4829v;
        if (iB != i3) {
            this.f4836g.g(1, i3);
        }
    }

    public final void c3(int i2) {
        qt.y0(11, i2);
        f4830w = i2;
        z.k.s(227, 106, 2, 22, i2);
        int iB = this.f4836g.b(2, 0);
        int i3 = f4830w;
        if (iB != i3) {
            this.f4836g.g(2, i3);
        }
    }
}

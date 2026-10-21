package k0;

/* JADX INFO: loaded from: classes2.dex */
public class ig extends lt {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f6400q = 10;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f6401r = 10;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f6402s = 10;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f6403t = 10;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f6404u = 10;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f6405v = 10;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6406b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f6407c = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{6, 21}, new int[]{7, 76}, new int[]{8, 18}};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f6408d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f6409e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f6410f = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f6411g = 4;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f6412h = 5;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f6413i = 6;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public o1.g0 f6414j = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f6415k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f6416l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f6417m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public byte f6418n = 5;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f6419o = new d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f6420p = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ig.c3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ig.b3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ig.a3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 0) {
                z.k.s(227, 144, 1, 0);
            } else {
                l0.b0.b(ig.this.f6420p);
                ig.this.f6418n = (byte) 5;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ig igVar = ig.this;
            byte b2 = (byte) (igVar.f6418n - 1);
            igVar.f6418n = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, 1);
            } else {
                l0.b0.p0(igVar.f6420p);
                ig.this.f6418n = (byte) 5;
            }
        }
    }

    public static void a3() {
        int i2 = u0.b.D;
        if (i2 == 1) {
            z.k.s(227, 144, 1, 1);
            return;
        }
        if (i2 != 10 && i2 != 4) {
            if (i2 == 5) {
                z.k.s(227, 144, 1, 3);
                return;
            } else if (i2 != 7 && i2 != 8) {
                return;
            }
        }
        z.k.s(227, 144, 1, 2);
    }

    public static void b3() {
        if (u0.b.D != 1) {
            return;
        }
        int i2 = w0.d.f17796h;
        if (i2 == 65536 || i2 == 65537 || i2 == 65538) {
            int i3 = ((w0.d.f17797i - 8750) / 10) + 1;
            z.k.s(227, 145, 4, 0, (i3 >> 8) & 255, (i3 >> 0) & 255, ((w0.d.f17798j & 255) % 6) + 1);
        } else if (i2 == 0 || i2 == 1) {
            int i4 = ((w0.d.f17797i - 522) / 9) + 1;
            z.k.s(227, 145, 4, 1, (i4 >> 8) & 255, (i4 >> 0) & 255, (w0.d.f17798j % 6) + 1);
        }
    }

    public static void c3() {
        int i2 = u0.b.D;
        if (i2 == 4) {
            int i3 = o0.e.f16794r;
            z.k.s(227, 146, 3, o0.e.B, i3 / 60, i3 % 60);
        } else if (i2 == 10 || i2 == 7 || i2 == 8) {
            int i4 = u0.b.t3;
            z.k.s(227, 146, 3, u0.b.r3, i4 / 60, i4 % 60);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f6419o, 1);
        u0.c.f17374a.a(this.f6417m, 1);
        w0.e.f17815a.a(this.f6416l, 1);
        u0.c.f17392s.a(this.f6415k, 1);
        u0.c.f17393t.a(this.f6415k, 1);
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 1;
        int i2 = nt.f8637c;
        if (i2 == 53) {
            mtVar.f8306a = null;
        } else {
            if (i2 != 54) {
                return;
            }
            this.f6414j.a();
            e3(this.f6414j.b(1, 10), this.f6414j.b(2, 10), this.f6414j.b(3, 10), this.f6414j.b(4, 10), this.f6414j.b(5, 10), this.f6414j.b(6, 10));
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 1) {
            if (b2 == 31) {
                qt.j(bArr[i2 + 4], bArr[i2 + 3], (bArr[i2 + 2] & 1) != 1 ? 1 : 0, 500);
                return;
            } else {
                if (b2 != 127) {
                    return;
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
        }
        this.f6406b = bArr[i2 + 2] & 255;
        int i4 = 0;
        while (true) {
            iArr = this.f6407c;
            if (i4 >= iArr.length || this.f6406b == iArr[i4][0]) {
                break;
            } else {
                i4++;
            }
        }
        if (i4 >= iArr.length || i4 == 0) {
            return;
        }
        l0.b0.l0(iArr[i4][1], 0);
        l0.b0.l0(this.f6407c[i4][1], 1);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f6419o);
        l0.b0.p0(this.f6420p);
        u0.c.f17374a.d(this.f6417m);
        w0.e.f17815a.d(this.f6416l);
        u0.c.f17392s.d(this.f6415k);
        u0.c.f17393t.d(this.f6415k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 6) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        e3(iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
    }

    public final void e3(int i2, int i3, int i4, int i5, int i6, int i7) {
        qt.y0(5, i2);
        qt.y0(4, i3);
        qt.y0(3, i4);
        qt.y0(0, i5);
        qt.y0(1, i6);
        qt.y0(2, i7);
        z.k.s(227, 147, 6, i2, i3, i4, i5, i6, i7);
        f6400q = i2;
        int iB = this.f6414j.b(1, 1);
        int i8 = f6400q;
        if (iB != i8) {
            this.f6414j.g(1, i8);
        }
        f6401r = i3;
        int iB2 = this.f6414j.b(2, 1);
        int i9 = f6401r;
        if (iB2 != i9) {
            this.f6414j.g(2, i9);
        }
        f6402s = i4;
        int iB3 = this.f6414j.b(3, 1);
        int i10 = f6402s;
        if (iB3 != i10) {
            this.f6414j.g(3, i10);
        }
        f6403t = i5;
        int iB4 = this.f6414j.b(4, 1);
        int i11 = f6403t;
        if (iB4 != i11) {
            this.f6414j.g(4, i11);
        }
        f6404u = i6;
        int iB5 = this.f6414j.b(5, 1);
        int i12 = f6404u;
        if (iB5 != i12) {
            this.f6414j.g(5, i12);
        }
        f6405v = i7;
        int iB6 = this.f6414j.b(6, 1);
        int i13 = f6405v;
        if (iB6 != i13) {
            this.f6414j.g(6, i13);
        }
    }
}

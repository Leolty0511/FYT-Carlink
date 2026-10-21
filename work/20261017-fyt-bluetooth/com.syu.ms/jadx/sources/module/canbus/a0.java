package module.canbus;

import k0.lt;
import k0.mt;
import k0.nt;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class a0 extends lt {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f13614k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f13615l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f13616m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f13617n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f13618o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f13619p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f13620q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f13621r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f13622s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f13623t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f13624u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f13625v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int[] f13626w = {0, 3, 6, 8, 10, 12, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45};

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int[] f13627x = {0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int[] f13628y = {0, 1, 2, 3, 4, 6, 8, 9, 10, 11, 12, 14, 16, 17, 18, 19, 20};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final o1.f<d> f13629z = new o1.f<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13631c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f13632d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 26}, new int[]{129, 21}, new int[]{130, 54}, new int[]{131, 18}, new int[]{132, 68}, new int[]{133, 67}, new int[]{134, 1}, new int[]{135, 38}, new int[]{136, 5}, new int[]{137, 16}, new int[]{138, 25}, new int[]{139, 2}, new int[]{140, 12}, new int[]{141, 3}, new int[]{142, 4}, new int[]{145, 35}, new int[]{146, 34}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f13633e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f13634f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13635g = 100;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f13636h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13637i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f13638j;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.o();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.t0();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                a0.c3(a0.this);
                if (a0.this.f13638j == 10) {
                    a0.this.f13638j = 0;
                    a0.this.D3();
                }
                if (a0.this.f13635g > 100) {
                    a0.t3(a0.this);
                    if (a0.this.f13637i == a0.this.f13635g / 100) {
                        a0.this.f13637i = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = a0.f13615l = a0.f13626w[0];
                } else {
                    int unused2 = a0.f13615l = a0.f13626w[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (a0.this.f7886a.f8307b == 1 && a0.f13614k != a0.f13615l) {
                    a0.this.F3();
                }
                a0 a0Var = a0.this;
                if (a0Var.f7886a.f8309d == 1) {
                    a0Var.P2(null);
                    if (a0.f13616m != a0.f13619p || a0.f13617n != a0.f13620q || a0.f13618o != a0.f13621r) {
                        int unused3 = a0.f13616m = a0.f13619p;
                        int unused4 = a0.f13617n = a0.f13620q;
                        int unused5 = a0.f13618o = a0.f13621r;
                        a0.this.E3();
                    }
                }
                a0 a0Var2 = a0.this;
                if (a0Var2.f7886a.f8308c == 1) {
                    a0Var2.R2(null);
                    if (a0.f13622s == a0.f13624u && a0.f13623t == a0.f13625v) {
                        return;
                    }
                    int unused6 = a0.f13622s = a0.f13624u;
                    int unused7 = a0.f13623t = a0.f13625v;
                    a0.this.E3();
                }
            }
        }
    }

    public static class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13642a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f13643b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f13644c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f13645d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f13646e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f13647f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f13648g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f13649h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f13650i;

        public d(int i2, int i3) {
            this.f13642a = i2;
            this.f13644c = i3;
        }

        public synchronized void a(int i2, int i3, int i4, int i5, int i6, int i7) {
            this.f13645d = i2;
            this.f13646e = i3;
            this.f13647f = i4;
            this.f13649h = i5;
            this.f13650i = i6;
            this.f13648g = i7;
            if (!this.f13643b) {
                this.f13643b = true;
                o1.k.a().postDelayed(this, this.f13644c);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 133, 6, this.f13645d, this.f13647f, this.f13646e, this.f13649h, this.f13650i, this.f13648g);
            this.f13643b = false;
        }
    }

    public static void C3(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        d dVarC = f13629z.c(i2);
        if (dVarC != null) {
            dVarC.a(i3, i4, i5, i6, i7, i8);
        }
    }

    public static /* synthetic */ int c3(a0 a0Var) {
        int i2 = a0Var.f13638j;
        a0Var.f13638j = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int t3(a0 a0Var) {
        int i2 = a0Var.f13637i;
        a0Var.f13637i = i2 + 1;
        return i2;
    }

    public final void D3() {
        F3();
        E3();
    }

    public final synchronized void E3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        C3(1, f13615l, f13625v, f13624u, f13621r, f13620q, f13619p);
    }

    public final synchronized void F3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = f13614k;
        int i3 = f13615l;
        if (i2 < i3) {
            f13614k = i2 + 1;
            this.f13638j = 0;
        } else if (i2 > i3) {
            f13614k = i2 - 1;
            this.f13638j = 0;
        } else {
            f13614k = i3;
        }
        C3(1, f13614k, f13625v, f13624u, f13621r, f13620q, f13619p);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void P2(int[] iArr) {
        if (nt.a() && this.f7886a.f8309d == 1) {
            int[] iArr2 = f13627x;
            int[] iArr3 = y0.f.f18038c0;
            f13619p = iArr2[o0.a(iArr3[0] >> 1, 0, 10)];
            f13620q = iArr2[o0.a(iArr3[1] >> 1, 0, 10)];
            f13621r = iArr2[o0.a(iArr3[2] >> 1, 0, 10)];
        }
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = f13628y;
            f13624u = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            f13625v = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            y0.g.f18094d.a(this.f13634f, 1);
            y0.g.f18095e.a(this.f13634f, 1);
            w0.e.f17815a.a(this.f13633e, 1);
            u0.c.f17374a.a(this.f13633e, 1);
            u0.c.f17393t.a(this.f13633e, 1);
            u0.c.f17392s.a(this.f13633e, 1);
            l0.b0.b(this.f13633e);
        }
        if (nt.f8637c == 2) {
            mt mtVar = this.f7886a;
            mtVar.f8307b = 1;
            mtVar.f8308c = 1;
            mtVar.f8309d = 1;
            if (nt.a()) {
                init();
                l0.b0.a(this.f13636h);
            }
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        int i4 = 0;
        if (b2 == 1) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f13631c = b3 & 255;
                int i5 = 0;
                while (true) {
                    iArr = this.f13632d;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = this.f13631c;
                    if (i6 == iArr[i5][0]) {
                        if (i6 == 0) {
                            break;
                        }
                        this.f13630b = i5;
                        break;
                    }
                    i5++;
                }
                if ((b4 & 255) != 0) {
                    if (i5 < iArr.length) {
                        l0.b0.l0(iArr[i5][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i5 <= iArr.length) {
                        l0.b0.l0(iArr[this.f13630b][1], 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 3) {
            if (nt.a()) {
                byte b5 = bArr[i2 + 2];
                int i7 = bArr[i2 + 6] & 255;
                int i8 = b5 & 255;
                if (i7 < 82) {
                    i4 = 1;
                } else if (i7 < 82) {
                    i4 = i7;
                }
                if (i4 == 0) {
                    i8 -= 82;
                    if (i8 <= 160) {
                        i8 = ((i8 / 2) * 10) + ((i8 % 2) * 10) + 1000;
                    }
                } else if (i8 >= 2) {
                    i8 = 1000 - (400 - ((((i8 / 2) - 1) * 10) + ((i8 % 2) * 10)));
                }
                u0.d.A3(i8);
                return;
            }
            return;
        }
        if (b2 == 4) {
            if (nt.a()) {
                u0.d.R2(l0.c0.Y0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.Y0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.Y0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.Y0(bArr[i2 + 5] & 255));
                u0.d.D2(l0.c0.Y0(bArr[i2 + 6] & 255));
                u0.d.E2(l0.c0.Y0(bArr[i2 + 7] & 255));
                u0.d.F2(l0.c0.Y0(bArr[i2 + 8] & 255));
                u0.d.G2(l0.c0.Y0(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b2 == 5 && nt.a()) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            int i9 = b6 & 255;
            this.f13631c = i9;
            if (i9 == 16) {
                l0.b0.r0(b7 & 255);
                return;
            }
            if (i9 == 15) {
                l0.b0.s0(b7 & 255);
                return;
            }
            this.f13631c = (b6 | 128) & 255;
            int i10 = 0;
            while (true) {
                iArr2 = this.f13632d;
                if (i10 >= iArr2.length) {
                    break;
                }
                int i11 = this.f13631c;
                if (i11 == iArr2[i10][0]) {
                    if (i11 == 0) {
                        break;
                    }
                    this.f13630b = i10;
                    break;
                }
                i10++;
            }
            if ((b7 & 255) != 0) {
                if (i10 < iArr2.length) {
                    l0.b0.l0(iArr2[i10][1], 0);
                }
            } else if (i10 <= iArr2.length) {
                l0.b0.l0(iArr2[this.f13630b][1], 1);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        y0.g.f18094d.d(this.f13634f);
        y0.g.f18095e.d(this.f13634f);
        w0.e.f17815a.d(this.f13633e);
        u0.c.f17374a.d(this.f13633e);
        u0.c.f17393t.d(this.f13633e);
        u0.c.f17392s.d(this.f13633e);
        l0.b0.p0(this.f13633e);
        l0.b0.o0(this.f13636h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f13615l = f13626w[o0.a(i2, 0, 36)];
        }
    }

    public final void init() {
        f13629z.f(1, new d(1, 100));
    }
}

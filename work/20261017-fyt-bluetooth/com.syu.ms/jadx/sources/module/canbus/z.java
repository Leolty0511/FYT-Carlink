package module.canbus;

import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class z extends lt {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f15016e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f15017f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f15018g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f15019h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f15020i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f15021j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f15022k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f15023l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f15024m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f15025n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f15026o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f15027p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int[] f15028q = {0, 3, 6, 9, 12, 14, 16, 18, 20, 22, 25, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int[] f15029r = {6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int[] f15030s = {6, 7, 8, 9, 11, 12, 13, 15, 16, 17, 19, 20, 21, 23, 24, 25, 26};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final o1.f<b> f15031t = new o1.f<>();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final o1.y f15032u = new o1.y();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f15033b = 200;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f15034c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f15035d = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (z.this.f15033b > 100) {
                    z.e3(z.this);
                    if (z.this.f15035d == z.this.f15033b / 100) {
                        z.this.f15035d = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = z.f15017f = z.f15028q[0];
                } else {
                    int unused2 = z.f15017f = z.f15028q[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (z.this.f7886a.f8307b == 1 && z.f15016e != z.f15017f) {
                    z.this.F3();
                }
                if (z.this.f7886a.f8309d == 1) {
                    if (z.f15018g != z.f15021j) {
                        z.this.B3();
                    }
                    if (z.f15019h != z.f15022k) {
                        z.this.D3();
                    }
                    if (z.f15020i != z.f15023l) {
                        z.this.E3();
                    }
                }
                if (z.this.f7886a.f8308c == 1) {
                    if (z.f15024m != z.f15026o) {
                        z.this.C3();
                    }
                    if (z.f15025n != z.f15027p) {
                        z.this.A3();
                    }
                }
            }
        }
    }

    public static class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15037a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f15038b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f15039c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f15040d;

        public b(int i2, int i3) {
            this.f15037a = i2;
            this.f15040d = i3;
        }

        public synchronized void a(int i2) {
            this.f15038b = i2;
            if (!this.f15039c) {
                this.f15039c = true;
                o1.k.a().postDelayed(this, this.f15040d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 2, 173, this.f15037a, this.f15038b);
            this.f15039c = false;
        }
    }

    public static /* synthetic */ int e3(z zVar) {
        int i2 = zVar.f15035d;
        zVar.f15035d = i2 + 1;
        return i2;
    }

    public static void y3(int i2, int i3) {
        b bVarC = f15031t.c(i2);
        if (bVarC != null) {
            bVarC.a(i3);
        }
    }

    public final synchronized void A3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        y3(2, f15027p);
    }

    public final synchronized void B3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        y3(4, f15021j);
    }

    public final synchronized void C3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        y3(3, f15026o);
    }

    public final synchronized void D3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        y3(8, f15022k);
    }

    public final synchronized void E3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        y3(6, f15023l);
    }

    public final synchronized void F3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = 0;
        int i3 = f15016e;
        int i4 = f15017f;
        if (i3 <= i4) {
            i2 = i4 - i3;
            if (i2 >= 5) {
                i2 = 5;
            }
        } else if (i3 > i4) {
            int i5 = i3 - i4;
            i2 = i5 >= 5 ? 251 : (255 - i5) + 1;
        }
        y3(1, i2);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void P2(int[] iArr) {
        if (nt.a() && this.f7886a.f8309d == 1) {
            int[] iArr2 = f15029r;
            int[] iArr3 = y0.f.f18038c0;
            f15021j = iArr2[o0.a(iArr3[0] >> 1, 0, 10)];
            f15022k = iArr2[o0.a(iArr3[1] >> 1, 0, 10)];
            f15023l = iArr2[o0.a(iArr3[2] >> 1, 0, 10)];
        }
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = f15030s;
            f15026o = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            f15027p = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8307b = 1;
        mtVar.f8308c = 1;
        mtVar.f8309d = 1;
        if (nt.a()) {
            init();
            l0.b0.a(this.f15034c);
            z3();
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2 + 1];
        if (b2 != -90) {
            if (b2 != -16) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        qt.y0(0, (bArr[i2 + 9] >> 0) & 255);
        if (nt.a()) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 5];
            byte b7 = bArr[i2 + 6];
            byte b8 = bArr[i2 + 7];
            f15016e = o0.a(b3 & 255, 0, 45);
            f15024m = o0.a(b5 & 255, 6, 26);
            f15025n = o0.a(b4 & 255, 6, 26);
            f15018g = o0.a(b6 & 255, 6, 26);
            f15019h = o0.a(b7 & 255, 6, 26);
            f15020i = o0.a(b8 & 255, 6, 26);
        }
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            l0.b0.o0(this.f15034c);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 1) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && T2(iArr, 2)) {
            z.k.s(227, 2, 173, iArr[0], iArr[1]);
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f15017f = f15028q[o0.a(i2, 0, 36)];
        }
    }

    public final void init() {
        o1.f<b> fVar = f15031t;
        fVar.f(3, new b(3, 100));
        fVar.f(2, new b(2, 100));
        fVar.f(4, new b(4, 100));
        fVar.f(6, new b(6, 100));
        fVar.f(8, new b(8, 100));
        fVar.f(1, new b(1, 100));
    }

    public final void z3() {
        Z2(y0.f.f18037c);
        P2(null);
        R2(null);
    }
}

package module.canbus;

import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class j extends lt {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f14300h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f14301i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f14302j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f14303k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f14304l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f14305m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f14306n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f14307o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f14308p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f14309q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int[] f14310r = {0, 3, 6, 9, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int[] f14311s = {10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 22};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int[] f14312t = {8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final o1.f<b> f14313u = new o1.f<>();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final o1.y f14314v = new o1.y();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14315b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14316c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f14317d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14318e = 200;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f14319f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f14320g = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (j.this.f14318e > 100) {
                    j.e3(j.this);
                    if (j.this.f14320g == j.this.f14318e / 100) {
                        j.this.f14320g = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = j.f14301i = j.f14310r[0];
                } else {
                    int unused2 = j.f14301i = j.f14310r[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (j.this.f7886a.f8307b == 1 && j.f14300h != j.f14301i) {
                    j.this.C3();
                }
                if (j.this.f7886a.f8309d == 1) {
                    if (j.f14302j != j.f14304l) {
                        j.this.z3();
                    }
                    if (j.f14303k != j.f14305m) {
                        j.this.B3();
                    }
                }
                if (j.this.f7886a.f8308c == 1) {
                    if (j.f14306n != j.f14308p) {
                        j.this.A3();
                    }
                    if (j.f14307o != j.f14309q) {
                        j.this.y3();
                    }
                }
            }
        }
    }

    public static class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14322a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14323b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14324c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14325d;

        public b(int i2, int i3) {
            this.f14322a = i2;
            this.f14325d = i3;
        }

        public synchronized void a(int i2) {
            this.f14323b = i2;
            if (!this.f14324c) {
                this.f14324c = true;
                o1.k.a().postDelayed(this, this.f14325d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 2, 173, this.f14322a, this.f14323b);
            this.f14324c = false;
        }
    }

    public static /* synthetic */ int e3(j jVar) {
        int i2 = jVar.f14320g;
        jVar.f14320g = i2 + 1;
        return i2;
    }

    public static void w3(int i2, int i3) {
        b bVarC = f14313u.c(i2);
        if (bVarC != null) {
            bVarC.a(i3);
        }
    }

    public final synchronized void A3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        w3(3, f14308p);
    }

    public final synchronized void B3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        w3(6, f14305m);
    }

    public final synchronized void C3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        w3(1, f14301i);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        if (nt.f8637c != 1) {
            return;
        }
        y0.f.C0 = 10;
    }

    @Override // k0.lt
    public void P2(int[] iArr) {
        if (nt.a() && this.f7886a.f8309d == 1) {
            int[] iArr2 = f14311s;
            int[] iArr3 = y0.f.f18038c0;
            f14304l = iArr2[o0.a(iArr3[0] >> 1, 0, 10)];
            f14305m = iArr2[o0.a(iArr3[2] >> 1, 0, 10)];
        }
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = f14312t;
            f14308p = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            f14309q = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        if (nt.f8637c != 1) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 0;
            mtVar.f8311f = 0;
            mtVar.f8312g = 0;
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
            mtVar.f8320o = 0;
        } else {
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = new String[]{"com.syu.canbus"};
            mtVar2.f8310e = 0;
            mtVar2.f8311f = 0;
            mtVar2.f8312g = 0;
            mtVar2.f8307b = 1;
            mtVar2.f8308c = 1;
            mtVar2.f8309d = 1;
            mtVar2.f8320o = 0;
            if (nt.a()) {
                init();
                l0.b0.a(this.f14319f);
                x3();
            }
        }
        if (nt.a()) {
            qt.z(l0.g0.f13049e);
            w0.e.f17815a.a(l0.g0.f13049e, 1);
            w0.e.f17819e.a(l0.g0.f13049e, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -90) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                byte b5 = bArr[i2 + 4];
                byte b6 = bArr[i2 + 5];
                byte b7 = bArr[i2 + 7];
                f14300h = o0.a(b3 & 255, 0, 63);
                f14306n = o0.a(b5 & 255, 8, 24);
                f14307o = o0.a(b4 & 255, 8, 24);
                f14302j = o0.a(b6 & 255, 8, 24);
                f14303k = o0.a(b7 & 255, 8, 24);
                return;
            }
            return;
        }
        if (b2 == 114 && nt.a()) {
            this.f14316c = bArr[i2 + 4] & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f14317d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f14316c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f14315b = i4;
                    break;
                }
                i4++;
            }
            if (this.f14316c != 0) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                }
            } else {
                int i6 = this.f14315b;
                if (i6 < iArr.length && i6 != 255) {
                    l0.b0.l0(iArr[i6][1], 1);
                }
                this.f14315b = 255;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(l0.g0.f13049e);
        w0.e.f17815a.d(l0.g0.f13049e);
        w0.e.f17819e.d(l0.g0.f13049e);
        l0.b0.o0(this.f14319f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            v3(129);
        } else if (i2 == 1) {
            v3(130);
        } else {
            if (i2 != 2) {
                return;
            }
            v3(131);
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f14301i = f14310r[o0.a(i2, 0, 36)];
        }
    }

    public final void init() {
        o1.f<b> fVar = f14313u;
        fVar.f(3, new b(3, 100));
        fVar.f(2, new b(2, 100));
        fVar.f(4, new b(4, 100));
        fVar.f(6, new b(6, 100));
        fVar.f(1, new b(1, 100));
    }

    public final void v3(int i2) {
        z.k.s(227, 13, -46, (byte) i2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    }

    public final void x3() {
        Z2(y0.f.f18037c);
        P2(null);
        R2(null);
    }

    public final synchronized void y3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        w3(2, f14309q);
    }

    public final synchronized void z3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        w3(4, f14304l);
    }
}

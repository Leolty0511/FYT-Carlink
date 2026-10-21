package module.canbus;

import android.os.SystemProperties;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class j0 extends lt {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f14326n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f14327o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f14328p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f14329q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f14330r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f14331s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int[] f14332t = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34, 36, 37, 38};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int[] f14333u = {1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 17, 18, 19};

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final o1.f<g> f14334v = new o1.f<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14336c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f14337d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f14338e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f14339f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f14340g = 5;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f14341h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f14342i = new d();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f14343j = 100;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f14344k = new e();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f14345l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f14346m = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.L();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 132, 2, 1, u0.b.f17306a0);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(j0.this.f14342i);
            j0.this.f14340g = (byte) 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j0 j0Var = j0.this;
            byte b2 = (byte) (j0Var.f14340g - 1);
            j0Var.f14340g = b2;
            if (b2 <= 0) {
                l0.b0.p0(j0Var.f14342i);
                j0.this.f14340g = (byte) 5;
                return;
            }
            if (nt.f8637c == 49) {
                z.k.s(227, 132, 5, 10);
                z.k.s(227, 132, 6, 10);
                z.k.s(227, 132, 7, 10);
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (j0.this.f14343j > 100) {
                    j0.h3(j0.this);
                    if (j0.this.f14345l == j0.this.f14343j / 100) {
                        j0.this.f14345l = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = j0.f14327o = j0.f14332t[0];
                } else {
                    int unused2 = j0.f14327o = j0.f14332t[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (j0.this.f7886a.f8307b == 1 && j0.f14326n != j0.f14327o) {
                    j0.this.u3();
                }
                if (j0.this.f7886a.f8308c == 1) {
                    if (j0.f14328p != j0.f14330r) {
                        j0.this.t3();
                    }
                    if (j0.f14329q != j0.f14331s) {
                        j0.this.s3();
                    }
                }
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j0.this.u3();
        }
    }

    public static class g implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14353a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14354b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14355c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14356d;

        public g(int i2, int i3) {
            this.f14353a = i2;
            this.f14356d = i3;
        }

        public synchronized void a(int i2) {
            this.f14354b = i2;
            if (!this.f14355c) {
                this.f14355c = true;
                o1.k.a().postDelayed(this, this.f14356d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 132, 2, this.f14353a, this.f14354b);
            this.f14355c = false;
        }
    }

    public static /* synthetic */ int h3(j0 j0Var) {
        int i2 = j0Var.f14345l;
        j0Var.f14345l = i2 + 1;
        return i2;
    }

    public static void q3(int i2, int i3) {
        g gVarC = f14334v.c(i2);
        if (gVarC != null) {
            gVarC.a(i3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (this.f7886a.f8308c == 1) {
            int[] iArr2 = f14333u;
            f14330r = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            f14331s = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f14341h, 1);
        l0.b0.b(this.f14339f);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        int i2 = nt.f8637c;
        if (i2 == 48) {
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
        } else if (i2 == 49) {
            mtVar.f8307b = 1;
            mtVar.f8308c = 1;
            mtVar.f8309d = 0;
            init();
            l0.b0.a(this.f14344k);
            r3();
            y0.g.f18094d.a(this.f14346m, 1);
        }
        qt.z(this.f14338e);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 23) {
            f14326n = o0.a(bArr[i2 + 3] & 255, 0, 38);
            f14328p = o0.a(bArr[i2 + 4] & 255, 0, 19);
            f14329q = o0.a(bArr[i2 + 5] & 255, 0, 19);
            return;
        }
        if (b2 != 32) {
            if (b2 == 36) {
                byte b3 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b3 >> 7) & 1);
                    qt.y0(2, (b3 >> 6) & 1);
                } else {
                    qt.y0(1, (b3 >> 6) & 1);
                    qt.y0(2, (b3 >> 7) & 1);
                }
                qt.y0(4, (b3 >> 5) & 1);
                qt.y0(3, (b3 >> 4) & 1);
                qt.y0(5, (b3 >> 3) & 1);
                return;
            }
            if (b2 == 41) {
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 1000);
                return;
            }
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            } else {
                if (b2 == 125 && (bArr[i2 + 2] & 255) == 1) {
                    int i4 = i2 + 3;
                    l0.c0.a((bArr[i4] >> 3) & 1, (bArr[i4] >> 4) & 1, 0);
                    o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i4] & 255}, null, null);
                    return;
                }
                return;
            }
        }
        byte b4 = bArr[i2 + 2];
        byte b5 = bArr[i2 + 3];
        this.f14336c = b4 & 255;
        int i5 = 0;
        while (true) {
            iArr = this.f14337d;
            if (i5 >= iArr.length) {
                break;
            }
            int i6 = this.f14336c;
            if (i6 == iArr[i5][0]) {
                if (i6 == 0) {
                    break;
                }
                this.f14335b = i5;
                break;
            }
            i5++;
        }
        if (this.f14336c == 9) {
            if ((b5 & 255) == 1) {
                int i7 = h0.c.E;
                if (i7 == 3 || i7 == 5) {
                    l0.b0.l0(26, 0);
                    l0.b0.l0(26, 1);
                    return;
                } else {
                    l0.b0.l0(18, 0);
                    l0.b0.l0(18, 1);
                    return;
                }
            }
            return;
        }
        int i8 = b5 & 255;
        if (i8 == 1) {
            if (i5 < iArr.length) {
                l0.b0.l0(iArr[i5][1], 0);
            }
        } else if (i8 == 0) {
            int i9 = this.f14335b;
            if (i9 < iArr.length && i9 != 255) {
                l0.b0.l0(iArr[i9][1], 1);
            }
            this.f14335b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f14341h);
        l0.b0.p0(this.f14342i);
        l0.b0.p0(this.f14339f);
        l0.b0.o0(this.f14344k);
        y0.g.f18094d.d(this.f14346m);
        qt.q0(this.f14338e);
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
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (this.f7886a.f8307b == 1) {
            f14327o = f14332t[o0.a(i2, 0, 36)];
        }
    }

    public final void init() {
        o1.f<g> fVar = f14334v;
        fVar.f(3, new g(3, 100));
        fVar.f(4, new g(4, 100));
        fVar.f(2, new g(2, 100));
    }

    public final void r3() {
        Z2(y0.f.f18037c);
        R2(null);
    }

    public final synchronized void s3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        q3(4, f14331s);
    }

    public final synchronized void t3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        q3(3, f14330r);
    }

    public final synchronized void u3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        q3(2, f14327o);
    }
}

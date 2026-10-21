package module.canbus;

import android.net.UrlQuerySanitizer;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class v extends lt {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f14890i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f14891j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f14892k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f14893l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f14894m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f14895n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f14896o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f14897p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f14898q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f14899r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f14900s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int[] f14901t = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 35, 37, 40};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int[] f14902u = {250, 251, i.a.Theme_dialogTitleDecorLayout, 254, 255, 0, 1, 2, 3, 5, 6};

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int[] f14903v = {250, 250, 251, 251, 252, i.a.Theme_dialogTitleDecorLayout, 254, 255, 0, 1, 2, 3, 4, 5, 5, 6, 6};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final o1.f<c> f14904w = new o1.f<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14906c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f14907d = {new int[]{1, 2}, new int[]{2, 67}, new int[]{3, 68}, new int[]{4, 7}, new int[]{5, 8}, new int[]{6, 12}, new int[]{7, 18}, new int[]{8, 26}, new int[]{9, 5}, new int[]{10, 64}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f14908e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14909f = 100;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f14910g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14911h = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.j();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (v.this.f14909f > 100) {
                    v.e3(v.this);
                    if (v.this.f14911h == v.this.f14909f / 100) {
                        v.this.f14911h = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = v.f14891j = v.f14901t[0];
                } else {
                    int unused2 = v.f14891j = v.f14901t[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (v.this.f7886a.f8307b == 1 && v.f14890i != v.f14891j) {
                    v.this.B3();
                }
                if (v.this.f7886a.f8309d == 1) {
                    if (v.f14892k != v.f14894m) {
                        v.this.y3();
                    }
                    if (v.f14893l != v.f14896o) {
                        v.this.A3();
                    }
                }
                if (v.this.f7886a.f8308c == 1) {
                    if (v.f14897p != v.f14899r) {
                        v.this.z3();
                    }
                    if (v.f14898q != v.f14900s) {
                        v.this.x3();
                    }
                }
            }
        }
    }

    public static class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14914a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14915b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14916c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14917d;

        public c(int i2, int i3) {
            this.f14914a = i2;
            this.f14917d = i3;
        }

        public synchronized void a(int i2) {
            this.f14915b = i2;
            if (!this.f14916c) {
                this.f14916c = true;
                o1.k.a().postDelayed(this, this.f14917d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 133, 2, this.f14914a, this.f14915b);
            this.f14916c = false;
        }
    }

    public static /* synthetic */ int e3(v vVar) {
        int i2 = vVar.f14911h;
        vVar.f14911h = i2 + 1;
        return i2;
    }

    public static void v3(int i2, int i3) {
        c cVarC = f14904w.c(i2);
        if (cVarC != null) {
            cVarC.a(i3);
        }
    }

    public final synchronized void A3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        v3(3, f14896o);
    }

    public final synchronized void B3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = f14890i;
        int i3 = f14891j;
        if (i2 < i3) {
            i2++;
        } else if (i2 > i3) {
            i2--;
        }
        v3(1, i2);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void P2(int[] iArr) {
        if (nt.a() && this.f7886a.f8309d == 1) {
            int[] iArr2 = f14902u;
            int[] iArr3 = y0.f.f18038c0;
            f14894m = iArr2[o0.a(iArr3[0] >> 1, 0, 10)];
            f14895n = iArr2[o0.a(iArr3[1] >> 1, 0, 10)];
            f14896o = iArr2[o0.a(iArr3[2] >> 1, 0, 10)];
        }
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = f14903v;
            f14899r = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            f14900s = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            l0.e0.e(1);
            w0.e.f17815a.a(this.f14908e, 1);
            u0.c.f17374a.a(this.f14908e, 1);
            u0.c.f17392s.a(this.f14908e, 1);
            u0.c.f17393t.a(this.f14908e, 1);
            l0.b0.b(this.f14908e);
        }
        int i2 = (nt.f8633a >> 16) & 65535;
        mt mtVar = this.f7886a;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        if (i2 != 2) {
            mtVar.f8310e = 0;
            mtVar.f8311f = 0;
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
            return;
        }
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8314i = 0;
        mtVar.f8307b = 1;
        mtVar.f8308c = 1;
        mtVar.f8309d = 1;
        if (nt.a()) {
            init();
            l0.b0.a(this.f14910g);
            w3();
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 1) {
            if (b2 == 2) {
                int i4 = ((bArr[i2 + 5] << 0) & 255) | ((bArr[i2 + 4] << 8) & 65280);
                u0.d.A3(((32768 & i4) != 0 ? 1000 - i4 : i4 + 1000) & UrlQuerySanitizer.IllegalCharacterValueSanitizer.ALL_OK);
                return;
            }
            if (b2 == 5) {
                int i5 = i2 + 2;
                if ((bArr[i5] & 128) != 0) {
                    qt.m(bArr[i5], 0, 128, true, 40);
                    return;
                } else {
                    qt.j(bArr[i5], 0, 0, 40);
                    return;
                }
            }
            if (b2 == 64 && nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                byte b5 = bArr[i2 + 4];
                byte b6 = bArr[i2 + 5];
                f14897p = o0.a(bArr[i2 + 6] & 255, 0, 14);
                f14898q = o0.a(b6 & 255, 0, 14);
                f14892k = o0.a(b4 & 255, 2, 12);
                f14893l = o0.a(b5 & 255, 2, 12);
                f14890i = o0.a(b3 & 255, 0, 63);
                return;
            }
            return;
        }
        if (nt.a()) {
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            this.f14906c = b7 & 255;
            int i6 = 0;
            while (true) {
                iArr = this.f14907d;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f14906c;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f14905b = i6;
                    break;
                }
                i6++;
            }
            if ((b8 & 255) != 0) {
                if (i6 < iArr.length) {
                    l0.b0.l0(iArr[i6][1], 0);
                }
            } else if (i6 <= iArr.length) {
                l0.b0.l0(iArr[this.f14905b][1], 1);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        l0.e0.e(0);
        w0.e.f17815a.d(this.f14908e);
        w0.e.f17819e.d(this.f14908e);
        u0.c.f17374a.d(this.f14908e);
        u0.c.f17392s.d(this.f14908e);
        u0.c.f17393t.d(this.f14908e);
        l0.b0.p0(this.f14908e);
        l0.b0.o0(this.f14910g);
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
            f14891j = f14901t[o0.a(i2, 0, 36)];
        }
    }

    public final void init() {
        o1.f<c> fVar = f14904w;
        fVar.f(5, new c(5, 100));
        fVar.f(4, new c(4, 100));
        fVar.f(2, new c(2, 100));
        fVar.f(3, new c(3, 100));
        fVar.f(1, new c(1, 100));
    }

    public final void w3() {
        Z2(y0.f.f18037c);
        P2(null);
        R2(null);
    }

    public final synchronized void x3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        v3(4, f14900s);
    }

    public final synchronized void y3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        v3(2, f14894m);
    }

    public final synchronized void z3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        v3(5, f14899r);
    }
}

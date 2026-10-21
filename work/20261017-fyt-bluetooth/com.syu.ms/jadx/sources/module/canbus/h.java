package module.canbus;

import k0.lt;
import k0.mt;
import k0.nt;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class h extends lt {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f14165f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f14166g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f14167h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f14168i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int[] f14169j = {0, 1, 2, 3, 4, 5, 6, 6, 7, 8, 8, 9, 10, 11, 12, 13, 14};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final o1.f<b> f14170k = new o1.f<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14171b = 100;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f14172c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f14173d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14174e;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                h.d3(h.this);
                if (h.this.f14174e == 10) {
                    h.this.f14174e = 0;
                    h.this.r3();
                }
                if (h.this.f14171b > 100) {
                    h.i3(h.this);
                    if (h.this.f14173d == h.this.f14171b / 100) {
                        h.this.f14173d = 0;
                        return;
                    }
                }
                h hVar = h.this;
                if (hVar.f7886a.f8308c == 1) {
                    hVar.R2(null);
                    if (h.f14165f == h.f14167h && h.f14166g == h.f14168i) {
                        return;
                    }
                    int unused = h.f14165f = h.f14167h;
                    int unused2 = h.f14166g = h.f14168i;
                    h.this.s3();
                }
            }
        }
    }

    public static class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14176a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f14177b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14178c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f14179d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f14180e;

        public b(int i2, int i3) {
            this.f14176a = i2;
            this.f14178c = i3;
        }

        public synchronized void a(int i2, int i3) {
            this.f14179d = i2;
            this.f14180e = i3;
            if (!this.f14177b) {
                this.f14177b = true;
                o1.k.a().postDelayed(this, this.f14178c);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 6, 7, this.f14179d, this.f14180e);
            this.f14177b = false;
        }
    }

    public static /* synthetic */ int d3(h hVar) {
        int i2 = hVar.f14174e;
        hVar.f14174e = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int i3(h hVar) {
        int i2 = hVar.f14173d;
        hVar.f14173d = i2 + 1;
        return i2;
    }

    public static void q3(int i2, int i3, int i4) {
        b bVarC = f14170k.c(i2);
        if (bVarC != null) {
            bVarC.a(i3, i4);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        if (nt.f8637c != 2) {
            return;
        }
        y0.f.C0 = 20;
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = f14169j;
            f14167h = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            f14168i = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        if (nt.f8637c != 2) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = null;
            mtVar.f8310e = 0;
            mtVar.f8311f = 0;
            mtVar.f8312g = 1;
            mtVar.f8320o = 0;
            return;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8306a = null;
        mtVar2.f8310e = 0;
        mtVar2.f8311f = 0;
        mtVar2.f8312g = 1;
        mtVar2.f8307b = 0;
        mtVar2.f8308c = 1;
        mtVar2.f8309d = 1;
        mtVar2.f8320o = 0;
        if (nt.a()) {
            a3(0);
            init();
            l0.b0.a(this.f14172c);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        if (bArr[i2 + 1] == 8 && nt.a()) {
            l0.f0.f(bArr[i2 + 2]);
        }
    }

    @Override // k0.lt
    public void W2() {
        l0.b0.o0(this.f14172c);
        a3(0);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public final void a3(int i2) {
        z.k.s(227, 5, 4, i2);
    }

    public final void init() {
        f14170k.f(1, new b(1, 100));
    }

    public final void r3() {
        s3();
    }

    public final synchronized void s3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        q3(1, f14168i, f14167h);
    }
}

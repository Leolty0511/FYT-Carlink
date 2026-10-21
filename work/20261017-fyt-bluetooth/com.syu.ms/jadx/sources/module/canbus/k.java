package module.canbus;

import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class k extends lt {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f14357q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f14358r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f14359s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f14360t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f14361u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f14362v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int[] f14363w = {0, 1, 2, 3, 3, 4, 5, 5, 6, 7, 8, 8, 9, 10, 11, 12, 12, 13, 14, 15, 16, 16, 17, 18, 19, 20, 21, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30};

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int[] f14364x = {6, 7, 8, 9, 10, 12, 14, 15, 16, 17, 18, 20, 22, 23, 24, 25, 26};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final o1.f<e> f14365y = new o1.f<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14367c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f14368d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f14371g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14366b = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14369e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f14370f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14372h = 255;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f14373i = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 12}, new int[]{132, 13}, new int[]{133, 18}, new int[]{134, 26}, new int[]{136, 3}, new int[]{137, 4}, new int[]{138, 2}, new int[]{139, 2}, new int[]{160, 27}, new int[]{161, 28}, new int[]{197, 76}, new int[]{198, 1}, new int[]{199, 18}, new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{6, 6}, new int[]{22, 29}, new int[]{36, 2}, new int[]{40, 18}, new int[]{43, 5}, new int[]{47, 5}, new int[]{53, 25}, new int[]{54, 55}, new int[]{55, 16}, new int[]{56, 39}, new int[]{57, 1}, new int[]{71, 74}, new int[]{72, 75}, new int[]{73, 15}, new int[]{74, 38}, new int[]{75, 21}, new int[]{91, 3}, new int[]{92, 4}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f14374j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f14375k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f14376l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f14377m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f14378n = 200;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f14379o = new d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f14380p = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k.this.u3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(k.this.f14377m);
            k.this.f14375k = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k kVar = k.this;
            int i2 = kVar.f14375k - 1;
            kVar.f14375k = i2;
            if (i2 <= 0) {
                l0.b0.p0(kVar.f14377m);
                k.this.f14375k = 5;
            } else if (u0.b.f17306a0 == 1) {
                z.k.s(227, 2, 36, 32, 9);
                z.k.s(227, 2, 173, 7, 0);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (k.this.f14378n > 100) {
                    k.h3(k.this);
                    if (k.this.f14380p == k.this.f14378n / 100) {
                        k.this.f14380p = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = k.f14358r = k.f14363w[0];
                } else {
                    int unused2 = k.f14358r = k.f14363w[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (k.this.f7886a.f8307b == 1) {
                    int unused3 = k.f14357q;
                    int unused4 = k.f14358r;
                }
                if (k.this.f7886a.f8308c == 1) {
                    if (k.f14359s != k.f14361u) {
                        k.this.t3();
                    }
                    if (k.f14360t != k.f14362v) {
                        k.this.s3();
                    }
                }
            }
        }
    }

    public static class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14385a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14386b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14387c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14388d;

        public e(int i2, int i3) {
            this.f14385a = i2;
            this.f14388d = i3;
        }

        public synchronized void a(int i2) {
            this.f14386b = i2;
            if (!this.f14387c) {
                this.f14387c = true;
                o1.k.a().postDelayed(this, this.f14388d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 2, 173, this.f14385a, this.f14386b);
            this.f14387c = false;
        }
    }

    public static void a3(int i2) {
        int i3 = i2 & 255;
        int i4 = i3 >= 128 ? i3 - 128 : 0;
        int i5 = i4 <= 40 ? 1000 - (400 - (i4 * 10)) : ((i4 * 10) + 1000) - 400;
        if (i5 > 600) {
            u0.d.A3(i5);
        }
    }

    public static /* synthetic */ int h3(k kVar) {
        int i2 = kVar.f14380p;
        kVar.f14380p = i2 + 1;
        return i2;
    }

    public static void q3(int i2, int i3) {
        e eVarC = f14365y.c(i2);
        if (eVarC != null) {
            eVarC.a(i3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = f14364x;
            f14361u = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            f14362v = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        if (((nt.f8633a >> 16) & 65535) != 2) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 0;
            mtVar.f8311f = 0;
            mtVar.f8312g = 1;
            return;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8306a = new String[]{"com.syu.canbus"};
        mtVar2.f8310e = 0;
        mtVar2.f8311f = 0;
        mtVar2.f8312g = 1;
        mtVar2.f8307b = 1;
        mtVar2.f8308c = 1;
        mtVar2.f8309d = 0;
        if (nt.a()) {
            u0.c.f17386m.a(this.f14376l, 1);
            init();
            l0.b0.a(this.f14379o);
            r3();
            y0.g.f18094d.a(this.f14374j, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2 + 1];
        if (b2 == -90) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                byte b5 = bArr[i2 + 4];
                byte b6 = bArr[i2 + 5];
                byte b7 = bArr[i2 + 6];
                byte b8 = bArr[i2 + 7];
                f14357q = o0.a(b3 & 255, 0, 30);
                f14359s = o0.a(b5 & 255, 6, 26);
                f14360t = o0.a(b4 & 255, 6, 26);
                return;
            }
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 17) {
            byte b9 = bArr[i2 + 5];
            this.f14372h = (bArr[i2 + 4] & 255) | 128;
            int i4 = 0;
            while (true) {
                iArr = this.f14373i;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f14372h;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f14371g = i4;
                    break;
                }
                i4++;
            }
            if ((b9 & 255) != 0) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                int i6 = this.f14371g;
                if (i6 < iArr.length && i6 != 255) {
                    l0.b0.l0(iArr[i6][1], 1);
                }
                this.f14371g = 255;
                return;
            }
        }
        if (b2 != 114) {
            if (b2 != 115) {
                return;
            }
            int i7 = i2 + 8;
            byte b10 = bArr[i7];
            if (((nt.f8633a >> 16) & 65535) != 2 || (b10 & 128) == 0) {
                return;
            }
            this.f7886a.f8312g = 1;
            if (nt.a()) {
                a3(bArr[i7] & 255);
                return;
            }
            return;
        }
        if (nt.a()) {
            this.f14368d = bArr[i2 + 4] & 255;
            int i8 = 0;
            while (true) {
                iArr2 = this.f14370f;
                if (i8 >= iArr2.length) {
                    break;
                }
                int i9 = this.f14368d;
                if (i9 == iArr2[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f14367c = i8;
                    break;
                }
                i8++;
            }
            if (this.f14368d != 0) {
                if (i8 < iArr2.length) {
                    l0.b0.l0(iArr2[i8][1], 0);
                }
            } else {
                int i10 = this.f14367c;
                if (i10 < iArr2.length && i10 != 255) {
                    l0.b0.l0(iArr2[i10][1], 1);
                }
                this.f14367c = 255;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        l0.b0.o0(this.f14379o);
        u0.c.f17386m.d(this.f14376l);
        l0.b0.p0(this.f14377m);
        y0.g.f18094d.d(this.f14374j);
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
            f14358r = f14363w[o0.a(i2, 0, 36)];
        }
    }

    public final void init() {
        o1.f<e> fVar = f14365y;
        fVar.f(3, new e(3, 100));
        fVar.f(2, new e(2, 100));
        fVar.f(1, new e(1, 100));
    }

    public final void r3() {
        Z2(y0.f.f18037c);
        P2(null);
        R2(null);
    }

    public final synchronized void s3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        q3(2, f14362v);
    }

    public final synchronized void t3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        q3(3, f14361u);
    }

    public final synchronized void u3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        q3(1, f14358r);
    }
}

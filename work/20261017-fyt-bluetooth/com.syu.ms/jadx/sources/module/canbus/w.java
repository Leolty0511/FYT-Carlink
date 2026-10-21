package module.canbus;

import android.os.SystemProperties;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class w extends lt {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f14918k;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f14921n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f14922o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14925b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14926c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f14927d = {new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{48, 18}, new int[]{49, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f14928e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f14929f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f14930g = new c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14931h = 100;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f14932i = new f();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f14933j = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static Runnable f14919l = new d();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static Runnable f14920m = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int[] f14923p = {0, 3, 6, 9, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final o1.f<g> f14924q = new o1.f<>();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.e0.a();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.e0.j();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w.this.l3();
        }
    }

    public class d implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(w.f14920m);
            w.f14918k = 5;
        }
    }

    public class e implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = w.f14918k - 1;
            w.f14918k = i2;
            if (i2 <= 0) {
                l0.b0.p0(w.f14920m);
                w.f14918k = 5;
            } else if (u0.b.f17306a0 == 1) {
                z.k.s(227, 4, 226, 0);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (w.this.f14931h > 100) {
                    w.e3(w.this);
                    if (w.this.f14933j == w.this.f14931h / 100) {
                        w.this.f14933j = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = w.f14922o = w.f14923p[0];
                } else {
                    int unused2 = w.f14922o = w.f14923p[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (w.this.f7886a.f8307b != 1 || w.f14921n == w.f14922o) {
                    return;
                }
                w.this.l3();
            }
        }
    }

    public static class g implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14938a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14939b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14940c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14941d;

        public g(int i2, int i3) {
            this.f14938a = i2;
            this.f14941d = i3;
        }

        public synchronized void a(int i2) {
            this.f14939b = i2;
            if (!this.f14940c) {
                this.f14940c = true;
                o1.k.a().postDelayed(this, this.f14941d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 5, 132, this.f14938a, this.f14939b);
            this.f14940c = false;
        }
    }

    public static /* synthetic */ int e3(w wVar) {
        int i2 = wVar.f14933j;
        wVar.f14933j = i2 + 1;
        return i2;
    }

    public static void j3(int i2, int i3) {
        g gVarC = f14924q.c(i2);
        if (gVarC != null) {
            gVarC.a(i3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.f14928e);
        o1.y yVar = y0.g.f18094d;
        yVar.a(this.f14929f, 1);
        y0.g.f18095e.a(this.f14929f, 1);
        w0.e.f17815a.a(this.f14928e, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        if (nt.f8637c == 1) {
            mtVar.f8307b = 1;
            if (nt.a()) {
                init();
                l0.b0.a(this.f14932i);
                k3();
                yVar.a(this.f14930g, 1);
            }
        }
        u0.c.f17386m.a(f14919l, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == 18) {
            if (nt.a()) {
                int i4 = bArr[i2 + 2] & 255;
                this.f14926c = i4;
                int i5 = 0;
                while (true) {
                    iArr = this.f14927d;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = this.f14926c;
                    if (i6 == iArr[i5][0]) {
                        if (i6 == 0) {
                            break;
                        }
                        this.f14925b = i5;
                        break;
                    }
                    i5++;
                }
                if (i4 != 0) {
                    if (i5 < iArr.length) {
                        l0.b0.l0(iArr[i5][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i7 = this.f14925b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f14925b = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 51) {
            qt.y0(11, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
            qt.y0(12, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
            qt.y0(13, ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
            qt.y0(14, bArr[i2 + 8] & 255);
            return;
        }
        if (b2 == 36) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            } else {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            }
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(0, (b3 >> 2) & 1);
            return;
        }
        if (b2 == 37) {
            qt.y0(7, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
            qt.y0(8, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
            qt.y0(9, ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
            qt.y0(10, (bArr[i2 + 9] & 255) | ((bArr[i2 + 8] & 255) << 8));
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 49) {
            return;
        }
        qt.y0(15, bArr[i2 + 2] & 255);
        qt.y0(16, bArr[i2 + 3] & 255);
        qt.y0(17, bArr[i2 + 4] & 255);
        qt.y0(18, bArr[i2 + 5] & 255);
        int i8 = i2 + 6;
        qt.y0(19, bArr[i8] & 255);
        int i9 = i2 + 7;
        qt.y0(20, (bArr[i9] >> 0) & 1);
        qt.y0(21, (bArr[i9] >> 7) & 1);
        f14921n = o0.a(bArr[i8] & 255, 0, 63);
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f14928e);
        o1.y yVar = y0.g.f18094d;
        yVar.d(this.f14929f);
        y0.g.f18095e.d(this.f14929f);
        w0.e.f17815a.d(this.f14928e);
        l0.b0.o0(this.f14932i);
        u0.c.f17386m.d(f14919l);
        l0.b0.p0(f14920m);
        yVar.d(this.f14930g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 22) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 5, 132, iArr[0], iArr[1]);
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f14922o = f14923p[o0.a(i2, 0, 36)];
        }
    }

    public final void init() {
        f14924q.f(7, new g(7, 100));
    }

    public final void k3() {
        Z2(y0.f.f18037c);
    }

    public final synchronized void l3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = f14921n;
        int i3 = f14922o;
        if (i2 < i3) {
            i2++;
        } else if (i2 > i3) {
            i2--;
        }
        j3(7, i2);
    }
}

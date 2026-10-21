package y0;

import android.os.SystemClock;
import android.util.Log;
import o1.l;
import o1.o0;
import o1.q0;

/* JADX INFO: loaded from: classes2.dex */
public class c extends y0.e {
    public static final int[] A;
    public static final int[] B;
    public static final int[] C;
    public static boolean D;
    public static Runnable E;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f17974k = new int[20];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final o1.f<j> f17975l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f17976m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int[] f17977n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f17978o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f17979p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f17980q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f17981r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f17982s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f17983t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int[] f17984u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int[] f17985v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int[] f17986w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int[] f17987x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int[] f17988y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int[] f17989z;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public k f17995f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f17990a = {128, 128, 128, 128, 128, 128, 128, 128, 128, 131, 134, 137, 140, 143, 146, 149, 255};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f17991b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f17992c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f17993d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f17994e = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f17996g = new d();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f17997h = new e();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f17998i = new h();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f17999j = new i();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 != 0) {
                c.this.k();
            } else {
                c.x(32, 255);
                c.x(48, 255);
            }
        }
    }

    public class b implements Runnable {

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                q0.y(0);
                y0.h.M();
            }
        }

        public b() {
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0034 A[Catch: all -> 0x00b7, PHI: r2
  0x0034: PHI (r2v5 int) = (r2v4 int), (r2v11 int) binds: [B:12:0x0031, B:9:0x0029] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {, blocks: (B:3:0x0001, B:28:0x0070, B:31:0x0077, B:33:0x007d, B:35:0x0092, B:34:0x008d, B:6:0x001c, B:8:0x0024, B:14:0x0034, B:17:0x003e, B:20:0x0051, B:23:0x005b, B:26:0x0065, B:11:0x002c), top: B:41:0x0001 }] */
        /* JADX WARN: Code duplicated, block: B:16:0x003d  */
        /* JADX WARN: Code duplicated, block: B:17:0x003e A[Catch: all -> 0x00b7, TryCatch #0 {, blocks: (B:3:0x0001, B:28:0x0070, B:31:0x0077, B:33:0x007d, B:35:0x0092, B:34:0x008d, B:6:0x001c, B:8:0x0024, B:14:0x0034, B:17:0x003e, B:20:0x0051, B:23:0x005b, B:26:0x0065, B:11:0x002c), top: B:41:0x0001 }] */
        @Override // java.lang.Runnable
        public synchronized void run() {
            c.this.f17992c = false;
            q0.y(1);
            z.k.m(254, 129);
            int iM = z.k.m(1, 231) + 0;
            if (iM >= 0) {
                if (y0.f.Y0) {
                    iM += z.k.m(2, 3);
                    if (iM >= 0) {
                        iM += z.k.m(3, 25);
                        if (iM < 0) {
                            z.k.m(144, 48);
                            iM += z.k.m(65, 16);
                            if (iM >= 0 && (iM = iM + z.k.m(68, 17)) >= 0 && (iM = iM + z.k.m(71, 1)) >= 0) {
                                iM += z.k.m(117, 96);
                            }
                        }
                    }
                } else {
                    iM += z.k.m(2, 17);
                    if (iM >= 0) {
                        iM += z.k.m(3, 25);
                        if (iM < 0) {
                            z.k.m(144, 48);
                            iM += z.k.m(65, 16);
                            if (iM >= 0) {
                                iM += z.k.m(117, 96);
                            }
                        }
                    }
                }
            }
            if (iM < 0) {
                c.this.k();
                return;
            }
            if (y0.f.Y0) {
                c.x(44, y0.b.f17957g[o0.a(y0.f.V0, 0, 10)]);
            } else {
                c.x(44, 255);
            }
            c.this.a(u0.b.D);
            y0.h.M();
            c.this.g(null);
            c.this.j(null);
            l.a().postDelayed(new a(), 200L);
        }
    }

    /* JADX INFO: renamed from: y0.c$c, reason: collision with other inner class name */
    public class RunnableC0130c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.Q0 != 0) {
                boolean unused = c.D = true;
            } else {
                boolean unused2 = c.D = false;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 8 || i2 == 9 || i2 == 10 || (i2 == 1 && w0.d.f17789a == 3)) {
                a.f.f().abandonAudioFocus(null);
            } else {
                a.f.f().requestAudioFocus(null, 3, 2);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.j(null);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.j4 != 0 || c.D) {
                return;
            }
            a.c.p(a.c.q());
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.x(43, c.this.f17990a[8]);
            c.x(42, c.this.f17990a[8]);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.c.p(0);
            if (!c.D && u0.b.j4 == 0 && h0.c.G == 0) {
                return;
            }
            c.x(43, 255);
            c.x(42, 255);
            c.x(41, c.this.f17990a[8]);
            c.x(40, c.this.f17990a[8]);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.D || u0.b.j4 != 0) {
                return;
            }
            c.x(41, 255);
            c.x(40, 255);
            c.x(43, c.this.f17990a[8]);
            c.x(42, c.this.f17990a[8]);
        }
    }

    public static class j implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f18009a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f18010b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f18011c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f18012d;

        public j(int i2, int i3) {
            this.f18009a = i2;
            this.f18012d = i3;
        }

        public synchronized void a(int i2) {
            this.f18010b = i2;
            if (!this.f18011c) {
                this.f18011c = true;
                o1.k.a().postDelayed(this, this.f18012d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            this.f18011c = false;
            if (z.k.m(this.f18009a, this.f18010b) < 0) {
                this.f18011c = true;
                o1.k.a().postDelayed(this, this.f18012d);
            }
        }
    }

    public class k extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f18013a = true;

        public k() {
            setName("SpectrumThread");
            start();
        }

        public void a() {
            this.f18013a = false;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            int[] iArr = new int[14];
            while (true) {
                for (int i2 = 0; i2 < 14; i2++) {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    if (u0.b.n4 == 0 || y0.f.U == 0) {
                        iArr[i2] = 0;
                    } else {
                        iArr[i2] = z.a.f18172w.b();
                    }
                    a.i.a0(45 - (SystemClock.uptimeMillis() - jUptimeMillis));
                    if (!this.f18013a) {
                        return;
                    }
                }
                y0.h.j0(iArr);
            }
        }
    }

    static {
        o1.f<j> fVar = new o1.f<>();
        f17975l = fVar;
        f17976m = new int[37];
        f17977n = new int[52];
        f17981r = 5;
        f17983t = 5;
        f17984u = new int[]{138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        f17985v = new int[]{10, 10, 10};
        f17986w = new int[]{16, 10, 16};
        f17987x = new int[]{16, 14, 16};
        f17988y = new int[]{14, 14, 8};
        f17989z = new int[]{14, 14, 12};
        A = new int[]{10, 14, 14};
        B = new int[]{10, 14, 12};
        C = new int[]{14, 12, 10};
        fVar.f(5, new j(5, 100));
        fVar.f(6, new j(6, 100));
        fVar.f(32, new j(32, 100));
        fVar.f(41, new j(41, 100));
        fVar.f(40, new j(40, 100));
        fVar.f(43, new j(43, 100));
        fVar.f(42, new j(42, 100));
        fVar.f(44, new j(44, 100));
        fVar.f(48, new j(48, 100));
        fVar.f(81, new j(81, 100));
        fVar.f(84, new j(84, 100));
        fVar.f(87, new j(87, 100));
        t();
        u();
        D = false;
        E = new RunnableC0130c();
    }

    public static void t() {
        int[] iArr = f17974k;
        iArr[0] = 11;
        iArr[1] = 0;
        iArr[2] = 11;
        iArr[3] = 11;
        iArr[4] = 3;
        iArr[5] = 2;
        iArr[6] = 1;
        iArr[7] = 10;
        iArr[8] = 11;
        iArr[9] = 11;
        iArr[10] = 11;
        iArr[11] = 2;
        iArr[12] = 2;
        iArr[13] = 2;
        iArr[14] = 3;
        iArr[15] = 11;
        iArr[16] = 11;
    }

    public static void u() {
        int[] iArr = {128, 54, 50, 46, 42, 38, 34, 32, 30, 28, 27, 25, 23, 21, 20, 19, 18, 17, 16, 15, 14, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1, -2, -3};
        f17976m[0] = 255;
        for (int i2 = 1; i2 <= 36; i2++) {
            f17976m[i2] = iArr[i2] + 128;
        }
        int[] iArr2 = {128, 38, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1, -2, -3, -4, -5, -6, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7};
        f17977n[0] = 255;
        for (int i3 = 1; i3 <= 51; i3++) {
            f17977n[i3] = iArr2[i3] + 128;
        }
    }

    public static int w(int i2, int i3) {
        if ((i2 & 128) != 0) {
            i2 = -(i2 & 127);
        }
        int i4 = i2 + i3;
        if (i4 < -20) {
            i4 = -20;
        } else if (i4 > 20) {
            i4 = 20;
        }
        return i4 < 0 ? ((-i4) & 127) | 128 : i4;
    }

    public static void x(int i2, int i3) {
        j jVarC = f17975l.c(i2);
        if (jVarC != null) {
            jVarC.a(i3);
        }
    }

    @Override // y0.e
    public void a(int i2) {
        if (h0.c.G == 1) {
            i2 = 2;
        }
        int i3 = u0.b.E;
        if (i3 >= 0) {
            i2 = i3;
        }
        x(5, f17974k[i2]);
        int i4 = y0.f.f18090z0[i2];
        if (i4 < 0 || i4 >= 48) {
            return;
        }
        m(i4, y0.f.f18084w0[i4]);
    }

    @Override // y0.e
    public void e() {
        k();
        k kVar = this.f17995f;
        if (kVar != null) {
            kVar.a();
        }
        this.f17995f = new k();
        u0.c.f17374a.a(this.f17996g, 1);
        h0.d.f2463b.a(this.f17997h, 1);
        y0.g.f18110t.a(E, 1);
        u0.c.f17386m.a(this.f17991b, 1);
    }

    @Override // y0.e
    public void f() {
        this.f17995f.a();
        u0.c.f17374a.d(this.f17996g);
        h0.d.f2463b.d(this.f17997h);
        y0.g.f18110t.d(E);
    }

    @Override // y0.e
    public void g(int[] iArr) {
        if (iArr == null) {
            v(0);
            v(1);
            v(2);
        } else {
            for (int i2 = 1; i2 <= iArr[0]; i2++) {
                v(iArr[i2]);
            }
        }
    }

    @Override // y0.e
    public void h(int i2) {
        int[] iArr;
        switch (i2) {
            case 0:
                iArr = y0.f.f18041d0;
                break;
            case 1:
                iArr = f17985v;
                break;
            case 2:
                iArr = f17986w;
                break;
            case 3:
                iArr = f17987x;
                break;
            case 4:
                iArr = f17988y;
                break;
            case 5:
                iArr = f17989z;
                break;
            case 6:
                iArr = A;
                break;
            case 7:
                iArr = B;
                break;
            case 8:
                iArr = C;
                break;
            default:
                iArr = null;
                break;
        }
        y0.h.G(iArr, null, null, 3);
    }

    @Override // y0.e
    public void i() {
        for (int i2 = 0; i2 < 3; i2++) {
            y0.f.N0[i2] = y0.f.f18047f0 >> 1;
        }
    }

    @Override // y0.e
    public void j(int[] iArr) {
        if (u0.b.f17306a0 != 0) {
            p();
        }
    }

    @Override // y0.e
    public void k() {
        if (this.f17992c) {
            return;
        }
        synchronized (this.f17994e) {
            if (!this.f17992c) {
                this.f17992c = true;
                o1.k.a().postDelayed(this.f17994e, 100L);
            }
        }
    }

    @Override // y0.e
    public void l(int i2) {
        y0.f.f18034b.g(new int[]{2, 0, 2});
    }

    @Override // y0.e
    public void m(int i2, int i3) {
        int i4;
        if (i2 < 0 || i2 >= 48 || (i4 = u0.b.D) < 0 || i4 >= 20) {
            return;
        }
        if (y0.f.f18090z0[i4] == i2 || i2 == 7) {
            x(6, o0.a(i3, 0, 20));
        }
    }

    @Override // y0.e
    public void n(int i2) {
    }

    @Override // y0.e
    public void o(int i2) {
        x(44, y0.b.f17957g[o0.a(y0.f.V0, 0, 10)]);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003f  */
    @Override // y0.e
    public void p() {
        boolean z2;
        int i2;
        int i3;
        boolean z3;
        int i4 = h0.c.G;
        if (h0.c.f2448m0) {
            i4 = 1;
        }
        int i5 = y0.f.C0;
        if ((y0.f.K0 != 0 && i4 == 0) || m0.b.f13173f == 1) {
            x(32, 255);
            x(48, 255);
            if (u0.b.V3) {
                q0.y(1);
                return;
            }
            return;
        }
        int i6 = u0.b.D;
        if (i6 < 0 || i6 >= 20) {
            z2 = false;
        } else {
            int[] iArr = f17974k;
            if (iArr[i6] == iArr[8]) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        if (u0.b.f17347o != 0 || u0.b.Z != 0) {
            int i7 = y0.f.R;
            if (y0.f.f18085x == 0) {
                int i8 = i5 * i7;
                int i9 = y0.f.S;
                i5 = (i8 + (i9 >> 1)) / i9;
            } else {
                i5 = 0;
            }
        }
        if (i4 != 0) {
            int i10 = y0.f.C0;
            i5 = y0.f.J0;
            if (i10 >= i5) {
                i5 = i10;
            }
            x(43, 255);
            x(42, 255);
            a.c.l(0);
            a.c.p(0);
            if (g.e.a() == 4 || g.e.a() == 5 || g.e.a() == 7) {
                int iW = a.c.w();
                int iG = h0.c.f2424a0 * a.c.g();
                int i11 = h0.c.f2426b0;
                a.c.v(iW);
                a.c.f((iG + (i11 >> 1)) / i11);
            } else {
                a.c.f(a.c.g());
            }
            o1.k.a().postDelayed(this.f17998i, 300L);
            i2 = i6;
            i3 = 255;
            z3 = false;
            z2 = z2;
        } else {
            if (i5 == 0) {
                x(32, 255);
                x(48, 255);
                return;
            }
            if (y0.f.Q0 == 0 || u0.b.j4 != 0) {
                i2 = i6;
                if (i2 == 3 && u0.b.j4 == 0) {
                    x(41, 255);
                    x(40, 255);
                    a.c.p(0);
                    a.c.l(0);
                    a.c.f(a.c.g());
                    synchronized (this.f17999j) {
                        l.a().postDelayed(this.f17999j, 500L);
                    }
                } else if (i2 == 8 || i2 == 9 || i2 == 10 || (i2 == 1 && w0.d.f17789a == 3)) {
                    x(41, 255);
                    x(40, 255);
                    a.c.l(0);
                    a.c.f(0);
                    if (u0.b.j4 == 0 && !D) {
                        synchronized (this.f17999j) {
                            l.a().postDelayed(this.f17999j, 500L);
                        }
                        if (i2 == 1 && w0.d.f17789a == 3) {
                            a.c.i(a.c.j());
                        }
                        l.a().postDelayed(new f(), 500L);
                    }
                } else if (i2 == 16) {
                    if (u0.b.j4 == 0 && !D) {
                        x(41, 255);
                        x(40, 255);
                        a.c.l(0);
                        synchronized (this.f17999j) {
                            l.a().postDelayed(this.f17999j, 200L);
                        }
                    }
                    a.c.p(a.c.q());
                    a.c.f(a.c.g());
                } else if (u0.b.j4 == 0) {
                    x(40, 255);
                    x(41, 255);
                    a.c.p(0);
                    a.c.l(0);
                    a.c.f(0);
                    if (i2 == 1 && w0.d.f17789a == 3) {
                        a.c.i(0);
                    }
                    o1.k.a().postDelayed(new g(), 100L);
                }
                i3 = 255;
                z3 = false;
            } else {
                x(43, 255);
                x(42, 255);
                a.c.f(0);
                a.c.p(0);
                a.c.i(0);
                a.c.l(a.c.m());
                x(32, i5);
                int[] iArr2 = y0.f.f18084w0;
                int i12 = iArr2[7] * 15;
                int[] iArr3 = y0.f.f18088y0;
                int i13 = (i12 / iArr3[7]) + i5;
                int[] iArr4 = f17977n;
                i3 = iArr4[i13];
                if ((g.e.a() == 5 || g.e.a() == 7) && z2) {
                    x(48, 255);
                } else {
                    x(48, i3);
                }
                i2 = i6;
                if (i2 == 5 || i2 == 13) {
                    i3 = iArr4[((iArr2[7] * 15) / iArr3[7]) + i5];
                    x(48, i3);
                    x(32, 255);
                    z3 = true;
                } else {
                    z3 = false;
                }
                synchronized (this.f17998i) {
                    o1.k.a().postDelayed(this.f17998i, 200L);
                }
            }
            if (y0.f.R0 != 0) {
                if (!z2) {
                    i3 = f17977n[((y0.f.f18084w0[7] * 15) / y0.f.f18088y0[7]) + i5];
                }
                a.c.p(a.c.q());
                a.c.l(a.c.m());
            }
            if (u0.b.j4 != 0) {
                x(43, 255);
                x(42, 255);
                if (i3 == 255) {
                    i3 = f17977n[((y0.f.f18084w0[7] * 15) / y0.f.f18088y0[7]) + i5];
                }
                a.c.f(0);
                a.c.l(0);
                a.c.p(0);
                if (i2 == 1 && w0.d.f17789a == 3) {
                    a.c.i(0);
                }
                a.c.v(a.c.w());
                synchronized (this.f17998i) {
                    o1.k.a().postDelayed(this.f17998i, 100L);
                }
            }
            if (y0.f.f18069p > 0) {
                a.c.p(0);
            }
        }
        if (z2 && y0.f.P0 == 0 && h0.c.G == 0 && u0.b.j4 == 0 && a.b.f18f0 == 0 && u0.b.E == -1 && i2 != 15 && i2 != 2 && i2 != 16 && i2 != 1) {
            if (u0.b.V3) {
                q0.y(1);
            }
            x(32, 255);
            x(48, 255);
        } else {
            if (u0.b.V3) {
                q0.y(y0.f.f18055i);
            }
            if (z3) {
                x(32, f17976m[0]);
            } else {
                int i14 = f17976m[o0.a(i5, 0, 36)];
                if (i14 < 113) {
                    i14 = 113;
                }
                x(32, i14);
            }
            if ((g.e.a() == 5 || g.e.a() == 7) && z2) {
                x(48, 255);
            } else {
                x(48, i3);
            }
        }
        if (y0.b.f17951a) {
            a.f.p().s("vaState = " + u0.b.j4 + " " + a.c.c() + " mutePlayer " + a.c.b());
            Log.d("sound", "vaState = " + u0.b.j4 + " " + a.c.c() + " mutePlayer " + a.c.b());
        }
    }

    public final void v(int i2) {
        if (i2 == 0) {
            x(81, w(f17984u[o0.a(y0.f.N0[0], 0, 20)], y0.f.E == 0 ? f17978o : f17981r));
        } else if (i2 == 1) {
            x(84, w(f17984u[o0.a(y0.f.N0[1], 0, 20)], y0.f.E == 0 ? f17979p : f17982s));
        } else {
            if (i2 != 2) {
                return;
            }
            x(87, w(f17984u[o0.a(y0.f.N0[2], 0, 20)], y0.f.E == 0 ? f17980q : f17983t));
        }
    }
}

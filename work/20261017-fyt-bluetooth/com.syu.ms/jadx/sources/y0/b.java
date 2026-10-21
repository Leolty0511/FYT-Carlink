package y0;

import o1.n;

/* JADX INFO: loaded from: classes2.dex */
public class b extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f17951a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f17952b = new int[20];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final o1.f<a> f17953c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f17954d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f17955e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f17956f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[] f17957g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f17958h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f17959i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int[] f17960j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f17961k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int[] f17962l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f17963m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int[] f17964n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int[] f17965o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int[] f17966p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int[] f17967q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int[] f17968r;

    public static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f17969a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f17970b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f17972d;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f17971c = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f17973e = 0;

        public a(int i2, int i3) {
            this.f17969a = i2;
            this.f17972d = i3;
        }

        /* JADX WARN: Code duplicated, block: B:9:0x0024 A[Catch: all -> 0x0028, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000e, B:8:0x0017, B:9:0x0024), top: B:15:0x0002 }] */
        @Override // java.lang.Runnable
        public synchronized void run() {
            this.f17971c = false;
            if (z.k.m(this.f17969a, this.f17970b) < 0) {
                int i2 = this.f17973e + 1;
                this.f17973e = i2;
                if (i2 < 5) {
                    this.f17971c = true;
                    o1.k.a().postDelayed(this, this.f17972d);
                } else {
                    this.f17973e = 0;
                }
            } else {
                this.f17973e = 0;
            }
        }
    }

    static {
        o1.f<a> fVar = new o1.f<>();
        f17953c = fVar;
        f17954d = new int[37];
        f17955e = new int[52];
        f17956f = new int[]{128, 128, 128, 128, 128, 128, 128, 128, 128, 131, 134, 137, 140, 143, 146, 149, 255};
        f17957g = new int[]{255, 153, 148, 145, 143, 140, 138, 136, 134, 132, 130};
        f17958h = 4;
        f17959i = 5;
        f17960j = new int[]{138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        f17961k = new int[]{10, 10, 10};
        f17962l = new int[]{16, 10, 16};
        f17963m = new int[]{16, 14, 16};
        f17964n = new int[]{14, 14, 8};
        f17965o = new int[]{14, 14, 12};
        f17966p = new int[]{10, 14, 14};
        f17967q = new int[]{10, 14, 12};
        f17968r = new int[]{14, 12, 10};
        fVar.f(5, new a(5, 100));
        fVar.f(6, new a(6, 100));
        fVar.f(32, new a(32, 100));
        fVar.f(41, new a(41, 100));
        fVar.f(40, new a(40, 100));
        fVar.f(43, new a(43, 100));
        fVar.f(42, new a(42, 100));
        fVar.f(44, new a(44, 100));
        fVar.f(48, new a(48, 100));
        fVar.f(81, new a(81, 100));
        fVar.f(84, new a(84, 100));
        fVar.f(87, new a(87, 100));
        q();
        w();
    }

    public static void q() {
        int[] iArr = f17952b;
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

    public static void r() {
        int[] iArr = f17952b;
        iArr[1] = 2;
        iArr[5] = 10;
        iArr[8] = 3;
        iArr[9] = 3;
        iArr[10] = 3;
        iArr[3] = 3;
        iArr[2] = 3;
    }

    public static void s() {
        f17952b[7] = 1;
    }

    public static void t() {
        f17952b[7] = 3;
    }

    public static void u() {
        f17952b[7] = 3;
    }

    public static void v() {
        f17952b[7] = 1;
    }

    public static void w() {
        int[] iArr = {128, 54, 50, 46, 42, 38, 34, 32, 30, 28, 27, 25, 23, 21, 20, 19, 18, 17, 16, 15, 14, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1, -2, -3};
        f17954d[0] = 255;
        for (int i2 = 1; i2 <= 36; i2++) {
            f17954d[i2] = iArr[i2] + 128;
        }
        int[] iArr2 = {128, 38, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1, -2, -3, -4, -5, -6, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7};
        f17955e[0] = 255;
        for (int i3 = 1; i3 <= 51; i3++) {
            f17955e[i3] = iArr2[i3] + 128;
        }
    }

    public static void x() {
        n nVar = z.a.f18171v;
        nVar.h(z.a.f18150a, 32, 255);
        nVar.h(z.a.f18150a, 48, 255);
    }
}

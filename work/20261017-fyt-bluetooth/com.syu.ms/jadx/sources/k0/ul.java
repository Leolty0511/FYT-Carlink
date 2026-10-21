package k0;

/* JADX INFO: loaded from: classes2.dex */
public class ul extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11107b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f11108c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f11109d = new b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f11110e = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ul.this.f11109d);
            ul.this.f11107b = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ul ulVar = ul.this;
            int i2 = ulVar.f11107b - 1;
            ulVar.f11107b = i2;
            if (i2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(ulVar.f11109d);
                ul.this.f11107b = 5;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 5) {
                z.k.s(227, 139, 2, 1, 1);
                z.k.s(227, 139, 2, 2, 1);
            } else {
                z.k.s(227, 139, 2, 1, 0);
                z.k.s(227, 139, 2, 2, 0);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8314i = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f11110e, 1);
        u0.c.f17374a.a(this.f11110e, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        } else {
            if (b2 != 106) {
                return;
            }
            int i4 = i2 + 2;
            qt.y0(1, (bArr[i4] >> 0) & 1);
            qt.y0(2, (bArr[i4] >> 1) & 1);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17374a.d(this.f11110e);
        u0.c.f17386m.d(this.f11110e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 3) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 139, 2, iArr[0], iArr[1]);
        }
    }
}

package k0;

/* JADX INFO: loaded from: classes2.dex */
public class oa extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8769c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8770d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f8771e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f8772f = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.h();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.C0();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            y0.g.f18094d.a(this.f8772f, 1);
            y0.g.f18095e.a(this.f8772f, 1);
            w0.e.f17815a.a(this.f8771e, 1);
            u0.c.f17374a.a(this.f8771e, 1);
            u0.c.f17392s.a(this.f8771e, 1);
            u0.c.f17393t.a(this.f8771e, 1);
            l0.b0.b(this.f8771e);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        if (bArr[i2] == 1 && nt.a()) {
            byte b2 = bArr[i2 + 2];
            byte b3 = bArr[i2 + 3];
            this.f8769c = b2 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f8770d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f8769c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f8768b = i4;
                    break;
                }
                i4++;
            }
            if ((b3 & 255) != 0) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                }
            } else if (i4 <= iArr.length) {
                l0.b0.l0(iArr[this.f8768b][1], 1);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            y0.g.f18094d.d(this.f8772f);
            y0.g.f18095e.d(this.f8772f);
            w0.e.f17815a.d(this.f8771e);
            w0.e.f17819e.d(this.f8771e);
            u0.c.f17374a.d(this.f8771e);
            u0.c.f17392s.d(this.f8771e);
            u0.c.f17393t.d(this.f8771e);
            l0.b0.p0(this.f8771e);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}

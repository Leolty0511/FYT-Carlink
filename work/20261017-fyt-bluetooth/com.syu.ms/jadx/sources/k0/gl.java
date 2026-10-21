package k0;

/* JADX INFO: loaded from: classes2.dex */
public class gl extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5595c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5596d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{15, 29}, new int[]{16, 6}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f5597e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5598f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5599g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f5600h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f5601i = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o != 1) {
                gl.this.Y2(1009, 0);
                return;
            }
            gl glVar = gl.this;
            if (glVar.f5598f != 0) {
                glVar.Y2(1009, 2);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(gl.this.f5601i);
            gl glVar = gl.this;
            glVar.f5599g = 5;
            glVar.f5598f = 0;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            gl glVar = gl.this;
            int i2 = glVar.f5599g - 1;
            glVar.f5599g = i2;
            if (i2 > 0) {
                int i3 = u0.b.f17306a0;
            } else {
                l0.b0.p0(glVar.f5601i);
                gl.this.f5599g = 5;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f5600h, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
        mtVar.f8320o = 0;
        u0.c.f17379f.a(this.f5597e, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 17) {
            return;
        }
        byte b3 = bArr[i2 + 4];
        byte b4 = bArr[i2 + 5];
        this.f5595c = b3 & 255;
        int i4 = 0;
        while (true) {
            iArr = this.f5596d;
            if (i4 >= iArr.length) {
                break;
            }
            int i5 = this.f5595c;
            if (i5 == iArr[i4][0]) {
                if (i5 == 0) {
                    break;
                }
                this.f5594b = i4;
                break;
            }
            i4++;
        }
        int i6 = b4 & 255;
        if (i6 == 1) {
            if (i4 < iArr.length) {
                l0.b0.l0(iArr[i4][1], 0);
            }
        } else if (i6 == 0) {
            int i7 = this.f5594b;
            if (i7 < iArr.length && i7 != 255) {
                l0.b0.l0(iArr[i7][1], 1);
            }
            this.f5594b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f5600h);
        l0.b0.p0(this.f5601i);
        u0.c.f17379f.d(this.f5597e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            this.f5598f = iArr[0];
            z.k.s(227, 2, -3, iArr[0], iArr[1]);
        } else if (i2 == 1003 && iArr != null && iArr.length > 0 && u0.b.f17347o == 1) {
            z.k.s(227, 2, -3, this.f5598f, 0);
        }
    }
}

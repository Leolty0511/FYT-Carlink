package k0;

/* JADX INFO: loaded from: classes2.dex */
public class c8 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3920c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3921d = {new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{48, 18}, new int[]{49, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f3922e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f3923f = new b();

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

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        if (nt.a()) {
            qt.z(this.f3922e);
            y0.g.f18094d.a(this.f3923f, 1);
            y0.g.f18095e.a(this.f3923f, 1);
            w0.e.f17815a.a(this.f3922e, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == 16) {
            if (nt.a()) {
                l0.f0.b(bArr[i2 + 2], bArr[i2 + 4], bArr[i2 + 5]);
                return;
            }
            return;
        }
        if (b2 == 41) {
            qt.m(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, 7744, false, 5680);
            return;
        }
        if (b2 == 50) {
            if (nt.a()) {
                int i4 = bArr[i2 + 2] & 255;
                int i5 = bArr[i2 + 3] & 255;
                u0.d.R2(l0.e0.o(bArr[i2 + 4], i4, i5));
                u0.d.S2(l0.e0.o(bArr[i2 + 5], i4, i5));
                u0.d.T2(l0.e0.o(bArr[i2 + 6], i4, i5));
                u0.d.U2(l0.e0.o(bArr[i2 + 7], i4, i5));
                return;
            }
            return;
        }
        if (b2 == 18) {
            if (nt.a()) {
                int i6 = bArr[i2 + 2] & 255;
                this.f3920c = i6;
                int i7 = 0;
                while (true) {
                    iArr = this.f3921d;
                    if (i7 >= iArr.length) {
                        break;
                    }
                    int i8 = this.f3920c;
                    if (i8 == iArr[i7][0]) {
                        if (i8 == 0) {
                            break;
                        }
                        this.f3919b = i7;
                        break;
                    }
                    i7++;
                }
                if (i6 != 0) {
                    if (i7 < iArr.length) {
                        l0.b0.l0(iArr[i7][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i7 <= iArr.length) {
                        l0.b0.l0(iArr[this.f3919b][1], 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 != 19) {
            return;
        }
        int i9 = bArr[i2 + 2] & 255;
        int i10 = bArr[i2 + 5] & 255 & 15;
        if (i9 == 0) {
            qt.y0(27, -2);
        } else if (i9 == 254) {
            qt.y0(27, -1);
        } else if (i9 == 255) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i9);
            qt.y0(55, i10);
        }
        int i11 = bArr[i2 + 3] & 255;
        qt.y0(12, (i11 >> 7) & 1);
        qt.y0(65, (i11 >> 6) & 1);
        qt.y0(16, (i11 >> 5) & 1);
        qt.y0(20, (i11 >> 4) & 1);
        qt.y0(19, (i11 >> 3) & 1);
        qt.y0(13, (i11 >> 2) & 1);
        qt.y0(52, (i11 >> 1) & 1);
        qt.y0(11, (i11 >> 0) & 1);
        qt.y0(21, bArr[i2 + 4] & 255 & 15);
        if (nt.a()) {
            l0.f0.g(bArr[i2 + 7]);
        }
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            qt.q0(this.f3922e);
            y0.g.f18094d.d(this.f3923f);
            y0.g.f18095e.d(this.f3923f);
            w0.e.f17815a.d(this.f3922e);
        }
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
    }
}

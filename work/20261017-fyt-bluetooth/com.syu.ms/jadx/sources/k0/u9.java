package k0;

/* JADX INFO: loaded from: classes2.dex */
public class u9 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10967c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10968d = {new int[]{1, 1}, new int[]{2, 21}, new int[]{3, 9}, new int[]{4, 64}, new int[]{5, 38}, new int[]{6, 11}, new int[]{7, 0}, new int[]{8, 13}, new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{48, 18}, new int[]{49, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f10969e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f10970f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f10971g = 255;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10972h = 255;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f10973i = 0;

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
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        int i2 = nt.f8633a;
        if (i2 == 65827 || i2 == 196899) {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
        } else if (i2 == 131363) {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8312g = 0;
        }
        if (nt.a()) {
            int i3 = nt.f8633a;
            if (i3 == 65827 || i3 == 131363 || i3 == 196899) {
                qt.z(this.f10969e);
                y0.g.f18094d.a(this.f10970f, 1);
                y0.g.f18095e.a(this.f10970f, 1);
                w0.e.f17815a.a(this.f10969e, 1);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x0239, code lost:
    
        r5 = true;
     */
    @Override // k0.lt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void U2(byte[] r18, int r19, int r20) {
        /*
            Method dump skipped, instruction units count: 732
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k0.u9.U2(byte[], int, int):void");
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f10969e);
        y0.g.f18094d.d(this.f10970f);
        y0.g.f18095e.d(this.f10970f);
        w0.e.f17815a.d(this.f10969e);
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
            b3(0, iArr[0]);
        } else if (i2 == 1) {
            b3(1, iArr[0]);
        } else {
            if (i2 != 2) {
                return;
            }
            b3(2, iArr[0]);
        }
    }

    public void a3(int i2) {
        this.f10971g = i2;
        boolean z2 = i2 == 1;
        if (this.f10972h != i2) {
            if (z2) {
                qt.y0(1015, 1);
            } else {
                qt.y0(1015, 0);
            }
        }
        this.f10972h = this.f10971g;
    }

    public final void b3(int i2, int i3) {
        if (i3 == 0) {
            this.f10973i &= 31;
        } else if (i2 == 0) {
            this.f10973i |= 32;
        } else if (i2 == 1) {
            this.f10973i |= 64;
        } else if (i2 == 2) {
            this.f10973i |= 128;
        }
        z.k.s(227, 5, 6, 0, (byte) this.f10973i);
    }
}

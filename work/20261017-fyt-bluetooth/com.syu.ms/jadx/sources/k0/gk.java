package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class gk extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5584c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5585d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, -1}, new int[]{7, -1}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 5}, new int[]{11, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5586e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f5587f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5588g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f5589h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f5590i = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
                z.k.s(227, 14, 145, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            } else {
                z.k.s(227, 14, 145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(gk.this.f5590i);
            gk.this.f5588g = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            gk gkVar = gk.this;
            int i2 = gkVar.f5588g - 1;
            gkVar.f5588g = i2;
            if (i2 <= 0) {
                l0.b0.p0(gkVar.f5590i);
                gk.this.f5588g = 5;
            } else if (gkVar.f5586e == 1 && u0.b.f17306a0 == 1) {
                z.k.s(227, 14, 145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
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
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f5589h, 1);
        y0.g.f18095e.a(this.f5587f, 0);
        y0.g.f18094d.a(this.f5587f, 0);
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
            if (b2 != 18) {
                return;
            }
            byte b3 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            } else {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            }
            qt.y0(3, (b3 >> 5) & 1);
            qt.y0(4, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            return;
        }
        this.f5586e = (bArr[i2 + 2] >> 7) & 1;
        this.f5584c = bArr[i2 + 4] & 255;
        int i4 = 0;
        while (true) {
            iArr = this.f5585d;
            if (i4 >= iArr.length) {
                break;
            }
            int i5 = this.f5584c;
            if (i5 == iArr[i4][0]) {
                if (i5 == 0) {
                    break;
                }
                this.f5583b = i4;
                break;
            }
            i4++;
        }
        int i6 = this.f5584c;
        if (i6 != 5) {
            if (i6 == 0 || (bArr[i2 + 5] & 255) == 0) {
                int i7 = this.f5583b;
                if (i7 != 255 && (bArr[i2 + 5] & 255) == 0) {
                    l0.b0.l0(iArr[i7][1], 1);
                }
                this.f5583b = 255;
            } else if (i4 < iArr.length) {
                l0.b0.l0(iArr[i4][1], 0);
            }
        } else if ((bArr[i2 + 5] & 255) == 1) {
            int i8 = h0.c.E;
            if (i8 == 3 || i8 == 5) {
                l0.b0.l0(26, 0);
                l0.b0.l0(26, 1);
            } else {
                l0.b0.l0(18, 0);
                l0.b0.l0(18, 1);
            }
        }
        qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f5589h);
        l0.b0.p0(this.f5590i);
        y0.g.f18095e.d(this.f5587f);
        y0.g.f18094d.d(this.f5587f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 7) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}

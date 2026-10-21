package k0;

import android.os.SystemProperties;

/* JADX INFO: renamed from: k0.if, reason: invalid class name */
/* JADX INFO: loaded from: classes2.dex */
public class Cif extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6394c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6395d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 2}, new int[]{8, 13}, new int[]{16, 74}, new int[]{17, 75}, new int[]{18, 0}, new int[]{19, 3}, new int[]{20, 4}, new int[]{21, 12}, new int[]{22, 64}, new int[]{23, 2}, new int[]{24, 39}, new int[]{25, 55}, new int[]{32, 7}, new int[]{33, 8}, new int[]{34, 38}, new int[]{35, 5}, new int[]{36, 18}, new int[]{37, 21}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f6396e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f6397f = new b();

    /* JADX INFO: renamed from: k0.if$a */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.m();
        }
    }

    /* JADX INFO: renamed from: k0.if$b */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.s0();
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
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 1;
        mtVar.f8307b = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        w0.e.f17815a.a(this.f6396e, 1);
        u0.c.f17374a.a(this.f6396e, 1);
        u0.c.f17393t.a(this.f6396e, 1);
        u0.c.f17392s.a(this.f6396e, 1);
        l0.b0.b(this.f6396e);
        y0.g.f18094d.a(this.f6397f, 1);
        y0.g.f18095e.a(this.f6397f, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 32) {
            if (b2 == 41) {
                qt.m(bArr[i2 + 2], bArr[i2 + 3], 32768, false, 8374);
                return;
            }
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 == 64) {
                int i4 = bArr[i2 + 2] & 255;
                if (i4 == 1) {
                    qt.y0(8, bArr[i2 + 3] & 255);
                    return;
                } else {
                    if (i4 != 2) {
                        return;
                    }
                    qt.y0(9, bArr[i2 + 3] & 255);
                    return;
                }
            }
            if (b2 == 104) {
                qt.y0(1032, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
                return;
            }
            if (b2 == 35) {
                u0.d.R2(l0.c0.s1(bArr[i2 + 2] & 255));
                int i5 = i2 + 3;
                u0.d.S2(l0.c0.s1(bArr[i5] & 255));
                u0.d.T2(l0.c0.s1(bArr[i5] & 255));
                u0.d.U2(l0.c0.s1(bArr[i2 + 4] & 255));
                return;
            }
            if (b2 != 36) {
                return;
            }
            int i6 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i6 >> 6) & 1);
                qt.y0(1, (i6 >> 7) & 1);
            } else {
                qt.y0(2, (i6 >> 7) & 1);
                qt.y0(1, (i6 >> 6) & 1);
            }
            qt.y0(4, (i6 >> 5) & 1);
            qt.y0(3, (i6 >> 4) & 1);
            qt.y0(5, (i6 >> 3) & 1);
            qt.y0(0, (i6 >> 2) & 1);
            return;
        }
        byte b3 = bArr[i2 + 2];
        byte b4 = bArr[i2 + 3];
        this.f6394c = b3 & 255;
        int i7 = 0;
        while (true) {
            iArr = this.f6395d;
            if (i7 >= iArr.length) {
                break;
            }
            int i8 = this.f6394c;
            if (i8 == iArr[i7][0]) {
                if (i8 == 0) {
                    break;
                }
                this.f6393b = i7;
                break;
            }
            i7++;
        }
        int i9 = this.f6394c;
        if (i9 == 32) {
            for (int i10 = 0; i10 < (b4 & 255); i10++) {
                l0.b0.l0(7, 0);
            }
            l0.b0.l0(7, 1);
            return;
        }
        if (i9 == 33) {
            for (int i11 = 0; i11 < (b4 & 255); i11++) {
                l0.b0.l0(8, 0);
            }
            l0.b0.l0(8, 1);
            return;
        }
        int i12 = b4 & 255;
        if (i12 == 1) {
            if (i7 < iArr.length) {
                l0.b0.l0(iArr[i7][1], 0);
            }
        } else if (i12 == 0) {
            int i13 = this.f6393b;
            if (i13 < iArr.length && i13 != 255) {
                l0.b0.l0(iArr[i13][1], 1);
            }
            this.f6393b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        w0.e.f17815a.d(this.f6396e);
        u0.c.f17374a.d(this.f6396e);
        u0.c.f17393t.d(this.f6396e);
        u0.c.f17392s.d(this.f6396e);
        l0.b0.p0(this.f6396e);
        y0.g.f18094d.d(this.f6397f);
        y0.g.f18095e.d(this.f6397f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 10) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
        }
    }
}

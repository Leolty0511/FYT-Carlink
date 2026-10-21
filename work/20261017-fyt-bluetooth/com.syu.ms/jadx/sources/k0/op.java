package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class op extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8964b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8965c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8966d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 12}, new int[]{7, 18}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 34}, new int[]{11, 35}, new int[]{13, 29}, new int[]{25, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8967e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f8968f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f8969g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(op.this.f8969g);
            op.this.f8967e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            op opVar = op.this;
            int i2 = opVar.f8967e - 1;
            opVar.f8967e = i2;
            if (i2 <= 0) {
                l0.b0.p0(opVar.f8969g);
                op.this.f8967e = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 255, 1, 127);
                }
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f8968f, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 2) {
            if (b2 != 6) {
                if (b2 == 10) {
                    qt.j(bArr[i2 + 3], bArr[i2 + 4], (bArr[i2 + 2] & 1) != 1 ? 1 : 0, 480);
                    return;
                } else {
                    if (b2 != 127) {
                        return;
                    }
                    qt.L(new String(bArr, i2 + 2, i3 - 2));
                    return;
                }
            }
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b3 >> 6) & 1);
                qt.y0(1, (b3 >> 7) & 1);
            } else {
                qt.y0(2, (b3 >> 7) & 1);
                qt.y0(1, (b3 >> 6) & 1);
            }
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            return;
        }
        byte b4 = bArr[i2 + 2];
        byte b5 = bArr[i2 + 3];
        this.f8965c = b4 & 255;
        int i4 = 0;
        while (true) {
            iArr = this.f8966d;
            if (i4 >= iArr.length) {
                break;
            }
            int i5 = this.f8965c;
            if (i5 == iArr[i4][0]) {
                if (i5 == 0) {
                    break;
                }
                this.f8964b = i4;
                break;
            }
            i4++;
        }
        int i6 = b5 & 255;
        if (i6 == 1) {
            if (i4 < iArr.length) {
                l0.b0.l0(iArr[i4][1], 0);
            }
        } else if (i6 == 0) {
            int i7 = this.f8964b;
            if (i7 < iArr.length && i7 != 255) {
                l0.b0.l0(iArr[i7][1], 1);
            }
            this.f8964b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f8968f);
        l0.b0.p0(this.f8969g);
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

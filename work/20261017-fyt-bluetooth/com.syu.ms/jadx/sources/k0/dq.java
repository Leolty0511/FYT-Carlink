package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class dq extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4580c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4581d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4582e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f4583f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f4584g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(dq.this.f4584g);
            dq.this.f4582e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            dq dqVar = dq.this;
            int i2 = dqVar.f4582e - 1;
            dqVar.f4582e = i2;
            if (i2 <= 0) {
                l0.b0.p0(dqVar.f4584g);
                dq.this.f4582e = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 2, 48, 0);
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
        u0.c.f17386m.a(this.f4583f, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8317l = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 32) {
            if (b2 != 36) {
                if (b2 == 48) {
                    qt.L(new String(bArr, i2 + 2, i3 - 2));
                    return;
                } else {
                    if (b2 == 125 && (bArr[i2 + 2] & 255) == 1) {
                        int i4 = i2 + 3;
                        l0.c0.a((bArr[i4] >> 3) & 1, (bArr[i4] >> 4) & 1, 0);
                        o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i4] & 255}, null, null);
                        return;
                    }
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
            qt.y0(0, (b3 >> 2) & 1);
            return;
        }
        byte b4 = bArr[i2 + 2];
        byte b5 = bArr[i2 + 3];
        this.f4580c = b4 & 255;
        int i5 = 0;
        while (true) {
            iArr = this.f4581d;
            if (i5 >= iArr.length) {
                break;
            }
            int i6 = this.f4580c;
            if (i6 == iArr[i5][0]) {
                if (i6 == 0) {
                    break;
                }
                this.f4579b = i5;
                break;
            }
            i5++;
        }
        int i7 = b5 & 255;
        if (i7 == 1) {
            if (i5 < iArr.length) {
                l0.b0.l0(iArr[i5][1], 0);
            }
        } else if (i7 == 0) {
            int i8 = this.f4579b;
            if (i8 < iArr.length && i8 != 255) {
                l0.b0.l0(iArr[i8][1], 1);
            }
            this.f4579b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f4583f);
        l0.b0.p0(this.f4584g);
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

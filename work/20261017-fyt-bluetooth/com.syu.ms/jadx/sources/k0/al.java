package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class al extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3376c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3377d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{16, 6}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3378e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f3379f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f3380g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(al.this.f3380g);
            al.this.f3378e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            al alVar = al.this;
            int i2 = alVar.f3378e - 1;
            alVar.f3378e = i2;
            if (i2 <= 0) {
                l0.b0.p0(alVar.f3380g);
                al.this.f3378e = 5;
            } else if (u0.b.f17306a0 == 1 && nt.f8633a == 4260284) {
                z.k.s(227, 2, 36, 1, 35);
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
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        mtVar.f8322q = 0;
        mtVar.f8314i = 1;
        mtVar.f8313h = 0;
        u0.c.f17386m.a(this.f3379f, 1);
        qt.z(l0.h0.f13059e);
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
            if (b2 != 20) {
                if (b2 != 65) {
                    return;
                }
                u0.d.R2(l0.c0.A1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.A1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.A1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.A1(bArr[i2 + 5] & 255));
                return;
            }
            qt.y0(99, bArr[i2 + 2] & 255);
            qt.y0(100, bArr[i2 + 3] & 255);
            qt.y0(101, bArr[i2 + 4] & 255);
            int i4 = i2 + 5;
            qt.y0(102, (bArr[i4] >> 0) & 1);
            qt.y0(103, (bArr[i4] >> 1) & 1);
            qt.y0(104, (bArr[i4] >> 2) & 1);
            qt.y0(105, (bArr[i4] >> 3) & 1);
            qt.y0(106, (bArr[i4] >> 4) & 3);
            qt.y0(107, (bArr[i4] >> 6) & 3);
            int i5 = i2 + 6;
            qt.y0(108, (bArr[i5] >> 0) & 1);
            qt.y0(109, (bArr[i5] >> 1) & 1);
            return;
        }
        byte b3 = bArr[i2 + 4];
        byte b4 = bArr[i2 + 5];
        this.f3376c = b3 & 255;
        int i6 = 0;
        while (true) {
            iArr = this.f3377d;
            if (i6 >= iArr.length) {
                break;
            }
            int i7 = this.f3376c;
            if (i7 == iArr[i6][0]) {
                if (i7 == 0) {
                    break;
                }
                this.f3375b = i6;
                break;
            }
            i6++;
        }
        int i8 = b4 & 255;
        if (i8 == 1) {
            if (i6 < iArr.length) {
                l0.b0.l0(iArr[i6][1], 0);
            }
        } else if (i8 == 0) {
            int i9 = this.f3375b;
            if (i9 < iArr.length && i9 != 255) {
                l0.b0.l0(iArr[i9][1], 1);
            }
            this.f3375b = 255;
        }
        int i10 = i2 + 8;
        byte b5 = bArr[i10];
        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
            qt.y0(1, (b5 >> 7) & 1);
            qt.y0(2, (b5 >> 6) & 1);
        } else {
            qt.y0(1, (b5 >> 6) & 1);
            qt.y0(2, (b5 >> 7) & 1);
        }
        qt.y0(3, (b5 >> 4) & 1);
        qt.y0(4, (b5 >> 5) & 1);
        qt.y0(5, (b5 >> 3) & 1);
        qt.y0(0, (b5 >> 2) & 1);
        qt.i(bArr[i2 + 9] & 255, bArr[i10] & 255, true, 540);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f3379f);
        l0.b0.p0(this.f3380g);
        qt.q0(l0.h0.f13059e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 110) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 3, 106, iArr[0], iArr[1], iArr[2]);
    }
}

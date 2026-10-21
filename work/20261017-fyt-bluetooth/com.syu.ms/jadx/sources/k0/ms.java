package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ms extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8299c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8300d = {new int[]{1, 0}, new int[]{2, 5}, new int[]{3, 21}, new int[]{4, 2}, new int[]{5, 1}, new int[]{6, 25}, new int[]{7, 3}, new int[]{8, 4}, new int[]{9, 7}, new int[]{10, 8}, new int[]{11, 29}, new int[]{12, 12}, new int[]{13, 18}, new int[]{14, 53}, new int[]{15, 18}, new int[]{16, 26}, new int[]{17, 13}, new int[]{18, 54}, new int[]{19, 6}, new int[]{20, 5}, new int[]{21, 62}, new int[]{22, -1}, new int[]{23, 63}, new int[]{24, -1}, new int[]{25, 55}, new int[]{26, 16}, new int[]{27, 54}, new int[]{28, 38}, new int[]{51, 18}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8301e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f8302f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f8303g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ms.this.f8303g);
            ms.this.f8301e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ms msVar = ms.this;
            int i2 = msVar.f8301e - 1;
            msVar.f8301e = i2;
            if (i2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(msVar.f8303g);
                ms.this.f8301e = 5;
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
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8314i = 0;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        if (bArr[i2] != 125) {
            return;
        }
        int i4 = bArr[i2 + 2] & 255;
        if (i4 == 1) {
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i5 = i2 + 3;
                l0.c0.b((bArr[i5] >> 3) & 1, (bArr[i5] >> 4) & 1, 0);
                return;
            } else {
                int i6 = i2 + 3;
                l0.c0.a((bArr[i6] >> 3) & 1, (bArr[i6] >> 4) & 1, 0);
                return;
            }
        }
        if (i4 == 3) {
            int i7 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
            qt.y0(1031, i7);
            o1.x.C(nt.f8643f, 1049, new int[]{1, i7}, null, null);
            return;
        }
        if (i4 == 8) {
            qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
            return;
        }
        if (i4 == 10) {
            qt.y0(1032, (bArr[i2 + 3] & 255) | (65280 & (bArr[i2 + 4] << 8)));
            return;
        }
        if (i4 != 128) {
            return;
        }
        int i8 = bArr[i2 + 3] & 255;
        int i9 = bArr[i2 + 4] & 255;
        this.f8299c = i8 & 255;
        int i10 = 0;
        while (true) {
            iArr = this.f8300d;
            if (i10 >= iArr.length) {
                break;
            }
            int i11 = this.f8299c;
            if (i11 == iArr[i10][0]) {
                if (i11 == 0) {
                    break;
                }
                this.f8298b = i10;
                break;
            }
            i10++;
        }
        int i12 = this.f8299c;
        if (i12 == 22) {
            if ((i9 & 255) != 1 || o1.u.S("com.syu.carlink")) {
                return;
            }
            o1.u.g("com.syu.carlink");
            return;
        }
        if (i12 != 24) {
            if ((i9 & 255) != 0) {
                if (i10 < iArr.length) {
                    l0.b0.l0(iArr[i10][1], 0);
                    return;
                }
                return;
            } else {
                int i13 = this.f8298b;
                if (i13 < iArr.length && i13 != 255) {
                    l0.b0.l0(iArr[i13][1], 1);
                }
                this.f8298b = 255;
                return;
            }
        }
        if ((i9 & 255) == 1) {
            if (qt.k0()) {
                if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                    return;
                }
                c.e.d().c(591);
                return;
            }
            if (u0.b.f17347o == 0) {
                qt.a(1);
            } else {
                qt.a(0);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}

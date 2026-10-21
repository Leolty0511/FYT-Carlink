package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ts extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10845b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10846c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10847d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{8, 13}, new int[]{21, 6}, new int[]{22, 29}, new int[]{136, 2}, new int[]{182, 12}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10848e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f10849f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f10850g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ts tsVar = ts.this;
            tsVar.f10848e = 10;
            l0.b0.b(tsVar.f10850g);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ts tsVar = ts.this;
            int i2 = tsVar.f10848e - 1;
            tsVar.f10848e = i2;
            if (i2 <= 0) {
                l0.b0.p0(tsVar.f10850g);
                ts.this.f10848e = 10;
            } else if (i2 <= 5) {
                int i3 = u0.b.f17306a0;
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
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
        mtVar.f8317l = 1;
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
        if (b2 != 32) {
            if (b2 == 36) {
                int i4 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i4 >> 6) & 1);
                    qt.y0(1, (i4 >> 7) & 1);
                } else {
                    qt.y0(2, (i4 >> 7) & 1);
                    qt.y0(1, (i4 >> 6) & 1);
                }
                qt.y0(4, (i4 >> 5) & 1);
                qt.y0(3, (i4 >> 4) & 1);
                return;
            }
            if (b2 == 41) {
                qt.k(bArr[i2 + 2], bArr[i2 + 3], false, 380);
                return;
            }
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            } else {
                if (b2 != 82) {
                    return;
                }
                int i5 = i2 + 2;
                l0.c0.a((bArr[i5] >> 1) & 1, (bArr[i5] >> 0) & 1, 0);
                return;
            }
        }
        byte b3 = bArr[i2 + 2];
        byte b4 = bArr[i2 + 3];
        this.f10846c = b3 & 255;
        int i6 = 0;
        while (true) {
            iArr = this.f10847d;
            if (i6 >= iArr.length) {
                break;
            }
            int i7 = this.f10846c;
            if (i7 == iArr[i6][0]) {
                if (i7 == 0) {
                    break;
                }
                this.f10845b = i6;
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
            int i9 = this.f10845b;
            if (i9 < iArr.length && i9 != 255) {
                l0.b0.l0(iArr[i9][1], 1);
            }
            this.f10845b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
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

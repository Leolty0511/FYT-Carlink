package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class uq extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11163c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11164d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 3}, new int[]{20, 4}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f11165e = 5;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f11166f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f11167g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(uq.this.f11167g);
            uq.this.f11165e = (byte) 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            uq uqVar = uq.this;
            byte b2 = (byte) (uqVar.f11165e - 1);
            uqVar.f11165e = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(uqVar.f11167g);
                uq.this.f11165e = (byte) 5;
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
        mtVar.f8314i = 1;
        mtVar.f8312g = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 32) {
            if (b2 == 36) {
                int i4 = i2 + 2;
                qt.y0(5, (bArr[i4] >> 3) & 1);
                qt.y0(4, (bArr[i4] >> 5) & 1);
                qt.y0(3, (bArr[i4] >> 4) & 1);
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (bArr[i4] >> 7) & 1);
                    qt.y0(2, (bArr[i4] >> 6) & 1);
                    return;
                } else {
                    qt.y0(1, (bArr[i4] >> 6) & 1);
                    qt.y0(2, (bArr[i4] >> 7) & 1);
                    return;
                }
            }
            if (b2 != 40) {
                if (b2 != 48) {
                    return;
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            int i5 = bArr[i2 + 2] & 255;
            qt.y0(10, (i5 >> 7) & 1);
            qt.y0(11, (i5 >> 6) & 1);
            qt.y0(13, (i5 >> 3) & 1);
            int i6 = bArr[i2 + 3] & 255;
            qt.y0(18, (i6 >> 7) & 1);
            qt.y0(19, (i6 >> 6) & 1);
            qt.y0(20, (i6 >> 5) & 1);
            qt.y0(21, i6 & 15);
            qt.y0(44, bArr[i2 + 9] & 7);
            return;
        }
        byte b3 = bArr[i2 + 2];
        byte b4 = bArr[i2 + 3];
        this.f11163c = b3 & 255;
        int i7 = 0;
        while (true) {
            iArr = this.f11164d;
            if (i7 >= iArr.length) {
                break;
            }
            int i8 = this.f11163c;
            if (i8 == iArr[i7][0]) {
                if (i8 == 0) {
                    break;
                }
                this.f11162b = i7;
                break;
            }
            i7++;
        }
        int i9 = b4 & 255;
        if (i9 == 1) {
            if (i7 < iArr.length) {
                l0.b0.l0(iArr[i7][1], 0);
            }
        } else if (i9 == 0) {
            int i10 = this.f11162b;
            if (i10 < iArr.length && i10 != 255) {
                l0.b0.l0(iArr[i10][1], 1);
            }
            this.f11162b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f11166f);
        l0.b0.p0(this.f11167g);
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
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 224, 2, iArr[0], iArr[1]);
    }
}

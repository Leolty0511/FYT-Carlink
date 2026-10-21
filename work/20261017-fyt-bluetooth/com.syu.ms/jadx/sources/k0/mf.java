package k0;

import android.os.SystemProperties;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class mf extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f8139b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f8140c = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o1.m.a().postDelayed(mf.this.f8140c, 2000L);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 137, 1, 10);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f8139b, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 1;
        mtVar.f8313h = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 != 33) {
            if (b2 == 36) {
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
            } else if (b2 != 41) {
                if (b2 == 48) {
                    qt.L(new String(bArr, i2 + 2, i3 - 2));
                    return;
                }
                if (b2 == 104) {
                    qt.y0(112, (bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280));
                    return;
                }
                if (b2 != 112) {
                    if (b2 != 113) {
                        return;
                    }
                    qt.y0(109, ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
                    qt.y0(110, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
                    qt.y0(111, (bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280));
                    return;
                }
                qt.y0(100, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(99, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(102, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(101, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 9] & 255));
                qt.y0(104, bArr[i2 + 2] & 255);
                qt.y0(103, bArr[i2 + 11] & 255);
                return;
            }
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 6303);
            return;
        }
        int i4 = bArr[i2 + 2] & 255;
        int i5 = bArr[i2 + 3] & 255;
        int i6 = i2 + 4;
        int i7 = bArr[i6] & 255;
        int i8 = i2 + 5;
        int i9 = bArr[i8] & 255;
        int i10 = bArr[i2 + 6] & 255;
        qt.y0(10, (i4 >> 7) & 1);
        qt.y0(11, (i4 >> 6) & 1);
        qt.y0(12, (i4 >> 5) & 1);
        qt.y0(16, (i4 >> 4) & 1);
        qt.y0(13, (i4 >> 3) & 1);
        qt.y0(14, (i4 >> 2) & 1);
        qt.y0(15, (i4 >> 1) & 1);
        qt.y0(18, (i5 >> 7) & 1);
        qt.y0(19, (i5 >> 6) & 1);
        int i11 = i5 >> 5;
        qt.y0(20, i11 & 1);
        qt.y0(77, i11 & 7);
        qt.y0(21, 15 & (i5 >> 0));
        qt.y0(37, (i10 >> 6) & 1);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i7 = bArr[i8] & 255;
            i9 = bArr[i6] & 255;
        }
        if (i7 == 0) {
            qt.y0(27, -2);
        } else if (i7 != 127) {
            qt.y0(27, i7);
        } else {
            qt.y0(27, -3);
        }
        if (i9 == 0) {
            qt.y0(28, -2);
        } else if (i9 != 127) {
            qt.y0(28, i9);
        } else {
            qt.y0(28, -3);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f8139b);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 114) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}

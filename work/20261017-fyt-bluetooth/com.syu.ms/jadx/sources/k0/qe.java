package k0;

import android.os.SystemProperties;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class qe extends lt {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static Runnable f9520f = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9522c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9523d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 2}, new int[]{4, 12}, new int[]{5, 4}, new int[]{6, 3}, new int[]{7, 13}, new int[]{8, 18}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f9524e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.d0.g();
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            l0.d0.i();
        }
    }

    public static int a3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
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
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        y0.g.f18094d.a(f9520f, 1);
        u0.c.f17374a.a(this.f9524e, 1);
        w0.e.f17815a.a(this.f9524e, 1);
        w0.e.f17819e.a(this.f9524e, 1);
        w0.e.f17820f.a(this.f9524e, 1);
        u0.c.f17391r.a(this.f9524e, 1);
        u0.c.f17392s.a(this.f9524e, 1);
        u0.c.f17393t.a(this.f9524e, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        byte b2 = bArr[i2];
        if (b2 == 3) {
            int i6 = i2 + 2;
            int i7 = i2 + 3;
            qt.y0(99, (bArr[i7] & 255) | ((bArr[i6] & 255) << 8));
            qt.y0(1032, ((bArr[i6] & 255) << 8) | (bArr[i7] & 255));
            qt.y0(98, ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
            qt.y0(100, ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
            int i8 = i2 + 12;
            qt.y0(101, (bArr[i8] >> 7) & 1);
            qt.y0(102, (bArr[i8] >> 6) & 1);
            qt.y0(103, (bArr[i8] >> 5) & 1);
            qt.y0(104, (bArr[i8] >> 4) & 1);
            qt.y0(105, (bArr[i8] >> 3) & 1);
            qt.y0(106, (bArr[i8] >> 2) & 1);
            qt.y0(107, (bArr[i8] >> 1) & 1);
        }
        if (b2 == 6) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f9522c = b3 & 255;
            int i9 = 0;
            while (true) {
                iArr = this.f9523d;
                if (i9 >= iArr.length) {
                    break;
                }
                int i10 = this.f9522c;
                if (i10 == iArr[i9][0]) {
                    if (i10 == 0) {
                        break;
                    }
                    this.f9521b = i9;
                    break;
                }
                i9++;
            }
            if ((b4 & 255) != 0) {
                if (i9 < iArr.length) {
                    l0.b0.l0(iArr[i9][1], 0);
                    return;
                }
                return;
            }
            int i11 = this.f9521b;
            if (i11 < iArr.length) {
                i4 = 255;
                if (i11 != 255) {
                    l0.b0.l0(iArr[i11][1], 1);
                }
            } else {
                i4 = 255;
            }
            this.f9521b = i4;
            return;
        }
        if (b2 == 8) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            } else {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            }
            qt.y0(3, (b5 >> 5) & 1);
            qt.y0(4, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            return;
        }
        if (b2 == 113) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 98:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                byte b8 = bArr[i2 + 4];
                int i12 = i2 + 5;
                byte b9 = bArr[i12];
                int i13 = i2 + 6;
                byte b10 = bArr[i13];
                byte b11 = bArr[i2 + 8];
                byte b12 = bArr[i2 + 9];
                byte b13 = bArr[i2 + 10];
                qt.y0(10, (b6 >> 7) & 1);
                qt.y0(11, (b6 >> 6) & 1);
                qt.y0(13, (b6 >> 5) & 1);
                qt.y0(65, (b6 >> 3) & 1);
                qt.y0(16, (b6 >> 2) & 1);
                qt.y0(12, b6 & 1);
                qt.y0(18, (b7 >> 7) & 1);
                qt.y0(19, (b7 >> 6) & 1);
                qt.y0(20, (b7 >> 5) & 1);
                qt.y0(21, b8 & 255);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b9 = bArr[i13];
                    b10 = bArr[i12];
                }
                byte b14 = b10;
                int i14 = b9 & 255;
                if (i14 == 0) {
                    qt.y0(27, -2);
                } else if (i14 != 127) {
                    qt.y0(27, i14);
                } else {
                    qt.y0(27, -3);
                }
                int i15 = b14 & 255;
                if (i15 == 0) {
                    qt.y0(28, -2);
                } else if (i15 != 127) {
                    qt.y0(28, i15);
                } else {
                    qt.y0(28, -3);
                }
                if ((b11 & 128) == 128) {
                    int i16 = (b11 << 8) | b12;
                    int i17 = i16 / 2;
                    int i18 = i16 % 2;
                    i5 = (1000 - (((i18 != 0 ? (~i17) + 2 : (~i17) + 1) & 65535) * 10)) - (i18 * 5);
                } else {
                    int i19 = ((b11 & 127) << 8) | b12;
                    i5 = ((i19 / 2) * 10) + 1000 + ((i19 % 2) * 5);
                }
                u0.d.A3(i5);
                qt.y0(37, 255 & b13);
                break;
            case 99:
                u0.d.D2(a3(bArr[i2 + 3] & 255));
                u0.d.E2(a3(bArr[i2 + 4] & 255));
                u0.d.F2(a3(bArr[i2 + 5] & 255));
                u0.d.G2(a3(bArr[i2 + 6] & 255));
                u0.d.R2(a3(bArr[i2 + 7] & 255));
                u0.d.S2(a3(bArr[i2 + 8] & 255));
                u0.d.T2(a3(bArr[i2 + 9] & 255));
                u0.d.U2(a3(bArr[i2 + 10] & 255));
                break;
            case 100:
                qt.i(bArr[i2 + 3], bArr[i2 + 2], true, 4600);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(l0.h0.f13058d);
        y0.g.f18094d.d(f9520f);
        u0.c.f17374a.d(this.f9524e);
        w0.e.f17815a.d(this.f9524e);
        w0.e.f17819e.d(this.f9524e);
        w0.e.f17820f.d(this.f9524e);
        u0.c.f17391r.d(this.f9524e);
        u0.c.f17392s.d(this.f9524e);
        u0.c.f17393t.d(this.f9524e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 108) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            int i3 = iArr[1];
            return;
        }
        if (i2 == 1 && iArr != null && iArr.length >= 2) {
            z.k.s(227, 131, 2, (byte) iArr[0], iArr[1]);
        }
    }
}

package k0;

import android.os.SystemProperties;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class as extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3446c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3447d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 12}, new int[]{7, 18}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 34}, new int[]{11, 35}, new int[]{13, 29}, new int[]{25, 13}, new int[]{27, 5}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f3448e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3449f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f3450g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f3451h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.H();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(as.this.f3451h);
            as.this.f3449f = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            as asVar = as.this;
            int i2 = asVar.f3449f - 1;
            asVar.f3449f = i2;
            if (i2 <= 0) {
                l0.b0.p0(asVar.f3451h);
                as.this.f3449f = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 255, 1, 53);
                z.k.s(227, 255, 1, 55);
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
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8322q = 0;
        u0.c.f17386m.a(this.f3450g, 1);
        w0.e.f17815a.a(this.f3448e, 1);
        w0.e.f17819e.a(this.f3448e, 1);
        u0.c.f17392s.a(this.f3448e, 1);
        u0.c.f17374a.a(this.f3448e, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f3446c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f3447d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f3446c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f3445b = i4;
                    break;
                }
                i4++;
            }
            int i6 = b4 & 255;
            if (i6 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i6 == 0) {
                    int i7 = this.f3445b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f3445b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 10) {
            qt.j(bArr[i2 + 3], bArr[i2 + 4], (bArr[i2 + 2] & 1) != 1 ? 1 : 0, 480);
            return;
        }
        if (b2 == 53) {
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i8 = i2 + 2;
                l0.c0.b((bArr[i8] >> 5) & 1, (bArr[i8] >> 4) & 1, 0);
            } else {
                int i9 = i2 + 2;
                l0.c0.a((bArr[i9] >> 5) & 1, (bArr[i9] >> 4) & 1, 0);
            }
            qt.y0(7, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(8, ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(9, (bArr[i2 + 12] >> 7) & 1);
            return;
        }
        if (b2 == 55) {
            qt.y0(10, bArr[i2 + 2] & 255);
            qt.y0(11, bArr[i2 + 3] & 255);
            qt.y0(12, bArr[i2 + 4] & 255);
            qt.y0(13, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(14, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
            qt.y0(15, bArr[i2 + 9] & 255);
            qt.y0(16, bArr[i2 + 10] & 255);
            qt.y0(17, bArr[i2 + 11] & 255);
            qt.y0(18, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(19, (255 & bArr[i2 + 15]) | ((bArr[i2 + 14] << 8) & 65280));
            int i10 = i2 + 16;
            qt.y0(20, (bArr[i10] >> 7) & 1);
            qt.y0(21, (bArr[i10] >> 5) & 3);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 4) {
            u0.d.R2(l0.c0.b1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.b1(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.b1(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.b1(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 != 5) {
            if (b2 != 6) {
                return;
            }
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b5 >> 6) & 1);
                qt.y0(1, (b5 >> 7) & 1);
            } else {
                qt.y0(2, (b5 >> 7) & 1);
                qt.y0(1, (b5 >> 6) & 1);
            }
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 2) & 1);
            return;
        }
        int i11 = i2 + 2;
        int i12 = bArr[i11] & 255;
        int i13 = i2 + 3;
        int i14 = bArr[i13] & 255;
        int i15 = i2 + 4;
        int i16 = bArr[i15] & 255;
        int i17 = i2 + 5;
        int i18 = bArr[i17] & 255;
        if (i12 == 0 && i14 == 0 && i16 == 0 && i18 == 0) {
            u0.d.C2(0);
        } else if ((l0.c0.f13013g != i12 || l0.c0.f13014h != i14 || l0.c0.f13015i != i16 || l0.c0.f13016j != i18) && u0.b.f17347o == 0) {
            u0.d.C2(1);
            l0.c0.f13017k = 4;
            l0.b0.b(l0.c0.f13018l);
        }
        l0.c0.f13013g = i12;
        l0.c0.f13014h = i14;
        l0.c0.f13015i = i16;
        l0.c0.f13016j = i18;
        u0.d.D2(l0.c0.b1(bArr[i11] & 255));
        u0.d.E2(l0.c0.b1(bArr[i13] & 255));
        u0.d.F2(l0.c0.b1(bArr[i15] & 255));
        u0.d.G2(l0.c0.b1(bArr[i17] & 255));
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f3450g);
        l0.b0.p0(this.f3451h);
        w0.e.f17815a.d(this.f3448e);
        w0.e.f17819e.d(this.f3448e);
        u0.c.f17392s.d(this.f3448e);
        u0.c.f17374a.d(this.f3448e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 22) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}

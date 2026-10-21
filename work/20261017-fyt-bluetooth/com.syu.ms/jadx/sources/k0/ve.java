package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ve extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11321b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11322c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11323d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{6, 35}, new int[]{7, 34}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f11324e = {new int[]{3, 13}, new int[]{4, 7}, new int[]{5, 8}, new int[]{6, 12}, new int[]{8, 67}, new int[]{9, 68}, new int[]{10, 24}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f11325f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 29}, new int[]{4, 12}, new int[]{5, 54}, new int[]{6, 24}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f11326g = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.v();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            w0.e.f17815a.a(this.f11326g, 1);
            w0.e.f17819e.a(this.f11326g, 1);
            u0.c.f17393t.a(this.f11326g, 1);
            u0.c.f17392s.a(this.f11326g, 1);
            u0.c.f17374a.a(this.f11326g, 1);
        }
        z.k.s(227, 129, 1, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 0];
        if (b2 == 1) {
            int i4 = bArr[i2 + 2] & 255;
            int i5 = bArr[i2 + 3] & 255;
            int i6 = bArr[i2 + 4] & 255;
            int i7 = bArr[i2 + 5] & 255;
            int i8 = bArr[i2 + 6] & 255;
            int i9 = bArr[i2 + 7] & 255;
            int i10 = bArr[i2 + 8] & 255;
            int i11 = bArr[i2 + 9] & 255;
            int i12 = bArr[i2 + 10] & 255;
            int i13 = bArr[i2 + 11] & 255;
            int i14 = bArr[i2 + 12] & 255;
            byte b3 = bArr[i2 + 13];
            int i15 = bArr[i2 + 14] & 255;
            qt.y0(98, i4);
            qt.y0(100, (i5 * 256) + i6);
            qt.y0(101, (i7 * 256) + i8);
            qt.y0(102, (i9 * 256) + i10);
            qt.y0(103, (i11 * 256) + i12);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i14 >> 7) & 1);
                qt.y0(2, (i14 >> 6) & 1);
            } else {
                qt.y0(1, (i14 >> 6) & 1);
                qt.y0(2, (i14 >> 7) & 1);
            }
            qt.y0(4, (i14 >> 5) & 1);
            qt.y0(3, (i14 >> 4) & 1);
            qt.y0(5, (i14 >> 3) & 1);
            qt.y0(0, (i14 >> 2) & 1);
            qt.y0(104, i15);
            if (nt.a()) {
                int i16 = 255 & i13;
                int i17 = i16 < 128 ? (i16 * 10) + 1000 : 1000 - ((256 - i16) * 10);
                if (SystemProperties.getInt("persist.fyt.temperature", 0) == 1) {
                    i17 = (i17 | 268435456) & (-1);
                }
                u0.d.B3(i17);
                return;
            }
            return;
        }
        if (b2 != 32) {
            if (b2 != 48) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        int i18 = i2 + 2;
        if (bArr[i18] == -128 && bArr[i2 + 3] == 1) {
            if (o1.u.Y0().equals("com.syu.canbus")) {
                o1.u.k();
                return;
            } else {
                o1.u.v();
                return;
            }
        }
        if (nt.a()) {
            byte b4 = bArr[i18];
            byte b5 = bArr[i2 + 3];
            this.f11322c = b4 & 255;
            int i19 = 0;
            while (true) {
                iArr = this.f11323d;
                if (i19 >= iArr.length) {
                    break;
                }
                int i20 = this.f11322c;
                if (i20 == iArr[i19][0]) {
                    if (i20 == 0) {
                        break;
                    }
                    this.f11321b = i19;
                    break;
                }
                i19++;
            }
            if ((b5 & 255) != 0) {
                if (i19 < iArr.length) {
                    l0.b0.l0(iArr[i19][1], 0);
                }
            } else {
                int i21 = this.f11321b;
                if (i21 < iArr.length && i21 != 255) {
                    l0.b0.l0(iArr[i21][1], 1);
                }
                this.f11321b = 255;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        w0.e.f17815a.d(this.f11326g);
        w0.e.f17819e.d(this.f11326g);
        u0.c.f17393t.d(this.f11326g);
        u0.c.f17392s.d(this.f11326g);
        u0.c.f17374a.d(this.f11326g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 105) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}

package k0;

import android.os.Process;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ga extends lt {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f5400l;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5403d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5404e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5405f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f5401b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5402c = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5406g = 255;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f5407h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{129, 25}, new int[]{130, 28}, new int[]{131, 27}, new int[]{132, 21}, new int[]{137, 12}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{149, 39}, new int[]{150, 38}, new int[]{182, 1}, new int[]{184, 2}, new int[]{185, 64}, new int[]{145, 11}, new int[]{165, 1}, new int[]{173, 5}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5408i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5409j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f5410k = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ga gaVar = ga.this;
            gaVar.f5408i = 0;
            gaVar.f5409j = 0;
        }
    }

    public static int a3(int i2) {
        if (i2 == 255) {
            return 10;
        }
        return (i2 - 25) / 10;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f5401b.a();
        z.k.s(227, 2, 36, 3, 0);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        b3(this.f5401b.b(1, 0));
        u0.c.f17386m.a(this.f5410k, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        byte b2 = bArr[i2 + 1];
        int i5 = 4;
        if (b2 == -24) {
            int i6 = (bArr[i2 + 3] & 255) - 1;
            if (i6 < 0) {
                i5 = 0;
            } else if (i6 <= 4) {
                i5 = i6;
            }
            qt.y0(Process.MEDIA_UID, i5);
            if (nt.a() && nt.f8633a == 131376) {
                int i7 = i2 + 2;
                if ((bArr[i7] & 255) == 1) {
                    qt.a(1);
                    return;
                } else {
                    if ((bArr[i7] & 255) == 0) {
                        qt.a(0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 65) {
            if (nt.a()) {
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(a3(bArr[i2 + 3] & 255));
                u0.d.T2(a3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                u0.d.D2(a3(bArr[i2 + 6] & 255));
                u0.d.E2(a3(bArr[i2 + 7] & 255));
                u0.d.F2(a3(bArr[i2 + 8] & 255));
                u0.d.G2(a3(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b2 == 17) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 4];
                byte b4 = bArr[i2 + 5];
                this.f5404e = b3 & 255;
                int i8 = 0;
                while (true) {
                    iArr = this.f5407h;
                    if (i8 >= iArr.length) {
                        break;
                    }
                    int i9 = this.f5404e;
                    if (i9 == iArr[i8][0]) {
                        if (i9 == 0) {
                            break;
                        }
                        this.f5403d = i8;
                        break;
                    }
                    i8++;
                }
                if ((b4 & 255) == 0) {
                    int i10 = this.f5403d;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f5403d = 255;
                } else if (i8 < iArr.length) {
                    l0.b0.l0(iArr[i8][1], 0);
                }
                qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 5500);
                return;
            }
            return;
        }
        if (b2 == 18) {
            int i11 = bArr[i2 + 4] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i11 >> 6) & 1);
                qt.y0(2, (i11 >> 7) & 1);
            } else {
                qt.y0(1, (i11 >> 7) & 1);
                qt.y0(2, (i11 >> 6) & 1);
            }
            qt.y0(3, (i11 >> 5) & 1);
            qt.y0(4, (i11 >> 4) & 1);
            qt.y0(5, (i11 >> 3) & 1);
            qt.y0(0, (i11 >> 2) & 1);
            return;
        }
        if (b2 == 33) {
            if (nt.a()) {
                byte b5 = bArr[i2 + 3];
                this.f5405f = (bArr[i2 + 2] & 255) | 128;
                int i12 = 0;
                while (true) {
                    iArr2 = this.f5407h;
                    if (i12 >= iArr2.length) {
                        break;
                    }
                    int i13 = this.f5405f;
                    if (i13 == iArr2[i12][0]) {
                        if (i13 == 0) {
                            break;
                        }
                        this.f5406g = i12;
                        break;
                    }
                    i12++;
                }
                if ((b5 & 255) != 0) {
                    if (i12 < iArr2.length) {
                        l0.b0.l0(iArr2[i12][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i14 = this.f5406g;
                    if (i14 < iArr2.length && i14 != 255) {
                        l0.b0.l0(iArr2[i14][1], 1);
                    }
                    this.f5406g = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 34 && nt.a()) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            if (b6 != 1) {
                if (b6 == 2 && b7 != (i4 = this.f5409j)) {
                    if (b7 > i4) {
                        for (int i15 = 0; i15 < b7 - this.f5409j; i15++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b7 < i4) {
                        for (int i16 = 0; i16 < this.f5409j - b7; i16++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f5409j = b7;
                    return;
                }
                return;
            }
            int i17 = this.f5408i;
            if (b7 != i17) {
                if (b7 > i17) {
                    for (int i18 = 0; i18 < b7 - this.f5408i; i18++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (b7 < i17) {
                    for (int i19 = 0; i19 < this.f5408i - b7; i19++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                this.f5408i = b7;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f5401b.j();
        u0.c.f17386m.d(this.f5410k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 99) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            int i3 = iArr[0];
            int i4 = 1;
            int i5 = i3 + 1;
            if (i5 >= 1) {
                i4 = i5 > 5 ? 5 : i5;
            }
            b3(i4);
        }
    }

    public final void b3(int i2) {
        f5400l = i2;
        z.k.s(227, 2, -14, 7, (byte) i2);
        int iB = this.f5401b.b(1, 0);
        int i3 = f5400l;
        if (iB != i3) {
            this.f5401b.g(1, i3);
        }
    }
}

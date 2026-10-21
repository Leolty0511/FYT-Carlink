package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class z4 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12690c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12691d = {new int[]{1, 22}, new int[]{2, 24}, new int[]{3, 53}, new int[]{4, 12}, new int[]{5, 5}, new int[]{6, 11}, new int[]{7, -1}, new int[]{8, 34}, new int[]{9, 35}, new int[]{10, 32}, new int[]{11, 33}, new int[]{12, 29}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 25}, new int[]{16, 29}, new int[]{17, 38}, new int[]{18, 40}, new int[]{19, 41}, new int[]{20, 42}, new int[]{21, 43}, new int[]{22, 44}, new int[]{23, 45}, new int[]{24, 46}, new int[]{25, 47}, new int[]{26, 48}, new int[]{27, 49}, new int[]{28, 50}, new int[]{29, 51}, new int[]{30, 1}, new int[]{31, 39}, new int[]{32, 18}, new int[]{33, 29}, new int[]{34, 7}, new int[]{35, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f12692e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12693f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12694g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12695h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12696i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f12697j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f12698k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f12699l;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z4.this.f12699l = u0.b.f17306a0;
            z4.this.c3();
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
        mtVar.f8320o = 0;
        z.k.s(227, 2, 36, 5, 3);
        u0.c.f17386m.a(this.f12692e, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == 49) {
            qt.y0(10, (bArr[i2 + 2] >> 6) & 1);
            int i7 = i2 + 3;
            qt.y0(65, (bArr[i7] >> 7) & 1);
            qt.y0(12, (bArr[i7] >> 4) & 1);
            qt.y0(13, (bArr[i7] >> 3) & 1);
            qt.y0(11, (bArr[i7] >> 0) & 1);
            byte b3 = bArr[i2 + 6];
            if (b3 == 3) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (b3 == 6) {
                i4 = 0;
                i6 = 0;
                i5 = 1;
            } else if (b3 != 11) {
                i4 = 0;
                i5 = 0;
                i6 = 0;
            } else {
                i5 = 0;
                i6 = 0;
                i4 = 1;
            }
            qt.y0(18, i4);
            qt.y0(19, i5);
            qt.y0(20, i6);
            qt.y0(21, bArr[i2 + 7] & 255);
            int i8 = i2 + 8;
            if ((bArr[i8] & 255) == 254) {
                qt.y0(27, -2);
                return;
            } else {
                if ((bArr[i8] & 255) == 255) {
                    qt.y0(27, -3);
                    return;
                }
                qt.y0(27, bArr[i8] & 255);
            }
        }
        switch (b2) {
            case 114:
                int i9 = i2 + 4;
                if (bArr[i9] == 7) {
                    o1.u.y();
                }
                if (nt.a()) {
                    this.f12690c = bArr[i9] & 255;
                    int i10 = 0;
                    while (true) {
                        iArr = this.f12691d;
                        if (i10 < iArr.length) {
                            int i11 = this.f12690c;
                            if (i11 != iArr[i10][0]) {
                                i10++;
                            } else if (i11 != 0) {
                                this.f12689b = i10;
                            }
                        }
                    }
                    if (this.f12690c == 0) {
                        int i12 = this.f12689b;
                        if (i12 < iArr.length && i12 != 255) {
                            l0.b0.l0(iArr[i12][1], 1);
                        }
                        this.f12689b = 255;
                    } else if (i10 < iArr.length) {
                        l0.b0.l0(iArr[i10][1], 0);
                    }
                }
                break;
            case 115:
                byte b4 = bArr[i2 + 9];
                if ((b4 & 1) != 0) {
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b4 >> 6) & 1);
                        qt.y0(2, (b4 >> 7) & 1);
                    } else {
                        qt.y0(1, (b4 >> 7) & 1);
                        qt.y0(2, (b4 >> 6) & 1);
                    }
                    qt.y0(3, (b4 >> 5) & 1);
                    qt.y0(4, (b4 >> 4) & 1);
                    qt.y0(5, (b4 >> 3) & 1);
                }
                break;
            case 116:
                qt.y0(98, bArr[i2 + 2]);
                qt.y0(99, bArr[i2 + 3]);
                qt.y0(100, bArr[i2 + 4]);
                qt.y0(101, bArr[i2 + 5]);
                qt.y0(102, bArr[i2 + 6]);
                qt.y0(103, bArr[i2 + 7]);
                qt.y0(104, bArr[i2 + 8]);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f12692e);
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
        switch (i2) {
            case 1:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    this.f12693f = iArr[0];
                    c3();
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    this.f12694g = iArr[0];
                    c3();
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    this.f12695h = iArr[0];
                    c3();
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    this.f12696i = iArr[0];
                    c3();
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    this.f12697j = iArr[0];
                    c3();
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    this.f12698k = iArr[0];
                    c3();
                    break;
                }
                break;
            case 7:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    this.f12699l = iArr[0];
                    c3();
                    break;
                }
                break;
        }
    }

    public final void c3() {
        int i2 = (this.f12693f << 4) | 0 | (this.f12694g << 3) | (this.f12695h << 2) | (this.f12696i << 1) | (this.f12697j << 0);
        int i3 = o0.e.f16778h;
        this.f12698k = i3;
        z.k.s(227, 4, -94, (byte) i2, (byte) ((i3 << 1) | 0 | (this.f12699l << 0)), 0, 0);
    }
}

package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class rl extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9969b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9972e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9970c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9971d = {new int[]{1, 0}, new int[]{2, 22}, new int[]{3, 24}, new int[]{4, 53}, new int[]{5, 12}, new int[]{6, 5}, new int[]{7, 11}, new int[]{8, 58}, new int[]{9, 78}, new int[]{10, 54}, new int[]{11, 3}, new int[]{12, 4}, new int[]{13, 29}, new int[]{14, 32}, new int[]{15, 33}, new int[]{16, 34}, new int[]{17, 35}, new int[]{18, 40}, new int[]{19, 41}, new int[]{20, 42}, new int[]{21, 43}, new int[]{22, 49}, new int[]{23, 40}, new int[]{24, 41}, new int[]{25, 42}, new int[]{26, 43}, new int[]{27, 44}, new int[]{28, 45}, new int[]{29, 46}, new int[]{30, 47}, new int[]{31, 48}, new int[]{32, 50}, new int[]{33, 51}, new int[]{34, 7}, new int[]{35, 8}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9973f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f9974g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 26}, new int[]{4, 18}, new int[]{5, 13}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9975h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f9976i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f9977j = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(rl.this.f9977j);
            rl.this.f9975h = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rl rlVar = rl.this;
            int i2 = rlVar.f9975h - 1;
            rlVar.f9975h = i2;
            if (i2 <= 0) {
                l0.b0.p0(rlVar.f9977j);
                rl.this.f9975h = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 130, 1, 128);
            } else {
                z.k.s(227, 130, 1, 0);
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
        mtVar.f8317l = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f9976i, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f9970c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f9971d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f9970c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f9969b = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f9970c;
            if (i6 == 34) {
                for (int i7 = 0; i7 < (b4 & 255); i7++) {
                    l0.b0.l0(8, 0);
                    l0.b0.l0(8, 1);
                }
                return;
            }
            if (i6 == 35) {
                for (int i8 = 0; i8 < (b4 & 255); i8++) {
                    l0.b0.l0(7, 0);
                    l0.b0.l0(7, 1);
                }
                return;
            }
            int i9 = b4 & 255;
            if (i9 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 == 0) {
                    int i10 = this.f9969b;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f9969b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 3) {
            int i11 = i2 + 2;
            qt.y0(98, (bArr[i11] >> 7) & 1);
            qt.y0(99, (bArr[i11] >> 6) & 1);
            qt.y0(100, (bArr[i11] >> 5) & 1);
            qt.y0(101, (bArr[i11] >> 4) & 1);
            return;
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
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
            return;
        }
        if (b2 == 38) {
            qt.m(bArr[i2 + 3], bArr[i2 + 2], 32768, false, 10740);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 32:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                this.f9973f = b6 & 255;
                int i12 = 0;
                while (true) {
                    iArr2 = this.f9974g;
                    if (i12 < iArr2.length) {
                        int i13 = this.f9973f;
                        if (i13 != iArr2[i12][0]) {
                            i12++;
                        } else if (i13 != 0) {
                            this.f9972e = i12;
                        }
                    }
                }
                int i14 = b7 & 255;
                if (i14 == 1) {
                    if (i12 < iArr2.length) {
                        l0.b0.l0(iArr2[i12][1], 0);
                    }
                } else if (i14 == 0) {
                    int i15 = this.f9972e;
                    if (i15 < iArr2.length && i15 != 255) {
                        l0.b0.l0(iArr2[i15][1], 1);
                    }
                    this.f9972e = 255;
                }
                break;
            case 33:
                int i16 = i2 + 2;
                qt.y0(10, (bArr[i16] >> 7) & 1);
                qt.y0(11, (bArr[i16] >> 6) & 1);
                qt.y0(12, (bArr[i16] >> 5) & 1);
                qt.y0(13, (bArr[i16] >> 3) & 1);
                qt.y0(14, (bArr[i16] >> 2) & 1);
                qt.y0(15, (bArr[i16] >> 1) & 1);
                qt.y0(16, (bArr[i16] >> 0) & 1);
                int i17 = i2 + 3;
                qt.y0(18, (bArr[i17] >> 7) & 1);
                qt.y0(19, (bArr[i17] >> 6) & 1);
                qt.y0(20, (bArr[i17] >> 5) & 1);
                qt.y0(21, 15 & (bArr[i17] >> 0));
                int i18 = i2 + 4;
                int i19 = bArr[i18] & 255;
                int i20 = i2 + 5;
                int i21 = bArr[i20] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i19 = bArr[i20] & 255;
                    i21 = bArr[i18] & 255;
                }
                if (i19 == 0) {
                    qt.y0(27, -2);
                } else if (i19 == 127) {
                    qt.y0(27, -3);
                } else if (i19 < 31 || i19 > 59) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, i19);
                }
                if (i21 == 0) {
                    qt.y0(28, -2);
                } else if (i21 == 127) {
                    qt.y0(28, -3);
                } else if (i21 < 31 || i21 > 59) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, i21);
                }
                qt.y0(53, (bArr[i2 + 6] >> 2) & 1);
                break;
            case 34:
                u0.d.R2(l0.c0.z1(bArr[i2 + 2]));
                u0.d.S2(l0.c0.z1(bArr[i2 + 3]));
                u0.d.T2(l0.c0.z1(bArr[i2 + 4]));
                u0.d.U2(l0.c0.z1(bArr[i2 + 5]));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f9976i);
        l0.b0.p0(this.f9977j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 103) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 131, 1, iArr[0]);
            qt.y0(102, (iArr[0] >> 3) & 1);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 144, 1, iArr[0]);
        }
    }
}

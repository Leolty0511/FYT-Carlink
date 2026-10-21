package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class cl extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4098b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4101e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4099c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4100d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{12, 25}, new int[]{23, 1}, new int[]{48, 18}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4102f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f4103g = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{6, 6}, new int[]{9, 12}, new int[]{23, 34}, new int[]{24, 35}, new int[]{25, 32}, new int[]{26, 33}, new int[]{32, 1}, new int[]{36, 54}, new int[]{40, 18}, new int[]{42, 29}, new int[]{47, 9}, new int[]{51, 24}, new int[]{52, 18}, new int[]{53, 26}, new int[]{55, 55}, new int[]{57, 25}, new int[]{97, 63}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4104h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4105i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4106j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f4107k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f4108l = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(cl.this.f4108l);
            cl clVar = cl.this;
            clVar.f4106j = 5;
            clVar.f4104h = 0;
            clVar.f4105i = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cl clVar = cl.this;
            int i2 = clVar.f4106j - 1;
            clVar.f4106j = i2;
            if (i2 <= 0) {
                l0.b0.p0(clVar.f4108l);
                cl.this.f4106j = 5;
            }
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 3, 106, 5, 240, 1);
                switch (nt.f8633a) {
                    case 459196:
                        z.k.s(227, 2, 36, 1, 83);
                        break;
                    case 5505468:
                        z.k.s(227, 2, 36, 2, 83);
                        break;
                    case 5571004:
                        z.k.s(227, 2, 36, 3, 83);
                        break;
                    case 5636540:
                        z.k.s(227, 2, 36, 4, 83);
                        break;
                }
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
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        mtVar.f8322q = 0;
        mtVar.f8314i = 1;
        mtVar.f8313h = 0;
        switch (nt.f8633a) {
            case 459196:
            case 5505468:
            case 5571004:
                mtVar.f8314i = 1;
                break;
            case 5636540:
                mtVar.f8314i = 0;
                break;
        }
        u0.c.f17386m.a(this.f4107k, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 65) {
            u0.d.R2(l0.c0.k1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.k1(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 97) {
            int i8 = i2 + 2;
            qt.y0(102, (bArr[i8] >> 6) & 3);
            qt.y0(118, (bArr[i8] >> 4) & 3);
            qt.y0(123, (bArr[i8] >> 3) & 1);
            qt.y0(103, (bArr[i8] >> 2) & 1);
            qt.y0(104, (bArr[i8] >> 1) & 1);
            qt.y0(119, (bArr[i8] >> 0) & 1);
            int i9 = i2 + 3;
            qt.y0(105, (bArr[i9] >> 6) & 3);
            qt.y0(106, (bArr[i9] >> 4) & 3);
            qt.y0(107, (bArr[i9] >> 2) & 3);
            qt.y0(108, (bArr[i9] >> 1) & 1);
            qt.y0(109, (bArr[i9] >> 0) & 1);
            int i10 = i2 + 4;
            qt.y0(124, (bArr[i10] >> 7) & 1);
            qt.y0(110, (bArr[i10] >> 6) & 1);
            qt.y0(111, (bArr[i10] >> 4) & 3);
            qt.y0(112, (bArr[i10] >> 3) & 1);
            qt.y0(113, (bArr[i10] >> 2) & 1);
            qt.y0(114, (bArr[i10] >> 1) & 1);
            qt.y0(115, (bArr[i10] >> 0) & 1);
            int i11 = i2 + 5;
            qt.y0(116, (bArr[i11] >> 7) & 1);
            qt.y0(117, (bArr[i11] >> 0) & 127);
            int i12 = i2 + 6;
            qt.y0(120, (bArr[i12] >> 4) & 15);
            qt.y0(121, (bArr[i12] >> 3) & 1);
            int i13 = i2 + 7;
            qt.y0(122, (bArr[i13] >> 6) & 3);
            qt.y0(125, (bArr[i13] >> 4) & 3);
            int i14 = i2 + 8;
            qt.y0(126, (bArr[i14] >> 4) & 15);
            qt.y0(127, (bArr[i14] >> 0) & 15);
            qt.y0(128, (bArr[i2 + 9] >> 4) & 15);
            return;
        }
        if (b2 == 99) {
            int i15 = i2 + 2;
            qt.y0(129, (bArr[i15] >> 7) & 1);
            qt.y0(130, (bArr[i15] >> 6) & 1);
            qt.y0(131, bArr[i2 + 3] & 255);
            qt.y0(132, bArr[i2 + 4] & 255);
            qt.y0(133, bArr[i2 + 5] & 255);
            qt.y0(134, bArr[i2 + 6] & 255);
            return;
        }
        if (b2 == 17) {
            this.f4099c = bArr[i2 + 4] & 255;
            int i16 = bArr[i2 + 5] & 255;
            int i17 = 0;
            while (true) {
                iArr = this.f4100d;
                if (i17 >= iArr.length) {
                    break;
                }
                int i18 = this.f4099c;
                if (i18 == iArr[i17][0]) {
                    if (i18 == 0) {
                        break;
                    }
                    this.f4098b = i17;
                    break;
                }
                i17++;
            }
            int i19 = i16 & 255;
            if (i19 == 1) {
                if (i17 < iArr.length) {
                    l0.b0.l0(iArr[i17][1], 0);
                }
            } else if (i19 == 0) {
                int i20 = this.f4098b;
                if (i20 < iArr.length && i20 != 255) {
                    l0.b0.l0(iArr[i20][1], 1);
                }
                this.f4098b = 255;
            }
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
            o1.x.C(nt.f8643f, 1049, new int[]{3, (bArr[i2 + 2] >> 3) & 1}, null, null);
            return;
        }
        if (b2 == 18) {
            int i21 = bArr[i2 + 4] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i21 >> 6) & 1);
                qt.y0(2, (i21 >> 7) & 1);
            } else {
                qt.y0(1, (i21 >> 7) & 1);
                qt.y0(2, (i21 >> 6) & 1);
            }
            qt.y0(3, (i21 >> 5) & 1);
            qt.y0(4, (i21 >> 4) & 1);
            qt.y0(5, (i21 >> 3) & 1);
            return;
        }
        if (b2 == 33) {
            this.f4102f = bArr[i2 + 2] & 255;
            int i22 = bArr[i2 + 3] & 255;
            int i23 = 0;
            while (true) {
                iArr2 = this.f4103g;
                if (i23 >= iArr2.length) {
                    break;
                }
                int i24 = this.f4102f;
                if (i24 == iArr2[i23][0]) {
                    if (i24 == 0) {
                        break;
                    }
                    this.f4101e = i23;
                    break;
                }
                i23++;
            }
            int i25 = i22 & 255;
            if (i25 == 1) {
                if (i23 < iArr2.length) {
                    l0.b0.l0(iArr2[i23][1], 0);
                    return;
                }
                return;
            } else {
                if (i25 == 0) {
                    int i26 = this.f4101e;
                    if (i26 < iArr2.length && i26 != 255) {
                        l0.b0.l0(iArr2[i26][1], 1);
                    }
                    this.f4101e = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 34) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            if (b3 != 1) {
                if (b3 == 2 && b4 != (i4 = this.f4105i)) {
                    if (b4 > i4) {
                        for (int i27 = 0; i27 < b4 - this.f4105i; i27++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b4 < i4) {
                        for (int i28 = 0; i28 < this.f4105i - b4; i28++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f4105i = b4;
                    return;
                }
                return;
            }
            int i29 = this.f4104h;
            if (b4 != i29) {
                if (b4 > i29) {
                    for (int i30 = 0; i30 < b4 - this.f4104h; i30++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (b4 < i29) {
                    for (int i31 = 0; i31 < this.f4104h - b4; i31++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                this.f4104h = b4;
                return;
            }
            return;
        }
        if (b2 != 49) {
            if (b2 != 50) {
                return;
            }
            int i32 = (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280);
            qt.y0(1031, i32);
            o1.x.C(nt.f8643f, 1049, new int[]{1, i32}, null, null);
            return;
        }
        int i33 = i2 + 2;
        qt.y0(10, (bArr[i33] >> 6) & 1);
        qt.y0(11, (bArr[i33] >> 0) & 3);
        int i34 = i2 + 3;
        qt.y0(12, (bArr[i34] >> 4) & 1);
        qt.y0(13, (bArr[i34] >> 3) & 1);
        int i35 = i2 + 4;
        qt.y0(65, (bArr[i35] >> 4) & 1);
        qt.y0(16, (bArr[i35] >> 5) & 1);
        byte b5 = bArr[i2 + 6];
        if (b5 != 1) {
            if (b5 == 2) {
                i5 = 0;
                i7 = 1;
            } else if (b5 == 3) {
                i5 = 0;
                i7 = 0;
                i6 = 1;
            } else if (b5 != 4) {
                i5 = 0;
                i7 = 0;
            } else {
                i7 = 0;
                i5 = 1;
                i6 = 1;
            }
            i6 = i7;
        } else {
            i5 = 0;
            i6 = 0;
            i7 = 1;
        }
        qt.y0(18, i5);
        qt.y0(19, i7);
        qt.y0(20, i6);
        qt.y0(21, bArr[i2 + 7] & 255);
        int i36 = bArr[i2 + 8] & 255;
        if (i36 == 254) {
            qt.y0(27, -2);
        } else if (i36 == 255) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i36 * 5);
        }
        int i37 = i2 + 10;
        qt.y0(98, (bArr[i37] >> 3) & 1);
        qt.y0(99, (bArr[i37] >> 2) & 1);
        qt.y0(100, (bArr[i37] >> 1) & 1);
        qt.y0(101, (bArr[i37] >> 0) & 1);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f4107k);
        l0.b0.p0(this.f4108l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 135) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 2, 61, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 4, 111, iArr[0], iArr[1], iArr[2], iArr[3]);
        } else if (i2 == 2) {
            z.k.s(227, 3, 106, 5, iArr[0], 1);
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, 8, 109, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], 0, 0, 0);
        }
    }
}

package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class kh extends lt {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f7306g = 255;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7307b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7308c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7309d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{12, 1}, new int[]{33, 29}, new int[]{42, 32}, new int[]{43, 35}, new int[]{44, 4}, new int[]{45, 34}, new int[]{46, 33}, new int[]{48, 3}, new int[]{129, 31}, new int[]{130, 30}, new int[]{145, 7}, new int[]{146, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7310e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f7311f = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = kh.f7306g;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 == 5) {
                    z.k.s(227, 130, 1, 1);
                } else if (kh.f7306g == 5) {
                    z.k.s(227, 130, 1, 0);
                }
                kh.f7306g = u0.b.D;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        u0.c.f17374a.a(this.f7311f, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
        mtVar.f8312g = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 18) {
            int i4 = i2 + 2;
            if (this.f7310e != bArr[i4]) {
                byte b3 = bArr[i4];
                this.f7310e = b3;
                if (b3 == 1 && u0.b.D != 5) {
                    o1.u.j();
                    return;
                } else {
                    if (b3 == 0 && u0.b.D == 5) {
                        l0.b0.l0(5, 0);
                        l0.b0.l0(5, 1);
                        u0.b.f17311c.c(0);
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 36) {
            byte b4 = bArr[i2 + 2];
            if ((b4 & 1) == 1) {
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b4 >> 7) & 1);
                    qt.y0(2, (b4 >> 6) & 1);
                } else {
                    qt.y0(1, (b4 >> 6) & 1);
                    qt.y0(2, (b4 >> 7) & 1);
                }
                qt.y0(4, (b4 >> 5) & 1);
                qt.y0(3, (b4 >> 4) & 1);
                qt.y0(5, (b4 >> 3) & 1);
                qt.y0(0, (b4 >> 2) & 1);
                return;
            }
            return;
        }
        if (b2 == 39) {
            int i5 = (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280);
            u0.d.A3((32768 & i5) != 0 ? 1000 - (65536 - i5) : i5 + 1000);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 19900);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i6 = i2 + 3;
            l0.c0.a((bArr[i6] >> 3) & 1, (bArr[i6] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i6] & 255}, null, null);
            return;
        }
        switch (b2) {
            case 32:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f7308c = b5 & 255;
                int i7 = 0;
                while (true) {
                    iArr = this.f7309d;
                    if (i7 < iArr.length) {
                        int i8 = this.f7308c;
                        if (i8 != iArr[i7][0]) {
                            i7++;
                        } else if (i8 != 0) {
                            this.f7307b = i7;
                        }
                    }
                }
                int i9 = this.f7308c;
                if (i9 != 5) {
                    if (i9 == 129) {
                        for (int i10 = 0; i10 < (b6 & 255); i10++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (i9 == 130) {
                        for (int i11 = 0; i11 < (b6 & 255); i11++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    } else if (i9 == 145) {
                        for (int i12 = 0; i12 < (b6 & 255); i12++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (i9 != 146) {
                        int i13 = b6 & 255;
                        if (i13 == 1) {
                            if (i7 < iArr.length) {
                                l0.b0.l0(iArr[i7][1], 0);
                            }
                        } else if (i13 == 0) {
                            int i14 = this.f7307b;
                            if (i14 < iArr.length && i14 != 255) {
                                l0.b0.l0(iArr[i14][1], 1);
                            }
                            this.f7307b = 255;
                        }
                    } else {
                        for (int i15 = 0; i15 < (b6 & 255); i15++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    }
                } else if ((b6 & 255) == 1) {
                    int i16 = h0.c.E;
                    if (i16 == 3 || i16 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    }
                }
                break;
            case 33:
                byte b7 = bArr[i2 + 2];
                qt.y0(10, (b7 >> 7) & 1);
                qt.y0(11, (b7 >> 6) & 1);
                qt.y0(12, (b7 >> 5) & 1);
                qt.y0(13, (b7 >> 4) & 1);
                qt.y0(33, (b7 >> 3) & 1);
                qt.y0(14, (b7 >> 2) & 1);
                qt.y0(15, (b7 >> 1) & 1);
                qt.y0(16, (b7 >> 0) & 1);
                byte b8 = bArr[i2 + 3];
                qt.y0(18, (b8 >> 7) & 1);
                qt.y0(19, (b8 >> 6) & 1);
                qt.y0(20, (b8 >> 5) & 1);
                qt.y0(49, (b8 >> 4) & 1);
                qt.y0(21, (b8 >> 0) & 15);
                byte b9 = bArr[i2 + 4];
                qt.y0(22, (b9 >> 7) & 1);
                qt.y0(23, (b9 >> 6) & 1);
                qt.y0(24, (b9 >> 5) & 1);
                qt.y0(50, (b9 >> 4) & 1);
                qt.y0(25, (b9 >> 0) & 15);
                int i17 = i2 + 5;
                int i18 = bArr[i17] & 255;
                int i19 = i2 + 6;
                int i20 = bArr[i19] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i18 = bArr[i19] & 255;
                    i20 = bArr[i17] & 255;
                }
                if (i18 == 0) {
                    qt.y0(27, -2);
                } else if (i18 == 31) {
                    qt.y0(27, -3);
                } else if (i18 < 1 || i18 > 30) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, i18);
                }
                if (i20 == 0) {
                    qt.y0(28, -2);
                } else if (i20 == 31) {
                    qt.y0(28, -3);
                } else if (i20 < 1 || i20 > 30) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, i20);
                }
                int i21 = i2 + 7;
                qt.y0(29, (bArr[i21] >> 4) & 7);
                qt.y0(30, (bArr[i21] >> 0) & 7);
                break;
            case 34:
                u0.d.R2(l0.c0.y1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.y1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.y1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.y1(bArr[i2 + 5] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        u0.c.f17374a.d(this.f7311f);
        l0.b0.p0(l0.c0.f13021o);
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
    }
}

package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class xn extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12197b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12200e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12198c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12199d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 29}, new int[]{12, 6}, new int[]{13, 34}, new int[]{14, 35}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12201f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f12202g = {new int[]{1, 40}, new int[]{2, 41}, new int[]{3, 42}, new int[]{4, 43}, new int[]{5, 44}, new int[]{6, 45}, new int[]{7, 46}, new int[]{8, 47}, new int[]{9, 48}, new int[]{10, 49}, new int[]{11, 50}, new int[]{12, 51}, new int[]{16, 24}, new int[]{17, 54}, new int[]{18, 18}, new int[]{19, -1}, new int[]{20, 3}, new int[]{21, 4}, new int[]{22, 5}, new int[]{23, 6}, new int[]{24, 0}, new int[]{25, 38}, new int[]{26, 1}, new int[]{27, 25}, new int[]{28, 8}, new int[]{29, 7}, new int[]{30, 30}, new int[]{31, 31}, new int[]{32, -1}, new int[]{33, 34}, new int[]{34, 35}, new int[]{35, 29}, new int[]{36, 5}, new int[]{128, 53}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f12203h = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 5) {
                z.k.s(227, 192, 2, 7, 0);
            } else {
                z.k.s(227, 192, 2, 12, 0);
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
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8313h = 0;
        qt.z(this.f12203h);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 37) {
            int i4 = i2 + 2;
            qt.y0(10, (bArr[i4] >> 7) & 1);
            qt.y0(11, (bArr[i4] >> 6) & 1);
            qt.y0(12, (bArr[i4] >> 5) & 1);
            qt.y0(13, (bArr[i4] >> 4) & 1);
            qt.y0(14, (bArr[i4] >> 3) & 1);
            qt.y0(65, (bArr[i4] >> 2) & 1);
            qt.y0(16, (bArr[i4] >> 1) & 1);
            int i5 = i2 + 3;
            qt.y0(18, (bArr[i5] >> 7) & 1);
            qt.y0(19, (bArr[i5] >> 6) & 1);
            qt.y0(20, (bArr[i5] >> 5) & 1);
            qt.y0(21, bArr[i5] & 31);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i6 = i2 + 4;
                if ((bArr[i6] & 255) == 0) {
                    qt.y0(28, -2);
                } else if ((bArr[i6] & 255) == 254) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i6] & 255);
                }
                int i7 = i2 + 5;
                if ((bArr[i7] & 255) == 0) {
                    qt.y0(27, -2);
                } else if ((bArr[i7] & 255) == 254) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i7] & 255);
                }
            } else {
                int i8 = i2 + 4;
                if ((bArr[i8] & 255) == 0) {
                    qt.y0(27, -2);
                } else if ((bArr[i8] & 255) == 254) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i8] & 255);
                }
                int i9 = i2 + 5;
                if ((bArr[i9] & 255) == 0) {
                    qt.y0(28, -2);
                } else if ((bArr[i9] & 255) == 254) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i9] & 255);
                }
            }
            int i10 = i2 + 6;
            qt.y0(29, (bArr[i10] >> 0) & 3);
            qt.y0(30, (bArr[i10] >> 2) & 3);
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 125) {
            int i11 = bArr[i2 + 2] & 255;
            if (i11 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i12 = i2 + 3;
                    l0.c0.b((bArr[i12] >> 3) & 1, (bArr[i12] >> 4) & 1, 0);
                    return;
                } else {
                    int i13 = i2 + 3;
                    l0.c0.a((bArr[i13] >> 3) & 1, (bArr[i13] >> 4) & 1, 0);
                    return;
                }
            }
            if (i11 == 3) {
                int i14 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i14);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i14}, null, null);
                return;
            }
            if (i11 != 5) {
                if (i11 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                return;
            }
            int i15 = bArr[i2 + 3] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i15 >> 6) & 1);
                qt.y0(1, (i15 >> 7) & 1);
            } else {
                qt.y0(2, (i15 >> 7) & 1);
                qt.y0(1, (i15 >> 6) & 1);
            }
            qt.y0(4, (i15 >> 5) & 1);
            qt.y0(3, (i15 >> 4) & 1);
            qt.y0(5, (i15 >> 3) & 1);
            qt.y0(0, (i15 >> 2) & 1);
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f12198c = b3 & 255;
                int i16 = 0;
                while (true) {
                    iArr = this.f12199d;
                    if (i16 < iArr.length) {
                        int i17 = this.f12198c;
                        if (i17 != iArr[i16][0]) {
                            i16++;
                        } else if (i17 != 0) {
                            this.f12197b = i16;
                        }
                    }
                }
                int i18 = this.f12198c;
                if (i18 == 13) {
                    for (int i19 = 0; i19 < (b4 & 255); i19++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                } else if (i18 != 14) {
                    int i20 = b4 & 255;
                    if (i20 == 1) {
                        if (i16 < iArr.length) {
                            l0.b0.l0(iArr[i16][1], 0);
                        }
                    } else if (i20 == 0) {
                        int i21 = this.f12197b;
                        if (i21 < iArr.length && i21 != 255) {
                            l0.b0.l0(iArr[i21][1], 1);
                        }
                        this.f12197b = 255;
                    }
                } else {
                    for (int i22 = 0; i22 < (b4 & 255); i22++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                }
                break;
            case 33:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f12201f = b5 & 255;
                int i23 = 0;
                while (true) {
                    iArr2 = this.f12202g;
                    if (i23 < iArr2.length) {
                        int i24 = this.f12201f;
                        if (i24 != iArr2[i23][0]) {
                            i23++;
                        } else if (i24 != 0) {
                            this.f12200e = i23;
                        }
                    }
                }
                switch (this.f12201f) {
                    case 28:
                        for (int i25 = 0; i25 < (b6 & 255); i25++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                        break;
                    case 29:
                        for (int i26 = 0; i26 < (b6 & 255); i26++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                        break;
                    case 30:
                        for (int i27 = 0; i27 < (b6 & 255); i27++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                        break;
                    case 31:
                        for (int i28 = 0; i28 < (b6 & 255); i28++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                        break;
                    case 32:
                        if ((b6 & 255) == 1) {
                            if (u0.b.f17347o == 0) {
                                qt.a(1);
                            } else {
                                qt.a(0);
                            }
                        }
                        break;
                    default:
                        int i29 = b6 & 255;
                        if (i29 == 1) {
                            if (i23 < iArr2.length) {
                                l0.b0.l0(iArr2[i23][1], 0);
                            }
                        } else if (i29 == 0) {
                            int i30 = this.f12200e;
                            if (i30 < iArr2.length && i30 != 255) {
                                l0.b0.l0(iArr2[i30][1], 1);
                            }
                            this.f12200e = 255;
                        }
                        break;
                }
                break;
            case 34:
                u0.d.R2(l0.c0.l1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.l1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.l1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.l1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i31 = i2 + 2;
                int i32 = bArr[i31] & 255;
                int i33 = i2 + 3;
                int i34 = bArr[i33] & 255;
                int i35 = i2 + 4;
                int i36 = bArr[i35] & 255;
                int i37 = i2 + 5;
                int i38 = bArr[i37] & 255;
                if (i32 == 0 && i34 == 0 && i36 == 0 && i38 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i32 || l0.c0.f13014h != i34 || l0.c0.f13015i != i36 || l0.c0.f13016j != i38) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i32;
                l0.c0.f13014h = i34;
                l0.c0.f13015i = i36;
                l0.c0.f13016j = i38;
                u0.d.D2(l0.c0.l1(bArr[i31] & 255));
                u0.d.E2(l0.c0.l1(bArr[i33] & 255));
                u0.d.F2(l0.c0.l1(bArr[i35] & 255));
                u0.d.G2(l0.c0.l1(bArr[i37] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f12203h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 97) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}

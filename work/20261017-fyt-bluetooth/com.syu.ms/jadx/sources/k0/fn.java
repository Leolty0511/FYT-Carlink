package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class fn extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5259b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5262e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5260c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5261d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{18, 13}, new int[]{21, 6}, new int[]{22, 29}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5263f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f5264g = {new int[]{1, 0}, new int[]{2, 7}, new int[]{3, 8}, new int[]{4, 39}, new int[]{5, 64}, new int[]{6, 3}, new int[]{7, 4}, new int[]{8, 54}, new int[]{9, 31}, new int[]{10, 30}, new int[]{11, 40}, new int[]{12, 41}, new int[]{13, 42}, new int[]{14, 43}, new int[]{15, 44}, new int[]{16, 45}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5265h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f5266i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f5267j = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(fn.this.f5267j);
            fn.this.f5265h = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            fn fnVar = fn.this;
            int i2 = fnVar.f5265h - 1;
            fnVar.f5265h = i2;
            if (i2 <= 0) {
                l0.b0.p0(fnVar.f5267j);
                fn.this.f5265h = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            int i3 = nt.f8633a;
            if (i3 == 3670470) {
                z.k.s(227, 132, 1, 0);
            } else {
                if (i3 != 3736006) {
                    return;
                }
                z.k.s(227, 132, 1, 1);
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
        u0.c.f17386m.a(this.f5266i, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 48) {
            qt.l(bArr[i2 + 3] & 255, bArr[i2 + 2] & 255, false, 540);
        }
        if (b2 == 125) {
            int i7 = bArr[i2 + 2] & 255;
            if (i7 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i8 = i2 + 3;
                    l0.c0.b((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
                } else {
                    int i9 = i2 + 3;
                    l0.c0.a((bArr[i9] >> 3) & 1, (bArr[i9] >> 4) & 1, 0);
                }
                o1.x.C(nt.f8643f, 1049, new int[]{11, (bArr[i2 + 3] & 255) | ((u0.b.f17366w << 6) & 64)}, null, null);
                return;
            }
            if (i7 == 3) {
                int i10 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i10);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i10}, null, null);
                return;
            } else {
                if (i7 != 6) {
                    return;
                }
                o1.x[] xVarArr = nt.f8643f;
                int i11 = i2 + 3;
                o1.x.C(xVarArr, 1049, new int[]{12, (bArr[i11] >> 6) & 1}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{3, (bArr[i11] >> 0) & 1}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{4, (bArr[i2 + 4] >> 0) & 15}, null, null);
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 113) {
            qt.y0(103, bArr[i2 + 2] & 255);
            qt.y0(104, bArr[i2 + 3] & 255);
            qt.y0(105, bArr[i2 + 4] & 255);
            return;
        }
        if (b2 == 114) {
            qt.y0(106, bArr[i2 + 2] & 255);
            qt.y0(107, bArr[i2 + 3] & 255);
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f5260c = b3 & 255;
                int i12 = 0;
                while (true) {
                    iArr = this.f5261d;
                    if (i12 < iArr.length) {
                        int i13 = this.f5260c;
                        if (i13 != iArr[i12][0]) {
                            i12++;
                        } else if (i13 != 0) {
                            this.f5259b = i12;
                        }
                    }
                }
                if (this.f5260c == 9) {
                    if ((b4 & 255) == 1) {
                        int i14 = h0.c.E;
                        if (i14 != 3) {
                            if (i14 == 4) {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            } else if (i14 != 5) {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            }
                        }
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    }
                    break;
                } else {
                    int i15 = b4 & 255;
                    if (i15 == 1) {
                        if (i12 < iArr.length) {
                            l0.b0.l0(iArr[i12][1], 0);
                        }
                    } else if (i15 == 0) {
                        int i16 = this.f5259b;
                        if (i16 < iArr.length && i16 != 255) {
                            l0.b0.l0(iArr[i16][1], 1);
                        }
                        this.f5259b = 255;
                    }
                }
                break;
            case 33:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                byte b7 = bArr[i2 + 4];
                byte b8 = bArr[i2 + 5];
                byte b9 = bArr[i2 + 6];
                qt.y0(11, (b5 >> 6) & 1);
                qt.y0(12, (b5 >> 4) & 3);
                qt.y0(13, (b5 >> 3) & 1);
                qt.y0(14, (b5 >> 2) & 1);
                qt.y0(16, (b5 >> 1) & 1);
                int i17 = b6 & 255;
                if (i17 != 1) {
                    if (i17 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i17 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i17 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i17 != 5) {
                        i4 = 0;
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                    }
                    i5 = i6;
                } else {
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                }
                qt.y0(65, i4);
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(21, b7 & 255);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    qt.y0(27, b9 & 255);
                    qt.y0(28, b8 & 255);
                } else {
                    qt.y0(27, b8 & 255);
                    qt.y0(28, b9 & 255);
                }
                break;
            case 34:
                u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i18 = i2 + 2;
                int i19 = bArr[i18] & 255;
                int i20 = i2 + 3;
                int i21 = bArr[i20] & 255;
                int i22 = i2 + 4;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 5;
                int i25 = bArr[i24] & 255;
                if (i19 == 0 && i21 == 0 && i23 == 0 && i25 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i19 || l0.c0.f13014h != i21 || l0.c0.f13015i != i23 || l0.c0.f13016j != i25) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i19;
                l0.c0.f13014h = i21;
                l0.c0.f13015i = i23;
                l0.c0.f13016j = i25;
                u0.d.D2(l0.c0.K0(bArr[i18] & 255));
                u0.d.E2(l0.c0.K0(bArr[i20] & 255));
                u0.d.F2(l0.c0.K0(bArr[i22] & 255));
                u0.d.G2(l0.c0.K0(bArr[i24] & 255));
                break;
            case 36:
                byte b10 = bArr[i2 + 2];
                byte b11 = bArr[i2 + 3];
                this.f5263f = b10 & 255;
                int i26 = 0;
                while (true) {
                    iArr2 = this.f5264g;
                    if (i26 < iArr2.length) {
                        int i27 = this.f5263f;
                        if (i27 != iArr2[i26][0]) {
                            i26++;
                        } else if (i27 != 0) {
                            this.f5262e = i26;
                        }
                    }
                }
                int i28 = this.f5263f;
                if (i28 == 2) {
                    for (int i29 = 0; i29 < (b11 & 255); i29++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (i28 == 3) {
                    for (int i30 = 0; i30 < (b11 & 255); i30++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                } else if (i28 == 9) {
                    for (int i31 = 0; i31 < (b11 & 255); i31++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                } else if (i28 != 10) {
                    int i32 = b11 & 255;
                    if (i32 == 1) {
                        if (i26 < iArr2.length) {
                            l0.b0.l0(iArr2[i26][1], 0);
                        }
                    } else if (i32 == 0) {
                        int i33 = this.f5262e;
                        if (i33 < iArr2.length && i33 != 255) {
                            l0.b0.l0(iArr2[i33][1], 1);
                        }
                        this.f5262e = 255;
                    }
                } else {
                    for (int i34 = 0; i34 < (b11 & 255); i34++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                }
                break;
            default:
                switch (b2) {
                    case 39:
                        qt.y0(99, (bArr[i2 + 2] >> 2) & 1);
                        qt.y0(100, (bArr[i2 + 7] & 255) | ((bArr[i2 + 8] << 8) & 65280));
                        break;
                    case 40:
                        byte b12 = bArr[i2 + 2];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(1, (b12 >> 7) & 1);
                            qt.y0(2, (b12 >> 6) & 1);
                        } else {
                            qt.y0(1, (b12 >> 6) & 1);
                            qt.y0(2, (b12 >> 7) & 1);
                        }
                        qt.y0(3, (b12 >> 4) & 1);
                        qt.y0(4, (b12 >> 5) & 1);
                        qt.y0(5, (b12 >> 3) & 1);
                        qt.y0(0, (b12 >> 2) & 1);
                        break;
                    case 41:
                        qt.y0(101, (bArr[i2 + 2] >> 0) & 3);
                        qt.y0(102, (bArr[i2 + 5] & 255) | ((bArr[i2 + 6] << 8) & 65280));
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f5266i);
        l0.b0.p0(this.f5267j);
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
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            z.k.s(227, 131, 2, (byte) iArr[0], (byte) iArr[1]);
        }
    }
}

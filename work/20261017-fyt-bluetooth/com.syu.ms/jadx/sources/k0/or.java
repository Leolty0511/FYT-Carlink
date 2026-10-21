package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class or extends lt {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f8981m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f8982n = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f8985d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f8983b = new int[5][];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f8984c = new int[15][];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8986e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f8987f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 33}, new int[]{4, 32}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 15}, new int[]{19, 34}, new int[]{20, 35}, new int[]{21, 6}, new int[]{22, 29}, new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 3}, new int[]{132, 4}, new int[]{133, 3}, new int[]{134, 4}, new int[]{135, 0}, new int[]{136, 2}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f8988g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8989h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f8990i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f8991j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public o1.g0 f8992k = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f8993l = 1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(or.this.f8991j);
            or.this.f8989h = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            or orVar = or.this;
            int i2 = orVar.f8989h - 1;
            orVar.f8989h = i2;
            if (i2 <= 0) {
                l0.b0.p0(orVar.f8991j);
                or.this.f8989h = 6;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                or orVar2 = or.this;
                orVar2.d3(orVar2.f8992k.b(1, 1));
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f8990i, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 29) {
            int i4 = i2 + 2;
            int i5 = bArr[i4] & 255;
            int i6 = i2 + 3;
            int i7 = bArr[i6] & 255;
            int i8 = i2 + 4;
            int i9 = bArr[i8] & 255;
            int i10 = i2 + 5;
            int i11 = bArr[i10] & 255;
            if (i5 == 0 && i7 == 0 && i9 == 0 && i11 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i5 || l0.c0.f13014h != i7 || l0.c0.f13015i != i9 || l0.c0.f13016j != i11) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i5;
            l0.c0.f13014h = i7;
            l0.c0.f13015i = i9;
            l0.c0.f13016j = i11;
            u0.d.D2(l0.c0.V0(bArr[i4] & 255));
            u0.d.E2(l0.c0.V0(bArr[i6] & 255));
            u0.d.F2(l0.c0.V0(bArr[i8] & 255));
            u0.d.G2(l0.c0.V0(bArr[i10] & 255));
        }
        if (b2 == 30) {
            u0.d.R2(l0.c0.V0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.V0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.V0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.V0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 39) {
            int i12 = (bArr[i2 + 2] & 255) << 24;
            for (int i13 = 0; i13 < 15; i13++) {
                int i14 = i2 + (i13 * 2);
                int[] iArr2 = {i13, (bArr[i14 + 4] & 255) | ((bArr[i14 + 3] & 255) << 8) | i12};
                if (qt.C0(105, iArr2, this.f8984c[i13])) {
                    this.f8984c[i13] = iArr2;
                }
            }
            return;
        }
        if (b2 == 41) {
            if (this.f8988g) {
                return;
            }
            qt.k(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, 500);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 50) {
            int i15 = (bArr[i2 + 2] >> 3) & 1;
            if (f8981m != i15) {
                f8981m = i15;
                if (qt.k0()) {
                    if (f8981m == 1) {
                        u0.i.l3().g4(131072, true);
                        return;
                    } else {
                        u0.i.l3().g4(131072, false);
                        return;
                    }
                }
                if (f8981m == 1) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            return;
        }
        if (b2 == 125) {
            int i16 = bArr[i2 + 2] & 255;
            if (i16 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i17 = i2 + 3;
                    l0.c0.b((bArr[i17] >> 3) & 1, (bArr[i17] >> 4) & 1, 0);
                } else {
                    int i18 = i2 + 3;
                    l0.c0.a((bArr[i18] >> 3) & 1, (bArr[i18] >> 4) & 1, 0);
                }
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i2 + 3] & 255}, null, null);
                return;
            }
            if (i16 == 6) {
                o1.x[] xVarArr = nt.f8643f;
                int i19 = i2 + 3;
                o1.x.C(xVarArr, 1049, new int[]{12, (bArr[i19] >> 6) & 1}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{3, (bArr[i19] >> 0) & 1}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{4, (bArr[i2 + 4] >> 0) & 15}, null, null);
                return;
            }
            if (i16 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f8988g = true;
                return;
            } else if (i16 == 3) {
                int i20 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i20);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i20}, null, null);
                return;
            } else {
                if (i16 != 4) {
                    return;
                }
                o1.x.C(nt.f8643f, 1049, new int[]{5, ((bArr[i2 + 6] & 255) | ((bArr[i2 + 7] << 8) & 65280)) / 10}, null, null);
                return;
            }
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f8986e = b3 & 255;
                int i21 = 0;
                while (true) {
                    iArr = this.f8987f;
                    if (i21 < iArr.length) {
                        int i22 = this.f8986e;
                        if (i22 != iArr[i21][0]) {
                            i21++;
                        } else if (i22 != 0) {
                            this.f8985d = i21;
                        }
                    }
                }
                int i23 = b4 & 255;
                if (i23 == 1) {
                    if (i21 < iArr.length) {
                        l0.b0.l0(iArr[i21][1], 0);
                    }
                } else if (i23 == 0) {
                    int i24 = this.f8985d;
                    if (i24 < iArr.length && i24 != 255) {
                        l0.b0.l0(iArr[i24][1], 1);
                    }
                    this.f8985d = 255;
                }
                break;
            case 33:
                int i25 = (bArr[i2 + 8] & 255) << 24;
                qt.y0(98, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255) | i25);
                qt.y0(99, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(100, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8) | i25);
                break;
            case 34:
                int i26 = i2 + 2;
                int i27 = (bArr[i26] & 255) << 24;
                int i28 = (bArr[i2 + 4] & 255) | ((bArr[i2 + 3] & 255) << 8);
                if (i28 == 65535) {
                    i28 = 0;
                }
                qt.y0(101, i27 | i28);
                qt.y0(104, bArr[i26] & 255);
                break;
            case 35:
                int i29 = (bArr[i2 + 2] & 255) << 24;
                int i30 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255);
                if (i30 == 65535) {
                    i30 = 0;
                }
                qt.y0(102, i30 | i29);
                for (int i31 = 0; i31 < 5; i31++) {
                    int i32 = i2 + (i31 * 2);
                    int[] iArr3 = {i31, (bArr[i32 + 6] & 255) | ((bArr[i32 + 5] & 255) << 8) | i29};
                    if (qt.C0(103, iArr3, this.f8983b[i31])) {
                        this.f8983b[i31] = iArr3;
                    }
                }
                break;
            case 36:
                int i33 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i33 >> 6) & 1);
                    qt.y0(1, (i33 >> 7) & 1);
                } else {
                    qt.y0(2, (i33 >> 7) & 1);
                    qt.y0(1, (i33 >> 6) & 1);
                }
                qt.y0(4, (i33 >> 5) & 1);
                qt.y0(3, (i33 >> 4) & 1);
                qt.y0(5, (i33 >> 3) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f8990i);
        l0.b0.p0(this.f8991j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 107) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr[0] != 57) {
                z.k.s(227, 131, 2, iArr[0], iArr[1]);
                return;
            } else {
                d3(iArr[1]);
            }
        }
        switch (i2) {
            case 8:
                c3(8, 0);
                break;
            case 9:
                c3(9, 0);
                break;
            case 10:
                c3(10, 0);
                break;
        }
    }

    public final void c3(int i2, int i3) {
        z.k.s(227, -125, 2, (byte) i2, (byte) i3);
    }

    public final void d3(int i2) {
        qt.y0(106, i2);
        f8982n = i2;
        z.k.s(227, 131, 2, 57, i2);
        int iB = this.f8992k.b(1, 1);
        int i3 = f8982n;
        if (iB != i3) {
            this.f8992k.g(1, i3);
        }
    }
}

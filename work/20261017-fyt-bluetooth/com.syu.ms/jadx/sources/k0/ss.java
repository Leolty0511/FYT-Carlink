package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ss extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10443c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10444d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 5}, new int[]{9, 6}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10445e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f10446f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f10447g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ss.this.f10447g);
            ss.this.f10445e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ss ssVar = ss.this;
            int i2 = ssVar.f10445e - 1;
            ssVar.f10445e = i2;
            if (i2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(ssVar.f10447g);
                ss.this.f10445e = 5;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(9);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(9);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(8);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(8);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(10);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(10);
                }
                break;
            case 39:
                int i2 = iArr[1];
                if (i2 == -2) {
                    a3(6);
                    break;
                } else if (i2 == -1) {
                    a3(7);
                    break;
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    a3(2);
                } else {
                    a3(3);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    a3(4);
                } else {
                    a3(5);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        u0.c.f17386m.a(this.f10446f, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f10443c = b3 & 255;
            int i8 = 0;
            while (true) {
                iArr = this.f10444d;
                if (i8 >= iArr.length) {
                    break;
                }
                int i9 = this.f10443c;
                if (i9 == iArr[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f10442b = i8;
                    break;
                }
                i8++;
            }
            if (this.f10443c != 9) {
                int i10 = b4 & 255;
                if (i10 == 1) {
                    if (i8 < iArr.length) {
                        l0.b0.l0(iArr[i8][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i10 == 0) {
                        int i11 = this.f10442b;
                        if (i11 < iArr.length && i11 != 255) {
                            l0.b0.l0(iArr[i11][1], 1);
                        }
                        this.f10442b = 255;
                        return;
                    }
                    return;
                }
            }
            if ((b4 & 255) == 1) {
                int i12 = h0.c.E;
                if (i12 == 3 || i12 == 4 || i12 == 5) {
                    l0.b0.l0(26, 0);
                    l0.b0.l0(26, 1);
                    return;
                } else if (u0.i.l3().r3()) {
                    l0.b0.l0(26, 0);
                    l0.b0.l0(26, 1);
                    return;
                } else {
                    l0.b0.l0(6, 0);
                    l0.b0.l0(6, 1);
                    return;
                }
            }
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
        if (b2 == 64) {
            int i13 = i2 + 2;
            qt.y0(98, (bArr[i13] >> 4) & 15);
            qt.y0(99, (bArr[i13] >> 2) & 3);
            qt.y0(100, (bArr[i13] >> 0) & 3);
            int i14 = i2 + 3;
            qt.y0(101, (bArr[i14] >> 2) & 1);
            qt.y0(102, (bArr[i14] >> 0) & 3);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i15 = i2 + 3;
                l0.c0.b((bArr[i15] >> 3) & 1, (bArr[i15] >> 4) & 1, 0);
                return;
            } else {
                int i16 = i2 + 3;
                l0.c0.a((bArr[i16] >> 3) & 1, (bArr[i16] >> 4) & 1, 0);
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 40) {
            if (b2 != 41) {
                return;
            }
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 7799);
            return;
        }
        int i17 = bArr[i2 + 2] & 255;
        int i18 = bArr[i2 + 3] & 255;
        int i19 = bArr[i2 + 4] & 255;
        qt.y0(10, (i17 >> 7) & 1);
        qt.y0(11, (i17 >> 6) & 1);
        qt.y0(12, (i17 >> 5) & 1);
        qt.y0(63, (i17 >> 4) & 1);
        qt.y0(53, (i17 >> 3) & 1);
        qt.y0(65, (i17 >> 1) & 1);
        int i20 = (i18 >> 4) & 15;
        if (i20 != 1) {
            if (i20 == 2) {
                i4 = 0;
                i6 = 1;
            } else if (i20 == 3) {
                i4 = 0;
                i6 = 0;
                i5 = 1;
            } else if (i20 == 4) {
                i6 = 0;
                i4 = 1;
                i5 = 1;
            } else if (i20 != 5) {
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
        qt.y0(18, i4);
        qt.y0(19, i6);
        qt.y0(20, i5);
        qt.y0(21, (i18 >> 0) & 15);
        if (i19 == 0) {
            i7 = -2;
        } else if (i19 != 11) {
            i7 = (i19 < 1 || i19 > 10) ? -1 : (i19 * 10) + 180;
        } else {
            i7 = -3;
        }
        qt.y0(27, i7);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f10446f);
        l0.b0.p0(this.f10447g);
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
            if (T2(iArr, 2)) {
                z.k.s(227, 224, 2, iArr[0], iArr[1]);
            }
        } else if (i2 == 1 && T2(iArr, 2)) {
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3(int i2) {
        z.k.s(227, -32, 2, i2, 1);
        a.i.a0(100L);
        z.k.s(227, -32, 2, i2, 0);
    }
}

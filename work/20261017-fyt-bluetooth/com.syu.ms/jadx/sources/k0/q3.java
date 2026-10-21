package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class q3 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9450c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9451d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9452e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f9453f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 12}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}, new int[]{129, 25}, new int[]{130, 68}, new int[]{131, 67}, new int[]{172, 2}, new int[]{191, 5}, new int[]{195, 12}, new int[]{197, 7}, new int[]{198, 8}, new int[]{199, 18}, new int[]{200, 26}, new int[]{201, 21}, new int[]{202, 55}, new int[]{203, 1}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f9454g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9455h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9456i = 5;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f9457j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f9458k = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(q3.this.f9458k);
            q3 q3Var = q3.this;
            q3Var.f9456i = 5;
            q3Var.f9454g = 0;
            q3Var.f9455h = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q3 q3Var = q3.this;
            int i2 = q3Var.f9456i - 1;
            q3Var.f9456i = i2;
            if (i2 > 0) {
                z.k.s(227, 2, 36, 4, 17);
            } else {
                l0.b0.p0(q3Var.f9458k);
                q3.this.f9456i = 5;
            }
        }
    }

    public static int a3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 8;
        }
        return 4;
    }

    public static int b3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 2;
        }
        if (i2 == 3) {
            return 4;
        }
        if (i2 != 4) {
            return i2 != 5 ? 15 : 8;
        }
        return 6;
    }

    public static int c3(int i2) {
        switch (i2) {
            case 1:
                return 0;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 9;
            default:
                return 15;
        }
    }

    public static void d3(int i2) {
        int i3;
        int i4 = i2 & 255;
        if (i4 != 255) {
            int i5 = i4 / 2;
            int i6 = i4 % 2;
            if (i4 < 40) {
                i3 = (1000 - ((i6 > 0 ? (40 - i5) - 1 : 40 - i5) * 10)) - (i6 * 5);
            } else {
                i3 = ((i5 - 40) * 10) + 1000 + (i6 * 5);
            }
        } else {
            i3 = 0;
        }
        if (i3 > 600) {
            u0.d.A3(i3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f9457j, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        int[][] iArr2;
        int i7;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            byte b3 = bArr[i2 + 2];
            qt.y0(10, (b3 >> 6) & 1);
            qt.y0(13, (b3 >> 3) & 1);
            byte b4 = bArr[i2 + 3];
            qt.y0(11, (b4 >> 6) & 1);
            int[] iArr3 = new int[1];
            iArr3[0] = ((b4 >> 4) & 1) == 0 ? 1 : 0;
            qt.y0(12, iArr3);
            qt.y0(14, (b4 >> 2) & 1);
            byte b5 = bArr[i2 + 4];
            qt.y0(16, (b5 >> 5) & 1);
            qt.y0(65, (b5 >> 4) & 1);
            byte b6 = bArr[i2 + 6];
            if (b6 == 3) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (b6 != 12) {
                if (b6 == 5) {
                    i4 = 0;
                    i5 = 1;
                } else if (b6 != 6) {
                    i4 = 0;
                    i5 = 0;
                } else {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                }
                i6 = i5;
            } else {
                i5 = 0;
                i4 = 1;
                i6 = 1;
            }
            qt.y0(18, i4);
            qt.y0(19, i5);
            qt.y0(20, i6);
            int i8 = bArr[i2 + 7] & 255;
            qt.y0(21, i8 <= 8 ? i8 : 8);
            byte b7 = bArr[i2 + 8];
            if (b7 == -2) {
                qt.y0(27, -2);
                qt.y0(28, -2);
            } else if (b7 != -1) {
                int i9 = b7 & 255;
                qt.y0(27, i9);
                qt.y0(28, i9);
            } else {
                qt.y0(27, -3);
                qt.y0(28, -3);
            }
            if (nt.a()) {
                d3(bArr[i2 + 13] & 255);
                return;
            }
            return;
        }
        if (b2 == 65) {
            u0.d.R2(a3(bArr[i2 + 2] & 255));
            u0.d.S2(c3(bArr[i2 + 3] & 255));
            u0.d.T2(c3(bArr[i2 + 4] & 255));
            u0.d.U2(a3(bArr[i2 + 5] & 255));
            int i10 = i2 + 6;
            u0.d.D2(a3(bArr[i10] & 255));
            int i11 = i2 + 7;
            u0.d.E2(b3(bArr[i11] & 255));
            int i12 = i2 + 8;
            u0.d.F2(b3(bArr[i12] & 255));
            int i13 = i2 + 9;
            u0.d.G2(a3(bArr[i13] & 255));
            if (bArr[i10] == 0 && bArr[i11] == 0 && bArr[i12] == 0 && bArr[i13] == 0) {
                u0.d.C2(0);
                return;
            } else {
                if (u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                    return;
                }
                return;
            }
        }
        if (b2 == 17) {
            int i14 = i2 + 4;
            int i15 = bArr[i14] & 255;
            int i16 = i2 + 5;
            int i17 = bArr[i16] & 255;
            if (i15 == 57 && i17 == 1 && u0.b.f17347o == 0) {
                if (!o1.u.T(a.b.O)) {
                    qt.t();
                } else if (o1.u.T(a.b.O)) {
                    qt.f();
                }
            }
            if (nt.a()) {
                byte b8 = bArr[i14];
                byte b9 = bArr[i16];
                this.f9450c = b8 & 255;
                int i18 = 0;
                while (true) {
                    iArr = this.f9453f;
                    if (i18 >= iArr.length) {
                        break;
                    }
                    int i19 = this.f9450c;
                    if (i19 == iArr[i18][0]) {
                        if (i19 == 0) {
                            break;
                        }
                        this.f9449b = i18;
                        break;
                    }
                    i18++;
                }
                if ((b9 & 255) == 0) {
                    int i20 = this.f9449b;
                    if (i20 < iArr.length && i20 != 255) {
                        l0.b0.l0(iArr[i20][1], 1);
                    }
                    this.f9449b = 255;
                } else if (i18 < iArr.length) {
                    l0.b0.l0(iArr[i18][1], 0);
                }
                qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                return;
            }
            return;
        }
        if (b2 == 18) {
            byte b10 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b10 >> 6) & 1);
                qt.y0(2, (b10 >> 7) & 1);
            } else {
                qt.y0(1, (b10 >> 7) & 1);
                qt.y0(2, (b10 >> 6) & 1);
            }
            qt.y0(3, (b10 >> 5) & 1);
            qt.y0(4, (b10 >> 4) & 1);
            qt.y0(5, (b10 >> 3) & 1);
            return;
        }
        if (b2 != 33) {
            if (b2 == 34 && nt.a()) {
                byte b11 = bArr[i2 + 2];
                byte b12 = bArr[i2 + 3];
                if (b11 == 1 && b12 != (i7 = this.f9454g)) {
                    if (b12 > i7) {
                        for (int i21 = 0; i21 < b12 - this.f9454g; i21++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (b12 < i7) {
                        for (int i22 = 0; i22 < this.f9454g - b12; i22++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    }
                    this.f9454g = b12;
                    return;
                }
                return;
            }
            return;
        }
        if (nt.a()) {
            byte b13 = bArr[i2 + 3];
            this.f9451d = (bArr[i2 + 2] & 255) | 128;
            int i23 = 0;
            while (true) {
                iArr2 = this.f9453f;
                if (i23 >= iArr2.length) {
                    break;
                }
                int i24 = this.f9451d;
                if (i24 == iArr2[i23][0]) {
                    if (i24 == 0) {
                        break;
                    }
                    this.f9452e = i23;
                    break;
                }
                i23++;
            }
            if ((b13 & 255) != 0) {
                if (i23 < iArr2.length) {
                    l0.b0.l0(iArr2[i23][1], 0);
                }
            } else {
                int i25 = this.f9449b;
                if (i25 < iArr2.length && i25 != 255) {
                    l0.b0.l0(iArr2[i25][1], 1);
                }
                this.f9449b = 255;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f9457j);
        l0.b0.p0(this.f9458k);
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

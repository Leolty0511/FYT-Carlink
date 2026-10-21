package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class jd extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6839c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6840d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6841e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f6842f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{11, 2}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f6843g = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{6, 6}, new int[]{9, 12}, new int[]{18, 58}, new int[]{22, 29}, new int[]{23, 34}, new int[]{24, 35}, new int[]{25, 32}, new int[]{26, 33}, new int[]{27, 34}, new int[]{28, 33}, new int[]{29, 32}, new int[]{30, 35}, new int[]{32, 1}, new int[]{36, 54}, new int[]{43, 5}, new int[]{47, 5}, new int[]{51, 21}, new int[]{62, -1}, new int[]{69, 7}, new int[]{70, 8}, new int[]{76, 18}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6844h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6845i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f6846j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f6847k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f6848l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f6849m = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jd.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jd jdVar = jd.this;
            jdVar.f6844h = 0;
            jdVar.f6845i = 0;
            l0.b0.b(jdVar.f6849m);
            jd.this.f6847k = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jd jdVar = jd.this;
            int i2 = jdVar.f6847k - 1;
            jdVar.f6847k = i2;
            if (i2 <= 0) {
                l0.b0.p0(jdVar.f6849m);
                jd.this.f6847k = 5;
                return;
            }
            if (u0.b.f17306a0 == 1) {
                int i3 = nt.f8637c;
                if (i3 == 19) {
                    z.k.s(227, 2, 36, 5, 12);
                    return;
                }
                if (i3 == 20) {
                    z.k.s(227, 2, 36, 6, 12);
                    return;
                }
                if (i3 == 31) {
                    z.k.s(227, 2, 36, 8, 12);
                } else if (i3 == 33) {
                    z.k.s(227, 2, 36, 7, 12);
                } else {
                    if (i3 != 34) {
                        return;
                    }
                    z.k.s(227, 2, 36, 9, 12);
                }
            }
        }
    }

    public static int b3() {
        int i2 = 3;
        switch (u0.b.D) {
            case 0:
                i2 = 9;
                break;
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 - 65536 == 0) {
                    i2 = 1;
                } else if (1 == i3 - 65536) {
                    i2 = 2;
                } else if (2 != i3 - 65536) {
                    if (i3 + 0 != 0) {
                        i2 = 1 != i3 - 0 ? 0 : 5;
                    } else {
                        i2 = 4;
                    }
                }
                break;
            case 2:
            case 3:
                i2 = 10;
                break;
            case 4:
                int i4 = o0.e.H;
                if (i4 != 1) {
                    i2 = (i4 != 2 && i4 != 3) ? 0 : 13;
                } else {
                    i2 = 7;
                }
                break;
            case 5:
                i2 = 12;
                break;
            case 6:
                i2 = 8;
                break;
            case 7:
                i2 = 11;
                break;
            case 8:
            case 10:
                i2 = 13;
                break;
            case 9:
            default:
                i2 = 0;
                break;
        }
        if (u0.b.f17347o == 1) {
            return 16;
        }
        if (u0.b.f17320f == 0) {
            return 0;
        }
        return i2;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f6848l, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8310e = 1;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        int i2 = nt.f8637c;
        if (i2 != 20) {
            if (i2 != 34) {
                return;
            }
            mtVar.f8314i = 1;
        } else {
            mtVar.f8314i = 1;
            w0.e.f17815a.a(this.f6846j, 1);
            w0.e.f17819e.a(this.f6846j, 1);
            u0.c.f17374a.a(this.f6846j, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int[][] iArr;
        int[][] iArr2;
        int i8;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 26) {
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i9 = i2 + 4;
                l0.c0.b((bArr[i9] >> 1) & 1, (bArr[i9] >> 0) & 1, (bArr[i9] >> 2) & 1);
                return;
            } else {
                int i10 = i2 + 4;
                l0.c0.a((bArr[i10] >> 1) & 1, (bArr[i10] >> 0) & 1, (bArr[i10] >> 2) & 1);
                return;
            }
        }
        if (b2 == 49) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 6];
            byte b7 = bArr[i2 + 7];
            qt.y0(10, (b3 >> 6) & 1);
            qt.y0(11, (b4 >> 6) & 1);
            qt.y0(12, (b4 >> 4) & 1);
            qt.y0(16, (b5 >> 5) & 1);
            qt.y0(15, (b5 >> 4) & 1);
            int i11 = b6 & 255;
            if (i11 == 1) {
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 1;
            } else if (i11 != 3) {
                if (i11 == 5) {
                    i7 = 0;
                    i4 = 0;
                    i5 = 1;
                } else if (i11 == 6) {
                    i7 = 0;
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (i11 == 11) {
                    i7 = 0;
                    i5 = 0;
                    i6 = 0;
                    i4 = 1;
                } else if (i11 != 12) {
                    i7 = 0;
                    i4 = 0;
                    i5 = 0;
                } else {
                    i7 = 0;
                    i5 = 0;
                    i4 = 1;
                    i6 = 1;
                }
                i6 = i5;
            } else {
                i7 = 0;
                i4 = 0;
                i5 = 0;
                i6 = 1;
            }
            qt.y0(49, i7);
            qt.y0(18, i4);
            qt.y0(19, i5);
            qt.y0(20, i6);
            qt.y0(21, b7 & 255);
            int i12 = i2 + 8;
            if ((bArr[i12] & 255) == 254) {
                qt.y0(27, -2);
                return;
            } else if ((bArr[i12] & 255) == 255) {
                qt.y0(27, -3);
                return;
            } else {
                qt.y0(27, bArr[i12] & 255);
                return;
            }
        }
        if (b2 == 65) {
            u0.d.R2(l0.c0.A1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.A1(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.A1(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.A1(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 17) {
            if (nt.a()) {
                byte b8 = bArr[i2 + 4];
                byte b9 = bArr[i2 + 5];
                this.f6839c = b8 & 255;
                int i13 = 0;
                while (true) {
                    iArr = this.f6842f;
                    if (i13 >= iArr.length) {
                        break;
                    }
                    int i14 = this.f6839c;
                    if (i14 == iArr[i13][0]) {
                        if (i14 == 0) {
                            break;
                        }
                        this.f6838b = i13;
                        break;
                    }
                    i13++;
                }
                if ((b9 & 255) == 0) {
                    int i15 = this.f6838b;
                    if (i15 < iArr.length && i15 != 255) {
                        l0.b0.l0(iArr[i15][1], 1);
                    }
                    this.f6838b = 255;
                } else if (i13 < iArr.length) {
                    l0.b0.l0(iArr[i13][1], 0);
                }
            }
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
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
            qt.y0(0, (b10 >> 2) & 1);
            return;
        }
        if (b2 == 33) {
            if (nt.a()) {
                this.f6840d = bArr[i2 + 2] & 255;
                byte b11 = bArr[i2 + 3];
                int i16 = 0;
                while (true) {
                    iArr2 = this.f6843g;
                    if (i16 >= iArr2.length) {
                        break;
                    }
                    int i17 = this.f6840d;
                    if (i17 == iArr2[i16][0]) {
                        if (i17 == 0) {
                            break;
                        }
                        this.f6841e = i16;
                        break;
                    }
                    i16++;
                }
                if (this.f6840d == 62) {
                    if ((b11 & 255) != 1 || o1.u.S("com.syu.carlink")) {
                        return;
                    }
                    o1.u.g("com.syu.carlink");
                    return;
                }
                if ((b11 & 255) != 0) {
                    if (i16 < iArr2.length) {
                        l0.b0.l0(iArr2[i16][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i18 = this.f6841e;
                    if (i18 < iArr2.length && i18 != 255) {
                        l0.b0.l0(iArr2[i18][1], 1);
                    }
                    this.f6841e = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 34 && nt.a()) {
            byte b12 = bArr[i2 + 2];
            byte b13 = bArr[i2 + 3];
            if (b12 == 1) {
                int i19 = this.f6844h;
                if (b13 != i19) {
                    if (b13 > i19) {
                        for (int i20 = 0; i20 < b13 - this.f6844h; i20++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (b13 < i19) {
                        for (int i21 = 0; i21 < this.f6844h - b13; i21++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    }
                    this.f6844h = b13;
                    return;
                }
                return;
            }
            if ((b12 == 2 || b12 == 3 || b12 == 4 || b12 == 5) && b13 != (i8 = this.f6845i)) {
                if (b13 > i8) {
                    for (int i22 = 0; i22 < b13 - this.f6845i; i22++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                } else if (b13 < i8) {
                    for (int i23 = 0; i23 < this.f6845i - b13; i23++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                }
                this.f6845i = b13;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f6848l);
        w0.e.f17815a.d(this.f6846j);
        w0.e.f17819e.d(this.f6846j);
        u0.c.f17374a.d(this.f6846j);
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
        if (i2 == 0 && qt.l0(iArr, 2)) {
            z.k.s(227, 2, 61, iArr[0], iArr[1]);
        }
    }

    public void a3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 145;
        iArr[2] = b3();
        if (u0.b.f17320f == 1) {
            int i4 = u0.b.D;
            if (i4 == 1) {
                iArr[3] = 48;
                iArr[4] = ((w0.d.f17798j & 255) % 6) + 1 + 48;
                int i5 = w0.d.f17796h;
                if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                    int i6 = w0.d.f17797i;
                    iArr[6] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                    iArr[7] = ((i6 % 10000) / 1000) + 48;
                    iArr[8] = ((i6 % 1000) / 100) + 48;
                    iArr[9] = 46;
                    iArr[10] = ((i6 % 100) / 10) + 48;
                } else {
                    int i7 = w0.d.f17797i;
                    if ((i7 % 10000) / 1000 == 1) {
                        iArr[6] = ((i7 % 10000) / 1000) + 48;
                        iArr[7] = ((i7 % 1000) / 100) + 48;
                        iArr[8] = ((i7 % 100) / 10) + 48;
                        iArr[9] = (i7 % 10) + 48;
                    } else {
                        iArr[6] = 48;
                        iArr[7] = ((i7 % 1000) / 100) + 48;
                        iArr[8] = ((i7 % 100) / 10) + 48;
                        iArr[9] = (i7 % 10) + 48;
                    }
                }
            } else if (i4 == 4) {
                int i8 = o0.e.B;
                if (i8 <= 999) {
                    int i9 = i8 / 100;
                    iArr[4] = (i8 / 100) + 48;
                    int i10 = (i8 % 100) / 10;
                    iArr[5] = ((i8 % 100) / 10) + 48;
                    iArr[6] = (i8 % 10) + 48;
                } else {
                    iArr[4] = 57;
                    iArr[5] = 57;
                    iArr[6] = 57;
                }
                iArr[7] = 32;
                int i11 = o0.e.f16794r;
                iArr[8] = ((i11 / 60) / 10) + 48;
                iArr[9] = ((i11 / 60) % 10) + 48;
                iArr[10] = 58;
                iArr[11] = ((i11 % 60) / 10) + 48;
                iArr[12] = ((i11 % 60) % 10) + 48;
            } else if (i4 == 8) {
                int i12 = u0.b.r3;
                if (i12 <= 999) {
                    int i13 = i12 / 100;
                    iArr[4] = (i12 / 100) + 48;
                    int i14 = (i12 % 100) / 10;
                    iArr[5] = ((i12 % 100) / 10) + 48;
                    iArr[6] = (i12 % 10) + 48;
                } else {
                    iArr[4] = 57;
                    iArr[5] = 57;
                    iArr[6] = 57;
                }
                iArr[7] = 32;
                int i15 = u0.b.t3;
                iArr[8] = ((i15 / 60) / 10) + 48;
                iArr[9] = ((i15 / 60) % 10) + 48;
                iArr[10] = 58;
                iArr[11] = ((i15 % 60) / 10) + 48;
                iArr[12] = ((i15 % 60) % 10) + 48;
            }
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i16 = i2 + 1;
            iArr2[i16] = (byte) iArr[i2];
            i2 = i16;
        }
        z.k.s(iArr2);
    }
}

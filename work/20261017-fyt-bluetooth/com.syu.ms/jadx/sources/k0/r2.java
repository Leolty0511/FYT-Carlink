package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class r2 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9759c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9760d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f9761e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{23, 9}, new int[]{24, 25}, new int[]{41, -1}, new int[]{48, 12}, new int[]{49, 25}, new int[]{50, 6}, new int[]{51, 74}, new int[]{52, 75}, new int[]{53, 22}, new int[]{54, 53}, new int[]{55, 18}, new int[]{56, 40}, new int[]{57, 41}, new int[]{58, 42}, new int[]{59, 43}, new int[]{60, 44}, new int[]{61, 45}, new int[]{62, 29}, new int[]{63, 71}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f9762f = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 3}, new int[]{132, 4}, new int[]{133, 2}, new int[]{134, 18}, new int[]{135, 26}, new int[]{136, 18}, new int[]{137, 6}, new int[]{1, 40}, new int[]{2, 41}, new int[]{3, 42}, new int[]{4, 43}, new int[]{5, 44}, new int[]{6, 45}, new int[]{7, 25}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 29}, new int[]{11, 6}, new int[]{12, 21}, new int[]{13, 5}, new int[]{14, 74}, new int[]{15, 75}, new int[]{16, 22}, new int[]{17, 53}, new int[]{18, 18}, new int[]{19, 14}, new int[]{20, 70}, new int[]{48, 7}, new int[]{49, 8}, new int[]{50, 31}, new int[]{51, 30}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f9763g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f9764h = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r2 r2Var = r2.this;
            byte b2 = (byte) (r2Var.f9763g + 1);
            r2Var.f9763g = b2;
            if (b2 > 5) {
                l0.b0.o0(r2Var.f9764h);
                r2.this.f9763g = (byte) 0;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.f8637c == 2) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 1;
            mtVar.f8311f = 0;
            mtVar.f8312g = 0;
        }
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        this.f7886a.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        int[][] iArr2;
        int[][] iArr3;
        int[][] iArr4;
        byte b3 = bArr[i2];
        if (b3 == -16) {
            int i4 = i2 + 4;
            bArr[i4] = (byte) qt.c(bArr[i4] & 255);
            int i5 = i2 + 5;
            bArr[i5] = (byte) qt.c(bArr[i5] & 255);
            int i6 = i2 + 6;
            bArr[i6] = (byte) qt.c(bArr[i6] & 255);
            qt.L(new String(bArr, i2 + 2, i3 - 3));
        }
        if (b3 == 4) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            byte b6 = bArr[i2 + 4];
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
            qt.y0(0, (b4 >> 2) & 1);
            qt.y0(108, (b5 >> 7) & 1);
            qt.y0(109, (b5 >> 6) & 1);
            qt.y0(110, (b5 >> 5) & 1);
            qt.y0(111, (b5 >> 4) & 1);
            qt.y0(112, (b5 >> 3) & 1);
            qt.y0(113, b6);
            return;
        }
        if (b3 == 11) {
            qt.y0(107, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
            return;
        }
        if (b3 == 28) {
            if ((bArr[i2 + 2] & 255) == 1) {
                u0.d.C2(1);
            } else {
                u0.d.C2(0);
            }
            u0.d.R2(b3(bArr[i2 + 3] & 255));
            int i7 = i2 + 4;
            u0.d.S2(b3(bArr[i7] & 255));
            u0.d.T2(b3(bArr[i7] & 255));
            u0.d.U2(b3(bArr[i2 + 5] & 255));
            return;
        }
        if (b3 == 32) {
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            if (nt.a()) {
                this.f9759c = b7 & 255;
                int i8 = 0;
                while (true) {
                    iArr = this.f9761e;
                    if (i8 >= iArr.length) {
                        break;
                    }
                    int i9 = this.f9759c;
                    if (i9 == iArr[i8][0]) {
                        if (i9 == 0) {
                            break;
                        }
                        this.f9758b = i8;
                        break;
                    }
                    i8++;
                }
                if ((b8 & 255) != 0) {
                    if (i8 >= iArr.length || (b2 = this.f9763g) != 0) {
                        return;
                    }
                    this.f9763g = (byte) (b2 + 1);
                    l0.b0.l0(iArr[i8][1], 0);
                    l0.b0.a(this.f9764h);
                    return;
                }
                int i10 = this.f9758b;
                if (i10 < iArr.length && i10 != 255) {
                    l0.b0.l0(iArr[i10][1], 1);
                    l0.b0.o0(this.f9764h);
                    this.f9763g = (byte) 0;
                }
                this.f9758b = 255;
                return;
            }
            return;
        }
        if (b3 == 50) {
            byte b9 = bArr[i2 + 2];
            byte b10 = bArr[i2 + 3];
            byte b11 = bArr[i2 + 4];
            byte b12 = bArr[i2 + 5];
            byte b13 = bArr[i2 + 6];
            byte b14 = bArr[i2 + 7];
            byte b15 = bArr[i2 + 8];
            byte b16 = bArr[i2 + 9];
            qt.y0(99, (b9 >> 7) & 1);
            qt.y0(102, ((b9 << 8) & 65280) | (b10 & 255));
            qt.y0(103, ((b11 << 8) & 65280) | (b12 & 255));
            qt.y0(104, ((b14 << 8) & 65280) | (b13 & 255));
            qt.y0(105, (b16 & 255) | ((b15 << 8) & 65280));
            return;
        }
        if (b3 == 53) {
            if (nt.a()) {
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(a3(bArr[i2 + 3] & 255));
                u0.d.T2(a3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                return;
            }
            return;
        }
        if (b3 == 1) {
            byte b17 = bArr[i2 + 2];
            byte b18 = bArr[i2 + 3];
            if (nt.f8637c == 2) {
                this.f9759c = (b17 & 255) | 128;
                int i11 = 0;
                while (true) {
                    iArr2 = this.f9762f;
                    if (i11 >= iArr2.length) {
                        break;
                    }
                    int i12 = this.f9759c;
                    if (i12 == iArr2[i11][0]) {
                        if (i12 == 0) {
                            break;
                        }
                        this.f9758b = i11;
                        break;
                    }
                    i11++;
                }
                int i13 = b18 & 255;
                if (i13 == 1) {
                    if (i11 < iArr2.length) {
                        l0.b0.l0(iArr2[i11][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i13 != 0 || i11 > iArr2.length) {
                        return;
                    }
                    l0.b0.l0(iArr2[this.f9758b][1], 1);
                    return;
                }
            }
            return;
        }
        if (b3 != 2) {
            return;
        }
        byte b19 = bArr[i2 + 2];
        byte b20 = bArr[i2 + 3];
        if (nt.a()) {
            this.f9759c = b19 & 255;
            int i14 = 0;
            while (true) {
                iArr4 = this.f9761e;
                if (i14 >= iArr4.length) {
                    break;
                }
                int i15 = this.f9759c;
                if (i15 == iArr4[i14][0]) {
                    if (i15 == 0) {
                        break;
                    }
                    this.f9758b = i14;
                    break;
                }
                i14++;
            }
            int i16 = b20 & 255;
            if (i16 == 1) {
                if (i14 < iArr4.length) {
                    l0.b0.l0(iArr4[i14][1], 0);
                    return;
                }
                return;
            } else {
                if (i16 == 0) {
                    int i17 = this.f9758b;
                    if (i17 < iArr4.length && i17 != 255) {
                        l0.b0.l0(iArr4[i17][1], 1);
                    }
                    this.f9758b = 255;
                    return;
                }
                return;
            }
        }
        if (nt.f8637c == 2) {
            this.f9759c = b19 & 255;
            int i18 = 0;
            while (true) {
                iArr3 = this.f9762f;
                if (i18 >= iArr3.length) {
                    break;
                }
                int i19 = this.f9759c;
                if (i19 == iArr3[i18][0]) {
                    if (i19 == 0) {
                        break;
                    }
                    this.f9758b = i18;
                    break;
                }
                i18++;
            }
            switch (this.f9759c) {
                case 48:
                    for (int i20 = 0; i20 < (b20 & 255); i20++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    break;
                case 49:
                    for (int i21 = 0; i21 < (b20 & 255); i21++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    break;
                case 50:
                    for (int i22 = 0; i22 < (b20 & 255); i22++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    break;
                case 51:
                    for (int i23 = 0; i23 < (b20 & 255); i23++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    break;
                default:
                    int i24 = b20 & 255;
                    if (i24 == 1) {
                        if (i18 < iArr3.length) {
                            l0.b0.l0(iArr3[i18][1], 0);
                        }
                    } else if (i24 == 0) {
                        int i25 = this.f9758b;
                        if (i25 < iArr3.length && i25 != 255) {
                            l0.b0.l0(iArr3[i25][1], 1);
                        }
                        this.f9758b = 255;
                    }
                    break;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 115) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1 && T2(iArr, 1)) {
            z.k.s(227, 129, 1, iArr[0]);
        }
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
    }

    public final int b3(int i2) {
        if (i2 == 1) {
            return 9;
        }
        if (i2 == 2) {
            return 6;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 0;
        }
        return 3;
    }
}

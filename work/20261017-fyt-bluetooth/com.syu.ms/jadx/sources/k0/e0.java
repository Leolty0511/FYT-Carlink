package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class e0 extends lt {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4656d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f4654b = new int[5][];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f4655c = new int[15][];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4657e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f4658f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, -1}, new int[]{4, 12}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 27}, new int[]{9, 28}, new int[]{12, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f4659g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f4660h = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e0 e0Var = e0.this;
            byte b2 = (byte) (e0Var.f4659g + 1);
            e0Var.f4659g = b2;
            if (b2 > 5) {
                l0.b0.o0(e0Var.f4660h);
                e0.this.f4659g = (byte) 0;
            }
        }
    }

    public static int a3(int i2) {
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
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2 + 1];
        if (b3 == -24) {
            if (nt.a()) {
                if ((bArr[i2 + 5] & 255) == 1) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            return;
        }
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 17) {
            byte b4 = bArr[i2 + 6];
            qt.y0(5, (b4 >> 3) & 1);
            qt.y0(3, (b4 >> 4) & 1);
            qt.y0(4, (b4 >> 5) & 1);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b4 >> 6) & 1);
                qt.y0(1, (b4 >> 7) & 1);
            } else {
                qt.y0(1, (b4 >> 6) & 1);
                qt.y0(2, (b4 >> 7) & 1);
            }
            if (nt.a()) {
                byte b5 = bArr[i2 + 4];
                byte b6 = bArr[i2 + 5];
                this.f4657e = b5 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f4658f;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f4657e;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f4656d = i4;
                        break;
                    }
                    i4++;
                }
                int i6 = b6 & 255;
                if (i6 == 1) {
                    if (i4 < iArr.length && (b2 = this.f4659g) == 0) {
                        this.f4659g = (byte) (b2 + 1);
                        l0.b0.l0(iArr[i4][1], 0);
                        l0.b0.a(this.f4660h);
                    }
                } else if (i6 == 0) {
                    int i7 = this.f4656d;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                        l0.b0.o0(this.f4660h);
                        this.f4659g = (byte) 0;
                    }
                    this.f4656d = 255;
                }
                qt.p(bArr[i2 + 8] & 255, bArr[i2 + 9] & 255, 134);
                return;
            }
            return;
        }
        if (b3 == 19) {
            int i8 = (bArr[i2 + 12] & 255) << 24;
            int i9 = (bArr[i2 + 13] & 255) << 24;
            qt.y0(98, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255) | i8);
            qt.y0(99, i9 | ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
            qt.y0(117, i8 | ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
            qt.y0(100, ((bArr[i2 + 8] & 255) << 8) | (bArr[i2 + 9] & 255));
            qt.y0(99, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] & 255) << 8));
            return;
        }
        if (b3 == 65) {
            if (nt.a()) {
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                int i10 = i2 + 3;
                u0.d.S2(a3(bArr[i10] & 255));
                u0.d.T2(a3(bArr[i10] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                u0.d.D2(a3(bArr[i2 + 6] & 255));
                int i11 = i2 + 7;
                u0.d.E2(a3(bArr[i11] & 255));
                u0.d.F2(a3(bArr[i11] & 255));
                u0.d.G2(a3(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b3 == 101) {
            int i12 = i2 + 3;
            qt.y0(123, (bArr[i12] >> 3) & 1);
            int[] iArr2 = new int[1];
            iArr2[0] = ((bArr[i12] >> 5) & 1) != 0 ? 1 : 0;
            qt.y0(124, iArr2);
            qt.y0(105, (bArr[i12] >> 1) & 1);
            qt.y0(106, (bArr[i12] >> 0) & 1);
            return;
        }
        if (b3 != 22) {
            if (b3 != 23) {
                return;
            }
            int i13 = (bArr[i2 + 30] & 255) << 24;
            for (int i14 = 0; i14 < 15; i14++) {
                int i15 = (i14 * 2) + i2;
                int[] iArr3 = {i14, (bArr[i15 + 3] & 255) | ((bArr[i15 + 2] & 255) << 8) | i13};
                if (qt.C0(116, iArr3, this.f4655c[i14])) {
                    this.f4655c[i14] = iArr3;
                }
            }
            return;
        }
        int i16 = (bArr[i2 + 14] & 255) << 24;
        int i17 = i2 + 2;
        int i18 = i2 + 3;
        qt.y0(98, ((bArr[i17] & 255) << 8) | (bArr[i18] & 255) | i16);
        qt.y0(114, ((bArr[i17] & 255) << 8) | (bArr[i18] & 255) | i16);
        for (int i19 = 0; i19 < 5; i19++) {
            int i20 = (i19 * 2) + i2;
            int[] iArr4 = {i19, (bArr[i20 + 5] & 255) | ((bArr[i20 + 4] & 255) << 8) | i16};
            if (qt.C0(115, iArr4, this.f4654b[i19])) {
                this.f4654b[i19] = iArr4;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 125) {
            return;
        }
        int i4 = 0;
        if (i2 == 115) {
            while (i4 < 5) {
                o1.x.v(bVar, i2, this.f4654b[i4]);
                i4++;
            }
        } else {
            if (i2 != 116) {
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                return;
            }
            while (i4 < 15) {
                o1.x.v(bVar, i2, this.f4655c[i4]);
                i4++;
            }
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 9:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 106, (byte) 4, (byte) iArr[0]);
                    break;
                }
                break;
            case 10:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 106, (byte) 5, (byte) iArr[0]);
                    break;
                }
                break;
            case 13:
                z.k.s(227, 4, 27, 3, 1, 2, 255);
                break;
            case 14:
                z.k.s(227, 4, 27, 3, 1, 1, 255);
                break;
            case 15:
                z.k.s(227, 4, 27, 2, 2, 2, 255);
                break;
            case 16:
                c3((byte) 4, (byte) 2, (byte) 1);
                z.k.s(227, 4, 27, 2, 2, 1, 255);
                break;
            case 17:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 106, (byte) 2, (byte) iArr[0]);
                    break;
                }
                break;
            case 18:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 106, (byte) 1, (byte) iArr[0]);
                    break;
                }
                break;
        }
    }

    public final void c3(byte b2, byte b3, byte b4) {
        z.k.s(227, 2, b2, b3, b4);
    }
}

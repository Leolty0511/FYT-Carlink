package k0;

import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class yb extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12442c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12443d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12444e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f12445f = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 12}, new int[]{132, 13}, new int[]{133, 18}, new int[]{134, 26}, new int[]{139, 12}, new int[]{136, 3}, new int[]{137, 4}, new int[]{138, 2}, new int[]{160, 27}, new int[]{161, 28}, new int[]{197, 76}, new int[]{198, 1}, new int[]{199, 18}, new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{22, 13}, new int[]{36, 2}, new int[]{40, 18}, new int[]{43, 5}, new int[]{47, 55}, new int[]{53, 1}, new int[]{54, 5}, new int[]{55, 16}, new int[]{56, 39}, new int[]{57, 1}, new int[]{71, 74}, new int[]{72, 75}, new int[]{73, 15}, new int[]{74, 38}, new int[]{75, 21}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12446g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12447h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12448i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f12449j = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            yb ybVar = yb.this;
            ybVar.f12446g = 0;
            ybVar.f12447h = 0;
            ybVar.f12448i = 0;
        }
    }

    public static int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 9;
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
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        if (nt.a()) {
            qt.z(l0.g0.f13049e);
            w0.e.f17815a.a(l0.g0.f13049e, 1);
            w0.e.f17819e.a(l0.g0.f13049e, 1);
            u0.c.f17386m.a(this.f12449j, 1);
        }
        z.k.s(227, 2, 36, 39, 9);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int[][] iArr2;
        int i10;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 17) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 5];
                this.f12443d = (bArr[i2 + 4] & 255) | 128;
                int i11 = 0;
                while (true) {
                    iArr = this.f12445f;
                    if (i11 >= iArr.length) {
                        break;
                    }
                    int i12 = this.f12443d;
                    if (i12 == iArr[i11][0]) {
                        if (i12 == 0) {
                            break;
                        }
                        this.f12441b = i11;
                        break;
                    }
                    i11++;
                }
                if ((b3 & 255) != 0) {
                    if (i11 < iArr.length) {
                        l0.b0.l0(iArr[i11][1], 0);
                        return;
                    }
                    return;
                }
                int i13 = this.f12442c;
                if (i13 < iArr.length) {
                    i4 = 255;
                    if (i13 != 255) {
                        l0.b0.l0(iArr[i13][1], 1);
                    }
                } else {
                    i4 = 255;
                }
                this.f12442c = i4;
                return;
            }
            return;
        }
        if (b2 != 49) {
            if (b2 == 65) {
                if (nt.a()) {
                    u0.d.R2(a3(bArr[i2 + 2] & 255));
                    u0.d.S2(a3(bArr[i2 + 3] & 255));
                    u0.d.T2(a3(bArr[i2 + 4] & 255));
                    u0.d.U2(a3(bArr[i2 + 5] & 255));
                    u0.d.D2(a3(bArr[i2 + 6] & 255));
                    u0.d.E2(a3(bArr[i2 + 7] & 255));
                    u0.d.F2(a3(bArr[i2 + 8] & 255));
                    u0.d.G2(a3(bArr[i2 + 9] & 255));
                    return;
                }
                return;
            }
            if (b2 == 33) {
                if (nt.a()) {
                    this.f12444e = bArr[i2 + 2] & 255;
                    byte b4 = bArr[i2 + 3];
                    int i14 = 0;
                    while (true) {
                        iArr2 = this.f12445f;
                        if (i14 >= iArr2.length) {
                            break;
                        }
                        int i15 = this.f12444e;
                        if (i15 == iArr2[i14][0]) {
                            if (i15 == 0) {
                                break;
                            }
                            this.f12442c = i14;
                            break;
                        }
                        i14++;
                    }
                    if ((b4 & 255) != 0) {
                        if (i14 < iArr2.length) {
                            l0.b0.l0(iArr2[i14][1], 0);
                            return;
                        }
                        return;
                    } else {
                        int i16 = this.f12442c;
                        if (i16 < iArr2.length && i16 != 255) {
                            l0.b0.l0(iArr2[i16][1], 1);
                        }
                        this.f12442c = 255;
                        return;
                    }
                }
                return;
            }
            if (b2 == 34 && nt.a()) {
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                if (b5 == 1) {
                    int i17 = this.f12446g;
                    if (b6 != i17) {
                        if (b6 > i17) {
                            for (int i18 = 0; i18 < b6 - this.f12446g; i18++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                        } else if (b6 < i17) {
                            for (int i19 = 0; i19 < this.f12446g - b6; i19++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                        }
                        this.f12446g = b6;
                        return;
                    }
                    return;
                }
                if (b5 != 2) {
                    if (b5 == 3 && b6 != (i10 = this.f12448i)) {
                        if (b6 > i10) {
                            for (int i20 = 0; i20 < b6 - this.f12448i; i20++) {
                                l0.b0.l0(4, 0);
                            }
                            l0.b0.l0(4, 1);
                        } else if (b6 < i10) {
                            for (int i21 = 0; i21 < this.f12448i - b6; i21++) {
                                l0.b0.l0(3, 0);
                            }
                            l0.b0.l0(3, 1);
                        }
                        this.f12448i = b6;
                        return;
                    }
                    return;
                }
                int i22 = this.f12447h;
                if (b6 != i22) {
                    if (b6 > i22) {
                        for (int i23 = 0; i23 < b6 - this.f12447h; i23++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b6 < i22) {
                        for (int i24 = 0; i24 < this.f12447h - b6; i24++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f12447h = b6;
                    return;
                }
                return;
            }
            return;
        }
        byte b7 = bArr[i2 + 2];
        byte b8 = bArr[i2 + 3];
        byte b9 = bArr[i2 + 4];
        byte b10 = bArr[i2 + 6];
        byte b11 = bArr[i2 + 7];
        qt.y0(10, (b7 >> 6) & 1);
        qt.y0(13, (b7 >> 3) & 1);
        qt.y0(62, (b7 >> 2) & 1);
        qt.y0(11, (b7 >> 0) & 3);
        int[] iArr3 = new int[1];
        iArr3[0] = ((b8 >> 4) & 1) == 1 ? 0 : 1;
        qt.y0(12, iArr3);
        qt.y0(65, (b9 >> 4) & 1);
        if (b10 == 1) {
            i5 = 0;
            i6 = 0;
            i7 = 0;
            i8 = 0;
            i9 = 1;
        } else if (b10 == 2) {
            i6 = 0;
            i7 = 0;
            i8 = 0;
            i9 = 0;
            i5 = 1;
        } else if (b10 != 3) {
            if (b10 == 5) {
                i5 = 0;
                i6 = 0;
                i9 = 0;
                i7 = 1;
            } else if (b10 != 6) {
                switch (b10) {
                    case 11:
                        i5 = 0;
                        i7 = 0;
                        i8 = 0;
                        i9 = 0;
                        i6 = 1;
                        break;
                    case 12:
                        i5 = 0;
                        i8 = 0;
                        i9 = 0;
                        i6 = 1;
                        i7 = 1;
                        break;
                    case 13:
                        i5 = 0;
                        i7 = 0;
                        i9 = 0;
                        i6 = 1;
                        i8 = 1;
                        break;
                    case 14:
                        i5 = 0;
                        i9 = 0;
                        i6 = 1;
                        i7 = 1;
                        break;
                    default:
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        i8 = 0;
                        i9 = 0;
                        break;
                }
            } else {
                i5 = 0;
                i6 = 0;
                i7 = 0;
                i9 = 0;
                i8 = 1;
            }
            i8 = i7;
        } else {
            i5 = 0;
            i6 = 0;
            i8 = 0;
            i9 = 0;
            i7 = 1;
        }
        qt.y0(15, i5);
        qt.y0(18, i6);
        qt.y0(20, i7);
        qt.y0(19, i8);
        qt.y0(49, i9);
        qt.y0(21, b11);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            int i25 = bArr[i2 + 9] & 255;
            if (i25 == 254) {
                qt.y0(27, -2);
            } else if (i25 != 255) {
                qt.y0(27, i25 * 5);
            } else {
                qt.y0(27, -3);
            }
            int i26 = bArr[i2 + 8] & 255;
            if (i26 == 254) {
                qt.y0(28, -2);
            } else if (i26 != 255) {
                qt.y0(28, i26 * 5);
            } else {
                qt.y0(28, -3);
            }
        } else {
            int i27 = bArr[i2 + 8] & 255;
            if (i27 == 254) {
                qt.y0(27, -2);
            } else if (i27 != 255) {
                qt.y0(27, i27 * 5);
            } else {
                qt.y0(27, -3);
            }
            int i28 = bArr[i2 + 9] & 255;
            if (i28 == 254) {
                qt.y0(28, -2);
            } else if (i28 != 255) {
                qt.y0(28, i28 * 5);
            } else {
                qt.y0(28, -3);
            }
        }
        if (nt.a()) {
            int i29 = bArr[i2 + 13] & 255;
            if (i29 == 0) {
                u0.d.A3(0);
            } else {
                u0.d.A3((i29 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            qt.q0(l0.g0.f13049e);
            w0.e.f17815a.d(l0.g0.f13049e);
            w0.e.f17819e.d(l0.g0.f13049e);
            u0.c.f17386m.d(this.f12449j);
        }
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

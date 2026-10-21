package k0;

import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class jc extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6830c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6831d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6832e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f6833f = {new int[]{131, 12}, new int[]{136, 3}, new int[]{137, 4}, new int[]{138, 2}, new int[]{160, 27}, new int[]{161, 28}, new int[]{129, 7}, new int[]{130, 8}, new int[]{133, 18}, new int[]{134, 26}, new int[]{197, 76}, new int[]{198, 1}, new int[]{199, 18}, new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{22, 13}, new int[]{36, 2}, new int[]{40, 18}, new int[]{54, 5}, new int[]{55, 16}, new int[]{56, 39}, new int[]{57, 1}, new int[]{74, 38}, new int[]{75, 21}, new int[]{43, 5}, new int[]{53, 1}, new int[]{132, 13}, new int[]{139, 12}, new int[]{47, 55}, new int[]{71, 74}, new int[]{72, 75}, new int[]{73, 15}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f6834g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6835h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f6836i = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jc jcVar = jc.this;
            jcVar.f6834g = 0;
            jcVar.f6835h = 0;
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
            u0.c.f17386m.a(this.f6836i, 1);
        }
        z.k.s(227, 2, 36, 37, 9);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int[][] iArr2;
        int i9;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 17) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 5];
                this.f6831d = (bArr[i2 + 4] & 255) | 128;
                int i10 = 0;
                while (true) {
                    iArr = this.f6833f;
                    if (i10 >= iArr.length) {
                        break;
                    }
                    int i11 = this.f6831d;
                    if (i11 == iArr[i10][0]) {
                        if (i11 == 0) {
                            break;
                        }
                        this.f6829b = i10;
                        break;
                    }
                    i10++;
                }
                if ((b3 & 255) != 0) {
                    if (i10 < iArr.length) {
                        l0.b0.l0(iArr[i10][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i12 = this.f6829b;
                    if (i12 < iArr.length && i12 != 255) {
                        l0.b0.l0(iArr[i12][1], 1);
                    }
                    this.f6829b = 255;
                    return;
                }
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
                    this.f6832e = bArr[i2 + 2] & 255;
                    byte b4 = bArr[i2 + 3];
                    int i13 = 0;
                    while (true) {
                        iArr2 = this.f6833f;
                        if (i13 >= iArr2.length) {
                            break;
                        }
                        int i14 = this.f6832e;
                        if (i14 == iArr2[i13][0]) {
                            if (i14 == 0) {
                                break;
                            }
                            this.f6830c = i13;
                            break;
                        }
                        i13++;
                    }
                    if ((b4 & 255) != 0) {
                        if (i13 < iArr2.length) {
                            l0.b0.l0(iArr2[i13][1], 0);
                            return;
                        }
                        return;
                    } else {
                        int i15 = this.f6830c;
                        if (i15 < iArr2.length && i15 != 255) {
                            l0.b0.l0(iArr2[i15][1], 1);
                        }
                        this.f6830c = 255;
                        return;
                    }
                }
                return;
            }
            if (b2 == 34 && nt.a()) {
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                if (b5 == 1) {
                    int i16 = this.f6834g;
                    if (b6 != i16) {
                        if (b6 > i16) {
                            for (int i17 = 0; i17 < b6 - this.f6834g; i17++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                        } else if (b6 < i16) {
                            for (int i18 = 0; i18 < this.f6834g - b6; i18++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                        }
                        this.f6834g = b6;
                        return;
                    }
                    return;
                }
                if ((b5 == 2 || b5 == 3) && b6 != (i9 = this.f6835h)) {
                    if (b6 > i9) {
                        for (int i19 = 0; i19 < b6 - this.f6835h; i19++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b6 < i9) {
                        for (int i20 = 0; i20 < this.f6835h - b6; i20++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f6835h = b6;
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
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 0;
            i8 = 1;
        } else if (b10 == 2) {
            i5 = 0;
            i6 = 0;
            i7 = 0;
            i8 = 0;
            i4 = 1;
        } else if (b10 != 3) {
            if (b10 == 5) {
                i4 = 0;
                i5 = 0;
                i8 = 0;
                i6 = 1;
            } else if (b10 != 6) {
                switch (b10) {
                    case 11:
                        i4 = 0;
                        i6 = 0;
                        i7 = 0;
                        i8 = 0;
                        i5 = 1;
                        break;
                    case 12:
                        i4 = 0;
                        i7 = 0;
                        i8 = 0;
                        i5 = 1;
                        i6 = 1;
                        break;
                    case 13:
                        i4 = 0;
                        i6 = 0;
                        i8 = 0;
                        i5 = 1;
                        i7 = 1;
                        break;
                    case 14:
                        i4 = 0;
                        i8 = 0;
                        i5 = 1;
                        i6 = 1;
                        break;
                    default:
                        i4 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        i8 = 0;
                        break;
                }
            } else {
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i8 = 0;
                i7 = 1;
            }
            i7 = i6;
        } else {
            i4 = 0;
            i5 = 0;
            i7 = 0;
            i8 = 0;
            i6 = 1;
        }
        qt.y0(15, i4);
        qt.y0(18, i5);
        qt.y0(20, i6);
        qt.y0(19, i7);
        qt.y0(49, i8);
        qt.y0(21, b11);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            int i21 = bArr[i2 + 9] & 255;
            if (i21 == 254) {
                qt.y0(27, -2);
            } else if (i21 != 255) {
                qt.y0(27, i21 * 5);
            } else {
                qt.y0(27, -3);
            }
            int i22 = bArr[i2 + 8] & 255;
            if (i22 == 254) {
                qt.y0(28, -2);
            } else if (i22 != 255) {
                qt.y0(28, i22 * 5);
            } else {
                qt.y0(28, -3);
            }
        } else {
            int i23 = bArr[i2 + 8] & 255;
            if (i23 == 254) {
                qt.y0(27, -2);
            } else if (i23 != 255) {
                qt.y0(27, i23 * 5);
            } else {
                qt.y0(27, -3);
            }
            int i24 = bArr[i2 + 9] & 255;
            if (i24 == 254) {
                qt.y0(28, -2);
            } else if (i24 != 255) {
                qt.y0(28, i24 * 5);
            } else {
                qt.y0(28, -3);
            }
        }
        if (nt.a()) {
            int i25 = bArr[i2 + 13] & 255;
            if (i25 == 0) {
                u0.d.A3(0);
            } else {
                u0.d.A3((i25 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(l0.g0.f13049e);
        w0.e.f17815a.d(l0.g0.f13049e);
        w0.e.f17819e.d(l0.g0.f13049e);
        u0.c.f17386m.d(this.f6836i);
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

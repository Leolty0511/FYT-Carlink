package k0;

import android.os.Process;
import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class p3 extends lt {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f9075m;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9078d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9079e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9080f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f9076b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f9077c = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f9081g = 255;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f9082h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 12}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}, new int[]{129, 0}, new int[]{130, 3}, new int[]{131, 4}, new int[]{134, 6}, new int[]{135, 21}, new int[]{137, 12}, new int[]{151, 34}, new int[]{152, 35}, new int[]{153, 32}, new int[]{154, 33}, new int[]{160, 1}, new int[]{164, 54}, new int[]{168, 18}, new int[]{170, 29}, new int[]{172, 2}, new int[]{175, 5}, new int[]{179, 24}, new int[]{180, 18}, new int[]{181, 26}, new int[]{183, 55}, new int[]{191, 5}, new int[]{194, 38}, new int[]{195, 12}, new int[]{197, 7}, new int[]{198, 8}, new int[]{199, 18}, new int[]{200, 26}, new int[]{201, 21}, new int[]{202, 55}, new int[]{203, 1}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9083i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f9084j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f9085k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f9086l = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p3 p3Var = p3.this;
            p3Var.f9083i = 0;
            p3Var.f9084j = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 3, -75, (byte) time.hour, (byte) time.minute, (byte) time.second);
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
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        this.f9076b.a();
        qt.z(this.f9086l);
        e3(this.f9076b.b(1, 0));
        u0.c.f17386m.a(this.f9085k, 1);
    }

    /* JADX WARN: Code duplicated, block: B:124:0x0291  */
    /* JADX WARN: Code duplicated, block: B:127:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:130:0x02b6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:131:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:132:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:133:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:136:0x02d4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:137:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:138:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:139:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:142:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:180:? A[RETURN, SYNTHETIC] */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2;
        int i8;
        byte b3;
        int[][] iArr;
        int[][] iArr2;
        int i9;
        byte b4 = bArr[i2 + 1];
        if (b4 == -24) {
            if (nt.f8637c == 3) {
                return;
            }
            int i10 = (bArr[i2 + 3] & 255) - 1;
            if (i10 < 0) {
                i10 = 0;
            } else if (i10 > 2) {
                i10 = 2;
            }
            qt.y0(Process.MEDIA_UID, i10);
            if ((bArr[i2 + 2] & 255) != 0) {
                if (o1.u.T(a.b.O)) {
                    return;
                }
                qt.t();
                return;
            } else {
                if (o1.u.T(a.b.O)) {
                    qt.f();
                    return;
                }
                return;
            }
        }
        if (b4 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b4 == 49) {
            byte b5 = bArr[i2 + 2];
            qt.y0(10, (b5 & 64) == 0 ? 0 : 1);
            qt.y0(14, (b5 >> 2) & 1);
            int[] iArr3 = new int[1];
            iArr3[0] = (b5 & 3) == 0 ? 0 : 1;
            qt.y0(11, iArr3);
            byte b6 = bArr[i2 + 3];
            int[] iArr4 = new int[1];
            iArr4[0] = (b6 & 16) == 0 ? 1 : 0;
            qt.y0(12, iArr4);
            qt.y0(13, (b6 >> 3) & 1);
            byte b7 = bArr[i2 + 4];
            qt.y0(16, (b7 >> 5) & 1);
            qt.y0(65, (b7 >> 4) & 1);
            byte b8 = bArr[i2 + 6];
            if (b8 != 10) {
                switch (b8) {
                    case 2:
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                        break;
                    case 3:
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                        break;
                    case 4:
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                        break;
                    case 5:
                        i4 = 0;
                        i6 = 1;
                        i5 = i6;
                        break;
                    case 6:
                        i4 = 0;
                        i5 = 0;
                        i6 = 1;
                        break;
                    case 7:
                        i5 = 0;
                        i4 = 1;
                        i6 = 1;
                        break;
                    default:
                        i4 = 0;
                        break;
                }
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                int i11 = bArr[i2 + 7] & 255;
                qt.y0(21, i11 <= 8 ? i11 : 8);
                i7 = i2 + 8;
                b2 = bArr[i7];
                i8 = i2 + 9;
                b3 = bArr[i8];
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b2 = bArr[i8];
                    b3 = bArr[i7];
                }
                if (b2 != -1) {
                    qt.y0(27, -3);
                } else if (b2 != 0) {
                    qt.y0(27, b2 & 255);
                } else {
                    qt.y0(27, -2);
                }
                if (b3 != -1) {
                    qt.y0(28, -3);
                } else if (b3 != 0) {
                    qt.y0(28, b3 & 255);
                } else {
                    qt.y0(28, -2);
                }
                if (nt.a()) {
                    d3(bArr[i2 + 13] & 255);
                    return;
                }
                return;
            }
            i4 = 1;
            i6 = i4;
            i5 = i6;
            qt.y0(18, i4);
            qt.y0(19, i6);
            qt.y0(20, i5);
            int i12 = bArr[i2 + 7] & 255;
            qt.y0(21, i12 <= 8 ? i12 : 8);
            i7 = i2 + 8;
            b2 = bArr[i7];
            i8 = i2 + 9;
            b3 = bArr[i8];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b2 = bArr[i8];
                b3 = bArr[i7];
            }
            if (b2 != -1) {
                qt.y0(27, -3);
            } else if (b2 != 0) {
                qt.y0(27, b2 & 255);
            } else {
                qt.y0(27, -2);
            }
            if (b3 != -1) {
                qt.y0(28, -3);
            } else if (b3 != 0) {
                qt.y0(28, b3 & 255);
            } else {
                qt.y0(28, -2);
            }
            if (nt.a()) {
                d3(bArr[i2 + 13] & 255);
                return;
            }
            return;
        }
        if (b4 == 65) {
            u0.d.R2(a3(bArr[i2 + 2] & 255));
            u0.d.S2(c3(bArr[i2 + 3] & 255));
            u0.d.T2(c3(bArr[i2 + 4] & 255));
            u0.d.U2(a3(bArr[i2 + 5] & 255));
            int i13 = i2 + 6;
            u0.d.D2(a3(bArr[i13] & 255));
            int i14 = i2 + 7;
            u0.d.E2(b3(bArr[i14] & 255));
            int i15 = i2 + 8;
            u0.d.F2(b3(bArr[i15] & 255));
            int i16 = i2 + 9;
            u0.d.G2(a3(bArr[i16] & 255));
            if (bArr[i13] == 0 && bArr[i14] == 0 && bArr[i15] == 0 && bArr[i16] == 0) {
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
        if (b4 == 17) {
            if (nt.a()) {
                byte b9 = bArr[i2 + 4];
                byte b10 = bArr[i2 + 5];
                this.f9079e = b9 & 255;
                int i17 = 0;
                while (true) {
                    iArr = this.f9082h;
                    if (i17 >= iArr.length) {
                        break;
                    }
                    int i18 = this.f9079e;
                    if (i18 == iArr[i17][0]) {
                        if (i18 == 0) {
                            break;
                        }
                        this.f9078d = i17;
                        break;
                    }
                    i17++;
                }
                if ((b10 & 255) == 0) {
                    int i19 = this.f9078d;
                    if (i19 < iArr.length && i19 != 255) {
                        l0.b0.l0(iArr[i19][1], 1);
                    }
                    this.f9078d = 255;
                } else if (i17 < iArr.length) {
                    l0.b0.l0(iArr[i17][1], 0);
                }
                qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                return;
            }
            return;
        }
        if (b4 == 18) {
            byte b11 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b11 >> 6) & 1);
                qt.y0(2, (b11 >> 7) & 1);
            } else {
                qt.y0(1, (b11 >> 7) & 1);
                qt.y0(2, (b11 >> 6) & 1);
            }
            qt.y0(3, (b11 >> 5) & 1);
            qt.y0(4, (b11 >> 4) & 1);
            qt.y0(5, (b11 >> 3) & 1);
            return;
        }
        if (b4 != 33) {
            if (b4 == 34 && nt.a()) {
                byte b12 = bArr[i2 + 2];
                byte b13 = bArr[i2 + 3];
                if (b12 == 1 && b13 != (i9 = this.f9083i)) {
                    if (b13 > i9) {
                        for (int i20 = 0; i20 < b13 - this.f9083i; i20++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (b13 < i9) {
                        for (int i21 = 0; i21 < this.f9083i - b13; i21++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    }
                    this.f9083i = b13;
                    return;
                }
                return;
            }
            return;
        }
        if (nt.a()) {
            byte b14 = bArr[i2 + 3];
            this.f9080f = (bArr[i2 + 2] & 255) | 128;
            int i22 = 0;
            while (true) {
                iArr2 = this.f9082h;
                if (i22 >= iArr2.length) {
                    break;
                }
                int i23 = this.f9080f;
                if (i23 == iArr2[i22][0]) {
                    if (i23 == 0) {
                        break;
                    }
                    this.f9081g = i22;
                    break;
                }
                i22++;
            }
            if ((b14 & 255) != 0) {
                if (i22 < iArr2.length) {
                    l0.b0.l0(iArr2[i22][1], 0);
                }
            } else {
                int i24 = this.f9081g;
                if (i24 < iArr2.length && i24 != 255) {
                    l0.b0.l0(iArr2[i24][1], 1);
                }
                this.f9081g = 255;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f9076b.j();
        qt.q0(this.f9086l);
        u0.c.f17386m.d(this.f9085k);
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
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            if (iArr[0] < 0) {
                iArr[0] = 0;
            } else if (iArr[0] > 2) {
                iArr[0] = 2;
            }
            iArr[0] = iArr[0] + 1;
            e3(iArr[0]);
        }
    }

    public final void e3(int i2) {
        f9075m = i2;
        z.k.s(227, 2, -14, 10, (byte) i2);
        int iB = this.f9076b.b(1, 0);
        int i3 = f9075m;
        if (iB != i3) {
            this.f9076b.g(1, i3);
        }
    }
}

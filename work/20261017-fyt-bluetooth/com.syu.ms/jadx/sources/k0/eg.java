package k0;

import android.content.Intent;
import android.os.SystemProperties;
import android.text.Spanned;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class eg extends lt {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f4750j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f4751k = 255;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4752b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4755e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4753c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4754d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{21, 6}, new int[]{22, 29}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4756f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f4757g = {new int[]{1, 25}, new int[]{2, 7}, new int[]{3, 8}, new int[]{4, 75}, new int[]{5, 74}, new int[]{6, 2}, new int[]{7, 22}, new int[]{8, 4}, new int[]{9, 3}, new int[]{16, 12}, new int[]{17, 67}, new int[]{18, 68}, new int[]{19, 40}, new int[]{20, 41}, new int[]{21, 42}, new int[]{22, 43}, new int[]{23, 44}, new int[]{24, 45}, new int[]{25, 56}, new int[]{32, 56}, new int[]{33, 1}, new int[]{34, 5}, new int[]{35, 38}, new int[]{36, 55}, new int[]{37, 63}, new int[]{38, 54}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f4758h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f4759i = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = eg.f4751k;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13 && eg.f4751k == 13) {
                    z.k.s(227, 202, 8, 0, 0, 0, 0, 0, 0, 0, 0);
                }
                eg.f4751k = u0.b.D;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            eg.this.a3();
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
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8320o = 0;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            mt mtVar2 = this.f7886a;
            mtVar2.f8314i = 0;
            mtVar2.f8322q = 1;
        }
        int i2 = nt.f8633a;
        if (i2 == 12845495 || i2 == 5898693) {
            z.k.s(227, 114, 9, 7, 3, 1, 1, 3, 227, i.a.Theme_actionModeWebSearchDrawable, 251, 251);
        } else if (i2 == 12779959 || i2 == 5833157) {
            z.k.s(227, 114, 9, 7, 3, 2, 1, 3, 227, i.a.Theme_actionModeWebSearchDrawable, i.a.Theme_preferenceHeaderPanelStyle, 251);
        }
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f4759i);
        u0.c.f17374a.a(this.f4758h, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 17) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f4756f = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f4757g;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f4756f;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f4755e = i4;
                    break;
                }
                i4++;
            }
            if (u0.b.D == 13) {
                z.k.s(227, 116, 2, b3, b4);
                return;
            }
            int i6 = this.f4756f;
            if (i6 == 2) {
                for (int i7 = 0; i7 < (b4 & 255); i7++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
            }
            if (i6 == 3) {
                for (int i8 = 0; i8 < (b4 & 255); i8++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            if (i6 == 4 || i6 == 5) {
                if ((b4 & 255) == 1) {
                    e3();
                    return;
                }
                return;
            }
            if (i6 == 7) {
                if ((b4 & 255) == 1) {
                    d3();
                    return;
                }
                return;
            }
            int i9 = b4 & 255;
            if (i9 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 == 0) {
                    int i10 = this.f4755e;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f4755e = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 28) {
            int i11 = i2 + 2;
            int i12 = bArr[i11] & 255;
            if (i12 == 1) {
                qt.y0(99, bArr[i2 + 3] & 255);
                qt.y0(101, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(100, bArr[i2 + 6] & 255);
            } else if (i12 == 2) {
                qt.y0(104, bArr[i2 + 3] & 255);
                qt.y0(105, bArr[i2 + 4] & 255);
                int i13 = i2 + 6;
                qt.y0(106, (bArr[i13] >> 0) & 1);
                qt.y0(107, (bArr[i13] >> 1) & 1);
                qt.y0(108, bArr[i2 + 7] & 255);
                qt.y0(109, bArr[i2 + 8] & 255);
            }
            if (f4750j != (bArr[i11] & 255)) {
                f4750j = bArr[i11] & 255;
                qt.y0(119, bArr[i11] & 255);
                return;
            }
            return;
        }
        if (b2 == 32) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f4753c = b5 & 255;
            int i14 = 0;
            while (true) {
                iArr2 = this.f4754d;
                if (i14 >= iArr2.length) {
                    break;
                }
                int i15 = this.f4753c;
                if (i15 == iArr2[i14][0]) {
                    if (i15 == 0) {
                        break;
                    }
                    this.f4752b = i14;
                    break;
                }
                i14++;
            }
            int i16 = b6 & 255;
            if (i16 == 1) {
                if (i14 < iArr2.length) {
                    l0.b0.l0(iArr2[i14][1], 0);
                    return;
                }
                return;
            } else {
                if (i16 == 0) {
                    int i17 = this.f4752b;
                    if (i17 < iArr2.length && i17 != 255) {
                        l0.b0.l0(iArr2[i17][1], 1);
                    }
                    this.f4752b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 51) {
            qt.y0(120, ((bArr[i2 + 2] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(121, ((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(122, bArr[i2 + 8] & 255);
            qt.y0(123, (bArr[i2 + 10] & 255) | ((bArr[i2 + 9] << 8) & 65280));
            return;
        }
        if (b2 == 56) {
            qt.y0(133, bArr[i2 + 6] & 255);
            qt.y0(134, bArr[i2 + 7] & 255);
            qt.y0(135, bArr[i2 + 8] & 255);
            qt.y0(136, bArr[i2 + 9] & 255);
            return;
        }
        if (b2 == 65) {
            int i18 = i2 + 2;
            qt.y0(124, (bArr[i18] >> 7) & 1);
            qt.y0(125, (bArr[i18] >> 6) & 1);
            qt.y0(126, (bArr[i18] >> 5) & 1);
            qt.y0(127, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(128, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(129, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
            int i19 = i2 + 9;
            int i20 = i2 + 10;
            qt.y0(130, ((bArr[i19] << 8) & 65280) | (bArr[i20] & 255));
            int i21 = ((bArr[i19] << 8) & 65280) | (bArr[i20] & 255);
            u0.d.B3((32768 & i21) != 0 ? 1000 - (65536 - i21) : i21 + 1000);
            qt.y0(131, ((bArr[i2 + 11] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(132, (bArr[i2 + 15] & 255) | ((bArr[i2 + 14] << 8) & 65280));
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 1700);
            return;
        }
        if (b2 == 42) {
            int i22 = bArr[i2 + 2] & 255;
            int i23 = bArr[i2 + 3] & 255;
            int i24 = bArr[i2 + 6] & 255;
            qt.y0(10, (i22 >> 7) & 1);
            qt.y0(11, (i22 >> 6) & 1);
            qt.y0(12, (i22 >> 5) & 1);
            qt.y0(13, (i22 >> 4) & 1);
            qt.y0(14, (i22 >> 2) & 1);
            qt.y0(15, (i22 >> 1) & 1);
            qt.y0(16, (i22 >> 0) & 1);
            qt.y0(18, (i23 >> 7) & 1);
            qt.y0(19, (i23 >> 6) & 1);
            qt.y0(20, (i23 >> 5) & 1);
            qt.y0(21, 15 & (i23 >> 0));
            int i25 = i2 + 4;
            int i26 = bArr[i25] & 255;
            int i27 = i2 + 5;
            int i28 = bArr[i27] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i26 = bArr[i27] & 255;
                i28 = bArr[i25] & 255;
            }
            if (i26 == 254) {
                qt.y0(27, -2);
            } else if (i26 == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i26);
            }
            if (i28 == 254) {
                qt.y0(28, -2);
            } else if (i28 == 255) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i28);
            }
            qt.y0(29, (i24 >> 4) & 3);
            qt.y0(30, (i24 >> 0) & 3);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            int i29 = i2 + 2;
            qt.y0(114, (bArr[i29] >> 4) & 15);
            qt.y0(115, (bArr[i29] >> 0) & 15);
            int i30 = i2 + 3;
            qt.y0(112, (bArr[i30] >> 4) & 15);
            qt.y0(113, 15 & (bArr[i30] >> 0));
            qt.y0(117, bArr[i2 + 5] & 255);
            qt.y0(116, (bArr[i2 + 7] >> 7) & 1);
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.P0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.P0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.P0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.P0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i31 = i2 + 2;
                int i32 = bArr[i31] & 255;
                int i33 = i2 + 3;
                int i34 = bArr[i33] & 255;
                int i35 = i2 + 4;
                int i36 = bArr[i35] & 255;
                int i37 = i2 + 5;
                int i38 = bArr[i37] & 255;
                if (i32 == 0 && i34 == 0 && i36 == 0 && i38 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i32 || l0.c0.f13014h != i34 || l0.c0.f13015i != i36 || l0.c0.f13016j != i38) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                u0.d.D2(l0.c0.P0(bArr[i31] & 255));
                u0.d.E2(l0.c0.P0(bArr[i33] & 255));
                u0.d.F2(l0.c0.P0(bArr[i35] & 255));
                u0.d.G2(l0.c0.P0(bArr[i37] & 255));
                break;
            case 36:
                byte b7 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b7 >> 6) & 1);
                    qt.y0(1, (b7 >> 7) & 1);
                } else {
                    qt.y0(1, (b7 >> 6) & 1);
                    qt.y0(2, (b7 >> 7) & 1);
                }
                qt.y0(3, (b7 >> 4) & 1);
                qt.y0(4, (b7 >> 5) & 1);
                qt.y0(5, (b7 >> 3) & 1);
                qt.y0(0, (b7 >> 2) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f4759i);
        u0.c.f17374a.d(this.f4758h);
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 137) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 116, 2, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, 218, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 144, 1, iArr[0]);
        }
    }

    public final void a3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        b3(iArr);
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i3 = i2 + 1;
            iArr2[i3] = iArr[i2];
            i2 = i3;
        }
        z.k.s(iArr2);
    }

    public final void b3(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        int i2 = u0.b.D;
        if (i2 == 1) {
            iArr[2] = 1;
            iArr[3] = 0;
            return;
        }
        if (i2 == 13) {
            int i3 = f4750j;
            if (i3 == 1) {
                iArr[2] = 1;
            } else if (i3 == 2) {
                iArr[2] = 17;
            } else {
                iArr[2] = 7;
            }
            iArr[3] = 0;
            return;
        }
        if (i2 != 4) {
            if (i2 == 5) {
                iArr[2] = 7;
                iArr[3] = 0;
                return;
            }
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    iArr[2] = 8;
                    iArr[3] = 0;
                    break;
                default:
                    iArr[2] = 7;
                    iArr[3] = 0;
                    break;
            }
            return;
        }
        int i4 = o0.e.H;
        if (i4 == 1) {
            iArr[2] = 17;
            iArr[3] = 0;
        } else if (i4 == 2) {
            iArr[2] = 8;
            iArr[3] = 0;
        } else if (i4 == 3) {
            iArr[2] = 8;
            iArr[3] = 0;
        }
    }

    public final void d3() {
        if (qt.i0().equals("com.syu.carinfo.daojun.tianlai.djTianlaiCd")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.daojun.tianlai.djTianlaiCd");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void e3() {
        if (qt.i0().equals("com.syu.carinfo.daojun.tianlai.djTianlaiRadio")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.daojun.tianlai.djTianlaiRadio");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }
}

package k0;

import android.os.Process;
import android.os.SystemProperties;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class ti extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10645c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10646d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 13}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{21, 6}, new int[]{22, 29}, new int[]{135, 0}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10647e = 7;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10648f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f10649g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10650h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f10651i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f10652j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f10653k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f10654l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f10655m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f10656n = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f10657o = new b();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f10658p = new c();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f10659q = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ti.this.b3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o1.m.a().postDelayed(ti.this.f10658p, 2000L);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, -112, 2, 85, 0);
            z.k.s(227, -112, 2, 36, 0);
            z.k.s(227, -112, 2, 48, 0);
            z.k.s(227, -112, 2, 111, 0);
            z.k.s(227, -112, 2, 107, 0);
            z.k.s(227, -112, 2, 108, 0);
            z.k.s(227, -112, 2, 109, 0);
            z.k.s(227, -112, 2, 110, 0);
            z.k.s(227, -112, 2, 112, 0);
            z.k.s(227, -112, 2, 113, 0);
            z.k.s(227, -112, 2, 114, 0);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f10657o, 1);
        if (nt.f8637c == 133) {
            l0.b0.a(this.f10656n);
        }
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 1;
        mtVar.f8313h = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        byte b2 = bArr[i2];
        if (b2 == 6) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b3 >> 6) & 1);
                qt.y0(1, (b3 >> 7) & 1);
            } else {
                qt.y0(2, (b3 >> 7) & 1);
                qt.y0(1, (b3 >> 6) & 1);
            }
            int i9 = (b3 >> 5) & 1;
            qt.y0(4, i9);
            int i10 = (b3 >> 4) & 1;
            qt.y0(3, i10);
            int i11 = (b3 >> 3) & 1;
            qt.y0(5, i11);
            this.f10653k = (((b3 >> 7) & 1) << 1) | ((b3 >> 6) & 1) | (i10 << 2) | (i9 << 3) | (i11 << 4);
            if (nt.f8637c == 133) {
                int i12 = i2 + 3;
                if (this.f10655m != ((bArr[i12] >> 1) & 1)) {
                    int i13 = (bArr[i12] >> 1) & 1;
                    this.f10655m = i13;
                    if (i13 == 1) {
                        qt.a(1);
                        this.f10647e |= 16;
                        return;
                    } else {
                        qt.a(0);
                        this.f10647e &= 239;
                    }
                }
                return;
            }
            return;
        }
        if (b2 == 32) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            this.f10645c = b4 & 255;
            int i14 = 0;
            while (true) {
                iArr = this.f10646d;
                if (i14 >= iArr.length) {
                    break;
                }
                int i15 = this.f10645c;
                if (i15 == iArr[i14][0]) {
                    if (i15 == 0) {
                        break;
                    }
                    this.f10644b = i14;
                    break;
                }
                i14++;
            }
            if ((b5 & 255) != 0) {
                if (i14 < iArr.length) {
                    l0.b0.l0(iArr[i14][1], 0);
                    return;
                }
                return;
            } else {
                int i16 = this.f10644b;
                if (i16 < iArr.length && i16 != 255) {
                    l0.b0.l0(iArr[i16][1], 1);
                }
                this.f10644b = 255;
                return;
            }
        }
        if (b2 == 41) {
            int i17 = i2 + 2;
            int i18 = i2 + 3;
            int i19 = (bArr[i17] & 255) | ((bArr[i18] << 8) & 65280);
            if ((i19 & 32768) == 32768) {
                int i20 = (65536 - i19) / 284;
                i4 = 20;
                if (i20 > 20) {
                    i20 = 20;
                }
                i5 = 20 - i20;
            } else {
                i4 = 20;
                int i21 = i19 / 284;
                if (i21 > 20) {
                    i21 = 20;
                }
                i5 = i21 + 20;
            }
            qt.i(bArr[i17], bArr[i18], true, 5696);
            int i22 = (i5 * 128) / i4;
            this.f10650h = i22;
            if (i22 > 255) {
                this.f10650h = 255;
                return;
            }
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 82) {
            int i23 = i2 + 2;
            this.f10648f = (((bArr[i23] >> 6) & 1) | ((((bArr[i23] >> 7) & 1) << 1) & 2)) & 3;
            return;
        }
        if (b2 == 85) {
            int i24 = i2 + 2;
            int i25 = bArr[i24] & 255;
            int i26 = i2 + 3;
            int i27 = bArr[i26] & 255;
            int i28 = bArr[i2 + 4] & 255;
            byte b6 = bArr[i2 + 5];
            int i29 = bArr[i2 + 6] & 255;
            byte b7 = bArr[i2 + 7];
            int i30 = bArr[i2 + 8] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i25 = bArr[i26] & 255;
                i27 = bArr[i24] & 255;
            }
            if (i25 == 16) {
                qt.y0(27, -2);
            } else if (i25 != 80) {
                qt.y0(27, i25);
            } else {
                qt.y0(27, -3);
            }
            if (i27 == 16) {
                qt.y0(28, -2);
            } else if (i27 != 80) {
                qt.y0(28, i27);
            } else {
                qt.y0(28, -3);
            }
            qt.y0(21, (i28 >> 0) & 15);
            int i31 = (i28 >> 4) & 15;
            if (i31 != 1) {
                if (i31 == 2) {
                    i6 = 0;
                    i8 = 1;
                } else if (i31 == 3) {
                    i6 = 0;
                    i8 = 0;
                    i7 = 1;
                } else if (i31 == 4) {
                    i8 = 0;
                    i6 = 1;
                    i7 = 1;
                } else if (i31 != 6) {
                    i6 = 0;
                    i8 = 0;
                } else {
                    i8 = 0;
                    i7 = 0;
                    i6 = 1;
                }
                i7 = i8;
            } else {
                i6 = 0;
                i7 = 0;
                i8 = 1;
            }
            qt.y0(18, i6);
            qt.y0(19, i8);
            qt.y0(20, i7);
            qt.y0(77, i31);
            qt.y0(13, (i29 >> 0) & 1);
            qt.y0(11, (i29 >> 1) & 1);
            qt.y0(14, (i29 >> 2) & 1);
            qt.y0(12, (i29 >> 3) & 1);
            qt.y0(53, (i29 >> 4) & 1);
            qt.y0(16, (i29 >> 6) & 1);
            qt.y0(15, (i29 >> 7) & 1);
            qt.y0(38, (i30 >> 0) & 1);
            qt.y0(65, (i30 >> 1) & 1);
            return;
        }
        if (b2 == 104) {
            int i32 = i2 + 3;
            int i33 = i2 + 2;
            qt.y0(1032, ((bArr[i32] << 8) & 65280) | (bArr[i33] & 255));
            qt.y0(136, (bArr[i33] & 255) | ((bArr[i32] << 8) & 65280));
            return;
        }
        if (b2 == 29) {
            int i34 = i2 + 2;
            u0.d.D2(l0.c0.v1(bArr[i34] & 255));
            int i35 = i2 + 3;
            u0.d.E2(l0.c0.v1(bArr[i35] & 255));
            int i36 = i2 + 4;
            u0.d.F2(l0.c0.v1(bArr[i36] & 255));
            int i37 = i2 + 5;
            u0.d.G2(l0.c0.v1(bArr[i37] & 255));
            this.f10651i = ((l0.c0.w1(bArr[i37] & 255) & 3) << 6) | (l0.c0.w1(bArr[i34] & 255) & 3) | ((l0.c0.w1(bArr[i35] & 255) & 3) << 2) | ((l0.c0.w1(bArr[i36] & 255) & 3) << 4);
            return;
        }
        if (b2 == 30) {
            int i38 = i2 + 2;
            u0.d.R2(l0.c0.v1(bArr[i38] & 255));
            int i39 = i2 + 3;
            u0.d.S2(l0.c0.v1(bArr[i39] & 255));
            int i40 = i2 + 4;
            u0.d.T2(l0.c0.v1(bArr[i40] & 255));
            int i41 = i2 + 5;
            u0.d.U2(l0.c0.v1(bArr[i41] & 255));
            this.f10652j = ((l0.c0.w1(bArr[i41] & 255) & 3) << 6) | (l0.c0.w1(bArr[i38] & 255) & 3) | ((l0.c0.w1(bArr[i39] & 255) & 3) << 2) | ((l0.c0.w1(bArr[i40] & 255) & 3) << 4);
            return;
        }
        switch (b2) {
            case 106:
                qt.y0(135, (bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280));
                break;
            case 107:
                qt.y0(99, ((bArr[i2 + 5] << 24) & (-16777216)) | ((bArr[i2 + 4] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
                qt.y0(100, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(101, (bArr[i2 + 8] & 255) | ((bArr[i2 + 9] << 8) & 65280));
                break;
            case 108:
                qt.y0(102, bArr[i2 + 2] & 255);
                qt.y0(103, bArr[i2 + 3] & 255);
                qt.y0(104, bArr[i2 + 4] & 255);
                break;
            case 109:
                int i42 = i2 + 2;
                qt.y0(105, (bArr[i42] >> 0) & 1);
                qt.y0(106, (bArr[i42] >> 1) & 1);
                qt.y0(107, (bArr[i42] >> 2) & 1);
                qt.y0(108, (bArr[i42] >> 3) & 1);
                qt.y0(109, bArr[i2 + 3] & 255);
                qt.y0(110, bArr[i2 + 4] & 255);
                break;
            case 110:
                qt.y0(112, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
                qt.y0(113, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
                qt.y0(114, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(115, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255));
                int i43 = i2 + 10;
                qt.y0(116, (bArr[i43] >> 0) & 15);
                qt.y0(117, (bArr[i43] >> 4) & 15);
                int i44 = i2 + 11;
                qt.y0(118, (bArr[i44] >> 0) & 15);
                qt.y0(119, (bArr[i44] >> 4) & 15);
                break;
            case 111:
                if (nt.f8637c == 51) {
                    int i45 = i2 + 2;
                    qt.y0(Process.MEDIA_UID, bArr[i45] & 255);
                    if ((bArr[i45] & 255) == 0) {
                        qt.a(0);
                    } else {
                        qt.a(1);
                    }
                    break;
                }
                break;
            case 112:
                qt.y0(121, bArr[i2 + 2] & 255);
                qt.y0(122, bArr[i2 + 3] & 255);
                qt.y0(123, bArr[i2 + 4] & 255);
                qt.y0(124, bArr[i2 + 5] & 255);
                qt.y0(125, bArr[i2 + 6] & 255);
                break;
            case 113:
                int i46 = i2 + 2;
                qt.y0(126, (bArr[i46] >> 0) & 1);
                qt.y0(127, (bArr[i46] >> 1) & 1);
                qt.y0(128, (bArr[i46] >> 2) & 1);
                qt.y0(129, (bArr[i46] >> 3) & 1);
                qt.y0(130, (bArr[i46] >> 4) & 1);
                qt.y0(131, (bArr[i46] >> 5) & 1);
                break;
            case 114:
                int i47 = i2 + 2;
                qt.y0(132, (bArr[i47] >> 0) & 1);
                qt.y0(133, (bArr[i47] >> 1) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f10657o);
        l0.b0.o0(this.f10656n);
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
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            a3(iArr[0]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, (byte) iArr[0], 1, iArr[1]);
            return;
        }
        if (i2 == 1003) {
            z.k.s(227, -57, 1, 1);
        } else {
            if (i2 != 1005) {
                return;
            }
            z.k.s(227, -57, 1, iArr[0] + 1);
        }
    }

    public final void a3(int i2) {
        int i3 = (this.f10659q + 1) % 2;
        this.f10659q = i3;
        int[] iArr = new int[7];
        iArr[0] = 227;
        iArr[1] = 51;
        iArr[2] = 4;
        iArr[3] = (byte) i2;
        iArr[4] = i3 == 0 ? 34 : 204;
        iArr[5] = 0;
        iArr[6] = 0;
        z.k.s(iArr);
    }

    public final void b3() {
        int i2 = this.f10647e;
        int i3 = this.f10648f;
        int i4 = this.f10649g;
        int i5 = this.f10650h;
        int i6 = this.f10651i;
        int i7 = this.f10652j;
        int i8 = this.f10653k;
        int i9 = this.f10654l;
        z.k.s(18, 46, 3, 8, i2, i3, i4, i5, i6, i7, i8, i9, ((((((((i2 + 11) + i3) + i4) + i5) + i6) + i7) + i8) + i9) ^ 255);
    }
}

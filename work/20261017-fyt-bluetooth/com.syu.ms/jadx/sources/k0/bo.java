package k0;

import android.os.SystemProperties;
import android.text.Spanned;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class bo extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3766c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3770g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3765b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3767d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f3768e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 13}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{21, 6}, new int[]{22, 29}, new int[]{135, 0}, new int[]{23, 0}, new int[]{24, 31}, new int[]{25, 30}, new int[]{26, 5}, new int[]{27, 1}, new int[]{28, 1}, new int[]{32, 12}, new int[]{33, 58}, new int[]{34, 55}, new int[]{35, 6}, new int[]{36, 31}, new int[]{37, 30}, new int[]{38, 34}, new int[]{39, 35}, new int[]{40, 32}, new int[]{41, 33}, new int[]{42, 29}, new int[]{43, 72}, new int[]{44, 71}, new int[]{45, 25}, new int[]{46, 0}, new int[]{47, 38}, new int[]{48, 40}, new int[]{49, 41}, new int[]{50, 42}, new int[]{51, 43}, new int[]{52, 44}, new int[]{53, 45}, new int[]{54, 21}, new int[]{55, 22}, new int[]{56, 53}, new int[]{57, 39}, new int[]{58, 64}, new int[]{59, 3}, new int[]{60, 4}, new int[]{61, 11}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3769f = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f3771h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f3772i = {34, 204};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3773j = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 != 1) {
                if (i2 == 5) {
                    z.k.s(227, 132, 1, 5);
                    return;
                }
                switch (i2) {
                    case 8:
                    case 9:
                    case 10:
                        z.k.s(227, 132, 1, 4);
                        break;
                }
            }
            int i3 = w0.d.f17796h;
            if (i3 == 65536) {
                z.k.s(227, 132, 1, 2);
                return;
            }
            if (i3 == 65537) {
                z.k.s(227, 132, 1, 2);
                return;
            }
            if (i3 == 65538) {
                z.k.s(227, 132, 1, 2);
            } else if (i3 == 0) {
                z.k.s(227, 132, 1, 1);
            } else if (i3 == 1) {
                z.k.s(227, 132, 1, 1);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f3770g = (nt.f8633a >> 16) & 65535;
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8313h = 0;
        if (App.c().getResources().getConfiguration().orientation != 1) {
            this.f7886a.f8314i = 1;
        }
        this.f7886a.f8317l = 0;
        u0.c.f17374a.a(this.f3771h, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == -111) {
            int i7 = i2 + 2;
            int i8 = bArr[i7] & 255;
            int i9 = this.f3769f;
            if (i9 != i8) {
                if (i8 != 0) {
                    if (y0.f.f18055i != 1) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                } else if ((i9 == 1 || i9 == 2) && i8 == 0 && y0.f.f18055i == 1) {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                }
                qt.y0(115, bArr[i7] & 255);
                this.f3769f = i8;
                return;
            }
            return;
        }
        if (b2 == -109) {
            qt.y0(107, bArr[i2 + 2] & 255);
            qt.y0(108, bArr[i2 + 3]);
            qt.y0(109, bArr[i2 + 4]);
            qt.y0(110, bArr[i2 + 5]);
            qt.y0(111, bArr[i2 + 6]);
            qt.y0(112, bArr[i2 + 7] & 255);
            qt.y0(113, bArr[i2 + 8] & 255);
            qt.y0(114, bArr[i2 + 9]);
            return;
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f3767d = b3 & 255;
            int i10 = 0;
            while (true) {
                iArr = this.f3768e;
                if (i10 >= iArr.length) {
                    break;
                }
                int i11 = this.f3767d;
                if (i11 == iArr[i10][0]) {
                    if (i11 == 0) {
                        break;
                    }
                    this.f3766c = i10;
                    break;
                }
                i10++;
            }
            int i12 = this.f3767d;
            if (i12 == 24) {
                for (int i13 = 0; i13 < (b4 & 255); i13++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i12 == 25) {
                for (int i14 = 0; i14 < (b4 & 255); i14++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            if (i12 == 36) {
                for (int i15 = 0; i15 < (b4 & 255); i15++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                return;
            }
            if (i12 == 37) {
                for (int i16 = 0; i16 < (b4 & 255); i16++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            int i17 = b4 & 255;
            if (i17 == 1) {
                if (i10 < iArr.length) {
                    l0.b0.l0(iArr[i10][1], 0);
                    return;
                }
                return;
            } else {
                if (i17 == 0) {
                    int i18 = this.f3766c;
                    if (i18 < iArr.length && i18 != 255) {
                        l0.b0.l0(iArr[i18][1], 1);
                    }
                    this.f3766c = 255;
                    return;
                }
                return;
            }
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
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 5680);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 85) {
            if (b2 == 107) {
                qt.y0(98, ((bArr[i2 + 5] << 24) & (-16777216)) | ((bArr[i2 + 4] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
                qt.y0(99, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(100, (bArr[i2 + 8] & 255) | ((bArr[i2 + 9] << 8) & 65280));
                return;
            }
            if (b2 == 109) {
                int i19 = i2 + 2;
                qt.y0(101, (bArr[i19] >> 0) & 1);
                qt.y0(102, (bArr[i19] >> 1) & 1);
                qt.y0(103, (bArr[i19] >> 3) & 1);
                qt.y0(104, (bArr[i19] >> 4) & 1);
                qt.y0(105, bArr[i2 + 3] & 255);
                qt.y0(106, bArr[i2 + 4] & 255);
                return;
            }
            if (b2 != 29) {
                if (b2 != 30) {
                    return;
                }
                u0.d.R2(l0.c0.v1(bArr[i2 + 2]));
                u0.d.S2(l0.c0.v1(bArr[i2 + 3]));
                u0.d.T2(l0.c0.v1(bArr[i2 + 4]));
                u0.d.U2(l0.c0.v1(bArr[i2 + 5]));
                return;
            }
            int i20 = i2 + 2;
            int i21 = bArr[i20] & 255;
            int i22 = i2 + 3;
            int i23 = bArr[i22] & 255;
            int i24 = i2 + 4;
            int i25 = bArr[i24] & 255;
            int i26 = i2 + 5;
            int i27 = 255 & bArr[i26];
            if (i21 == 0 && i23 == 0 && i25 == 0 && i27 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i21 || l0.c0.f13014h != i23 || l0.c0.f13015i != i25 || l0.c0.f13016j != i27) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i21;
            l0.c0.f13014h = i23;
            l0.c0.f13015i = i25;
            l0.c0.f13016j = i27;
            u0.d.D2(l0.c0.v1(bArr[i20]));
            u0.d.E2(l0.c0.v1(bArr[i22]));
            u0.d.F2(l0.c0.v1(bArr[i24]));
            u0.d.G2(l0.c0.v1(bArr[i26]));
            return;
        }
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            int i28 = i2 + 2;
            if ((bArr[i28] & 255) == 16) {
                qt.y0(28, -2);
            } else if ((bArr[i28] & 255) == 80) {
                qt.y0(28, -3);
            } else if ((bArr[i28] & 255) < 32 || (bArr[i28] & 255) > 64) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, bArr[i28] & 255);
            }
            int i29 = i2 + 3;
            if ((bArr[i29] & 255) == 16) {
                qt.y0(27, -2);
            } else if ((bArr[i29] & 255) == 80) {
                qt.y0(27, -3);
            } else if ((bArr[i29] & 255) < 32 || (bArr[i29] & 255) > 64) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, bArr[i29] & 255);
            }
        } else {
            int i30 = i2 + 2;
            if ((bArr[i30] & 255) == 16) {
                qt.y0(27, -2);
            } else if ((bArr[i30] & 255) == 80) {
                qt.y0(27, -3);
            } else if ((bArr[i30] & 255) < 32 || (bArr[i30] & 255) > 64) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, bArr[i30] & 255);
            }
            int i31 = i2 + 3;
            if ((bArr[i31] & 255) == 16) {
                qt.y0(28, -2);
            } else if ((bArr[i31] & 255) == 80) {
                qt.y0(28, -3);
            } else if ((bArr[i31] & 255) < 32 || (bArr[i31] & 255) > 64) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, bArr[i31] & 255);
            }
        }
        int i32 = i2 + 4;
        qt.y0(21, (bArr[i32] >> 0) & 15);
        int i33 = (bArr[i32] >> 4) & 15;
        if (i33 != 1) {
            if (i33 == 2) {
                i4 = 0;
                i6 = 1;
            } else if (i33 == 3) {
                i4 = 0;
                i6 = 0;
                i5 = 1;
            } else if (i33 == 4) {
                i6 = 0;
                i4 = 1;
                i5 = 1;
            } else if (i33 != 6) {
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
        int i34 = i2 + 6;
        qt.y0(13, (bArr[i34] >> 0) & 1);
        qt.y0(11, (bArr[i34] >> 1) & 1);
        qt.y0(14, (bArr[i34] >> 2) & 1);
        qt.y0(12, (bArr[i34] >> 3) & 1);
        qt.y0(16, (bArr[i34] >> 6) & 1);
        qt.y0(65, (bArr[i34] >> 7) & 1);
        qt.y0(76, (bArr[i2 + 8] >> 2) & 1);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17374a.d(this.f3771h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 116) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 53, 1, iArr[0]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 != 2) {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        } else {
            z.k.s(227, 51, 4, iArr[0], this.f3772i[this.f3773j % 2], 0, 0);
            int i3 = this.f3773j + 1;
            this.f3773j = i3;
            this.f3773j = i3 % 2;
        }
    }
}

package k0;

import android.content.pm.PackageManager;
import android.net.ProxyProperties;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class nl extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8565c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8566d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 13}, new int[]{19, 34}, new int[]{20, 35}, new int[]{21, 6}, new int[]{22, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f8567e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8568f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f8569g = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f8570h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8571i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f8572j = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nl.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            int i2 = nl.this.f8568f;
            int i3 = h0.c.E;
            boolean z3 = true;
            if (i2 != i3) {
                nl.this.f8568f = i3;
                z2 = true;
            } else {
                z2 = false;
            }
            if (nl.this.f8569g.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                nl.this.f8569g = h0.c.f2437h;
                if (nl.this.f8569g == null) {
                    nl.this.f8569g = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (u0.b.D == 2 ? z3 : false) {
                nl nlVar = nl.this;
                nlVar.g3(nlVar.f8568f, nl.this.f8569g);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 124, 2, 1, 0);
            } else {
                z.k.s(227, 124, 2, 0, 0);
            }
            int i2 = nt.f8637c;
            if (i2 == 2) {
                z.k.s(227, -119, 2, 0, 0);
            }
            if (i2 == 3) {
                z.k.s(227, -119, 2, 1, 0);
                return;
            }
            switch (i2) {
                case 42:
                    z.k.s(227, -119, 2, 2, 0);
                    break;
                case 43:
                    z.k.s(227, -119, 2, 3, 0);
                    break;
                case 44:
                    z.k.s(227, -119, 2, 4, 0);
                    break;
                case 45:
                    z.k.s(227, -119, 2, 5, 0);
                    break;
                case 46:
                    z.k.s(227, -119, 2, 6, 0);
                    break;
                case 47:
                    z.k.s(227, -119, 2, 7, 0);
                    break;
            }
        }
    }

    public static void a3() {
        int i2 = u0.b.D;
        int i3 = 0;
        if (i2 == 1) {
            int[] iArr = new int[7];
            iArr[0] = 192;
            iArr[1] = 5;
            iArr[2] = 1;
            int i4 = w0.d.f17796h;
            if (i4 == 65536) {
                iArr[3] = 1;
            } else if (i4 == 65537) {
                iArr[3] = 2;
            } else if (i4 == 65538) {
                iArr[3] = 3;
            } else if (i4 == 0) {
                iArr[3] = 17;
            } else if (i4 == 1) {
                iArr[3] = 18;
            }
            int i5 = w0.d.f17797i;
            iArr[4] = i5 & 255;
            iArr[5] = (i5 >> 8) & 255;
            iArr[6] = w0.d.f17798j;
            int[] iArr2 = new int[8];
            iArr2[0] = 227;
            while (i3 < 7) {
                int i6 = i3 + 1;
                iArr2[i6] = iArr[i3];
                i3 = i6;
            }
            z.k.s(iArr2);
            return;
        }
        if (i2 == 8 || i2 == 10) {
            int i7 = u0.b.s3;
            int i8 = u0.b.r3;
            int i9 = u0.b.t3;
            int[] iArr3 = {192, 8, 8, (i7 >> 8) & 255, i7 & 255, (i8 >> 8) & 255, i8 & 255, i9 / BatchedScanSettings.MAX_INTERVAL_SEC, (i9 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, (i9 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60};
            int[] iArr4 = new int[11];
            iArr4[0] = 227;
            while (i3 < 10) {
                int i10 = i3 + 1;
                iArr4[i10] = iArr3[i3];
                i3 = i10;
            }
            z.k.s(iArr4);
            return;
        }
        if (i2 == 3) {
            int i11 = h0.c.K;
            int i12 = h0.c.J;
            int i13 = h0.c.H;
            int[] iArr5 = {192, 8, 11, (i11 >> 8) & 255, i11 & 255, (i12 >> 8) & 255, i12 & 255, i13 / BatchedScanSettings.MAX_INTERVAL_SEC, (i13 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, (i13 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60};
            int[] iArr6 = new int[11];
            iArr6[0] = 227;
            while (i3 < 10) {
                int i14 = i3 + 1;
                iArr6[i14] = iArr5[i3];
                i3 = i14;
            }
            z.k.s(iArr6);
            return;
        }
        if (i2 != 4) {
            return;
        }
        int i15 = o0.e.C;
        int i16 = o0.e.B;
        int i17 = o0.e.f16794r;
        int[] iArr7 = {192, 8, 16, (i15 >> 8) & 255, i15 & 255, (i16 >> 8) & 255, i16 & 255, i17 % BatchedScanSettings.MAX_INTERVAL_SEC, (i17 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, (i17 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60};
        int[] iArr8 = new int[11];
        iArr8[0] = 227;
        while (i3 < 10) {
            int i18 = i3 + 1;
            iArr8[i18] = iArr7[i3];
            i3 = i18;
        }
        z.k.s(iArr8);
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
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f8572j);
        l0.b0.b(this.f8567e);
        w0.e.f17815a.a(this.f8567e, 1);
        u0.c.f17374a.a(this.f8567e, 1);
        u0.c.f17393t.a(this.f8567e, 1);
        u0.c.f17392s.a(this.f8567e, 1);
        h0.d.f2464c.a(this.f8570h, 1);
        h0.d.f2462a.a(this.f8570h, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2 = bArr[i2];
        if (b2 == -127) {
            qt.y0(133, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(134, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(135, (bArr[i2 + 7] & 255) | ((bArr[i2 + 8] << 16) & 65536) | (65280 & (bArr[i2 + 6] << 8)));
        }
        if (b2 == -111) {
            int i5 = i2 + 2;
            int i6 = bArr[i5] & 255;
            int i7 = this.f8571i;
            if (i7 != i6) {
                if (i6 != 0) {
                    if (y0.f.f18055i != 1) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                } else if (i7 == 1 && i6 == 0 && y0.f.f18055i == 1) {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                }
                qt.y0(137, bArr[i5] & 255);
                this.f8571i = i6;
                return;
            }
            return;
        }
        if (b2 == 40) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            } else {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            }
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(0, (b3 >> 2) & 1);
            int i8 = bArr[i2 + 3] & 255;
            if (i8 == 255 || i8 == 254) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3((i8 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        if (b2 == 48) {
            qt.l(bArr[i2 + 3], bArr[i2 + 2], false, 5400);
            return;
        }
        if (b2 == 113) {
            int i9 = i2 + 2;
            qt.y0(99, (bArr[i9] >> 4) & 3);
            qt.y0(100, (bArr[i9] >> 3) & 1);
            qt.y0(101, (bArr[i9] >> 2) & 1);
            qt.y0(102, (bArr[i9] >> 1) & 1);
            qt.y0(103, (bArr[i9] >> 0) & 1);
            int i10 = i2 + 3;
            qt.y0(104, (bArr[i10] >> 3) & 1);
            qt.y0(105, (bArr[i10] >> 2) & 1);
            qt.y0(106, (bArr[i10] >> 0) & 3);
            int i11 = i2 + 4;
            qt.y0(107, (bArr[i11] >> 7) & 1);
            qt.y0(108, (bArr[i11] >> 6) & 1);
            qt.y0(109, (bArr[i11] >> 5) & 1);
            qt.y0(110, (bArr[i11] >> 4) & 1);
            qt.y0(111, (bArr[i11] >> 3) & 1);
            qt.y0(112, (bArr[i11] >> 2) & 1);
            qt.y0(113, (bArr[i11] >> 0) & 3);
            qt.y0(114, bArr[i2 + 5] & 255);
            qt.y0(115, bArr[i2 + 6] & 255);
            qt.y0(116, bArr[i2 + 7] & 255);
            qt.y0(117, bArr[i2 + 8] & 255);
            int i12 = i2 + 9;
            qt.y0(118, (bArr[i12] >> 7) & 1);
            qt.y0(119, (bArr[i12] >> 6) & 1);
            int i13 = i2 + 10;
            qt.y0(120, (bArr[i13] >> 7) & 1);
            qt.y0(121, (bArr[i13] >> 6) & 1);
            qt.y0(122, (bArr[i13] >> 5) & 1);
            qt.y0(123, (bArr[i13] >> 0) & 7);
            qt.y0(124, bArr[i2 + 11] & 255);
            int i14 = i2 + 12;
            qt.y0(125, (bArr[i14] >> 7) & 1);
            qt.y0(126, (bArr[i14] >> 5) & 3);
            qt.y0(127, (bArr[i14] >> 0) & 15);
            int i15 = i2 + 13;
            qt.y0(128, (bArr[i15] >> 7) & 1);
            qt.y0(129, (bArr[i15] >> 6) & 1);
            qt.y0(130, (bArr[i15] >> 5) & 1);
            qt.y0(131, (bArr[i15] >> 4) & 1);
            qt.y0(132, (bArr[i2 + 14] >> 0) & 1);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 32:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f8565c = b4 & 255;
                int i16 = 0;
                while (true) {
                    iArr = this.f8566d;
                    if (i16 < iArr.length) {
                        int i17 = this.f8565c;
                        if (i17 != iArr[i16][0]) {
                            i16++;
                        } else if (i17 != 0) {
                            this.f8564b = i16;
                        }
                    }
                }
                if ((b5 & 255) == 0) {
                    int i18 = this.f8564b;
                    if (i18 < iArr.length) {
                        i4 = 255;
                        if (i18 != 255) {
                            l0.b0.l0(iArr[i18][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f8564b = i4;
                } else if (i16 < iArr.length) {
                    l0.b0.l0(iArr[i16][1], 0);
                }
                break;
            case 33:
                int i19 = bArr[i2 + 2] & 255;
                int i20 = bArr[i2 + 3] & 255;
                int i21 = bArr[i2 + 4] & 255;
                int i22 = i2 + 5;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 6;
                int i25 = bArr[i24] & 255;
                int i26 = bArr[i2 + 7] & 255;
                int i27 = bArr[i2 + 8] & 255;
                qt.y0(11, (i19 >> 6) & 1);
                qt.y0(12, (i19 >> 4) & 3);
                qt.y0(13, (i19 >> 3) & 1);
                qt.y0(14, (i19 >> 2) & 1);
                qt.y0(16, (i19 >> 1) & 1);
                qt.y0(65, (i19 >> 0) & 1);
                qt.y0(18, (i20 >> 0) & 1);
                qt.y0(19, (i20 >> 1) & 1);
                qt.y0(20, (i20 >> 2) & 1);
                qt.y0(21, i21 & 255);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i23 = bArr[i24] & 255;
                    i25 = bArr[i22] & 255;
                }
                int i28 = i23 & 255;
                if (i28 == 0) {
                    qt.y0(27, -1);
                } else if (i28 == 254) {
                    qt.y0(27, -2);
                } else if (i28 != 255) {
                    qt.y0(27, i28);
                } else {
                    qt.y0(27, -3);
                }
                int i29 = i25 & 255;
                if (i29 == 0) {
                    qt.y0(28, -1);
                } else if (i29 == 254) {
                    qt.y0(28, -2);
                } else if (i29 != 255) {
                    qt.y0(28, i29);
                } else {
                    qt.y0(28, -3);
                }
                qt.y0(75, (i26 >> 6) & 3);
                qt.y0(36, (i26 >> 5) & 1);
                qt.y0(29, (i27 >> 6) & 3);
                qt.y0(31, (i27 >> 4) & 3);
                qt.y0(30, (i27 >> 2) & 3);
                qt.y0(32, (i27 >> 0) & 3);
                break;
            case 34:
                u0.d.R2(l0.c0.k1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.m1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.m1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.k1(bArr[i2 + 5] & 255));
                break;
            case 35:
                if (u0.b.f17347o == 0) {
                    if (bArr[i2 + 2] == 0 && bArr[i2 + 3] == 0 && bArr[i2 + 4] == 0 && bArr[i2 + 5] == 0) {
                        u0.d.C2(0);
                    } else {
                        u0.d.C2(1);
                    }
                }
                u0.d.D2(l0.c0.k1(bArr[i2 + 2] & 255));
                u0.d.E2(l0.c0.m1(bArr[i2 + 3] & 255));
                u0.d.F2(l0.c0.m1(bArr[i2 + 4] & 255));
                u0.d.G2(l0.c0.k1(bArr[i2 + 5] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f8572j);
        l0.b0.p0(this.f8567e);
        w0.e.f17815a.d(this.f8567e);
        u0.c.f17374a.d(this.f8567e);
        u0.c.f17393t.d(this.f8567e);
        u0.c.f17392s.d(this.f8567e);
        h0.d.f2464c.d(this.f8570h);
        h0.d.f2462a.d(this.f8570h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 138) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, -125, 2, iArr[0], iArr[1]);
            }
        } else if (i2 == 1 && qt.l0(iArr, 2)) {
            z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID, 2, iArr[0], iArr[1]);
        }
    }

    public final void g3(int i2, String str) {
        if (str == null) {
            return;
        }
        char[] charArray = str.toCharArray();
        int[] iArr = new int[charArray.length + 6];
        iArr[0] = -29;
        iArr[1] = -64;
        iArr[2] = (byte) (charArray.length + 3);
        iArr[3] = 5;
        if (i2 == 3) {
            iArr[4] = 3;
        } else if (i2 == 4) {
            iArr[4] = 1;
        } else if (i2 != 5) {
            iArr[4] = 0;
        } else {
            iArr[4] = 2;
        }
        iArr[5] = 1;
        if (charArray.length > 0) {
            for (int i3 = 0; i3 < str.length(); i3++) {
                iArr[6 + i3] = (byte) charArray[i3];
            }
        }
        z.k.s(iArr);
    }
}

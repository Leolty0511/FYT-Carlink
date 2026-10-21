package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class ug extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11031b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11034e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11032c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11033d = {new int[]{1, 40}, new int[]{2, 41}, new int[]{3, 42}, new int[]{4, 43}, new int[]{5, 44}, new int[]{6, 45}, new int[]{7, 21}, new int[]{8, 54}, new int[]{9, 53}, new int[]{10, 65}, new int[]{11, 3}, new int[]{12, 4}, new int[]{13, 5}, new int[]{14, 0}, new int[]{15, 38}, new int[]{16, 11}, new int[]{17, 54}, new int[]{24, 7}, new int[]{25, 8}, new int[]{26, 3}, new int[]{27, 4}, new int[]{28, 25}, new int[]{29, 1}, new int[]{30, 56}, new int[]{31, 1}, new int[]{32, 29}, new int[]{33, 34}, new int[]{34, 35}, new int[]{35, 32}, new int[]{36, 33}, new int[]{37, 58}, new int[]{38, 58}, new int[]{39, 55}, new int[]{40, 25}, new int[]{41, 72}, new int[]{42, 71}, new int[]{43, 6}, new int[]{44, 6}, new int[]{45, 30}, new int[]{46, 31}, new int[]{47, 38}, new int[]{48, 7}, new int[]{49, 8}, new int[]{50, 7}, new int[]{51, 8}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11035f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f11036g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 18}, new int[]{7, 26}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11037h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11038i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11039j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f11040k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public byte f11041l = 5;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f11042m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f11043n = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            int i3 = ug.this.f11039j;
            if (i2 != i3) {
                if (i3 == 13) {
                    int i4 = nt.f8633a;
                    if (i4 == 7799223 || i4 == 65988) {
                        z.k.s(227, 162, 2, 0, 0);
                    } else {
                        z.k.s(227, 224, 1, 1);
                    }
                }
                ug.this.f11039j = u0.b.D;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ug.this.f11043n);
            ug.this.f11041l = (byte) 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ug ugVar = ug.this;
            byte b2 = (byte) (ugVar.f11041l - 1);
            ugVar.f11041l = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, 1);
                z.k.s(227, 131, 2, 0, 1);
            } else {
                l0.b0.p0(ugVar.f11043n);
                ug.this.f11041l = (byte) 5;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[21] != 0) {
                        a3(0);
                    }
                } else if (nt.f8645g[21] == 0) {
                    a3(4);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(1);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(1);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(4);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(4);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(5);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(5);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(6);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(6);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(3);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(2);
                }
                break;
            case 39:
                if (iArr[1] == -2) {
                    a3(9);
                } else if (iArr[1] == -1) {
                    a3(10);
                }
                break;
            case 41:
                if (iArr[1] != 0) {
                    a3(12);
                } else {
                    a3(11);
                }
                break;
            case 42:
                if (iArr[1] != 0) {
                    a3(14);
                } else {
                    a3(13);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8317l = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        int i2 = nt.f8633a;
        if (i2 == 6488503) {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8314i = 0;
        } else if (i2 == 6095287) {
            if (App.c().getResources().getConfiguration().orientation == 1) {
                this.f7886a.f8306a = new String[]{"com.syu.canbus"};
            } else {
                this.f7886a.f8306a = null;
            }
            mt mtVar2 = this.f7886a;
            mtVar2.f8314i = 0;
            mtVar2.f8311f = 0;
        } else if (i2 == 7012791) {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8314i = 1;
            if (App.c().getResources().getConfiguration().orientation == 1) {
                this.f7886a.f8314i = 0;
            }
            this.f7886a.f8311f = 0;
        } else if (i2 == 7799223 || i2 == 65988) {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8314i = 1;
            mtVar.f8311f = 1;
        } else if (i2 == 1442245) {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8314i = 1;
            mtVar.f8311f = 1;
            mtVar.f8317l = 0;
        }
        u0.c.f17386m.a(this.f11042m, 1);
        u0.c.f17374a.a(this.f11040k, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            if (this.f11037h == 1 || nt.f8633a != 6095287) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f11035f = b3 & 255;
                int i10 = 0;
                while (true) {
                    iArr = this.f11036g;
                    if (i10 >= iArr.length) {
                        break;
                    }
                    int i11 = this.f11035f;
                    if (i11 == iArr[i10][0]) {
                        if (i11 == 0) {
                            break;
                        }
                        this.f11034e = i10;
                        break;
                    }
                    i10++;
                }
                int i12 = b4 & 255;
                if (i12 == 1) {
                    if (i10 < iArr.length) {
                        l0.b0.l0(iArr[i10][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i12 == 0) {
                        int i13 = this.f11034e;
                        if (i13 < iArr.length) {
                            i4 = 255;
                            if (i13 != 255) {
                                l0.b0.l0(iArr[i13][1], 1);
                            }
                        } else {
                            i4 = 255;
                        }
                        this.f11034e = i4;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 2) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f11032c = b5 & 255;
            int i14 = 0;
            while (true) {
                iArr2 = this.f11033d;
                if (i14 >= iArr2.length) {
                    break;
                }
                int i15 = this.f11032c;
                if (i15 == iArr2[i14][0]) {
                    if (i15 == 0) {
                        break;
                    }
                    this.f11031b = i14;
                    break;
                }
                i14++;
            }
            switch (this.f11032c) {
                case 45:
                case 51:
                    for (int i16 = 0; i16 < (b6 & 255); i16++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    break;
                case 46:
                case 50:
                    for (int i17 = 0; i17 < (b6 & 255); i17++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    break;
                case 47:
                default:
                    int i18 = b6 & 255;
                    if (i18 == 1) {
                        if (i14 < iArr2.length) {
                            l0.b0.l0(iArr2[i14][1], 0);
                        }
                    } else if (i18 == 0) {
                        int i19 = this.f11031b;
                        if (i19 < iArr2.length) {
                            i5 = 255;
                            if (i19 != 255) {
                                l0.b0.l0(iArr2[i19][1], 1);
                            }
                        } else {
                            i5 = 255;
                        }
                        this.f11031b = i5;
                    }
                    break;
                case 48:
                    for (int i20 = 0; i20 < (b6 & 255); i20++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    break;
                case 49:
                    for (int i21 = 0; i21 < (b6 & 255); i21++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    break;
            }
            return;
        }
        if (b2 == 4) {
            byte b7 = bArr[i2 + 3];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b7 >> 6) & 1);
                qt.y0(2, (b7 >> 7) & 1);
            } else {
                qt.y0(1, (b7 >> 7) & 1);
                qt.y0(2, (b7 >> 6) & 1);
            }
            qt.y0(3, (b7 >> 5) & 1);
            qt.y0(4, (b7 >> 4) & 1);
            qt.y0(5, (b7 >> 3) & 1);
            return;
        }
        if (b2 == 5) {
            byte b8 = bArr[i2 + 2];
            byte b9 = bArr[i2 + 3];
            int i22 = i2 + 4;
            byte b10 = bArr[i22];
            int i23 = i2 + 5;
            byte b11 = bArr[i23];
            byte b12 = bArr[i2 + 6];
            qt.y0(11, (b8 >> 7) & 1);
            qt.y0(13, (b8 >> 6) & 1);
            qt.y0(14, (b8 >> 5) & 1);
            qt.y0(65, (b8 >> 4) & 1);
            qt.y0(16, (b8 >> 3) & 1);
            qt.y0(12, (b8 >> 2) & 1);
            int i24 = (b9 >> 4) & 15;
            if (i24 != 1) {
                if (i24 == 2) {
                    i6 = 0;
                    i8 = 1;
                } else if (i24 == 3) {
                    i6 = 0;
                    i8 = 0;
                    i7 = 1;
                } else if (i24 == 4) {
                    i8 = 0;
                    i6 = 1;
                    i7 = 1;
                } else if (i24 != 5) {
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
            qt.y0(77, i24);
            qt.y0(21, b9 & DhcpPacket.DHCP_DOMAIN_NAME);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b10 = bArr[i23];
                b11 = bArr[i22];
            }
            byte b13 = b11;
            if (b10 == 1) {
                qt.y0(27, -2);
            } else if (b10 == 29) {
                qt.y0(27, -3);
            } else if (b10 == 0) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, b10);
            }
            if (b13 == 1) {
                qt.y0(28, -2);
            } else if (b13 == 29) {
                qt.y0(28, -3);
            } else if (b13 == 0) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, b13);
            }
            int i25 = 255 & b12;
            if (i25 == 128) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3((i25 & 128) == 128 ? 1000 - ((256 - i25) * 10) : (i25 * 10) + 1000);
                return;
            }
        }
        if (b2 == 6) {
            byte b14 = bArr[i2 + 2];
            byte b15 = bArr[i2 + 3];
            byte b16 = bArr[i2 + 4];
            qt.y0(42, (b14 >> 7) & 1);
            qt.y0(43, (b14 >> 6) & 1);
            qt.y0(44, (b14 >> 0) & 15);
            qt.y0(46, (b15 >> 6) & 1);
            qt.y0(47, (b15 >> 7) & 1);
            qt.y0(40, b16 & 255);
            return;
        }
        if (b2 == 9) {
            qt.m(bArr[i2 + 2], 0, 128, true, 127);
            return;
        }
        if (b2 == 11) {
            qt.y0(1032, bArr[i2 + 4] * 100);
            return;
        }
        if (b2 == 48) {
            int i26 = i2 + 2;
            qt.y0(116, (bArr[i26] >> 7) & 1);
            qt.y0(117, (bArr[i26] >> 5) & 3);
            qt.y0(118, (bArr[i26] >> 4) & 1);
            qt.y0(119, (bArr[i26] >> 3) & 1);
            qt.y0(121, (bArr[i26] >> 2) & 1);
            qt.y0(120, bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME);
            return;
        }
        if (b2 == 51) {
            qt.y0(123, ((bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280)) & 65535);
            return;
        }
        if (b2 == 96) {
            if (u0.b.f17347o != 0 || this.f11037h == (i9 = (bArr[i2 + 2] >> 7) & 1)) {
                return;
            }
            this.f11037h = i9;
            if (!o1.u.S(a.b.Q) && this.f11037h == 0) {
                o1.u.f(a.b.R);
                return;
            } else {
                if (o1.u.S(a.b.Q) && this.f11037h == 1) {
                    o1.u.k();
                    return;
                }
                return;
            }
        }
        if (b2 == 113) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 18) {
            if (b2 != 19) {
                return;
            }
            qt.y0(106, bArr[i2 + 2] & 255);
            qt.y0(107, bArr[i2 + 3] & 255);
            qt.y0(108, bArr[i2 + 4] & 255);
            qt.y0(109, bArr[i2 + 5] & 255);
            qt.y0(110, bArr[i2 + 6] & 255);
            qt.y0(111, 255 & bArr[i2 + 7]);
            int i27 = i2 + 8;
            qt.y0(112, (bArr[i27] >> 7) & 1);
            qt.y0(113, bArr[i27] & 7);
            return;
        }
        if (nt.f8633a == 1442245) {
            return;
        }
        int i28 = i2 + 2;
        qt.y0(99, (bArr[i28] >> 7) & 1);
        if (this.f11038i != ((bArr[i28] >> 7) & 1)) {
            int i29 = (bArr[i28] >> 7) & 1;
            this.f11038i = i29;
            if (i29 == 1 && !o1.u.S("com.syu.carui")) {
                o1.u.z();
            } else if (this.f11038i == 0 && o1.u.S("com.syu.carui")) {
                l0.b0.l0(6, 0);
                l0.b0.l0(6, 1);
            }
        }
        qt.y0(100, 3 & (bArr[i2 + 3] >> 6));
        qt.y0(101, bArr[i2 + 4] & 255);
        qt.y0(102, bArr[i2 + 5] & 255);
        qt.y0(103, bArr[i2 + 6] & 255);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f11042m);
        u0.c.f17374a.d(this.f11040k);
        l0.b0.p0(this.f11043n);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 124) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                z.k.s(227, 149, 2, iArr[0], iArr[1]);
                break;
            case 1:
                z.k.s(227, 130, 2, iArr[0], iArr[1]);
                break;
            case 2:
                z.k.s(227, 224, 1, iArr[0]);
                break;
            case 3:
                z.k.s(227, 163, 2, iArr[0], iArr[1]);
                break;
            case 4:
                z.k.s(227, 151, 2, iArr[0], iArr[1]);
                break;
            case 5:
                z.k.s(227, 162, 2, iArr[0], iArr[1]);
                break;
            case 6:
                z.k.s(227, 150, 2, iArr[0], iArr[1]);
                break;
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 149, 2, i2, 1);
        a.i.a0(200L);
        z.k.s(227, 149, 2, i2, 0);
    }
}

package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class lf extends lt {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f7619i = 255;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7620b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7621c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7622d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 3}, new int[]{20, 4}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f7623e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f7624f = 5;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f7625g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f7626h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = lf.f7619i;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13 && lf.f7619i == 13) {
                    z.k.s(227, 132, 2, 48, 5);
                }
                lf.f7619i = u0.b.D;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(lf.this.f7626h);
            lf.this.f7624f = (byte) 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            lf lfVar = lf.this;
            byte b2 = (byte) (lfVar.f7624f - 1);
            lfVar.f7624f = b2;
            if (b2 <= 0) {
                l0.b0.p0(lfVar.f7626h);
                lf.this.f7624f = (byte) 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            int i2 = nt.f8637c;
            if (i2 == 29 || i2 == 118) {
                z.k.s(227, 132, 2, 8, u0.b.f17306a0);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f7625g, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 1;
        int i2 = nt.f8637c;
        if (i2 == 28) {
            mtVar.f8306a = null;
            mtVar.f8310e = 1;
            mtVar.f8311f = 1;
            mtVar.f8312g = 0;
            mtVar.f8314i = 0;
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
            mtVar.f8317l = 0;
            z.k.s(227, 226, 1, 48);
            return;
        }
        if (i2 == 29) {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 1;
            mtVar.f8311f = 1;
            mtVar.f8312g = 0;
            mtVar.f8314i = 0;
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
            mtVar.f8317l = 0;
            z.k.s(227, 226, 1, 49);
            return;
        }
        if (i2 != 117) {
            if (i2 != 118) {
                return;
            }
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 1;
            mtVar.f8311f = 1;
            mtVar.f8312g = 0;
            mtVar.f8317l = 1;
            if (App.c().getResources().getConfiguration().orientation == 1) {
                this.f7886a.f8314i = 0;
            } else {
                this.f7886a.f8314i = 1;
            }
            mt mtVar2 = this.f7886a;
            mtVar2.f8307b = 0;
            mtVar2.f8308c = 0;
            mtVar2.f8309d = 0;
            mtVar2.f8322q = 1;
            z.k.s(227, 226, 1, 65);
            u0.c.f17374a.a(this.f7623e, 1);
            return;
        }
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8317l = 1;
        mtVar.f8312g = 0;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            mt mtVar3 = this.f7886a;
            mtVar3.f8306a = new String[]{"com.syu.canbus"};
            mtVar3.f8314i = 0;
        } else {
            this.f7886a.f8314i = 1;
        }
        mt mtVar4 = this.f7886a;
        mtVar4.f8307b = 0;
        mtVar4.f8308c = 0;
        mtVar4.f8309d = 0;
        mtVar4.f8322q = 1;
        z.k.s(227, 226, 1, 64);
        u0.c.f17374a.a(this.f7623e, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 29) {
            u0.d.D2(l0.c0.E0(bArr[i2 + 2] & 255));
            u0.d.E2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.F2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.G2(l0.c0.E0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 30) {
            u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f7621c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f7622d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f7621c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f7620b = i4;
                    break;
                }
                i4++;
            }
            int i6 = b4 & 255;
            if (i6 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i6 == 0) {
                    int i7 = this.f7620b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f7620b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 36) {
            int i8 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i8 >> 6) & 1);
                qt.y0(1, (i8 >> 7) & 1);
            } else {
                qt.y0(2, (i8 >> 7) & 1);
                qt.y0(1, (i8 >> 6) & 1);
            }
            qt.y0(4, (i8 >> 5) & 1);
            qt.y0(3, (i8 >> 4) & 1);
            qt.y0(5, (i8 >> 3) & 1);
            return;
        }
        if (b2 == 80) {
            qt.y0(1032, (bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280));
            return;
        }
        if (b2 == 101) {
            int i9 = i2 + 2;
            qt.y0(139, (bArr[i9] >> 0) & 1);
            qt.y0(140, (bArr[i9] >> 1) & 1);
            qt.y0(141, (bArr[i2 + 3] >> 4) & 15);
            int i10 = i2 + 4;
            qt.y0(142, (bArr[i10] >> 4) & 15);
            qt.y0(143, (bArr[i10] >> 0) & 15);
            qt.y0(144, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(145, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(146, bArr[i2 + 9] & 255);
            qt.y0(147, bArr[i2 + 10] & 255);
            qt.y0(148, bArr[i2 + 11] & 255);
            qt.y0(149, bArr[i2 + 12] & 255);
            qt.y0(150, bArr[i2 + 13] & 255);
            qt.y0(151, bArr[i2 + 14] & 255);
            return;
        }
        if (b2 == 40) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            byte b7 = bArr[i2 + 4];
            byte b8 = bArr[i2 + 5];
            byte b9 = bArr[i2 + 6];
            qt.y0(10, (b5 >> 7) & 1);
            qt.y0(11, (b5 >> 6) & 1);
            qt.y0(12, (b5 >> 5) & 1);
            qt.y0(13, (b5 >> 3) & 1);
            qt.y0(14, (b5 >> 2) & 1);
            qt.y0(15, (b5 >> 1) & 1);
            qt.y0(18, (b6 >> 7) & 1);
            qt.y0(19, (b6 >> 6) & 1);
            qt.y0(20, (b6 >> 5) & 1);
            qt.y0(21, b6 & DhcpPacket.DHCP_DOMAIN_NAME);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i11 = b8 & 255;
                if (b8 == 0) {
                    qt.y0(27, -2);
                } else if (b8 == 31) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i11);
                }
                int i12 = b7 & 255;
                if (b7 == 0) {
                    qt.y0(28, -2);
                } else if (b7 == 31) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i12);
                }
            } else {
                int i13 = b7 & 255;
                if (b7 == 0) {
                    qt.y0(27, -2);
                } else if (b7 == 31) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i13);
                }
                int i14 = b8 & 255;
                if (b8 == 0) {
                    qt.y0(28, -2);
                } else if (b8 == 31) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i14);
                }
            }
            qt.y0(33, (b9 >> 7) & 1);
            qt.y0(16, (b9 >> 6) & 1);
            qt.y0(54, (b9 >> 5) & 1);
            qt.y0(37, (b9 >> 0) & 1);
            int i15 = (bArr[i2 + 7] & 255) * 5;
            u0.d.A3(i15 < 400 ? 1000 - (400 - i15) : (i15 - 400) + 1000);
            return;
        }
        if (b2 == 41) {
            qt.k(bArr[i2 + 2], bArr[i2 + 3], false, 380);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            int i16 = i2 + 2;
            qt.y0(153, (bArr[i16] >> 4) & 15);
            qt.y0(154, (bArr[i16] >> 0) & 15);
            int i17 = i2 + 3;
            qt.y0(155, (bArr[i17] >> 4) & 15);
            qt.y0(156, (bArr[i17] >> 0) & 15);
            int i18 = i2 + 4;
            qt.y0(157, (bArr[i18] >> 4) & 15);
            qt.y0(158, (bArr[i18] >> 0) & 15);
            int i19 = i2 + 5;
            qt.y0(159, (bArr[i19] >> 0) & 255);
            qt.y0(160, (bArr[i19] >> 0) & 1);
            return;
        }
        if (b2 == 97) {
            int i20 = i2 + 2;
            qt.y0(100, (bArr[i20] >> 0) & 1);
            qt.y0(101, (bArr[i20] >> 1) & 1);
            qt.y0(102, (bArr[i20] >> 2) & 1);
            qt.y0(103, (bArr[i20] >> 3) & 1);
            qt.y0(104, (bArr[i20] >> 4) & 1);
            qt.y0(105, (bArr[i20] >> 5) & 1);
            qt.y0(106, (bArr[i2 + 3] >> 4) & 15);
            qt.y0(107, (bArr[i2 + 4] >> 0) & 15);
            int i21 = i2 + 5;
            qt.y0(108, (bArr[i21] >> 0) & 1);
            qt.y0(109, (bArr[i21] >> 1) & 1);
            qt.y0(110, (bArr[i21] >> 2) & 1);
            qt.y0(111, (bArr[i21] >> 3) & 1);
            qt.y0(112, (bArr[i21] >> 4) & 1);
            qt.y0(113, (bArr[i21] >> 5) & 1);
            return;
        }
        if (b2 != 98) {
            return;
        }
        int i22 = i2 + 2;
        qt.y0(152, bArr[i22] & 255);
        byte b10 = bArr[i22];
        if (b10 != 1) {
            if (b10 != 2) {
                return;
            }
            int i23 = i2 + 5;
            qt.y0(114, (bArr[i23] >> 4) & 15);
            qt.y0(115, (bArr[i23] >> 0) & 15);
            qt.y0(116, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(117, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255));
            qt.y0(118, bArr[i2 + 10] & 255);
            qt.y0(119, bArr[i2 + 11] & 255);
            qt.y0(120, bArr[i2 + 12] & 255);
            qt.y0(121, bArr[i2 + 13] & 255);
            qt.y0(122, bArr[i2 + 14] & 255);
            qt.y0(123, bArr[i2 + 15] & 255);
            return;
        }
        int i24 = i2 + 3;
        if (bArr[i24] == 0) {
            qt.y0(126, bArr[i2 + 4] & 255);
            int i25 = i2 + 5;
            qt.y0(127, (bArr[i25] >> 7) & 1);
            qt.y0(128, (bArr[i25] >> 5) & 1);
            qt.y0(129, (bArr[i25] >> 0) & 15);
            qt.y0(130, (bArr[i2 + 6] & 255) | ((bArr[i2 + 7] << 8) & 65280));
            return;
        }
        if (bArr[i24] == 1) {
            qt.y0(131, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(132, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(133, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(134, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(135, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(136, (bArr[i2 + 15] & 255) | ((bArr[i2 + 16] << 8) & 65280));
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f7625g);
        l0.b0.p0(this.f7626h);
        u0.c.f17374a.d(this.f7623e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 161) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 224, 2, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, 132, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        }
    }
}

package k0;

import android.content.Intent;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class bp extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3775b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3776c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3777d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 12}, new int[]{7, 18}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 34}, new int[]{11, 35}, new int[]{13, 29}, new int[]{16, 6}, new int[]{17, 7}, new int[]{18, 8}, new int[]{19, 31}, new int[]{20, 30}, new int[]{21, 24}, new int[]{22, 1}, new int[]{24, 0}, new int[]{25, 13}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        mtVar.f8317l = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 10) {
            qt.j(bArr[i2 + 3], bArr[i2 + 4], (bArr[i2 + 2] & 1) != 1 ? 1 : 0, 480);
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 1:
                int i4 = i2 + 2;
                u0.d.C2((bArr[i4] >> 5) & 1);
                qt.a((bArr[i4] >> 6) & 1);
                break;
            case 2:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f3776c = b3 & 255;
                int i5 = 0;
                while (true) {
                    iArr = this.f3777d;
                    if (i5 < iArr.length) {
                        int i6 = this.f3776c;
                        if (i6 != iArr[i5][0]) {
                            i5++;
                        } else if (i6 != 0) {
                            this.f3775b = i5;
                        }
                    }
                }
                switch (this.f3776c) {
                    case 17:
                        for (int i7 = 0; i7 < (b4 & 255); i7++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                        break;
                    case 18:
                        for (int i8 = 0; i8 < (b4 & 255); i8++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                        break;
                    case 19:
                        for (int i9 = 0; i9 < (b4 & 255); i9++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                        break;
                    case 20:
                        for (int i10 = 0; i10 < (b4 & 255); i10++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                        break;
                    default:
                        int i11 = b4 & 255;
                        if (i11 == 1) {
                            if (i5 < iArr.length) {
                                l0.b0.l0(iArr[i5][1], 0);
                            }
                        } else if (i11 == 0) {
                            int i12 = this.f3775b;
                            if (i12 < iArr.length && i12 != 255) {
                                l0.b0.l0(iArr[i12][1], 1);
                            }
                            this.f3775b = 255;
                        }
                        break;
                }
                break;
            case 3:
                int i13 = bArr[i2 + 2] & 255;
                int i14 = bArr[i2 + 3] & 255;
                qt.y0(10, (i13 >> 7) & 1);
                qt.y0(11, (i13 >> 6) & 1);
                qt.y0(12, (i13 >> 5) & 1);
                qt.y0(13, (i13 >> 4) & 1);
                qt.y0(26, (i13 >> 3) & 1);
                qt.y0(62, (i13 >> 2) & 1);
                qt.y0(65, (i13 >> 1) & 1);
                qt.y0(16, (i13 >> 0) & 1);
                qt.y0(18, (i14 >> 7) & 1);
                qt.y0(19, (i14 >> 6) & 1);
                qt.y0(20, (i14 >> 5) & 1);
                qt.y0(49, (i14 >> 4) & 1);
                qt.y0(21, i14 & 15);
                int i15 = i2 + 4;
                int i16 = bArr[i15] & 255;
                int i17 = i2 + 5;
                int i18 = bArr[i17] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i16 = bArr[i17] & 255;
                    i18 = bArr[i15] & 255;
                }
                if (i16 == 0) {
                    qt.y0(27, -2);
                } else if (i16 == 255) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i16);
                }
                if (i18 == 0) {
                    qt.y0(28, -2);
                } else if (i18 == 255) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i18);
                }
                int i19 = i2 + 6;
                qt.y0(98, (bArr[i19] >> 5) & 1);
                qt.y0(99, (bArr[i19] >> 4) & 1);
                qt.y0(100, (bArr[i19] >> 2) & 1);
                qt.y0(101, (bArr[i19] >> 1) & 1);
                qt.y0(53, (bArr[i19] >> 3) & 1);
                qt.y0(37, (bArr[i19] >> 0) & 1);
                int i20 = i2 + 7;
                qt.y0(29, (bArr[i20] >> 6) & 3);
                qt.y0(31, (bArr[i20] >> 4) & 3);
                qt.y0(30, (bArr[i20] >> 2) & 3);
                qt.y0(32, (bArr[i20] >> 0) & 3);
                int i21 = i2 + 8;
                qt.y0(22, (bArr[i21] >> 7) & 1);
                qt.y0(23, (bArr[i21] >> 6) & 1);
                qt.y0(24, (bArr[i21] >> 5) & 1);
                qt.y0(50, (bArr[i21] >> 4) & 1);
                qt.y0(25, bArr[i21] & DhcpPacket.DHCP_DOMAIN_NAME);
                int i22 = i2 + 9;
                qt.y0(102, (bArr[i22] >> 7) & 1);
                qt.y0(103, (bArr[i22] >> 6) & 1);
                qt.y0(104, (bArr[i22] >> 5) & 1);
                qt.y0(105, (bArr[i22] >> 4) & 1);
                qt.y0(106, (bArr[i22] >> 3) & 1);
                qt.y0(107, (bArr[i22] >> 2) & 1);
                qt.y0(108, (bArr[i22] >> 1) & 1);
                qt.y0(109, (bArr[i22] >> 0) & 1);
                break;
            case 4:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 15] & 255));
                break;
            case 5:
                int i23 = i2 + 2;
                int i24 = bArr[i23] & 255;
                int i25 = i2 + 3;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 4;
                int i28 = bArr[i27] & 255;
                int i29 = i2 + 5;
                int i30 = bArr[i29] & 255;
                if (i24 == 0 && i26 == 0 && i28 == 0 && i30 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i24 || l0.c0.f13014h != i26 || l0.c0.f13015i != i28 || l0.c0.f13016j != i30) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i24;
                l0.c0.f13014h = i26;
                l0.c0.f13015i = i28;
                l0.c0.f13016j = i30;
                u0.d.D2(l0.c0.E0(bArr[i23] & 255));
                u0.d.E2(l0.c0.E0(bArr[i25] & 255));
                u0.d.F2(l0.c0.E0(bArr[i27] & 255));
                u0.d.G2(l0.c0.E0(bArr[i29] & 255));
                break;
            case 6:
                byte b5 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 7) & 1);
                    qt.y0(2, (b5 >> 6) & 1);
                } else {
                    qt.y0(1, (b5 >> 6) & 1);
                    qt.y0(2, (b5 >> 7) & 1);
                }
                qt.y0(4, (b5 >> 5) & 1);
                qt.y0(3, (b5 >> 4) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                qt.y0(0, (b5 >> 2) & 1);
                break;
            case 7:
                int i31 = i2 + 2;
                qt.y0(110, (bArr[i31] >> 7) & 1);
                qt.y0(111, (bArr[i31] >> 6) & 1);
                qt.y0(112, (bArr[i31] >> 5) & 1);
                qt.y0(113, (bArr[i31] >> 4) & 1);
                qt.y0(114, (bArr[i31] >> 3) & 1);
                qt.y0(115, (bArr[i31] >> 2) & 1);
                if (((bArr[i31] >> 7) & 1) == 1 || ((bArr[i31] >> 6) & 1) == 1 || ((bArr[i31] >> 5) & 1) == 1 || ((bArr[i31] >> 4) & 1) == 1) {
                    if (!qt.i0().equals("com.syu.carinfo.wc.ruijie15.LZBinliTianyueCarAirSet")) {
                        try {
                            if (!qt.i0().equals("com.syu.carinfo.wc.ruijie15.LZBinliTianyueCarAirSet")) {
                                Intent intent = new Intent();
                                intent.setClassName("com.syu.canbus", "com.syu.carinfo.wc.ruijie15.LZBinliTianyueCarAirSet");
                                intent.addCategory(Intent.CATEGORY_DEFAULT);
                                intent.setFlags(268435456);
                                App.c().startActivity(intent);
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                } else if (qt.i0().equals("com.syu.carinfo.wc.ruijie15.LZBinliTianyueCarAirSet")) {
                    l0.b0.l0(6, 0);
                    l0.b0.l0(6, 1);
                }
                if ((((bArr[i31] >> 3) & 1) == 1 || ((bArr[i31] >> 2) & 1) == 1) && !o1.u.a0()) {
                    o1.u.z();
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
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
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 255, 1, iArr[0]);
        } else if (i2 == 2) {
            z.k.s(227, 167, 5, iArr[0], iArr[1], iArr[2], iArr[3]);
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, 168, 2, iArr[0], iArr[1]);
        }
    }
}

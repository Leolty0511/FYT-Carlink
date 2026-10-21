package k0;

import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class uo extends lt {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f11130j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11132c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11133d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 12}, new int[]{7, 76}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 34}, new int[]{11, 35}, new int[]{12, 9}, new int[]{13, 29}, new int[]{14, 33}, new int[]{15, 32}, new int[]{16, 6}, new int[]{17, -1}, new int[]{18, -1}, new int[]{19, -1}, new int[]{20, -1}, new int[]{21, 24}, new int[]{22, 1}, new int[]{23, 54}, new int[]{24, 0}, new int[]{25, 13}, new int[]{26, 58}, new int[]{27, -1}, new int[]{28, 40}, new int[]{29, 41}, new int[]{30, 42}, new int[]{31, 43}, new int[]{32, 44}, new int[]{33, 45}, new int[]{34, 38}, new int[]{35, 32}, new int[]{36, 35}, new int[]{37, 34}, new int[]{38, 33}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11134e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f11135f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f11136g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11137h = 13;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o1.g0 f11138i = new o1.g0(getClass().getSimpleName(), 32);

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(uo.this.f11136g);
            uo.this.f11134e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            uo uoVar = uo.this;
            int i2 = uoVar.f11134e - 1;
            uoVar.f11134e = i2;
            if (i2 <= 0) {
                l0.b0.p0(uoVar.f11136g);
                uo.this.f11134e = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                uo uoVar2 = uo.this;
                uoVar2.c3(uoVar2.f11138i.b(13, 0));
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f11138i.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8315j = 0;
        mtVar.f8319n = 0;
        mtVar.f8320o = 1;
        mtVar.f8317l = 1;
        u0.c.f17386m.a(this.f11135f, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 10) {
            qt.j(bArr[i2 + 3], bArr[i2 + 4], (bArr[i2 + 2] & 1) != 1 ? 1 : 0, 480);
        }
        if (b2 == 53) {
            qt.y0(98, bArr[i2 + 3] & 255);
            qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(100, ((bArr[i2 + 9] << 24) & 65280) | ((bArr[i2 + 10] << 16) & 65280) | ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
            qt.y0(1032, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            int i4 = i2 + 8;
            if ((bArr[i4] & 255) == 0) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3(((bArr[i4] & 255) * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        if (b2 == 65) {
            int i5 = bArr[i2 + 2] & DhcpPacket.DHCP_DOMAIN_NAME;
            if (bArr[i2 + 3] == 1) {
                if (i5 != 0) {
                    qt.a(1);
                } else {
                    qt.a(0);
                }
                qt.y0(Process.MEDIA_UID, i5);
                return;
            }
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 1:
                if (u0.b.f17357r0 == 0 && (bArr[i2 + 2] & 4) == 4 && !o1.u.S("com.syu.carui")) {
                    o1.u.z();
                    break;
                }
                break;
            case 2:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f11132c = b3 & 255;
                int i6 = 0;
                while (true) {
                    iArr = this.f11133d;
                    if (i6 < iArr.length) {
                        int i7 = this.f11132c;
                        if (i7 != iArr[i6][0]) {
                            i6++;
                        } else if (i7 != 0) {
                            this.f11131b = i6;
                        }
                    }
                }
                int i8 = this.f11132c;
                if (i8 != 27) {
                    switch (i8) {
                        case 17:
                            for (int i9 = 0; i9 < (b4 & 255); i9++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        case 18:
                            for (int i10 = 0; i10 < (b4 & 255); i10++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            break;
                        case 19:
                            for (int i11 = 0; i11 < (b4 & 255); i11++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            break;
                        case 20:
                            for (int i12 = 0; i12 < (b4 & 255); i12++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            break;
                        default:
                            int i13 = b4 & 255;
                            if (i13 == 1) {
                                if (i6 < iArr.length) {
                                    l0.b0.l0(iArr[i6][1], 0);
                                }
                            } else if (i13 == 0) {
                                int i14 = this.f11131b;
                                if (i14 < iArr.length && i14 != 255) {
                                    l0.b0.l0(iArr[i14][1], 1);
                                }
                                this.f11131b = 255;
                            }
                            break;
                    }
                } else if ((b4 & 255) == 1 && !o1.u.S("com.syu.carui")) {
                    o1.u.z();
                    break;
                }
                break;
            case 3:
                int i15 = i2 + 2;
                qt.y0(10, (bArr[i15] >> 7) & 1);
                qt.y0(11, (bArr[i15] >> 6) & 1);
                qt.y0(12, (bArr[i15] >> 5) & 1);
                qt.y0(13, (bArr[i15] >> 4) & 1);
                qt.y0(26, (bArr[i15] >> 3) & 1);
                qt.y0(62, (bArr[i15] >> 2) & 1);
                qt.y0(15, (bArr[i15] >> 0) & 1);
                qt.y0(16, (bArr[i15] >> 0) & 1);
                int i16 = i2 + 3;
                qt.y0(18, (bArr[i16] >> 7) & 1);
                qt.y0(19, (bArr[i16] >> 6) & 1);
                qt.y0(20, (bArr[i16] >> 5) & 1);
                qt.y0(49, (bArr[i16] >> 4) & 1);
                qt.y0(21, (bArr[i16] >> 0) & 15);
                int i17 = i2 + 4;
                int i18 = bArr[i17] & 255;
                int i19 = i2 + 5;
                int i20 = bArr[i19] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i18 = bArr[i19] & 255;
                    i20 = bArr[i17] & 255;
                }
                if (i18 == 0) {
                    qt.y0(27, -2);
                } else if (i18 == 127) {
                    qt.y0(27, -1);
                } else if (i18 != 255) {
                    qt.y0(27, i18);
                } else {
                    qt.y0(27, -3);
                }
                if (i20 == 0) {
                    qt.y0(28, -2);
                } else if (i20 == 127) {
                    qt.y0(28, -1);
                } else if (i20 != 255) {
                    qt.y0(28, i20);
                } else {
                    qt.y0(28, -3);
                }
                int i21 = i2 + 6;
                qt.y0(53, (bArr[i21] >> 3) & 1);
                qt.y0(31, (bArr[i21] >> 2) & 1);
                qt.y0(32, (bArr[i21] >> 1) & 1);
                qt.y0(37, (bArr[i21] >> 0) & 1);
                int i22 = i2 + 7;
                qt.y0(29, (bArr[i22] >> 4) & 15);
                qt.y0(30, (bArr[i22] >> 0) & 15);
                int i23 = i2 + 8;
                qt.y0(22, (bArr[i23] >> 7) & 1);
                qt.y0(23, (bArr[i23] >> 6) & 1);
                qt.y0(24, (bArr[i23] >> 5) & 1);
                qt.y0(50, (bArr[i23] >> 4) & 1);
                qt.y0(25, (bArr[i23] >> 0) & 15);
                break;
            case 4:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
            case 5:
                int i24 = i2 + 2;
                int i25 = bArr[i24] & 255;
                int i26 = i2 + 3;
                int i27 = bArr[i26] & 255;
                int i28 = i2 + 4;
                int i29 = bArr[i28] & 255;
                int i30 = i2 + 5;
                int i31 = bArr[i30] & 255;
                if (i25 == 0 && i27 == 0 && i29 == 0 && i31 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i25 || l0.c0.f13014h != i27 || l0.c0.f13015i != i29 || l0.c0.f13016j != i31) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i25;
                l0.c0.f13014h = i27;
                l0.c0.f13015i = i29;
                l0.c0.f13016j = i31;
                u0.d.D2(l0.c0.E0(bArr[i24] & 255));
                u0.d.E2(l0.c0.E0(bArr[i26] & 255));
                u0.d.F2(l0.c0.E0(bArr[i28] & 255));
                u0.d.G2(l0.c0.E0(bArr[i30] & 255));
                break;
            case 6:
                int i32 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i32 >> 6) & 1);
                    qt.y0(1, (i32 >> 7) & 1);
                } else {
                    qt.y0(2, (i32 >> 7) & 1);
                    qt.y0(1, (i32 >> 6) & 1);
                }
                qt.y0(4, (i32 >> 5) & 1);
                qt.y0(3, (i32 >> 4) & 1);
                qt.y0(5, (i32 >> 3) & 1);
                qt.y0(0, (i32 >> 2) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f11138i.j();
        u0.c.f17386m.d(this.f11135f);
        l0.b0.p0(this.f11136g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 102) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 130, 3, iArr[0], iArr[1], iArr[2]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 255, 1, iArr[0]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 167, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 168, 2, iArr[0], iArr[1]);
        } else if (i2 == 4 && (iArr[0] & 255) == 250) {
            c3(iArr[1]);
        }
    }

    public final void c3(int i2) {
        qt.y0(101, i2);
        f11130j = i2;
        int iB = this.f11138i.b(13, 0);
        int i3 = f11130j;
        if (iB != i3) {
            this.f11138i.g(13, i3);
        }
    }
}

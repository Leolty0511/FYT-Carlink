package k0;

import android.app.ActivityManager;
import android.content.Intent;
import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.format.Time;
import app.App;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class y4 extends lt {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f12352m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f12353n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f12354o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f12355p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f12356q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f12357r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f12358s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f12359t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f12360u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f12361v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f12362w;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12364c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12365d = {new int[]{2, 5}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 29}, new int[]{8, 6}, new int[]{16, 2}, new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{23, 3}, new int[]{24, 4}, new int[]{33, 2}, new int[]{34, 11}, new int[]{35, 13}, new int[]{41, 13}, new int[]{48, 18}, new int[]{49, 26}, new int[]{50, 1}, new int[]{51, 24}, new int[]{52, 55}, new int[]{54, 54}, new int[]{56, 34}, new int[]{57, 35}, new int[]{64, 32}, new int[]{65, 33}, new int[]{66, 20}, new int[]{67, 19}, new int[]{68, 40}, new int[]{69, 41}, new int[]{70, 42}, new int[]{71, 43}, new int[]{72, 44}, new int[]{73, 45}, new int[]{80, 21}, new int[]{81, 18}, new int[]{82, 38}, new int[]{83, 58}, new int[]{84, 25}, new int[]{85, 11}, new int[]{86, 3}, new int[]{87, 4}, new int[]{88, 34}, new int[]{89, 35}, new int[]{128, 25}, new int[]{42, 55}, new int[]{43, 0}, new int[]{44, 54}, new int[]{45, 18}, new int[]{46, 10}, new int[]{47, 62}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12366e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12367f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f12368g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12369h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f12370i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f12371j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f12372k = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f12373l = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(y4.this.f12371j);
            y4.this.f12369h = 10;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y4 y4Var = y4.this;
            int i2 = y4Var.f12369h - 1;
            y4Var.f12369h = i2;
            if (i2 > 0) {
                o1.x.x(nt.f8643f, 1018, 1);
            } else {
                l0.b0.p0(y4Var.f12371j);
                y4.this.f12369h = 10;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 0) {
                z.k.s(227, 6, 167, 1, 1, 0);
                return;
            }
            if (i2 == 1) {
                z.k.s(227, 6, 167, 3, 1, 0);
            } else if (i2 == 2) {
                z.k.s(227, 6, 167, 1, 2, 0);
            } else {
                if (i2 != 3) {
                    return;
                }
                z.k.s(227, 6, 167, 1, 3, 0);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 1) {
                Time time = new Time(Time.getCurrentTimezone());
                time.setToNow();
                z.k.s(227, 8, -90, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute);
            }
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
        qt.z(this.f12373l);
        qt.z(this.f12372k);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == 2) {
            if (nt.a()) {
                int i4 = bArr[i2 + 2] & 255;
                this.f12364c = i4;
                int i5 = 0;
                while (true) {
                    iArr = this.f12365d;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = this.f12364c;
                    if (i6 == iArr[i5][0]) {
                        if (i6 == 0) {
                            break;
                        }
                        this.f12363b = i5;
                        break;
                    }
                    i5++;
                }
                if (this.f12364c == 32) {
                    if (!c3().equals("com.syu.carinfo.rzc.biaozhi408.RZC_BZ408OilMileIndexActi")) {
                        d3();
                        return;
                    } else {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                        return;
                    }
                }
                if (i4 != 0) {
                    if (i5 < iArr.length) {
                        l0.b0.l0(iArr[i5][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i7 = this.f12363b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f12363b = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 33) {
            byte b3 = bArr[i2 + 2];
            qt.y0(10, (b3 >> 7) & 1);
            qt.y0(11, (b3 >> 6) & 1);
            int[] iArr2 = new int[1];
            iArr2[0] = (b3 & 32) == 0 ? 0 : 1;
            qt.y0(12, iArr2);
            qt.y0(13, (b3 >> 3) & 1);
            qt.y0(14, (b3 >> 2) & 1);
            qt.y0(16, (b3 >> 0) & 1);
            byte b4 = bArr[i2 + 3];
            qt.y0(18, (b4 >> 7) & 1);
            qt.y0(19, (b4 >> 6) & 1);
            qt.y0(20, (b4 >> 5) & 1);
            int[] iArr3 = new int[1];
            iArr3[0] = (b4 & 224) == 0 ? 0 : 1;
            qt.y0(49, iArr3);
            int i8 = b4 & DhcpPacket.DHCP_DOMAIN_NAME;
            if (i8 > 9) {
                i8 = 9;
            }
            qt.y0(21, i8);
            int i9 = i2 + 4;
            byte b5 = bArr[i9];
            int i10 = i2 + 5;
            byte b6 = bArr[i10];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b5 = bArr[i10];
                b6 = bArr[i9];
            }
            int i11 = i2 + 6;
            if ((bArr[i11] & 2) == 0) {
                if (b5 == -1) {
                    qt.y0(27, -3);
                } else if (b5 != 0) {
                    qt.y0(27, b5 & 255);
                } else {
                    qt.y0(27, -2);
                }
            }
            if ((bArr[i11] & 2) == 0) {
                if (b6 == -1) {
                    qt.y0(28, -3);
                } else if (b6 != 0) {
                    qt.y0(28, b6 & 255);
                } else {
                    qt.y0(28, -2);
                }
            }
            byte b7 = bArr[i11];
            qt.y0(15, (b7 >> 7) & 1);
            qt.y0(53, (b7 >> 3) & 1);
            qt.y0(37, (b7 >> 0) & 1);
            int[] iArr4 = new int[1];
            iArr4[0] = ((bArr[i2 + 7] & 255) & 128) == 0 ? 0 : 1;
            qt.y0(38, iArr4);
            int i12 = (bArr[i2 + 8] >> 6) & 3;
            qt.y0(52, i12 <= 2 ? i12 : 2);
            return;
        }
        if (b2 == 41) {
            if (this.f12368g) {
                return;
            }
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, 5450);
            return;
        }
        if (b2 != 48) {
            if (b2 != 61) {
                if (b2 == 125) {
                    int i13 = bArr[i2 + 2] & 255;
                    if (i13 == 1) {
                        if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                            int i14 = i2 + 3;
                            l0.c0.b((bArr[i14] >> 3) & 1, (bArr[i14] >> 4) & 1, 0);
                            return;
                        } else {
                            int i15 = i2 + 3;
                            l0.c0.a((bArr[i15] >> 3) & 1, (bArr[i15] >> 4) & 1, 0);
                            return;
                        }
                    }
                    if (i13 == 3) {
                        int i16 = (((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255)) / 100;
                        qt.y0(1031, i16);
                        o1.x.C(nt.f8643f, 1049, new int[]{1, i16}, null, null);
                        return;
                    } else if (i13 == 8) {
                        qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                        this.f12368g = true;
                        return;
                    } else {
                        if (i13 != 10) {
                            return;
                        }
                        qt.y0(1032, (65280 & (bArr[i2 + 4] << 8)) | (255 & bArr[i2 + 3]));
                        return;
                    }
                }
                switch (b2) {
                    case 50:
                        if (nt.a()) {
                            u0.d.R2(l0.e0.m(bArr[i2 + 3]));
                            int i17 = i2 + 4;
                            u0.d.S2(l0.e0.m(bArr[i17]));
                            u0.d.T2(l0.e0.m(bArr[i17]));
                            u0.d.U2(l0.e0.m(bArr[i2 + 5]));
                            int i18 = i2 + 6;
                            int i19 = bArr[i18] & 255;
                            int i20 = i2 + 7;
                            int i21 = bArr[i20] & 255;
                            int i22 = i2 + 8;
                            int i23 = 255 & bArr[i22];
                            if (i19 >= 5 && i21 >= 5 && i23 >= 5) {
                                u0.d.C2(0);
                            } else if ((l0.c0.f13013g != i19 || l0.c0.f13014h != i21 || l0.c0.f13015i != i23) && u0.b.f17347o == 0) {
                                u0.d.C2(1);
                                l0.c0.f13017k = 4;
                                l0.b0.b(l0.c0.f13018l);
                            }
                            l0.c0.f13013g = i19;
                            l0.c0.f13014h = i21;
                            l0.c0.f13015i = i23;
                            u0.d.D2(l0.e0.m(bArr[i18]));
                            u0.d.E2(l0.e0.m(bArr[i20]));
                            u0.d.F2(l0.e0.m(bArr[i20]));
                            u0.d.G2(l0.e0.m(bArr[i22]));
                        }
                        break;
                    case 51:
                        int i24 = ((bArr[i2 + 8] & 255) << 16) | ((bArr[i2 + 9] & 255) << 8) | (bArr[i2 + 10] & 255);
                        qt.y0(102, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                        qt.y0(103, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                        qt.y0(104, (255 & bArr[i2 + 7]) | ((bArr[i2 + 6] & 255) << 8));
                        qt.y0(98, i24);
                        break;
                    case 52:
                        qt.y0(99, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                        qt.y0(101, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                        qt.y0(105, ((bArr[i2 + 6] & 255) << 8) | (255 & bArr[i2 + 7]));
                        break;
                    case 53:
                        qt.y0(106, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                        qt.y0(109, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                        qt.y0(108, ((bArr[i2 + 6] & 255) << 8) | (255 & bArr[i2 + 7]));
                        break;
                    case 54:
                        if (nt.a()) {
                            l0.f0.a(bArr[i2 + 2]);
                        }
                        break;
                    default:
                        switch (b2) {
                            case 56:
                                byte b8 = bArr[i2 + 2];
                                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                                    qt.y0(1, (b8 >> 6) & 1);
                                    qt.y0(2, (b8 >> 7) & 1);
                                } else {
                                    qt.y0(1, (b8 >> 7) & 1);
                                    qt.y0(2, (b8 >> 6) & 1);
                                }
                                qt.y0(3, (b8 >> 5) & 1);
                                qt.y0(4, (b8 >> 4) & 1);
                                qt.y0(5, (b8 >> 3) & 1);
                                int i25 = bArr[i2 + 3] & 255;
                                qt.y0(133, (i25 >> 7) & 1);
                                qt.y0(181, (i25 >> 6) & 1);
                                qt.y0(134, (i25 >> 5) & 1);
                                qt.y0(189, (i25 >> 4) & 1);
                                qt.y0(132, (i25 >> 3) & 1);
                                qt.y0(190, (i25 >> 2) & 1);
                                int i26 = bArr[i2 + 4] & 255;
                                qt.y0(110, (i26 >> 7) & 1);
                                qt.y0(209, (i26 >> 6) & 1);
                                qt.y0(118, (i26 >> 5) & 3);
                                qt.y0(192, (i26 >> 3) & 3);
                                qt.y0(193, (i26 >> 1) & 3);
                                qt.y0(182, i26 & 1);
                                int i27 = bArr[i2 + 5] & 255;
                                qt.y0(119, i27 >> 5);
                                qt.y0(183, (i27 >> 4) & 1);
                                qt.y0(171, (i27 >> 3) & 1);
                                int i28 = bArr[i2 + 6] & 255;
                                qt.y0(113, i28 >> 6);
                                qt.y0(166, (i28 >> 4) & 3);
                                qt.y0(135, (i28 >> 1) & 3);
                                qt.y0(136, (i28 >> 0) & 1);
                                int i29 = bArr[i2 + 7] & 255;
                                qt.y0(167, (i29 >> 7) & 1);
                                qt.y0(168, (i29 >> 6) & 1);
                                qt.y0(111, (i29 >> 5) & 1);
                                qt.y0(126, (i29 >> 4) & 1);
                                qt.y0(137, (i29 >> 0) & 15);
                                int i30 = bArr[i2 + 8] & 255;
                                qt.y0(184, (i30 >> 7) & 1);
                                qt.y0(185, (i30 >> 6) & 1);
                                qt.y0(191, (i30 >> 5) & 1);
                                qt.y0(195, (i30 >> 1) & 1);
                                qt.y0(196, (i30 >> 0) & 1);
                                qt.y0(258, (bArr[i2 + 10] >> 6) & 1);
                                break;
                            case 57:
                                int i31 = u0.b.K3;
                                if (i31 == 1 || i31 == 2) {
                                    qt.y0(205, bArr[i2 + 2] & 255);
                                    qt.y0(206, bArr[i2 + 3] & 255);
                                    qt.y0(207, bArr[i2 + 4] & 255);
                                }
                                break;
                            case 58:
                                int i32 = bArr[i2 + 2] & 255;
                                int i33 = bArr[i2 + 3] & 255;
                                qt.y0(145, i32);
                                qt.y0(114, i33);
                                break;
                            default:
                                switch (b2) {
                                    case 63:
                                        int i34 = i2 + 2;
                                        if (this.f12366e != ((bArr[i34] >> 7) & 1)) {
                                            int i35 = (bArr[i34] >> 7) & 1;
                                            this.f12366e = i35;
                                            if (i35 == 1) {
                                                f3();
                                            } else if (c3().equals("com.syu.carinfo.rzc.biaozhi408.RZC_BZ408SpeedLimitSetActi")) {
                                                l0.b0.l0(6, 0);
                                                l0.b0.l0(6, 1);
                                            }
                                        }
                                        if (this.f12367f != ((bArr[i34] >> 6) & 1)) {
                                            int i36 = (bArr[i34] >> 6) & 1;
                                            this.f12367f = i36;
                                            if (i36 == 1) {
                                                e3();
                                            } else if (c3().equals("com.syu.carinfo.rzc.biaozhi408.RZC_BZ408CruisingSpeedSetActi")) {
                                                l0.b0.l0(6, 0);
                                                l0.b0.l0(6, 1);
                                            }
                                        }
                                        break;
                                    case 64:
                                        if (((bArr[i2 + 2] >> 7) & 1) != 1) {
                                            qt.a(0);
                                        } else {
                                            qt.a(1);
                                        }
                                        break;
                                    case 65:
                                        int i37 = i2 + 2;
                                        qt.y0(197, (bArr[i37] >> 7) & 1);
                                        qt.y0(198, (bArr[i37] >> 6) & 1);
                                        qt.y0(199, (bArr[i37] >> 5) & 1);
                                        qt.y0(200, (bArr[i37] >> 4) & 1);
                                        qt.y0(201, (bArr[i37] >> 3) & 1);
                                        qt.y0(202, (bArr[i37] >> 2) & 1);
                                        qt.y0(203, (bArr[i37] >> 1) & 1);
                                        qt.y0(204, (bArr[i37] >> 0) & 1);
                                        break;
                                }
                                break;
                        }
                        break;
                }
                return;
            }
            int i38 = bArr[i2 + 2] & 255;
            int i39 = bArr[i2 + 3] & 255;
            int i40 = bArr[i2 + 4] & 255;
            int i41 = bArr[i2 + 5] & 255;
            int i42 = bArr[i2 + 6] & 255;
            int i43 = bArr[i2 + 7] & 255;
            int i44 = bArr[i2 + 8] & 255;
            int i45 = bArr[i2 + 9] & 255;
            int i46 = bArr[i2 + 10] & 255;
            int i47 = bArr[i2 + 11] & 255;
            int i48 = bArr[i2 + 12] & 255;
            int i49 = 255 & bArr[i2 + 13];
            qt.y0(169, i38);
            qt.y0(170, i39);
            qt.y0(178, i40);
            qt.y0(117, i41);
            qt.y0(150, i42);
            qt.y0(149, i43);
            qt.y0(172, i44);
            qt.y0(173, i45);
            qt.y0(174, i46);
            qt.y0(175, i47);
            qt.y0(176, i48);
            qt.y0(177, i49);
        } else if (nt.a()) {
            u0.d.R2(l0.e0.m(bArr[i2 + 5]));
            int i50 = i2 + 6;
            u0.d.S2(l0.e0.m(bArr[i50]));
            u0.d.T2(l0.e0.m(bArr[i50]));
            u0.d.U2(l0.e0.m(bArr[i2 + 7]));
            u0.d.D2(l0.e0.m(bArr[i2 + 2]));
            int i51 = i2 + 3;
            u0.d.E2(l0.e0.m(bArr[i51]));
            u0.d.F2(l0.e0.m(bArr[i51]));
            u0.d.G2(l0.e0.m(bArr[i2 + 4]));
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f12373l);
        qt.q0(this.f12372k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 259) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 9:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(3, iArr[0]);
                    break;
                }
                break;
            case 10:
                if (iArr != null && iArr.length > 0) {
                    b3(4, iArr[0]);
                    break;
                }
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    b3(5, iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    b3(7, iArr[0]);
                    break;
                }
                break;
            case 14:
                if (iArr != null && iArr.length > 0) {
                    b3(8, iArr[0]);
                    break;
                }
                break;
            case 17:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(12, iArr[0]);
                    break;
                }
                break;
            case 18:
                if (iArr != null && iArr.length > 0) {
                    b3(13, iArr[0]);
                    break;
                }
                break;
            case 19:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(14, iArr[0]);
                    break;
                }
                break;
            case 20:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(15, iArr[0]);
                    break;
                }
                break;
            case 21:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(1, iArr[0]);
                    break;
                }
                break;
            case 22:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(2, iArr[0]);
                    break;
                }
                break;
            case 23:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(16, iArr[0]);
                    break;
                }
                break;
            case 24:
                if (iArr != null && iArr.length > 0) {
                    b3(9, iArr[0] + 1);
                    break;
                }
                break;
            case 25:
                if (iArr != null && iArr.length > 0) {
                    b3(10, iArr[0]);
                    break;
                }
                break;
            case 26:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(11, iArr[0]);
                    break;
                }
                break;
            case 27:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(6, iArr[0]);
                    break;
                }
                break;
            case 28:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 6, -126, (byte) (iArr[0] == 2 ? 65 : iArr[0] == 3 ? 34 : 0), 0, 0);
                    break;
                }
                break;
            case 29:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 6, -126, (byte) iArr[0], 0, 0);
                    break;
                }
                break;
            case 30:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    a3(2, iArr[0]);
                    break;
                }
                break;
            case 31:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    a3(3, iArr[0]);
                    break;
                }
                break;
            case 32:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    a3(1, iArr[0]);
                    break;
                }
                break;
            case 36:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    a3(7, iArr[0]);
                    break;
                }
                break;
            case 37:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    a3(6, iArr[0]);
                    break;
                }
                break;
            case 38:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    a3(8, iArr[0]);
                    break;
                }
                break;
            case 39:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        a3(10, 2);
                    } else {
                        a3(10, 1);
                    }
                    break;
                }
                break;
            case 40:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        a3(4, 2);
                    } else {
                        a3(4, 1);
                    }
                    break;
                }
                break;
            case 41:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        a3(5, 2);
                    } else {
                        a3(5, 1);
                    }
                    break;
                }
                break;
            case 42:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    }
                    if (iArr[0] > 2) {
                        iArr[0] = 2;
                    }
                    a3(9, iArr[0]);
                    break;
                }
                break;
            case 43:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    a3(11, iArr[0]);
                    break;
                }
                break;
            case 50:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] == 1) {
                        f12361v = 1;
                        f12362w = 0;
                    }
                    h3();
                    break;
                }
                break;
            case 51:
                if (iArr != null && iArr.length > 0) {
                    f12353n = iArr[0];
                    f12359t = 0;
                    f12360u = 1;
                    f12361v = 0;
                    f12362w = 1;
                    h3();
                    break;
                }
                break;
            case 52:
                if (iArr != null && iArr.length > 0) {
                    f12354o = iArr[0];
                    f12359t = 0;
                    f12360u = 1;
                    f12361v = 0;
                    f12362w = 1;
                    h3();
                    break;
                }
                break;
            case 53:
                if (iArr != null && iArr.length > 0) {
                    f12355p = iArr[0];
                    f12359t = 0;
                    f12360u = 1;
                    f12361v = 0;
                    f12362w = 1;
                    h3();
                    break;
                }
                break;
            case 54:
                if (iArr != null && iArr.length > 0) {
                    f12356q = iArr[0];
                    f12359t = 0;
                    f12360u = 1;
                    f12361v = 0;
                    f12362w = 1;
                    h3();
                    break;
                }
                break;
            case 55:
                if (iArr != null && iArr.length > 0) {
                    f12357r = iArr[0];
                    f12359t = 0;
                    f12360u = 1;
                    f12361v = 0;
                    f12362w = 1;
                    h3();
                    break;
                }
                break;
            case 56:
                if (iArr != null && iArr.length > 0) {
                    f12358s = iArr[0];
                    f12359t = 0;
                    f12360u = 1;
                    f12361v = 0;
                    f12362w = 1;
                    h3();
                    break;
                }
                break;
            case 60:
                if (iArr != null && iArr.length > 0) {
                    f12353n = iArr[0];
                    f12359t = 1;
                    f12360u = 0;
                    f12361v = 0;
                    f12362w = 1;
                    h3();
                    break;
                }
                break;
            case 61:
                if (iArr != null && iArr.length > 0) {
                    f12354o = iArr[0];
                    f12359t = 1;
                    f12360u = 0;
                    f12361v = 0;
                    f12362w = 1;
                    h3();
                    break;
                }
                break;
            case 62:
                if (iArr != null && iArr.length > 0) {
                    f12355p = iArr[0];
                    f12359t = 1;
                    f12360u = 0;
                    f12361v = 0;
                    f12362w = 1;
                    h3();
                    break;
                }
                break;
            case 63:
                if (iArr != null && iArr.length > 0) {
                    f12356q = iArr[0];
                    f12359t = 1;
                    f12360u = 0;
                    f12361v = 0;
                    f12362w = 1;
                    h3();
                    break;
                }
                break;
            case 64:
                if (iArr != null && iArr.length > 0) {
                    f12357r = iArr[0];
                    f12359t = 1;
                    f12360u = 0;
                    f12361v = 0;
                    f12362w = 1;
                    h3();
                    break;
                }
                break;
            case 65:
                if (iArr != null && iArr.length > 0) {
                    f12358s = iArr[0];
                    f12359t = 1;
                    f12360u = 0;
                    f12361v = 0;
                    f12362w = 1;
                    h3();
                    break;
                }
                break;
            case 70:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 4, -113, (byte) iArr[0]);
                    break;
                }
                break;
            case 71:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 4, -113, (byte) iArr[0]);
                    break;
                }
                break;
            case 72:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 4, -113, (byte) iArr[0]);
                    break;
                }
                break;
            case 73:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(18, iArr[0]);
                    break;
                }
                break;
            case 74:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(19, iArr[0]);
                    break;
                }
                break;
            case 75:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(20, iArr[0]);
                    break;
                }
                break;
            case 76:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(21, iArr[0]);
                    break;
                }
                break;
            case 77:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(22, iArr[0]);
                    break;
                }
                break;
            case 78:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(17, iArr[0]);
                    break;
                }
                break;
            case 79:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(23, iArr[0]);
                    break;
                }
                break;
            case 80:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    a3(13, iArr[0]);
                    break;
                }
                break;
            case 81:
                if (iArr != null && iArr.length > 0) {
                    a3(12, 1);
                    a3(12, 0);
                    break;
                }
                break;
            case 83:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 4, -115, (byte) iArr[0]);
                    break;
                }
                break;
            case 84:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(24, iArr[0]);
                    break;
                }
                break;
            case 85:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(25, iArr[0]);
                    break;
                }
                break;
            case 86:
                if (iArr != null && iArr.length > 0) {
                    a3(14, 1);
                    a3(14, 0);
                    break;
                }
                break;
            case 87:
                if (iArr != null && iArr.length > 0) {
                    a3(iArr[0], iArr[1]);
                    break;
                }
                break;
            case 88:
                if (iArr != null && iArr.length > 0) {
                    b3(iArr[0], iArr[1]);
                    break;
                }
                break;
        }
    }

    public final void a3(int i2, int i3) {
        z.k.s(227, 5, -118, (byte) i2, (byte) i3);
    }

    public final void b3(int i2, int i3) {
        z.k.s(227, 5, -128, (byte) i2, (byte) i3);
    }

    public String c3() {
        List<ActivityManager.RunningTaskInfo> runningTasks = a.f.d().getRunningTasks(2);
        if (runningTasks == null || runningTasks.size() <= 0) {
            return null;
        }
        try {
            return runningTasks.get(0).topActivity.getClassName();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final void d3() {
        if (c3().equals("com.syu.carinfo.rzc.biaozhi408.RZC_BZ408OilMileIndexActi")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.biaozhi408.RZC_BZ408OilMileIndexActi");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void e3() {
        if (c3().equals("com.syu.carinfo.rzc.biaozhi408.RZC_BZ408CruisingSpeedSetActi")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.biaozhi408.RZC_BZ408CruisingSpeedSetActi");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void f3() {
        if (c3().equals("com.syu.carinfo.rzc.biaozhi408.RZC_BZ408SpeedLimitSetActi")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.biaozhi408.RZC_BZ408SpeedLimitSetActi");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void g3() {
        z.k.s(227, 15, -119, (byte) f12352m, (byte) f12353n, (byte) f12354o, (byte) f12355p, (byte) f12356q, (byte) f12357r, (byte) f12358s, 0, 0, 0, 0, 0);
    }

    public final void h3() {
        f12352m = 0;
        int i2 = 0 | (f12359t << 7);
        f12352m = i2;
        int i3 = i2 | (f12360u << 6);
        f12352m = i3;
        int i4 = i3 | (f12361v << 5);
        f12352m = i4;
        f12352m = i4 | (f12362w << 4);
        g3();
    }
}

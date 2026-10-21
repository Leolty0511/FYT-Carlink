package k0;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class xg extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12125b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12126c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12127d = {new int[]{1, 7}, new int[]{4, 8}, new int[]{7, 3}, new int[]{8, 68}, new int[]{10, 4}, new int[]{11, 67}, new int[]{12, 18}, new int[]{13, 18}, new int[]{14, 38}, new int[]{15, 38}, new int[]{16, 15}, new int[]{17, 2}, new int[]{18, 26}, new int[]{19, 13}, new int[]{20, 13}, new int[]{21, 5}, new int[]{22, 5}, new int[]{23, 6}, new int[]{24, 6}, new int[]{25, 12}, new int[]{26, 25}, new int[]{27, 25}, new int[]{28, -1}, new int[]{29, 26}, new int[]{30, 18}, new int[]{31, 62}, new int[]{32, 12}, new int[]{33, -1}, new int[]{34, -1}, new int[]{35, -1}, new int[]{36, -1}, new int[]{37, -1}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12128e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f12129f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f12130g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f12131h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f12132i = 0.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f12133j = 255;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f12134k = 255;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f12135l = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o1.u.S("com.syu.fourcamera2")) {
                return;
            }
            SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (qt.k0()) {
                return;
            }
            int[] iArr = new int[4];
            iArr[0] = 227;
            iArr[1] = 9;
            iArr[2] = 1;
            iArr[3] = u0.b.f17347o == 1 ? 96 : 0;
            z.k.s(iArr);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 118, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second, (((byte) time.weekDay) & DhcpPacket.DHCP_DOMAIN_NAME) | 224);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            xg.this.f12132i = u0.b.f17359s0;
            if (xg.this.f12132i > 360.0f) {
                xg.d3(xg.this, 360.0f);
            }
            if (xg.this.f12132i < 0.0f) {
                xg.d3(xg.this, 360.0f);
                xg xgVar = xg.this;
                xgVar.f12132i = 360.0f - Math.abs(xgVar.f12132i);
            }
            if ((xg.this.f12132i <= 22.5d && xg.this.f12132i >= 0.0f) || (xg.this.f12132i >= 337.5d && xg.this.f12132i <= 360.0f)) {
                xg.this.f12134k = 0;
            } else if (xg.this.f12132i > 22.5d && xg.this.f12132i < 67.5d) {
                xg.this.f12134k = 1;
            } else if (xg.this.f12132i >= 67.5d && xg.this.f12132i <= 112.5d) {
                xg.this.f12134k = 2;
            } else if (xg.this.f12132i > 112.5d && xg.this.f12132i < 157.5d) {
                xg.this.f12134k = 3;
            } else if (xg.this.f12132i >= 157.5d && xg.this.f12132i <= 202.5d) {
                xg.this.f12134k = 4;
            } else if (xg.this.f12132i > 202.5d && xg.this.f12132i < 247.5d) {
                xg.this.f12134k = 5;
            } else if (xg.this.f12132i >= 247.5d && xg.this.f12132i <= 292.5d) {
                xg.this.f12134k = 6;
            } else if (xg.this.f12132i <= 292.5d || xg.this.f12132i >= 337.5d) {
                xg.this.f12134k = 15;
            } else {
                xg.this.f12134k = 7;
            }
            if (xg.this.f12134k != xg.this.f12133j) {
                z.k.s(227, 202, 4, (int) xg.this.f12132i, (int) ((xg.this.f12132i * 10.0f) % 10.0f), 0, 128);
                xg xgVar2 = xg.this;
                xgVar2.f12133j = xgVar2.f12134k;
            }
        }
    }

    public static /* synthetic */ float d3(xg xgVar, float f2) {
        float f3 = xgVar.f12132i % f2;
        xgVar.f12132i = f3;
        return f3;
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
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(21);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(23);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(23);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(21);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(21);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(19);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(19);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(20);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(20);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(25);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(25);
                }
                break;
            case 39:
                int i2 = nt.f8645g[21];
                int i3 = iArr[1];
                if (i3 == -2) {
                    a3(9);
                    break;
                } else if (i3 == -1) {
                    a3(10);
                    break;
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    a3(2);
                } else {
                    a3(3);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    a3(4);
                } else {
                    a3(5);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        qt.y0(1029, 1);
        int i2 = nt.f8633a;
        if (i2 == 6750647 || i2 == 12976567 || i2 == 12517832 || i2 == 15663558 || i2 == 8061381 || i2 == 2556359) {
            this.f7886a.f8314i = 1;
        } else if (i2 == 3735991) {
            this.f7886a.f8314i = 0;
        }
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        o1.h.f16865a.a(this.f12135l, 1);
        u0.c.f17379f.a(this.f12130g, 1);
        qt.z(this.f12131h);
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.x(this.f12129f);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            int i8 = bArr[i2 + 2] & 255;
            int i9 = bArr[i2 + 3] & 255;
            int i10 = bArr[i2 + 4] & 255;
            int i11 = bArr[i2 + 5] & 255;
            int i12 = i9 & 31;
            qt.y0(21, i12);
            if (i12 == 0) {
                return;
            }
            qt.y0(10, (i8 >> 7) & 1);
            qt.y0(11, (i8 >> 6) & 1);
            qt.y0(13, (i8 >> 4) & 1);
            qt.y0(12, (i8 >> 2) & 1);
            qt.y0(16, (i8 >> 1) & 1);
            qt.y0(14, i8 & 1);
            qt.y0(55, (i9 >> 7) & 1);
            qt.y0(65, (i9 >> 5) & 1);
            qt.y0(49, (i10 >> 7) & 1);
            qt.y0(18, (i10 >> 6) & 1);
            qt.y0(20, (i10 >> 5) & 1);
            qt.y0(19, (i10 >> 4) & 1);
            int i13 = (i10 >> 3) & 1;
            qt.y0(37, i13);
            int i14 = i11 & 255;
            if (i14 == 0) {
                qt.y0(27, -2);
            } else if (i14 == 255) {
                qt.y0(27, -3);
            } else if (i13 != 0) {
                qt.y0(27, i14 * 10);
            } else if (i14 < 18 || i14 > 32) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, i14 * 10);
            }
            qt.y0(28, -1);
            qt.y0(99, bArr[i2 + 6]);
            int i15 = i2 + 7;
            qt.y0(100, bArr[i15]);
            byte b3 = bArr[i15];
            byte b4 = bArr[i15];
            u0.d.A3(0);
            int i16 = (bArr[i2 + 9] << 8) | (bArr[i2 + 10] & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(101, i16);
            qt.y0(Process.NFC_UID, i16);
            int i17 = i2 + 12;
            int i18 = ((bArr[i2 + 11] & 240) << 4) | bArr[i17];
            qt.y0(102, i18);
            qt.y0(1028, i18);
            qt.y0(103, bArr[i17] & 8);
            qt.y0(104, (bArr[i17] >> 3) & 8);
        }
        if (b2 == 23) {
            int i19 = bArr[i2 + 2] & 255;
            int i20 = (i19 >> 7) & 1;
            if (u0.b.f17347o == 0) {
                if (i20 != 0) {
                    if (!o1.u.T(a.b.O)) {
                        qt.t();
                    }
                } else if (o1.u.T(a.b.O)) {
                    qt.f();
                }
            }
            if (((i19 >> 6) & 1) != 0) {
                qt.a(1);
                return;
            } else {
                qt.a(0);
                return;
            }
        }
        if (b2 == 25) {
            int i21 = i2 + 2;
            qt.y0(118, (bArr[i21] >> 0) & 3);
            qt.y0(119, (bArr[i21] >> 2) & 1);
            qt.y0(120, (bArr[i21] >> 3) & 1);
            qt.y0(122, bArr[i2 + 3] & 255);
            qt.y0(121, bArr[i21] & 255);
            return;
        }
        if (b2 == 32) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f12126c = b5 & 255;
            int i22 = 0;
            while (true) {
                iArr = this.f12127d;
                if (i22 >= iArr.length) {
                    break;
                }
                int i23 = this.f12126c;
                if (i23 == iArr[i22][0]) {
                    if (i23 == 0) {
                        break;
                    }
                    this.f12125b = i22;
                    break;
                }
                i22++;
            }
            int i24 = this.f12126c;
            if (i24 == 12) {
                if ((b6 & 255) == 1) {
                    int i25 = h0.c.E;
                    if (i25 == 3 || i25 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                        return;
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    }
                }
                return;
            }
            switch (i24) {
                case 33:
                    if (qt.k0() && (b6 & 255) == 1) {
                        if (!o1.u.S("com.syu.fourcamera2")) {
                            c.e.d().c(590);
                        } else {
                            c.e.d().c(614);
                        }
                        break;
                    }
                    break;
                case 34:
                    if (qt.k0() && (b6 & 255) == 1) {
                        c.e.d().c(591);
                        break;
                    }
                    break;
                case 35:
                    if (qt.k0() && (b6 & 255) == 1) {
                        c.e.d().c(592);
                        break;
                    }
                    break;
                case 36:
                    if (qt.k0() && (b6 & 255) == 1) {
                        c.e.d().c(595);
                        break;
                    }
                    break;
                case 37:
                    if (qt.k0() && (b6 & 255) == 1) {
                        c.e.d().c(596);
                        break;
                    }
                    break;
                default:
                    int i26 = b6 & 255;
                    if (i26 != 1) {
                        if (i26 == 0) {
                            int i27 = this.f12125b;
                            if (i27 < iArr.length) {
                                i4 = 255;
                                if (i27 != 255) {
                                    l0.b0.l0(iArr[i27][1], 1);
                                }
                            } else {
                                i4 = 255;
                            }
                            this.f12125b = i4;
                        }
                    } else if (i22 < iArr.length) {
                        l0.b0.l0(iArr[i22][1], 0);
                    }
                    break;
            }
        }
        if (b2 == 36) {
            byte b7 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b7 >> 7) & 1);
                qt.y0(2, (b7 >> 6) & 1);
            } else {
                qt.y0(1, (b7 >> 6) & 1);
                qt.y0(2, (b7 >> 7) & 1);
            }
            qt.y0(3, (b7 >> 4) & 1);
            qt.y0(4, (b7 >> 5) & 1);
            qt.y0(5, (b7 >> 3) & 1);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 125) {
            int i28 = bArr[i2 + 2] & 255;
            if (i28 != 1) {
                if (i28 != 3) {
                    return;
                }
                int i29 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i29);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i29}, null, null);
                return;
            }
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i30 = i2 + 3;
                l0.c0.b((bArr[i30] >> 3) & 1, (bArr[i30] >> 4) & 1, 0);
                return;
            } else {
                int i31 = i2 + 3;
                l0.c0.a((bArr[i31] >> 3) & 1, (bArr[i31] >> 4) & 1, 0);
                return;
            }
        }
        if (b2 == 6) {
            qt.y0(106, bArr[i2 + 2] & 255);
            return;
        }
        if (b2 == 7) {
            int i32 = i2 + 2;
            byte b8 = bArr[i32];
            byte b9 = bArr[i2 + 3];
            qt.y0(116, bArr[i32] & 255);
            qt.y0(107, (b8 >> 7) & 1);
            qt.y0(108, (b8 >> 6) & 1);
            qt.y0(109, (b8 >> 3) & 1);
            qt.y0(110, (b8 >> 2) & 1);
            qt.y0(111, (b9 << 7) & 1);
            qt.y0(112, (b9 << 6) & 1);
            return;
        }
        if (b2 == 20) {
            byte b10 = bArr[i2 + 2];
            byte b11 = bArr[i2 + 3];
            byte b12 = bArr[i2 + 4];
            byte b13 = bArr[i2 + 5];
            byte b14 = bArr[i2 + 6];
            byte b15 = bArr[i2 + 7];
            qt.y0(105, b10);
            qt.y0(101, (b11 & 255) | ((b12 & DhcpPacket.DHCP_DOMAIN_NAME) << 8));
            qt.y0(102, ((b12 >> 4) & 15) | ((b13 & 255) << 4));
            qt.y0(103, b14 & 7);
            qt.y0(104, (b14 >> 3) & 7);
            qt.y0(113, (b14 >> 6) & 1);
            qt.y0(114, (b14 >> 7) & 1);
            qt.y0(115, b15 & 7);
            return;
        }
        if (b2 == 21) {
            int i33 = i2 + 2;
            int i34 = (bArr[i33] >> 7) & 1;
            qt.y0(Process.MEDIA_UID, bArr[i33] & DhcpPacket.DHCP_DOMAIN_NAME);
            if (this.f12128e != i34) {
                this.f12128e = i34;
                if (i34 != 0) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            return;
        }
        if (b2 == 29) {
            int i35 = bArr[i2 + 2] & 255;
            int i36 = bArr[i2 + 3] & 255;
            int i37 = bArr[i2 + 4] & 255;
            int i38 = bArr[i2 + 5] & 255;
            if (i35 == 0 && i36 == 0 && i37 == 0 && i38 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i35 || l0.c0.f13014h != i36 || l0.c0.f13015i != i37 || l0.c0.f13016j != i38) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i35;
            l0.c0.f13014h = i36;
            l0.c0.f13015i = i37;
            l0.c0.f13016j = i38;
            u0.d.D2(l0.c0.E0(i35 & 255));
            u0.d.E2(l0.c0.E0(i36 & 255));
            u0.d.F2(l0.c0.E0(i37 & 255));
            u0.d.G2(l0.c0.E0(i38 & 255));
            return;
        }
        if (b2 == 30) {
            byte b16 = bArr[i2 + 2];
            byte b17 = bArr[i2 + 3];
            byte b18 = bArr[i2 + 4];
            byte b19 = bArr[i2 + 5];
            u0.d.R2(l0.c0.E0(b16 & 255));
            u0.d.S2(l0.c0.E0(b17 & 255));
            u0.d.T2(l0.c0.E0(b18 & 255));
            u0.d.U2(l0.c0.E0(b19 & 255));
            return;
        }
        switch (b2) {
            case 39:
                if (nt.f8633a != 8061381) {
                    qt.y0(124, bArr[i2 + 2] & 255);
                    qt.y0(125, bArr[i2 + 3] & 255);
                    qt.y0(126, bArr[i2 + 4] & 255);
                    qt.y0(127, bArr[i2 + 5] & 255);
                    qt.y0(128, bArr[i2 + 6] & 255);
                    qt.y0(129, bArr[i2 + 7] & 255);
                    qt.y0(130, bArr[i2 + 8] & 255);
                    qt.y0(131, bArr[i2 + 9] & 255);
                    qt.y0(132, bArr[i2 + 10] & 255);
                    qt.y0(133, bArr[i2 + 11] & 255);
                    qt.y0(169, bArr[i2 + 12] & 255);
                    qt.y0(170, bArr[i2 + 13] & 255);
                    qt.y0(171, bArr[i2 + 14] & 255);
                    qt.y0(172, bArr[i2 + 15] & 255);
                    qt.y0(173, bArr[i2 + 16] & 255);
                    qt.y0(174, bArr[i2 + 17] & 255);
                } else {
                    qt.y0(146, bArr[i2 + 2] & 255);
                    int i39 = i2 + 3;
                    qt.y0(147, (bArr[i39] >> 7) & 1);
                    qt.y0(148, (bArr[i39] >> 6) & 1);
                    int i40 = i2 + 4;
                    qt.y0(149, (bArr[i40] >> 7) & 1);
                    qt.y0(150, (bArr[i40] >> 6) & 1);
                    qt.y0(151, (bArr[i40] >> 5) & 1);
                    qt.y0(152, (bArr[i40] >> 4) & 1);
                    qt.y0(153, (bArr[i40] >> 3) & 1);
                    qt.y0(154, (bArr[i40] >> 2) & 1);
                    int i41 = i2 + 5;
                    qt.y0(155, (bArr[i41] >> 6) & 3);
                    qt.y0(156, (bArr[i41] >> 5) & 1);
                    qt.y0(157, (bArr[i41] >> 3) & 3);
                    qt.y0(158, (bArr[i41] >> 2) & 1);
                    qt.y0(159, bArr[i2 + 6] & 255);
                    qt.y0(160, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                    qt.y0(161, bArr[i2 + 9] & 255);
                    qt.y0(162, bArr[i2 + 10] & 255);
                    qt.y0(163, bArr[i2 + 11] & 255);
                    qt.y0(164, bArr[i2 + 12] & 255);
                    qt.y0(165, bArr[i2 + 13] & 255);
                    int i42 = i2 + 14;
                    qt.y0(166, (bArr[i42] >> 7) & 1);
                    qt.y0(167, (bArr[i42] >> 5) & 3);
                    qt.y0(168, (bArr[i42] >> 3) & 3);
                }
                break;
            case 40:
                int i43 = bArr[i2 + 2] & 255;
                int i44 = bArr[i2 + 3] & 255;
                int i45 = bArr[i2 + 4] & 255;
                int i46 = bArr[i2 + 5] & 255;
                int i47 = bArr[i2 + 6] & 255;
                int i48 = bArr[i2 + 7] & 255;
                int i49 = bArr[i2 + 8] & 255;
                int i50 = bArr[i2 + 9] & 255;
                int i51 = i44 & 15;
                qt.y0(21, i51);
                if (i51 != 0) {
                    qt.y0(10, (i43 >> 7) & 1);
                    qt.y0(11, (i43 >> 6) & 1);
                    qt.y0(12, (i43 >> 5) & 1);
                    qt.y0(53, (i43 >> 4) & 1);
                    qt.y0(13, (i43 >> 3) & 1);
                    qt.y0(14, (i43 >> 2) & 1);
                    qt.y0(65, (i43 >> 1) & 1);
                    qt.y0(16, i43 & 1);
                    qt.y0(18, (i44 >> 7) & 1);
                    qt.y0(19, (i44 >> 6) & 1);
                    qt.y0(20, (i44 >> 5) & 1);
                    if (i45 == 0) {
                        i5 = -2;
                    } else if (i45 != 31) {
                        i5 = (i45 < 1 || i45 > 29) ? -1 : ((i45 - 1) * 5) + 180;
                    } else {
                        i5 = -3;
                    }
                    qt.y0(27, i5);
                    if (i46 == 0) {
                        i6 = -2;
                    } else if (i46 != 31) {
                        i6 = (i46 < 1 || i46 > 29) ? -1 : ((i46 - 1) * 5) + 180;
                    } else {
                        i6 = -3;
                    }
                    qt.y0(28, i6);
                    qt.y0(49, (i47 >> 7) & 1);
                    qt.y0(67, (i47 >> 2) & 1);
                    qt.y0(38, (i47 >> 1) & 1);
                    qt.y0(37, (i47 >> 0) & 1);
                    u0.d.A3((((i48 & 255) * 5) - 400) + 1000);
                    if (i49 == 0) {
                        i7 = -2;
                    } else if (i49 != 31) {
                        i7 = (i49 < 1 || i49 > 29) ? -1 : ((i49 - 1) * 5) + 180;
                    } else {
                        i7 = -3;
                    }
                    qt.y0(40, i7);
                    qt.y0(42, (i50 >> 7) & 1);
                    qt.y0(46, (i50 >> 6) & 1);
                    qt.y0(47, (i50 >> 5) & 1);
                    qt.y0(43, (i50 >> 4) & 1);
                    qt.y0(44, i50 & 15);
                    int i52 = i2 + 10;
                    qt.y0(29, (bArr[i52] >> 4) & 15);
                    qt.y0(30, (bArr[i52] >> 0) & 15);
                    break;
                }
                break;
            case 41:
                qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 7799);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        o1.h.f16865a.d(this.f12135l);
        qt.q0(this.f12131h);
        u0.c.f17379f.d(this.f12130g);
        l0.b0.p0(l0.c0.f13021o);
        qt.o0(this.f12129f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 176) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (T2(iArr, 2)) {
                z.k.s(227, 224, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (T2(iArr, 1)) {
                z.k.s(227, 121, 1, iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 3) {
            if (T2(iArr, 1)) {
                z.k.s(227, 120, 1, iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 4) {
            if (T2(iArr, 2)) {
                z.k.s(227, 130, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 5) {
            if (T2(iArr, 2)) {
                z.k.s(227, 117, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 6) {
            if (T2(iArr, 1)) {
                z.k.s(227, 116, 1, iArr[0]);
            }
        } else {
            if (i2 == 7) {
                qt.y0(175, iArr[0]);
                return;
            }
            if (i2 == 1016 && T2(iArr, 1)) {
                int[] iArr2 = new int[4];
                iArr2[0] = 227;
                iArr2[1] = 9;
                iArr2[2] = 1;
                iArr2[3] = iArr[0] == 1 ? 128 : 0;
                z.k.s(iArr2);
            }
        }
    }

    public final void a3(int i2) {
        z.k.s(227, -32, 2, i2, 1);
        a.i.a0(100L);
        z.k.s(227, -32, 2, i2, 0);
    }
}

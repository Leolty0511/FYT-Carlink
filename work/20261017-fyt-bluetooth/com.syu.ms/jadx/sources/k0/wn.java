package k0;

import android.content.Intent;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class wn extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11812c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11813d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 58}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{21, 6}, new int[]{22, 29}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11814e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f11815f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f11816g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f11817h = 0.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11818i = 255;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11819j = 255;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f11820k = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.m();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wn.this.f11817h = u0.b.f17359s0;
            if ((wn.this.f11817h <= 22.5d && wn.this.f11817h >= 0.0f) || (wn.this.f11817h >= 337.5d && wn.this.f11817h <= 360.0f)) {
                wn.this.f11819j = 0;
            } else if (wn.this.f11817h > 22.5d && wn.this.f11817h < 67.5d) {
                wn.this.f11819j = 8;
            } else if (wn.this.f11817h >= 67.5d && wn.this.f11817h <= 112.5d) {
                wn.this.f11819j = 16;
            } else if (wn.this.f11817h > 112.5d && wn.this.f11817h < 157.5d) {
                wn.this.f11819j = 24;
            } else if (wn.this.f11817h >= 157.5d && wn.this.f11817h <= 202.5d) {
                wn.this.f11819j = 32;
            } else if (wn.this.f11817h > 202.5d && wn.this.f11817h < 247.5d) {
                wn.this.f11819j = 40;
            } else if (wn.this.f11817h >= 247.5d && wn.this.f11817h <= 292.5d) {
                wn.this.f11819j = 48;
            } else if (wn.this.f11817h <= 292.5d || wn.this.f11817h >= 337.5d) {
                wn.this.f11819j = 0;
            } else {
                wn.this.f11819j = 56;
            }
            if (wn.this.f11819j != wn.this.f11818i) {
                z.k.s(227, 201, 2, wn.this.f11819j, 0);
                wn wnVar = wn.this;
                wnVar.f11818i = wnVar.f11819j;
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
        mtVar.f8314i = 1;
        mtVar.f8312g = 0;
        mtVar.f8313h = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        o1.h.f16865a.a(this.f11820k, 1);
        l0.b0.b(this.f11816g);
        w0.e.f17815a.a(this.f11816g, 1);
        u0.c.f17374a.a(this.f11816g, 1);
        u0.c.f17393t.a(this.f11816g, 1);
        u0.c.f17392s.a(this.f11816g, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == -107) {
            int i5 = bArr[i2 + 2] & 255;
            if (this.f11814e != i5) {
                if (i5 == 1) {
                    if (!qt.i0().equals("com.syu.carinfo.xp.xiandai.XiandaiSosPage")) {
                        g3();
                        if (y0.f.f18055i != 1) {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    }
                } else if (i5 == 0 && qt.i0().equals("com.syu.carinfo.xp.xiandai.XiandaiSosPage")) {
                    l0.b0.l0(6, 0);
                    l0.b0.l0(6, 1);
                    if (y0.f.f18055i == 1) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                }
                this.f11814e = i5;
            }
            return;
        }
        if (b2 == 39) {
            int i6 = bArr[i2 + 2] & 255;
            if (SystemProperties.getInt("persist.fyt.temperature", 0) == 1 || nt.f8645g[37] == 1) {
                int i7 = (i6 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                i4 = ((i7 % 10 >= 5 ? ((i7 / 10) * 10) + 10 : (i7 / 10) * 10) | 268435456) & (-1);
            } else {
                i4 = (i6 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
            }
            u0.d.B3(i4);
            return;
        }
        if (b2 == 41) {
            int i8 = bArr[i2 + 2] & 255;
            int i9 = bArr[i2 + 3] & 255;
            if (this.f11815f) {
                return;
            }
            qt.i(i8, i9, true, 4864);
            return;
        }
        if (b2 == 64) {
            int i10 = i2 + 2;
            qt.y0(99, (bArr[i10] >> 6) & 3);
            qt.y0(100, (bArr[i10] >> 5) & 1);
            qt.y0(101, (bArr[i10] >> 4) & 1);
            qt.y0(102, (bArr[i10] >> 3) & 1);
            qt.y0(103, (bArr[i10] >> 0) & 7);
            int i11 = i2 + 3;
            qt.y0(104, (bArr[i11] >> 6) & 3);
            qt.y0(105, (bArr[i11] >> 4) & 3);
            qt.y0(106, (bArr[i11] >> 0) & 1);
            int i12 = i2 + 4;
            qt.y0(119, (bArr[i12] >> 7) & 1);
            qt.y0(120, (bArr[i12] >> 6) & 1);
            qt.y0(121, (bArr[i12] >> 4) & 3);
            qt.y0(122, (bArr[i12] >> 2) & 3);
            qt.y0(123, (bArr[i12] >> 0) & 3);
            return;
        }
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
                int i16 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i16);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i16}, null, null);
                return;
            } else {
                if (i13 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f11815f = true;
                return;
            }
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f11812c = b3 & 255;
                int i17 = 0;
                while (true) {
                    iArr = this.f11813d;
                    if (i17 < iArr.length) {
                        int i18 = this.f11812c;
                        if (i18 != iArr[i17][0]) {
                            i17++;
                        } else if (i18 != 0) {
                            this.f11811b = i17;
                        }
                    }
                }
                int i19 = b4 & 255;
                if (i19 != 1) {
                    if (i19 == 0) {
                        int i20 = this.f11811b;
                        if (i20 < iArr.length && i20 != 255) {
                            l0.b0.l0(iArr[i20][1], 1);
                        }
                        this.f11811b = 255;
                    }
                } else if (i17 < iArr.length) {
                    l0.b0.l0(iArr[i17][1], 0);
                }
                break;
            case 33:
                int i21 = i2 + 2;
                qt.y0(10, (bArr[i21] >> 7) & 1);
                qt.y0(11, (bArr[i21] >> 6) & 1);
                qt.y0(12, (bArr[i21] >> 5) & 1);
                qt.y0(79, (bArr[i21] >> 4) & 1);
                qt.y0(13, (bArr[i21] >> 3) & 1);
                qt.y0(62, (bArr[i21] >> 2) & 1);
                qt.y0(53, (bArr[i21] >> 1) & 1);
                int i22 = i2 + 3;
                qt.y0(18, (bArr[i22] >> 7) & 1);
                qt.y0(19, (bArr[i22] >> 6) & 1);
                qt.y0(20, (bArr[i22] >> 5) & 1);
                qt.y0(21, bArr[i22] & DhcpPacket.DHCP_DOMAIN_NAME);
                int i23 = i2 + 6;
                qt.y0(65, (bArr[i23] >> 7) & 1);
                qt.y0(16, (bArr[i23] >> 6) & 1);
                qt.y0(37, (bArr[i23] >> 0) & 1);
                int i24 = i2 + 7;
                qt.y0(29, (bArr[i24] >> 4) & 15);
                qt.y0(30, (bArr[i24] >> 0) & 15);
                int i25 = i2 + 4;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 5;
                int i28 = bArr[i27] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i26 = bArr[i27] & 255;
                    i28 = bArr[i25] & 255;
                }
                if (i26 == 0) {
                    qt.y0(27, -2);
                } else if (i26 == 255) {
                    qt.y0(27, -3);
                } else if (i26 < 30 || i26 > 64) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, i26);
                }
                if (i28 == 0) {
                    qt.y0(28, -2);
                } else if (i28 == 255) {
                    qt.y0(28, -3);
                } else if (i28 >= 30 && i28 <= 64) {
                    qt.y0(28, i28);
                } else {
                    qt.y0(28, -1);
                }
                break;
            case 34:
                u0.d.R2(l0.c0.l1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.l1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.l1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.l1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i29 = i2 + 2;
                int i30 = bArr[i29] & 255;
                int i31 = i2 + 3;
                int i32 = bArr[i31] & 255;
                int i33 = i2 + 4;
                int i34 = bArr[i33] & 255;
                int i35 = i2 + 5;
                int i36 = bArr[i35] & 255;
                if (i30 == 0 && i32 == 0 && i34 == 0 && i36 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i30 || l0.c0.f13014h != i32 || l0.c0.f13015i != i34 || l0.c0.f13016j != i36) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i30;
                l0.c0.f13014h = i32;
                l0.c0.f13015i = i34;
                l0.c0.f13016j = i36;
                u0.d.D2(l0.c0.l1(bArr[i29] & 255));
                u0.d.E2(l0.c0.l1(bArr[i31] & 255));
                u0.d.F2(l0.c0.l1(bArr[i33] & 255));
                u0.d.G2(l0.c0.l1(bArr[i35] & 255));
                break;
            case 36:
                int i37 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i37 >> 6) & 1);
                    qt.y0(1, (i37 >> 7) & 1);
                } else {
                    qt.y0(2, (i37 >> 7) & 1);
                    qt.y0(1, (i37 >> 6) & 1);
                }
                qt.y0(4, (i37 >> 5) & 1);
                qt.y0(3, (i37 >> 4) & 1);
                qt.y0(5, (i37 >> 3) & 1);
                qt.y0(0, (i37 >> 2) & 1);
                break;
            case 37:
                int i38 = i2 + 2;
                qt.y0(115, (bArr[i38] >> 3) & 1);
                qt.y0(116, (bArr[i38] >> 2) & 1);
                qt.y0(117, (bArr[i38] >> 1) & 1);
                qt.y0(118, (bArr[i38] >> 0) & 1);
                break;
            default:
                switch (b2) {
                    case 48:
                        qt.L(new String(bArr, i2 + 2, i3 - 2));
                        break;
                    case 49:
                        int i39 = i2 + 2;
                        qt.y0(107, (bArr[i39] >> 1) & 1);
                        qt.y0(108, (bArr[i39] >> 0) & 1);
                        qt.y0(109, bArr[i2 + 3] & 255);
                        qt.y0(110, bArr[i2 + 4] & 255);
                        qt.y0(111, bArr[i2 + 5] & 255);
                        qt.y0(112, bArr[i2 + 6] & 255);
                        qt.y0(113, bArr[i2 + 7] & 255);
                        qt.y0(114, bArr[i2 + 8] & 255);
                        break;
                    case 50:
                        if (((bArr[i2 + 2] >> 3) & 1) != 1) {
                            qt.a(0);
                        } else {
                            qt.a(1);
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        o1.h.f16865a.d(this.f11820k);
        l0.b0.p0(this.f11816g);
        w0.e.f17815a.d(this.f11816g);
        u0.c.f17374a.d(this.f11816g);
        u0.c.f17393t.d(this.f11816g);
        u0.c.f17392s.d(this.f11816g);
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
        if (i2 == 0) {
            z.k.s(227, -58, 3, iArr[0], iArr[1], 0);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, -112, 2, iArr[0], iArr[1]);
        } else if (i2 == 2) {
            z.k.s(227, -124, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, -118, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
        }
    }

    public final void g3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.xp.xiandai.XiandaiSosPage")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.xp.xiandai.XiandaiSosPage");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}

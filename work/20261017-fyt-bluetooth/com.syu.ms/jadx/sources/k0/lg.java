package k0;

import android.content.Intent;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class lg extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7630b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7633e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7631c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7632d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{6, 13}, new int[]{7, 12}, new int[]{8, 18}, new int[]{9, 34}, new int[]{10, 35}, new int[]{11, 32}, new int[]{12, 33}, new int[]{13, 29}, new int[]{16, 6}, new int[]{17, 9}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7634f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f7635g = {new int[]{9, 0}, new int[]{10, 2}, new int[]{14, 4}, new int[]{15, 3}, new int[]{16, 18}, new int[]{17, 26}, new int[]{18, 5}, new int[]{19, 54}, new int[]{20, 1}, new int[]{21, 54}, new int[]{22, 75}, new int[]{23, 74}, new int[]{24, 24}, new int[]{25, 22}, new int[]{26, 53}, new int[]{27, 64}, new int[]{28, 38}, new int[]{29, 58}, new int[]{30, 63}, new int[]{31, -1}, new int[]{32, 62}, new int[]{47, 1}, new int[]{48, 38}, new int[]{49, 4}, new int[]{50, 3}, new int[]{51, 5}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7636h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7637i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7638j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f7639k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f7640l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f7641m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f7642n = new c();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f7643o = 0.0f;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f7644p = 255;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f7645q = 255;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f7646r = new d();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f7647s = new e();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f7648t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public byte f7649u = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f7650v = -1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f7651w = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 0) {
                z.k.s(227, i.a.Theme_actionModeShareDrawable, 1, 42);
                z.k.s(227, i.a.Theme_actionModeShareDrawable, 1, 43);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(lg.this.f7642n);
            lg.this.f7640l = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            lg lgVar = lg.this;
            int i2 = lgVar.f7640l - 1;
            lgVar.f7640l = i2;
            if (i2 <= 0) {
                l0.b0.p0(lgVar.f7642n);
                lg.this.f7640l = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.D != 13) {
                    z.k.s(227, 144, 2, 4, 0);
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            lg.this.f7643o = u0.b.f17359s0;
            if ((lg.this.f7643o <= 22.5d && lg.this.f7643o >= 0.0f) || (lg.this.f7643o >= 337.5d && lg.this.f7643o <= 360.0f)) {
                lg.this.f7645q = 0;
            } else if (lg.this.f7643o > 22.5d && lg.this.f7643o < 67.5d) {
                lg.this.f7645q = 1;
            } else if (lg.this.f7643o >= 67.5d && lg.this.f7643o <= 112.5d) {
                lg.this.f7645q = 2;
            } else if (lg.this.f7643o > 112.5d && lg.this.f7643o < 157.5d) {
                lg.this.f7645q = 3;
            } else if (lg.this.f7643o >= 157.5d && lg.this.f7643o <= 202.5d) {
                lg.this.f7645q = 4;
            } else if (lg.this.f7643o > 202.5d && lg.this.f7643o < 247.5d) {
                lg.this.f7645q = 5;
            } else if (lg.this.f7643o >= 247.5d && lg.this.f7643o <= 292.5d) {
                lg.this.f7645q = 6;
            } else if (lg.this.f7643o <= 292.5d || lg.this.f7643o >= 337.5d) {
                lg.this.f7645q = 0;
            } else {
                lg.this.f7645q = 7;
            }
            if (lg.this.f7645q != lg.this.f7644p) {
                z.k.s(227, 155, 1, lg.this.f7645q);
                lg lgVar = lg.this;
                lgVar.f7644p = lgVar.f7645q;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            byte b2 = DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0;
            if (lg.this.f7648t == millis && lg.this.f7649u == b2) {
                return;
            }
            lg.this.f7648t = millis;
            lg.this.f7649u = b2;
            z.k.s(227, 152, 4, b2, (byte) time.hour, (byte) time.minute, (byte) time.second);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 != lg.this.f7650v) {
                if (i2 != 13 && i2 != 11) {
                    z.k.s(227, 144, 2, 4, 0);
                }
                lg.this.f7650v = u0.b.D;
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
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        } else {
            this.f7886a.f8314i = 1;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8321p = 1;
        mtVar2.f8315j = 0;
        mtVar2.f8320o = 0;
        mtVar2.f8323r = 0;
        u0.c.f17386m.a(this.f7641m, 1);
        u0.c.f17374a.a(this.f7651w, 1);
        qt.z(this.f7647s);
        o1.h.f16865a.a(this.f7646r, 1);
        qt.y(this.f7639k);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f7631c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f7632d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f7631c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f7630b = i7;
                    break;
                }
                i7++;
            }
            int i9 = this.f7631c;
            if (i9 == 3) {
                if ((b4 & 255) == 1) {
                    int i10 = h0.c.E;
                    if (i10 != 3 && i10 != 4 && i10 != 5) {
                        l0.b0.l0(3, 0);
                        l0.b0.l0(3, 1);
                        return;
                    } else {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    }
                }
                return;
            }
            if (i9 != 4) {
                if ((b4 & 255) != 0) {
                    if (i7 < iArr.length) {
                        l0.b0.l0(iArr[i7][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i11 = this.f7630b;
                    if (i11 < iArr.length && i11 != 255) {
                        l0.b0.l0(iArr[i11][1], 1);
                    }
                    this.f7630b = 255;
                    return;
                }
            }
            if ((b4 & 255) == 1) {
                int i12 = h0.c.E;
                if (i12 == 3 || i12 == 4 || i12 == 5) {
                    l0.b0.l0(18, 0);
                    l0.b0.l0(18, 1);
                    return;
                } else {
                    l0.b0.l0(4, 0);
                    l0.b0.l0(4, 1);
                    return;
                }
            }
            return;
        }
        if (b2 == 2) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f7634f = b5 & 255;
            int i13 = 0;
            while (true) {
                iArr2 = this.f7635g;
                if (i13 >= iArr2.length) {
                    break;
                }
                int i14 = this.f7634f;
                if (i14 == iArr2[i13][0]) {
                    if (i14 == 0) {
                        break;
                    }
                    this.f7633e = i13;
                    break;
                }
                i13++;
            }
            int i15 = this.f7634f;
            if (i15 == 31) {
                if (qt.k0() && (b6 & 255) == 1) {
                    if (o1.u.S("com.syu.fourcamera2")) {
                        c.e.d().c(614);
                        return;
                    } else {
                        c.e.d().c(590);
                        return;
                    }
                }
                return;
            }
            if (i15 == 80) {
                for (int i16 = 0; i16 < (b6 & 255); i16++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i15 == 81) {
                for (int i17 = 0; i17 < (b6 & 255); i17++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            int i18 = b6 & 255;
            if (i18 == 1) {
                if (i13 < iArr2.length) {
                    l0.b0.l0(iArr2[i13][1], 0);
                    return;
                }
                return;
            } else {
                if (i18 == 0) {
                    int i19 = this.f7633e;
                    if (i19 < iArr2.length && i19 != 255) {
                        l0.b0.l0(iArr2[i19][1], 1);
                    }
                    this.f7633e = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 4) {
            int i20 = bArr[i2 + 3] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i20 >> 7) & 1);
                qt.y0(1, (i20 >> 6) & 1);
            } else {
                qt.y0(1, (i20 >> 7) & 1);
                qt.y0(2, (i20 >> 6) & 1);
            }
            qt.y0(3, (i20 >> 5) & 1);
            qt.y0(4, (i20 >> 4) & 1);
            qt.y0(5, (i20 >> 3) & 1);
            qt.y0(0, (i20 >> 2) & 1);
            return;
        }
        if (b2 == 5) {
            int i21 = i2 + 2;
            qt.y0(10, (bArr[i21] >> 7) & 1);
            qt.y0(11, (bArr[i21] >> 6) & 1);
            qt.y0(14, (bArr[i21] >> 5) & 1);
            qt.y0(13, (bArr[i21] >> 4) & 1);
            qt.y0(12, 3 & (bArr[i21] >> 2));
            qt.y0(16, (bArr[i21] >> 1) & 1);
            qt.y0(65, (bArr[i21] >> 0) & 1);
            int i22 = i2 + 3;
            qt.y0(15, (bArr[i22] >> 7) & 1);
            qt.y0(53, (bArr[i22] >> 6) & 1);
            qt.y0(66, (bArr[i22] >> 5) & 1);
            qt.y0(33, (bArr[i22] >> 4) & 1);
            qt.y0(21, (bArr[i22] >> 0) & 15);
            int i23 = i2 + 4;
            qt.y0(49, (bArr[i23] >> 7) & 1);
            qt.y0(18, (bArr[i23] >> 6) & 1);
            qt.y0(19, (bArr[i23] >> 4) & 1);
            qt.y0(20, (bArr[i23] >> 5) & 1);
            qt.y0(37, (bArr[i23] >> 0) & 1);
            int i24 = i2 + 5;
            int i25 = bArr[i24] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i25 = bArr[i2 + 6] & 255;
            }
            if (i25 == 0) {
                qt.y0(27, -2);
            } else if (i25 == 253) {
                qt.y0(27, -3);
            } else if (i25 == 255) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, i25);
            }
            int i26 = bArr[i2 + 6] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i26 = bArr[i24] & 255;
            }
            if (i26 == 0) {
                qt.y0(28, -2);
            } else if (i26 == 253) {
                qt.y0(28, -3);
            } else if (i26 == 255) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, i26);
            }
            int i27 = i2 + 7;
            if (((bArr[i27] >> 0) & 1) == 1) {
                qt.y0(32, (bArr[i27] >> 2) & 7);
                qt.y0(30, 0);
            } else {
                qt.y0(30, (bArr[i27] >> 2) & 7);
                qt.y0(32, 0);
            }
            if (((bArr[i27] >> 1) & 1) == 1) {
                qt.y0(31, (bArr[i27] >> 5) & 7);
                qt.y0(29, 0);
            } else {
                qt.y0(31, 0);
                qt.y0(29, (bArr[i27] >> 5) & 7);
            }
            int i28 = (bArr[i23] >> 0) & 1;
            int i29 = bArr[i2 + 8] & 255;
            if (i29 == 254 || i29 == 255) {
                u0.d.B3(0);
                return;
            }
            if (i28 == 0) {
                if (SystemProperties.getInt("persist.fyt.temperature", 0) == 1) {
                    i5 = ((i29 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456;
                    i4 = -1;
                } else {
                    i6 = (i29 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                }
                u0.d.B3(i6);
                return;
            }
            i4 = -1;
            i5 = ((i29 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456;
            i6 = i5 & i4;
            u0.d.B3(i6);
            return;
        }
        if (b2 == 6) {
            int i30 = i2 + 2;
            qt.y0(42, (bArr[i30] >> 7) & 1);
            qt.y0(67, (bArr[i30] >> 5) & 1);
            qt.y0(44, (bArr[i30] >> 0) & 15);
            int i31 = i2 + 3;
            qt.y0(47, (bArr[i31] >> 7) & 1);
            qt.y0(46, (bArr[i31] >> 6) & 1);
            int i32 = bArr[i2 + 4] & DhcpPacket.DHCP_DOMAIN_NAME;
            if (i32 == 1) {
                qt.y0(40, -2);
                return;
            }
            if (i32 == 9) {
                qt.y0(40, -3);
                return;
            } else if (i32 == 15) {
                qt.y0(40, -1);
                return;
            } else {
                qt.y0(40, i32);
                return;
            }
        }
        if (b2 == 7) {
            int i33 = i2 + 2;
            qt.y0(99, (bArr[i33] >> 7) & 1);
            qt.y0(100, (bArr[i33] >> 6) & 1);
            qt.y0(101, bArr[i2 + 3] & 255);
            qt.y0(102, bArr[i2 + 4] & DhcpPacket.DHCP_DOMAIN_NAME);
            return;
        }
        if (b2 == 9) {
            qt.m(bArr[i2 + 2], 0, 128, true, 127);
            return;
        }
        if (b2 == 64) {
            int i34 = i2 + 2;
            qt.y0(131, (bArr[i34] >> 6) & 3);
            qt.y0(132, (bArr[i34] >> 4) & 3);
            qt.y0(133, bArr[i2 + 3] & 255);
            qt.y0(134, bArr[i2 + 4] & 255);
            qt.y0(135, bArr[i2 + 5] & 255);
            qt.y0(136, bArr[i2 + 6] & 255);
            qt.y0(137, bArr[i2 + 7] & 255);
            qt.y0(138, 255 & bArr[i2 + 8]);
            int i35 = i2 + 9;
            qt.y0(140, (bArr[i35] >> 6) & 3);
            qt.y0(141, (bArr[i35] >> 2) & 3);
            qt.y0(142, (bArr[i35] >> 0) & 3);
            int i36 = i2 + 10;
            qt.y0(143, (bArr[i36] >> 6) & 3);
            qt.y0(144, (bArr[i36] >> 2) & 3);
            qt.y0(145, 3 & (bArr[i36] >> 0));
            int i37 = i2 + 11;
            qt.y0(146, (bArr[i37] >> 0) & 7);
            if (this.f7638j != ((bArr[i37] >> 0) & 7)) {
                int i38 = (bArr[i37] >> 0) & 7;
                this.f7638j = i38;
                if (i38 == 1) {
                    if (qt.i0().equals("com.syu.carinfo.hechi.fordexplorer.HcFordExplorerSeatSet")) {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                        return;
                    }
                    return;
                }
                if (i38 == 4 || i38 == 5 || i38 == 6 || i38 == 7) {
                    m3();
                    return;
                }
                return;
            }
            return;
        }
        if (b2 == 96) {
            int i39 = i2 + 2;
            if (this.f7636h != (bArr[i39] & 7)) {
                int i40 = bArr[i39] & 7;
                this.f7636h = i40;
                if (i40 == 0) {
                    if (u0.b.D != 13) {
                        z.k.s(227, 144, 2, 4, 0);
                        return;
                    }
                    return;
                } else {
                    if (i40 == 1) {
                        l3();
                        return;
                    }
                    if (i40 == 2) {
                        k3();
                        return;
                    } else {
                        if (i40 != 3) {
                            return;
                        }
                        l0.b0.l0(5, 0);
                        l0.b0.l0(5, 1);
                        u0.b.f17311c.c(0);
                        return;
                    }
                }
            }
            int i41 = bArr[i39] & 7;
            if (i41 == 1) {
                if (u0.b.D != 11) {
                    l3();
                    return;
                }
                return;
            } else if (i41 == 2) {
                if (u0.b.D != 13) {
                    k3();
                    return;
                }
                return;
            } else {
                if (i41 != 3) {
                    return;
                }
                int i42 = u0.b.D;
                if (i42 == 13 || i42 == 11) {
                    l0.b0.l0(5, 0);
                    l0.b0.l0(5, 1);
                    u0.b.f17311c.c(0);
                    return;
                }
                return;
            }
        }
        if (b2 == 42) {
            u0.d.J2(l0.c0.L0(bArr[i2 + 2]));
            u0.d.H2(l0.c0.L0(bArr[i2 + 3]));
            u0.d.R2(l0.c0.L0(bArr[i2 + 4]));
            u0.d.S2(l0.c0.L0(bArr[i2 + 5]));
            u0.d.P2(l0.c0.L0(bArr[i2 + 6]));
            u0.d.N2(l0.c0.L0(bArr[i2 + 7]));
            u0.d.T2(l0.c0.L0(bArr[i2 + 9]));
            u0.d.U2(l0.c0.L0(bArr[i2 + 8]));
            return;
        }
        if (b2 == 43) {
            int i43 = i2 + 4;
            int i44 = bArr[i43] & 255;
            int i45 = i2 + 5;
            int i46 = bArr[i45] & 255;
            int i47 = i2 + 9;
            int i48 = bArr[i47] & 255;
            int i49 = i2 + 8;
            int i50 = 255 & bArr[i49];
            if (i44 == 0 && i46 == 0 && i48 == 0 && i50 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i44 || l0.c0.f13014h != i46 || l0.c0.f13015i != i48 || l0.c0.f13016j != i50) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i44;
            l0.c0.f13014h = i46;
            l0.c0.f13015i = i48;
            l0.c0.f13016j = i50;
            u0.d.K2(l0.c0.L0(bArr[i2 + 2]));
            u0.d.I2(l0.c0.L0(bArr[i2 + 3]));
            u0.d.D2(l0.c0.L0(bArr[i43]));
            u0.d.E2(l0.c0.L0(bArr[i45]));
            u0.d.Q2(l0.c0.L0(bArr[i2 + 6]));
            u0.d.O2(l0.c0.L0(bArr[i2 + 7]));
            u0.d.F2(l0.c0.L0(bArr[i47]));
            u0.d.G2(l0.c0.L0(bArr[i49]));
            return;
        }
        if (b2 == 112) {
            if (u0.b.Z == 0) {
                qt.y0(123, bArr[i2 + 2] & 255);
            }
            qt.y0(124, bArr[i2 + 3] & 255);
            qt.y0(125, bArr[i2 + 4] & 255);
            qt.y0(126, bArr[i2 + 5] & 255);
            qt.y0(127, bArr[i2 + 6] & 255);
            qt.y0(128, bArr[i2 + 7] & 255);
            int i51 = i2 + 8;
            qt.y0(129, (bArr[i51] >> 2) & 3);
            qt.y0(130, (bArr[i51] >> 0) & 3);
            return;
        }
        if (b2 == 113) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 33:
                int i52 = i2 + 2;
                qt.y0(104, (bArr[i52] >> 7) & 1);
                qt.y0(105, (bArr[i52] >> 0) & 7);
                qt.y0(106, ((bArr[i2 + 4] & 255) | (65280 & (bArr[i2 + 3] << 8))) & 65535);
                break;
            case 34:
                qt.y0(107, (bArr[i2 + 2] >> 0) & 7);
                qt.y0(108, (((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255)) & 65535);
                qt.y0(109, (((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255)) & 65535);
                qt.y0(110, (((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255)) & 65535);
                qt.y0(111, (((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255)) & 65535);
                qt.y0(112, (((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255)) & 65535);
                qt.y0(113, ((bArr[i2 + 14] & 255) | ((bArr[i2 + 13] << 8) & 65280)) & 65535);
                break;
            case 35:
                qt.y0(114, bArr[i2 + 2] & 255);
                int i53 = i2 + 3;
                qt.y0(116, (bArr[i53] >> 1) & 1);
                qt.y0(115, (bArr[i53] >> 0) & 1);
                qt.y0(117, (((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255)) & 65535);
                qt.y0(118, (((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255)) & 65535);
                qt.y0(119, (((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255)) & 65535);
                qt.y0(120, ((bArr[i2 + 11] & 255) | (65280 & (bArr[i2 + 10] << 8))) & 65535);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f7641m);
        l0.b0.p0(this.f7642n);
        u0.c.f17374a.d(this.f7651w);
        qt.q0(this.f7647s);
        o1.h.f16865a.d(this.f7646r);
        qt.p0(this.f7639k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 147) {
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
                z.k.s(227, 151, 2, iArr[0], iArr[1]);
                break;
            case 2:
                z.k.s(227, 161, 2, iArr[0], iArr[1]);
                break;
            case 3:
                z.k.s(227, 144, 2, iArr[0], iArr[1]);
                break;
            case 4:
                z.k.s(227, 163, 2, iArr[0], iArr[1]);
                break;
            case 5:
                z.k.s(227, 150, 2, iArr[0], iArr[1]);
                break;
            case 6:
                z.k.s(227, 147, 7, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6]);
                break;
            case 7:
                z.k.s(227, 192, 2, iArr[0], iArr[1]);
                break;
        }
    }

    public final void k3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.hechi.fordexplorer.HcFordExplorerCd")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.hechi.fordexplorer.HcFordExplorerCd");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void l3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.hechi.fordexplorer.HcFordExplorerRadio")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.hechi.fordexplorer.HcFordExplorerRadio");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void m3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.hechi.fordexplorer.HcFordExplorerSeatSet")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.hechi.fordexplorer.HcFordExplorerSeatSet");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}

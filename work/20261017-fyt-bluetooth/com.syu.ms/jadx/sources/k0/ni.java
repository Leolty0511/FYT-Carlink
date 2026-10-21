package k0;

import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ni extends lt {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int[] f8484l = {0, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34, 36, 38, 40, 42, 45};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8485b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8486c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8487d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 3}, new int[]{6, 4}, new int[]{7, 2}, new int[]{8, 12}, new int[]{9, 18}, new int[]{10, 26}, new int[]{18, 13}, new int[]{21, 6}, new int[]{22, 29}, new int[]{129, 25}, new int[]{130, 7}, new int[]{131, 8}, new int[]{132, 29}, new int[]{133, 33}, new int[]{134, 32}, new int[]{135, 21}, new int[]{136, 54}, new int[]{137, 1}, new int[]{138, 5}, new int[]{139, 5}, new int[]{140, 55}, new int[]{141, 58}, new int[]{142, 38}, new int[]{143, 15}, new int[]{144, 18}, new int[]{145, 16}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8488e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f8489f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8490g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f8491h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f8492i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f8493j = new c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f8494k = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8633a) {
                case 5833159:
                    z.k.s(227, 238, 2, 96, 6);
                    break;
                case 5898695:
                    z.k.s(227, 238, 2, 96, 7);
                    break;
                case 7143879:
                case 7209415:
                    z.k.s(227, 238, 2, 96, 8);
                    break;
                case 8520135:
                case 10420678:
                    z.k.s(227, 238, 2, 96, 5);
                    break;
                case 8585671:
                case 10486214:
                    z.k.s(227, 238, 2, 96, 4);
                    break;
                case 8651207:
                case 16056774:
                    z.k.s(227, 238, 2, 96, 4);
                    break;
                case 9372087:
                    z.k.s(227, 238, 2, 96, 3);
                    break;
                case 9568695:
                    z.k.s(227, 238, 2, 96, 2);
                    break;
                case 15991238:
                    z.k.s(227, 238, 2, 96, 1);
                    break;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 132, 2, 7, ni.f8484l[o1.o0.a(y0.f.f18037c, 0, 36)]);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ni.this.b3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -56, 3, time.minute, time.hour, 1);
            int i2 = nt.f8633a;
            if (i2 == 9634231 || i2 == 10355127) {
                z.k.s(227, -124, 2, 9, 1);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        int i2 = nt.f8633a;
        if (i2 == 9634231 || i2 == 10355127) {
            y0.f.C0 = 14;
        } else {
            y0.f.C0 = 18;
        }
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        l0.b0.b(this.f8494k);
        u0.c.f17388o.a(this.f8493j, 1);
        u0.c.f17389p.a(this.f8493j, 1);
        u0.c.f17392s.a(this.f8493j, 1);
        u0.c.f17374a.a(this.f8493j, 1);
        w0.e.f17815a.a(this.f8493j, 1);
        w0.e.f17819e.a(this.f8493j, 1);
        h0.d.f2462a.a(this.f8493j, 1);
        h0.d.f2464c.a(this.f8493j, 1);
        qt.z(this.f8491h);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        switch (nt.f8633a) {
            case 5833159:
            case 5898695:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8314i = 1;
                if (App.c().getResources().getConfiguration().orientation == 1) {
                    this.f7886a.f8314i = 0;
                }
                break;
            case 5964231:
            case 6029767:
            case 7143879:
            case 7209415:
            case 10224055:
            case 10289591:
            case 15991238:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                break;
            case 8520135:
            case 8585671:
            case 8651207:
            case 10420678:
            case 10486214:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8314i = 1;
                break;
            case 9372087:
            case 9568695:
                if (App.c().getResources().getConfiguration().orientation == 1) {
                    this.f7886a.f8306a = new String[]{"com.syu.canbus"};
                }
                break;
            case 9437623:
                mtVar.f8312g = 0;
                break;
            case 9634231:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8307b = 1;
                mtVar.f8312g = 0;
                y0.g.f18094d.a(this.f8492i, 1);
                break;
            case 10355127:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8307b = 1;
                y0.g.f18094d.a(this.f8492i, 1);
                break;
            case 16056774:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8314i = 1;
                mtVar.f8307b = 1;
                y0.g.f18094d.a(this.f8492i, 1);
                break;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 23) {
            qt.y0(133, bArr[i2 + 2] & 255);
            qt.y0(134, bArr[i2 + 3] & 255);
            qt.y0(135, bArr[i2 + 4] & 255);
            qt.y0(136, bArr[i2 + 5] & 255);
            qt.y0(137, bArr[i2 + 6] & 255);
            qt.y0(138, bArr[i2 + 7] & 255);
            qt.y0(139, bArr[i2 + 8] & 255);
            qt.y0(140, bArr[i2 + 9] & 255);
            qt.y0(141, bArr[i2 + 10] & 255);
            qt.y0(142, bArr[i2 + 11] & 255);
            qt.y0(143, bArr[i2 + 12] & 255);
            qt.y0(144, bArr[i2 + 13] & 255);
            qt.y0(145, 255 & bArr[i2 + 14]);
            qt.y0(146, (bArr[i2 + 15] >> 0) & 1);
        }
        if (b2 == 38) {
            byte b3 = bArr[i2 + 2];
            int i7 = ((bArr[i2 + 4] & 255) | ((bArr[i2 + 3] << 8) & 65280)) / 10;
            u0.d.B3((b3 & 1) == 1 ? (((i7 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i7 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            return;
        }
        if (b2 == 80) {
            switch (bArr[i2 + 2] & 255) {
                case 0:
                    qt.y0(104, bArr[i2 + 3] & 255);
                    break;
                case 1:
                    qt.y0(105, bArr[i2 + 3] & 255);
                    break;
                case 2:
                    qt.y0(106, bArr[i2 + 3] & 255);
                    break;
                case 3:
                    qt.y0(107, bArr[i2 + 3] & 255);
                    break;
                case 4:
                    qt.y0(108, bArr[i2 + 3] & 255);
                    break;
                case 5:
                    qt.y0(109, bArr[i2 + 3] & 255);
                    break;
                case 6:
                    qt.y0(110, bArr[i2 + 3] & 255);
                    break;
                case 7:
                    qt.y0(111, bArr[i2 + 3] & 255);
                    break;
                case 8:
                    qt.y0(112, bArr[i2 + 3] & 255);
                    break;
                case 9:
                    qt.y0(113, bArr[i2 + 3] & 255);
                    break;
                case 10:
                    qt.y0(114, bArr[i2 + 3] & 255);
                    break;
                case 11:
                    qt.y0(115, bArr[i2 + 3] & 255);
                    break;
                case 12:
                    qt.y0(116, bArr[i2 + 3] & 255);
                    break;
                case 13:
                    qt.y0(117, bArr[i2 + 3] & 255);
                    break;
                case 14:
                    qt.y0(118, bArr[i2 + 3] & 255);
                    break;
                case 15:
                    qt.y0(119, bArr[i2 + 3] & 255);
                    break;
                case 16:
                    qt.y0(120, bArr[i2 + 3] & 255);
                    break;
                case 17:
                    qt.y0(121, bArr[i2 + 3] & 255);
                    break;
                case 18:
                    qt.y0(122, bArr[i2 + 3] & 255);
                    break;
                case 19:
                    qt.y0(123, bArr[i2 + 3] & 255);
                    break;
                case 20:
                    qt.y0(124, bArr[i2 + 3] & 255);
                    break;
                case 21:
                    qt.y0(125, bArr[i2 + 3] & 255);
                    break;
                case 22:
                    qt.y0(126, bArr[i2 + 3] & 255);
                    break;
                case 23:
                    qt.y0(127, bArr[i2 + 3] & 255);
                    break;
                case 24:
                    qt.y0(128, bArr[i2 + 3] & 255);
                    break;
                case 25:
                    qt.y0(129, bArr[i2 + 3] & 255);
                    break;
                case 26:
                    qt.y0(130, bArr[i2 + 3] & 255);
                    break;
                case 27:
                    qt.y0(131, bArr[i2 + 3] & 255);
                    break;
                case 28:
                    qt.y0(132, bArr[i2 + 3] & 255);
                    break;
            }
        }
        if (b2 == 125) {
            int i8 = bArr[i2 + 2] & 255;
            if (i8 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i9 = i2 + 3;
                    l0.c0.b((bArr[i9] >> 3) & 1, (bArr[i9] >> 4) & 1, 0);
                    return;
                } else {
                    int i10 = i2 + 3;
                    l0.c0.a((bArr[i10] >> 3) & 1, (bArr[i10] >> 4) & 1, 0);
                    return;
                }
            }
            if (i8 == 3) {
                int i11 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i11);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i11}, null, null);
                return;
            }
            if (i8 == 5) {
                int i12 = bArr[i2 + 3] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i12 >> 6) & 1);
                    qt.y0(1, (i12 >> 7) & 1);
                } else {
                    qt.y0(2, (i12 >> 7) & 1);
                    qt.y0(1, (i12 >> 6) & 1);
                }
                qt.y0(4, (i12 >> 5) & 1);
                qt.y0(3, (i12 >> 4) & 1);
                qt.y0(5, (i12 >> 3) & 1);
                qt.y0(0, (i12 >> 2) & 1);
                return;
            }
            if (i8 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                return;
            }
            if (i8 == 10) {
                qt.y0(1032, (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                return;
            }
            if (i8 != 240) {
                return;
            }
            qt.y0(321, bArr[i2 + 3] & 255);
            qt.y0(322, bArr[i2 + 4] & 255);
            qt.y0(323, bArr[i2 + 5] & 255);
            qt.y0(324, bArr[i2 + 6] & 255);
            qt.y0(325, bArr[i2 + 7] & 255);
            qt.y0(326, bArr[i2 + 8] & 255);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 64) {
            qt.y0(99, bArr[i2 + 2] & 255);
            qt.y0(100, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(101, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(102, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
            qt.y0(103, (bArr[i2 + 10] & 255) | ((bArr[i2 + 9] << 8) & 65280));
            return;
        }
        if (b2 == 65) {
            qt.y0(147, ((bArr[i2 + 2] << 24) & (-16777216)) | ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(148, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(149, (bArr[i2 + 9] & 255) | ((bArr[i2 + 8] << 8) & 65280));
            return;
        }
        switch (b2) {
            case 32:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f8486c = b4 & 255;
                int i13 = 0;
                while (true) {
                    iArr = this.f8487d;
                    if (i13 < iArr.length) {
                        int i14 = this.f8486c;
                        if (i14 != iArr[i13][0]) {
                            i13++;
                        } else if (i14 != 0) {
                            this.f8485b = i13;
                        }
                    }
                }
                switch (this.f8486c) {
                    case 129:
                        if (this.f8490g != b5) {
                            this.f8490g = b5;
                            if (b5 == 1) {
                                this.f8489f = false;
                            } else if (b5 == 2) {
                                this.f8489f = true;
                                l0.b0.l0(25, 0);
                                l0.b0.l0(25, 1);
                            } else if (b5 == 0) {
                                if (this.f8489f) {
                                    this.f8489f = false;
                                } else if (u0.b.f17332j == 1) {
                                    l0.b0.l0(25, 0);
                                    l0.b0.l0(25, 1);
                                } else {
                                    l0.b0.l0(12, 0);
                                    l0.b0.l0(12, 1);
                                }
                            }
                        }
                        break;
                    case 130:
                        for (int i15 = 0; i15 < (b5 & 255); i15++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                        break;
                    case 131:
                        for (int i16 = 0; i16 < (b5 & 255); i16++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                        break;
                    case 132:
                    default:
                        int i17 = b5 & 255;
                        if (i17 == 1 && this.f8488e == 0) {
                            this.f8488e = 1;
                            if (i13 < iArr.length) {
                                l0.b0.l0(iArr[this.f8485b][1], 0);
                                l0.b0.l0(this.f8487d[this.f8485b][1], 1);
                            }
                        } else if (i17 == 0) {
                            this.f8488e = 0;
                        }
                        break;
                    case 133:
                        for (int i18 = 0; i18 < (b5 & 255); i18++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                        break;
                    case 134:
                        for (int i19 = 0; i19 < (b5 & 255); i19++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                        break;
                }
                break;
            case 33:
                byte b6 = bArr[i2 + 2];
                qt.y0(11, (b6 >> 7) & 1);
                qt.y0(13, (b6 >> 6) & 1);
                qt.y0(62, (b6 >> 5) & 1);
                qt.y0(53, (b6 >> 4) & 1);
                qt.y0(16, (b6 >> 3) & 1);
                qt.y0(65, (b6 >> 2) & 1);
                qt.y0(12, (b6 >> 0) & 3);
                byte b7 = bArr[i2 + 3];
                qt.y0(38, (b7 >> 7) & 1);
                qt.y0(79, (b7 >> 6) & 1);
                int i20 = b7 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i20 != 0) {
                    if (i20 == 1) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i20 == 2) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i20 == 3) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i20 != 4) {
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
                qt.y0(21, bArr[i2 + 4] & DhcpPacket.DHCP_DOMAIN_NAME);
                int i21 = i2 + 5;
                int i22 = bArr[i21] & 255;
                int i23 = i2 + 6;
                int i24 = bArr[i23] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i22 = bArr[i23] & 255;
                    i24 = bArr[i21] & 255;
                }
                if (i22 != 255 && i22 != 0) {
                    if (i22 >= 100) {
                        qt.y0(37, 1);
                    } else {
                        qt.y0(37, 0);
                    }
                }
                if (i22 == 0) {
                    qt.y0(27, -2);
                } else if (i22 != 255) {
                    qt.y0(27, i22);
                } else {
                    qt.y0(27, -3);
                }
                if (i24 == 0) {
                    qt.y0(28, -2);
                } else if (i24 != 255) {
                    qt.y0(28, i24);
                } else {
                    qt.y0(28, -3);
                }
                break;
            case 34:
                u0.d.R2(l0.c0.P0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.P0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.P0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.P0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i25 = i2 + 2;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 3;
                int i28 = bArr[i27] & 255;
                int i29 = i2 + 4;
                int i30 = bArr[i29] & 255;
                int i31 = i2 + 5;
                int i32 = bArr[i31] & 255;
                if (i26 == 0 && i28 == 0 && i30 == 0 && i32 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i26 || l0.c0.f13014h != i28 || l0.c0.f13015i != i30 || l0.c0.f13016j != i32) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i26;
                l0.c0.f13014h = i28;
                l0.c0.f13015i = i30;
                l0.c0.f13016j = i32;
                u0.d.D2(l0.c0.P0(bArr[i25] & 255));
                u0.d.E2(l0.c0.P0(bArr[i27] & 255));
                u0.d.F2(l0.c0.P0(bArr[i29] & 255));
                u0.d.G2(l0.c0.P0(bArr[i31] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        y0.g.f18094d.d(this.f8492i);
        l0.b0.p0(this.f8494k);
        l0.b0.p0(l0.c0.f13021o);
        u0.c.f17388o.d(this.f8493j);
        u0.c.f17389p.d(this.f8493j);
        u0.c.f17392s.d(this.f8493j);
        u0.c.f17374a.d(this.f8493j);
        w0.e.f17815a.d(this.f8493j);
        w0.e.f17819e.d(this.f8493j);
        h0.d.f2462a.d(this.f8493j);
        h0.d.f2464c.d(this.f8493j);
        qt.q0(this.f8491h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 327) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -125, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -127, 1, 1);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -124, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -112, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 254) {
                z.k.s(227, -88, 2, 255, iArr[1]);
                return;
            } else {
                z.k.s(227, -88, 2, iArr[0], iArr[1]);
                return;
            }
        }
        if (i2 == 49) {
            if (T2(iArr, 2)) {
                z.k.s(227, 239, 8, 125, 240, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                return;
            }
            return;
        }
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -57, 1, 1);
            return;
        }
        if (i2 == 1029 && T2(iArr, 2)) {
            int iW = (iArr[1] * Process.MEDIA_RW_GID) / a.f.w();
            int i3 = (iArr[2] * 1000) / a.f.i();
            if (iArr[0] == 0) {
                z.k.s(227, 152, 6, 1, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0);
            } else if (iArr[0] == 1) {
                z.k.s(227, 152, 6, 0, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0);
            }
        }
    }

    public final void a3(byte b2, byte b3, String str) {
        int i2;
        if (str == null) {
            return;
        }
        int length = str.length();
        int i3 = length << 1;
        byte[] bArr = new byte[i3];
        int i4 = 0;
        while (true) {
            i2 = 1;
            if (i4 >= length) {
                break;
            }
            int iCodePointAt = str.codePointAt(i4);
            int i5 = i4 << 1;
            bArr[i5] = (byte) ((iCodePointAt >> 8) & 255);
            bArr[i5 + 1] = (byte) (iCodePointAt & 255);
            i4++;
        }
        int[] iArr = new int[(i3 & 255) + 8];
        iArr[0] = -29;
        iArr[1] = -64;
        iArr[2] = (byte) (i3 + 5);
        iArr[3] = b2;
        int i6 = h0.c.E;
        if (i6 == 3) {
            i2 = 3;
        } else if (i6 != 4) {
            i2 = i6 != 5 ? 0 : 2;
        }
        iArr[4] = i2;
        iArr[5] = 16;
        iArr[6] = b3;
        iArr[7] = i3;
        for (int i7 = 0; i7 < i3; i7++) {
            iArr[i7 + 8] = bArr[i7];
        }
        z.k.s(iArr);
    }

    public void b3() {
        int i2 = u0.b.D;
        if (i2 != 1) {
            if (i2 == 2) {
                a3((byte) 5, (byte) 1, h0.c.f2437h);
                return;
            }
            if (i2 == 3) {
                d3((byte) 11, (byte) 1, h0.c.f2445l);
                return;
            }
            if (i2 == 5) {
                z.k.s(227, 192, 1, 7);
                return;
            }
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    d3((byte) 8, (byte) 1, u0.b.i3);
                    d3((byte) 8, (byte) 2, u0.b.j3);
                    break;
                default:
                    z.k.s(227, 192, 1, 4);
                    break;
            }
        }
        int[] iArr = new int[8];
        iArr[0] = 227;
        iArr[1] = 192;
        iArr[2] = 5;
        iArr[3] = 1;
        int i3 = w0.d.f17797i;
        int i4 = w0.d.f17798j & 255;
        int i5 = w0.d.f17796h;
        if (i5 == 65536) {
            iArr[4] = 1;
        } else if (i5 == 65537) {
            iArr[4] = 2;
        } else if (i5 == 65538) {
            iArr[4] = 3;
        } else if (i5 == 0) {
            iArr[4] = 17;
        } else if (i5 == 1) {
            iArr[4] = 18;
        }
        iArr[5] = i3 & 255;
        iArr[6] = (i3 >> 8) & 255;
        int i6 = i4 % 6;
        if (i6 != 0 || i4 == 0) {
            iArr[7] = i6;
        } else {
            iArr[7] = 6;
        }
        z.k.s(iArr);
    }

    public final void d3(byte b2, byte b3, String str) {
        if (str == null) {
            return;
        }
        int length = str.length();
        int i2 = length << 1;
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            bArr[i4] = (byte) ((iCodePointAt >> 8) & 255);
            bArr[i4 + 1] = (byte) (iCodePointAt & 255);
        }
        int[] iArr = new int[(i2 & 255) + 7];
        iArr[0] = -29;
        iArr[1] = -64;
        iArr[2] = (byte) (i2 + 4);
        iArr[3] = b2;
        iArr[4] = 16;
        iArr[5] = b3;
        iArr[6] = i2;
        for (int i5 = 0; i5 < i2; i5++) {
            iArr[i5 + 7] = bArr[i5];
        }
        z.k.s(iArr);
    }
}

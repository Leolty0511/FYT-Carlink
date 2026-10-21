package k0;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class zr extends lt implements o1.q {
    public static int A = 9;
    public static int B = 9;
    public static int C = 9;
    public static int D = 9;
    public static int E = 19;
    public static int F = 0;
    public static int G = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f12961z = 9;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12963c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12964d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 12}, new int[]{7, 18}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 34}, new int[]{11, 35}, new int[]{12, 9}, new int[]{13, 29}, new int[]{16, 6}, new int[]{17, 7}, new int[]{18, 8}, new int[]{19, 31}, new int[]{20, 30}, new int[]{21, 24}, new int[]{22, 1}, new int[]{23, 54}, new int[]{24, 0}, new int[]{25, 13}, new int[]{26, 6}, new int[]{27, 5}, new int[]{28, 11}, new int[]{29, 25}, new int[]{30, 16}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f12965e = new byte[1024];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12966f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12967g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12968h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12969i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f12970j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public o1.g0 f12971k = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f12972l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f12973m = 2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f12974n = 3;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f12975o = 4;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f12976p = 5;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f12977q = 6;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f12978r = 7;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f12979s = 8;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f12980t = new b();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f12981u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f12982v = new c();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f12983w = new d();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int[] f12984x = {34, 204};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f12985y = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = (byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0);
            byte b3 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b4 = (byte) (time.month + 1);
            byte b5 = (byte) time.monthDay;
            byte b6 = (byte) time.hour;
            byte b7 = (byte) time.minute;
            zr zrVar = zr.this;
            if (zrVar.f12969i != b2) {
                zrVar.f12969i = b2;
                z.k.s(227, -58, 6, 0, b2, 0, 0, 0, 0);
            }
            z.k.s(227, -58, 6, 1, b3, b4, b5, b6, b7);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.H();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(zr.this.f12983w);
            zr.this.f12981u = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            zr zrVar = zr.this;
            int i2 = zrVar.f12981u - 1;
            zrVar.f12981u = i2;
            if (i2 <= 0) {
                l0.b0.p0(zrVar.f12983w);
                zr.this.f12981u = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 255, 1, 56);
                zr zrVar2 = zr.this;
                zrVar2.a3(false, zrVar2.f12971k.b(1, 19), zr.this.f12971k.b(2, 9), zr.this.f12971k.b(3, 9), zr.this.f12971k.b(4, 9), zr.this.f12971k.b(5, 9), zr.this.f12971k.b(6, 9), ((zr.this.f12971k.b(7, 0) << 7) & 128) | (zr.this.f12971k.b(8, 0) & 15));
                switch (nt.f8633a) {
                    case 6357447:
                    case 10289608:
                    case 14877127:
                        z.k.s(227, 198, 2, 42, 0);
                        break;
                    case 6422983:
                    case 10355144:
                    case 10420680:
                    case 10486216:
                    case 10551752:
                    case 11731400:
                    case 11796936:
                    case 11862472:
                    case 11928008:
                    case 14942663:
                        z.k.s(227, 198, 2, 42, 1);
                        break;
                }
            }
        }
    }

    public static void d3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (b2 ^ 255);
        z.k.q(bArr);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f12971k.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8322q = 0;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        u0.c.f17386m.a(this.f12982v, 1);
        w0.e.f17815a.a(this.f12980t, 1);
        w0.e.f17819e.a(this.f12980t, 1);
        u0.c.f17392s.a(this.f12980t, 1);
        u0.c.f17374a.a(this.f12980t, 1);
        qt.z(this.f12970j);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12963c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f12964d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f12963c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f12962b = i7;
                    break;
                }
                i7++;
            }
            int i9 = this.f12963c;
            if (i9 == 3) {
                if ((b4 & 255) == 1) {
                    if (u0.b.D == 13) {
                        z.k.s(227, -58, 2, 70, 0);
                        return;
                    } else {
                        l0.b0.l0(4, 0);
                        l0.b0.l0(4, 1);
                        return;
                    }
                }
                return;
            }
            if (i9 == 4) {
                if ((b4 & 255) == 1) {
                    if (u0.b.D == 13) {
                        z.k.s(227, -58, 2, 70, 1);
                        return;
                    } else {
                        l0.b0.l0(3, 0);
                        l0.b0.l0(3, 1);
                        return;
                    }
                }
                return;
            }
            if (i9 == 30) {
                if ((b4 & 255) == 1) {
                    if (u0.b.D == 13) {
                        z.k.s(227, -58, 2, 70, 2);
                        return;
                    } else {
                        l0.b0.l0(16, 0);
                        l0.b0.l0(16, 1);
                        return;
                    }
                }
                return;
            }
            switch (i9) {
                case 17:
                    for (int i10 = 0; i10 < (b4 & 255); i10++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    break;
                case 18:
                    for (int i11 = 0; i11 < (b4 & 255); i11++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    break;
                case 19:
                    for (int i12 = 0; i12 < (b4 & 255); i12++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    break;
                case 20:
                    for (int i13 = 0; i13 < (b4 & 255); i13++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    break;
                default:
                    int i14 = b4 & 255;
                    if (i14 == 1) {
                        if (i7 < iArr.length) {
                            l0.b0.l0(iArr[i7][1], 0);
                        }
                    } else if (i14 == 0) {
                        int i15 = this.f12962b;
                        if (i15 < iArr.length && i15 != 255) {
                            l0.b0.l0(iArr[i15][1], 1);
                        }
                        this.f12962b = 255;
                    }
                    break;
            }
            return;
        }
        if (b2 == 3) {
            int i16 = nt.f8633a;
            if (i16 == 10682823 || i16 == 10748359) {
                return;
            }
            int i17 = i2 + 2;
            qt.y0(10, (bArr[i17] >> 7) & 1);
            qt.y0(11, (bArr[i17] >> 6) & 1);
            qt.y0(12, (bArr[i17] >> 5) & 1);
            qt.y0(13, (bArr[i17] >> 4) & 1);
            qt.y0(62, (bArr[i17] >> 2) & 1);
            qt.y0(65, (bArr[i17] >> 1) & 1);
            qt.y0(16, (bArr[i17] >> 0) & 1);
            int i18 = i2 + 3;
            qt.y0(18, (bArr[i18] >> 7) & 1);
            qt.y0(19, (bArr[i18] >> 6) & 1);
            qt.y0(20, (bArr[i18] >> 5) & 1);
            qt.y0(77, (bArr[i18] >> 5) & 7);
            qt.y0(21, bArr[i18] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i19 = i2 + 4;
            int i20 = bArr[i19] & 255;
            int i21 = i2 + 5;
            int i22 = bArr[i21] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i20 = bArr[i21] & 255;
                i22 = bArr[i19] & 255;
            }
            if (i20 == 0) {
                qt.y0(27, -2);
            } else if (i20 == 127) {
                qt.y0(27, -1);
            } else if (i20 != 255) {
                qt.y0(27, i20);
            } else {
                qt.y0(27, -3);
            }
            if (i22 == 0) {
                qt.y0(28, -2);
            } else if (i22 == 127) {
                qt.y0(28, -1);
            } else if (i22 != 255) {
                qt.y0(28, i22);
            } else {
                qt.y0(28, -3);
            }
            int i23 = i2 + 6;
            qt.y0(53, (bArr[i23] >> 3) & 1);
            qt.y0(66, (bArr[i23] >> 1) & 1);
            qt.y0(37, (bArr[i23] >> 0) & 1);
            int i24 = i2 + 7;
            qt.y0(31, (bArr[i24] >> 6) & 3);
            qt.y0(29, (bArr[i24] >> 4) & 3);
            qt.y0(32, (bArr[i24] >> 2) & 3);
            qt.y0(30, (bArr[i24] >> 0) & 3);
            return;
        }
        if (b2 == 6) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b5 >> 6) & 1);
                qt.y0(1, (b5 >> 7) & 1);
            } else {
                qt.y0(2, (b5 >> 7) & 1);
                qt.y0(1, (b5 >> 6) & 1);
            }
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 2) & 1);
            return;
        }
        if (b2 == 10) {
            qt.j(bArr[i2 + 3], bArr[i2 + 4], (bArr[i2 + 2] & 1) != 1 ? 1 : 0, 480);
            return;
        }
        if (b2 == 53) {
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i25 = i2 + 2;
                l0.c0.b((bArr[i25] >> 5) & 1, (bArr[i25] >> 4) & 1, 0);
            } else {
                int i26 = i2 + 2;
                l0.c0.a((bArr[i26] >> 5) & 1, (bArr[i26] >> 4) & 1, 0);
            }
            int i27 = i2 + 3;
            qt.y0(1031, bArr[i27] & 255);
            o1.x.C(nt.f8643f, 1049, new int[]{1, bArr[i27] & 255}, null, null);
            int i28 = bArr[i2 + 8] & 255;
            if (i28 == 255 || i28 == 0) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.B3((nt.f8645g[37] == 1 || SystemProperties.getInt("persist.fyt.temperature", 0) == 1) ? (((i28 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i28 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        if (b2 == 56) {
            int i29 = i2 + 2;
            qt.y0(98, (bArr[i29] >> 7) & 1);
            qt.y0(99, (bArr[i29] >> 5) & 3);
            qt.y0(100, (bArr[i29] >> 4) & 1);
            qt.y0(101, (bArr[i29] >> 3) & 1);
            qt.y0(102, (bArr[i29] >> 2) & 1);
            qt.y0(103, (bArr[i29] >> 0) & 3);
            int i30 = i2 + 3;
            qt.y0(104, (bArr[i30] >> 6) & 3);
            qt.y0(105, (bArr[i30] >> 5) & 1);
            qt.y0(106, (bArr[i30] >> 4) & 1);
            qt.y0(107, (bArr[i30] >> 1) & 1);
            qt.y0(108, (bArr[i30] >> 0) & 1);
            int i31 = i2 + 4;
            qt.y0(171, (bArr[i31] >> 7) & 1);
            qt.y0(109, (bArr[i31] >> 6) & 1);
            qt.y0(110, (bArr[i31] >> 5) & 1);
            qt.y0(111, (bArr[i31] >> 4) & 1);
            qt.y0(112, (bArr[i31] >> 3) & 1);
            qt.y0(113, (bArr[i31] >> 2) & 1);
            qt.y0(114, (bArr[i31] >> 1) & 1);
            qt.y0(115, (bArr[i31] >> 0) & 1);
            int i32 = i2 + 5;
            qt.y0(116, (bArr[i32] >> 6) & 3);
            qt.y0(117, (bArr[i32] >> 3) & 1);
            qt.y0(118, (bArr[i32] >> 2) & 1);
            qt.y0(145, (bArr[i32] >> 1) & 1);
            qt.y0(170, (bArr[i32] >> 0) & 1);
            qt.y0(119, bArr[i2 + 6] & 255);
            int i33 = i2 + 7;
            qt.y0(120, (bArr[i33] >> 7) & 1);
            qt.y0(146, (bArr[i33] >> 6) & 1);
            qt.y0(147, (bArr[i33] >> 5) & 1);
            qt.y0(121, (bArr[i33] >> 4) & 1);
            int i34 = i2 + 8;
            qt.y0(122, (bArr[i34] >> 6) & 3);
            qt.y0(123, (bArr[i34] >> 4) & 3);
            qt.y0(148, (bArr[i34] >> 2) & 3);
            qt.y0(149, (bArr[i34] >> 0) & 3);
            int i35 = i2 + 9;
            qt.y0(150, (bArr[i35] >> 6) & 3);
            qt.y0(151, (bArr[i35] >> 4) & 3);
            qt.y0(152, (bArr[i35] >> 2) & 1);
            qt.y0(153, (bArr[i35] >> 1) & 1);
            int i36 = i2 + 10;
            qt.y0(154, (bArr[i36] >> 7) & 1);
            qt.y0(124, (bArr[i36] >> 6) & 1);
            qt.y0(125, (bArr[i36] >> 5) & 1);
            qt.y0(126, (bArr[i36] >> 4) & 1);
            qt.y0(127, (bArr[i36] >> 3) & 1);
            qt.y0(128, (bArr[i36] >> 2) & 1);
            qt.y0(129, (bArr[i36] >> 0) & 3);
            int i37 = i2 + 11;
            qt.y0(155, (bArr[i37] >> 6) & 3);
            qt.y0(156, (bArr[i37] >> 4) & 3);
            qt.y0(130, (bArr[i37] >> 3) & 1);
            qt.y0(157, (bArr[i37] >> 1) & 3);
            int i38 = i2 + 12;
            qt.y0(131, (bArr[i38] >> 7) & 1);
            qt.y0(132, (bArr[i38] >> 6) & 1);
            qt.y0(133, (bArr[i38] >> 5) & 1);
            qt.y0(158, (bArr[i38] >> 4) & 1);
            qt.y0(159, (bArr[i38] >> 3) & 1);
            qt.y0(160, (bArr[i38] >> 1) & 3);
            qt.y0(161, bArr[i2 + 13] & 255);
            return;
        }
        if (b2 != 85) {
            if (b2 == 127) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 == 58) {
                int i39 = i2 + 2;
                qt.y0(134, (bArr[i39] >> 7) & 1);
                qt.y0(135, (bArr[i39] >> 0) & 15);
                qt.y0(136, bArr[i2 + 3] & 255);
                return;
            }
            if (b2 != 59) {
                return;
            }
            int i40 = i2 + 2;
            qt.y0(162, (bArr[i40] >> 7) & 1);
            qt.y0(163, (bArr[i40] >> 0) & 15);
            int i41 = i2 + 3;
            qt.y0(164, (bArr[i41] >> 4) & 15);
            qt.y0(165, (bArr[i41] >> 0) & 15);
            qt.y0(166, bArr[i2 + 4] & 255);
            qt.y0(167, bArr[i2 + 5] & 255);
            qt.y0(168, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(169, (bArr[i2 + 9] & 255) | ((bArr[i2 + 8] << 8) & 65280));
            return;
        }
        int i42 = nt.f8633a;
        if (i42 == 10682823 || i42 == 10748359) {
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i43 = i2 + 2;
                if ((bArr[i43] & 255) == 16) {
                    qt.y0(28, -2);
                } else if ((bArr[i43] & 255) == 80) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i43] & 255);
                }
                int i44 = i2 + 3;
                if ((bArr[i44] & 255) == 16) {
                    qt.y0(27, -2);
                } else if ((bArr[i44] & 255) == 80) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i44] & 255);
                }
            } else {
                int i45 = i2 + 2;
                if ((bArr[i45] & 255) == 16) {
                    qt.y0(27, -2);
                } else if ((bArr[i45] & 255) == 80) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i45] & 255);
                }
                int i46 = i2 + 3;
                if ((bArr[i46] & 255) == 16) {
                    qt.y0(28, -2);
                } else if ((bArr[i46] & 255) == 80) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i46] & 255);
                }
            }
            int i47 = i2 + 4;
            switch ((bArr[i47] >> 4) & 15) {
                case 1:
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                    break;
                case 2:
                    i4 = 0;
                    i6 = 1;
                    i5 = i6;
                    break;
                case 3:
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                    break;
                case 4:
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
                    break;
                case 5:
                    i5 = 0;
                    i4 = 1;
                    i6 = 1;
                    break;
                case 6:
                    i6 = 0;
                    i5 = 0;
                    i4 = 1;
                    break;
                case 7:
                    i4 = 1;
                    i6 = i4;
                    i5 = i6;
                    break;
                default:
                    i4 = 0;
                    i6 = i4;
                    i5 = i6;
                    break;
            }
            qt.y0(18, i4);
            qt.y0(19, i6);
            qt.y0(20, i5);
            qt.y0(77, (bArr[i47] >> 4) & 15);
            qt.y0(21, (bArr[i47] >> 0) & 15);
            int i48 = i2 + 5;
            qt.y0(29, (bArr[i48] >> 0) & 3);
            qt.y0(31, (bArr[i48] >> 2) & 3);
            qt.y0(30, (bArr[i48] >> 4) & 3);
            qt.y0(32, (bArr[i48] >> 6) & 3);
            int i49 = i2 + 6;
            qt.y0(13, (bArr[i49] >> 0) & 1);
            qt.y0(11, (bArr[i49] >> 1) & 1);
            qt.y0(62, (bArr[i49] >> 2) & 1);
            qt.y0(65, (bArr[i49] >> 5) & 1);
            qt.y0(16, (bArr[i49] >> 6) & 1);
            qt.y0(12, (bArr[i2 + 7] >> 0) & 3);
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f12971k.j();
        u0.c.f17386m.d(this.f12982v);
        l0.b0.p0(this.f12983w);
        w0.e.f17815a.d(this.f12980t);
        w0.e.f17819e.d(this.f12980t);
        u0.c.f17392s.d(this.f12980t);
        u0.c.f17374a.d(this.f12980t);
        qt.q0(this.f12970j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 172) {
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
            a3(true, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6]);
            return;
        }
        if (i2 != 24) {
            return;
        }
        int i3 = nt.f8633a;
        if (i3 == 10682823) {
            d3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f12984x[this.f12985y % 2], 37, 1, -86, 0});
            d3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f12984x[this.f12985y % 2], 37, 1, -86, 0});
            d3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f12984x[this.f12985y % 2], 37, 1, -86, 0});
        } else if (i3 == 10748359) {
            d3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f12984x[this.f12985y % 2], 37, 2, -86, 0});
            d3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f12984x[this.f12985y % 2], 37, 2, -86, 0});
            d3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f12984x[this.f12985y % 2], 37, 2, -86, 0});
        }
        int i4 = this.f12985y + 1;
        this.f12985y = i4;
        this.f12985y = i4 % 2;
    }

    public final void a3(boolean z2, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        E = i2;
        D = i3;
        C = i4;
        f12961z = i5;
        A = i6;
        B = i7;
        F = (i8 >> 7) & 1;
        G = i8 & 15;
        if (z2) {
            z.k.s(227, 199, 7, i2, i3, i4, i5, i6, i7, i8);
        }
        qt.y0(137, E);
        qt.y0(138, D);
        qt.y0(139, C);
        qt.y0(140, f12961z);
        qt.y0(141, A);
        qt.y0(142, B);
        qt.y0(143, F);
        qt.y0(144, G);
        int iB = this.f12971k.b(1, 19);
        int i9 = E;
        if (iB != i9) {
            this.f12971k.g(1, i9);
        }
        int iB2 = this.f12971k.b(2, 9);
        int i10 = D;
        if (iB2 != i10) {
            this.f12971k.g(2, i10);
        }
        int iB3 = this.f12971k.b(3, 9);
        int i11 = C;
        if (iB3 != i11) {
            this.f12971k.g(3, i11);
        }
        int iB4 = this.f12971k.b(4, 9);
        int i12 = f12961z;
        if (iB4 != i12) {
            this.f12971k.g(4, i12);
        }
        int iB5 = this.f12971k.b(5, 9);
        int i13 = A;
        if (iB5 != i13) {
            this.f12971k.g(5, i13);
        }
        int iB6 = this.f12971k.b(6, 9);
        int i14 = B;
        if (iB6 != i14) {
            this.f12971k.g(6, i14);
        }
        int iB7 = this.f12971k.b(7, 0);
        int i15 = F;
        if (iB7 != i15) {
            this.f12971k.g(7, i15);
        }
        int iB8 = this.f12971k.b(8, 0);
        int i16 = G;
        if (iB8 != i16) {
            this.f12971k.g(8, i16);
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f12966f + bArr.length > 1024) {
            this.f12966f = 0;
            this.f12967g = 0;
            this.f12968h = 0;
        }
        System.arraycopy(bArr, 0, this.f12965e, this.f12966f, bArr.length);
        int length = this.f12966f + bArr.length;
        this.f12966f = length;
        int i5 = this.f12968h;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f12965e[1];
            int i6 = 2;
            while (true) {
                i4 = this.f12968h;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f12965e[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f12965e;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f12967g = this.f12968h + 1;
            } else {
                this.f12967g = 1;
            }
            this.f12968h = 0;
        }
        int i7 = this.f12966f - 2;
        while (true) {
            i2 = this.f12967g;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f12965e;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f12968h = i8;
                int i9 = i8 + i2 + 3;
                this.f12968h = i9;
                if (i9 >= this.f12966f) {
                    this.f12968h = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f12968h;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f12965e[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f12965e;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f12967g;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f12967g = this.f12968h;
                } else {
                    this.f12967g++;
                }
                this.f12968h = 0;
            }
            this.f12967g++;
        }
        if (i2 != 0) {
            int i12 = this.f12966f - i2;
            this.f12966f = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f12965e;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f12967g = 0;
        }
    }
}

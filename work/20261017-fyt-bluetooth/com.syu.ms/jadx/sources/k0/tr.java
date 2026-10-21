package k0;

import android.content.Intent;
import android.drm.DrmManagerClient;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.Time;
import app.App;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class tr extends lt {
    public static int A = 0;
    public static int B = 0;
    public static int C = 0;
    public static int D = 7;
    public static int E = 7;
    public static int F = 7;
    public static int G = 7;
    public static int H = 7;
    public static int I = 10;
    public static int J;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f10814z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10816c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f10815b = new int[5][];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10817d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f10818e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 3}, new int[]{20, 4}, new int[]{135, 0}, new int[]{177, -1}, new int[]{178, 54}, new int[]{179, 74}, new int[]{180, 75}, new int[]{181, 16}, new int[]{182, 12}, new int[]{183, -1}, new int[]{184, 64}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10819f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public o1.g0 f10820g = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f10821h = 8;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f10822i = 9;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f10823j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f10824k = 2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f10825l = 3;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f10826m = 4;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f10827n = 5;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f10828o = 6;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f10829p = 7;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f10830q = new a();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f10831r = new b();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f10832s = new c();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f10833t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f10834u = new d();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f10835v = new e();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f10836w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f10837x = new f();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f10838y = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 130, 6, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
                z.k.s(227, 229, 1, 1);
            } else {
                z.k.s(227, 229, 1, 0);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tr.this.a3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(tr.this.f10835v);
            tr.this.f10833t = 5;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tr trVar = tr.this;
            int i2 = trVar.f10833t - 1;
            trVar.f10833t = i2;
            if (i2 <= 0) {
                l0.b0.p0(trVar.f10835v);
                tr.this.f10833t = 6;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8633a) {
                    case 65990:
                        z.k.s(227, 226, 1, 1);
                        break;
                    case 131526:
                        z.k.s(227, 226, 1, 2);
                        break;
                    case 197062:
                        z.k.s(227, 226, 1, 4);
                        break;
                    case 262598:
                        z.k.s(227, 226, 1, 3);
                        break;
                    case 328134:
                        z.k.s(227, 226, 1, 1);
                        break;
                    case 393670:
                        z.k.s(227, 226, 1, 2);
                        break;
                    case 459206:
                        z.k.s(227, 226, 1, 20);
                        break;
                    case 524742:
                        z.k.s(227, 226, 1, 27);
                        break;
                    case 590278:
                    case 1049032:
                    case 4981191:
                    case 8847816:
                    case 8913352:
                        z.k.s(227, 226, 1, 28);
                        break;
                    case 655814:
                    case 1114568:
                    case 5046727:
                        z.k.s(227, 226, 1, 29);
                        break;
                }
                int i3 = nt.f8633a;
                if (i3 == 1049032 || i3 == 1114568 || i3 == 8913352) {
                    tr trVar2 = tr.this;
                    trVar2.e3(trVar2.f10820g.b(4, 7));
                    tr trVar3 = tr.this;
                    trVar3.c3(trVar3.f10820g.b(5, 7));
                    tr trVar4 = tr.this;
                    trVar4.h3(trVar4.f10820g.b(6, 10));
                    tr trVar5 = tr.this;
                    trVar5.b3(trVar5.f10820g.b(7, 0));
                    tr trVar6 = tr.this;
                    trVar6.d3(trVar6.f10820g.b(1, 7));
                    tr trVar7 = tr.this;
                    trVar7.f3(trVar7.f10820g.b(2, 7));
                    tr trVar8 = tr.this;
                    trVar8.g3(trVar8.f10820g.b(3, 7));
                }
                int i4 = u0.b.D;
                if (i4 == 11 || i4 == 13) {
                    return;
                }
                z.k.s(227, 132, 2, 48, 5);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 != tr.this.f10836w) {
                if (i2 == 11 || i2 == 13) {
                    z.k.s(227, 227, 1, 1);
                } else {
                    z.k.s(227, 132, 2, 48, 5);
                    z.k.s(227, 227, 1, 0);
                }
                tr.this.f10836w = u0.b.D;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f10820g.a();
        u0.c.f17386m.a(this.f10834u, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8317l = 0;
        switch (nt.f8633a) {
            case 8978888:
            case 9044424:
            case 16318919:
            case 16384455:
                mtVar.f8317l = 1;
                break;
        }
        u0.c.f17374a.a(this.f10837x, 1);
        qt.z(this.f10832s);
        y0.g.f18095e.a(this.f10831r, 1);
        qt.z(this.f10830q);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int[][] iArr;
        int i10;
        byte b2 = bArr[i2];
        if (b2 == 29) {
            int i11 = i2 + 2;
            int i12 = bArr[i11] & 255;
            int i13 = i2 + 3;
            int i14 = bArr[i13] & 255;
            int i15 = i2 + 4;
            int i16 = bArr[i15] & 255;
            int i17 = i2 + 5;
            int i18 = bArr[i17] & 255;
            if (i12 == 0 && i14 == 0 && i16 == 0 && i18 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i12 || l0.c0.f13014h != i14 || l0.c0.f13015i != i16 || l0.c0.f13016j != i18) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i12;
            l0.c0.f13014h = i14;
            l0.c0.f13015i = i16;
            l0.c0.f13016j = i18;
            u0.d.D2(l0.c0.E0(bArr[i11] & 255));
            u0.d.E2(l0.c0.E0(bArr[i13] & 255));
            u0.d.F2(l0.c0.E0(bArr[i15] & 255));
            u0.d.G2(l0.c0.E0(bArr[i17] & 255));
        }
        if (b2 == 30) {
            u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 40) {
            int i19 = bArr[i2 + 2] & 255;
            int i20 = i2 + 3;
            int i21 = bArr[i20] & 255;
            int i22 = bArr[i2 + 4] & 255;
            int i23 = bArr[i2 + 5] & 255;
            int i24 = bArr[i2 + 6] & 255;
            int i25 = bArr[i2 + 7] & 255;
            int i26 = (i19 >> 7) & 1;
            qt.y0(10, i26);
            qt.y0(11, (i19 >> 6) & 1);
            qt.y0(12, (i19 >> 5) & 1);
            qt.y0(34, (i19 >> 4) & 1);
            qt.y0(13, (i19 >> 3) & 1);
            qt.y0(14, (i19 >> 2) & 1);
            qt.y0(15, (i19 >> 1) & 1);
            qt.y0(17, (i19 >> 0) & 1);
            int i27 = nt.f8633a;
            if (i27 == 65990 || i27 == 131526 || i27 == 197062 || i27 == 262598) {
                qt.y0(18, (bArr[i20] >> 7) & 1);
                qt.y0(19, (bArr[i20] >> 6) & 1);
                qt.y0(20, (bArr[i20] >> 5) & 1);
            } else {
                int i28 = i2 + 11;
                int i29 = (bArr[i28] >> 0) & 3;
                if (i29 != 1) {
                    if (i29 == 2) {
                        i5 = 1;
                    } else if (i29 != 3) {
                        i5 = 0;
                    } else {
                        i5 = 0;
                        i4 = 1;
                    }
                    i4 = i5;
                } else {
                    i4 = 0;
                    i5 = 1;
                }
                int i30 = (bArr[i28] >> 2) & 3;
                if (i30 != 1) {
                    if (i30 == 2) {
                        i7 = 1;
                    } else if (i30 != 3) {
                        i7 = 0;
                    } else {
                        i7 = 0;
                        i6 = 1;
                    }
                    i6 = i7;
                } else {
                    i6 = 0;
                    i7 = 1;
                }
                if (((bArr[i28] >> 4) & 1) == 1) {
                    i8 = 1;
                    i4 = 1;
                    i6 = 1;
                    i9 = 1;
                } else {
                    i8 = 0;
                    i9 = 0;
                }
                qt.y0(18, i8);
                qt.y0(19, i5);
                qt.y0(20, i4);
                qt.y0(22, i9);
                qt.y0(23, i7);
                qt.y0(24, i6);
            }
            qt.y0(21, i21 & 15);
            if (i26 == 0) {
                qt.y0(27, -1);
                qt.y0(28, -1);
            } else if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i31 = i22 & 255;
                if (i22 == 0) {
                    qt.y0(28, -2);
                } else if (i22 == 31) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i31);
                }
                int i32 = i23 & 255;
                if (i23 == 0) {
                    qt.y0(27, -2);
                } else if (i23 == 31) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i32);
                }
            } else {
                int i33 = i22 & 255;
                if (i22 == 0) {
                    qt.y0(27, -2);
                } else if (i22 == 31) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i33);
                }
                int i34 = i23 & 255;
                if (i23 == 0) {
                    qt.y0(28, -2);
                } else if (i23 == 31) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i34);
                }
            }
            qt.y0(33, (i24 >> 7) & 1);
            qt.y0(16, (i24 >> 6) & 1);
            qt.y0(54, (i24 >> 4) & 1);
            qt.y0(67, (i24 >> 2) & 1);
            int i35 = (i24 >> 0) & 1;
            qt.y0(37, i35);
            if (i26 == 0) {
                qt.y0(40, -1);
                qt.y0(41, -1);
            } else {
                int i36 = i2 + 8;
                if ((bArr[i36] & 255) == 0) {
                    qt.y0(40, -2);
                } else if ((bArr[i36] & 255) == 31) {
                    qt.y0(40, -3);
                } else {
                    qt.y0(40, bArr[i36] & 255);
                }
                int i37 = i2 + 10;
                if ((bArr[i37] & 255) == 0) {
                    qt.y0(41, -2);
                } else if ((bArr[i37] & 255) == 31) {
                    qt.y0(41, -3);
                } else {
                    qt.y0(41, bArr[i37] & 255);
                }
            }
            int i38 = i2 + 9;
            qt.y0(42, (bArr[i38] >> 7) & 1);
            qt.y0(43, (bArr[i38] >> 4) & 1);
            qt.y0(44, (bArr[i38] >> 0) & 15);
            int i39 = i2 + 11;
            qt.y0(45, (bArr[i39] >> 5) & 1);
            qt.y0(35, (bArr[i39] >> 6) & 1);
            int i40 = i2 + 12;
            qt.y0(75, (bArr[i40] >> 6) & 1);
            qt.y0(85, (bArr[i40] >> 3) & 1);
            qt.y0(86, (bArr[i40] >> 0) & 7);
            u0.d.B3((i35 == 1 || SystemProperties.getInt("persist.fyt.temperature", 0) == 1) ? (268435456 | ((i25 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR)) & (-1) : (i25 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            return;
        }
        if (b2 == 41) {
            qt.k(bArr[i2 + 2], bArr[i2 + 3], false, 380);
            return;
        }
        if (b2 == 97) {
            int i41 = i2 + 2;
            qt.y0(138, (bArr[i41] >> 0) & 1);
            qt.y0(139, (bArr[i41] >> 1) & 1);
            qt.y0(140, (bArr[i41] >> 2) & 1);
            qt.y0(141, (bArr[i41] >> 3) & 1);
            qt.y0(142, (bArr[i41] >> 4) & 1);
            qt.y0(143, (bArr[i41] >> 5) & 1);
            qt.y0(144, (bArr[i2 + 3] >> 4) & 15);
            qt.y0(145, (bArr[i2 + 4] >> 0) & 15);
            int i42 = i2 + 5;
            qt.y0(146, (bArr[i42] >> 0) & 1);
            qt.y0(147, (bArr[i42] >> 1) & 1);
            qt.y0(148, (bArr[i42] >> 2) & 1);
            qt.y0(149, (bArr[i42] >> 3) & 1);
            qt.y0(150, (bArr[i42] >> 4) & 1);
            qt.y0(151, (bArr[i42] >> 5) & 1);
            return;
        }
        if (b2 == 98) {
            if (this.f10833t == 6) {
                int i43 = i2 + 2;
                if (bArr[i43] != this.f10838y) {
                    this.f10838y = bArr[i43];
                }
            }
            int i44 = i2 + 2;
            qt.y0(152, bArr[i44] & 255);
            int i45 = bArr[i44] & 255;
            if (i45 == 1) {
                int i46 = i2 + 3;
                if (bArr[i46] == 0) {
                    qt.y0(153, bArr[i2 + 4] & 255);
                    int i47 = i2 + 5;
                    qt.y0(156, (bArr[i47] >> 7) & 1);
                    qt.y0(155, (bArr[i47] >> 5) & 1);
                    qt.y0(154, (bArr[i47] >> 0) & 15);
                    qt.y0(157, (bArr[i2 + 6] & 255) | ((bArr[i2 + 7] << 8) & 65280));
                    return;
                }
                if (bArr[i46] == 1) {
                    qt.y0(153, bArr[i2 + 4] & 255);
                    qt.y0(158, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
                    qt.y0(159, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
                    qt.y0(160, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 9] & 255));
                    qt.y0(161, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 11] & 255));
                    qt.y0(162, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 13] & 255));
                    qt.y0(163, (bArr[i2 + 15] & 255) | ((bArr[i2 + 16] << 8) & 65280));
                    return;
                }
                return;
            }
            if (i45 == 2) {
                qt.y0(145, (bArr[i2 + 4] >> 0) & 15);
                int i48 = i2 + 5;
                qt.y0(164, (bArr[i48] >> 4) & 15);
                qt.y0(165, (bArr[i48] >> 0) & 15);
                qt.y0(166, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(167, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255));
                qt.y0(170, bArr[i2 + 10] & 255);
                qt.y0(169, bArr[i2 + 11] & 255);
                qt.y0(168, bArr[i2 + 12] & 255);
                qt.y0(173, bArr[i2 + 13] & 255);
                qt.y0(172, bArr[i2 + 14] & 255);
                qt.y0(171, bArr[i2 + 15] & 255);
                return;
            }
            if (i45 == 4 || i45 == 5) {
                int i49 = i2 + 5;
                qt.y0(174, (bArr[i49] >> 4) & 15);
                qt.y0(175, (bArr[i49] >> 0) & 15);
                qt.y0(177, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(176, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255));
                qt.y0(180, bArr[i2 + 10] & 255);
                qt.y0(179, bArr[i2 + 11] & 255);
                qt.y0(178, bArr[i2 + 12] & 255);
                qt.y0(183, bArr[i2 + 13] & 255);
                qt.y0(182, bArr[i2 + 14] & 255);
                qt.y0(181, bArr[i2 + 15] & 255);
                return;
            }
            return;
        }
        if (b2 == 102) {
            int i50 = i2 + 4;
            qt.y0(183, (bArr[i50] >> 7) & 1);
            qt.y0(184, (bArr[i50] >> 6) & 1);
            return;
        }
        if (b2 == 104) {
            int i51 = i2 + 2;
            qt.y0(185, (bArr[i51] >> 0) & 1);
            qt.y0(186, (bArr[i51] >> 1) & 1);
            qt.y0(187, (bArr[i51] >> 2) & 1);
            qt.y0(188, (bArr[i51] >> 3) & 1);
            qt.y0(189, (bArr[i51] >> 4) & 1);
            qt.y0(190, (bArr[i51] >> 5) & 1);
            return;
        }
        if (b2 == 112) {
            qt.y0(191, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
            qt.y0(192, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(193, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(194, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255));
            qt.y0(195, bArr[i2 + 10] & 255);
            return;
        }
        if (b2 == 114) {
            qt.y0(197, bArr[i2 + 2] & 256);
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f10817d = b3 & 255;
                int i52 = 0;
                while (true) {
                    iArr = this.f10818e;
                    if (i52 < iArr.length) {
                        int i53 = this.f10817d;
                        if (i53 != iArr[i52][0]) {
                            i52++;
                        } else if (i53 != 0) {
                            this.f10816c = i52;
                        }
                    }
                }
                int i54 = b4 & 255;
                if (i54 == 1) {
                    if (i52 < iArr.length) {
                        l0.b0.l0(iArr[i52][1], 0);
                    }
                } else if (i54 == 0) {
                    int i55 = this.f10816c;
                    if (i55 < iArr.length && i55 != 255) {
                        l0.b0.l0(iArr[i55][1], 1);
                    }
                    this.f10816c = 255;
                }
                break;
            case 33:
                int i56 = (bArr[i2 + 8] & 255) << 24;
                qt.y0(104, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255) | i56);
                qt.y0(105, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(106, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8) | i56);
                break;
            case 34:
                int i57 = i2 + 2;
                int i58 = (bArr[i57] & 255) << 24;
                int i59 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255);
                if (i59 == 65535) {
                    i59 = 0;
                }
                qt.y0(107, i58 | i59);
                qt.y0(110, bArr[i57] & 255);
                break;
            case 35:
                int i60 = (bArr[i2 + 2] & 255) << 24;
                int i61 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255);
                if (i61 == 65535) {
                    i61 = 0;
                }
                qt.y0(108, i61 | i60);
                for (int i62 = 0; i62 < 5; i62++) {
                    int i63 = i2 + (i62 * 2);
                    int[] iArr2 = {i62, (bArr[i63 + 6] & 255) | ((bArr[i63 + 5] & 255) << 8) | i60};
                    if (qt.C0(109, iArr2, this.f10815b[i62])) {
                        this.f10815b[i62] = iArr2;
                    }
                }
                break;
            case 36:
                int i64 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i64 >> 6) & 1);
                    qt.y0(1, (i64 >> 7) & 1);
                } else {
                    qt.y0(2, (i64 >> 7) & 1);
                    qt.y0(1, (i64 >> 6) & 1);
                }
                qt.y0(4, (i64 >> 5) & 1);
                qt.y0(3, (i64 >> 4) & 1);
                qt.y0(5, (i64 >> 3) & 1);
                break;
            case 37:
                byte b5 = bArr[i2 + 2];
                int[] iArr3 = new int[1];
                iArr3[0] = (b5 & 128) == 0 ? 0 : 1;
                qt.y0(111, iArr3);
                int[] iArr4 = new int[1];
                iArr4[0] = (b5 & 64) == 0 ? 0 : 1;
                qt.y0(112, iArr4);
                int[] iArr5 = new int[1];
                iArr5[0] = (b5 & 32) == 0 ? 0 : 1;
                qt.y0(113, iArr5);
                int[] iArr6 = new int[1];
                iArr6[0] = (b5 & 4) == 0 ? 0 : 1;
                qt.y0(114, iArr6);
                int i65 = (b5 & 3) << 24;
                int i66 = bArr[i2 + 3] & 255;
                if (i66 == 255) {
                    i66 = 16777215;
                }
                qt.y0(115, i66 | i65);
                int i67 = bArr[i2 + 4] & 255;
                if (i67 == 255) {
                    i67 = 16777215;
                }
                qt.y0(116, i67 | i65);
                int i68 = bArr[i2 + 5] & 255;
                if (i68 == 255) {
                    i68 = 16777215;
                }
                qt.y0(117, i68 | i65);
                int i69 = bArr[i2 + 6] & 255;
                if (i69 == 255) {
                    i69 = 16777215;
                }
                qt.y0(118, i69 | i65);
                int i70 = bArr[i2 + 7] & 255;
                if (i70 == 255) {
                    i70 = 16777215;
                }
                qt.y0(119, i70 | i65);
                break;
            case 38:
                int i71 = i2 + 2;
                qt.y0(120, (bArr[i71] >> 7) & 1);
                qt.y0(121, (bArr[i71] >> 4) & 7);
                qt.y0(122, (bArr[i71] >> 2) & 3);
                qt.y0(123, (bArr[i71] >> 0) & 3);
                int i72 = i2 + 3;
                qt.y0(124, (bArr[i72] >> 7) & 1);
                qt.y0(125, (bArr[i72] >> 6) & 1);
                qt.y0(126, (bArr[i72] >> 5) & 1);
                qt.y0(127, (bArr[i72] >> 4) & 1);
                qt.y0(128, (bArr[i72] >> 0) & 7);
                qt.y0(128, (bArr[i72] >> 0) & 7);
                int i73 = i2 + 4;
                qt.y0(129, (bArr[i73] >> 7) & 1);
                qt.y0(130, (bArr[i73] >> 6) & 1);
                qt.y0(131, (bArr[i73] >> 5) & 1);
                qt.y0(132, (bArr[i73] >> 4) & 1);
                qt.y0(133, (bArr[i73] >> 3) & 1);
                int i74 = i2 + 5;
                qt.y0(134, (bArr[i74] >> 7) & 1);
                qt.y0(135, (bArr[i74] >> 6) & 1);
                qt.y0(136, (bArr[i2 + 6] >> 0) & 3);
                qt.y0(137, (bArr[i2 + 7] >> 0) & 7);
                break;
            default:
                switch (b2) {
                    case 48:
                        qt.L(new String(bArr, i2 + 2, i3 - 2));
                        break;
                    case 49:
                        int i75 = nt.f8633a;
                        if (i75 != 1049032 && i75 != 1114568 && i75 != 8913352) {
                            int i76 = i2 + 2;
                            qt.y0(176, (bArr[i76] >> 4) & 15);
                            qt.y0(177, (bArr[i76] >> 0) & 15);
                            int i77 = i2 + 3;
                            qt.y0(179, (bArr[i77] >> 4) & 15);
                            qt.y0(180, (bArr[i77] >> 0) & 15);
                            int i78 = i2 + 4;
                            qt.y0(181, (bArr[i78] >> 4) & 15);
                            qt.y0(178, (bArr[i78] >> 0) & 15);
                            qt.y0(182, (bArr[i2 + 5] >> 0) & 255);
                            break;
                        }
                        break;
                    case 50:
                        byte b6 = bArr[i2 + 2];
                        int i79 = (b6 >> 2) & 1;
                        f10814z = i79;
                        if (i79 == 1 && A != (i10 = (b6 >> 3) & 1)) {
                            A = i10;
                            if (qt.k0()) {
                                if (A == 1) {
                                    u0.i.l3().g4(131072, true);
                                } else {
                                    u0.i.l3().g4(131072, false);
                                }
                            } else if (A == 1) {
                                qt.a(1);
                            } else {
                                qt.a(0);
                            }
                            break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f10820g.j();
        u0.c.f17386m.d(this.f10834u);
        l0.b0.p0(this.f10835v);
        u0.c.f17374a.d(this.f10837x);
        qt.q0(this.f10832s);
        y0.g.f18095e.d(this.f10831r);
        qt.q0(this.f10830q);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 201) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 34) {
            if (iArr[0] == 1) {
                if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_Tangdu_YL_Toyota_UI")) {
                    return;
                }
                r3();
                return;
            } else {
                if (iArr[0] == 0) {
                    l0.b0.l0(62, 0);
                    l0.b0.l0(62, 1);
                }
                return;
            }
        }
        if (i2 == 35) {
            qt.y0(196, iArr[0]);
            return;
        }
        if (i2 == 42) {
            if (T2(iArr, 2)) {
                z.k.s(227, -122, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 45) {
            t3(iArr[0]);
            s3(iArr[1]);
            return;
        }
        if (i2 == 1029) {
            if (T2(iArr, 2)) {
                int iW = (iArr[1] * 255) / a.f.w();
                int i3 = (iArr[2] * 255) / a.f.i();
                if (iArr[0] == 0) {
                    z.k.s(227, 133, 3, iW, i3, 1);
                    return;
                } else {
                    if (iArr[0] == 1) {
                        z.k.s(227, 133, 3, iW, i3, 0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        switch (i2) {
            case 0:
                z.k.s(227, 224, 2, iArr[0], iArr[1]);
                break;
            case 1:
                z.k.s(227, 197, 2, iArr[0], 0);
                break;
            case 2:
                int i4 = nt.f8633a;
                if (i4 != 1049032 && i4 != 1114568 && i4 != 8913352) {
                    z.k.s(227, 132, 2, iArr[0], iArr[1]);
                    break;
                } else {
                    switch (iArr[0]) {
                        case 1:
                            e3(iArr[1]);
                            break;
                        case 2:
                            c3(iArr[1]);
                            break;
                        case 3:
                            b3(iArr[1]);
                            break;
                        case 4:
                            d3(iArr[1]);
                            break;
                        case 5:
                            g3(iArr[1]);
                            break;
                        case 6:
                            f3(iArr[1]);
                            break;
                        case 7:
                            h3(iArr[1]);
                            break;
                    }
                }
                break;
            case 3:
                z.k.s(227, 144, 2, iArr[0], iArr[1]);
                break;
            case 4:
                z.k.s(227, 141, 2, iArr[0], iArr[1]);
                break;
            case 5:
                z.k.s(227, 228, 1, iArr[0]);
                break;
            case 6:
                qt.y0(198, iArr[0]);
                z.k.s(227, 229, 1, iArr[0]);
                break;
            case 7:
                z.k.s(227, 230, 2, iArr[0], iArr[1]);
                break;
            case 8:
                z.k.s(227, 131, 2, iArr[0], iArr[1]);
                break;
        }
    }

    public final void a3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        int i3 = u0.b.D;
        if (i3 != 1) {
            if (i3 != 2 && i3 != 3) {
                switch (i3) {
                    case 8:
                    case 10:
                        iArr[2] = 8;
                        iArr[3] = 33;
                        iArr[5] = u0.b.r3 & 255;
                        iArr[6] = u0.b.s3 & 255;
                        int i4 = u0.b.t3;
                        iArr[7] = i4 / BatchedScanSettings.MAX_INTERVAL_SEC;
                        iArr[8] = (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                        iArr[9] = i4 % 60;
                        break;
                    case 9:
                        iArr[2] = 3;
                        iArr[3] = 33;
                        iArr[5] = u0.b.r3 & 255;
                        iArr[6] = u0.b.s3 & 255;
                        int i5 = u0.b.t3;
                        iArr[7] = i5 / BatchedScanSettings.MAX_INTERVAL_SEC;
                        iArr[8] = (i5 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                        iArr[9] = i5 % 60;
                        break;
                }
            } else {
                iArr[2] = 11;
                iArr[3] = 33;
            }
            iArr[2] = 7;
            iArr[3] = 33;
        } else {
            int i6 = w0.d.f17797i;
            int i7 = w0.d.f17798j;
            iArr[2] = 1;
            iArr[3] = 1;
            int i8 = w0.d.f17796h;
            if (i8 == 65536) {
                iArr[4] = 0;
            } else if (i8 == 65537) {
                iArr[4] = 1;
            } else if (i8 == 65538) {
                iArr[4] = 2;
            } else if (i8 == 0) {
                iArr[4] = 16;
            } else if (i8 == 1) {
                iArr[4] = 17;
            }
            iArr[5] = i6 & 255;
            iArr[6] = (i6 >> 8) & 255;
            if (i7 >= 65536) {
                i7 -= 65536;
            }
            int i9 = i7 % 6;
            if (i9 != 0 || i7 == 0) {
                iArr[7] = i9;
            } else {
                iArr[7] = 6;
            }
        }
        if (u0.b.f17306a0 == 0) {
            iArr[2] = 0;
            iArr[3] = 0;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i10 = i2 + 1;
            iArr2[i10] = iArr[i2];
            i2 = i10;
        }
        z.k.s(iArr2);
    }

    public final void b3(int i2) {
        J = i2;
        z.k.s(227, 132, 2, 3, i2);
        qt.y0(178, i2);
        int iB = this.f10820g.b(7, 0);
        int i3 = J;
        if (iB != i3) {
            this.f10820g.g(7, i3);
        }
    }

    public final void c3(int i2) {
        H = i2;
        z.k.s(227, 132, 2, 2, i2);
        qt.y0(177, i2);
        int iB = this.f10820g.b(5, 7);
        int i3 = H;
        if (iB != i3) {
            this.f10820g.g(5, i3);
        }
    }

    public final void d3(int i2) {
        D = i2;
        z.k.s(227, 132, 2, 4, i2);
        qt.y0(179, i2);
        int iB = this.f10820g.b(1, 7);
        int i3 = D;
        if (iB != i3) {
            this.f10820g.g(1, i3);
        }
    }

    public final void e3(int i2) {
        G = i2;
        z.k.s(227, 132, 2, 1, i2);
        qt.y0(176, i2);
        int iB = this.f10820g.b(4, 7);
        int i3 = G;
        if (iB != i3) {
            this.f10820g.g(4, i3);
        }
    }

    public final void f3(int i2) {
        E = i2;
        z.k.s(227, 132, 2, 6, i2);
        qt.y0(181, i2);
        int iB = this.f10820g.b(2, 7);
        int i3 = E;
        if (iB != i3) {
            this.f10820g.g(2, i3);
        }
    }

    public final void g3(int i2) {
        F = i2;
        z.k.s(227, 132, 2, 5, i2);
        qt.y0(180, i2);
        int iB = this.f10820g.b(3, 7);
        int i3 = F;
        if (iB != i3) {
            this.f10820g.g(3, i3);
        }
    }

    public final void h3(int i2) {
        I = i2;
        z.k.s(227, 132, 2, 7, i2);
        qt.y0(182, i2);
        int iB = this.f10820g.b(6, 10);
        int i3 = I;
        if (iB != i3) {
            this.f10820g.g(6, i3);
        }
    }

    public final void r3() {
        if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_Tangdu_YL_Toyota_UI")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.air.Air_Activity_Tangdu_YL_Toyota_UI");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void s3(int i2) {
        qt.y0(200, 65535 & i2);
        C = i2;
        if (this.f10820g.b(9, 0) != C) {
            SystemProperties.set("persist.sys.height", String.format(Locale.US, "%d", Integer.valueOf(C)));
            this.f10820g.g(9, C);
        }
    }

    public final void t3(int i2) {
        qt.y0(199, 65535 & i2);
        B = i2;
        if (this.f10820g.b(8, 0) != B) {
            SystemProperties.set("persist.sys.width", String.format(Locale.US, "%d", Integer.valueOf(B)));
            this.f10820g.g(8, B);
        }
    }
}

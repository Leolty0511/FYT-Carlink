package k0;

import android.content.Intent;
import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class em extends lt implements o1.q {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f4878u = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4883f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f4879b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4880c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4881d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4882e = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4884g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f4885h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 18}, new int[]{7, 13}, new int[]{8, 26}, new int[]{9, 7}, new int[]{10, 8}, new int[]{11, 31}, new int[]{12, 30}, new int[]{13, 1}, new int[]{14, 54}, new int[]{15, 0}, new int[]{16, 5}, new int[]{17, 58}, new int[]{18, 38}, new int[]{19, 11}, new int[]{20, 5}, new int[]{21, 53}, new int[]{22, 18}, new int[]{23, -1}, new int[]{24, 55}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f4886i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f4887j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public o1.g0 f4888k = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f4889l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f4890m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f4891n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f4892o = new d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f4893p = new e();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f4894q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f4895r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f4896s = new f();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f4897t = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -58, 6, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0));
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            em.a3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(em.this.f4893p);
            em.this.f4891n = 5;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            em emVar = em.this;
            int i2 = emVar.f4891n - 1;
            emVar.f4891n = i2;
            if (i2 <= 0) {
                l0.b0.p0(emVar.f4893p);
                em.this.f4891n = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (App.c().getResources().getConfiguration().orientation == 1) {
                z.k.s(227, 198, 2, 18, 1);
            } else {
                z.k.s(227, 198, 2, 18, 0);
            }
            int i3 = nt.f8633a;
            if (i3 == 12779972) {
                z.k.s(227, 198, 2, 26, 0);
                return;
            }
            if (i3 == 13238724) {
                z.k.s(227, 198, 2, 26, 1);
            } else if (i3 == 15729092 && u0.b.f17306a0 == 1) {
                em emVar2 = em.this;
                emVar2.h3(emVar2.f4888k.b(1, 1));
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            em emVar = em.this;
            int i2 = emVar.f4894q + 1;
            emVar.f4894q = i2;
            if (i2 < 15 || i2 % 2 != 0) {
                return;
            }
            int i3 = emVar.f4895r;
            if (i3 == 0) {
                z.k.s(227, 248, 2, 0, 2);
            } else if (i3 == 1) {
                z.k.s(227, 248, 2, 1, 2);
            }
        }
    }

    public static void a3() {
        int[] iArr = new int[7];
        int i2 = 0;
        for (int i3 = 0; i3 < 7; i3++) {
            iArr[i3] = 0;
        }
        iArr[0] = 192;
        iArr[1] = 5;
        int i4 = u0.b.D;
        if (i4 == 1) {
            iArr[2] = 1;
            int i5 = w0.d.f17796h;
            if (i5 == 65536) {
                iArr[3] = 0;
            } else if (i5 == 65537) {
                iArr[3] = 1;
            } else if (i5 == 65538) {
                iArr[3] = 2;
            } else if (i5 == 0 || i5 == 1) {
                iArr[3] = 16;
            }
            int i6 = w0.d.f17797i;
            iArr[4] = (i6 >> 8) & 255;
            iArr[5] = i6 & 255;
        } else if (i4 == 5) {
            iArr[2] = 3;
        } else if (i4 == 8 || i4 == 10) {
            iArr[2] = 2;
            iArr[3] = u0.b.r3;
        } else {
            iArr[2] = 4;
        }
        if (u0.b.f17306a0 == 0) {
            iArr[2] = 0;
        }
        int[] iArr2 = new int[8];
        iArr2[0] = 227;
        while (i2 < 7) {
            int i7 = i2 + 1;
            iArr2[i7] = iArr[i2];
            i2 = i7;
        }
        z.k.s(iArr2);
    }

    public static int b3(int i2) {
        if (i2 == 0) {
            return 10;
        }
        int i3 = (i2 - 1) / 3;
        if (i3 >= 10) {
            return 9;
        }
        return i3;
    }

    public static void i3(byte[] bArr) {
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
        this.f4888k.a();
        u0.c.f17386m.a(this.f4892o, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8313h = 0;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        } else {
            this.f7886a.f8314i = 1;
        }
        qt.z(this.f4886i);
        qt.z(this.f4890m);
        qt.x(this.f4887j);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f4884g = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f4885h;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f4884g;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f4883f = i7;
                    break;
                }
                i7++;
            }
            int i9 = this.f4884g;
            if (i9 == 23) {
                if ((b4 & 255) == 1) {
                    if (u0.b.f17347o == 0 && !o1.u.S("com.syu.fourcamera2")) {
                        qt.a(1);
                        return;
                    } else {
                        if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2")) {
                            qt.a(0);
                        }
                        return;
                    }
                }
                return;
            }
            switch (i9) {
                case 9:
                    for (int i10 = 0; i10 < (b4 & 255); i10++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    break;
                case 10:
                    for (int i11 = 0; i11 < (b4 & 255); i11++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    break;
                case 11:
                    for (int i12 = 0; i12 < (b4 & 255); i12++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    break;
                case 12:
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
                        int i15 = this.f4883f;
                        if (i15 < iArr.length && i15 != 255) {
                            l0.b0.l0(iArr[i15][1], 1);
                        }
                        this.f4883f = 255;
                    }
                    break;
            }
        }
        if (b2 == 39) {
            int i16 = i2 + 2;
            qt.y0(10, (bArr[i16] >> 7) & 1);
            qt.y0(11, (bArr[i16] >> 6) & 1);
            qt.y0(12, (bArr[i16] >> 5) & 1);
            qt.y0(13, (bArr[i16] >> 4) & 1);
            qt.y0(52, (bArr[i16] >> 3) & 1);
            qt.y0(62, (bArr[i16] >> 2) & 1);
            qt.y0(65, (bArr[i16] >> 1) & 1);
            qt.y0(16, (bArr[i16] >> 0) & 1);
            int i17 = i2 + 3;
            qt.y0(18, (bArr[i17] >> 7) & 1);
            qt.y0(19, (bArr[i17] >> 6) & 1);
            qt.y0(20, (bArr[i17] >> 5) & 1);
            qt.y0(49, (bArr[i17] >> 4) & 1);
            qt.y0(21, (bArr[i17] >> 0) & 15);
            int i18 = i2 + 4;
            if ((bArr[i18] & 255) == 0) {
                qt.y0(27, -2);
            } else if ((bArr[i18] & 255) == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, bArr[i18] & 255);
            }
            int i19 = i2 + 5;
            if ((bArr[i19] & 255) == 0) {
                qt.y0(28, -2);
            } else if ((bArr[i19] & 255) == 255) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, bArr[i19] & 255);
            }
            int i20 = i2 + 6;
            qt.y0(73, (bArr[i20] >> 4) & 15);
            qt.y0(74, (bArr[i20] >> 3) & 1);
            qt.y0(66, (bArr[i20] >> 1) & 1);
            if (nt.W == 0) {
                int i21 = i2 + 7;
                qt.y0(29, (bArr[i21] >> 4) & 15);
                qt.y0(30, (bArr[i21] >> 0) & 15);
            } else {
                int i22 = i2 + 7;
                qt.y0(30, (bArr[i22] >> 4) & 15);
                qt.y0(29, (bArr[i22] >> 0) & 15);
            }
            int i23 = i2 + 8;
            if (((bArr[i23] >> 7) & 1) == 1) {
                f3();
            }
            if (((bArr[i23] >> 6) & 1) == 1) {
                g3();
            }
            qt.y0(53, (bArr[i23] >> 5) & 1);
            qt.y0(17, (bArr[i23] >> 4) & 1);
            qt.y0(34, (bArr[i23] >> 3) & 1);
            qt.y0(185, (bArr[i23] >> 0) & 7);
            int i24 = i2 + 9;
            qt.y0(186, (bArr[i24] >> 0) & 7);
            int i25 = i2 + 16;
            qt.y0(187, (bArr[i25] >> 3) & 7);
            qt.y0(188, (bArr[i25] >> 0) & 7);
            qt.y0(22, (bArr[i24] >> 7) & 1);
            qt.y0(23, (bArr[i24] >> 6) & 1);
            qt.y0(24, (bArr[i24] >> 5) & 1);
            qt.y0(50, (bArr[i24] >> 4) & 1);
            int i26 = i2 + 10;
            qt.y0(122, (bArr[i26] >> 7) & 1);
            qt.y0(123, (bArr[i26] >> 6) & 1);
            qt.y0(124, (bArr[i26] >> 5) & 1);
            qt.y0(125, (bArr[i26] >> 4) & 1);
            if (nt.W == 1) {
                qt.y0(126, (bArr[i26] >> 2) & 1);
                qt.y0(127, (bArr[i26] >> 3) & 1);
            } else {
                qt.y0(126, (bArr[i26] >> 3) & 1);
                qt.y0(127, (bArr[i26] >> 2) & 1);
            }
            if (nt.W == 0) {
                int i27 = i2 + 11;
                qt.y0(128, (bArr[i27] >> 4) & 15);
                qt.y0(129, (bArr[i27] >> 0) & 15);
            } else {
                int i28 = i2 + 11;
                qt.y0(129, (bArr[i28] >> 4) & 15);
                qt.y0(128, (bArr[i28] >> 0) & 15);
            }
            int i29 = i2 + 12;
            qt.y0(67, (bArr[i29] >> 7) & 1);
            qt.y0(131, (bArr[i29] >> 6) & 1);
            qt.y0(132, (bArr[i29] >> 5) & 1);
            qt.y0(133, (bArr[i29] >> 4) & 1);
            qt.y0(134, (bArr[i29] >> 3) & 1);
            qt.y0(135, (bArr[i29] >> 2) & 1);
            qt.y0(136, (bArr[i29] >> 1) & 1);
            qt.y0(142, (bArr[i29] >> 0) & 1);
            int i30 = i2 + 13;
            if ((bArr[i30] & 255) == 0) {
                qt.y0(40, -2);
            } else if ((bArr[i30] & 255) == 255) {
                qt.y0(40, -3);
            } else {
                qt.y0(40, bArr[i30] & 255);
            }
            int i31 = i2 + 14;
            if ((bArr[i31] & 255) == 0) {
                qt.y0(41, -2);
            } else if ((bArr[i31] & 255) == 255) {
                qt.y0(41, -3);
            } else {
                qt.y0(41, bArr[i31] & 255);
            }
            int i32 = i2 + 15;
            qt.y0(139, (bArr[i32] >> 7) & 1);
            qt.y0(140, (bArr[i32] >> 6) & 1);
            qt.y0(141, (bArr[i32] >> 5) & 1);
            qt.y0(143, (bArr[i32] >> 4) & 1);
            qt.y0(42, (bArr[i32] >> 3) & 1);
            qt.y0(44, (bArr[i32] >> 0) & 7);
            return;
        }
        if (b2 == 41) {
            int i33 = i2 + 3;
            int i34 = i2 + 2;
            qt.y0(189, ((bArr[i33] << 8) & 65280) | (bArr[i34] & 255));
            qt.i(bArr[i34], bArr[i33], false, 10752);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 53) {
            qt.y0(108, bArr[i2 + 3] & 255);
            qt.y0(109, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(110, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            int i35 = i2 + 13;
            qt.y0(120, (bArr[i35] >> 7) & 1);
            qt.y0(121, (bArr[i35] >> 6) & 1);
            if (qt.k0() && !l0.c0.f13022p) {
                int i36 = i2 + 2;
                int i37 = (bArr[i36] >> 5) & 1;
                int i38 = (bArr[i36] >> 4) & 1;
                boolean z2 = i37 == 0 && i38 == 1;
                boolean z3 = i37 == 1 && i38 == 0;
                int i39 = (i37 == 1 && i38 == 1) ? 1 : 0;
                l0.c0.f13026t = 0;
                l0.c0.f13024r = 0;
                l0.c0.f13028v = 0;
                if (z2) {
                    l0.c0.f13026t = 20;
                }
                if (z3) {
                    l0.c0.f13024r = 20;
                }
                if (i39 != 0) {
                    l0.c0.f13028v = 20;
                }
                u0.i.l3().g4(4096, z2);
                u0.i.l3().g4(8192, z3);
                u0.d.I3(139, i39);
            }
            int i40 = bArr[i2 + 8] & 255;
            u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((i40 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i40 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            return;
        }
        if (b2 == 56) {
            int i41 = i2 + 2;
            qt.y0(99, (bArr[i41] >> 7) & 1);
            qt.y0(100, (bArr[i41] >> 6) & 1);
            qt.y0(101, (bArr[i41] >> 5) & 1);
            qt.y0(102, (bArr[i41] >> 4) & 1);
            qt.y0(103, (bArr[i41] >> 3) & 1);
            qt.y0(104, (bArr[i41] >> 2) & 1);
            qt.y0(105, (bArr[i41] >> 1) & 1);
            qt.y0(106, (bArr[i41] >> 0) & 1);
            qt.y0(107, bArr[i2 + 3] & 255);
            int i42 = i2 + 4;
            qt.y0(144, (bArr[i42] >> 7) & 1);
            qt.y0(145, (bArr[i42] >> 5) & 3);
            qt.y0(146, (bArr[i42] >> 4) & 1);
            qt.y0(147, (bArr[i42] >> 0) & 15);
            int i43 = i2 + 5;
            qt.y0(148, (bArr[i43] >> 4) & 15);
            qt.y0(149, (bArr[i43] >> 0) & 15);
            qt.y0(150, bArr[i2 + 6] & 255);
            qt.y0(151, bArr[i2 + 7] & 255);
            qt.y0(152, bArr[i2 + 8] & 255);
            qt.y0(153, bArr[i2 + 9] & 255);
            int i44 = i2 + 10;
            qt.y0(154, (bArr[i44] >> 6) & 3);
            qt.y0(155, (bArr[i44] >> 5) & 1);
            qt.y0(156, (bArr[i44] >> 4) & 1);
            qt.y0(157, (bArr[i44] >> 0) & 15);
            int i45 = i2 + 11;
            qt.y0(158, (bArr[i45] >> 6) & 3);
            qt.y0(159, (bArr[i45] >> 4) & 3);
            qt.y0(160, (bArr[i45] >> 3) & 1);
            qt.y0(1047, (bArr[i45] >> 3) & 1);
            qt.y0(161, (bArr[i45] >> 2) & 1);
            qt.y0(162, (bArr[i45] >> 1) & 1);
            qt.y0(163, (bArr[i45] >> 0) & 1);
            int i46 = i2 + 12;
            qt.y0(179, (bArr[i46] >> 7) & 1);
            qt.y0(180, (bArr[i46] >> 5) & 3);
            qt.y0(181, (bArr[i46] >> 1) & 15);
            qt.y0(182, (bArr[i46] >> 0) & 1);
            int i47 = i2 + 13;
            qt.y0(183, (bArr[i47] >> 6) & 3);
            qt.y0(184, (bArr[i47] >> 5) & 1);
            return;
        }
        if (b2 == 85) {
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i48 = i2 + 2;
                if ((bArr[i48] & 255) == 16) {
                    qt.y0(28, -2);
                } else if ((bArr[i2 + 4] & 255) == 80) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i48] & 255);
                }
                int i49 = i2 + 3;
                if ((bArr[i49] & 255) == 16) {
                    qt.y0(27, -2);
                } else if ((bArr[i2 + 5] & 255) == 80) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i49] & 255);
                }
            } else {
                int i50 = i2 + 2;
                if ((bArr[i50] & 255) == 16) {
                    qt.y0(27, -2);
                } else if ((bArr[i2 + 4] & 255) == 80) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i50] & 255);
                }
                int i51 = i2 + 3;
                if ((bArr[i51] & 255) == 16) {
                    qt.y0(28, -2);
                } else if ((bArr[i2 + 5] & 255) == 80) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i51] & 255);
                }
            }
            int i52 = i2 + 4;
            switch ((bArr[i52] >> 4) & 15) {
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
            qt.y0(21, (bArr[i52] >> 0) & 15);
            int i53 = i2 + 5;
            qt.y0(29, (bArr[i53] >> 0) & 15);
            qt.y0(30, (bArr[i53] >> 4) & 15);
            int i54 = i2 + 6;
            qt.y0(13, (bArr[i54] >> 0) & 1);
            qt.y0(11, (bArr[i54] >> 1) & 1);
            qt.y0(62, (bArr[i54] >> 2) & 1);
            qt.y0(53, (bArr[i54] >> 4) & 1);
            qt.y0(65, (bArr[i54] >> 5) & 1);
            qt.y0(16, (bArr[i54] >> 6) & 1);
            qt.y0(17, (bArr[i54] >> 7) & 1);
            qt.y0(12, (bArr[i2 + 7] >> 0) & 3);
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(b3(bArr[i2 + 2] & 255));
                u0.d.S2(b3(bArr[i2 + 3] & 255));
                u0.d.T2(b3(bArr[i2 + 4] & 255));
                u0.d.U2(b3(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i55 = i2 + 2;
                int i56 = bArr[i55] & 255;
                int i57 = i2 + 3;
                int i58 = bArr[i57] & 255;
                int i59 = i2 + 4;
                int i60 = bArr[i59] & 255;
                int i61 = i2 + 5;
                int i62 = bArr[i61] & 255;
                if (i56 == 0 && i58 == 0 && i60 == 0 && i62 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i56 || l0.c0.f13014h != i58 || l0.c0.f13015i != i60 || l0.c0.f13016j != i62) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i56;
                l0.c0.f13014h = i58;
                l0.c0.f13015i = i60;
                l0.c0.f13016j = i62;
                u0.d.D2(b3(bArr[i55] & 255));
                u0.d.E2(b3(bArr[i57] & 255));
                u0.d.F2(b3(bArr[i59] & 255));
                u0.d.G2(b3(bArr[i61] & 255));
                break;
            case 36:
                byte b5 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 7) & 1);
                    qt.y0(2, (b5 >> 6) & 1);
                } else {
                    qt.y0(1, (b5 >> 6) & 1);
                    qt.y0(2, (b5 >> 7) & 1);
                }
                qt.y0(3, (b5 >> 4) & 1);
                qt.y0(4, (b5 >> 5) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                qt.y0(0, (b5 >> 2) & 1);
                break;
            default:
                switch (b2) {
                    case 59:
                        int i63 = bArr[i2 + 2] & 255;
                        if (i63 == 0) {
                            qt.y0(111, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                            qt.y0(112, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                            qt.y0(113, (bArr[i2 + 10] & 255) | ((bArr[i2 + 9] << 8) & 65280));
                            break;
                        } else if (i63 == 1) {
                            qt.y0(114, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                            qt.y0(115, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                            qt.y0(116, (bArr[i2 + 10] & 255) | ((bArr[i2 + 9] << 8) & 65280));
                            break;
                        } else if (i63 == 2) {
                            qt.y0(117, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                            qt.y0(118, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                            qt.y0(119, (bArr[i2 + 10] & 255) | ((bArr[i2 + 9] << 8) & 65280));
                            break;
                        }
                        break;
                    case 60:
                        qt.y0(164, bArr[i2 + 2] & 255);
                        qt.y0(165, bArr[i2 + 3] & 255);
                        qt.y0(166, bArr[i2 + 4] & 255);
                        qt.y0(167, bArr[i2 + 5] & 255);
                        qt.y0(168, bArr[i2 + 6] & 255);
                        qt.y0(169, bArr[i2 + 7] & 255);
                        qt.y0(170, bArr[i2 + 8] & DhcpPacket.DHCP_DOMAIN_NAME);
                        break;
                    case 61:
                        qt.y0(171, bArr[i2 + 2] & 255);
                        int i64 = i2 + 3;
                        qt.y0(172, (bArr[i64] >> 7) & 1);
                        qt.y0(173, (bArr[i64] >> 6) & 1);
                        qt.y0(174, (bArr[i64] >> 5) & 1);
                        qt.y0(175, (bArr[i64] >> 4) & 1);
                        qt.y0(176, (bArr[i64] >> 3) & 1);
                        qt.y0(177, (bArr[i64] >> 2) & 1);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f4892o);
        l0.b0.p0(this.f4893p);
        qt.q0(this.f4886i);
        qt.q0(this.f4890m);
        qt.o0(this.f4887j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 190) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr[0] == 8 && iArr[1] == 19) {
                if (nt.W == 1) {
                    z.k.s(227, 198, 2, 8, 20);
                    return;
                } else {
                    z.k.s(227, 198, 2, 8, 19);
                    return;
                }
            }
            if (iArr[0] == 8 && iArr[1] == 20) {
                if (nt.W == 1) {
                    z.k.s(227, 198, 2, 8, 19);
                    return;
                } else {
                    z.k.s(227, 198, 2, 8, 20);
                    return;
                }
            }
            if (iArr[0] == 8 && iArr[1] == 30) {
                if (nt.W == 1) {
                    z.k.s(227, 198, 2, 8, 31);
                    return;
                } else {
                    z.k.s(227, 198, 2, 8, 30);
                    return;
                }
            }
            if (iArr[0] == 8 && iArr[1] == 31) {
                if (nt.W == 1) {
                    z.k.s(227, 198, 2, 8, 30);
                    return;
                } else {
                    z.k.s(227, 198, 2, 8, 31);
                    return;
                }
            }
            if (iArr[0] == 8 && iArr[1] == 45) {
                if (nt.W == 1) {
                    z.k.s(227, 198, 2, 8, 46);
                    return;
                } else {
                    z.k.s(227, 198, 2, 8, 45);
                    return;
                }
            }
            if (iArr[0] == 8 && iArr[1] == 46) {
                if (nt.W == 1) {
                    z.k.s(227, 198, 2, 8, 45);
                    return;
                } else {
                    z.k.s(227, 198, 2, 8, 46);
                    return;
                }
            }
            if (iArr[0] == 8 && iArr[1] == 47) {
                if (nt.W == 1) {
                    z.k.s(227, 198, 2, 8, 48);
                    return;
                } else {
                    z.k.s(227, 198, 2, 8, 47);
                    return;
                }
            }
            if (iArr[0] == 8 && iArr[1] == 48) {
                if (nt.W == 1) {
                    z.k.s(227, 198, 2, 8, 47);
                    return;
                } else {
                    z.k.s(227, 198, 2, 8, 48);
                    return;
                }
            }
            if (iArr[0] == 8 && iArr[1] == 34) {
                if (nt.W == 1) {
                    z.k.s(227, 198, 2, 8, 35);
                    return;
                } else {
                    z.k.s(227, 198, 2, 8, 34);
                    return;
                }
            }
            if (iArr[0] == 8 && iArr[1] == 35) {
                if (nt.W == 1) {
                    z.k.s(227, 198, 2, 8, 34);
                    return;
                } else {
                    z.k.s(227, 198, 2, 8, 35);
                    return;
                }
            }
            if (iArr[0] == 14) {
                h3(iArr[1]);
                return;
            } else {
                z.k.s(227, 198, 2, iArr[0], iArr[1]);
                return;
            }
        }
        if (i2 == 1) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 199, 7, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6]);
            return;
        }
        if (i2 == 3) {
            c3(iArr[0]);
            return;
        }
        if (i2 == 1005) {
            a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CAMERA_MODE:ints[0] = " + iArr[0]);
            if (iArr[0] == 8) {
                z.k.s(227, 198, 2, 27, 1);
                return;
            }
            if (iArr[0] == 9) {
                z.k.s(227, 198, 2, 27, 0);
                return;
            } else if (iArr[0] == 10) {
                z.k.s(227, 198, 2, 31, 1);
                return;
            } else {
                if (iArr[0] == 11) {
                    z.k.s(227, 198, 2, 31, 0);
                    return;
                }
                return;
            }
        }
        if (i2 == 1029) {
            if (T2(iArr, 2)) {
                int iW = (iArr[1] * 800) / a.f.w();
                int i3 = (iArr[2] * 480) / a.f.i();
                if (iArr[0] == 0) {
                    z.k.s(227, 167, 5, 1, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255);
                    return;
                } else {
                    if (iArr[0] == 1) {
                        z.k.s(227, 167, 5, 0, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i2 != 1038) {
            return;
        }
        a.f.p().t(LogType.CANBUS, "C_CMD_JAHUAR_LZ  ints[0] = " + iArr[0] + "-----------  ints[1] = " + iArr[1]);
        int i4 = iArr[0];
        if (i4 == 1) {
            z.k.s(227, 248, 2, 0, iArr[1]);
            this.f4895r = 0;
            if (iArr[1] == 1) {
                this.f4894q = 0;
                l0.b0.a(this.f4896s);
                return;
            } else {
                if (iArr[1] == 0) {
                    this.f4894q = 0;
                    l0.b0.o0(this.f4896s);
                    return;
                }
                return;
            }
        }
        if (i4 != 2) {
            if (i4 == 3) {
                z.k.s(227, 198, 2, 27, iArr[1]);
                return;
            } else {
                if (i4 != 4) {
                    return;
                }
                z.k.s(227, 198, 2, 31, iArr[1]);
                return;
            }
        }
        z.k.s(227, 248, 2, 1, iArr[1]);
        this.f4895r = 1;
        if (iArr[1] == 1) {
            this.f4894q = 0;
            l0.b0.a(this.f4896s);
        } else if (iArr[1] == 0) {
            this.f4894q = 0;
            l0.b0.o0(this.f4896s);
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
        if (this.f4880c + bArr.length > 1024) {
            this.f4880c = 0;
            this.f4881d = 0;
            this.f4882e = 0;
        }
        System.arraycopy(bArr, 0, this.f4879b, this.f4880c, bArr.length);
        int length = this.f4880c + bArr.length;
        this.f4880c = length;
        int i5 = this.f4882e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f4879b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f4882e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f4879b[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f4879b;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f4881d = this.f4882e + 1;
            } else {
                this.f4881d = 1;
            }
            this.f4882e = 0;
        }
        int i7 = this.f4880c - 2;
        while (true) {
            i2 = this.f4881d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f4879b;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f4882e = i8;
                int i9 = i8 + i2 + 3;
                this.f4882e = i9;
                if (i9 >= this.f4880c) {
                    this.f4882e = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f4882e;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f4879b[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f4879b;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f4881d;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f4881d = this.f4882e;
                } else {
                    this.f4881d++;
                }
                this.f4882e = 0;
            }
            this.f4881d++;
        }
        if (i2 != 0) {
            int i12 = this.f4880c - i2;
            this.f4880c = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f4879b;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f4881d = 0;
        }
    }

    public final void c3(int i2) {
        int i3 = (this.f4897t + 1) % 2;
        this.f4897t = i3;
        int[] iArr = new int[8];
        iArr[0] = 227;
        iArr[1] = 51;
        iArr[2] = 5;
        byte b2 = (byte) i2;
        iArr[3] = b2;
        iArr[4] = i3 == 0 ? 34 : 204;
        iArr[5] = 37;
        iArr[6] = 0;
        iArr[7] = 170;
        z.k.s(iArr);
        int[] iArr2 = new int[8];
        iArr2[0] = 227;
        iArr2[1] = 51;
        iArr2[2] = 5;
        iArr2[3] = b2;
        iArr2[4] = this.f4897t == 0 ? 34 : 204;
        iArr2[5] = 37;
        iArr2[6] = 0;
        iArr2[7] = 170;
        z.k.s(iArr2);
        int[] iArr3 = new int[8];
        iArr3[0] = 227;
        iArr3[1] = 51;
        iArr3[2] = 5;
        iArr3[3] = b2;
        iArr3[4] = this.f4897t == 0 ? 34 : 204;
        iArr3[5] = 37;
        iArr3[6] = 0;
        iArr3[7] = 170;
        z.k.s(iArr3);
        byte[] bArr = new byte[9];
        bArr[0] = 46;
        bArr[1] = DhcpPacket.DHCP_LEASE_TIME;
        bArr[2] = 5;
        bArr[3] = b2;
        bArr[4] = (byte) (this.f4897t == 0 ? 34 : 204);
        bArr[5] = 37;
        bArr[6] = 0;
        bArr[7] = -86;
        bArr[8] = 0;
        i3(bArr);
        byte[] bArr2 = new byte[9];
        bArr2[0] = 46;
        bArr2[1] = DhcpPacket.DHCP_LEASE_TIME;
        bArr2[2] = 5;
        bArr2[3] = b2;
        bArr2[4] = (byte) (this.f4897t == 0 ? 34 : 204);
        bArr2[5] = 37;
        bArr2[6] = 0;
        bArr2[7] = -86;
        bArr2[8] = 0;
        i3(bArr2);
        byte[] bArr3 = new byte[9];
        bArr3[0] = 46;
        bArr3[1] = DhcpPacket.DHCP_LEASE_TIME;
        bArr3[2] = 5;
        bArr3[3] = b2;
        bArr3[4] = (byte) (this.f4897t == 0 ? 34 : 204);
        bArr3[5] = 37;
        bArr3[6] = 0;
        bArr3[7] = -86;
        bArr3[8] = 0;
        i3(bArr3);
    }

    public final void f3() {
        try {
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.wc.ruijie15.LZJaguarXJLFrontAirControlAct_SP");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void g3() {
        try {
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.lz.jaguar.JaguarCarSeatSet");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void h3(int i2) {
        z.k.s(227, 198, 2, 14, i2);
        if (i2 != 0) {
            f4878u = i2;
            qt.y0(178, i2);
            int iB = this.f4888k.b(1, 1);
            int i3 = f4878u;
            if (iB != i3) {
                this.f4888k.g(1, i3);
            }
        }
    }
}

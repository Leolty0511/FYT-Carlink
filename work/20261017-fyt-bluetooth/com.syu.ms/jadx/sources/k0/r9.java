package k0;

import android.drm.DrmManagerClient;
import android.media.videoeditor.MediaProperties;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class r9 extends lt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f9801s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f9802t;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9805d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9806e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9807f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f9803b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f9804c = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f9808g = 255;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f9809h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f9810i = {new int[]{1, 25}, new int[]{2, 28}, new int[]{3, 27}, new int[]{4, 21}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{17, 11}, new int[]{21, 39}, new int[]{22, 38}, new int[]{37, 1}, new int[]{40, 18}, new int[]{45, 9}, new int[]{54, 1}, new int[]{56, 2}, new int[]{57, 64}, new int[]{63, 13}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f9811j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f9812k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f9813l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f9814m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f9815n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f9816o = new b();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f9817p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f9818q = new c();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f9819r = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, -128, (byte) time.hour, (byte) time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r9.this.f9814m = u0.b.f17359s0 % MediaProperties.HEIGHT_360;
            if (r9.this.f9815n != r9.this.f9814m) {
                r9 r9Var = r9.this;
                r9Var.f9815n = r9Var.f9814m;
                z.k.s(227, 5, 228, 0, 0, (r9.this.f9814m >> 8) & 255, r9.this.f9814m & 255, 0);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r9 r9Var = r9.this;
            r9Var.f9811j = 0;
            r9Var.f9812k = 0;
            l0.b0.b(r9Var.f9819r);
            r9.this.f9817p = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r9 r9Var = r9.this;
            int i2 = r9Var.f9817p - 1;
            r9Var.f9817p = i2;
            if (i2 <= 0) {
                l0.b0.p0(r9Var.f9819r);
                r9.this.f9817p = 5;
            }
            if (u0.b.f17306a0 == 1) {
                int i3 = nt.f8633a;
                if (i3 == 260 || i3 == 65796 || i3 == 131332) {
                    r9Var.l3(36, 1, 14);
                    return;
                }
                switch (nt.f8637c) {
                    case 3:
                        r9Var.l3(36, 2, 14);
                        break;
                    case 4:
                        r9Var.l3(36, 4, 14);
                        break;
                    case 5:
                    case 6:
                        r9Var.l3(36, 6, 14);
                        break;
                    case 7:
                        r9Var.l3(36, 7, 14);
                        r9 r9Var2 = r9.this;
                        r9Var2.j3(r9Var2.f9803b.b(1, 0));
                        break;
                    case 8:
                    default:
                        r9Var.l3(36, 2, 14);
                        break;
                    case 9:
                        r9Var.l3(36, 8, 14);
                        break;
                    case 10:
                        r9Var.j3(r9Var.f9803b.b(1, 0));
                        r9.this.l3(36, 9, 14);
                        break;
                    case 11:
                        r9Var.l3(36, 10, 14);
                        break;
                    case 12:
                        r9Var.j3(r9Var.f9803b.b(1, 0));
                        r9.this.l3(36, 11, 14);
                        break;
                    case 13:
                        r9Var.l3(36, 12, 14);
                        break;
                    case 14:
                        r9Var.l3(36, 13, 14);
                        break;
                    case 15:
                        r9Var.l3(36, 14, 14);
                        break;
                    case 16:
                        r9Var.l3(36, 15, 14);
                        break;
                }
            }
        }
    }

    public static int a3(int i2) {
        if (i2 == 255) {
            return 10;
        }
        return (i2 - 25) / 10;
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
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        mtVar.f8323r = 0;
        mtVar.f8314i = 0;
        this.f9803b.a();
        u0.c.f17386m.a(this.f9818q, 1);
        switch (nt.f8633a) {
            case 289:
            case 65825:
            case 131361:
            case 196897:
            case 262433:
                this.f7886a.f8314i = 1;
                break;
            case 459041:
                o1.h.f16865a.a(this.f9816o, 1);
                qt.z(this.f9813l);
                break;
            case 590113:
            case 721185:
                this.f7886a.f8314i = 1;
                qt.z(this.f9813l);
                break;
            case 655649:
            case 786721:
            case 852257:
            case 917793:
            case 1048865:
                this.f7886a.f8314i = 1;
                qt.z(this.f9813l);
                break;
            case 983329:
                mt mtVar2 = this.f7886a;
                mtVar2.f8314i = 1;
                mtVar2.f8323r = 1;
                qt.z(this.f9813l);
                break;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        byte b2 = bArr[i2 + 1];
        if (b2 == -106) {
            byte b3 = bArr[i2 + 3];
            qt.y0(98, (b3 >> 7) & 1);
            qt.y0(99, (b3 >> 6) & 1);
            qt.y0(100, (b3 >> 4) & 3);
            qt.y0(101, (b3 >> 3) & 1);
            qt.y0(144, (b3 >> 2) & 1);
            qt.y0(145, (b3 >> 0) & 3);
            byte b4 = bArr[i2 + 4];
            qt.y0(102, (b4 >> 7) & 1);
            qt.y0(103, (b4 >> 6) & 1);
            qt.y0(104, (b4 >> 5) & 1);
            qt.y0(105, (b4 >> 4) & 1);
            qt.y0(106, (bArr[i2 + 5] & 255) * 10);
            qt.y0(107, bArr[i2 + 6] & 255);
            qt.y0(108, bArr[i2 + 7] & 255);
            qt.y0(109, bArr[i2 + 8] & 255);
            qt.y0(110, bArr[i2 + 9] & 255);
            byte b5 = bArr[i2 + 10];
            qt.y0(111, (b5 >> 7) & 1);
            qt.y0(112, (b5 >> 6) & 1);
            qt.y0(113, (b5 >> 5) & 1);
            qt.y0(114, (b5 >> 4) & 1);
            qt.y0(115, (b5 >> 3) & 1);
            qt.y0(116, (b5 >> 2) & 1);
            qt.y0(117, (b5 >> 1) & 1);
            byte b6 = bArr[i2 + 11];
            qt.y0(118, (b6 >> 6) & 3);
            qt.y0(119, (b6 >> 5) & 1);
            qt.y0(120, (b6 >> 4) & 1);
            qt.y0(121, (b6 >> 2) & 3);
            qt.y0(127, (b6 >> 1) & 1);
            qt.y0(146, (b6 >> 0) & 1);
            byte b7 = bArr[i2 + 12];
            qt.y0(147, (b7 >> 6) & 3);
            int i11 = b7 >> 3;
            qt.y0(148, i11 & 3);
            qt.y0(149, i11 & 1);
            qt.y0(150, (b7 >> 2) & 1);
            qt.y0(122, (b7 >> 0) & 1);
            int i12 = i2 + 13;
            qt.y0(151, (bArr[i12] >> 7) & 1);
            qt.y0(152, (bArr[i12] >> 6) & 1);
            qt.y0(153, (bArr[i12] >> 5) & 1);
            qt.y0(154, (bArr[i12] >> 4) & 1);
            qt.y0(155, (bArr[i12] >> 0) & 15);
            return;
        }
        if (b2 == -24) {
            byte b8 = bArr[i2 + 3];
            if (b8 == 1) {
                qt.y0(Process.MEDIA_UID, 0);
            } else if (b8 == 3) {
                qt.y0(Process.MEDIA_UID, 1);
            } else if (b8 == 7) {
                qt.y0(Process.MEDIA_UID, 2);
            } else if (b8 == 8) {
                qt.y0(Process.MEDIA_UID, 3);
            }
            if (nt.a() && nt.f8633a == 196897) {
                if ((bArr[i2 + 2] & 255) == 1) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 37) {
            qt.y0(126, bArr[i2 + 2] & 255);
            return;
        }
        if (b2 == 62) {
            qt.y0(129, bArr[i2 + 8] & 255);
            return;
        }
        if (b2 == 97) {
            int i13 = i2 + 2;
            qt.y0(156, (bArr[i13] >> 7) & 1);
            qt.y0(157, (bArr[i13] >> 6) & 1);
            qt.y0(158, (bArr[i13] >> 4) & 3);
            qt.y0(159, (bArr[i13] >> 3) & 1);
            qt.y0(160, (bArr[i13] >> 2) & 1);
            qt.y0(161, (bArr[i13] >> 1) & 1);
            qt.y0(162, (bArr[i13] >> 0) & 1);
            int i14 = i2 + 3;
            qt.y0(163, (bArr[i14] >> 4) & 7);
            qt.y0(164, (bArr[i14] >> 1) & 7);
            qt.y0(165, (bArr[i14] >> 0) & 1);
            int i15 = i2 + 4;
            qt.y0(166, (bArr[i15] >> 3) & 1);
            qt.y0(167, (bArr[i15] >> 2) & 1);
            qt.y0(168, (bArr[i15] >> 1) & 1);
            qt.y0(169, (bArr[i15] >> 0) & 1);
            int i16 = i2 + 5;
            qt.y0(170, (bArr[i16] >> 6) & 1);
            qt.y0(171, (bArr[i16] >> 5) & 1);
            qt.y0(172, (bArr[i16] >> 4) & 1);
            qt.y0(173, (bArr[i16] >> 3) & 1);
            qt.y0(174, (bArr[i16] >> 2) & 1);
            qt.y0(175, (bArr[i16] >> 1) & 1);
            qt.y0(176, (bArr[i16] >> 0) & 1);
            int i17 = i2 + 6;
            qt.y0(177, (bArr[i17] >> 7) & 1);
            qt.y0(178, (bArr[i17] >> 6) & 1);
            qt.y0(179, (bArr[i17] >> 4) & 3);
            qt.y0(180, (bArr[i17] >> 3) & 1);
            qt.y0(181, (bArr[i17] >> 1) & 3);
            qt.y0(182, (bArr[i17] >> 0) & 1);
            int i18 = i2 + 7;
            qt.y0(183, (bArr[i18] >> 1) & 1);
            qt.y0(184, (bArr[i18] >> 0) & 1);
            int i19 = i2 + 8;
            qt.y0(185, (bArr[i19] >> 2) & 3);
            qt.y0(186, (bArr[i19] >> 0) & 3);
            return;
        }
        if (b2 == 103) {
            qt.y0(130, bArr[i2 + 2] & 255);
            qt.y0(131, bArr[i2 + 3] & 255);
            qt.y0(132, bArr[i2 + 4] & 255);
            qt.y0(133, bArr[i2 + 5] & 255);
            qt.y0(134, bArr[i2 + 6] & 255);
            int i20 = i2 + 7;
            qt.y0(135, (bArr[i20] >> 7) & 1);
            qt.y0(136, (bArr[i20] >> 6) & 1);
            qt.y0(137, (bArr[i20] >> 5) & 1);
            qt.y0(138, (bArr[i20] >> 4) & 1);
            qt.y0(139, (bArr[i20] >> 3) & 1);
            qt.y0(140, (bArr[i20] >> 2) & 1);
            qt.y0(141, (bArr[i20] >> 1) & 1);
            qt.y0(142, (bArr[i20] >> 0) & 1);
            return;
        }
        if (b2 == 17) {
            byte b9 = bArr[i2 + 4];
            byte b10 = bArr[i2 + 5];
            this.f9806e = b9 & 255;
            int i21 = 0;
            while (true) {
                iArr = this.f9809h;
                if (i21 >= iArr.length) {
                    break;
                }
                int i22 = this.f9806e;
                if (i22 == iArr[i21][0]) {
                    if (i22 == 0) {
                        break;
                    }
                    this.f9805d = i21;
                    break;
                }
                i21++;
            }
            if ((b10 & 255) == 0) {
                int i23 = this.f9805d;
                if (i23 < iArr.length) {
                    l0.b0.l0(iArr[i23][1], 1);
                }
                this.f9805d = 255;
            } else if (i21 < iArr.length) {
                l0.b0.l0(iArr[i21][1], 0);
            }
            qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 5500);
            return;
        }
        if (b2 == 18) {
            int i24 = bArr[i2 + 4] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i24 >> 6) & 1);
                qt.y0(2, (i24 >> 7) & 1);
            } else {
                qt.y0(1, (i24 >> 7) & 1);
                qt.y0(2, (i24 >> 6) & 1);
            }
            qt.y0(3, (i24 >> 5) & 1);
            qt.y0(4, (i24 >> 4) & 1);
            qt.y0(5, (i24 >> 3) & 1);
            qt.y0(0, (i24 >> 2) & 1);
            return;
        }
        if (b2 == 33) {
            this.f9807f = (bArr[i2 + 2] & 255) | 128;
            byte b11 = bArr[i2 + 3];
            int i25 = 0;
            while (true) {
                iArr2 = this.f9810i;
                if (i25 >= iArr2.length) {
                    break;
                }
                int i26 = this.f9807f;
                if (i26 == iArr2[i25][0]) {
                    if (i26 == 0) {
                        break;
                    }
                    this.f9808g = i25;
                    break;
                }
                i25++;
            }
            if ((b11 & 255) != 0) {
                if (i25 < iArr2.length) {
                    l0.b0.l0(iArr2[i25][1], 0);
                    return;
                }
                return;
            }
            int i27 = this.f9808g;
            if (i27 < iArr2.length) {
                i4 = 255;
                if (i27 != 255) {
                    l0.b0.l0(iArr2[i27][1], 1);
                }
            } else {
                i4 = 255;
            }
            this.f9808g = i4;
            return;
        }
        if (b2 == 34) {
            byte b12 = bArr[i2 + 2];
            byte b13 = bArr[i2 + 3];
            if (b12 != 1) {
                if (b12 == 2 && b13 != (i5 = this.f9812k)) {
                    if (b13 > i5) {
                        for (int i28 = 0; i28 < b13 - this.f9812k; i28++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b13 < i5) {
                        for (int i29 = 0; i29 < this.f9812k - b13; i29++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f9812k = b13;
                    return;
                }
                return;
            }
            int i30 = this.f9811j;
            if (b13 != i30) {
                if (b13 > i30) {
                    for (int i31 = 0; i31 < b13 - this.f9811j; i31++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (b13 < i30) {
                    for (int i32 = 0; i32 < this.f9811j - b13; i32++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                this.f9811j = b13;
                return;
            }
            return;
        }
        if (b2 != 49) {
            if (b2 == 50) {
                int i33 = bArr[i2 + 4] & 255;
                int i34 = bArr[i2 + 5] & 255;
                int i35 = bArr[i2 + 6] & 255;
                int i36 = bArr[i2 + 7] & 255;
                qt.y0(123, (i33 << 8) | i34);
                qt.y0(124, i36 | (i35 << 8));
                return;
            }
            if (b2 == 65) {
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(a3(bArr[i2 + 3] & 255));
                u0.d.T2(a3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                u0.d.D2(a3(bArr[i2 + 6] & 255));
                u0.d.E2(a3(bArr[i2 + 7] & 255));
                u0.d.F2(a3(bArr[i2 + 8] & 255));
                u0.d.G2(a3(bArr[i2 + 9] & 255));
                return;
            }
            if (b2 != 66) {
                return;
            }
            u0.d.O2(a3(bArr[i2 + 2] & 255));
            u0.d.Q2(a3(bArr[i2 + 3] & 255));
            u0.d.P2(a3(bArr[i2 + 4] & 255));
            u0.d.N2(a3(bArr[i2 + 5] & 255));
            u0.d.I2(a3(bArr[i2 + 6] & 255));
            u0.d.K2(a3(bArr[i2 + 7] & 255));
            u0.d.J2(a3(bArr[i2 + 8] & 255));
            u0.d.H2(a3(bArr[i2 + 9] & 255));
            return;
        }
        int i37 = bArr[i2 + 2] & 255;
        int i38 = bArr[i2 + 3] & 255;
        int i39 = bArr[i2 + 4] & 255;
        int i40 = bArr[i2 + 5] & 255;
        int i41 = bArr[i2 + 6] & 255;
        int i42 = bArr[i2 + 7] & 255;
        int i43 = i2 + 8;
        int i44 = bArr[i43] & 255;
        int i45 = i2 + 9;
        int i46 = bArr[i45] & 255;
        qt.y0(10, (i37 >> 6) & 1);
        qt.y0(53, (i37 >> 5) & 1);
        qt.y0(14, (i37 >> 2) & 1);
        qt.y0(11, i37 & 3);
        qt.y0(58, (i38 >> 7) & 1);
        int[] iArr3 = new int[1];
        iArr3[0] = ((i38 >> 4) & 3) == 0 ? 1 : 0;
        qt.y0(12, iArr3);
        qt.y0(13, (i38 >> 3) & 1);
        qt.y0(16, (i39 >> 5) & 1);
        qt.y0(65, (i39 >> 4) & 1);
        qt.y0(30, (i39 >> 2) & 3);
        qt.y0(29, i39 & 3);
        qt.y0(32, (i40 >> 6) & 3);
        qt.y0(31, (i40 >> 4) & 3);
        int i47 = i41 & 255;
        if (i47 == 3) {
            i6 = 0;
            i7 = 0;
            i8 = 1;
        } else if (i47 != 12) {
            if (i47 == 5) {
                i6 = 0;
                i7 = 1;
            } else if (i47 != 6) {
                i6 = 0;
                i7 = 0;
            } else {
                i6 = 0;
                i8 = 0;
                i7 = 1;
            }
            i8 = i7;
        } else {
            i7 = 0;
            i6 = 1;
            i8 = 1;
        }
        qt.y0(18, i6);
        qt.y0(19, i7);
        qt.y0(20, i8);
        qt.y0(21, i42 & 255);
        int i48 = nt.f8633a;
        if (i48 == 260 || i48 == 65796 || i48 == 131332 || i48 == 590113 || i48 == 655649 || i48 == 721185 || i48 == 786721 || i48 == 852257 || i48 == 1048865) {
            int i49 = i46;
            int i50 = i44;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                byte b14 = bArr[i45];
                i49 = bArr[i43];
                i50 = b14;
            }
            int i51 = i50 & 255;
            if (i51 == 254) {
                qt.y0(27, -2);
            } else if (i51 != 255) {
                qt.y0(27, i51 * 5);
            } else {
                qt.y0(27, -3);
            }
            int i52 = i49 & 255;
            if (i52 == 254) {
                qt.y0(28, -2);
            } else if (i52 != 255) {
                qt.y0(28, i52 * 5);
            } else {
                qt.y0(28, -3);
            }
        } else {
            int i53 = i44 & 255;
            if (i53 == 254) {
                qt.y0(27, -2);
                qt.y0(28, -2);
            } else if (i53 != 255) {
                int i54 = i53 * 5;
                qt.y0(27, i54);
                qt.y0(28, i54);
            } else {
                qt.y0(27, -3);
                qt.y0(28, -3);
            }
        }
        if (nt.f8633a == 721185) {
            int i55 = i2 + 10;
            qt.y0(42, (bArr[i55] >> 6) & 1);
            qt.y0(43, (bArr[i55] >> 4) & 1);
            int i56 = bArr[i55] & DhcpPacket.DHCP_DOMAIN_NAME;
            if (i56 == 1) {
                i9 = 0;
                i10 = 1;
            } else if (i56 != 2) {
                i9 = i56 != 3 ? 0 : 1;
                i10 = i9;
            } else {
                i10 = 0;
                i9 = 1;
            }
            qt.y0(46, i9);
            qt.y0(47, i10);
            qt.y0(44, bArr[i2 + 11] & 255);
            int i57 = i2 + 12;
            int i58 = bArr[i57] & 255;
            if (i58 == 254) {
                qt.y0(40, -2);
            } else if (i58 != 255) {
                qt.y0(40, (bArr[i57] & 255) * 5);
            } else {
                qt.y0(40, -3);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f9803b.j();
        u0.c.f17386m.d(this.f9818q);
        l0.b0.p0(this.f9819r);
        o1.h.f16865a.d(this.f9816o);
        qt.q0(this.f9813l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 187) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            l3(59, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            l3(155, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            l3(61, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 5) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            z.k.s(227, 10, 110, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], 0, 0, 0, 0);
            return;
        }
        if (i2 == 6) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            j3(iArr[1]);
            return;
        }
        if (i2 != 1005) {
            if (i2 != 1029) {
                return;
            }
            int iW = (iArr[1] * 1024) / a.f.w();
            int i3 = (iArr[2] * 1000) / a.f.i();
            if (T2(iArr, 2) && iArr[0] == 0) {
                z.k.s(227, 6, 44, 1, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
                return;
            }
            return;
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        int i4 = iArr[0];
        if (i4 == 1) {
            i3(3);
            return;
        }
        if (i4 == 2) {
            i3(7);
        } else if (i4 != 3) {
            i3(1);
        } else {
            i3(8);
        }
    }

    public final void i3(int i2) {
        f9801s = i2;
        z.k.s(227, 2, -14, 7, (byte) i2);
    }

    public final void j3(int i2) {
        f9802t = i2;
        z.k.s(227, 2, 109, 1, (byte) i2);
        qt.y0(143, f9802t);
        int iB = this.f9803b.b(1, 0);
        int i3 = f9802t;
        if (iB != i3) {
            this.f9803b.g(1, i3);
        }
    }

    public final void k3(int i2, byte b2, int... iArr) {
        int i3 = b2 & 255;
        if (i3 < iArr.length) {
            throw new IllegalArgumentException("params data length > size!");
        }
        int[] iArr2 = new int[i3 + 3];
        iArr2[0] = -29;
        iArr2[1] = b2;
        iArr2[2] = (byte) i2;
        int length = iArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            iArr2[3 + i4] = (byte) (iArr[i4] & 255);
        }
        z.k.s(iArr2);
    }

    public final void l3(int i2, int... iArr) {
        if ((iArr.length > 0) && (iArr != null)) {
            k3(i2, (byte) iArr.length, iArr);
        }
    }
}

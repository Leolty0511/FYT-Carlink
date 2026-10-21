package k0;

import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class md extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8081b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8082c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8085f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8086g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8087h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8088i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8089j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f8083d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8084e = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f8090k = 255;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int[][] f8091l = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{11, 2}, new int[]{12, 2}, new int[]{15, 29}, new int[]{23, 1}, new int[]{80, -1}, new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 3}, new int[]{132, 4}, new int[]{137, 29}, new int[]{138, 6}, new int[]{139, 55}, new int[]{140, 21}, new int[]{141, 1}, new int[]{13, 3}, new int[]{14, 4}, new int[]{23, 1}, new int[]{193, 25}, new int[]{194, 3}, new int[]{195, 4}, new int[]{196, 29}, new int[]{197, 73}, new int[]{198, 6}, new int[]{199, 21}, new int[]{200, 54}, new int[]{201, 12}, new int[]{202, 40}, new int[]{203, 41}, new int[]{204, 42}, new int[]{205, 43}, new int[]{206, 44}, new int[]{207, 45}, new int[]{208, 36}, new int[]{209, 1}, new int[]{210, 1}, new int[]{211, 56}, new int[]{212, 38}, new int[]{213, 6}, new int[]{214, 38}, new int[]{215, 7}, new int[]{216, 8}, new int[]{217, 3}, new int[]{218, 4}, new int[]{219, 32}, new int[]{220, 33}, new int[]{221, 32}, new int[]{222, 33}, new int[]{223, 53}, new int[]{224, 1}, new int[]{225, 29}, new int[]{226, 77}, new int[]{227, 21}, new int[]{228, 54}, new int[]{229, 1}, new int[]{230, 73}, new int[]{231, 55}, new int[]{232, 18}, new int[]{233, 78}, new int[]{234, 29}, new int[]{235, 5}, new int[]{236, 2}, new int[]{237, 54}, new int[]{238, 1}, new int[]{239, 5}, new int[]{240, 76}, new int[]{i.a.Theme_actionModeShareDrawable, 25}, new int[]{i.a.Theme_actionModeFindDrawable, 78}, new int[]{i.a.Theme_actionModeWebSearchDrawable, 21}, new int[]{i.a.Theme_actionModePopupWindowStyle, 26}, new int[]{i.a.Theme_preferenceFragmentStyle, 18}, new int[]{i.a.Theme_preferencePanelStyle, 64}, new int[]{i.a.Theme_preferenceHeaderPanelStyle, 55}, new int[]{248, 18}, new int[]{249, 2}, new int[]{250, 73}, new int[]{251, 1}, new int[]{252, 5}, new int[]{i.a.Theme_dialogTitleDecorLayout, 54}, new int[]{254, 1}, new int[]{255, 13}, new int[]{256, 33}, new int[]{257, 32}, new int[]{259, 2}, new int[]{261, 7}, new int[]{262, 8}};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[][] f8092m = {new int[]{1, 25}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 29}, new int[]{5, 73}, new int[]{6, 6}, new int[]{7, 21}, new int[]{8, 54}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 36}, new int[]{17, 1}, new int[]{18, 1}, new int[]{19, 56}, new int[]{20, 38}, new int[]{21, 6}, new int[]{22, 38}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 3}, new int[]{26, 4}, new int[]{27, 32}, new int[]{28, 33}, new int[]{29, 32}, new int[]{30, 33}, new int[]{31, 53}, new int[]{32, 1}, new int[]{33, 29}, new int[]{34, 77}, new int[]{35, 21}, new int[]{36, 54}, new int[]{37, 1}, new int[]{38, 73}, new int[]{39, 55}, new int[]{40, 18}, new int[]{41, 78}, new int[]{42, 29}, new int[]{43, 5}, new int[]{44, 2}, new int[]{45, 54}, new int[]{46, 1}, new int[]{47, 5}, new int[]{48, 76}, new int[]{49, 25}, new int[]{50, 78}, new int[]{51, 21}, new int[]{52, 26}, new int[]{53, 18}, new int[]{54, 64}, new int[]{55, 55}, new int[]{56, 18}, new int[]{57, 2}, new int[]{58, 73}, new int[]{59, 1}, new int[]{60, 5}, new int[]{61, 54}, new int[]{62, 1}, new int[]{63, 13}, new int[]{64, 33}, new int[]{65, 32}, new int[]{67, 2}, new int[]{69, 7}, new int[]{70, 8}, new int[]{93, 25}, new int[]{94, 64}};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f8093n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f8094o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f8095p = 15;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public o1.g0 f8096q = new o1.g0(getClass().getSimpleName(), 30);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f8097r = new a();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f8098s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f8099t = new b();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f8100u = new c();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f8101v = new d();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f8102w = new e();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f8103x = new f();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f8104y = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            md.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            md mdVar = md.this;
            mdVar.f8093n = 0;
            mdVar.f8094o = 0;
            l0.b0.b(mdVar.f8100u);
            md.this.f8098s = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            md mdVar = md.this;
            int i2 = mdVar.f8098s - 1;
            mdVar.f8098s = i2;
            if (i2 <= 0) {
                l0.b0.p0(mdVar.f8100u);
                md.this.f8098s = 5;
                return;
            }
            if (u0.b.f17306a0 == 1) {
                int i3 = nt.f8637c;
                if (i3 == 2) {
                    z.k.s(227, 2, 36, 1, 31);
                    return;
                }
                if (i3 == 4) {
                    z.k.s(227, 2, 36, 2, 31);
                } else if (i3 == 22) {
                    z.k.s(227, 2, 36, 3, 31);
                } else {
                    if (i3 != 26) {
                        return;
                    }
                    mdVar.h3(6);
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 8) {
                md.this.g3((byte) -110, u0.b.i3);
            } else {
                md.this.g3((byte) -110, " ");
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 8) {
                md.this.g3((byte) -109, u0.b.k3);
            } else {
                md.this.g3((byte) -109, " ");
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, 0, time.hour, time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? 1 : 0, time.year + DrmManagerClient.ERROR_UNKNOWN, time.month + 1, time.monthDay, 0);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            double d2 = u0.b.b2;
            double d3 = u0.b.c2;
            z.k.s(227, 13, PackageManager.INSTALL_FAILED_USER_RESTRICTED, 0, (int) u0.b.b2, (int) ((d2 * 60.0d) % 60.0d), (int) ((d2 * 6000.0d) % 100.0d), (int) ((d2 * 600000.0d) % 100.0d), 0, (int) u0.b.c2, (int) ((d3 * 60.0d) % 60.0d), (int) ((6000.0d * d3) % 100.0d), (int) ((d3 * 600000.0d) % 100.0d), 0, 0);
        }
    }

    public static int b3() {
        int i2 = 3;
        switch (u0.b.D) {
            case 0:
            case 2:
            case 5:
            case 6:
                i2 = 12;
                break;
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 - 65536 == 0) {
                    i2 = 1;
                } else if (1 == i3 - 65536) {
                    i2 = 2;
                } else if (2 != i3 - 65536) {
                    if (i3 + 0 != 0) {
                        i2 = 1 != i3 - 0 ? 0 : 5;
                    } else {
                        i2 = 4;
                    }
                }
                break;
            case 3:
                i2 = 133;
                break;
            case 4:
                int i4 = o0.e.H;
                if (i4 == 1) {
                    i2 = 13;
                } else if (i4 != 2) {
                    i2 = i4 != 3 ? 0 : 13;
                } else {
                    i2 = 25;
                }
                break;
            case 7:
                i2 = 22;
                break;
            case 8:
            case 10:
                i2 = 13;
                break;
            case 9:
            default:
                i2 = 0;
                break;
        }
        if (u0.b.f17347o == 1) {
            return 16;
        }
        if (u0.b.f17320f == 0) {
            return 0;
        }
        return i2;
    }

    public static int c3(int i2) {
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                return i2 - 1;
            default:
                return 15;
        }
    }

    public static int d3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 2;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 8;
        }
        return 5;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f8099t, 1);
        qt.z(this.f8103x);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8312g = 1;
        mtVar.f8311f = 1;
        mtVar.f8320o = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        byte b2 = bArr[i2 + 1];
        if (b2 == -121) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 5];
            byte b7 = bArr[i2 + 6];
            byte b8 = bArr[i2 + 7];
            int i10 = bArr[i2 + 8] & 255;
            int i11 = bArr[i2 + 9] & 255;
            qt.y0(129, (b3 >> 7) & 1);
            qt.y0(130, (b5 >> 7) & 1);
            qt.y0(131, (b5 >> 5) & 3);
            qt.y0(133, (((b3 >> 6) & 1) << 8) | ((b5 >> 4) & 1));
            qt.y0(134, (((b3 >> 5) & 1) << 8) | ((b5 >> 3) & 1));
            qt.y0(135, (((b3 >> 4) & 1) << 8) | ((b5 >> 2) & 1));
            qt.y0(136, (((b3 >> 3) & 1) << 8) | ((b5 >> 1) & 1));
            qt.y0(137, (((b3 >> 2) & 1) << 8) | ((b5 >> 0) & 1));
            qt.y0(138, (((b3 >> 1) & 1) << 8) | ((b6 >> 6) & 3));
            qt.y0(139, (((b3 >> 0) & 1) << 8) | (31 & b6));
            qt.y0(140, (((b4 >> 7) & 1) << 8) | ((b7 >> 4) & 15));
            qt.y0(146, (((b4 >> 6) & 1) << 8) | ((b7 >> 3) & 1));
            qt.y0(147, (((b4 >> 5) & 1) << 8) | ((b7 >> 2) & 1));
            qt.y0(148, (((b4 >> 4) & 1) << 8) | ((b7 >> 1) & 1));
            qt.y0(165, (((b4 >> 3) & 1) << 8) | ((b7 >> 0) & 1));
            qt.y0(166, (((b4 >> 2) & 1) << 8) | ((b8 >> 7) & 1));
            qt.y0(167, (((b4 >> 1) & 1) << 8) | ((b8 >> 5) & 3));
            qt.y0(172, (b8 >> 4) & 1);
            qt.y0(173, (b8 >> 3) & 1);
            qt.y0(168, (((i11 >> 7) & 1) << 8) | ((i10 >> 6) & 3));
            qt.y0(169, (((i11 >> 6) & 1) << 8) | ((i10 >> 4) & 3));
            qt.y0(170, (((i11 >> 5) & 1) << 8) | ((i10 >> 3) & 1));
            qt.y0(171, (((i11 >> 4) & 1) << 8) | ((i10 >> 2) & 1));
            return;
        }
        if (b2 == -24) {
            if (!nt.a() || qt.k0()) {
                return;
            }
            if (bArr[i2 + 5] != 0) {
                qt.a(1);
                return;
            } else {
                qt.a(0);
                return;
            }
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 65) {
            if ((bArr[i2 + 12] & 255 & 1) == 1) {
                u0.d.C2(1);
            } else {
                u0.d.C2(0);
            }
            u0.d.R2(d3(bArr[i2 + 2] & 255));
            u0.d.S2(c3(bArr[i2 + 3] & 255));
            u0.d.T2(c3(bArr[i2 + 4] & 255));
            u0.d.U2(d3(bArr[i2 + 5] & 255));
            u0.d.D2(d3(bArr[i2 + 6] & 255));
            u0.d.E2(c3(bArr[i2 + 7] & 255));
            u0.d.F2(c3(bArr[i2 + 8] & 255));
            u0.d.G2(d3(bArr[i2 + 9] & 255));
            return;
        }
        if (b2 == 97) {
            int i12 = i2 + 2;
            int i13 = i2 + 7;
            qt.y0(149, (((bArr[i12] >> 7) & 1) << 8) | ((bArr[i13] >> 6) & 3));
            qt.y0(150, (((bArr[i12] >> 6) & 1) << 8) | ((bArr[i13] >> 5) & 1));
            qt.y0(151, (((bArr[i12] >> 5) & 1) << 8) | ((bArr[i13] >> 3) & 3));
            qt.y0(152, ((bArr[i13] >> 2) & 1) | (((bArr[i12] >> 4) & 1) << 8));
            qt.y0(153, (((bArr[i12] >> 3) & 1) << 8) | ((bArr[i13] >> 1) & 1));
            int i14 = i2 + 3;
            int i15 = i2 + 8;
            qt.y0(154, (((bArr[i14] >> 7) & 1) << 8) | ((bArr[i15] >> 7) & 1));
            qt.y0(155, (((bArr[i14] >> 6) & 1) << 8) | ((bArr[i15] >> 6) & 1));
            qt.y0(156, (((bArr[i14] >> 5) & 1) << 8) | ((bArr[i15] >> 5) & 1));
            qt.y0(157, (((bArr[i14] >> 4) & 1) << 8) | ((bArr[i15] >> 4) & 1));
            int i16 = i2 + 4;
            int i17 = i2 + 9;
            qt.y0(158, (((bArr[i16] >> 7) & 1) << 8) | ((bArr[i17] >> 7) & 1));
            qt.y0(159, (((bArr[i16] >> 6) & 1) << 8) | ((bArr[i17] >> 6) & 1));
            qt.y0(160, (((bArr[i16] >> 5) & 1) << 8) | ((bArr[i17] >> 5) & 1));
            qt.y0(161, (((bArr[i16] >> 4) & 1) << 8) | ((bArr[i17] >> 4) & 1));
            qt.y0(161, (((bArr[i16] >> 4) & 1) << 8) | ((bArr[i17] >> 4) & 1));
            int i18 = i2 + 5;
            int i19 = i2 + 10;
            qt.y0(162, (((bArr[i18] >> 7) & 1) << 8) | ((bArr[i19] >> 7) & 1));
            qt.y0(163, (((bArr[i18] >> 6) & 1) << 8) | ((bArr[i19] >> 6) & 1));
            qt.y0(164, ((bArr[i19] >> 5) & 1) | (((bArr[i18] >> 5) & 1) << 8));
            return;
        }
        if (b2 == 114) {
            int i20 = i2 + 4;
            if ((bArr[i20] & 255) != 0) {
                qt.y0(145, bArr[i20] & 255);
                return;
            }
            return;
        }
        if (b2 == 116) {
            if (nt.a()) {
                this.f8089j = (bArr[i2 + 2] & 255) | 128;
                int i21 = 0;
                while (true) {
                    iArr = this.f8091l;
                    if (i21 >= iArr.length) {
                        break;
                    }
                    int i22 = this.f8089j;
                    if (i22 == iArr[i21][0]) {
                        if (i22 == 0) {
                            break;
                        }
                        this.f8090k = i21;
                        break;
                    }
                    i21++;
                }
                if (this.f8089j == 128) {
                    int i23 = this.f8090k;
                    if (i23 < iArr.length && i23 != 255) {
                        l0.b0.l0(iArr[i23][1], 1);
                    }
                    this.f8090k = 255;
                } else if (i21 < iArr.length) {
                    l0.b0.l0(iArr[i21][1], 0);
                }
                int i24 = i2 + 3;
                int i25 = bArr[i24] & 255;
                int i26 = this.f8082c;
                if (i25 != i26) {
                    if (i26 == 0 && (bArr[i24] & 255) == 255) {
                        u0.d.B1();
                    } else if ((bArr[i24] & 255) != 0 && (bArr[i24] & 255) <= i26) {
                        u0.d.B1();
                    } else {
                        u0.d.I1();
                    }
                }
                this.f8082c = bArr[i24] & 255;
                return;
            }
            return;
        }
        if (b2 == 17) {
            int i27 = i2 + 4;
            if (bArr[i27] == 57) {
                if (this.f8081b == 1 && bArr[i2 + 5] == 0) {
                    if (o1.u.T(a.b.O)) {
                        qt.f();
                    } else {
                        qt.t();
                    }
                }
                this.f8081b = bArr[i2 + 5];
            }
            if (nt.a()) {
                byte b9 = bArr[i27];
                byte b10 = bArr[i2 + 5];
                this.f8086g = b9 & 255;
                int i28 = 0;
                while (true) {
                    iArr2 = this.f8091l;
                    if (i28 >= iArr2.length) {
                        break;
                    }
                    int i29 = this.f8086g;
                    if (i29 == iArr2[i28][0]) {
                        if (i29 == 0) {
                            break;
                        }
                        this.f8085f = i28;
                        break;
                    }
                    i28++;
                }
                int i30 = this.f8086g;
                if (i30 != 5) {
                    if (i30 != 80) {
                        if ((b10 & 255) == 0) {
                            int i31 = this.f8085f;
                            if (i31 < iArr2.length && i31 != 255) {
                                l0.b0.l0(iArr2[i31][1], 1);
                            }
                            this.f8085f = 255;
                        } else if (i28 < iArr2.length) {
                            l0.b0.l0(iArr2[i28][1], 0);
                        }
                    } else if ((b10 & 255) == 1) {
                        if (u0.b.f17347o == 1) {
                            qt.a(0);
                        } else {
                            qt.a(1);
                        }
                    }
                } else if ((b10 & 255) == 1) {
                    l0.b0.l0(18, 0);
                    l0.b0.l0(18, 1);
                }
            }
            qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
            return;
        }
        if (b2 == 18) {
            byte b11 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b11 >> 6) & 1);
                qt.y0(2, (b11 >> 7) & 1);
            } else {
                qt.y0(1, (b11 >> 7) & 1);
                qt.y0(2, (b11 >> 6) & 1);
            }
            qt.y0(3, (b11 >> 5) & 1);
            qt.y0(4, (b11 >> 4) & 1);
            qt.y0(5, (b11 >> 3) & 1);
            return;
        }
        if (b2 == 33) {
            if (nt.a()) {
                this.f8087h = bArr[i2 + 2] & 255;
                byte b12 = bArr[i2 + 3];
                int i32 = 0;
                while (true) {
                    iArr3 = this.f8092m;
                    if (i32 >= iArr3.length) {
                        break;
                    }
                    int i33 = this.f8087h;
                    if (i33 == iArr3[i32][0]) {
                        if (i33 == 0) {
                            break;
                        }
                        this.f8088i = i32;
                        break;
                    }
                    i32++;
                }
                if (this.f8087h != 32) {
                    if ((b12 & 255) != 0) {
                        if (i32 < iArr3.length) {
                            l0.b0.l0(iArr3[i32][1], 0);
                            return;
                        }
                        return;
                    } else {
                        int i34 = this.f8088i;
                        if (i34 < iArr3.length && i34 != 255) {
                            l0.b0.l0(iArr3[i34][1], 1);
                        }
                        this.f8088i = 255;
                        return;
                    }
                }
                if (nt.f8637c != 22) {
                    if ((b12 & 255) == 1) {
                        l0.b0.l0(1, 0);
                        l0.b0.l0(1, 1);
                        return;
                    }
                    return;
                }
                if ((b12 & 255) == 1) {
                    if (u0.b.K3 != 1) {
                        l0.b0.l0(5, 0);
                        l0.b0.l0(5, 1);
                        return;
                    } else {
                        l0.b0.l0(1, 0);
                        l0.b0.l0(1, 1);
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (b2 == 34) {
            if (nt.a()) {
                byte b13 = bArr[i2 + 2];
                byte b14 = bArr[i2 + 3];
                if (b13 == 1) {
                    int i35 = this.f8093n;
                    if (b14 != i35) {
                        if (b14 > i35) {
                            for (int i36 = 0; i36 < b14 - this.f8093n; i36++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                        } else if (b14 < i35) {
                            for (int i37 = 0; i37 < this.f8093n - b14; i37++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                        }
                        this.f8093n = b14;
                        return;
                    }
                    return;
                }
                if ((b13 == 2 || b13 == 3 || b13 == 4 || b13 == 5) && b14 != (i4 = this.f8094o)) {
                    if (b14 > i4) {
                        for (int i38 = 0; i38 < b14 - this.f8094o; i38++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b14 < i4) {
                        for (int i39 = 0; i39 < this.f8094o - b14; i39++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f8094o = b14;
                    return;
                }
                return;
            }
            return;
        }
        if (b2 != 49) {
            if (b2 == 50) {
                int i40 = i2 + 4;
                int i41 = i2 + 5;
                qt.y0(120, ((bArr[i40] << 8) & 65535) | (bArr[i41] & 255));
                qt.y0(1032, ((bArr[i40] << 8) & 65280) | (bArr[i41] & 255));
                qt.y0(1031, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                byte b15 = bArr[i2 + 9];
                if (b15 < 0 || b15 > 100) {
                    b15 = -1;
                }
                qt.y0(121, b15);
                return;
            }
            if (b2 != 72) {
                if (b2 == 73) {
                    byte b16 = bArr[i2 + 2];
                    byte b17 = bArr[i2 + 3];
                    byte b18 = bArr[i2 + 5];
                    byte b19 = bArr[i2 + 7];
                    byte b20 = bArr[i2 + 9];
                    qt.y0(119, b16);
                    qt.y0(107, b17);
                    qt.y0(110, b18);
                    qt.y0(113, b19);
                    qt.y0(116, b20);
                    return;
                }
                switch (b2) {
                    case 54:
                        byte b21 = bArr[i2 + 2];
                        byte b22 = bArr[i2 + 3];
                        qt.y0(122, (b21 >> 7) & 1);
                        qt.y0(123, (b21 >> 6) & 1);
                        qt.y0(124, (b21 >> 5) & 1);
                        qt.y0(125, (b21 >> 4) & 1);
                        qt.y0(126, (b22 >> 7) & 1);
                        qt.y0(127, (b22 >> 6) & 1);
                        qt.y0(128, (b22 >> 3) & 1);
                        break;
                    case 55:
                        byte b23 = bArr[i2 + 2];
                        byte b24 = bArr[i2 + 3];
                        byte b25 = bArr[i2 + 4];
                        byte b26 = bArr[i2 + 5];
                        int i42 = b24 & 255;
                        if (i42 == 0) {
                            int i43 = b23 & 255;
                            if (i43 < 4) {
                                qt.y0(i43 + 103, ((b26 & 255) | (b25 << 8)) & 65535);
                            }
                            break;
                        } else if (i42 == 1) {
                            int i44 = b23 & 255;
                            if (i44 < 4) {
                                qt.y0(i44 + 99, ((b26 & 255) | (b25 << 8)) & 65535);
                            }
                            break;
                        } else if (i42 == 2 && (i9 = b23 & 255) < 4) {
                            qt.y0(i9 + 141, b26 & 255);
                            break;
                        }
                        break;
                    case 57:
                        byte b27 = bArr[i2 + 2];
                        byte b28 = bArr[i2 + 3];
                        qt.y0(107, (b27 >> 7) & 1);
                        qt.y0(108, (b27 >> 6) & 1);
                        qt.y0(109, (b27 >> 5) & 1);
                        qt.y0(110, (b27 >> 4) & 1);
                        qt.y0(112, (b27 >> 3) & 1);
                        qt.y0(111, (b27 >> 2) & 1);
                        qt.y0(116, (b28 >> 7) & 1);
                        qt.y0(117, (b28 >> 6) & 1);
                        qt.y0(118, (b28 >> 5) & 1);
                        qt.y0(113, (b28 >> 4) & 1);
                        qt.y0(114, (b28 >> 3) & 1);
                        qt.y0(115, (b28 >> 2) & 1);
                        qt.y0(119, b28 & 1);
                        break;
                }
                return;
            }
            qt.y0(99, bArr[i2 + 2] & 255);
            qt.y0(100, bArr[i2 + 3] & 255);
            qt.y0(101, bArr[i2 + 4] & 255);
            qt.y0(102, bArr[i2 + 5] & 255);
            qt.y0(103, bArr[i2 + 6] & 255);
            qt.y0(104, bArr[i2 + 7] & 255);
            qt.y0(105, bArr[i2 + 8] & 255);
            qt.y0(106, bArr[i2 + 9] & 255);
            return;
        }
        byte b29 = bArr[i2 + 2];
        byte b30 = bArr[i2 + 3];
        byte b31 = bArr[i2 + 4];
        byte b32 = bArr[i2 + 6];
        byte b33 = bArr[i2 + 7];
        qt.y0(10, (b29 >> 6) & 1);
        qt.y0(14, (b29 >> 2) & 1);
        qt.y0(11, b29 & 1);
        qt.y0(13, (b30 >> 3) & 1);
        int[] iArr4 = new int[1];
        iArr4[0] = ((b30 >> 4) & 1) == 1 ? 0 : 1;
        qt.y0(12, iArr4);
        qt.y0(30, (b31 >> 2) & 3);
        qt.y0(29, (b31 >> 0) & 3);
        qt.y0(16, (b31 >> 5) & 1);
        qt.y0(65, (b31 >> 4) & 1);
        if (b32 == 1) {
            i5 = 0;
            i6 = 0;
            i7 = 0;
            i8 = 1;
        } else if (b32 == 3) {
            i8 = 0;
            i5 = 0;
            i7 = 0;
            i6 = 1;
        } else if (b32 == 5) {
            i8 = 0;
            i7 = 0;
            i5 = 1;
            i6 = 1;
        } else if (b32 != 6) {
            switch (b32) {
                case 11:
                    i8 = 0;
                    i5 = 0;
                    i6 = 0;
                    i7 = 1;
                    break;
                case 12:
                    i8 = 0;
                    i5 = 0;
                    i6 = 1;
                    i7 = i6;
                    break;
                case 13:
                    i8 = 0;
                    i6 = 0;
                    i5 = 1;
                    i7 = 1;
                    break;
                case 14:
                    i8 = 0;
                    i5 = 1;
                    i6 = i5;
                    i7 = i6;
                    break;
                default:
                    i8 = 0;
                    i5 = 0;
                    i6 = i5;
                    i7 = i6;
                    break;
            }
        } else {
            i8 = 0;
            i6 = 0;
            i7 = 0;
            i5 = 1;
        }
        qt.y0(77, b32 & 255);
        qt.y0(49, i8);
        qt.y0(19, i5);
        qt.y0(20, i6);
        qt.y0(18, i7);
        qt.y0(21, b33);
        int i45 = i2 + 8;
        int i46 = bArr[i45] & 255;
        int i47 = i2 + 9;
        int i48 = bArr[i47] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i46 = bArr[i47] & 255;
            i48 = bArr[i45] & 255;
        }
        if (i46 == 254) {
            qt.y0(27, -2);
        } else if (i46 != 255) {
            qt.y0(27, i46 * 5);
        } else {
            qt.y0(27, -3);
        }
        if (i48 == 254) {
            qt.y0(28, -2);
        } else if (i48 != 255) {
            qt.y0(28, i48 * 5);
        } else {
            qt.y0(28, -3);
        }
        int i49 = bArr[i2 + 13] & 255;
        int i50 = (i49 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
        if (i49 == 0) {
            u0.d.A3(0);
        } else {
            u0.d.A3(i50);
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f8103x);
        u0.c.f17386m.d(this.f8099t);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 174) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 2, 61, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 2, 62, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            if (iArr[0] == 170 && iArr[1] == 254) {
                z.k.s(227, 2, -3, 4, 8);
                return;
            } else {
                z.k.s(227, 2, -116, iArr[0], iArr[1]);
                return;
            }
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 4, 111, iArr[0], iArr[1], 0, 0);
            return;
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1003) {
            if (nt.f8637c == 6) {
                z.k.s(227, 3, -3, 2, 3, 1);
                return;
            } else if (iArr[0] == 1) {
                z.k.s(227, 2, -3, 1, 3);
                return;
            } else {
                z.k.s(227, 2, -3, 1, 1);
                return;
            }
        }
        if (i2 == 1005) {
            z.k.s(227, 2, -3, 1, 2);
        } else if (i2 == 1029 && T2(iArr, 2)) {
            int iW = (iArr[1] * 1024) / a.f.w();
            int i3 = (iArr[2] * CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) / a.f.i();
            z.k.s(227, 6, 44, 1, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
        }
    }

    public void a3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 145;
        iArr[2] = b3();
        if (u0.b.f17320f == 1) {
            int i4 = u0.b.D;
            if (i4 == 1) {
                iArr[3] = 48;
                iArr[4] = ((w0.d.f17798j & 255) % 6) + 1 + 48;
                int i5 = w0.d.f17796h;
                if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                    int i6 = w0.d.f17797i;
                    iArr[6] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                    iArr[7] = ((i6 % 10000) / 1000) + 48;
                    iArr[8] = ((i6 % 1000) / 100) + 48;
                    iArr[9] = 46;
                    iArr[10] = ((i6 % 100) / 10) + 48;
                } else {
                    int i7 = w0.d.f17797i;
                    if ((i7 % 10000) / 1000 == 1) {
                        iArr[6] = ((i7 % 10000) / 1000) + 48;
                        iArr[7] = ((i7 % 1000) / 100) + 48;
                        iArr[8] = ((i7 % 100) / 10) + 48;
                        iArr[9] = (i7 % 10) + 48;
                    } else {
                        iArr[6] = 48;
                        iArr[7] = ((i7 % 1000) / 100) + 48;
                        iArr[8] = ((i7 % 100) / 10) + 48;
                        iArr[9] = (i7 % 10) + 48;
                    }
                }
            } else if (i4 == 4) {
                int i8 = o0.e.B;
                if (i8 <= 999) {
                    int i9 = i8 / 100;
                    iArr[4] = (i8 / 100) + 48;
                    int i10 = (i8 % 100) / 10;
                    iArr[5] = ((i8 % 100) / 10) + 48;
                    iArr[6] = (i8 % 10) + 48;
                } else {
                    iArr[4] = 57;
                    iArr[5] = 57;
                    iArr[6] = 57;
                }
                iArr[7] = 32;
                int i11 = o0.e.f16794r;
                iArr[8] = ((i11 / 60) / 10) + 48;
                iArr[9] = ((i11 / 60) % 10) + 48;
                iArr[10] = 58;
                iArr[11] = ((i11 % 60) / 10) + 48;
                iArr[12] = ((i11 % 60) % 10) + 48;
            } else if (i4 == 8) {
                int i12 = u0.b.r3;
                if (i12 <= 999) {
                    int i13 = i12 / 100;
                    iArr[4] = (i12 / 100) + 48;
                    int i14 = (i12 % 100) / 10;
                    iArr[5] = ((i12 % 100) / 10) + 48;
                    iArr[6] = (i12 % 10) + 48;
                } else {
                    iArr[4] = 57;
                    iArr[5] = 57;
                    iArr[6] = 57;
                }
                iArr[7] = 32;
                int i15 = u0.b.t3;
                iArr[8] = ((i15 / 60) / 10) + 48;
                iArr[9] = ((i15 / 60) % 10) + 48;
                iArr[10] = 58;
                iArr[11] = ((i15 % 60) / 10) + 48;
                iArr[12] = ((i15 % 60) % 10) + 48;
            }
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i16 = i2 + 1;
            iArr2[i16] = (byte) iArr[i2];
            i2 = i16;
        }
        z.k.s(iArr2);
    }

    public final void g3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        byte[] bytes = str.getBytes();
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = bytes.length <= 32 ? bytes.length : 32;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2 + 3] = bytes[i2];
        }
        z.k.s(iArr);
    }

    public final void h3(int i2) {
        z.k.s(227, 2, 36, i2, 53);
    }
}

package k0;

import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class id extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6350c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6353f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f6354g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6355h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6356i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f6357j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6351d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6352e = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f6358k = 255;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int[][] f6359l = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{11, 2}, new int[]{12, 2}, new int[]{15, 29}, new int[]{23, 1}, new int[]{80, -1}, new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 3}, new int[]{132, 4}, new int[]{137, 29}, new int[]{138, 6}, new int[]{139, 55}, new int[]{140, 21}, new int[]{141, 1}, new int[]{13, 3}, new int[]{14, 4}, new int[]{23, 1}, new int[]{193, 25}, new int[]{194, 3}, new int[]{195, 4}, new int[]{196, 29}, new int[]{197, 73}, new int[]{198, 6}, new int[]{199, 21}, new int[]{200, 54}, new int[]{201, 12}, new int[]{202, 40}, new int[]{203, 41}, new int[]{204, 42}, new int[]{205, 43}, new int[]{206, 44}, new int[]{207, 45}, new int[]{208, 36}, new int[]{209, 1}, new int[]{210, 1}, new int[]{211, 56}, new int[]{212, 38}, new int[]{213, 6}, new int[]{214, 38}, new int[]{215, 7}, new int[]{216, 8}, new int[]{217, 3}, new int[]{218, 4}, new int[]{219, 32}, new int[]{220, 33}, new int[]{221, 32}, new int[]{222, 33}, new int[]{223, 53}, new int[]{224, 1}, new int[]{225, 29}, new int[]{226, 77}, new int[]{227, 21}, new int[]{228, 54}, new int[]{229, 1}, new int[]{230, 73}, new int[]{231, 55}, new int[]{232, 18}, new int[]{233, 78}, new int[]{234, 29}, new int[]{235, 5}, new int[]{236, 2}, new int[]{237, 54}, new int[]{238, 1}, new int[]{239, 5}, new int[]{240, 76}, new int[]{i.a.Theme_actionModeShareDrawable, 25}, new int[]{i.a.Theme_actionModeFindDrawable, 78}, new int[]{i.a.Theme_actionModeWebSearchDrawable, 21}, new int[]{i.a.Theme_actionModePopupWindowStyle, 26}, new int[]{i.a.Theme_preferenceFragmentStyle, 18}, new int[]{i.a.Theme_preferencePanelStyle, 64}, new int[]{i.a.Theme_preferenceHeaderPanelStyle, 55}, new int[]{248, 18}, new int[]{249, 2}, new int[]{250, 73}, new int[]{251, 1}, new int[]{252, 5}, new int[]{i.a.Theme_dialogTitleDecorLayout, 54}, new int[]{254, 1}, new int[]{255, 13}, new int[]{256, 33}, new int[]{257, 32}, new int[]{259, 2}, new int[]{261, 7}, new int[]{262, 8}};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[][] f6360m = {new int[]{1, 25}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 29}, new int[]{5, 73}, new int[]{6, 6}, new int[]{7, 21}, new int[]{8, 54}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 36}, new int[]{17, 1}, new int[]{18, 1}, new int[]{19, 56}, new int[]{20, 38}, new int[]{21, 6}, new int[]{22, 38}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 3}, new int[]{26, 4}, new int[]{27, 32}, new int[]{28, 33}, new int[]{29, 32}, new int[]{30, 33}, new int[]{31, 53}, new int[]{32, 1}, new int[]{33, 29}, new int[]{34, 77}, new int[]{35, 21}, new int[]{36, 54}, new int[]{37, 1}, new int[]{38, 73}, new int[]{39, 55}, new int[]{40, 18}, new int[]{41, 78}, new int[]{42, 29}, new int[]{43, 5}, new int[]{44, 2}, new int[]{45, 54}, new int[]{46, 1}, new int[]{47, 5}, new int[]{48, 76}, new int[]{49, 25}, new int[]{50, 78}, new int[]{51, 21}, new int[]{52, 26}, new int[]{53, 18}, new int[]{54, 64}, new int[]{55, 55}, new int[]{56, 18}, new int[]{57, 2}, new int[]{58, 73}, new int[]{59, 1}, new int[]{60, 5}, new int[]{61, 54}, new int[]{62, 1}, new int[]{63, 13}, new int[]{64, 33}, new int[]{65, 32}, new int[]{67, 2}, new int[]{69, 7}, new int[]{70, 8}, new int[]{93, 25}, new int[]{94, 64}};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f6361n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f6362o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f6363p = 15;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public o1.g0 f6364q = new o1.g0(getClass().getSimpleName(), 30);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f6365r = new a();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f6366s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f6367t = new b();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f6368u = new c();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f6369v = new d();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f6370w = new e();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f6371x = new f();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f6372y = new g();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f6373z = new h();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            id.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            id idVar = id.this;
            idVar.f6361n = 0;
            idVar.f6362o = 0;
            l0.b0.b(idVar.f6368u);
            id.this.f6366s = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            id idVar = id.this;
            int i2 = idVar.f6366s - 1;
            idVar.f6366s = i2;
            if (i2 <= 0) {
                l0.b0.p0(idVar.f6368u);
                id.this.f6366s = 5;
            }
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8637c) {
                    case 0:
                    case 14:
                        idVar.j3(19);
                        break;
                    case 1:
                        z.k.s(227, 2, 36, 1, 32);
                        break;
                    case 3:
                        idVar.j3(8);
                        break;
                    case 5:
                        idVar.j3(9);
                        z.k.s(227, 2, 36, 12, 2);
                        break;
                    case 6:
                        idVar.j3(10);
                        z.k.s(227, 2, 36, 2, 32);
                        break;
                    case 7:
                        idVar.j3(16);
                        break;
                    case 8:
                        idVar.j3(11);
                        break;
                    case 9:
                        idVar.j3(12);
                        break;
                    case 10:
                        z.k.s(227, 3, 106, 5, 1, 135);
                        break;
                    case 11:
                        z.k.s(227, 2, 36, 12, 1);
                        break;
                    case 12:
                        z.k.s(227, 2, 36, 2, 38);
                        break;
                    case 13:
                        z.k.s(227, 2, 36, 8, 15);
                        break;
                    case 15:
                    case 32:
                        idVar.j3(20);
                        break;
                    case 16:
                        z.k.s(227, 2, 36, 3, 40);
                        break;
                    case 17:
                        z.k.s(227, 2, 36, 1, 39);
                        break;
                    case 19:
                        z.k.s(227, 2, 36, 5, 12);
                        break;
                    case 20:
                        z.k.s(227, 2, 36, 6, 12);
                        break;
                    case 21:
                        z.k.s(227, 2, 36, 7, 38);
                        break;
                    case 23:
                        z.k.s(227, 2, 36, 8, 38);
                        break;
                    case 25:
                        z.k.s(227, 2, 36, 21, 53);
                        break;
                    case 27:
                        z.k.s(227, 2, 36, 3, 40);
                        break;
                    case 28:
                        idVar.j3(22);
                        break;
                    case 29:
                    case 30:
                        idVar.j3(23);
                        break;
                    case 31:
                        z.k.s(227, 2, 36, 8, 12);
                        break;
                    case 37:
                        z.k.s(227, 2, 36, 9, 38);
                        break;
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
                id.this.i3((byte) -110, u0.b.i3);
            } else {
                id.this.i3((byte) -110, " ");
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 8) {
                id.this.i3((byte) -109, u0.b.k3);
            } else {
                id.this.i3((byte) -109, " ");
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 2, -116, 3, (y0.f.f18037c * 30) / 36);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, 0, time.hour, time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? 1 : 0, time.year + DrmManagerClient.ERROR_UNKNOWN, time.month + 1, time.monthDay, 0);
        }
    }

    public class h implements Runnable {
        public h() {
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

    public static int c3() {
        int i2 = 3;
        switch (u0.b.D) {
            case 0:
                i2 = 9;
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
            case 2:
            case 3:
                i2 = 10;
                break;
            case 4:
                int i4 = o0.e.H;
                if (i4 != 1) {
                    i2 = (i4 != 2 && i4 != 3) ? 0 : 13;
                } else {
                    i2 = 7;
                }
                break;
            case 5:
                i2 = 12;
                break;
            case 6:
                i2 = 8;
                break;
            case 7:
                i2 = 11;
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

    public static int d3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 7;
        }
        return 4;
    }

    public static int e3(int i2) {
        switch (i2) {
            case 1:
                return 0;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 8;
            case 8:
                return 9;
            default:
                return 15;
        }
    }

    public static int f3(int i2) {
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

    /* JADX WARN: Code duplicated, block: B:18:0x002d  */
    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f6367t, 1);
        qt.z(this.f6372y);
        int i2 = nt.f8637c;
        if (i2 != 0 && i2 != 10 && i2 != 25 && i2 != 32 && i2 != 38 && i2 != 14 && i2 != 15) {
            switch (i2) {
                case 28:
                case 29:
                case 30:
                    w0.e.f17815a.a(this.f6365r, 1);
                    w0.e.f17819e.a(this.f6365r, 1);
                    u0.c.f17374a.a(this.f6365r, 1);
                    break;
            }
        } else {
            w0.e.f17815a.a(this.f6365r, 1);
            w0.e.f17819e.a(this.f6365r, 1);
            u0.c.f17374a.a(this.f6365r, 1);
        }
        switch (nt.f8637c) {
            case 0:
                mt mtVar = this.f7886a;
                mtVar.f8311f = 0;
                mtVar.f8312g = 0;
                mtVar.f8310e = 1;
                mtVar.f8320o = 1;
                break;
            case 1:
                mt mtVar2 = this.f7886a;
                mtVar2.f8306a = new String[]{"com.syu.canbus"};
                mtVar2.f8310e = 1;
                mtVar2.f8320o = 1;
                break;
            case 3:
                mt mtVar3 = this.f7886a;
                mtVar3.f8311f = 1;
                mtVar3.f8312g = 1;
                mtVar3.f8320o = 1;
                break;
            case 5:
                mt mtVar4 = this.f7886a;
                mtVar4.f8310e = 1;
                mtVar4.f8320o = 1;
                break;
            case 6:
                mt mtVar5 = this.f7886a;
                mtVar5.f8306a = new String[]{"com.syu.canbus"};
                mtVar5.f8311f = 1;
                mtVar5.f8310e = 1;
                mtVar5.f8312g = 1;
                mtVar5.f8320o = 1;
                break;
            case 7:
                mt mtVar6 = this.f7886a;
                mtVar6.f8306a = new String[]{"com.syu.canbus"};
                mtVar6.f8310e = 1;
                mtVar6.f8311f = 1;
                mtVar6.f8314i = 1;
                mtVar6.f8320o = 1;
                break;
            case 8:
                mt mtVar7 = this.f7886a;
                mtVar7.f8306a = new String[]{"com.syu.canbus"};
                mtVar7.f8311f = 1;
                mtVar7.f8312g = 1;
                mtVar7.f8310e = 1;
                mtVar7.f8320o = 1;
                break;
            case 9:
                mt mtVar8 = this.f7886a;
                mtVar8.f8313h = 1;
                mtVar8.f8320o = 1;
                break;
            case 10:
                mt mtVar9 = this.f7886a;
                mtVar9.f8306a = new String[]{"com.syu.canbus"};
                mtVar9.f8310e = 1;
                mtVar9.f8320o = 1;
                this.f6364q.a();
                y0.g.f18094d.a(this.f6371x, 1);
                break;
            case 11:
                mt mtVar10 = this.f7886a;
                mtVar10.f8306a = new String[]{"com.syu.canbus"};
                mtVar10.f8310e = 1;
                mtVar10.f8311f = 1;
                mtVar10.f8314i = 1;
                mtVar10.f8320o = 1;
                break;
            case 12:
                mt mtVar11 = this.f7886a;
                mtVar11.f8310e = 1;
                mtVar11.f8311f = 1;
                mtVar11.f8320o = 1;
                break;
            case 13:
                mt mtVar12 = this.f7886a;
                mtVar12.f8306a = null;
                mtVar12.f8310e = 1;
                mtVar12.f8311f = 1;
                mtVar12.f8314i = 1;
                mtVar12.f8320o = 1;
                break;
            case 14:
                mt mtVar13 = this.f7886a;
                mtVar13.f8306a = new String[]{"com.syu.canbus"};
                mtVar13.f8311f = 1;
                mtVar13.f8312g = 1;
                mtVar13.f8310e = 1;
                mtVar13.f8320o = 1;
                mtVar13.f8314i = 1;
                y0.g.f18094d.a(this.f6371x, 1);
                break;
            case 15:
            case 32:
            case 38:
                mt mtVar14 = this.f7886a;
                mtVar14.f8306a = new String[]{"com.syu.canbus"};
                mtVar14.f8310e = 1;
                mtVar14.f8311f = 1;
                mtVar14.f8312g = 1;
                mtVar14.f8314i = 1;
                mtVar14.f8320o = 1;
                y0.g.f18094d.a(this.f6371x, 1);
                break;
            case 16:
                mt mtVar15 = this.f7886a;
                mtVar15.f8306a = null;
                mtVar15.f8310e = 1;
                mtVar15.f8311f = 0;
                mtVar15.f8312g = 0;
                mtVar15.f8320o = 1;
                break;
            case 17:
                mt mtVar16 = this.f7886a;
                mtVar16.f8306a = null;
                mtVar16.f8310e = 1;
                mtVar16.f8311f = 1;
                mtVar16.f8312g = 0;
                mtVar16.f8320o = 1;
                break;
            case 18:
                mt mtVar17 = this.f7886a;
                mtVar17.f8306a = null;
                mtVar17.f8310e = 1;
                mtVar17.f8320o = 1;
                break;
            case 19:
                mt mtVar18 = this.f7886a;
                mtVar18.f8306a = null;
                mtVar18.f8310e = 1;
                mtVar18.f8311f = 1;
                mtVar18.f8312g = 0;
                mtVar18.f8320o = 1;
                break;
            case 20:
                mt mtVar19 = this.f7886a;
                mtVar19.f8306a = new String[]{"com.syu.canbus"};
                mtVar19.f8310e = 1;
                mtVar19.f8311f = 1;
                mtVar19.f8314i = 1;
                mtVar19.f8312g = 0;
                mtVar19.f8320o = 1;
                break;
            case 21:
            case 23:
            case 37:
                mt mtVar20 = this.f7886a;
                mtVar20.f8306a = new String[]{"com.syu.canbus"};
                mtVar20.f8311f = 1;
                mtVar20.f8312g = 0;
                mtVar20.f8314i = 1;
                mtVar20.f8320o = 1;
                break;
            case 24:
                mt mtVar21 = this.f7886a;
                mtVar21.f8306a = null;
                mtVar21.f8310e = 1;
                mtVar21.f8311f = 1;
                mtVar21.f8320o = 1;
                break;
            case 25:
                mt mtVar22 = this.f7886a;
                mtVar22.f8306a = new String[]{"com.syu.canbus"};
                mtVar22.f8311f = 0;
                mtVar22.f8312g = 0;
                mtVar22.f8314i = 0;
                mtVar22.f8320o = 0;
                break;
            case 27:
                mt mtVar23 = this.f7886a;
                mtVar23.f8306a = new String[]{"com.syu.canbus"};
                mtVar23.f8310e = 1;
                mtVar23.f8311f = 1;
                mtVar23.f8312g = 0;
                mtVar23.f8320o = 1;
                qt.z(this.f6373z);
                break;
            case 28:
                mt mtVar24 = this.f7886a;
                mtVar24.f8306a = new String[]{"com.syu.canbus"};
                mtVar24.f8310e = 1;
                mtVar24.f8311f = 1;
                mtVar24.f8312g = 1;
                mtVar24.f8314i = 1;
                mtVar24.f8320o = 1;
                y0.g.f18094d.a(this.f6371x, 1);
                u0.c.f17388o.a(this.f6369v, 1);
                u0.c.f17390q.a(this.f6370w, 1);
                break;
            case 29:
            case 30:
                mt mtVar25 = this.f7886a;
                mtVar25.f8306a = new String[]{"com.syu.canbus"};
                mtVar25.f8310e = 1;
                mtVar25.f8311f = 1;
                mtVar25.f8312g = 1;
                mtVar25.f8314i = 1;
                mtVar25.f8319n = 1;
                mtVar25.f8320o = 1;
                y0.g.f18094d.a(this.f6371x, 1);
                u0.c.f17388o.a(this.f6369v, 1);
                u0.c.f17390q.a(this.f6370w, 1);
                break;
            case 31:
                mt mtVar26 = this.f7886a;
                mtVar26.f8306a = new String[]{"com.syu.canbus"};
                mtVar26.f8310e = 1;
                mtVar26.f8311f = 1;
                mtVar26.f8314i = 1;
                mtVar26.f8312g = 0;
                mtVar26.f8320o = 1;
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:277:0x070e  */
    /* JADX WARN: Code duplicated, block: B:77:0x033d  */
    /* JADX WARN: Code duplicated, block: B:97:0x0403  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int[][] iArr;
        byte b2;
        int[][] iArr2;
        int[][] iArr3;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        byte b3 = bArr[i2 + 1];
        if (b3 == -121) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            byte b6 = bArr[i2 + 4];
            byte b7 = bArr[i2 + 5];
            byte b8 = bArr[i2 + 6];
            byte b9 = bArr[i2 + 7];
            int i12 = bArr[i2 + 8] & 255;
            int i13 = bArr[i2 + 9] & 255;
            qt.y0(129, (b4 >> 7) & 1);
            qt.y0(130, (b6 >> 7) & 1);
            qt.y0(131, (b6 >> 5) & 3);
            qt.y0(133, (((b4 >> 6) & 1) << 8) | ((b6 >> 4) & 1));
            qt.y0(134, (((b4 >> 5) & 1) << 8) | ((b6 >> 3) & 1));
            qt.y0(135, (((b4 >> 4) & 1) << 8) | ((b6 >> 2) & 1));
            qt.y0(136, (((b4 >> 3) & 1) << 8) | ((b6 >> 1) & 1));
            qt.y0(137, ((b6 >> 0) & 1) | (((b4 >> 2) & 1) << 8));
            qt.y0(138, (((b4 >> 1) & 1) << 8) | ((b7 >> 6) & 3));
            qt.y0(139, (((b4 >> 0) & 1) << 8) | (b7 & 31));
            qt.y0(140, (((b5 >> 7) & 1) << 8) | ((b8 >> 4) & 15));
            qt.y0(146, (((b5 >> 6) & 1) << 8) | ((b8 >> 3) & 1));
            qt.y0(147, (((b5 >> 5) & 1) << 8) | ((b8 >> 2) & 1));
            qt.y0(148, (((b5 >> 4) & 1) << 8) | ((b8 >> 1) & 1));
            qt.y0(165, (((b5 >> 3) & 1) << 8) | ((b8 >> 0) & 1));
            qt.y0(166, (((b5 >> 2) & 1) << 8) | ((b9 >> 7) & 1));
            qt.y0(167, (((b5 >> 1) & 1) << 8) | ((b9 >> 5) & 3));
            qt.y0(172, (b9 >> 4) & 1);
            qt.y0(173, (b9 >> 3) & 1);
            qt.y0(168, (((i13 >> 7) & 1) << 8) | ((i12 >> 6) & 3));
            qt.y0(169, (((i13 >> 6) & 1) << 8) | ((i12 >> 4) & 3));
            qt.y0(170, (((i13 >> 5) & 1) << 8) | ((i12 >> 3) & 1));
            qt.y0(171, (((i13 >> 4) & 1) << 8) | ((i12 >> 2) & 1));
            return;
        }
        if (b3 == -24) {
            if (nt.f8637c == 24 || !nt.a() || qt.k0()) {
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
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 65) {
            if (nt.a()) {
                i4 = 25;
            } else {
                i4 = 25;
                if (nt.f8637c != 25) {
                    return;
                }
            }
            int i14 = nt.f8637c;
            if (i14 == 0 || i14 == 10 || i14 == 8 || i14 == 13 || i14 == 14 || i14 == i4 || i14 == 29 || i14 == 30 || i14 == 31) {
                u0.d.R2(d3(bArr[i2 + 2] & 255));
                u0.d.S2(d3(bArr[i2 + 3] & 255));
                u0.d.T2(d3(bArr[i2 + 4] & 255));
                u0.d.U2(d3(bArr[i2 + 5] & 255));
                u0.d.D2(d3(bArr[i2 + 6] & 255));
                u0.d.E2(d3(bArr[i2 + 7] & 255));
                u0.d.F2(d3(bArr[i2 + 8] & 255));
                u0.d.G2(d3(bArr[i2 + 9] & 255));
                return;
            }
            if (i14 == 12 || i14 == 17) {
                u0.d.R2(e3(bArr[i2 + 2] & 255));
                u0.d.S2(e3(bArr[i2 + 3] & 255));
                u0.d.T2(e3(bArr[i2 + 4] & 255));
                u0.d.U2(e3(bArr[i2 + 5] & 255));
                return;
            }
            if (i14 == 15 || i14 == 28 || i14 == 32 || i14 == 38) {
                u0.d.R2(d3(bArr[i2 + 2] & 255));
                u0.d.S2(d3(bArr[i2 + 3] & 255));
                u0.d.T2(d3(bArr[i2 + 4] & 255));
                u0.d.U2(d3(bArr[i2 + 5] & 255));
                u0.d.D2(d3(bArr[i2 + 6] & 255));
                u0.d.E2(d3(bArr[i2 + 7] & 255));
                u0.d.F2(d3(bArr[i2 + 8] & 255));
                u0.d.G2(d3(bArr[i2 + 9] & 255));
                return;
            }
            if (i14 == 16 || i14 == 27) {
                u0.d.R2(d3(bArr[i2 + 2] & 255));
                u0.d.S2(d3(bArr[i2 + 3] & 255));
                u0.d.T2(d3(bArr[i2 + 4] & 255));
                u0.d.U2(d3(bArr[i2 + 5] & 255));
                return;
            }
            if (i14 != 18) {
                if (i14 == 24) {
                    u0.d.R2(f3(bArr[i2 + 2] & 255));
                    u0.d.S2(f3(bArr[i2 + 3] & 255));
                    u0.d.T2(f3(bArr[i2 + 4] & 255));
                    u0.d.U2(f3(bArr[i2 + 5] & 255));
                    int i15 = i2 + 6;
                    u0.d.D2(f3(bArr[i15] & 255));
                    u0.d.E2(f3(bArr[i15] & 255));
                    int i16 = i2 + 9;
                    u0.d.F2(f3(bArr[i16] & 255));
                    u0.d.G2(f3(bArr[i16] & 255));
                    return;
                }
                return;
            }
            u0.d.R2(f3(bArr[i2 + 2] & 255));
            u0.d.S2(f3(bArr[i2 + 3] & 255));
            u0.d.T2(f3(bArr[i2 + 4] & 255));
            u0.d.U2(f3(bArr[i2 + 5] & 255));
            int i17 = i2 + 6;
            int i18 = bArr[i17] & 255;
            int i19 = bArr[i17] & 255;
            int i20 = i2 + 9;
            int i21 = bArr[i20] & 255;
            int i22 = bArr[i20] & 255;
            if (l0.c0.f13013g != i18 || l0.c0.f13014h != i19 || l0.c0.f13015i != i21 || l0.c0.f13016j != i22) {
                l0.c0.f13013g = i18;
                l0.c0.f13014h = i19;
                l0.c0.f13015i = i21;
                l0.c0.f13016j = i22;
                if (u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
            }
            u0.d.D2(f3(bArr[i17] & 255));
            u0.d.E2(f3(bArr[i17] & 255));
            u0.d.F2(f3(bArr[i20] & 255));
            u0.d.G2(f3(bArr[i20] & 255));
            return;
        }
        if (b3 == 97) {
            int i23 = i2 + 2;
            int i24 = i2 + 7;
            qt.y0(149, (((bArr[i23] >> 7) & 1) << 8) | ((bArr[i24] >> 6) & 3));
            qt.y0(150, (((bArr[i23] >> 6) & 1) << 8) | ((bArr[i24] >> 5) & 1));
            qt.y0(151, (((bArr[i23] >> 5) & 1) << 8) | ((bArr[i24] >> 3) & 3));
            qt.y0(152, (((bArr[i23] >> 4) & 1) << 8) | ((bArr[i24] >> 2) & 1));
            qt.y0(153, (((bArr[i23] >> 3) & 1) << 8) | ((bArr[i24] >> 1) & 1));
            int i25 = i2 + 3;
            int i26 = i2 + 8;
            qt.y0(154, (((bArr[i25] >> 7) & 1) << 8) | ((bArr[i26] >> 7) & 1));
            qt.y0(155, (((bArr[i25] >> 6) & 1) << 8) | ((bArr[i26] >> 6) & 1));
            qt.y0(156, (((bArr[i25] >> 5) & 1) << 8) | ((bArr[i26] >> 5) & 1));
            qt.y0(157, (((bArr[i25] >> 4) & 1) << 8) | ((bArr[i26] >> 4) & 1));
            int i27 = i2 + 4;
            int i28 = i2 + 9;
            qt.y0(158, (((bArr[i27] >> 7) & 1) << 8) | ((bArr[i28] >> 7) & 1));
            qt.y0(159, (((bArr[i27] >> 6) & 1) << 8) | ((bArr[i28] >> 6) & 1));
            qt.y0(160, (((bArr[i27] >> 5) & 1) << 8) | ((bArr[i28] >> 5) & 1));
            qt.y0(161, (((bArr[i27] >> 4) & 1) << 8) | ((bArr[i28] >> 4) & 1));
            qt.y0(161, (((bArr[i27] >> 4) & 1) << 8) | ((bArr[i28] >> 4) & 1));
            int i29 = i2 + 5;
            int i30 = i2 + 10;
            qt.y0(162, (((bArr[i29] >> 7) & 1) << 8) | ((bArr[i30] >> 7) & 1));
            qt.y0(163, (((bArr[i29] >> 6) & 1) << 8) | ((bArr[i30] >> 6) & 1));
            qt.y0(164, ((bArr[i30] >> 5) & 1) | (((bArr[i29] >> 5) & 1) << 8));
            return;
        }
        if (b3 == 114) {
            int i31 = i2 + 4;
            if ((bArr[i31] & 255) != 0) {
                qt.y0(145, bArr[i31] & 255);
                return;
            }
            return;
        }
        if (b3 == 116) {
            if (nt.a()) {
                this.f6357j = (bArr[i2 + 2] & 255) | 128;
                int i32 = 0;
                while (true) {
                    iArr = this.f6359l;
                    if (i32 >= iArr.length) {
                        break;
                    }
                    int i33 = this.f6357j;
                    if (i33 == iArr[i32][0]) {
                        if (i33 == 0) {
                            break;
                        }
                        this.f6358k = i32;
                        break;
                    }
                    i32++;
                }
                if (this.f6357j != 128) {
                    if (i32 < iArr.length) {
                        l0.b0.l0(iArr[i32][1], 0);
                    }
                    b2 = 255;
                } else {
                    int i34 = this.f6358k;
                    if (i34 < iArr.length) {
                        b2 = 255;
                        if (i34 != 255) {
                            l0.b0.l0(iArr[i34][1], 1);
                        }
                    } else {
                        b2 = 255;
                    }
                    this.f6358k = b2;
                }
                int i35 = i2 + 3;
                int i36 = bArr[i35] & b2;
                int i37 = this.f6350c;
                if (i36 != i37) {
                    if (i37 == 0 && (bArr[i35] & b2) == b2) {
                        u0.d.B1();
                    } else if ((bArr[i35] & b2) != 0 && (bArr[i35] & b2) <= i37) {
                        u0.d.B1();
                    } else {
                        u0.d.I1();
                    }
                }
                this.f6350c = bArr[i35] & b2;
                return;
            }
            return;
        }
        if (b3 == 17) {
            int i38 = i2 + 4;
            if (bArr[i38] == 57) {
                if (this.f6349b == 1 && bArr[i2 + 5] == 0) {
                    if (o1.u.T(a.b.O)) {
                        qt.f();
                    } else {
                        qt.t();
                    }
                }
                this.f6349b = bArr[i2 + 5];
            }
            if (nt.a()) {
                byte b10 = bArr[i38];
                byte b11 = bArr[i2 + 5];
                this.f6354g = b10 & 255;
                int i39 = 0;
                while (true) {
                    iArr2 = this.f6359l;
                    if (i39 >= iArr2.length) {
                        break;
                    }
                    int i40 = this.f6354g;
                    if (i40 == iArr2[i39][0]) {
                        if (i40 == 0) {
                            break;
                        }
                        this.f6353f = i39;
                        break;
                    }
                    i39++;
                }
                int i41 = this.f6354g;
                if (i41 != 5) {
                    if (i41 != 80) {
                        if ((b11 & 255) == 0) {
                            int i42 = this.f6353f;
                            if (i42 < iArr2.length && i42 != 255) {
                                l0.b0.l0(iArr2[i42][1], 1);
                            }
                            this.f6353f = 255;
                        } else if (i39 < iArr2.length) {
                            l0.b0.l0(iArr2[i39][1], 0);
                        }
                    } else if ((b11 & 255) == 1) {
                        if (u0.b.f17347o == 1) {
                            qt.a(0);
                        } else {
                            qt.a(1);
                        }
                    }
                } else if ((b11 & 255) == 1) {
                    if (nt.f8637c == 37) {
                        int i43 = h0.c.E;
                        if (i43 == 3 || i43 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        }
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    }
                }
            }
            int i44 = nt.f8637c;
            if (i44 != 0 && i44 != 8 && i44 != 10 && i44 != 25 && i44 != 32 && i44 != 38 && i44 != 14 && i44 != 15) {
                switch (i44) {
                    case 28:
                    case 29:
                    case 30:
                        qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 10000);
                        break;
                    default:
                        qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                        break;
                }
            } else {
                qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 10000);
            }
            int i45 = nt.f8637c;
            if (i45 == 21 || i45 == 23 || i45 == 37) {
                byte b12 = bArr[i2 + 6];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b12 >> 7) & 1);
                    qt.y0(2, (b12 >> 6) & 1);
                } else {
                    qt.y0(1, (b12 >> 6) & 1);
                    qt.y0(2, (b12 >> 7) & 1);
                }
                qt.y0(3, (b12 >> 4) & 1);
                qt.y0(4, (b12 >> 5) & 1);
                qt.y0(5, (b12 >> 3) & 1);
                qt.y0(0, (b12 >> 2) & 1);
                return;
            }
            return;
        }
        if (b3 == 18) {
            byte b13 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b13 >> 6) & 1);
                qt.y0(2, (b13 >> 7) & 1);
            } else {
                qt.y0(1, (b13 >> 7) & 1);
                qt.y0(2, (b13 >> 6) & 1);
            }
            qt.y0(3, (b13 >> 5) & 1);
            qt.y0(4, (b13 >> 4) & 1);
            qt.y0(5, (b13 >> 3) & 1);
            return;
        }
        if (b3 == 33) {
            if (nt.a()) {
                this.f6355h = bArr[i2 + 2] & 255;
                byte b14 = bArr[i2 + 3];
                int i46 = 0;
                while (true) {
                    iArr3 = this.f6360m;
                    if (i46 >= iArr3.length) {
                        break;
                    }
                    int i47 = this.f6355h;
                    if (i47 == iArr3[i46][0]) {
                        if (i47 == 0) {
                            break;
                        }
                        this.f6356i = i46;
                        break;
                    }
                    i46++;
                }
                int i48 = this.f6355h;
                if (i48 == 32) {
                    if ((b14 & 255) == 1) {
                        l0.b0.l0(1, 0);
                        l0.b0.l0(1, 1);
                        return;
                    }
                    return;
                }
                if (i48 != 37) {
                    if ((b14 & 255) != 0) {
                        if (i46 < iArr3.length) {
                            l0.b0.l0(iArr3[i46][1], 0);
                            return;
                        }
                        return;
                    }
                    int i49 = this.f6356i;
                    if (i49 < iArr3.length) {
                        i5 = 255;
                        if (i49 != 255) {
                            l0.b0.l0(iArr3[i49][1], 1);
                        }
                    } else {
                        i5 = 255;
                    }
                    this.f6356i = i5;
                    return;
                }
                int i50 = nt.f8637c;
                if (i50 == 32 || i50 == 38) {
                    if ((b14 & 255) == 1) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    }
                    return;
                }
                if ((b14 & 255) == 1) {
                    l0.b0.l0(1, 0);
                    l0.b0.l0(1, 1);
                    return;
                }
                return;
            }
            return;
        }
        if (b3 == 34) {
            if (nt.a()) {
                byte b15 = bArr[i2 + 2];
                byte b16 = bArr[i2 + 3];
                if (b15 == 1) {
                    int i51 = this.f6361n;
                    if (b16 != i51) {
                        if (b16 > i51) {
                            for (int i52 = 0; i52 < b16 - this.f6361n; i52++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                        } else if (b16 < i51) {
                            for (int i53 = 0; i53 < this.f6361n - b16; i53++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                        }
                        this.f6361n = b16;
                        return;
                    }
                    return;
                }
                if ((b15 == 2 || b15 == 3 || b15 == 4 || b15 == 5) && b16 != (i6 = this.f6362o)) {
                    if (b16 > i6) {
                        for (int i54 = 0; i54 < b16 - this.f6362o; i54++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b16 < i6) {
                        for (int i55 = 0; i55 < this.f6362o - b16; i55++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f6362o = b16;
                    return;
                }
                return;
            }
            return;
        }
        if (b3 != 49) {
            if (b3 == 50) {
                int i56 = i2 + 4;
                int i57 = i2 + 5;
                qt.y0(120, ((bArr[i56] << 8) & 65535) | (bArr[i57] & 255));
                qt.y0(1032, ((bArr[i56] << 8) & 65280) | (bArr[i57] & 255));
                qt.y0(1031, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                byte b17 = bArr[i2 + 9];
                if (b17 < 0 || b17 > 100) {
                    b17 = -1;
                }
                qt.y0(121, b17);
                return;
            }
            if (b3 != 72) {
                if (b3 == 73) {
                    byte b18 = bArr[i2 + 2];
                    byte b19 = bArr[i2 + 3];
                    byte b20 = bArr[i2 + 5];
                    byte b21 = bArr[i2 + 7];
                    byte b22 = bArr[i2 + 9];
                    qt.y0(119, b18);
                    qt.y0(107, b19);
                    qt.y0(110, b20);
                    qt.y0(113, b21);
                    qt.y0(116, b22);
                    return;
                }
                switch (b3) {
                    case 54:
                        byte b23 = bArr[i2 + 2];
                        byte b24 = bArr[i2 + 3];
                        qt.y0(122, (b23 >> 7) & 1);
                        qt.y0(123, (b23 >> 6) & 1);
                        qt.y0(124, (b23 >> 5) & 1);
                        qt.y0(125, (b23 >> 4) & 1);
                        qt.y0(126, (b24 >> 7) & 1);
                        qt.y0(127, (b24 >> 6) & 1);
                        qt.y0(128, (b24 >> 3) & 1);
                        break;
                    case 55:
                        byte b25 = bArr[i2 + 2];
                        byte b26 = bArr[i2 + 3];
                        byte b27 = bArr[i2 + 4];
                        byte b28 = bArr[i2 + 5];
                        int i58 = b26 & 255;
                        if (i58 == 0) {
                            int i59 = b25 & 255;
                            if (i59 < 4) {
                                qt.y0(i59 + 103, ((b28 & 255) | (b27 << 8)) & 65535);
                            }
                            break;
                        } else if (i58 == 1) {
                            int i60 = b25 & 255;
                            if (i60 < 4) {
                                qt.y0(i60 + 99, ((b28 & 255) | (b27 << 8)) & 65535);
                            }
                            break;
                        } else if (i58 == 2 && (i11 = b25 & 255) < 4) {
                            qt.y0(i11 + 141, b28 & 255);
                            break;
                        }
                        break;
                    case 57:
                        byte b29 = bArr[i2 + 2];
                        byte b30 = bArr[i2 + 3];
                        qt.y0(107, (b29 >> 7) & 1);
                        qt.y0(108, (b29 >> 6) & 1);
                        qt.y0(109, (b29 >> 5) & 1);
                        qt.y0(110, (b29 >> 4) & 1);
                        qt.y0(112, (b29 >> 3) & 1);
                        qt.y0(111, (b29 >> 2) & 1);
                        qt.y0(116, (b30 >> 7) & 1);
                        qt.y0(117, (b30 >> 6) & 1);
                        qt.y0(118, (b30 >> 5) & 1);
                        qt.y0(113, (b30 >> 4) & 1);
                        qt.y0(114, (b30 >> 3) & 1);
                        qt.y0(115, (b30 >> 2) & 1);
                        qt.y0(119, b30 & 1);
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
        byte b31 = bArr[i2 + 2];
        byte b32 = bArr[i2 + 3];
        byte b33 = bArr[i2 + 4];
        byte b34 = bArr[i2 + 6];
        byte b35 = bArr[i2 + 7];
        int i61 = i2 + 8;
        byte b36 = bArr[i61];
        int i62 = i2 + 9;
        byte b37 = bArr[i62];
        int i63 = nt.f8637c;
        if (i63 == 0 || i63 == 10 || i63 == 32 || i63 == 38) {
            qt.y0(10, (b31 >> 6) & 1);
            qt.y0(53, (b31 >> 5) & 1);
            qt.y0(17, (b33 >> 6) & 1);
        } else if (i63 == 7) {
            qt.y0(38, (b31 >> 7) & 1);
        } else if (i63 == 8 || i63 == 14 || i63 == 15) {
            qt.y0(10, (b31 >> 6) & 1);
            qt.y0(53, (b31 >> 5) & 1);
            qt.y0(17, (b33 >> 6) & 1);
        } else if (i63 == 24) {
            qt.y0(10, (b31 >> 6) & 1);
        } else if (i63 != 25) {
            switch (i63) {
                case 28:
                case 29:
                case 30:
                    qt.y0(10, (b31 >> 6) & 1);
                    qt.y0(53, (b31 >> 5) & 1);
                    qt.y0(17, (b33 >> 6) & 1);
                    break;
                default:
                    qt.y0(10, (b31 >> 6) & 1);
                    qt.y0(15, (b31 >> 5) & 1);
                    qt.y0(42, (b31 >> 4) & 1);
                    qt.y0(62, (b31 >> 2) & 1);
                    break;
            }
        } else {
            qt.y0(10, (b31 >> 6) & 1);
            qt.y0(53, (b31 >> 5) & 1);
            qt.y0(17, (b33 >> 6) & 1);
        }
        qt.y0(13, (b31 >> 3) & 1);
        qt.y0(11, (b32 >> 6) & 1);
        qt.y0(12, (b32 >> 4) & 1);
        if (nt.f8637c != 24) {
            qt.y0(14, (b32 >> 2) & 1);
            qt.y0(30, (b33 >> 2) & 3);
            qt.y0(29, b33 & 3);
        }
        qt.y0(16, (b33 >> 5) & 1);
        qt.y0(65, (b33 >> 4) & 1);
        if (nt.f8637c == 24) {
            qt.y0(58, (b32 >> 7) & 1);
            qt.y0(54, (b32 >> 0) & 1);
        }
        int i64 = b34 & DhcpPacket.DHCP_DOMAIN_NAME;
        if (i64 == 1) {
            i7 = 0;
            i8 = 0;
            i9 = 0;
            i10 = 1;
        } else if (i64 == 3) {
            i10 = 0;
            i7 = 0;
            i9 = 0;
            i8 = 1;
        } else if (i64 == 5) {
            i10 = 0;
            i9 = 0;
            i7 = 1;
            i8 = 1;
        } else if (i64 != 6) {
            switch (i64) {
                case 11:
                    i10 = 0;
                    i7 = 0;
                    i8 = 0;
                    i9 = 1;
                    break;
                case 12:
                    i10 = 0;
                    i7 = 0;
                    i8 = 1;
                    i9 = i8;
                    break;
                case 13:
                    if (nt.f8637c != 24) {
                        i10 = 0;
                        i8 = 0;
                        i7 = 1;
                        i9 = 1;
                    } else {
                        i10 = 0;
                        i7 = 0;
                        i8 = i7;
                        i9 = i8;
                    }
                    break;
                case 14:
                    if (nt.f8637c != 24) {
                        i10 = 0;
                        i7 = 1;
                    } else {
                        i10 = 0;
                        i7 = 0;
                    }
                    i8 = i7;
                    i9 = i8;
                    break;
                default:
                    i10 = 0;
                    i7 = 0;
                    i8 = i7;
                    i9 = i8;
                    break;
            }
        } else {
            i10 = 0;
            i8 = 0;
            i9 = 0;
            i7 = 1;
        }
        qt.y0(77, i64);
        qt.y0(49, i10);
        qt.y0(19, i7);
        qt.y0(20, i8);
        qt.y0(18, i9);
        qt.y0(21, b35);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b36 = bArr[i62];
            b37 = bArr[i61];
        }
        byte b38 = b37;
        int i65 = b36 & 255;
        if (i65 == 254) {
            qt.y0(27, -2);
        } else if (i65 != 255) {
            qt.y0(27, i65 * 5);
        } else {
            qt.y0(27, -3);
        }
        int i66 = b38 & 255;
        if (i66 == 254) {
            qt.y0(28, -2);
        } else if (i66 != 255) {
            qt.y0(28, i66 * 5);
        } else {
            qt.y0(28, -3);
        }
        if (nt.a()) {
            int i67 = bArr[i2 + 13] & 255;
            int i68 = (i67 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
            if (i67 == 0) {
                u0.d.A3(0);
            } else {
                u0.d.A3(i68);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f6372y);
        u0.c.f17386m.d(this.f6367t);
        y0.g.f18094d.d(this.f6371x);
        w0.e.f17815a.d(this.f6365r);
        w0.e.f17819e.d(this.f6365r);
        u0.c.f17374a.d(this.f6365r);
        u0.c.f17388o.d(this.f6369v);
        u0.c.f17390q.d(this.f6370w);
        qt.q0(this.f6373z);
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
            int i3 = nt.f8637c;
            if (i3 == 6) {
                z.k.s(227, 3, -3, 2, 3, 1);
                return;
            }
            if (i3 == 30) {
                if (u0.b.f17347o == 1) {
                    z.k.s(227, 2, -3, 4, 3);
                    return;
                } else {
                    z.k.s(227, 2, -3, 4, 1);
                    return;
                }
            }
            if (iArr[0] == 1) {
                z.k.s(227, 2, -3, 1, 3);
                return;
            } else {
                z.k.s(227, 2, -3, 1, 1);
                return;
            }
        }
        if (i2 != 1005) {
            if (i2 == 1029 && T2(iArr, 2)) {
                int iW = (iArr[1] * 1024) / a.f.w();
                int i4 = (iArr[2] * CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) / a.f.i();
                z.k.s(227, 6, 44, 1, (iW >> 8) & 255, iW & 255, (i4 >> 8) & 255, i4 & 255, 0);
                return;
            }
            return;
        }
        int i5 = nt.f8637c;
        if (i5 == 6) {
            z.k.s(227, 3, -3, 2, 3, iArr[0]);
        } else if (i5 == 15 || i5 == 28) {
            z.k.s(227, 2, -3, 4, iArr[0]);
        } else {
            z.k.s(227, 2, -3, 1, 2);
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
        if (nt.f8637c == 20) {
            iArr[2] = c3();
        } else {
            iArr[2] = b3();
        }
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

    public final void i3(byte b2, String str) {
        int i2 = nt.f8637c;
        int i3 = 0;
        if (i2 != 29 && i2 != 30) {
            if (str == null) {
                str = ProxyProperties.LOCAL_EXCL_LIST;
            }
            int[] iArr = new int[35];
            byte[] bytes = str.getBytes();
            iArr[0] = 227;
            iArr[1] = 32;
            iArr[2] = b2;
            int length = bytes.length <= 32 ? bytes.length : 32;
            while (i3 < length) {
                iArr[i3 + 3] = bytes[i3];
                i3++;
            }
            z.k.s(iArr);
            return;
        }
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr2 = new int[35];
        iArr2[0] = 227;
        iArr2[1] = 32;
        iArr2[2] = b2;
        int length2 = str.length() <= 16 ? str.length() : 16;
        while (i3 < length2) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            iArr2[i4 + 3] = (iCodePointAt >> 8) & 255;
            iArr2[i4 + 4] = iCodePointAt & 255;
            i3++;
        }
        z.k.s(iArr2);
    }

    public final void j3(int i2) {
        z.k.s(227, 2, 36, i2, 53);
    }
}

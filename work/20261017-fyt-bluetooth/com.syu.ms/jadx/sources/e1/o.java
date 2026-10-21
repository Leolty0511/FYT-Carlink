package e1;

import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.os.UEventObserver;
import android.util.Log;
import com.syu.jni.ToolsJni;
import o1.q0;

/* JADX INFO: loaded from: classes2.dex */
public class o extends l {
    public static int A = 1;
    public static int B = -1;
    public static int C = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f1765w = 68;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static boolean f1766x = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static boolean f1767y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static boolean f1768z = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f1769a = "2850";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.n f1770b = new o1.n();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1771c = 64;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1772d = 65;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1773e = 16;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f1774f = 18;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1775g = 17;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1776h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1777i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1778j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Runnable f1779k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Runnable f1780l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Runnable f1781m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final UEventObserver f1782n = new d();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f1783o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1784p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1785q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f1786r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1787s = -1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int[] f1788t = {64, 0, 0, 17, 1, 126, 2, 66, 3, 45, 4, 2, 5, 0, 6, 50, 7, 192, 8, 0, 9, 36, 10, 72, 11, 192, 12, 67, 13, 80, 14, 0, 15, 0, 16, 0, 17, 80, 18, 64, 19, 0, 20, 0, 21, 19, 22, 21, 23, 0, 24, 25, 25, 208, 26, 37, 27, 0, 28, 7, 29, 188, 30, 128, 31, 128, 32, 48, 33, 134, 34, 56, 35, 60, 36, 4, 37, 255, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 74, 44, 10, 45, 48, 46, 112, 47, 0, 48, 72, 49, 187, 50, 46, 51, 144, 52, 0, 53, 37, 54, 220, 55, 0, 56, 0, 57, 8, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 65, 0, 76, 64, 78, 0, 79, 0, 181, 0, 182, 0, 183, 0, 185, 0, 186, 0, 188, 0, 190, 0, 230, 0, 231, 19, 232, 3, 239, 0, 240, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, 250, 136, 251, 0, 252, 0, i.a.Theme_dialogTitleDecorLayout, 0, 64, 8, 0, 64, 1, 56, 2, 1, 7, 255, 8, 15, 19, 36, 20, 70, 21, 8, 32, 18, 37, 8, 38, 1, 39, 14, 52, 27, 35, 0, 64, 0, 255, 255};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int[] f1789u = {64, 0, 2, 71, 5, 0, 6, 50, 7, 192, 8, 0, 9, 36, 10, 72, 11, 192, 12, 19, 13, 80, 14, 0, 15, 136, 16, 248, 17, 64, 18, 96, 19, 0, 20, 0, 21, 19, 22, 121, 23, 188, 24, 18, 25, 240, 26, 7, 27, 0, 28, 9, 29, 56, 30, 128, 31, 128, 32, 64, 33, 132, 34, 54, 35, 60, 36, 4, 37, 255, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 112, 44, 42, 45, 104, 46, 87, 47, 0, 48, 98, 49, 187, 50, 150, 51, 192, 52, 0, 53, 101, 54, 220, 55, 0, 56, 0, 57, 4, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 65, 0, 76, 64, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 181, 0, 182, 0, 183, 0, 185, 0, 186, 0, 188, 0, 190, 0, 230, 0, 231, 19, 232, 3, 239, 0, 240, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, 250, 136, 251, 0, 252, 0, 64, 8, 0, 64, 1, 56, 2, 1, 8, 15, 19, 36, 20, 87, 21, 12, 32, 18, 37, 4, 38, 0, 39, 7, 52, 27, 35, 64, 64, 0};

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int[] f1790v = {64, 0, 2, 71, 5, 0, 6, 50, 7, 192, 8, 0, 9, 36, 10, 72, 11, 192, 12, 19, 13, 81, 14, 0, 15, 136, 16, 248, 17, 64, 18, 96, 19, 0, 20, 0, 21, 19, 22, 118, 23, 188, 24, 23, 25, 32, 26, 23, 27, 0, 28, 9, 29, 72, 30, 128, 31, 128, 32, 72, 33, 132, 34, 55, 35, 63, 36, 4, 37, 255, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 112, 44, 42, 45, 100, 46, 86, 47, 0, 48, 122, 49, 74, 50, 77, 51, 240, 52, 0, 53, 101, 54, 220, 55, 0, 56, 0, 57, 4, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 65, 0, 76, 64, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 181, 0, 182, 0, 183, 0, 185, 0, 186, 0, 188, 0, 190, 0, 230, 0, 231, 19, 232, 3, 239, 0, 240, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, 250, 136, 251, 0, 252, 0, 64, 8, 0, 64, 1, 56, 2, 1, 8, 15, 19, 36, 20, 87, 21, 12, 32, 18, 37, 4, 38, 0, 39, 7, 52, 27, 35, 64, 64, 0};

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.n4 == 0) {
                o.f1766x = false;
            } else {
                o1.l.a().post(o.this.f1780l);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o.f1766x) {
                return;
            }
            if (o.this.v() >= 0) {
                o.f1766x = true;
            } else {
                o1.l.a().postDelayed(this, 1000L);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ToolsJni.cmd_33_reset_videoIc(1);
            int unused = o.B = -1;
            o.f1767y = true;
            o.this.A();
            int unused2 = o.C = 0;
            if (o.this.f1782n != null) {
                try {
                    o.this.f1782n.startObserving("dcam=err");
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            Log.d("LG", "Reset2850Reset2850Reset2850");
        }
    }

    public class d extends UEventObserver {
        public d() {
        }

        @Override // android.os.UEventObserver
        public void onUEvent(UEventObserver.UEvent uEvent) {
            String string = uEvent.toString();
            if (string != null && string.contains("dcam=err")) {
                Log.d("LG", "dcam=errdcam=errdcam=err");
                stopObserving();
                o1.j.e(o1.l.a(), o.this.f1781m);
                o1.j.b(o1.l.a(), o.this.f1781m, 100L);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e1.a.f1658c) {
                if (!SystemProperties.getBoolean("sys.fyt.video.debug", false)) {
                    o.this.z();
                }
                o oVar = o.this;
                int i2 = oVar.f1776h + 1;
                oVar.f1776h = i2;
                if (i2 >= 10) {
                    oVar.f1776h = 0;
                    if (!SystemProperties.getBoolean("sys.fyt.video.debug", false)) {
                        o.this.u();
                        o.this.A();
                    }
                }
                try {
                    o.this.f1782n.startObserving("dcam=err");
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static void j() {
        ToolsJni.cmd_33_reset_videoIc(1);
        B = -1;
        f1767y = true;
        C = 0;
    }

    public void A() {
        if (SystemProperties.getInt("sys.fyt.cvbs.iic.busy", -1) == 1) {
            return;
        }
        D(f1765w, 64, 8);
        int iX = x(f1765w, 16);
        int iX2 = x(f1765w, 17);
        int iX3 = x(f1765w, 18);
        if (iX != 8 || iX2 != 84 || iX3 != 71) {
            D(f1765w, 16, 8);
            D(f1765w, 17, 84);
            D(f1765w, 18, 71);
        }
        D(f1765w, 64, 0);
    }

    public final void B(int i2) {
        if (i2 == 0) {
            a.i.Z("sys.fyt.cvbs.needdeinterlace", "1");
            Log.d(this.f1769a, "rewritebackcarpara*****(NOR_CVBS_NTSC)!");
            y(this.f1789u);
        } else if (i2 == 1) {
            a.i.Z("sys.fyt.cvbs.needdeinterlace", "1");
            Log.d(this.f1769a, "rewritebackcarpara*****(NOR_CVBS_PAL)!");
            y(this.f1790v);
        } else if (i2 == 2) {
            a.i.Z("sys.fyt.cvbs.needdeinterlace", "0");
            Log.d(this.f1769a, "rewritebackcarpara*****(TVI_720P_25FPS)!");
            y(this.f1788t);
        }
        B = i2;
        u0.d.n3(i2);
    }

    public final int C() {
        if (t() != 0) {
            if (SystemProperties.getInt("sys.fyt.cvbs.iic.busy", -1) == 1) {
                return this.f1787s;
            }
            int iX = x(f1765w, 3) & 7;
            a.i.a0(50L);
            int iX2 = x(f1765w, 3) & 7;
            if (iX != iX2) {
                return this.f1787s;
            }
            a.i.a0(50L);
            int iX3 = x(f1765w, 3) & 7;
            if (iX == iX2 && iX == iX3) {
                if (this.f1786r != iX) {
                    Log.d(this.f1769a, "temp_pre = " + this.f1786r + "temp = " + iX);
                    this.f1786r = iX;
                }
                switch (iX) {
                    case 0:
                        this.f1787s = 5;
                        break;
                    case 1:
                        this.f1787s = 4;
                        break;
                    case 2:
                        this.f1787s = 7;
                        break;
                    case 3:
                        this.f1787s = 6;
                        break;
                    case 4:
                        this.f1787s = 3;
                        break;
                    case 5:
                        this.f1787s = 2;
                        break;
                    case 6:
                        a.i.a0(50L);
                        if (((x(f1765w, 1) >> 2) & 1) != 0) {
                            this.f1787s = 1;
                        } else {
                            this.f1787s = 0;
                        }
                        break;
                    case 7:
                        this.f1787s = -1;
                        break;
                }
            } else {
                Log.d(this.f1769a, "temp = " + iX + "temp1 = " + iX2 + "temp2 = " + iX3);
            }
        } else if (!SystemProperties.getBoolean("sys.fyt.video.debug", false)) {
            u0.d.o3(0);
        }
        return this.f1787s;
    }

    public final int D(int i2, int i3, int i4) {
        if (SystemProperties.getBoolean("sys.fyt.video.debug", false)) {
            return 1;
        }
        if (q0.k() == 0) {
            return -1;
        }
        this.f1770b.h(i2, i3, i4);
        return 1;
    }

    @Override // e1.l
    public void a() {
        Log.d(this.f1769a, "void closeVideo()......");
        if (SystemProperties.getBoolean("sys.fyt.video.debug", false)) {
            return;
        }
        u0.d.o3(0);
        f1768z = true;
        Log.d(this.f1769a, "closeVideo.signalOn(111111111)");
    }

    @Override // e1.l
    public void b() {
        int iA = g.e.a();
        if (iA == 4) {
            this.f1770b.f("/dev/i2c-4");
        } else if (iA == 5) {
            this.f1770b.f("/dev/i2c-0");
        }
        u0.c.f17381h.a(this.f1779k, 0);
        e1.b.a(this.f1783o);
        Log.d(this.f1769a, "void in()......");
    }

    @Override // e1.l
    public void c(int i2) {
        if (!f1766x && v() >= 0) {
            f1766x = true;
        }
        if (i2 < 0 || i2 > 10) {
            return;
        }
        Log.d(this.f1769a, "void openVideo()......");
        w(i2);
    }

    @Override // e1.l
    public void d() {
        u0.c.f17381h.d(this.f1779k);
        e1.b.d(this.f1783o);
        Log.d(this.f1769a, "void out()......");
    }

    @Override // e1.l
    public void f() {
        y(this.f1789u);
        f1766x = true;
        w(A);
        f1767y = false;
        Log.d(this.f1769a, "void refreshVideoParameters()......");
    }

    @Override // e1.l
    public void h(int i2, int i3, int i4, int i5) {
        if (SystemProperties.getBoolean("sys.fyt.video.debug", false)) {
            return;
        }
        if (SystemProperties.getInt("sys.fyt.cvbs.iic.busy", -1) == 1) {
            for (int i6 = 0; i6 < 200; i6++) {
                a.i.a0(2L);
                int i7 = SystemProperties.getInt("sys.fyt.cvbs.iic.busy", -1);
                Log.d(this.f1769a, "iicbusyflag11111***** = " + i7 + "i***=" + i6);
                if (i7 == 0) {
                    break;
                }
            }
        }
        int iX = x(f1765w, 64);
        int i8 = 0;
        while (iX != 0) {
            int i9 = i8 + 1;
            if (i8 >= 200) {
                break;
            }
            Log.d(this.f1769a, "2850pageerror111111!!***** = ");
            a.i.a0(5L);
            i8 = i9;
            iX = x(f1765w, 64);
        }
        D(f1765w, 16, i3 & 255);
        if (SystemProperties.getInt("sys.fyt.cvbs.iic.busy", -1) == 1) {
            for (int i10 = 0; i10 < 200; i10++) {
                a.i.a0(2L);
                int i11 = SystemProperties.getInt("sys.fyt.cvbs.iic.busy", -1);
                Log.d(this.f1769a, "iicbusyflag22222***** = " + i11 + "i***=" + i10);
                if (i11 == 0) {
                    break;
                }
            }
        }
        int iX2 = x(f1765w, 64);
        int i12 = 0;
        while (iX2 != 0) {
            int i13 = i12 + 1;
            if (i12 >= 200) {
                break;
            }
            Log.d(this.f1769a, "2850pageerror22222!!***** = ");
            a.i.a0(5L);
            i12 = i13;
            iX2 = x(f1765w, 64);
        }
        D(f1765w, 18, i4 & 255);
        if (SystemProperties.getInt("sys.fyt.cvbs.iic.busy", -1) == 1) {
            for (int i14 = 0; i14 < 200; i14++) {
                a.i.a0(2L);
                int i15 = SystemProperties.getInt("sys.fyt.cvbs.iic.busy", -1);
                Log.d(this.f1769a, "iicbusyflag33333***** = " + i15 + "i***=" + i14);
                if (i15 == 0) {
                    break;
                }
            }
        }
        int iX3 = x(f1765w, 64);
        int i16 = 0;
        while (iX3 != 0) {
            int i17 = i16 + 1;
            if (i16 >= 200) {
                break;
            }
            Log.d(this.f1769a, "2850pageerror333333!!***** = ");
            a.i.a0(5L);
            i16 = i17;
            iX3 = x(f1765w, 64);
        }
        D(f1765w, 17, i5 & 255);
        Log.d(this.f1769a, "void videoImageSet()......");
    }

    @Override // e1.l
    public void i(int i2) {
        if (i2 < 0 || i2 > 10) {
            return;
        }
        Log.d(this.f1769a, "void videoParameters()......");
    }

    public final int s() {
        if (this.f1784p == 0) {
            return ((x(f1765w, 1) >> 7) & 1) == 0 ? 1 : 0;
        }
        return (((x(f1765w, 1) >> 7) & 1) == 1 || ((x(f1765w, 1) >> 6) & 1) == 0 || ((x(f1765w, 1) >> 5) & 1) == 0 || ((x(f1765w, 1) >> 4) & 1) == 0) ? 0 : 1;
    }

    public final int t() {
        if (SystemProperties.getInt("sys.fyt.cvbs.iic.busy", -1) == 1) {
            return this.f1784p;
        }
        if (((x(f1765w, 1) >> 7) & 1) != 0) {
            this.f1784p = 0;
        } else {
            this.f1784p = 1;
        }
        if (this.f1785q != this.f1784p) {
            Log.d(this.f1769a, "signalonoffsave = " + this.f1784p + "signalonofftemp = " + this.f1785q);
            this.f1785q = this.f1784p;
        }
        return this.f1784p;
    }

    public final void u() {
        if (SystemProperties.getInt("sys.fyt.cvbs.iic.busy", -1) == 1) {
            return;
        }
        int iX = x(f1765w, 254);
        int iX2 = x(f1765w, 255);
        if (iX == 40 || iX2 == 80 || f1767y) {
            C = 0;
            return;
        }
        int i2 = C + 1;
        C = i2;
        if (i2 >= 3) {
            Log.d(this.f1769a, "IIC error------,reseting 2850!!");
            Log.d("LG", "2850pI2c errorreset 2850");
            ToolsJni.cmd_33_reset_videoIc(1);
            B = -1;
            f1767y = true;
        }
    }

    public final int v() {
        int iY = y(this.f1788t) + 0;
        Log.d(this.f1769a, "int init()......");
        return iY;
    }

    public final void w(int i2) {
        if (i2 < 0 || i2 > 10) {
            return;
        }
        int i3 = u0.b.t4[i2];
        Log.d(this.f1769a, "2850channel = " + i2 + " videoPort = " + i3);
        A = i2;
        f1768z = false;
        int i4 = 3;
        if (i3 == 1) {
            i4 = 0;
        } else if (i3 == 2) {
            i4 = 1;
        } else if (i3 == 3) {
            i4 = 2;
        } else if (i3 != 4) {
            i4 = -1;
        }
        if (i4 != -1) {
            if (SystemProperties.getInt("sys.fyt.cvbs.iic.busy", -1) == 1) {
                a.i.a0(100L);
            }
            int iD = D(f1765w, 65, i4);
            int i5 = 0;
            while (iD == -1) {
                int i6 = i5 + 1;
                if (i5 >= 60) {
                    i5 = i6;
                    break;
                }
                Log.d("LG", "2850pageerror111111!!***** = ");
                iD = D(f1765w, 65, i4);
                a.i.a0(50L);
                i5 = i6;
            }
            if (i5 == 61) {
                Log.d("LG", "2850pageerror111111!!***** reset 2850");
                ToolsJni.cmd_33_reset_videoIc(1);
                B = -1;
                f1767y = true;
                A();
                C = 0;
            }
            Log.d(this.f1769a, "2850 channel value = " + String.format("%02X ", Integer.valueOf(i4)) + " writeresult = " + iD);
        }
        int i7 = SystemProperties.getInt("sys.fyt.camera_type", -1);
        if (i7 == -1 || i2 != 1) {
            return;
        }
        Log.d(this.f1769a, "直接使用记忆的摄像头类型来刷 2825参数 = " + i7);
        B(i7);
    }

    public final int x(int i2, int i3) {
        if (SystemProperties.getBoolean("sys.fyt.video.debug", false)) {
            return 1;
        }
        if (q0.k() == 0) {
            return -1;
        }
        return this.f1770b.g(i2, i3);
    }

    public final int y(int[] iArr) {
        if (iArr == null || iArr.length <= 0) {
            return 0;
        }
        if (SystemProperties.getInt("sys.fyt.cvbs.iic.busy", -1) == 1) {
            a.i.a0(200L);
        }
        int iD = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < iArr.length - 1; i3 += 2) {
            if (iArr[i3] == 64) {
                i2 = iArr[i3 + 1];
            }
            if (i2 == 0 && (iArr[i3] == 16 || iArr[i3] == 18 || iArr[i3] == 17 || iArr[i3] == 65)) {
                Log.d(this.f1769a, "regAddr***************** = " + String.format("%02X ", Integer.valueOf(iArr[i3])) + " value = " + String.format("%02X ", Integer.valueOf(iArr[i3 + 1])) + ";result = " + iD);
            } else {
                iD += D(f1765w, iArr[i3], iArr[i3 + 1]);
            }
        }
        return iD;
    }

    public final void z() {
        int iC = C();
        if (B != iC && iC != -1) {
            Log.d(this.f1769a, "formatpre = " + B + "temp = " + iC);
            if (A == 1 && iC != -1) {
                SystemProperties.set("sys.fyt.camera_type", ProxyProperties.LOCAL_EXCL_LIST + iC);
            }
            B = iC;
            if (iC == 0) {
                a.i.Z("sys.fyt.cvbs.needdeinterlace", "1");
                Log.d(this.f1769a, "refreshVideoParameters(NOR_CVBS_NTSC)!");
                y(this.f1789u);
            } else if (iC == 1) {
                a.i.Z("sys.fyt.cvbs.needdeinterlace", "1");
                Log.d(this.f1769a, "refreshVideoParameters(NOR_CVBS_PAL)!");
                y(this.f1790v);
            } else if (iC == 2) {
                a.i.Z("sys.fyt.cvbs.needdeinterlace", "0");
                Log.d(this.f1769a, "refreshVideoParameters(TVI_720P_25FPS)!");
                y(this.f1788t);
            }
            u0.d.n3(B);
        }
        if (s() == 0 || f1768z) {
            return;
        }
        u0.d.o3(1);
    }
}

package a;

import android.app.ActivityManager;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.service.wallpaper.WallpaperService;
import android.util.Log;
import android.view.KeyEvent;
import android.view.WindowManager;
import android.view.inputmethod.InputMethod;
import app.App;
import base.Configure;
import java.util.Iterator;
import java.util.List;
import k0.qt;
import n0.c4;
import n0.j4;
import o1.d0;
import o1.k;
import o1.k0;
import o1.p0;
import o1.s0;
import o1.u;

/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k0 f81a = new k0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f82b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Runnable f83c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Runnable f84d = new b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static long f85e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Runnable f86f = new c();

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            i.S();
            if (f.x().getWifiState() == 1 || f.x().getWifiState() == 0) {
                k.a().postDelayed(this, 2000L);
            }
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.n4 != 0) {
                System.exit(0);
            }
        }
    }

    public class c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            i.c(u0.b.f17366w);
        }
    }

    public static void A() {
        if (u0.b.f17347o != 1) {
            if (h0.c.f2433f || h0.c.G == 0) {
                c.e.d().b();
                c.e.d().c(3);
            }
        }
    }

    public static void B() {
        c4 c4Var = j4.f16466d;
        if (c4Var == null || c4Var.n3()) {
            ActivityManager activityManagerD = f.d();
            o1.c cVar = new o1.c(0);
            cVar.f(i(), 1);
            T(cVar, l());
            T(cVar, j());
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManagerD.getRunningAppProcesses();
            if (runningAppProcesses != null) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (cVar.d(runningAppProcessInfo.processName, 0) == 0 && !u.j0(runningAppProcessInfo.processName) && !runningAppProcessInfo.processName.startsWith("com.antutu")) {
                        C(runningAppProcessInfo.processName);
                    }
                }
            }
        }
    }

    public static void C(String str) {
        ActivityManager activityManagerD = f.d();
        try {
            if (str.startsWith(":")) {
                str = str.substring(0, str.indexOf(":"));
            }
            if (a.b.d(str) || s0.j(str, u.I())) {
                return;
            }
            X(str);
            new j1.c("forceStopPackage").g(activityManagerD).d(str).a();
            e.e.f1625c.c(str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void D() {
        B();
    }

    public static void E(int i2) {
        if (f81a.c(500)) {
            if (i2 == 8 || i2 == 9) {
                u0.d.I3(37, i2, 7);
            } else {
                G(89);
            }
        }
    }

    public static void F(int i2) {
        if (f81a.c(500)) {
            if (i2 == 8 || i2 == 9) {
                u0.d.I3(37, i2, 6);
            } else {
                G(90);
            }
        }
    }

    public static void G(int i2) {
        Log.e("kuwo", "mediaKey keyCode: " + i2 + "  DataMain.sAppId: " + u0.b.D);
        H(0, i2);
        H(1, i2);
    }

    public static void H(int i2, int i3) {
        Intent intent = new Intent(Intent.ACTION_MEDIA_BUTTON);
        KeyEvent keyEvent = new KeyEvent(i2, i3);
        int iN = u.N(u0.b.B3);
        if (s0.t(u0.b.B3) || !u0.b.B3.contains("kuwo") || iN >= 4400) {
            f.f().dispatchMediaKeyEvent(keyEvent);
        } else {
            intent.putExtra(Intent.EXTRA_KEY_EVENT, keyEvent);
            App.c().sendBroadcast(intent);
        }
    }

    public static void I(int i2, int i3) {
        if (f81a.c(500)) {
            if (i2 == 8 || i2 == 9) {
                u0.d.I3(37, i2, 8, i3);
            }
        }
    }

    public static void J(int i2) {
        if (f81a.c(500)) {
            z.c.f18181a.c();
            if (s0.j(a.b.f21i, u.Y0())) {
                u0.d.I3(37, -1, 5);
                return;
            }
            if (i2 == 8 || i2 == 9) {
                u0.d.I3(37, i2, 5);
            } else if (i2 == 11 || i2 == 13) {
                qt.d();
            } else {
                G(87);
            }
        }
    }

    public static void K(int i2) {
        if (f81a.c(500)) {
            if (i2 == 8 || i2 == 9) {
                u0.d.I3(37, i2, 2);
            } else {
                G(127);
            }
        }
    }

    public static void L(int i2) {
        if (f81a.c(500)) {
            if (i2 == 8 || i2 == 9) {
                u0.d.I3(37, i2, 0);
            } else {
                G(126);
            }
        }
    }

    public static void M(int i2) {
        if (f81a.c(500)) {
            if (i2 == 8 || i2 == 9) {
                u0.d.I3(37, i2, 1);
            } else {
                G(85);
            }
        }
    }

    public static void N(int i2) {
        if (f81a.c(500)) {
            z.c.f18182b.c();
            if (s0.j(a.b.f21i, u.Y0())) {
                u0.d.I3(37, -1, 4);
                return;
            }
            if (i2 == 8 || i2 == 9) {
                u0.d.I3(37, i2, 4);
            } else if (i2 == 11 || i2 == 13) {
                qt.e();
            } else {
                G(88);
            }
        }
    }

    public static void O(int i2) {
        if (f81a.c(500)) {
            if (i2 == 8 || i2 == 9) {
                u0.d.I3(37, i2, 9);
            }
        }
    }

    public static void P(int i2) {
        if (f81a.c(500)) {
            if (i2 == 8 || i2 == 9) {
                u0.d.I3(37, i2, 3);
            } else {
                G(86);
            }
        }
    }

    public static void Q(int i2) {
        R(0, i2);
        R(1, i2);
    }

    public static void R(int i2, int i3) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        s0.B(new KeyEvent(jUptimeMillis, jUptimeMillis, i2, i3, 0, 0, -1, 0, 0, 257), 2);
    }

    public static void S() {
        if (!"close".equals(SystemProperties.get("persist.sys.wifi.states"))) {
            SystemProperties.set("persist.sys.wifi.states", "close");
        }
        int wifiState = f.x().getWifiState();
        if (wifiState == 3 || wifiState == 2) {
            return;
        }
        f.x().setWifiEnabled(true);
    }

    public static void T(o1.c<String> cVar, List<ResolveInfo> list) {
        if (cVar == null || list == null) {
            return;
        }
        Iterator<ResolveInfo> it = list.iterator();
        while (it.hasNext()) {
            cVar.f(it.next().serviceInfo.packageName, 1);
        }
    }

    public static void U() {
        if (f.r() != null) {
            Log.d("main", " ===> com.syu.ms exec reboot");
            f.r().reboot(null);
        }
    }

    public static void V() {
        if (f82b) {
            f82b = false;
            S();
            k.a().postDelayed(f83c, 2000L);
        }
    }

    public static void W() {
        if (f82b) {
            f82b = false;
            S();
        }
    }

    public static void X(String str) {
        try {
            for (ActivityManager.RunningTaskInfo runningTaskInfo : f.d().getRunningTasks(30)) {
                if (runningTaskInfo.baseActivity.getPackageName().equals(str)) {
                    d0.e(ActivityManager.class.getName(), f.d(), "removeTask", new Class[]{Integer.TYPE}, Integer.valueOf(runningTaskInfo.id));
                    f.p().s("removeTast = " + str);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void Y(String str) {
        if (p0.g(SystemProperties.get("sys.navi.packagename"), str)) {
            return;
        }
        SystemProperties.set("sys.navi.packagename", str);
    }

    public static void Z(String str, String str2) {
        if (p0.g(SystemProperties.get(str), str2)) {
            return;
        }
        SystemProperties.set(str, str2);
    }

    public static void a(String str, int i2) {
        int i3 = i2 == 0 ? 2 : 1;
        try {
            if (i3 != f.q().getApplicationEnabledSetting(str)) {
                f.q().setApplicationEnabledSetting(str, i3, 0);
            }
        } catch (Exception unused) {
        }
    }

    public static void a0(long j2) {
        try {
            Thread.sleep(j2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void b(int i2) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - f85e <= 600) {
            return;
        }
        f85e = jElapsedRealtime;
        Intent intent = new Intent();
        intent.setAction("AUTONAVI_STANDARD_BROADCAST_RECV");
        intent.putExtra("KEY_TYPE", 10027);
        intent.putExtra("EXTRA_TYPE", 1);
        intent.putExtra("EXTRA_OPERA", i2);
        App.c().sendBroadcast(intent);
    }

    public static void c(int i2) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - f85e <= 600) {
            return;
        }
        f85e = jElapsedRealtime;
        if (i2 == 0) {
            i2 = 1;
        } else if (i2 == 1) {
            i2 = 2;
        }
        Intent intent = new Intent();
        intent.setAction("AUTONAVI_STANDARD_BROADCAST_RECV");
        intent.putExtra("KEY_TYPE", 10048);
        intent.putExtra("EXTRA_TYPE", 1);
        intent.putExtra("EXTRA_DAY_NIGHT_MODE", i2);
        App.c().sendBroadcast(intent);
    }

    public static WindowManager.LayoutParams d(int i2, int i3) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.f206x = 0;
        layoutParams.f207y = 0;
        layoutParams.width = i2;
        layoutParams.height = i3;
        layoutParams.format = 1;
        layoutParams.type = WindowManager.LayoutParams.TYPE_STATUS_BAR_PANEL;
        layoutParams.flags = 256;
        layoutParams.flags = 256 | 56;
        layoutParams.gravity = 51;
        return layoutParams;
    }

    public static WindowManager.LayoutParams e(int i2, int i3) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.f206x = 0;
        layoutParams.f207y = 0;
        layoutParams.width = i2;
        layoutParams.height = i3;
        layoutParams.format = 1;
        layoutParams.type = WindowManager.LayoutParams.TYPE_DRAG;
        layoutParams.flags = 256;
        layoutParams.flags = 256 | 56;
        layoutParams.gravity = 51;
        return layoutParams;
    }

    public static void f() {
        int wifiState = f.x().getWifiState();
        if ((wifiState == 1 || wifiState == 0) && g.e.a() != 4) {
            return;
        }
        f.x().setWifiEnabled(false);
        f82b = true;
    }

    public static void g(int i2) {
        long j2 = i2 == 1 ? 0L : 1000L;
        if (!s0.l("persist.fyt.ui.txz", false) && Configure.Property.GD_NAVI_CONTROL.b(true)) {
            k kVarA = k.a();
            Runnable runnable = f86f;
            kVarA.removeCallbacks(runnable);
            k.a().postDelayed(runnable, j2);
        }
    }

    public static void h(String str) {
        ActivityManager activityManagerD = f.d();
        try {
            if (str.startsWith(":")) {
                str = str.substring(0, str.indexOf(":"));
            }
            Log.e("Qin", "000 --------- >>  killApp packageName: " + str);
            X(str);
            new j1.c("forceStopPackage").g(activityManagerD).d(str).a();
            e.e.f1625c.c(str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static String i() {
        Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.addCategory(Intent.CATEGORY_HOME);
        return f.q().resolveActivity(intent, 65536).activityInfo.packageName;
    }

    public static List<ResolveInfo> j() {
        return f.q().queryIntentServices(new Intent(InputMethod.SERVICE_INTERFACE), 4);
    }

    public static int k(String str, int i2) {
        try {
            return SystemProperties.getInt(str, i2);
        } catch (Exception unused) {
            return i2;
        }
    }

    public static List<ResolveInfo> l() {
        return f.q().queryIntentServices(new Intent(WallpaperService.SERVICE_INTERFACE), 4);
    }

    public static void m() {
        new j1.c("goToSleep").g(f.r()).d(Long.valueOf(SystemClock.uptimeMillis())).a();
    }

    public static boolean n(String str) {
        try {
            return f.q().getApplicationInfo(str, 0).enabled;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean o(String str) {
        return (str == null || (a.b.f11c.d(str, 0) & 256) == 0) ? false : true;
    }

    public static boolean p(int i2) {
        return (Configure.Property.IGNORE_MUTEX.b(false) || (i2 & 8) == 0) ? false : true;
    }

    public static boolean q(int i2, String str) {
        if (str == null) {
            return false;
        }
        return (i2 & 1) != 0 || str.equals(u0.b.J1) || str.startsWith("cld.navi");
    }

    public static boolean r(String str) {
        if (str == null) {
            return false;
        }
        return (a.b.f11c.d(str, 0) & 1) != 0 || str.equals(u0.b.J1) || str.startsWith("cld.navi");
    }

    public static boolean s(String str) {
        return (str == null || (a.b.f11c.d(str, 0) & 64) == 0) ? false : true;
    }

    public static boolean t(int i2) {
        return (i2 & 16) != 0;
    }

    public static boolean u(String str) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        if (str != null && (runningAppProcesses = f.d().getRunningAppProcesses()) != null) {
            for (int i2 = 0; i2 < runningAppProcesses.size(); i2++) {
                if (str.equals(runningAppProcesses.get(i2).processName)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean v(String str) {
        return (str == null || (a.b.f11c.d(str, 0) & 2) == 0) ? false : true;
    }

    public static boolean w(int i2) {
        return (i2 & 128) != 0;
    }

    public static boolean x(String str) {
        return (str == null || (a.b.f11c.d(str, 0) & 128) == 0) ? false : true;
    }

    public static boolean y(int i2) {
        return (i2 & 4) != 0;
    }

    public static boolean z() {
        return f.x().getWifiState() == 1;
    }
}

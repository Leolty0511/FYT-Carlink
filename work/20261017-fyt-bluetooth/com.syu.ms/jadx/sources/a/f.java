package a;

import android.app.ActivityManager;
import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.hardware.input.InputManager;
import android.location.LocationManager;
import android.media.AudioManager;
import android.net.ProxyProperties;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemProperties;
import android.util.Log;
import android.view.IRotationWatcher;
import android.view.IWindowManager;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import app.App;
import java.lang.reflect.Method;
import o1.q0;
import o1.s0;
import o1.u;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static DisplayManager f47a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Point f48b = new Point();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static LocationManager f49c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static View f50d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static WindowManager.LayoutParams f51e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static n1.e f52f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static ui.b f53g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static ui.b f54h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static n1.d f55i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static n1.b f56j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static n1.c f57k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static AssetManager f58l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static Resources f59m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static PackageManager f60n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static ActivityManager f61o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static WindowManager f62p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static AudioManager f63q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static PowerManager f64r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static IWindowManager f65s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static WifiManager f66t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static InputManager f67u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static ContentResolver f68v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static Handler f69w;

    public class a extends IRotationWatcher.Stub {
        @Override // android.view.IRotationWatcher
        public void onRotationChanged(int i2) {
            Log.e("Qin", "onRotationChanged ------------>>  rotation: " + i2);
            e.d();
            f.f62p.getDefaultDisplay().getSize(f.f48b);
            f.f51e.width = f.f48b.f137x;
            f.f51e.height = f.f48b.f138y;
            ui.b bVarV = f.v();
            if (bVarV instanceof ui.a) {
                ((ui.a) bVarV).n(f.f48b.f137x, f.f48b.f138y);
            }
            Log.e("Qin", "onRotationChanged ------------>>  rotation: " + i2 + " w: " + f.f48b.f137x + " y:" + f.f48b.f138y);
        }
    }

    public static void A(Application application) {
        f67u = (InputManager) application.getSystemService(Context.INPUT_SERVICE);
        f52f = new n1.e(application);
        f55i = new n1.d(application);
        f56j = new n1.b(application);
        f57k = new n1.c(application);
        f58l = application.getAssets();
        f59m = application.getResources();
        f60n = application.getPackageManager();
        f65s = WindowManagerGlobal.getWindowManagerService();
        f47a = (DisplayManager) application.getSystemService(Context.DISPLAY_SERVICE);
        f61o = (ActivityManager) application.getSystemService(Context.ACTIVITY_SERVICE);
        f62p = (WindowManager) application.getSystemService(Context.WINDOW_SERVICE);
        f63q = (AudioManager) application.getSystemService(Context.AUDIO_SERVICE);
        f68v = application.getContentResolver();
        f66t = (WifiManager) application.getSystemService("wifi");
        f64r = (PowerManager) application.getSystemService(Context.POWER_SERVICE);
        f50d = new View(application);
        f49c = (LocationManager) application.getSystemService("location");
        f69w = new Handler(Looper.getMainLooper());
        f62p.getDefaultDisplay().getSize(f48b);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.width = w();
        layoutParams.height = i();
        layoutParams.format = 1;
        layoutParams.type = (q0.v() || !u.k0(application, "com.syu.panoramic")) ? 2006 : WindowManager.LayoutParams.TYPE_DRAG;
        layoutParams.flags = 56;
        f51e = layoutParams;
        String str = u0.b.B3;
        if (str == null || str.isEmpty()) {
            u0.b.B3 = SystemProperties.get("persist.sys.syu.thirdplayer", ProxyProperties.LOCAL_EXCL_LIST);
        }
        E(new a());
    }

    public static String B() {
        return s0.m("ro.build.version.sdk", 16) >= 31 ? "/odm" : "/oem";
    }

    public static void C(ui.b bVar) {
        f54h = bVar;
    }

    public static void D(ui.b bVar) {
        f53g = bVar;
    }

    public static int E(IRotationWatcher iRotationWatcher) {
        try {
            Class<?>[] clsArrO = o(j().getClass(), "watchRotation");
            return Build.VERSION.SDK_INT >= 25 ? ((Integer) new j1.c("watchRotation").g(f65s).c(clsArrO).d(iRotationWatcher, 0).a()).intValue() : ((Integer) new j1.c("watchRotation").g(f65s).c(clsArrO).d(iRotationWatcher).a()).intValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    public static ActivityManager d() {
        return f61o;
    }

    public static AssetManager e() {
        return f58l;
    }

    public static AudioManager f() {
        if (f63q == null) {
            f63q = (AudioManager) App.c().getSystemService(Context.AUDIO_SERVICE);
        }
        return f63q;
    }

    public static ContentResolver g() {
        return f68v;
    }

    public static DisplayManager h() {
        return f47a;
    }

    public static int i() {
        return f48b.f138y;
    }

    public static IWindowManager j() {
        return f65s;
    }

    public static n1.c k() {
        return f57k;
    }

    public static InputManager l() {
        return f67u;
    }

    public static LocationManager m() {
        return f49c;
    }

    public static Handler n() {
        return f69w;
    }

    public static Class<?>[] o(Class<?> cls, String str) {
        for (Method method : cls.getDeclaredMethods()) {
            if (str.equals(method.getName())) {
                return method.getParameterTypes();
            }
        }
        return null;
    }

    public static n1.b p() {
        return f56j;
    }

    public static PackageManager q() {
        return f60n;
    }

    public static PowerManager r() {
        return f64r;
    }

    public static View s() {
        return f50d;
    }

    public static WindowManager.LayoutParams t() {
        return f51e;
    }

    public static ui.b u() {
        return f54h;
    }

    public static ui.b v() {
        return f53g;
    }

    public static int w() {
        return f48b.f137x;
    }

    public static WifiManager x() {
        return f66t;
    }

    public static WindowManager y() {
        return f62p;
    }

    public static n1.e z() {
        return f52f;
    }
}

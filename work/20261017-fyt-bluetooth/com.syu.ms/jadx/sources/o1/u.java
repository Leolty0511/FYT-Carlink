package o1;

import android.app.ActivityManager;
import android.app.IActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.hardware.Camera;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import android.util.TimedRemoteCaller;
import app.App;
import base.Configure;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import k0.nt;
import k0.qt;
import n0.j4;
import plugins.ZLink;

/* JADX INFO: loaded from: classes2.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f16983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static o f16984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Runnable f16985c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Runnable f16986d = new c();

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 4) {
                u.E();
            }
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            u.G(a.b.f26n);
        }
    }

    public class c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            u0.b.W1 = 1;
            z.c.f18185e.c();
        }
    }

    public class d implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            u.E0("com.android.winca.canbus", "com.winca.canbus");
        }
    }

    public static void A() {
        l.a().postDelayed(f16986d, 2000L);
    }

    public static void A0() {
        if (u0.b.f17347o != 0) {
            return;
        }
        if (g.e.a() == 11 || g.e.a() == 12 || g.e.a() == 13) {
            if (T(a.b.O)) {
                qt.f();
                return;
            } else {
                qt.t();
                return;
            }
        }
        if (!T(a.b.O)) {
            f(a.b.O);
            return;
        }
        if (!a.b.O.equals(Y0()) || s0.t(s0())) {
            return;
        }
        if (!j0(s0())) {
            J0(s0());
        } else {
            c.e.d().b();
            a.i.A();
        }
    }

    public static void B() {
        o oVar = f16984b;
        if (oVar == null || !oVar.a(1, null, null, null, null)) {
            z();
        }
    }

    public static List<ActivityManager.RunningTaskInfo> B0(int i2, final int i3) {
        return (List) a.f.d().getRunningTasks(i2).stream().filter(new Predicate() { // from class: o1.t
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return u.r0(i3, (ActivityManager.RunningTaskInfo) obj);
            }
        }).collect(Collectors.toList());
    }

    public static void C() {
        Intent intent = new Intent("com.syu.music.MService");
        intent.putExtra("play_mode", "change");
        try {
            App.c().startService(intent);
        } catch (Exception unused) {
        }
    }

    public static void C0(String str, String str2) {
        D0(str, str2, null, null);
    }

    public static void D(Intent intent) {
        intent.addFlags(270532608);
    }

    public static void D0(String str, String str2, String str3, String str4) {
        App appC = App.c();
        if (k0(appC, str2)) {
            Intent intent = new Intent(str);
            intent.setPackage(str2);
            if (!s0.t(str3) && !s0.t(str4)) {
                intent.putExtra(str3, str4);
            }
            try {
                appC.startService(intent);
            } catch (Exception unused) {
            }
        }
    }

    public static int E() {
        return G(a.b.f26n);
    }

    public static void E0(String str, String str2) {
        try {
            App.c().startService(new Intent(str));
        } catch (Exception e2) {
            e2.printStackTrace();
            C0(str, str2);
        }
    }

    public static void F(int i2) {
        m.a().postDelayed(new b(), i2);
    }

    public static void F0(String str, String str2) {
        App appC = App.c();
        if (k0(appC, str)) {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(str, str2));
            try {
                appC.startService(intent);
            } catch (Exception unused) {
            }
        }
    }

    public static int G(String str) {
        if (o0.e.f16774f == 0) {
            return 3;
        }
        if (o0.e.f16784k == 0) {
            return 4;
        }
        if (b0()) {
            return 1;
        }
        return f(str);
    }

    public static void G0() {
        f(Settings.ACTION_SETTINGS);
    }

    public static int H() {
        if (c0()) {
            return 1;
        }
        return f(a.b.H);
    }

    public static final int H0(String str, String str2) {
        ComponentName componentName = new ComponentName(str, str2);
        Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.addCategory(Intent.CATEGORY_LAUNCHER);
        intent.setComponent(componentName);
        intent.addFlags(270532608);
        try {
            App.c().startActivity(intent);
            return 2;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static String I() {
        String strO = s0.o("persist.launcher.embedded_pkg", ProxyProperties.LOCAL_EXCL_LIST);
        return strO.isEmpty() ? s0.o("persist.launcher.packagename", ProxyProperties.LOCAL_EXCL_LIST) : strO;
    }

    public static void I0() {
        C0("com.syu.air.AirService", "com.syu.air");
    }

    public static int J() {
        if (f0()) {
            return 1;
        }
        return f(a.b.f34v);
    }

    public static int J0(String str) {
        Intent launchIntentForPackage;
        if (k0(App.c(), str) && (launchIntentForPackage = App.c().getPackageManager().getLaunchIntentForPackage(str)) != null) {
            try {
                App.c().startActivity(launchIntentForPackage);
                return 2;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return 0;
    }

    public static boolean K(String str, String str2, String str3) {
        PackageManager packageManager = App.c().getPackageManager();
        Intent intent = new Intent();
        if (str3 != null) {
            intent.setAction(str3);
        }
        if (str2 != null) {
            intent.setClassName(str, str2);
        } else {
            intent.setPackage(str);
        }
        return !packageManager.queryIntentServices(intent, 0).isEmpty();
    }

    public static void K0() {
        J0("com.yh.devicehelper");
    }

    public static int L() {
        if (h0()) {
            return 1;
        }
        return g(a.b.U);
    }

    public static void L0() {
    }

    public static void M() {
        if (k0(App.c(), a.b.X)) {
            R0(a.b.X);
        } else {
            c.e.d().b();
            c.e.d().c(591);
        }
    }

    public static void M0() {
        if (k0(App.c().getApplicationContext(), "com.ilincar.data.chinamobile")) {
            Intent intent = new Intent();
            intent.setAction("com.android.upload.FYTService");
            intent.setPackage("com.ilincar.data.chinamobile");
            intent.putExtra("state", Camera.Parameters.FLASH_MODE_ON);
            try {
                App.c().startService(intent);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static int N(String str) {
        try {
            return a.f.q().getPackageInfo(str, 0).versionCode;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 1;
        }
    }

    public static void N0() {
        try {
            Intent intent = new Intent("com.syu.accessibility.servicestate");
            intent.putExtra("package_name", "com.syu.fytgesture");
            intent.putExtra("class_name", "com.syu.fytgesture.AccessibilityServiceGesture");
            intent.setFlags(268435456);
            intent.putExtra("enable", true);
            App.c().sendBroadcast(intent);
        } catch (Exception unused) {
        }
    }

    public static void O() {
        f(Settings.ACTION_SETTINGS);
    }

    public static void O0() {
        J0("com.cpsdna.mirror");
    }

    public static boolean P() {
        return s0.l("persist.syu.launcher.haspip", false) || s0.l("persist.launcher.embedded_window", false);
    }

    public static void P0(String str) {
        if (s0.j(u0.b.L1, "com.syu.voice")) {
            C0("com.sql.speech.dialog_show", "com.syu.voice");
            return;
        }
        if (k0(App.c(), "com.txznet.adapter")) {
            C0("com.sql.speech.dialog_show", "com.txznet.adapter");
            return;
        }
        if (k0(App.c(), "com.txzing.voiceassistant")) {
            C0("com.sql.speech.dialog_show", "com.txzing.voiceassistant");
            return;
        }
        if (s0.j(u0.b.L1, "com.txznet.smartadapter")) {
            l("txz.intent.action.smartwakeup.triggerRecordButton");
            return;
        }
        if (k0(App.c(), "com.tnt.hongsenapi")) {
            J0("com.tnt.hongsenapi");
            return;
        }
        if (s0.j(u0.b.L1, "com.google.android.apps.googleassistant")) {
            f(Intent.ACTION_VOICE_COMMAND);
        } else if (s0.j(u0.b.L1, "com.google.android.googlequicksearchbox")) {
            f(Intent.ACTION_VOICE_ASSIST);
        } else {
            J0(u0.b.L1);
        }
    }

    public static boolean Q() {
        return k0(App.c(), a.b.f22j);
    }

    public static void Q0() {
        l.a().postDelayed(new d(), TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
    }

    public static boolean R() {
        return T("com.syu.amp");
    }

    public static void R0(String str) {
        if (u0.b.f17347o != 0 || s0.t(str)) {
            return;
        }
        if (!T(str)) {
            f(str);
            return;
        }
        if (!str.equals(Y0()) || s0.t(s0())) {
            return;
        }
        if (!j0(s0())) {
            J0(s0());
        } else {
            c.e.d().b();
            a.i.A();
        }
    }

    public static boolean S(String str) {
        return Y0().equals(str);
    }

    public static void S0(String str) {
        if (u0.b.f17347o != 0 || s0.t(str)) {
            return;
        }
        if (!T(str)) {
            g(str);
            return;
        }
        if (str.equals(Y0())) {
            Log.e("Qin", "last app:" + s0() + " topApp:" + Y0() + " pkg:" + str);
            if (s0.t(s0())) {
                return;
            }
            if (!j0(s0())) {
                J0(s0());
            } else {
                c.e.d().b();
                a.i.A();
            }
        }
    }

    public static boolean T(String str) {
        if (str.equals(a.b.O) && g.f.f(11)) {
            return SystemProperties.get("persist.fyt.right.check", "0").equals("1");
        }
        return Y0().startsWith(str);
    }

    public static int T0() {
        if (V()) {
            k();
            return 2;
        }
        if (u0.b.F0 == 0) {
            return 0;
        }
        return f(a.b.f32t);
    }

    public static boolean U() {
        if (Q()) {
            return S(a.b.f22j) && u0.b.D == 8;
        }
        return T(a.b.f37y);
    }

    public static void U0() {
        String str = u0.b.J1;
        if (s0.l("persist.fyt.ui.txz", false) && !s0.t(str)) {
            u0.d.I3(133, 525);
            return;
        }
        if (e0() && d0(str)) {
            v0();
        } else if (Y0().equals(str)) {
            k();
        } else {
            v0();
        }
    }

    public static boolean V() {
        return T(a.b.f31s);
    }

    public static int V0() {
        String str = u0.b.B3;
        if (str == null) {
            return 1;
        }
        if (str.isEmpty()) {
            if (f.b.f1841d.f1844c.h()) {
                u0.b.f17311c.c(10);
            }
            return 1;
        }
        if (o0()) {
            return 1;
        }
        return g(u0.b.B3);
    }

    public static boolean W() {
        return T(a.b.f23k);
    }

    public static void W0() {
        f(Settings.ACTION_DATE_SETTINGS);
    }

    public static boolean X() {
        return T(a.b.C);
    }

    public static ComponentName X0() {
        List<ActivityManager.RunningTaskInfo> listB0 = B0(2, 0);
        if (listB0 == null || listB0.isEmpty()) {
            return g1.c.b().d();
        }
        ComponentName componentName = listB0.get(0).topActivity;
        ComponentName componentName2 = listB0.size() >= 2 ? listB0.get(1).topActivity : null;
        componentName.getPackageName();
        return "com.syu.carinfo.CarInfoActivity".equals(listB0.get(0).topActivity.getClassName()) ? componentName : componentName2;
    }

    public static boolean Y() {
        return T(a.b.K);
    }

    public static String Y0() {
        List<ActivityManager.RunningTaskInfo> listB0 = B0(2, 0);
        if (listB0 == null || listB0.isEmpty()) {
            return g1.c.b().f();
        }
        return "com.syu.carinfo.CarInfoActivity".equals(listB0.get(0).topActivity.getClassName()) ? listB0.size() == 2 ? listB0.get(1).topActivity.getPackageName() : ProxyProperties.LOCAL_EXCL_LIST : listB0.get(0).topActivity.getPackageName();
    }

    public static boolean Z() {
        return T(a.b.E);
    }

    public static int Z0() {
        if (d1.d.f1570c == 0) {
            return 3;
        }
        if (p0()) {
            return 1;
        }
        return f(a.b.f30r);
    }

    public static boolean a0() {
        return T(a.b.Q);
    }

    public static void a1() {
        if (h0.c.G == 1 || c.f.b().c(7)) {
            return;
        }
        if (h1.a.d().m()) {
            c.e.d().b().c(576);
            return;
        }
        if (!s0.t(u0.b.L1) && k0(App.c(), u0.b.L1)) {
            if (s0.j(u0.b.L1, "com.atoto.speechtotext")) {
                C0("com.atoto.speechtotext.wakeup", "com.atoto.speechtotext");
                return;
            } else {
                P0(u0.b.L1);
                return;
            }
        }
        if (k0(App.c(), "com.syu.voice")) {
            C0("com.sql.speech.dialog_show", "com.syu.voice");
            return;
        }
        if (k0(App.c(), "com.txznet.adapter")) {
            C0("com.sql.speech.dialog_show", "com.txznet.adapter");
            return;
        }
        if (k0(App.c(), "com.txzing.voiceassistant")) {
            C0("com.sql.speech.dialog_show", "com.txzing.voiceassistant");
            return;
        }
        if (k0(App.c(), "com.txznet.smartadapter")) {
            l("txz.intent.action.smartwakeup.triggerRecordButton");
            return;
        }
        if (k0(App.c(), "com.tnt.hongsenapi")) {
            J0("com.tnt.hongsenapi");
        } else if (k0(App.c(), "com.google.android.apps.googleassistant")) {
            f(Intent.ACTION_VOICE_COMMAND);
        } else if (k0(App.c(), "com.google.android.googlequicksearchbox")) {
            f(Intent.ACTION_VOICE_ASSIST);
        }
    }

    public static int b(int i2) {
        if (h0.c.G != 0 && i2 != 2) {
            return 2;
        }
        switch (i2) {
            case 1:
                x0();
                return 2;
            case 2:
                r();
                return 2;
            case 3:
                q();
                return 2;
            case 4:
                return E();
            case 5:
                return j();
            case 6:
                return Z0();
            case 7:
                return w0();
            case 8:
                return i();
            case 9:
                return c1();
            case 10:
                return V0();
            case 11:
                return x();
            case 12:
                A();
                return 2;
            case 13:
                if (!Configure.Property.BOOT_IGNORE_CAR_UI.b(false)) {
                    B();
                }
                return 2;
            default:
                return 0;
        }
    }

    public static boolean b0() {
        return T(a.b.f25m);
    }

    public static void b1() {
        if (h0.c.G == 1 || c.f.b().c(7)) {
            return;
        }
        if (h1.a.d().m()) {
            c.e.d().b().c(576);
            return;
        }
        if (!s0.t(u0.b.L1) && k0(App.c(), u0.b.L1)) {
            if (s0.j(u0.b.L1, "com.atoto.speechtotext")) {
                C0("com.atoto.speechtotext.wakeup", "com.atoto.speechtotext");
                return;
            } else {
                P0(u0.b.L1);
                return;
            }
        }
        if (k0(App.c(), "com.syu.voice")) {
            C0("com.sql.speech.dialog_show", "com.syu.voice");
            return;
        }
        if (k0(App.c(), "com.txznet.adapter")) {
            C0("com.sql.speech.dialog_show", "com.txznet.adapter");
            return;
        }
        if (k0(App.c(), "com.txzing.voiceassistant")) {
            C0("com.sql.speech.dialog_show", "com.txzing.voiceassistant");
            return;
        }
        if (k0(App.c(), "com.txznet.smartadapter")) {
            l("txz.intent.action.smartwakeup.triggerRecordButton");
            return;
        }
        if (ZLink.Y().d0() || s0.m("sys.carlink.type", 0) > 0) {
            c.e.d().b().c(576);
            return;
        }
        if (!s0.t(u0.b.L1) && k0(App.c(), u0.b.L1)) {
            if (s0.j(u0.b.L1, "com.atoto.speechtotext")) {
                C0("com.atoto.speechtotext.wakeup", "com.atoto.speechtotext");
                return;
            } else {
                P0(u0.b.L1);
                return;
            }
        }
        if (k0(App.c(), "com.tnt.hongsenapi")) {
            J0("com.tnt.hongsenapi");
        } else if (k0(App.c(), "com.google.android.apps.googleassistant")) {
            f(Intent.ACTION_VOICE_COMMAND);
        } else if (k0(App.c(), "com.google.android.googlequicksearchbox")) {
            f(Intent.ACTION_VOICE_ASSIST);
        }
    }

    public static void c() {
        if (u0.b.f17347o != 0) {
            return;
        }
        if (!T(a.b.Q)) {
            f(a.b.Q);
            return;
        }
        if (!a.b.Q.equals(Y0()) || s0.t(s0())) {
            return;
        }
        if (!j0(s0())) {
            J0(s0());
        } else {
            c.e.d().b();
            a.i.A();
        }
    }

    public static boolean c0() {
        return T(a.b.G);
    }

    public static int c1() {
        if (q0()) {
            return 1;
        }
        return f(a.b.B);
    }

    public static int d() {
        if (g0()) {
            return 1;
        }
        return f(a.b.J);
    }

    public static boolean d0(String str) {
        return P() && s0.j(str, I());
    }

    public static int e(Intent intent) {
        try {
            D(intent);
            App.c().startActivity(intent);
            return 2;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static boolean e0() {
        boolean zBooleanValue;
        Object objA = new j1.c("getService").f("android.app.ActivityManager").a();
        if (objA != null) {
            try {
                zBooleanValue = ((Boolean) new j1.c("getPinnedStackVisible").f(IActivityManager.descriptor).g(objA).a()).booleanValue();
            } catch (Exception unused) {
                zBooleanValue = false;
            }
        } else {
            zBooleanValue = false;
        }
        return zBooleanValue || s0.l("persist.launcher.embedded_window", false);
    }

    public static int f(String str) {
        if (str != null && !ProxyProperties.LOCAL_EXCL_LIST.equals(str.trim())) {
            try {
                Intent intent = new Intent(str);
                D(intent);
                b0.f("activityByIntentName " + str);
                App.c().startActivity(intent);
                return 2;
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    public static boolean f0() {
        return T(a.b.f33u);
    }

    public static int g(String str) {
        if (str != null && !ProxyProperties.LOCAL_EXCL_LIST.equals(str.trim())) {
            boolean z2 = true;
            if (!d0(str) && Y0().equals(str)) {
                return 1;
            }
            try {
                Intent launchIntentForPackage = a.f.q().getLaunchIntentForPackage(str);
                if (launchIntentForPackage == null) {
                    return 2;
                }
                D(launchIntentForPackage);
                if ("com.papago.M11SGMY".equals(str)) {
                    launchIntentForPackage.setPackage(null);
                }
                App.c().startActivity(launchIntentForPackage);
                boolean z3 = h0.c.G == 1;
                if (!h0.c.f2448m0) {
                    z2 = z3;
                }
                if (z2) {
                    t();
                }
                return 2;
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    public static boolean g0() {
        return T(a.b.I);
    }

    public static int h() {
        u0.d.I3(133, 529);
        Intent intent = new Intent("com.syu.home");
        String strO = s0.o("persist.lsec.launcher", ProxyProperties.LOCAL_EXCL_LIST);
        if (strO.isEmpty()) {
            strO = s0.o("ro.fyt.launcher", ProxyProperties.LOCAL_EXCL_LIST);
        }
        if (!strO.isEmpty()) {
            intent.setPackage(strO);
        }
        return e(intent);
    }

    public static boolean h0() {
        return S(a.b.U);
    }

    public static int i() {
        if (U()) {
            return 1;
        }
        return f(a.b.f38z);
    }

    public static boolean i0() {
        return S(a.b.Y);
    }

    public static int j() {
        if (V()) {
            return 1;
        }
        if (u0.b.F0 == 0) {
            return 0;
        }
        return f(a.b.f32t);
    }

    public static boolean j0(String str) {
        ArrayList arrayList = new ArrayList();
        PackageManager packageManagerQ = a.f.q();
        Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.addCategory(Intent.CATEGORY_HOME);
        for (ResolveInfo resolveInfo : packageManagerQ.queryIntentActivities(intent, 65536)) {
            arrayList.add(resolveInfo.activityInfo.packageName);
            System.out.println(resolveInfo.activityInfo.packageName);
        }
        if (arrayList.size() == 0) {
            return false;
        }
        return arrayList.contains(str);
    }

    public static void k() {
        List<ActivityManager.RunningTaskInfo> listB0 = B0(6, 0);
        if (listB0 == null) {
            a.i.A();
            return;
        }
        if (listB0.size() < 2) {
            a.i.A();
            return;
        }
        try {
            Intent intent = new Intent();
            D(intent);
            if (j0(listB0.get(1).topActivity.getPackageName())) {
                a.i.A();
            } else if (!"com.syu.carinfo.CarInfoActivity".equals(listB0.get(1).topActivity.getClassName())) {
                intent.setComponent(listB0.get(1).topActivity);
            } else if (listB0.size() >= 3) {
                intent.setComponent(listB0.get(2).topActivity);
            }
            D(intent);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static final boolean k0(Context context, String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        ApplicationInfo applicationInfo = null;
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(str, 0);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (applicationInfo == null) {
            return false;
        }
        return applicationInfo.enabled;
    }

    public static void l(String str) {
        App.c().sendBroadcast(new Intent(str));
    }

    public static final boolean l0(String str) {
        return k0(App.c(), str);
    }

    public static void m(String str, String str2) {
        if (k0(App.c(), str2)) {
            Intent intent = new Intent(str);
            intent.setPackage(str2);
            intent.addFlags(32);
            App.c().sendBroadcast(intent);
        }
    }

    public static boolean m0() {
        boolean zQ = Q();
        boolean zS = S(a.b.f22j);
        if (zQ) {
            return zS && u0.b.D == 7;
        }
        return T(a.b.f36x);
    }

    public static void n(String str, String str2, int i2) {
        Intent intent = new Intent(str);
        Bundle bundle = new Bundle();
        bundle.putInt(str2, i2);
        intent.putExtras(bundle);
        App.c().sendBroadcast(intent);
    }

    public static boolean n0() {
        if (Q()) {
            return u0.b.D == 1 && T(a.b.f22j);
        }
        return T(a.b.f27o);
    }

    public static void o(String str, String str2, int i2) {
        Intent intent = new Intent(str);
        intent.putExtra(str2, i2);
        App.c().sendBroadcast(intent);
    }

    public static boolean o0() {
        return S(u0.b.B3);
    }

    public static void p() {
        n("com.syu.ms.bt", "cmd", 4);
        if (j4.f16464b == 41) {
            C0("com.syu.bt.byav", "com.syu.video");
        } else {
            C0("com.syu.bt.byav", "com.syu.bt");
        }
    }

    public static boolean p0() {
        return T(a.b.f29q);
    }

    public static void q() {
        n("com.syu.ms.bt", "cmd", 5);
        if (Q()) {
            Intent intent = new Intent("com.syu.btav");
            intent.setPackage(a.b.f22j);
            e(intent);
        } else if (u0.b.X3) {
            Intent intent2 = new Intent("com.syu.bt");
            intent2.putExtra("launcher", "btav");
            e(intent2);
        } else if (j4.f16464b == 41) {
            C0("com.syu.bt.byav.force", "com.syu.video");
        } else {
            C0("com.syu.bt.byav.force", "com.syu.bt");
        }
    }

    public static boolean q0() {
        return T(a.b.A);
    }

    public static void r() {
        if (ZLink.Y().d0() || h1.a.d().j()) {
            return;
        }
        Log.e("BT", "================>>>>  btPageDialByKey ");
        n("com.syu.ms.bt", "cmd", 2);
        if (!u0.b.X3) {
            C0("com.syu.bt.bykey", "com.syu.bt");
            return;
        }
        Intent intent = new Intent("com.syu.bt");
        intent.putExtra("launcher", "bt");
        e(intent);
    }

    public static /* synthetic */ boolean r0(int i2, ActivityManager.RunningTaskInfo runningTaskInfo) {
        int iIntValue;
        try {
            iIntValue = ((Integer) new j1.b("android.app.TaskInfo", "displayId").a(runningTaskInfo)).intValue();
        } catch (Exception unused) {
            iIntValue = 0;
        }
        return iIntValue == i2;
    }

    public static void s() {
        if (ZLink.Y().d0() || h1.a.d().f()) {
            return;
        }
        Log.e("BT", "================>>>>  SHOW PAGE ");
        n("com.syu.ms.bt", "cmd", 3);
        C0("com.syu.bt.bywork", "com.syu.bt");
    }

    public static String s0() {
        return g1.c.b().c();
    }

    public static void t() {
        if (ZLink.Y().d0() || h1.a.d().f()) {
            return;
        }
        Log.e("BT", "================>>>>  SHOW PIP ");
        n("com.syu.ms.bt", "cmd", 1);
        C0("com.syu.bt.pip", "com.syu.bt");
    }

    public static void t0() {
        v0();
    }

    public static int u() {
        C0("com.syu.screen.cali", "com.syu.calibration");
        return 2;
    }

    public static void u0() {
        String str = u0.b.J1;
        if (str == null || str.equals(ProxyProperties.LOCAL_EXCL_LIST)) {
            u0.d.C3(0);
            return;
        }
        try {
            Intent launchIntentForPackage = a.f.q().getLaunchIntentForPackage(str);
            if (q0.v() && u0.b.J1.equals(str)) {
                launchIntentForPackage.putExtra("com.syu.fyt", "fytSecond");
            }
            D(launchIntentForPackage);
            App.c().startActivity(launchIntentForPackage);
        } catch (Exception unused) {
        }
    }

    public static int v() {
        if (X()) {
            return 1;
        }
        return f(a.b.D);
    }

    public static void v0() {
        String str = u0.b.J1;
        if (str == null || str.equals(ProxyProperties.LOCAL_EXCL_LIST)) {
            u0.d.C3(0);
        } else if (g(str) == 0) {
            u0.d.C3(0);
        }
    }

    public static void w() {
        f("com.syu.canbus.update");
    }

    public static int w0() {
        if (m0()) {
            return 1;
        }
        return f(a.b.f36x);
    }

    public static int x() {
        if (Y()) {
            return 1;
        }
        return f(a.b.L);
    }

    public static void x0() {
        if (nt.K != 0 || m1.c.c(147, 0) != 0) {
            x();
        } else {
            if (n0()) {
                return;
            }
            f(a.b.f28p);
        }
    }

    public static void y() {
        int i2 = f16983a;
        if (i2 == 0) {
            if (Z()) {
                return;
            }
            f(a.b.F);
        } else {
            if (i2 != 1) {
                return;
            }
            if (Z()) {
                k();
            } else {
                f(a.b.F);
            }
        }
    }

    public static void y0() {
        if (k0(App.c(), a.b.f10b0)) {
            R0(a.b.f10b0);
        } else {
            c.e.d().b();
            c.e.d().c(592);
        }
    }

    public static int z() {
        if (a0()) {
            return 1;
        }
        return f(a.b.R);
    }

    public static void z0() {
        a.i.Q(187);
    }
}

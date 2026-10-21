package g1;

import a.i;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;
import g.f;
import java.util.Iterator;
import java.util.List;
import o1.m;
import o1.p0;
import o1.s;
import o1.s0;
import o1.u;
import plugins.DabDev;
import plugins.ZLink;
import u0.h;
import y0.j;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class c implements Runnable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c f2389d = new c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f2390e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f2391f = "net.easyconn";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ComponentName f2392a = new ComponentName(ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f2393b = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Runnable f2394c = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m.a().removeCallbacks(this);
            if (h0.c.G != 1) {
                return;
            }
            boolean zK = h0.e.K();
            if (h0.c.G == 1 && zK) {
                SystemProperties.set("syu.bt.show.pip", "true");
            }
            if (!zK) {
                if (u.T(a.b.O)) {
                    return;
                }
                u.f("com.syu.bt");
            } else if (zK && SystemProperties.getBoolean("syu.bt.show.pip", false)) {
                u.t();
            }
        }
    }

    public c() {
        Thread thread = new Thread(this);
        thread.setName("MonitorTopApp");
        thread.start();
    }

    public static c b() {
        return f2389d;
    }

    public static void g(String str, String str2) {
        boolean z2 = h0.c.G == 1;
        if (h0.c.f2448m0) {
            z2 = true;
        }
        o1.d<String, s> dVar = a.b.f13d;
        s sVarE = dVar.e(str);
        a.b.f15e = sVarE;
        if (sVarE != null) {
            sVarE.R(false);
        }
        s sVarE2 = dVar.e(str2);
        a.b.f15e = sVarE2;
        if (sVarE2 != null) {
            sVarE2.R(true);
        }
        if (f.f(5)) {
            s sVar = a.b.f19g;
            if (sVar != null) {
                sVar.R(false);
            }
            s sVarE3 = a.b.f17f.e(str2);
            a.b.f19g = sVarE3;
            if (sVarE3 != null) {
                sVarE3.R(true);
            }
        }
        int iD = a.b.f11c.d(str2, 0);
        if (i.q(iD, str2)) {
            f2390e = 1;
            g1.a.f2386a.c();
            u0.d.I3(113, 1);
        } else {
            f2390e = 0;
            g1.a.f2386a.c();
            u0.d.I3(113, 0);
        }
        if (i.q(iD, str2)) {
            a.e.e(1);
            i.Y(str2);
        } else if (i.v(str2)) {
            k.s(1, 0, 90);
            if (!p0.g(u0.b.B3, str2) && u0.b.D3) {
                i.K(10);
                i.C(u0.b.B3);
                u0.b.D3 = false;
                h hVar = u0.b.f17311c;
                if (hVar instanceof u0.a) {
                    ((u0.a) hVar).i(null);
                }
            }
            if (str2.equals("com.syu.dvr") || str2.equals("com.syu.onlineradio")) {
                if (!z2 && u0.b.D != 10 && f.b.f1841d.f1844c.h()) {
                    u0.b.f17311c.c(10);
                }
                h hVar2 = u0.b.f17311c;
                if (hVar2 instanceof u0.a) {
                    ((u0.a) hVar2).i(str2);
                }
                if (i.p(iD)) {
                    u0.b.D3 = true;
                }
            } else if (!str2.startsWith("com.syu")) {
                if (!z2 && u0.b.D != 10 && f.b.f1841d.f1844c.h()) {
                    u0.b.f17311c.c(10);
                }
                h hVar3 = u0.b.f17311c;
                if (hVar3 instanceof u0.a) {
                    ((u0.a) hVar3).i(str2);
                }
                if (i.p(iD)) {
                    u0.b.D3 = true;
                }
            }
        } else if (a.b.T.equals(str2)) {
            k.s(1, 0, 90);
            u0.b.f17311c.c(2);
        } else if (i.x(str2)) {
            k.s(1, 0, 90);
            u0.b.f17311c.c(16);
        } else if (!e.f.n(str2)) {
            if (u.d0(str2)) {
                return;
            }
            Log.e("Qin", " newPackage = " + str2 + "   ModuleSound.getInstance().isIgnored(newPackage) : " + j.a3().f3(str2));
            if (j.a3().f3(str2)) {
                return;
            }
            k.s(1, 0, 90);
            if ((y0.f.O0.d(str2, 0) != 0) && !i.t(iD) && !str2.startsWith("com.syu") && !i.q(iD, str2) && !i.y(iD)) {
                if (!z2 && u0.b.D != 10 && f.b.f1841d.f1844c.h()) {
                    u0.b.f17311c.c(10);
                }
                h hVar4 = u0.b.f17311c;
                if (hVar4 instanceof u0.a) {
                    ((u0.a) hVar4).i(str2);
                }
            }
        }
        if (TextUtils.isEmpty(str2) || !str2.startsWith("com.antutu")) {
            return;
        }
        i.D();
    }

    public final void a(String str) {
        if (DabDev.Y(str)) {
            k.s(1, 0, 209);
        } else if (str.equals(f2391f)) {
            k.s(1, 0, 210);
        } else {
            k.s(1, 0, 208);
        }
    }

    public String c() {
        return this.f2393b;
    }

    public ComponentName d() {
        return this.f2392a;
    }

    public final String e() {
        ComponentName componentName = this.f2392a;
        return componentName == null ? ProxyProperties.LOCAL_EXCL_LIST : componentName.getClassName();
    }

    public String f() {
        ComponentName componentName = this.f2392a;
        return componentName == null ? ProxyProperties.LOCAL_EXCL_LIST : componentName.getPackageName();
    }

    public final String h() {
        String packageName;
        if (a.b.f16e0 != 1) {
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
        ComponentName componentName = null;
        List<ActivityManager.RunningTaskInfo> listB0 = u.B0(3, 0);
        if (listB0 != null && !listB0.isEmpty()) {
            Iterator<ActivityManager.RunningTaskInfo> it = listB0.iterator();
            while (true) {
                if (!it.hasNext()) {
                    packageName = ProxyProperties.LOCAL_EXCL_LIST;
                    break;
                }
                componentName = it.next().topActivity;
                if (!"com.syu.carinfo.CarInfoActivity".equals(componentName.getClassName()) && !u.d0(componentName.getPackageName())) {
                    packageName = componentName.getPackageName();
                    break;
                }
            }
        } else {
            packageName = ProxyProperties.LOCAL_EXCL_LIST;
            break;
        }
        if (componentName == null) {
            componentName = new ComponentName(ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
        }
        if (!this.f2392a.equals(componentName)) {
            String strF = f();
            Log.e("Qin", " top Act from: " + this.f2392a + "  to " + componentName);
            g(strF, packageName);
            if (!s0.j(strF, packageName)) {
                this.f2393b = strF;
            }
            this.f2392a = componentName;
            f();
            u0.d.K3(138, f(), e());
            if (h0.c.G != 0 && !a.b.f24l.equals(packageName) && u0.b.f17347o == 0 && h0.c.f2444k0 && !h0.c.f2446l0 && !ZLink.Y().d0() && !h1.a.d().f()) {
                m.a().removeCallbacks(this.f2394c);
                m.a().postDelayed(this.f2394c, 600L);
            }
        }
        String strF2 = f();
        a(strF2);
        return strF2;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            h();
            i.a0(500L);
        }
    }
}

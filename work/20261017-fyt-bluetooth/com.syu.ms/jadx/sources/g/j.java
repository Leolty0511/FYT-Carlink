package g;

import android.annotation.SuppressLint;
import android.media.AudioManager;
import android.net.ProxyProperties;
import android.os.Handler;
import android.os.SystemProperties;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.util.TimedRemoteCaller;
import app.App;
import chip.Chip;
import com.syu.jni.ToolsJni;
import k0.rt;
import o1.d0;
import o1.s;
import o1.s0;
import o1.u;
import o1.y;
import util.log.LogType;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"NewApi"})
public class j extends o {
    public final String A0;
    public final String B0;
    public final Runnable C0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public TelephonyManager f2262o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public SubscriptionManager f2263p0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public final s f2268u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public final s f2269v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public final Runnable f2270w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public final o1.p f2271x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public final Runnable f2272y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public final String f2273z0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public int f2261n0 = 0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public final int[] f2264q0 = {64, 8, 0, 65, 1, 248, 37, 8, 38, 0, 39, 3, 64, 0};

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final int[] f2265r0 = {64, 8, 0, 66, 1, 248, 37, 8, 38, 1, 39, 5, 64, 0};

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final int[] f2266s0 = {64, 8, 0, 68, 37, 19, 38, 6, 39, 12, 64, 0};

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public final o1.p f2267t0 = new a();

    public class a implements o1.p {
        public a() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            try {
                int[] iArr = j.this.f2265r0;
                int iIntValue = ((Integer) obj).intValue();
                if (iIntValue == 0 || iIntValue == 1) {
                    iArr = j.this.f2264q0;
                } else if (iIntValue == 2 || iIntValue == 3) {
                    iArr = j.this.f2265r0;
                } else if (iIntValue == 6 || iIntValue == 7) {
                    iArr = j.this.f2266s0;
                }
                e1.c cVarN = e1.c.n();
                if (!(cVarN instanceof e1.g) && (cVarN instanceof e1.e)) {
                    ((e1.e) cVarN).K(iArr);
                }
            } catch (Exception unused) {
            }
        }
    }

    public class b implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Integer f2275a = null;

        public b() {
        }

        @Override // o1.s
        public void R(boolean z2) {
            int i2 = j.this.f2261n0;
            if (i2 != 1) {
                if (z2 && i2 == 0) {
                    ToolsJni.setUsbIndex(2, 0);
                    return;
                }
                return;
            }
            if (z2) {
                this.f2275a = Integer.valueOf(ToolsJni.getUsbIndex());
                ToolsJni.setUsbIndex(2, 0);
                return;
            }
            Integer num = this.f2275a;
            if (num != null) {
                ToolsJni.setUsbIndex(0, num.intValue());
                this.f2275a = null;
            }
        }
    }

    public class c implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Integer f2277a = null;

        public c() {
        }

        @Override // o1.s
        public void R(boolean z2) {
            int i2 = j.this.f2261n0;
            if (i2 != 1) {
                if (i2 == 0) {
                    ToolsJni.setUsbIndex(1, 0);
                }
            } else {
                if (z2) {
                    this.f2277a = Integer.valueOf(ToolsJni.getUsbIndex());
                    int i3 = SystemProperties.getInt("persist.lsec7731.DVRHdPort", 0);
                    ToolsJni.setUsbIndex(0, i3);
                    u0.d.I3(162, i3);
                    return;
                }
                Integer num = this.f2277a;
                if (num != null) {
                    ToolsJni.setUsbIndex(0, num.intValue());
                    u0.d.I3(162, this.f2277a.intValue());
                    this.f2277a = null;
                }
            }
        }
    }

    public class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2279a = -1;

        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = this.f2279a;
            int i3 = u0.b.n4;
            if (i2 == i3) {
                return;
            }
            this.f2279a = i3;
            if (i3 == 0) {
                new j1.c("setParameter").g(a.f.f()).e(AudioManager.class).d("handleFm", "0").a();
            }
        }
    }

    public class e implements o1.p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f2281a = ProxyProperties.LOCAL_EXCL_LIST;

        public e() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null || !(obj instanceof String)) {
                return;
            }
            String str = (String) obj;
            if (str.isEmpty() || str.equals(this.f2281a)) {
                return;
            }
            String str2 = this.f2281a;
            if (str2 != null && !str2.isEmpty()) {
                a.b.f13d.i(this.f2281a);
            }
            this.f2281a = str;
            a.f.p().t(LogType.DVR, "================>>> change dvrPkg:" + this.f2281a);
            a.b.f13d.h(this.f2281a, j.this.f2269v0);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j.this.Y();
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            if (u0.b.o4 != 0 || u0.b.f17347o != 0) {
                q1.a.f("/sys/devices/system/cpu/cpufreq/policy0/scaling_min_freq", "1100000");
                q1.a.f("/sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq", "1100000");
            } else if (u0.b.o4 == 0 && u0.b.f17347o == 0) {
                q1.a.f("/sys/devices/system/cpu/cpufreq/policy0/scaling_min_freq", "768000");
                q1.a.f("/sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq", "1300000");
            }
        }
    }

    public class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f2285a;

        public h(int i2) {
            this.f2285a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.n4 != 1) {
                return;
            }
            String name = TelephonyManager.class.getName();
            TelephonyManager telephonyManager = j.this.f2262o0;
            Class cls = Integer.TYPE;
            Log.e("wake", String.format("002 ---- >  Subid: %d NetworkType to type: %d, result: ", Integer.valueOf(this.f2285a), 1) + ((Boolean) d0.e(name, telephonyManager, "setPreferredNetworkType", new Class[]{cls, cls}, Integer.valueOf(this.f2285a), 2)).booleanValue());
        }
    }

    public j() {
        b bVar = new b();
        this.f2268u0 = bVar;
        this.f2269v0 = new c();
        this.f2270w0 = new d();
        this.f2271x0 = new e();
        this.f2272y0 = new f();
        this.f2273z0 = "/sys/devices/system/cpu/cpufreq/policy0/scaling_min_freq";
        this.A0 = "/sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq";
        this.B0 = "/sys/devices/system/cpu/cpufreq/policy0/scaling_governor";
        this.C0 = new g();
        this.f2262o0 = (TelephonyManager) new j1.c("getDefault").e(TelephonyManager.class).a();
        this.f2263p0 = SubscriptionManager.from(App.c());
        this.f607m = !g.e.j(64);
        y0.f.H0 = 105.0f;
        y0.f.I0 = 100.0f;
        u0.b.I3 = 3;
        u.C0("com.syu.flashEQ", "com.syu.eq");
        if (!this.f606l.equals("818")) {
            a.b.f13d.h("net.easyconn", bVar);
        }
        int i2 = SystemProperties.getInt("ro.lsec7731.UsbHdPort", -1);
        if (i2 >= 0) {
            ToolsJni.setUsbIndex(0, i2);
        }
        if (g.e.l()) {
            Chip.f591d0 = 400;
            U(false);
            m1.c.i(197);
            m1.c.i(198);
            m1.c.i(199);
            m1.c.i(206);
            m1.c.i(207);
            m1.c.i(209);
            rt.a3().i3(g.e.k());
            u0.b.w4 = 1;
            u0.b.x4 = 1;
            y0.f.f18048f1 = 1;
            y0.f.f18054h1 = 1;
            if (s0.o("ro.fyt.realplatform", ProxyProperties.LOCAL_EXCL_LIST).equals("809-1")) {
                y0.f.f18054h1 = 0;
            }
            u0.b.A4 = 1;
            u0.b.P3 = 1;
        }
    }

    @Override // g.o, chip.Chip
    public String C() {
        if ("817".equals(this.f606l)) {
            return "6911";
        }
        return "863".equals(this.f606l) ? ProxyProperties.LOCAL_EXCL_LIST : super.C();
    }

    @Override // g.o, chip.Chip
    public boolean M() {
        return false;
    }

    public void Y() {
        Object objD = d0.d(SubscriptionManager.class.getName(), "getDefaultSubscriptionId", new Object[0]);
        Log.e("wake", "000 ---- >  checkNetworkType getSubid: " + objD);
        if (objD != null) {
            try {
                int iIntValue = ((Integer) objD).intValue();
                String name = TelephonyManager.class.getName();
                TelephonyManager telephonyManager = this.f2262o0;
                Class cls = Integer.TYPE;
                boolean zBooleanValue = ((Boolean) d0.e(name, telephonyManager, "setPreferredNetworkType", new Class[]{cls, cls}, Integer.valueOf(iIntValue), 1)).booleanValue();
                Log.e("wake", String.format("001 ---- >  Subid: %d NetworkType to type: %d, result: ", Integer.valueOf(iIntValue), 1) + zBooleanValue);
                if (zBooleanValue) {
                    this.K.postDelayed(new h(iIntValue), TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public String Z() {
        return this.f606l;
    }

    @Override // g.o, chip.Chip, g.g
    public void a() {
        u0.c.f17383j.d(this.C0);
        u0.c.f17379f.d(this.C0);
        u0.c.P.d(this.f2267t0);
        y yVar = u0.c.f17381h;
        yVar.d(this.f2270w0);
        o1.d<String, s> dVar = a.b.f13d;
        dVar.i("com.fvision.camera");
        dVar.i("com.gp.dvr");
        dVar.i("com.sicadroid.ucam_car");
        dVar.i("com.williexing.android.apps.xcdvr1");
        dVar.i("com.ankai.cardvr");
        u0.i.l3().f17468n.d(this.f2271x0);
        y0.g.f18100j.d(this.f2338j0);
        y yVar2 = u0.c.f17376c;
        yVar2.d(this.f597c0);
        if (g.e.p() == 48) {
            n();
            yVar2.d(this.G);
            yVar.d(this.G);
        } else if (s0.o("ro.fyt.realplatform", ProxyProperties.LOCAL_EXCL_LIST).equalsIgnoreCase("813CM")) {
            yVar2.d(this.G);
            yVar.d(this.G);
        }
        super.a();
    }

    public void a0(int i2) {
        if (this.f2261n0 != i2) {
            this.f2261n0 = i2;
        }
    }

    @Override // g.o, chip.Chip, g.g
    public void b() {
        super.b();
        u0.c.f17383j.a(this.C0, 0);
        u0.c.f17379f.a(this.C0, 1);
        u0.c.P.a(this.f2267t0);
        y yVar = u0.c.f17381h;
        yVar.a(this.f2270w0, 1);
        if (!this.f606l.equals("818") && !this.f606l.equals("815")) {
            o1.d<String, s> dVar = a.b.f13d;
            dVar.h("com.fvision.camera", this.f2269v0);
            dVar.h("com.fvsm.camera", this.f2269v0);
            dVar.h("com.fvision.cameradouble", this.f2269v0);
            dVar.h("com.gp.dvr", this.f2269v0);
            dVar.h("com.sicadroid.ucam_car", this.f2269v0);
            dVar.h("com.williexing.android.apps.xcdvr1", this.f2269v0);
            dVar.h("com.synmoon.carkit", this.f2269v0);
            dVar.h("com.ankai.cardvr", this.f2269v0);
            dVar.h("com.gp.dvr", this.f2269v0);
            dVar.h("com.fh.dvr", this.f2269v0);
        }
        u0.i.l3().f17468n.a(this.f2271x0);
        if (g.e.l()) {
            if (g.e.p() == 48) {
                m1.c.i(208);
                ToolsJni.setInputForGpio(8, 1);
                y0.g.f18100j.a(this.f2338j0, 1);
                if (y0.f.f18054h1 == 1) {
                    u0.c.f17376c.a(this.G, 0);
                    yVar.a(this.G, 1);
                    this.f613s.postDelayed(this.f2339k0, 100L);
                }
            } else if (s0.o("ro.fyt.realplatform", ProxyProperties.LOCAL_EXCL_LIST).equalsIgnoreCase("813CM")) {
                m1.c.i(208);
                y0.g.f18100j.a(this.f2338j0, 1);
                if (y0.f.f18054h1 == 1) {
                    u0.c.f17376c.a(this.G, 0);
                    yVar.a(this.G, 1);
                    this.f613s.postDelayed(this.f2339k0, 100L);
                }
            }
            u0.c.f17376c.a(this.f597c0, 1);
        }
    }

    @Override // chip.Chip
    public void g(int i2) {
        Handler handler;
        if (i2 == 1) {
            J(i2 != 1);
            Log.e("wake", "==============================>>>> 0002     locationEnable false");
        }
        Handler handler2 = this.f613s;
        if (handler2 != null) {
            handler2.removeCallbacks(this.f2272y0);
        }
        super.g(i2);
        if (i2 == 1) {
            return;
        }
        if (!(u0.b.J0 == 1) || (handler = this.f613s) == null) {
            return;
        }
        handler.postDelayed(this.f2272y0, 3000L);
    }

    @Override // chip.Chip
    public String t(String str) {
        this.f598d = "/dev/i2c-1";
        return super.t(str);
    }

    @Override // chip.Chip
    public String u() {
        if (s0.t(this.f602h)) {
            this.f602h = "/dev/ttyS1";
        }
        return super.u();
    }

    @Override // chip.Chip
    public String x() {
        if (g.e.k() && !"/dev/ttyS2".equals(this.f601g)) {
            this.f601g = "/dev/ttyS2";
        }
        return super.x();
    }

    @Override // chip.Chip
    public int z() {
        int iZ = super.z();
        if (this.f606l.equals("816") || ((this.f606l.equals("818") || this.f606l.equals("815") || this.f606l.equals("855")) && !s0.o("ro.fyt.realplatform", ProxyProperties.LOCAL_EXCL_LIST).contains("809-1"))) {
            return 69;
        }
        if (this.f606l.equals("817")) {
            return 43;
        }
        return iZ;
    }
}

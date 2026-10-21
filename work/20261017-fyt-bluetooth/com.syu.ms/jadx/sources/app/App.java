package app;

import android.annotation.SuppressLint;
import android.app.Application;
import android.graphics.Paint;
import android.net.ProxyProperties;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.text.format.DateUtils;
import android.util.Log;
import android.view.View;
import base.Configure;
import com.syu.jni.ToolsJni;
import com.syu.ms.R;
import java.io.File;
import k0.qt;
import n0.j4;
import n0.k4;
import o1.l;
import o1.m;
import o1.q0;
import o1.u;
import ui.Bar;
import util.log.LogRecorder;
import z.k;

/* JADX INFO: loaded from: classes.dex */
public class App extends Application {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static App f218b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static PowerManager.WakeLock f219c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Thread f220a = new b("Mcu-");

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public PowerManager f221a;

        public a() {
            this.f221a = (PowerManager) App.this.getSystemService(PowerManager.class);
        }

        @Override // java.lang.Runnable
        public void run() {
            l.a().removeCallbacks(this);
            if (a.b.f16e0 != 1) {
                boolean zEquals = "1".equals(SystemProperties.get("service.bootanim.exit", "0"));
                boolean zEquals2 = "1".equals(SystemProperties.get("sys.boot_completed", "0"));
                boolean zEquals3 = "1".equals(SystemProperties.get("sys.warnning.exit", "1"));
                Log.e("Boot", "bootAnimExit : " + zEquals + " bootCompleted : " + zEquals2 + " warnningExit : " + zEquals3);
                if ((zEquals && zEquals2) && zEquals3) {
                    a.e.c(1);
                    App.this.m();
                }
            }
            if (u0.b.f17323g != 1) {
                Log.e("Boot", " screen on manager.isInteractive() : " + this.f221a.isInteractive());
                u0.d.k3(this.f221a.isInteractive() ? 1 : 0);
            }
            Log.e("Boot", " DataApp.sBootAnimOver : " + a.b.f16e0 + "  DataMain.sScreenOn : " + u0.b.f17323g);
            if (a.b.f16e0 == 1 && u0.b.f17323g == 1) {
                return;
            }
            l.a().postDelayed(this, 200L);
        }
    }

    public class b extends Thread {
        public b(String str) {
            super(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            byte[] bArrCmd_148_read_data = ToolsJni.cmd_148_read_data(2, 170);
            u0.b.f17305a = bArrCmd_148_read_data != null && bArrCmd_148_read_data.length >= 2 && (bArrCmd_148_read_data[0] & 255) == 85 && (bArrCmd_148_read_data[1] & 255) == 170;
            Log.e("MCU", "mcuRecognition ===== DataMain.newMcu : " + u0.b.f17305a);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (g.e.a()) {
                case 1:
                case 3:
                    a.f.k().l(0, "ic error", App.c().getResources().getString(R.string.ic_error) + 1, Paint.Align.CENTER, 50, -1, 60, 2147483392);
                    break;
                case 2:
                case 8:
                default:
                    a.b.f7a = 1;
                    break;
                case 4:
                case 5:
                case 6:
                case 7:
                case 9:
                case 10:
                case 11:
                    a.b.f7a = 1;
                    break;
            }
        }
    }

    public class d implements ui.a.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f225a = 24;

        public d() {
        }

        @Override // ui.a.g
        public int a() {
            return this.f225a;
        }

        @Override // ui.a.g
        public String b(int i2, int i3) {
            boolean zF = g.f.f(11);
            String str = zF ? "ui/vol/syu_htop/7870/" : "ui/vol/syu_htop/";
            if (!zF) {
                if (i2 >= 1400) {
                    String str2 = str + "1920/";
                    this.f225a = 38;
                    return str2;
                }
                if (i2 > 1060) {
                    String str3 = str + "1280/";
                    this.f225a = 28;
                    return str3;
                }
                String str4 = str + "1024/";
                this.f225a = 24;
                return str4;
            }
            if (i2 >= 2000) {
                String str5 = str + "2000/";
                this.f225a = 45;
                return str5;
            }
            if (i2 >= 1400) {
                String str6 = str + "1920/";
                this.f225a = 38;
                return str6;
            }
            if (i2 > 1060) {
                String str7 = str + "1280/";
                this.f225a = 28;
                return str7;
            }
            String str8 = str + "1024/";
            this.f225a = 24;
            return str8;
        }
    }

    public class e implements Bar.a {
        public e() {
        }

        @Override // ui.Bar.a
        public void a(int i2, boolean z2) {
            if (z2) {
                y0.h.u0(i2);
            }
        }

        @Override // ui.Bar.a
        public void b() {
            ui.b bVarV = a.f.v();
            if (bVarV instanceof ui.a) {
                ((ui.a) bVarV).o();
            }
        }

        @Override // ui.Bar.a
        public void c() {
        }

        @Override // ui.Bar.a
        public void d() {
        }
    }

    public class f implements View.OnClickListener {
        public f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y0.h.u0(-5);
        }
    }

    public class g implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ui.a f229a;

        public g(ui.a aVar) {
            this.f229a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            ui.a aVar = this.f229a;
            if (aVar != null) {
                aVar.s(y0.f.f18037c, y0.f.f18055i == 1);
            }
        }
    }

    public class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Runnable f231a;

        public h(Runnable runnable) {
            this.f231a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            m.a().post(this.f231a);
        }
    }

    public class i implements ui.a.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Runnable f233a;

        public i(Runnable runnable) {
            this.f233a = runnable;
        }

        @Override // ui.a.f
        public void a(boolean z2) {
            if (!z2) {
                u0.c.f17374a.d(this.f233a);
                return;
            }
            u0.c.f17374a.a(this.f233a, 0);
            y0.g.f18094d.a(this.f233a, 1);
            y0.g.f18095e.a(this.f233a, 1);
        }
    }

    public static App c() {
        return f218b;
    }

    public final void a() {
        b();
        c().h(false);
        SystemProperties.set("sub_channel", ProxyProperties.LOCAL_EXCL_LIST + k4.c());
    }

    public void b() {
        k4.h();
        i();
    }

    public final int d() {
        return SystemProperties.getInt("ro.fyt.mcu_type", 0);
    }

    public final void e() {
        c.g.g(this);
        a.f.A(this);
        f.b.f1841d.b();
        f.c cVar = f.b.f1841d.f1844c;
        if (cVar != null && !cVar.h()) {
            a.f.f().setStreamVolume(3, a.c.q(), 0);
            a.f.f().setStreamVolume(0, a.c.w(), 0);
            a.f.f().setStreamVolume(1, a.c.m(), 0);
            a.f.f().setStreamVolume(4, a.c.g(), 0);
            a.f.f().setStreamVolume(2, a.c.t(), 0);
        }
        a.b.c(this);
        if ("open".equals(SystemProperties.get("persist.sys.wifi.states", "close"))) {
            a.i.S();
        }
        m.a().postDelayed(new c(), DateUtils.MINUTE_IN_MILLIS - SystemClock.uptimeMillis());
        if (q0.L() != 0) {
            q0.K();
            a.f.k().l(1, "please reboot", c().getResources().getString(R.string.please_reboot), Paint.Align.CENTER, 28, -1, 30, -1878982912);
        }
    }

    public final void f() {
        d dVar = new d();
        ui.a aVarA = new ui.a.d().p(dVar.b(a.f.w(), a.f.i())).h(48).u(0).l("unmute.png").g("mute.png").f("bt_call.png").e("bt_call_mute.png").c("bar.png").d("bar_p.png").k("node.png").b("bk.png").o(y0.f.f18049g).i(true).t(dVar.a()).m(new f()).n(new e()).a();
        aVarA.p(dVar);
        aVarA.r(3);
        aVarA.q(new i(new h(new g(aVarA))));
        a.f.D(aVarA);
    }

    public boolean g() {
        return g.f.f(11) && Configure.Property.CTRL_UI_MODE.b(true);
    }

    public void h(boolean z2) {
        int iC = m1.c.c(144, 0);
        if (iC != 0) {
            qt.K(m1.c.c(145, 0));
        }
        if (iC == 0 || !z2) {
            return;
        }
        m1.c.e(144, 0);
    }

    public final void i() {
        n();
        j();
        u.I0();
    }

    public final void j() {
        Receiver.c0(this);
    }

    public final void k() {
        n1.b bVarP = a.f.p();
        bVarP.setDbg(false);
        if (bVarP.r()) {
            a.f.y().addView(bVarP, bVarP.getWindowLayoutParams());
        }
        f();
        a.f.C(new ui.c());
    }

    public void l() {
        int iE = g.e.e();
        if (iE == 9) {
            k.i(115200);
            return;
        }
        if (iE == 39) {
            k.i(115200);
            return;
        }
        if (d() == 0) {
            k.i(38400);
        } else if (d() == 1) {
            k.i(115200);
        } else {
            k.i(38400);
        }
    }

    public void m() {
        if (new File("/sdcard/record_debug").exists()) {
            LogRecorder.b0(this).d0(false);
        }
    }

    @SuppressLint({"SuspiciousIndentation"})
    public final void n() {
        a.e.c(0);
        g1.c.b();
        e.h.K2().M2();
        a.e.a(g1.e.f2397a);
        if (g.e.a() == 1) {
            g1.b.a();
        }
        if (g.e.a() == 1) {
            g1.d.c();
        }
        if (g.e.a() == 3 || g.e.a() == 4) {
            e.f.o();
        }
        a.e.a(g1.e.f2398b);
        o1.i.o();
        if (g.e.a() == 3) {
            a.e.a(g1.e.f2399c);
        }
        l.a().post(new a());
    }

    @Override // android.app.Application
    @SuppressLint({"InvalidWakeLockTag"})
    public void onCreate() {
        super.onCreate();
        f218b = this;
        this.f220a.start();
        m1.c.m();
        q0.y(1);
        a.a.b(this);
        c.e.d();
        a.e.c(0);
        q0.u();
        g.f.x("601", false);
        e();
        PowerManager.WakeLock wakeLockNewWakeLock = a.f.r().newWakeLock(1, "WAKE_LOCK");
        f219c = wakeLockNewWakeLock;
        wakeLockNewWakeLock.acquire();
        k();
        g.f.i();
        k4.b(1, false);
        l();
        a();
        u0.c.A.c();
        a.f.p().s("BSP-RO-SYS = " + SystemProperties.get("ro.fyt.platform", WifiEnterpriseConfig.EMPTY_VALUE) + "-" + SystemProperties.get("sys.fyt.platform", WifiEnterpriseConfig.EMPTY_VALUE) + ";UI的平台 = " + g.e.b() + "-" + g.e.f() + ";客户 = " + j4.f16465c + " (ID:" + j4.f16464b + ");MCU类型 = " + SystemProperties.getInt("ro.fyt.mcu_type", -1));
        n1.b bVarP = a.f.p();
        StringBuilder sb = new StringBuilder();
        sb.append("是否竖屏 = ");
        sb.append(q0.v());
        sb.append(" subwoof 开关 = ");
        sb.append(SystemProperties.getInt("ro.fyt.subwoof_enable", 0));
        sb.append(" subwoof 值 = ");
        sb.append(SystemProperties.getInt("ro.fyt.subwoof", 0));
        bVarP.w(sb.toString());
    }
}

package g;

import android.content.Intent;
import android.media.AudioManager;
import android.net.ProxyProperties;
import android.os.Handler;
import android.os.SystemProperties;
import android.util.Log;
import app.App;
import base.Configure;
import chip.Chip;
import com.syu.jni.ToolsJni;
import java.io.File;
import module.sound.AudioDevice;
import o1.s0;
import o1.u;
import plugins.DabDev;
import plugins.EasyConn;
import plugins.Wenet;
import plugins.ZLink;
import util.log.LogType;

/* JADX INFO: loaded from: classes.dex */
public class o extends Chip {

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f2333e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public Runnable f2334f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final Runnable f2335g0 = new g();

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public Runnable f2336h0 = new h();

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public Runnable f2337i0 = new i();

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final Runnable f2338j0 = new j();

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final Runnable f2339k0 = new k();

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public Runnable f2340l0 = new l();

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public Runnable f2341m0 = new a();

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2342a = 0;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            if (u0.b.f17320f != 0) {
                o0.h hVar = o0.e.f16766b;
                if (hVar instanceof o0.h) {
                    hVar.m();
                }
                o.this.W();
            }
            if (g.e.j(68) && this.f2342a == 1 && u0.b.f17320f == 0 && ((i2 = u0.b.D) == 10 || i2 == 0)) {
                c.e.d().c(127);
            }
            this.f2342a = u0.b.f17320f;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(18, ToolsJni.getSystemCtrlState(109, "param0", -1), ToolsJni.getSystemCtrlState(109, "param1", -1));
        }
    }

    public class c implements base.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2345a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f2346b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2347c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2348d = 0;

        public c() {
        }

        @Override // base.a
        public void a(boolean z2) {
            if (this.f2346b != z2) {
                this.f2346b = z2;
                w0.f.J(32, z2 ? 1 : 0);
                y0.h.M();
            }
        }

        @Override // base.a
        public int b() {
            return 10;
        }

        @Override // base.a
        public int c() {
            return this.f2348d;
        }

        @Override // base.a
        public boolean d() {
            return this.f2348d == 0;
        }

        @Override // base.a
        public int e() {
            if (this.f2347c < 0) {
                this.f2347c = h();
            }
            return this.f2347c;
        }

        @Override // base.a
        public int f(int i2) {
            int i3 = this.f2345a;
            if (i3 < 0) {
                i3 = i2;
            }
            this.f2348d = this.f2346b ? 0 : i3;
            Log.e("sound", " set Radio volume vol : " + i3);
            if (!s0.l("sys.radio.mute", false)) {
                new j1.c("setParameter").g(a.f.f()).e(AudioManager.class).d("FM_Volume", ProxyProperties.LOCAL_EXCL_LIST + i3).a();
                s0.F("sys.radio.vol", ProxyProperties.LOCAL_EXCL_LIST + i3);
            }
            return i2;
        }

        @Override // base.a
        public void g(int i2) {
            if (i2 < 0) {
                return;
            }
            this.f2347c = Math.min(i2, h());
            int iC = c();
            int i3 = this.f2347c;
            if (iC > i3) {
                f(i3);
            }
        }

        public int h() {
            return a.f.f().getStreamMaxVolume(3);
        }
    }

    public class d implements b.b.a {
        public d() {
        }

        @Override // b.b.a
        public boolean a() {
            return !SystemProperties.getBoolean("ro.client.foreign", false);
        }
    }

    public class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2351a = false;

        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            boolean z2 = true;
            if ((h1.a.d().e() != 1 || y0.f.T0 != 1) && ((u0.b.D != 15 || (h1.a.d().e() == 1 ? u0.i.l3().j3() != 2 : !u0.i.l3().r3())) && (i2 = h0.c.E) != 5 && i2 != 4 && i2 != 3 && h0.c.U != 1)) {
                z2 = false;
            }
            Log.e("Qin", "--------------  DataMain.sAppId: " + u0.b.D + " isExtraCalling() : " + u0.i.l3().r3() + " getCpCallStateOfCarlink(): " + u0.i.l3().j3() + " enable : " + this.f2351a + " to : " + z2);
            AudioManager audioManagerF = a.f.f();
            if (this.f2351a != z2) {
                this.f2351a = z2;
                if (z2) {
                    Log.e("Qin", "--------------setMode MODE_IN_COMMUNICATION");
                    audioManagerF.setMode(3);
                } else {
                    Log.e("Qin", "--------------setMode MODE_NORMAL");
                    audioManagerF.setMode(0);
                }
            }
        }
    }

    public class f implements o1.p {
        public f() {
        }

        @Override // o1.p
        public void d(Object obj) {
            o.this.f2334f0.run();
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 != 0) {
                ToolsJni.cmd_147_7026_control_write(7, 255);
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.e("Qin", "======================>> 111  accOn  DataMain.sMcuOn : " + u0.b.f17320f + "  DataMain.sAccOn : " + u0.b.f17306a0);
            o oVar = o.this;
            if (oVar.f2333e0) {
                boolean z2 = u0.b.f17306a0 != 0;
                Handler handler = oVar.f613s;
                if (handler != null) {
                    handler.removeCallbacks(oVar.f2335g0);
                }
                if (z2) {
                    o oVar2 = o.this;
                    Handler handler2 = oVar2.f613s;
                    if (handler2 != null) {
                        handler2.postDelayed(oVar2.f2335g0, 1000L);
                    }
                } else {
                    ToolsJni.cmd_147_7026_control_write(8, 255);
                }
            }
            if (u0.b.f17320f == 0 || u0.b.f17306a0 != 0) {
                return;
            }
            int i2 = u0.b.D;
            if (i2 == 10 || i2 == 0) {
                c.e.d().c(127);
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2 = u0.b.f17341m == 1 && u0.b.f17335k != 1;
            a.f.p().t(LogType.ZLINK, "!!== DataMain.sHandbrakeEnable == " + u0.b.f17341m + " DataMain.sHandbrake == " + u0.b.f17335k + " hideVideo : " + z2);
            a.i.Z("sys.lsec_hidevideo", z2 ? "1" : "0");
            App.c().sendBroadcast(new Intent("com.lsec.hidevideo"));
        }
    }

    public class j implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2357a = -1;

        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = y0.f.H;
            if (i2 != this.f2357a) {
                this.f2357a = i2;
                ToolsJni.cmd_251_Normal_Io_Set(9, i2 != 1 ? 0 : 1);
            }
        }
    }

    public class k implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f2359a = 3;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2360b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2361c = 0;

        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3;
            if (u0.b.f17341m == 1) {
                boolean z2 = ToolsJni.cmd_252_Normal_Io_Get(8) == 0;
                if (z2 && (i3 = this.f2361c) < 3) {
                    this.f2361c = i3 + 1;
                } else if (!z2 && (i2 = this.f2361c) > 0) {
                    this.f2361c = i2 - 1;
                }
                int i4 = this.f2360b;
                if (i4 == 1 && this.f2361c == 0) {
                    this.f2360b = 0;
                    u0.d.x0(0);
                } else if (i4 == 0 && this.f2361c >= 3) {
                    this.f2360b = 1;
                    u0.d.x0(1);
                } else if (i4 < 0) {
                    this.f2360b = 0;
                    u0.d.x0(0);
                }
            } else {
                this.f2360b = 1;
                this.f2361c = 0;
                u0.d.x0(1);
            }
            Handler handler = o.this.f613s;
            if (handler != null) {
                handler.removeCallbacks(this);
                o.this.f613s.postDelayed(this, 300L);
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.h hVar = o0.e.f16766b;
            if (hVar instanceof o0.h) {
                hVar.u();
            }
        }
    }

    public o() {
        this.f2333e0 = false;
        this.f607m = !g.f.f(11);
        X();
        G();
        this.f2333e0 = new File("/dev/ch7026").exists();
        this.f594b = 33;
        b.b.f().h(new d());
        u0.b.P3 = 0;
        u0.b.y4 = 1;
        y0.f.f18042d1 = 1;
        y0.f.f18036b1 = 1;
        y0.f.f18039c1 = 1;
        y0.f.Z0 = 1;
        y0.f.f18033a1 = 1;
        y0.f.f18045e1 = 1;
        u0.b.z4 = 1;
        p0.b.f17028j = 1;
        y0.f.f18051g1 = 1;
        m1.c.i(1021);
        if (this.f2333e0) {
            ToolsJni.cmd_147_7026_control_write(10, (SystemProperties.getInt("ro.sf.swrotation", 0) / 90) % 4);
            int[] iArrCmd_147_7026_control_read = ToolsJni.cmd_147_7026_control_read();
            if (iArrCmd_147_7026_control_read != null) {
                try {
                    if (iArrCmd_147_7026_control_read.length == 4) {
                        u0.b.y1 = iArrCmd_147_7026_control_read[2];
                        u0.b.z1 = iArrCmd_147_7026_control_read[3];
                        u0.b.A1 = iArrCmd_147_7026_control_read[0];
                        u0.b.B1 = iArrCmd_147_7026_control_read[1];
                    }
                } catch (Exception unused) {
                }
            }
        }
        try {
            startObserving("dcam=err");
            startObserving("dcam=timeout");
            startObserving("IIS=ON");
            startObserving("IIS=OFF");
        } catch (Exception unused2) {
        }
        f.c cVar = f.b.f1841d.f1844c;
        if (cVar == null || cVar.h()) {
            return;
        }
        e eVar = new e();
        this.f2334f0 = eVar;
        h0.d.f2462a.a(eVar, 0);
        u0.c.f17374a.a(this.f2334f0, 0);
        y0.g.f18101k.a(new f());
        u0.i.l3().f17451d0.a(this.f2334f0, 0);
        u0.i.l3().f17450c0.a(this.f2334f0, 1);
    }

    @Override // chip.Chip
    public String C() {
        return g.e.e() == 49 ? "V2854" : super.C();
    }

    @Override // chip.Chip
    public boolean E(String str) {
        AudioDevice audioDeviceW;
        if (str.contains("dcam=timeout")) {
            if (e1.a.f1657b instanceof e1.c) {
                if (u0.b.f17320f == 0) {
                    return true;
                }
                ((e1.c) e1.a.f1657b).r();
            }
        } else if (str.contains("IIS=ON")) {
            AudioDevice audioDeviceW2 = AudioDevice.W();
            if (audioDeviceW2 != null) {
                audioDeviceW2.h0(true);
            }
        } else if (str.contains("IIS=OFF") && (audioDeviceW = AudioDevice.W()) != null) {
            audioDeviceW.h0(false);
        }
        return super.E(str);
    }

    @Override // chip.Chip
    public boolean M() {
        boolean z2 = SystemProperties.getInt("persist.fyt.externalfm", 0) != 1;
        int i2 = w0.d.f17789a;
        return (i2 != 1 && i2 != 0) && z2;
    }

    @Override // chip.Chip
    public void S(boolean z2) {
        if (z2) {
            a.c.f39a = new c();
        } else {
            super.S(z2);
        }
    }

    @Override // chip.Chip
    public void V() {
        this.f598d = "/dev/i2c-4";
        this.f599e = "/dev/ttyS1";
        this.f600f = "/dev/ttyS0";
        this.f601g = "/dev/ttyS1";
        this.f602h = ProxyProperties.LOCAL_EXCL_LIST;
        this.f603i = "/dev/ttyS2";
        this.f604j = "/dev/ttyS1";
    }

    public void W() {
        if (Configure.Property.DUAL_MIPI.b(false)) {
            this.f613s.post(new b());
        }
    }

    public void X() {
    }

    @Override // chip.Chip, g.g
    public void a() {
        super.a();
        u0.c.f17386m.d(this.f2336h0);
        ZLink.Y().X(App.c());
        Wenet.Y().X(App.c());
    }

    @Override // chip.Chip, g.g
    public void b() {
        o0.e.f16776g = 0;
        y0.f.V = 1;
        u0.b.E3 = true;
        u0.c.f17386m.a(this.f2336h0, 1);
        u0.c.C.a(this.f2337i0, 1);
        u0.c.B.a(this.f2337i0, 1);
        o0.f.f16804b.a(this.f2340l0, 1);
        u0.c.f17376c.a(this.f2341m0, 1);
        if (u.k0(App.c(), "com.zjinnova.zlink")) {
            ZLink.Y().g0(App.c());
        }
        if (u.k0(App.c(), "com.syu.carlink") || u.k0(App.c(), "com.syu.hicar")) {
            h1.a.d();
        }
        if (DabDev.Z()) {
            DabDev.X().a0(App.c());
        }
        Wenet.Y().Z(App.c());
        EasyConn.Z().b0(App.c());
        super.b();
    }

    @Override // chip.Chip
    public String w() {
        if (g.e.e() == 49 && !s0.j(this.f596c, "/dev/i2c-5")) {
            this.f596c = "/dev/i2c-5";
        }
        return super.w();
    }
}

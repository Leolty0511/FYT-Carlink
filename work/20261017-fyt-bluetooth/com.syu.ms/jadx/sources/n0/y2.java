package n0;

import android.bluetooth.BluetoothClass;
import android.net.ProxyProperties;
import android.util.SparseIntArray;
import android.view.View;
import app.App;
import com.syu.jni.ToolsJni;
import module.sound.AudioDevice;
import module.sound.C32107;
import module.sound.C7729;
import ui.Bar;

/* JADX INFO: loaded from: classes2.dex */
public class y2 extends n0.a {
    public static final int[] K = {96, 90, 76, 68, 61, 56, 53, 50, 47, 45, 43, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16};
    public ui.a A;
    public ui.a B;
    public boolean C = false;
    public Runnable D = new j();
    public Runnable E = new k();
    public Runnable F = new l();
    public Runnable G = new m();
    public final Runnable H = new n();
    public Runnable I = new o();
    public final Runnable J = new i();

    public class a extends c.d {
        public a() {
        }

        @Override // c.d
        public boolean b(int i2) {
            if (!o1.u.l0("com.synmoon.carkit")) {
                return false;
            }
            o1.u.H0("com.synmoon.carkit", "com.synmoon.carkit.activity.MainActivity");
            return true;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    public class b extends c.d {
        public b() {
        }

        @Override // c.d
        public boolean b(int i2) {
            if (!o1.u.k0(App.c(), "com.syu.rearcamera")) {
                return false;
            }
            if (o1.u.S("com.syu.rearcamera")) {
                o1.u.R0("com.syu.rearcamera");
                return true;
            }
            o1.u.H0("com.syu.rearcamera", "com.syu.exdvr.ActivityLaunch");
            return true;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    public class c implements ui.a.g {
        public c() {
        }

        @Override // ui.a.g
        public int a() {
            return 0;
        }

        @Override // ui.a.g
        public String b(int i2, int i3) {
            if (i2 > 1920) {
                return "ui/vol/yufeng/1200/";
            }
            return "ui/vol/yufeng/1024/";
        }
    }

    public class d implements Bar.a {
        public d() {
        }

        @Override // ui.Bar.a
        public void a(int i2, boolean z2) {
            y2.this.C = z2;
            if (z2) {
                u0.d.Q(i2);
            }
        }

        @Override // ui.Bar.a
        public void b() {
            y2.this.A.o();
        }

        @Override // ui.Bar.a
        public void c() {
        }

        @Override // ui.Bar.a
        public void d() {
        }
    }

    public class e implements ui.a.f {
        public e() {
        }

        @Override // ui.a.f
        public void a(boolean z2) {
            if (z2) {
                return;
            }
            y2.this.C = false;
        }
    }

    public class f implements Bar.a {
        public f() {
        }

        @Override // ui.Bar.a
        public void a(int i2, boolean z2) {
            if (z2) {
                y0.h.u0(i2);
            }
        }

        @Override // ui.Bar.a
        public void b() {
            y2.this.B.o();
        }

        @Override // ui.Bar.a
        public void c() {
        }

        @Override // ui.Bar.a
        public void d() {
        }
    }

    public class g implements View.OnClickListener {
        public g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y0.h.u0(-5);
        }
    }

    public class h implements ui.a.f {
        public h() {
        }

        @Override // ui.a.f
        public void a(boolean z2) {
            if (z2) {
                y0.g.f18094d.a(y2.this.G, 1);
                y0.g.f18095e.a(y2.this.G, 1);
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int iCmd_17_get_led_colors = ToolsJni.cmd_17_get_led_colors();
            if (iCmd_17_get_led_colors != 0 && u0.b.f17320f == 0) {
                o1.q0.G(0);
            } else {
                if (iCmd_17_get_led_colors == 0 || u0.b.f17320f != 1) {
                    return;
                }
                o1.q0.G(1);
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y2 y2Var = y2.this;
            ui.a aVar = y2Var.A;
            if (aVar != null) {
                if (y2Var.C) {
                    aVar.show();
                }
                y2.this.A.s(u0.b.K, false);
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o1.m.a().post(y2.this.D);
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ui.a aVar = y2.this.B;
            if (aVar != null) {
                aVar.s(y0.f.f18037c, y0.f.f18055i == 1);
            }
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o1.m.a().post(y2.this.F);
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(1, 0, 165);
        }
    }

    public class o implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16636a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f16637b = 3;

        public o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u0.i iVarL3 = u0.i.l3();
            int i2 = iVarL3.A;
            int i3 = this.f16636a;
            if (i2 == i3 && iVarL3.B == this.f16637b) {
                return;
            }
            if (i3 == 0 && iVarL3.B == 3) {
                o1.j.f(y2.this.H);
                o1.j.c(y2.this.H, 2000L);
            }
            this.f16636a = iVarL3.A;
            this.f16637b = iVarL3.B;
        }
    }

    public class p extends c.d {
        public p() {
        }

        @Override // c.d
        public boolean b(int i2) {
            if (!g.f.f(7)) {
                return false;
            }
            o1.u.C0("com.syu.eq.dialog", "com.syu.eq");
            return true;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    public class q extends c.d {
        public q() {
        }

        @Override // c.d
        public boolean b(int i2) {
            ui.a aVar = y2.this.A;
            if (aVar == null) {
                return false;
            }
            aVar.show();
            return false;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    public class r extends c.d {
        public r() {
        }

        @Override // c.d
        public boolean b(int i2) {
            ui.a aVar = y2.this.A;
            if (aVar == null) {
                return false;
            }
            aVar.show();
            return false;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    @Override // n0.c4
    public void H3(AudioDevice audioDevice) {
        super.H3(audioDevice);
        String strO = o1.s0.o("sys.fyt.bluetooth_type", "0");
        if (audioDevice instanceof C32107) {
            audioDevice.L0(6, C32107.CHANNEL.AUX.f15215a);
            if (strO.equals("2") || strO.equals("4") || strO.equals("6") || strO.equals("7")) {
                C32107.CHANNEL channel = C32107.CHANNEL.TV;
                audioDevice.L0(2, channel.f15215a);
                audioDevice.L0(3, channel.f15215a);
                return;
            }
            return;
        }
        if (audioDevice instanceof C7729) {
            AudioDevice.Q0(K);
            if (strO.equals("2") || strO.equals("4") || strO.equals("6") || strO.equals("7")) {
                C7729.CHANNEL channel2 = C7729.CHANNEL.IN4;
                audioDevice.L0(2, channel2.f15571a);
                audioDevice.L0(3, channel2.f15571a);
            }
        }
    }

    @Override // n0.c4
    public void I3(e1.c cVar) {
        super.I3(cVar);
        if (cVar instanceof e1.e) {
            if (!o1.s0.t(o1.s0.o("persist.lsec.bbatype", ProxyProperties.LOCAL_EXCL_LIST))) {
                cVar.v(5, 2);
                return;
            }
            if (o1.s0.m("ro.fyt.uiid", 0) == 2) {
                cVar.v(5, 3);
            } else {
                cVar.v(5, 4);
            }
            cVar.v(4, 2);
            cVar.v(7, 2);
        }
    }

    @Override // n0.a, n0.c4
    public void L3() {
        w0.d.R = 0;
        w0.d.S = 1;
        C32107.E1 = 3;
        C32107.D1 = 10;
        C32107.F1 = new int[]{0, 26, 24, 22, 21, 20, 19, 18, 17, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 15, 15, 13, 11, 9, 7, 5, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        u0.b.P3 = 1;
        j4.f16465c = "YUF";
        m1.a.f13515d = 274;
        c.g gVarG = c.g.g(App.c());
        gVarG.b();
        gVarG.a(new c.g.b(0, 1, a.b.f27o, a.b.f28p));
        gVarG.a(new c.g.b(1, null, a.b.f23k, a.b.f24l));
        gVarG.a(new c.g.b(4, 3, a.b.f23k, "com.syu.bt.act.ActBtAvStart", a.b.f24l));
        gVarG.a(new c.g.b(2, 8, a.b.f37y, a.b.f38z));
        gVarG.a(new c.g.b(3, 9, a.b.A, a.b.B));
        gVarG.a(new c.g.b(5, null, "Navi", "Navi"));
        r0.a aVarX2 = r0.a.X2();
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.clear();
        sparseIntArray.put(23, 4);
        sparseIntArray.put(24, 4);
        sparseIntArray.put(22, 3);
        sparseIntArray.put(21, 187);
        sparseIntArray.put(25, 569);
        sparseIntArray.put(26, 570);
        sparseIntArray.put(27, 25);
        sparseIntArray.put(28, 24);
        sparseIntArray.put(33, 572);
        sparseIntArray.put(34, 571);
        aVarX2.d3(sparseIntArray, false);
        c.e.d().i(572, new p());
        c.e.d().i(569, new q());
        c.e.d().i(570, new r());
        c.e.d().i(BluetoothClass.Device.PHONE_CORDLESS, new a());
        c.e.d().i(539, new b());
    }

    @Override // n0.c4
    public void M2() throws Throwable {
        super.M2();
        o1.u.F0("com.synmoon.carkit", "com.synmoon.carkit.service.StartUvcService");
    }

    @Override // n0.c4
    public void U2() throws Throwable {
        super.U2();
    }

    @Override // n0.a, n0.c4
    public void X2() throws Throwable {
        super.X2();
        u0.b.W3 = false;
    }

    @Override // n0.c4
    public void a3() throws Throwable {
        super.a3();
        u0.b.W3 = false;
        u0.c.f17376c.a(this.J, 1);
    }

    @Override // n0.a, n0.c4
    public void j3() {
        super.j3();
        c cVar = new c();
        ui.a aVarA = new ui.a.d().p(cVar.b(a.f.w(), a.f.i())).h(5).u(0).l("brightness.png").c("brightness_bar.png").d("brightness_bar_p.png").i(false).n(new d()).a();
        this.A = aVarA;
        aVarA.r(1);
        this.A.q(new e());
        ui.a aVarA2 = new ui.a.d().p(cVar.b(a.f.w(), a.f.i())).h(48).u(0).l("volume.png").g("volume_mute.png").c("volume_bar.png").d("volume_bar_p.png").o(y0.f.f18049g).i(false).m(new g()).n(new f()).a();
        this.B = aVarA2;
        aVarA2.r(1);
        this.B.q(new h());
        a.f.D(this.B);
        u0.c.L.a(this.E, 0);
        u0.c.N.a(this.I, 1);
    }

    @Override // n0.c4, f1.o.c
    public void x0(f1.q qVar) {
        super.x0(qVar);
        if (qVar != null && (qVar instanceof f1.b)) {
            if (!o1.s0.t(o1.s0.o("persist.lsec.bbatype", ProxyProperties.LOCAL_EXCL_LIST))) {
                qVar.G(5, 2);
                return;
            }
            if (o1.s0.m("ro.fyt.uiid", 0) == 2) {
                qVar.G(5, 3);
            } else {
                qVar.G(5, 4);
            }
            qVar.G(4, 2);
            qVar.G(7, 2);
        }
    }

    @Override // n0.c4
    public void x3() {
        super.x3();
        int[] iArrE = o1.s0.E(o1.s0.o("ro.syu.brightLevelOfDay", ProxyProperties.LOCAL_EXCL_LIST));
        int[] iArrE2 = o1.s0.E(o1.s0.o("ro.syu.brightLevelOfNight", ProxyProperties.LOCAL_EXCL_LIST));
        u0.b.V2 = o1.s0.h(iArrE, 2) ? iArrE : new int[]{10, 60, 100};
        if (!o1.s0.h(iArrE, 2)) {
            iArrE2 = new int[]{10, 60, 100};
        }
        u0.b.W2 = iArrE2;
        h1.a.d().f2494h = 1;
    }
}

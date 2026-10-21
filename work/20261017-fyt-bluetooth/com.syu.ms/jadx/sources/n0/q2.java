package n0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.Window;
import app.App;
import module.sound.AudioDevice;
import module.sound.C32107;
import module.sound.C32107S;
import module.sound.C7604;
import ui.Bar;

/* JADX INFO: loaded from: classes2.dex */
public class q2 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16555z = 0;
    public o A = null;

    public class a implements Bar.a {
        public a() {
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

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y0.h.u0(-5);
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ui.a f16558a;

        public c(ui.a aVar) {
            this.f16558a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            ui.a aVar = this.f16558a;
            if (aVar != null) {
                aVar.s(y0.f.f18037c, y0.f.f18055i == 1);
            }
        }
    }

    public class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Runnable f16560a;

        public d(Runnable runnable) {
            this.f16560a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            o1.m.a().post(this.f16560a);
        }
    }

    public class e implements ui.a.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Runnable f16562a;

        public e(Runnable runnable) {
            this.f16562a = runnable;
        }

        @Override // ui.a.f
        public void a(boolean z2) {
            if (z2) {
                y0.g.f18094d.a(this.f16562a, 1);
                y0.g.f18095e.a(this.f16562a, 1);
            }
        }
    }

    public class f implements c.f.a {
        public f() {
        }

        @Override // c.f.a
        public boolean a() {
            o1.u.J0("vn.autoai.android");
            return true;
        }
    }

    public class g extends c.d {
        public g() {
        }

        @Override // c.d
        public boolean b(int i2) {
            o1.u.H0("com.syu.camera360", "com.syu.exdvr.act.ActExDvr");
            return true;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    public class h extends c.d {
        public h() {
        }

        @Override // c.d
        public boolean b(int i2) {
            App.c().sendBroadcast(new Intent("com.teyes.bibi.ACTION_AUTO_CLICK"));
            return true;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    public class i implements c.f.a {
        public i() {
        }

        @Override // c.f.a
        public boolean a() {
            z.k.s(1, 0, 123);
            return true;
        }
    }

    public class j implements c.f.a {
        public j() {
        }

        @Override // c.f.a
        public boolean a() {
            z.k.s(1, 0, 122);
            return true;
        }
    }

    public class k implements c.f.a {
        public k() {
        }

        @Override // c.f.a
        public boolean a() {
            z.k.s(1, 0, 123);
            return true;
        }
    }

    public class l implements c.f.a {
        public l() {
        }

        @Override // c.f.a
        public boolean a() {
            z.k.s(1, 0, 122);
            return true;
        }
    }

    public class m implements o1.o {
        public m() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 0) {
                return false;
            }
            o1.o oVar = u0.b.Y2;
            if (oVar != null) {
                oVar.a(-3, null, null, null, null);
                return false;
            }
            u0.d.N1();
            return false;
        }
    }

    public class n implements ui.a.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16572a = 24;

        public n() {
        }

        @Override // ui.a.g
        public int a() {
            return this.f16572a;
        }

        @Override // ui.a.g
        public String b(int i2, int i3) {
            if (i2 >= 1920) {
                String str = "ui/vol/tzy_htop/2000/";
                this.f16572a = 38;
                return str;
            }
            String str2 = "ui/vol/tzy_htop/1280/";
            this.f16572a = 28;
            return str2;
        }
    }

    public class o extends BroadcastReceiver {
        public o() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.syu.Turkey_Va".equals(intent.getAction())) {
                u0.g.b(intent.getIntArrayExtra("ints"), intent.getFloatArrayExtra("flts"), intent.getStringArrayExtra("strs"));
            }
        }

        public /* synthetic */ o(q2 q2Var, f fVar) {
            this();
        }
    }

    public q2() {
        y0.f.X0 = 1;
    }

    @Override // n0.c4
    public void D3() {
        this.f16345j = new int[]{60, 65};
    }

    @Override // n0.c4
    public void I3(e1.c cVar) {
        super.I3(cVar);
        if (cVar instanceof e1.e) {
            cVar.v(5, 1);
        }
    }

    @Override // n0.c4
    public void L3() {
        j4.f16465c = "TZY";
        m1.a.f13515d = 180150002;
        u0.b.h2 = true;
        u0.b.G3 = false;
    }

    @Override // n0.c4
    public void M2() throws Throwable {
        super.M2();
        o1.u.F0("com.yf.teyesspotif", "com.yf.teyesspotif.TeyesSpotifyService");
        o1.u.F0("ru.teyes.update", "ru.teyes.update.service.SocketService");
        o1.u.F0("cn.teyes.online", "cn.teyes.online.service.SocketService");
        o1.u.F0("com.syu.rearcamera", "com.syu.fourcamera.ServiceCamera");
        o1.u.F0("mdm.tw.com.mdm", "mdm.tw.com.mdm.services.MyService");
        o1.u.C0("com.teyes.carkit.service.StartUvcService", "com.teyes.carkit");
        o1.u.C0("action.UartBrocastReceive", "com.tpms3");
        o1.u.C0("com.angel.Android.MUSIC", "com.lodark.freetravel");
        this.A = new o(this, null);
        App.c().registerReceiver(this.A, new IntentFilter("com.syu.Turkey_Va"));
        if (o1.u.k0(App.c(), "vn.autoai.android")) {
            c.f.b().h(7, new f());
        }
        c.e.d().i(539, new g());
        if (o1.u.k0(App.c(), "com.teyes.bibi")) {
            c.e.d().i(635, new h());
        }
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() == 6) {
            u0.b.t4[3] = 6;
            y0.d.r();
            y0.d.x();
            z.k.g("/dev/ttyS0");
        } else {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
            if (g.e.e() == 7) {
                y0.b.r();
            }
        }
        if (o1.q0.v()) {
            h0.c.f2446l0 = true;
        }
    }

    @Override // n0.c4
    public void S2() throws Throwable {
        T3();
        c.f.b().h(11, new k());
        c.f.b().h(12, new l());
        super.S2();
        S3();
    }

    public void S3() {
        r0.a aVarX2 = r0.a.X2();
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.clear();
        sparseIntArray.put(21, 88);
        sparseIntArray.put(22, 87);
        sparseIntArray.put(24, 24);
        sparseIntArray.put(23, 25);
        sparseIntArray.put(27, 91);
        sparseIntArray.put(26, 525);
        if (o1.s0.o("ro.fota.device", ProxyProperties.LOCAL_EXCL_LIST).contains("vn")) {
            sparseIntArray.put(25, 3);
            sparseIntArray.put(28, 556);
        } else {
            sparseIntArray.put(25, 556);
        }
        aVarX2.d3(sparseIntArray, false);
    }

    public final void T3() {
        if (a.f.v() != null && (a.f.v() instanceof ui.a)) {
            ((ui.a) a.f.v()).p(null);
        }
        n nVar = new n();
        int i2 = 34;
        int i3 = 82;
        if (a.f.w() >= 1920) {
            i2 = 50;
            i3 = 122;
        }
        ui.a aVarA = new ui.a.d().p(nVar.b(a.f.w(), a.f.i())).h(48).u(1).l("mute.png").g("unmute.png").c("bar.png").d("bar_p.png").o(y0.f.f18049g).q(new int[]{-16777216, -1}).s(new Rect(i3, -1, -1, -1)).j(new Rect(i2, -1, -1, -1)).i(true).t(nVar.a()).m(new b()).n(new a()).a();
        aVarA.p(nVar);
        aVarA.r(3);
        aVarA.q(new e(new d(new c(aVarA))));
        a.f.D(aVarA);
    }

    @Override // n0.c4
    public void U2() throws Throwable {
        AudioDevice.H0 = false;
        super.U2();
        Log.e("Gyro", "-------- TZY Load Start: ");
        x0.c.X2().Z2("NULLLL".equals(o1.s0.o("ro.ls.gyro", "NULLLL")) ? 1 : 2);
        if (o1.s0.l("persist.fyt.pakistan", false)) {
            Log.e("Qin", "-------- persist.fyt.pakistan: ");
            if (o1.s0.j(o1.s0.o("persist.lsec.tzyui11", ProxyProperties.LOCAL_EXCL_LIST), Context.SYU_SERVICE)) {
                C32107.C1 = 120;
                C32107S.n2 = 120;
                C7604.B4 = 120;
            }
            u0.b.f17317e = 1;
            N3(new int[]{0, 65, 90}, new int[]{0, 60, 85});
            o1.v vVar = e.c.D;
            vVar.b();
            vVar.a(new m(), -500);
            vVar.a(e.a.f(), 2000);
        }
    }

    @Override // n0.c4
    public void X2() throws Throwable {
        T3();
        c.f.b().h(11, new i());
        c.f.b().h(12, new j());
        super.X2();
        S3();
        int iM = o1.s0.m("sys.syu.vehicle_factory_project", -1);
        String str = SystemProperties.get("persist.sys.syu.audio", ProxyProperties.LOCAL_EXCL_LIST);
        if (iM == 0 && "7604".equals(str)) {
            int[] iArr = {20, 10, 40, 24, 10, 40, 29, 10, 40, 36, 10, 40, 45, 10, 40, 53, 10, 40, 65, 10, 40, 80, 10, 40, 100, 10, 40, 120, 10, 40, 140, 10, 40, 170, 10, 40, 210, 10, 40, 260, 10, 40, 320, 10, 40, 390, 10, 40, 470, 10, 40, 570, 10, 40, 700, 10, 40, 850, 10, 40, 1000, 10, 40, 1300, 10, 40, 1600, 10, 40, 1900, 10, 40, 2300, 10, 40, 2800, 10, 40, 3400, 10, 40, 4100, 10, 40, 5000, 12, 40, 6100, 10, 40, 7500, 13, 40, 9000, 14, 40, 11000, 10, 40, 14000, 10, 40, 17000, 10, 40, Window.PROGRESS_SECONDARY_START, 10, 40};
            AudioDevice.W().Y0(new int[]{20, 0, 0, 24, 0, 0, 29, 0, 0, 36, 0, 0, 45, 0, 0, 53, 0, 0, 65, 0, 0, 80, 0, 0, 100, 0, 0, 120, 0, 0, 140, 0, 0, 170, 0, 0, 210, 0, 0, 260, 0, 0, 320, 0, 0, 390, 0, 0, 470, 0, 0, 570, 0, 0, 700, 0, 0, 850, 0, 0, 1000, 0, 0, 1300, 0, 0, 1600, 0, 0, 1900, 0, 0, 2300, 0, 0, 2800, 0, 0, 3400, 0, 0, 4100, 0, 0, 5000, -2, 0, 6100, 0, 0, 7500, -3, 0, 9000, -4, 0, 11000, 0, 0, 14000, 0, 0, 17000, 0, 0, Window.PROGRESS_SECONDARY_START, 0, 0});
            AudioDevice.W().Z0(1, iArr);
        }
    }

    @Override // n0.c4
    public void Y2() throws Throwable {
        super.Y2();
    }

    @Override // n0.c4
    public void j3() {
        super.j3();
        if (o1.q0.v()) {
            u0.b.P2 = 50;
            u0.b.R2 = 50;
        }
        h0.c.V = 1;
    }

    @Override // n0.c4
    public boolean m3() {
        return true;
    }

    @Override // n0.c4, f1.o.c
    public void x0(f1.q qVar) {
        super.x0(qVar);
        if (qVar != null && (qVar instanceof f1.b)) {
            qVar.G(5, 1);
        }
    }
}

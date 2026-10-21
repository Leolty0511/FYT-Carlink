package n0;

import android.R;
import android.content.Intent;
import android.net.ProxyProperties;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemProperties;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import app.App;
import base.Configure;
import chip.Chip;
import com.syu.jni.ToolsJni;
import module.sound.AudioDevice;
import module.sound.C32107;
import module.sound.C3702;
import plugins.ZLink;
import ui.Bar;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class a1 extends c4 {
    public Runnable A = new g();
    public Runnable B = new h();
    public Runnable C = new b();
    public Runnable D = new c();
    public Runnable E = new d();
    public Toast F = null;
    public boolean G = false;
    public Runnable H = new e();
    public final Handler I = new f(Looper.getMainLooper());

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public ui.a f16289z;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16290a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f16291b;

        public a(int i2) {
            this.f16291b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.e.e() != this.f16291b) {
                k4.i(this);
                return;
            }
            int i2 = this.f16290a + 1;
            this.f16290a = i2;
            if (i2 >= 2) {
                this.f16290a = 0;
                float fP = o1.q0.p();
                u0.d.c0(o1.o0.a((int) fP, 0, 255));
                boolean zQ3 = a1.this.Q3();
                if (!zQ3) {
                    a1 a1Var = a1.this;
                    int[] iArr = a1Var.f16345j;
                    if (fP < iArr[1]) {
                        if (zQ3 || fP >= iArr[0]) {
                            return;
                        }
                        a1Var.f3(false);
                        return;
                    }
                }
                a1.this.f3(true);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a1.this.I.sendEmptyMessageDelayed(0, 100L);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o1.m.a().removeCallbacks(this);
            a1.this.V3("Speed up to 120KM/H . Please slow down !");
            a1.this.V3("Attention: " + u0.b.f17325g1 + "KM/H !");
            a1.this.G = true;
            o1.m.a().postDelayed(this, 3000L);
        }
    }

    public class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16295a = 0;

        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u0.b.f17325g1 = a.i.k("ro.fyt.speed_max", u0.b.f17325g1);
            boolean z2 = false;
            if (u0.b.X1 <= u0.b.f17325g1) {
                o1.m.a().removeCallbacks(a1.this.D);
                a1.this.G = false;
            } else if (!a1.this.G) {
                o1.m.a().removeCallbacks(a1.this.D);
                o1.m.a().post(a1.this.D);
            }
            if (u0.b.f17341m != 0 || this.f16295a == u0.b.X1) {
                return;
            }
            boolean zL = o1.s0.l("persist.fyt.disable_video", true);
            int i2 = u0.b.X1;
            this.f16295a = i2;
            if (zL && i2 > 20) {
                z2 = true;
            }
            a.f.p().t(LogType.ZLINK, "20km/h == DataMain.sHandbrakeEnable == " + u0.b.f17341m + " DataMain.sHandbrake == " + u0.b.f17335k + " hideVideo : " + z2);
            a.i.Z("sys.lsec_hidevideo", z2 ? "1" : "0");
            App.c().sendBroadcast(new Intent("com.lsec.hidevideo"));
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a1 a1Var = a1.this;
            a1Var.G = false;
            a1Var.I.sendEmptyMessageDelayed(0, 500L);
        }
    }

    public class f extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16298a;

        public f(Looper looper) {
            super(looper);
            this.f16298a = 0;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            u0.b.f17325g1 = a.i.k("ro.fyt.speed_max", u0.b.f17325g1);
            if (u0.b.X1 > u0.b.f17325g1) {
                a1 a1Var = a1.this;
                if (!a1Var.G) {
                    a1Var.V3("Speed up to 120KM/H . Please slow down !");
                    a1.this.V3("Attention: " + u0.b.f17325g1 + "KM/H !");
                    a1.this.G = true;
                    o1.m.a().removeCallbacks(a1.this.H);
                }
            }
            o1.m.a().removeCallbacks(a1.this.H);
            o1.m.a().postDelayed(a1.this.H, 3000L);
            if (u0.b.f17341m != 0 || this.f16298a == u0.b.X1) {
                return;
            }
            boolean zL = o1.s0.l("persist.fyt.disable_video", true);
            int i2 = u0.b.X1;
            this.f16298a = i2;
            boolean z2 = zL && i2 > 20;
            a.f.p().t(LogType.ZLINK, "20km/h == DataMain.sHandbrakeEnable == " + u0.b.f17341m + " DataMain.sHandbrake == " + u0.b.f17335k + " hideVideo : " + z2);
            a.i.Z("sys.lsec_hidevideo", z2 ? "1" : "0");
            App.c().sendBroadcast(new Intent("com.lsec.hidevideo"));
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ui.a aVar = a1.this.f16289z;
            if (aVar != null) {
                aVar.s(y0.f.f18037c, y0.f.f18055i == 1);
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o1.m.a().post(a1.this.A);
        }
    }

    public class i implements Bar.a {
        public i() {
        }

        @Override // ui.Bar.a
        public void a(int i2, boolean z2) {
        }

        @Override // ui.Bar.a
        public void b() {
            a1.this.f16289z.o();
        }

        @Override // ui.Bar.a
        public void c() {
            y0.h.u0(-2);
        }

        @Override // ui.Bar.a
        public void d() {
            y0.h.u0(-1);
        }
    }

    public class j implements View.OnClickListener {
        public j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y0.h.u0(-5);
        }
    }

    public class k implements ui.a.f {
        public k() {
        }

        @Override // ui.a.f
        public void a(boolean z2) {
            if (z2) {
                y0.g.f18094d.a(a1.this.B, 1);
                y0.g.f18095e.a(a1.this.B, 1);
            }
        }
    }

    public class l implements o1.o {
        public l() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != -3) {
                return true;
            }
            int[] iArr2 = u0.b.f17366w == 0 ? u0.b.V2 : u0.b.W2;
            int length = iArr2 == null ? 0 : iArr2.length;
            if (length == 0) {
                return true;
            }
            if (u0.b.f17332j == 1 && iArr2[0] == 0) {
                u0.d.N(0);
                return true;
            }
            int iA = o1.o0.a(iArr2[((o1.n0.c(iArr2, u0.b.K) + length) - 1) % length], 0, u0.b.Q);
            if (iA == 0) {
                u0.d.N(1);
                a.i.a0(200L);
                u0.d.V(o1.o0.a(iArr2[length - 1], 0, u0.b.Q));
            } else {
                u0.d.V(iA);
            }
            return true;
        }
    }

    public class m implements o1.p {
        public m() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            ToolsJni.cmd_251_Normal_Io_Set(0, ((Integer) obj).intValue() == 6 ? 1 : 0);
        }
    }

    public class n implements c.f.a {

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                u0.d.I3(60, 7);
            }
        }

        public n() {
        }

        @Override // c.f.a
        public boolean a() {
            if (!o1.u.S(a.b.f23k)) {
                o1.u.f(a.b.f24l);
            }
            o1.l.a().postDelayed(new a(), 500L);
            return true;
        }
    }

    public class o implements c.f.a {
        public o() {
        }

        @Override // c.f.a
        public boolean a() {
            if (o1.u.S(a.b.f23k)) {
                u0.d.I3(60, 8);
            } else {
                c.e.d().c(5);
            }
            return true;
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        o1.h.f16866b.d(this.C);
    }

    @Override // n0.c4
    public void H3(AudioDevice audioDevice) {
        super.H3(audioDevice);
        String strO = o1.s0.o("sys.fyt.bluetooth_type", "0");
        if (!(audioDevice instanceof C32107)) {
            if (audioDevice instanceof C3702) {
                ((C3702) audioDevice).I1(C3702.f15416a1, 124);
                return;
            }
            return;
        }
        audioDevice.L0(6, C32107.CHANNEL.AUX.f15215a);
        if (strO.equals("2") || strO.equals("4") || strO.equals("6")) {
            C32107.CHANNEL channel = C32107.CHANNEL.TV;
            audioDevice.L0(2, channel.f15215a);
            audioDevice.L0(3, channel.f15215a);
        }
        audioDevice.M0(138, 2);
    }

    @Override // n0.c4
    public void I3(e1.c cVar) {
        super.I3(cVar);
    }

    @Override // n0.c4
    public void M2() throws Throwable {
        super.M2();
        o1.u.Q0();
        ZLink.Y().h0("ACTION_ENTER");
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() != 6) {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
            u0.b.t4[7] = 22;
        } else {
            u0.b.t4[3] = 6;
            y0.d.r();
            y0.d.x();
            z.k.g("/dev/ttyS0");
        }
    }

    @Override // n0.c4
    public boolean Q3() {
        return u0.b.f17320f == 1 && y0.f.C0 >= 30;
    }

    @Override // n0.c4
    public void S2() throws Throwable {
        g.g gVar = g.e.f2254a;
        if (gVar != null && (gVar instanceof g.j)) {
            ((g.j) gVar).a0(1);
            try {
                int i2 = SystemProperties.getInt("persist.lsec7731.DVRHdPort", 0);
                String[] strArrSplit = SystemProperties.get("ro.lsec7731.UsbHdPort", "0,0").split(",");
                if ((i2 + ProxyProperties.LOCAL_EXCL_LIST).equals(strArrSplit[0])) {
                    ToolsJni.setUsbIndex(0, Integer.valueOf(strArrSplit[1]).intValue());
                } else {
                    if ((i2 + ProxyProperties.LOCAL_EXCL_LIST).equals(strArrSplit[1])) {
                        ToolsJni.setUsbIndex(0, Integer.valueOf(strArrSplit[0]).intValue());
                    }
                }
            } catch (Exception unused) {
            }
        }
        super.S2();
        y0.f.H0 = 100.0f;
        y0.f.I0 = 95.0f;
        y0.f.G0 = 18;
        o1.v vVar = e.c.D;
        vVar.b();
        vVar.a(e.a.h(), -500);
        vVar.a(e.a.j(), 2000);
        U3();
    }

    @Override // n0.c4
    public void U2() throws Throwable {
        g.g gVar = g.e.f2254a;
        if (gVar != null && (gVar instanceof Chip)) {
            ((Chip) gVar).Q(!g.e.j(52));
        }
        super.U2();
    }

    public final void U3() {
        k4.a(new a(g.e.e()));
    }

    public final void V3(String str) {
        Toast toast = this.F;
        if (toast == null) {
            Toast toastMakeText = Toast.makeText(App.c(), str, 1);
            this.F = toastMakeText;
            TextView textView = (TextView) this.F.getView().findViewById(R.id.message);
            textView.setTextColor(-65536);
            textView.setTextSize(30.0f);
            this.F.setGravity(48, 0, 150);
        } else {
            toast.setText(str);
        }
        Toast toast2 = this.F;
        if (toast2 != null) {
            toast2.show();
        }
    }

    @Override // n0.c4
    public void X2() throws Throwable {
        b.b.f().b("3", true);
        b.b.f().b("4", true);
        int[] iArr = u0.b.h3;
        int i2 = 4;
        iArr[4] = -1;
        iArr[5] = -1;
        iArr[6] = -1;
        iArr[7] = -1;
        iArr[10] = -1;
        iArr[11] = -1;
        iArr[12] = -1;
        iArr[13] = -1;
        iArr[14] = -1;
        c.g gVarG = c.g.g(App.c());
        gVarG.k(true);
        gVarG.b();
        String str = a.b.f22j;
        boolean zQ = o1.u.Q();
        if (zQ) {
            gVarG.a(new c.g.b(0, 1, str, a.b.f28p));
        } else {
            gVarG.a(new c.g.b(0, 1, a.b.f27o, a.b.f28p));
        }
        gVarG.a(new c.g.b(1, null, a.b.f23k, a.b.f24l));
        if (zQ) {
            gVarG.a(new c.g.b(2, 3, str, "com.syu.btav"));
            gVarG.a(new c.g.b(3, 8, str, a.b.f38z));
        } else {
            gVarG.a(new c.g.b(2, 3, a.b.f23k, "com.syu.bt.act.ActBtAvStart", a.b.f24l));
            gVarG.a(new c.g.b(3, 8, a.b.f37y, a.b.f38z));
        }
        if (!SystemProperties.getBoolean("sys.syu.mode_ignore_video", true)) {
            gVarG.a(new c.g.b(4, 9, a.b.A, a.b.B));
            i2 = 5;
        }
        gVarG.a(new c.g.b(Integer.valueOf(i2), null, "Navi", "Navi"));
        o1.s0.o("sys.fyt.bluetooth_type", "0");
        if (o1.s0.j(SystemProperties.get("persist.sys.syu.audio", "defult"), "32107")) {
            u0.c.f17375b.a(new m());
            ToolsJni.cmd_251_Normal_Io_Set(0, u0.b.D != 6 ? 0 : 1);
        }
        super.X2();
        o1.v vVar = e.c.D;
        vVar.b();
        if (o1.q0.v()) {
            vVar.a(e.a.j(), -500);
            vVar.a(e.a.f(), 2000);
        } else {
            vVar.a(e.a.h(), -500);
            vVar.a(e.a.j(), 2000);
        }
        if (!o1.s0.l("persist.syu.universal_voice", false)) {
            c.f.b().h(7, new n());
        }
        c.f.b().h(8, new o());
    }

    @Override // n0.c4
    public void Z2() {
        g.f.j();
        U3();
        if (g.e.g() == 2) {
            y0.d.f18016b[14] = 6;
        }
    }

    @Override // n0.c4
    public void a3() {
        g.f.k();
        U3();
        u0.b.t4[5] = 2;
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        U3();
        if (g.e.g() != 1) {
            if (g.e.g() == 2) {
                u0.b.t4[5] = 2;
                y0.d.f18015a[14] = 5;
                y0.d.f18016b[14] = 6;
                y0.d.f18017c[14] = 2;
                return;
            }
            return;
        }
        g.e.e();
        int[] iArr = u0.b.t4;
        iArr[7] = 22;
        iArr[5] = 2;
        z.k.f("/dev/ttyS1");
        iArr[3] = 3;
        int[] iArr2 = y0.b.f17952b;
        iArr2[4] = iArr2[7];
    }

    @Override // n0.c4
    public int h3() {
        if (this.f16341f == 7 || g.e.j(52)) {
            return 2;
        }
        int i2 = this.f16341f;
        return (i2 == 9 || i2 == 13) ? 12 : -1;
    }

    @Override // n0.c4
    public void j3() {
        Configure.Property.HAND_BREAK_CTL_THIRD_VIDEO.g("true");
        j4.f16465c = "ZHAN";
        m1.a.f13515d = 83;
        u0.b.Z1 = 20;
        u0.b.q2 = 1000;
        AudioDevice.E0 = 2;
        super.j3();
        o1.h.f16866b.a(this.C, 0);
        h0.c.f2440i0 = 1;
        h0.c.f2442j0 = 3;
        w0.d.S = 1;
        w0.d.R = 0;
        if (!o1.q0.v()) {
            int iW = a.f.w();
            int i2 = 1024;
            if (iW <= 900) {
                i2 = 800;
            } else if (iW > 1024) {
                i2 = 1280;
            }
            ui.a aVarA = new ui.a.d().p("ui/vol/zhan/").h(80).u(0).l("unmute.png").g("mute.png").c(i2 + "/bar.png").d(i2 + "/bar_p.png").b(i2 + "/bk.png").k("node.png").r("VOL ").o(y0.f.f18049g).i(true).t(28).m(new j()).n(new i()).a();
            this.f16289z = aVarA;
            aVarA.r(6);
            this.f16289z.q(new k());
            a.f.D(this.f16289z);
        }
        u0.b.h2 = true;
    }

    @Override // n0.c4
    public void x3() {
        super.x3();
        int[] iArrE = o1.s0.E(o1.s0.o("ro.syu.brightLevelOfDay", ProxyProperties.LOCAL_EXCL_LIST));
        int[] iArrE2 = o1.s0.E(o1.s0.o("ro.syu.brightLevelOfNight", ProxyProperties.LOCAL_EXCL_LIST));
        u0.b.V2 = o1.s0.h(iArrE, 2) ? iArrE : new int[]{10, 50, 100};
        if (!o1.s0.h(iArrE, 2)) {
            iArrE2 = new int[]{25, 75, 100};
        }
        u0.b.W2 = iArrE2;
        h1.a.d().f2494h = 2;
        g.e.a();
        u0.b.Y2 = new l();
    }
}

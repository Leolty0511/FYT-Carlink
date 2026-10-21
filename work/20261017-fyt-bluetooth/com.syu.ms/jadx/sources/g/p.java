package g;

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.media.AudioSystem;
import android.net.ProxyProperties;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import app.App;
import com.syu.jni.ToolsJni;
import l0.c0;
import module.sound.AudioDevice;
import module.sound.C3702;
import o1.s0;

/* JADX INFO: loaded from: classes.dex */
public class p extends k {
    public boolean C0 = false;
    public boolean D0 = false;
    public boolean E0 = false;
    public long F0 = 0;
    public Integer G0 = null;
    public Integer H0 = null;
    public final Runnable I0 = new b();
    public final Runnable J0 = new c();
    public final Runnable K0 = new d();
    public final Runnable L0 = new e();
    public final Runnable M0 = new f();
    public boolean N0 = false;
    public BroadcastReceiver O0 = new a();

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            String action = intent.getAction();
            Log.e("Qin", "--------------S9863 headsetReceiver aciton: " + action);
            if (BluetoothAdapter.ACTION_CONNECTION_STATE_CHANGED.equals(action)) {
                p.this.e0();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                p.this.F0 = SystemClock.elapsedRealtime();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17320f == 1) {
                p.this.f0();
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.e("Device", "-------->> turnOnScreen  DataMain.sMcuOnForUi = " + u0.b.f17314d + " DataMain.sBlackScreen : " + u0.b.f17332j);
            if (u0.b.f17314d == 0 && p.this.G0.intValue() == u0.b.f17314d) {
                u0.d.U1(1);
            } else {
                p.this.G0 = null;
            }
            if (u0.b.f17332j == 1 && p.this.H0.intValue() == u0.b.f17332j) {
                u0.d.N(0);
            } else {
                p.this.H0 = null;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17314d == 1 && p.this.G0.intValue() != u0.b.f17314d) {
                u0.d.U1(0);
            }
            if (u0.b.f17332j == 0 && p.this.H0.intValue() != u0.b.f17332j) {
                u0.d.N(1);
            }
            p pVar = p.this;
            pVar.G0 = null;
            pVar.H0 = null;
        }
    }

    public class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f2369a = 12;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f2370b = 4;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f2371c = 2;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2372d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2373e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f2374f = false;

        public f() {
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0036  */
        /* JADX WARN: Code duplicated, block: B:32:0x004f  */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            if (u0.b.f17306a0 != 1) {
                return;
            }
            boolean z3 = u0.b.f17347o == 1;
            int iCmd_252_Normal_Io_Get = z3 ? 1 : ToolsJni.cmd_252_Normal_Io_Get(5);
            int iCmd_252_Normal_Io_Get2 = z3 ? 1 : ToolsJni.cmd_252_Normal_Io_Get(6);
            if (iCmd_252_Normal_Io_Get == 0) {
                int i2 = this.f2372d + 1;
                this.f2372d = i2;
                if (i2 >= 4) {
                    p pVar = p.this;
                    if (pVar.C0) {
                        z2 = false;
                    } else {
                        pVar.C0 = true;
                        z2 = true;
                    }
                } else {
                    z2 = false;
                }
                if (i2 >= 4) {
                    this.f2372d = 12;
                }
            } else {
                int i3 = this.f2372d;
                if (i3 > 0) {
                    int i4 = i3 - 1;
                    this.f2372d = i4;
                    if (i4 <= 0) {
                        p pVar2 = p.this;
                        if (pVar2.C0) {
                            pVar2.C0 = false;
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    } else {
                        z2 = false;
                    }
                    if (i4 < 0) {
                        this.f2372d = 0;
                    }
                } else {
                    z2 = false;
                }
            }
            if (iCmd_252_Normal_Io_Get2 == 0) {
                int i5 = this.f2373e + 1;
                this.f2373e = i5;
                if (i5 >= 4) {
                    p pVar3 = p.this;
                    if (!pVar3.D0) {
                        pVar3.D0 = true;
                        z2 = true;
                    }
                }
                if (i5 >= 4) {
                    this.f2373e = 12;
                }
            } else {
                int i6 = this.f2373e;
                if (i6 > 0) {
                    int i7 = i6 - 1;
                    this.f2373e = i7;
                    if (i7 <= 0) {
                        p pVar4 = p.this;
                        if (pVar4.D0) {
                            pVar4.D0 = false;
                            z2 = true;
                        }
                    }
                    if (i7 < 0) {
                        this.f2373e = 0;
                    }
                }
            }
            int i8 = this.f2372d;
            boolean z4 = i8 >= 2 && this.f2373e >= 2;
            boolean z5 = p.this.E0;
            boolean z6 = z4;
            z6 = z4;
            boolean z7 = z4;
            if (z4 != z5) {
                if (!z4 && z5) {
                    int i9 = this.f2373e;
                    z6 = (i9 > 0 || i8 > 0) && Math.abs(i8 - i9) < 12;
                }
                p.this.E0 = z6;
                z2 = true;
                z7 = z6;
            }
            if (z2) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                p pVar5 = p.this;
                if (jElapsedRealtime - pVar5.F0 > 1000) {
                }
                if (pVar5.C0 || pVar5.D0 || pVar5.E0) {
                    c0.f13022p = true;
                    c0.f13023q = true;
                    c0.f13026t = 0;
                    c0.f13024r = 0;
                    c0.f13028v = 0;
                } else {
                    c0.f13023q = false;
                }
                u0.i.l3().g4(4096, p.this.C0 | (c0.f13026t > 0));
                u0.i.l3().g4(8192, p.this.D0 | (c0.f13024r > 0));
                int[] iArr = new int[1];
                iArr[0] = z7 | (c0.f13028v > 0 ? 1 : 0);
                u0.d.I3(139, iArr);
                p pVar6 = p.this;
                boolean z8 = pVar6.C0 || pVar6.D0;
                boolean z9 = this.f2374f;
                if (z9 != z8) {
                    if (z8 && !z9 && (pVar6.G0 == null || pVar6.H0 == null)) {
                        if (u0.b.f17314d == 0 || u0.b.f17332j == 1) {
                            Log.e("Device", "-------->> turnOnScreen");
                            p.this.G0 = Integer.valueOf(u0.b.f17314d);
                            p.this.H0 = Integer.valueOf(u0.b.f17332j);
                            p pVar7 = p.this;
                            pVar7.f613s.removeCallbacks(pVar7.K0);
                            p pVar8 = p.this;
                            pVar8.f613s.postDelayed(pVar8.K0, 600L);
                        }
                    } else if (!z8 && z9 && (pVar6.G0 != null || pVar6.H0 != null)) {
                        Log.e("Device", "-------->> turnOffScreen");
                        p pVar9 = p.this;
                        pVar9.f613s.removeCallbacks(pVar9.K0);
                        p.this.L0.run();
                    }
                    this.f2374f = z8;
                }
            }
            Handler handler = p.this.f613s;
            if (handler != null) {
                handler.removeCallbacks(this);
                p.this.f613s.postDelayed(this, 60L);
            }
        }
    }

    public class g implements o1.o {
        public g() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 0) {
                return true;
            }
            c.e.d().c(634);
            return true;
        }
    }

    public class h implements o1.o {
        public h() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            c.e.d().c(590);
            return true;
        }
    }

    public class i implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2378a = false;

        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2 = h1.a.d().e() == 1 && y0.f.T0 == 1;
            boolean z3 = u0.b.D == 15 && (h1.a.d().e() == 1 ? u0.i.l3().j3() == 2 : u0.i.l3().r3());
            int i2 = h0.c.E;
            boolean z4 = z2 || z3 || (i2 == 5 || i2 == 4 || i2 == 3) || (u0.b.D == 2 && h0.c.U == 1);
            Log.e("Qin", "-------------- DataMain.sAppId: " + u0.b.D + " isExtraCalling() : " + u0.i.l3().r3() + " getCpCallStateOfCarlink(): " + u0.i.l3().j3() + " enable : " + this.f2378a + " to : " + z4 + " isHeadsetConnected : " + p.this.N0);
            if (this.f2378a != z4) {
                this.f2378a = z4;
                if (!z4 || !p.this.N0) {
                    Log.e("Qin", "--------------stopBluetoothSco");
                    if (h1.a.d().e() != 1) {
                        AudioSystem.setPhoneState(0);
                    }
                    new j1.c("setParameter").g(a.f.f()).e(AudioManager.class).d("sprd_voip_start", "false").a();
                    a.f.f().stopBluetoothSco();
                    return;
                }
                Log.e("Qin", "--------------startBluetoothSco");
                if (h1.a.d().e() != 1) {
                    AudioSystem.setPhoneState(2);
                }
                new j1.c("setParameter").g(a.f.f()).e(AudioManager.class).d("sprd_voip_start", "true").a();
                a.f.f().startBluetoothSco();
                y0.h.M();
            }
        }
    }

    public class j implements o1.p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Runnable f2380a;

        public j(Runnable runnable) {
            this.f2380a = runnable;
        }

        @Override // o1.p
        public void d(Object obj) {
            this.f2380a.run();
        }
    }

    public p() {
        this.D = 2;
        f1.o.a(new f1.o.f("LT6911", 2), new f1.o.d("/dev/i2c-0", 43, f1.i.class));
        if (!g.e.j(59)) {
            if (g.e.j(68)) {
                e.c.f1617w = new h();
                u0.b.P3 = 1;
                return;
            } else {
                if (g.e.j(70) || g.e.j(61)) {
                    u0.b.V3 = false;
                    d0();
                    return;
                }
                return;
            }
        }
        y0.j.a3().l3("com.android.launcher9");
        x0.c.X2().Z2("NULLLL".equals(s0.o("ro.ls.gyro", "NULLLL")) ? 1 : 2);
        e.c.f1596b = new g();
        c.g gVarG = c.g.g(App.c());
        gVarG.b();
        gVarG.a(new c.g.b(0, null, "com.syu.doublecamera", null));
        gVarG.a(new c.g.b(1, null, "com.syu.carlink", null));
        gVarG.a(new c.g.b(2, null, "com.syu.hicar", null));
        gVarG.a(new c.g.b(3, null, "com.baidu.carlifevehicle", null));
        gVarG.a(new c.g.b(4, null, "Home", "Home"));
        d0();
    }

    @Override // g.o
    public void X() {
        f1.o.a(new f1.o.f("ARK7128", 1), new f1.o.d("/dev/i2c-1", 88, f1.j.class));
    }

    @Override // g.k, g.o, chip.Chip, g.g
    public void a() {
        if (g.e.j(71)) {
            u0.c.f17379f.d(this.I0);
            u0.c.f17376c.d(this.J0);
        }
        super.a();
    }

    @Override // g.k, g.o, chip.Chip, g.g
    public void b() {
        super.b();
        if (g.e.j(71)) {
            this.f613s.postDelayed(this.M0, 3000L);
            u0.c.f17379f.a(this.I0, 1);
            u0.c.f17376c.a(this.J0, 1);
        }
        if (g.e.l()) {
            if (g.e.j(66) || g.e.j(71) || g.e.j(70)) {
                m1.c.i(208);
            }
        }
    }

    @Override // g.k, f1.o.e
    public void c(boolean z2, f1.o.b[] bVarArr) {
        super.c(z2, bVarArr);
        if (!this.f620z.m() || bVarArr == null) {
            return;
        }
        for (f1.o.b bVar : bVarArr) {
            g0(bVar.a(), bVar.b());
        }
    }

    public final void d0() {
        Log.e("Qin", "--------------S9863 handlePhoneState ");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(BluetoothAdapter.ACTION_CONNECTION_STATE_CHANGED);
        App.c().registerReceiver(this.O0, intentFilter);
        e0();
        i iVar = new i();
        h0.d.f2462a.a(iVar, 0);
        u0.c.f17374a.a(iVar, 0);
        y0.g.f18101k.a(new j(iVar));
        u0.i.l3().f17451d0.a(iVar, 0);
        u0.i.l3().f17450c0.a(iVar, 1);
    }

    public final void e0() {
        this.N0 = BluetoothAdapter.getDefaultAdapter().getProfileConnectionState(1) == 2;
        Log.e("Qin", "--------------S9863 headsetConnected " + this.N0);
        s0.F("sys.lsecbt.headset.state", this.N0 ? "1" : "0");
    }

    public void f0() {
        ToolsJni.setInputForGpio(5, 1);
        ToolsJni.setInputForGpio(6, 1);
    }

    /* JADX WARN: Code duplicated, block: B:55:0x0108  */
    public void g0(int i2, int i3) {
        int i4 = 10;
        boolean z2 = false;
        if (i3 == 13 || i3 == 9 || i3 == 16 || i3 == 15) {
            this.f620z.w(11, i2);
            this.f620z.w(12, i2);
            this.f620z.w(13, i2);
            this.f620z.w(14, i2);
            if (g.f.g() == 3 && i3 == 9) {
                z2 = true;
            }
            i4 = 1;
        } else {
            if (i3 == 8 || i3 == 19) {
                if (i3 == 8) {
                    this.f620z.y(i2, this.f2297x0);
                }
                if (i2 == 1) {
                    this.f620z.w(2, i2);
                    this.f620z.w(3, i2);
                    this.f620z.w(4, i2);
                    this.f620z.w(5, i2);
                    this.f620z.w(6, i2);
                    this.f620z.w(7, i2);
                    this.f620z.w(8, i2);
                    this.f620z.w(9, i2);
                    boolean z3 = g.f.g() == 4;
                    boolean z4 = g.f.g() == 2;
                    if (z4) {
                        this.f620z.w(15, i2);
                    }
                    if (g.f.g() == 0 || z3 || z4) {
                        z2 = true;
                    }
                } else {
                    boolean z5 = g.f.g() == 4;
                    boolean z6 = g.f.g() == 2;
                    if (z5 || z6) {
                        this.f620z.w(16, i2);
                    } else if (s0.o("ro.fyt.realplatform", ProxyProperties.LOCAL_EXCL_LIST).equals("6316N")) {
                        this.f620z.w(2, i2);
                        this.f620z.w(3, i2);
                        this.f620z.w(4, i2);
                        this.f620z.w(5, i2);
                        this.f620z.w(6, i2);
                        this.f620z.w(7, i2);
                        this.f620z.w(8, i2);
                        this.f620z.w(9, i2);
                        this.f620z.w(15, i2);
                        z2 = true;
                    }
                }
            } else if (i3 == 12 || i3 == 10) {
                this.f620z.w(10, i2);
                z2 = this.E;
            }
            i4 = 1;
        }
        if (z2) {
            this.f620z.C(i2, i4);
        }
    }

    @Override // chip.Chip
    public void j(AudioDevice audioDevice) {
        super.j(audioDevice);
        if (audioDevice instanceof C3702) {
            int[] iArr = y0.f.f18086x0;
            iArr[5] = 2;
            iArr[6] = 2;
            iArr[0] = 9;
        }
    }

    @Override // g.k, chip.Chip
    public void k(f1.o.c cVar) {
        f1.o oVarG = f1.o.g();
        this.f620z = oVarG;
        oVarG.v(cVar);
        this.f620z.x(true);
        if (this.f620z.t("TP2850") >= 0) {
            f1.b.f1928v0 = this.A0;
            f1.b.f1929w0 = this.B0;
        }
        this.f620z.l(this);
        f1.o oVar = this.f620z;
        if (oVar == null || !oVar.m()) {
            u0.c.P.a(this.f2298y0);
        }
    }
}

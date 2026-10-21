package g;

import android.app.backup.FullBackup;
import android.media.videoeditor.MediaProperties;
import android.util.Log;
import com.syu.jni.ToolsJni;
import f1.q;
import module.sound.AudioDevice;
import module.sound.C7604;
import o1.q0;
import o1.s0;
import o1.y;

/* JADX INFO: loaded from: classes.dex */
public class h extends m {
    public final Runnable R0 = new a();
    public final Runnable S0 = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ToolsJni.cmd_251_Normal_Io_Set(16, u0.i.l3().f17462k != 1 ? 0 : 1);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.h0(u0.b.f17366w);
        }
    }

    public h() {
        f1.e.W = 64;
        this.f2295v0 = this.f2294u0;
        this.f2293t0 = new int[]{64, 0, 53, 37, 64, 8, 0, 68, 20, 70, 21, 8, 64, 0};
        if (e.l()) {
            U(false);
            m1.c.i(200);
        }
    }

    @Override // chip.Chip
    public void K() {
        if (s0.m("sys.fyt.bootvideo", 0) == 0) {
            super.K();
        }
    }

    @Override // g.o, chip.Chip
    public void V() {
        this.f596c = "/dev/i2c-0";
        this.f598d = "/dev/i2c-2";
        this.f599e = "/dev/ttyS2";
        this.f600f = "/dev/ttyS0";
        this.f601g = "/dev/ttyS2";
        this.f602h = "/dev/ttyS0";
        this.f603i = "/dev/ttyS1";
        this.f604j = "/dev/ttyS0";
        Log.e("Qin", "--------->>>  setupDevPath");
    }

    @Override // g.m, g.p, g.o
    public void X() {
        f1.o.a(new f1.o.f("TP2815", 0), new f1.o.d("/dev/i2c-0", 68, f1.a.class));
        f1.o.a(new f1.o.f("TP2850", 1), new f1.o.d("/dev/i2c-3", 68, f1.b.class));
        f1.o.a(new f1.o.f("TP9963", 1), new f1.o.d("/dev/i2c-3", 68, f1.e.class));
        f1.o.g().A(0, "sys.fyt.main.vc_");
        f1.o.g().A(1, "sys.fyt.sub.vc_");
    }

    @Override // g.p, g.k, g.o, chip.Chip, g.g
    public void a() {
        y0.g.f18100j.d(this.f2338j0);
        y yVar = u0.c.f17376c;
        yVar.d(this.G);
        u0.c.f17381h.d(this.G);
        u0.c.f17379f.d(this.I0);
        u0.c.f17399z.d(this.S0);
        yVar.d(this.J0);
        super.a();
    }

    @Override // g.p, g.k, g.o, chip.Chip, g.g
    public void b() {
        super.b();
        m1.c.i(208);
        ToolsJni.setInputForGpio(5, 1);
        ToolsJni.setInputForGpio(6, 1);
        if (y0.f.f18054h1 == 1) {
            ToolsJni.setInputForGpio(8, 1);
            y0.g.f18100j.a(this.f2338j0, 1);
            u0.c.f17376c.a(this.G, 0);
            u0.c.f17381h.a(this.G, 1);
            this.f613s.postDelayed(this.f2339k0, 100L);
            this.f613s.postDelayed(this.M0, 3000L);
        }
        if (m1.c.k(200)) {
            u0.i.l3().f17449b0.a(this.R0, 1);
        }
        u0.c.f17379f.a(this.I0, 1);
        u0.c.f17399z.a(this.S0, 1);
        u0.c.f17376c.a(this.J0, 1);
    }

    @Override // g.p
    public void f0() {
        ToolsJni.setInputForGpio(8, 1);
        ToolsJni.setInputForGpio(5, 1);
        ToolsJni.setInputForGpio(6, 1);
    }

    @Override // g.m, g.p
    public void g0(int i2, int i3) {
        super.g0(i2, i3);
        int i4 = 15;
        boolean z2 = false;
        if (i3 != 18) {
            i4 = 1;
        } else {
            q qVarD = this.f620z.d(i2);
            if (qVarD != null) {
                qVarD.l(0, MediaProperties.HEIGHT_720, 240);
                qVarD.l(1, MediaProperties.HEIGHT_720, MediaProperties.HEIGHT_288);
                qVarD.F(q.L, FullBackup.APK_TREE_TOKEN);
                qVarD.F(q.M, "b");
            }
            this.f620z.w(2, i2);
            this.f620z.w(3, i2);
            this.f620z.w(4, i2);
            this.f620z.w(5, i2);
            this.f620z.w(6, i2);
            this.f620z.w(7, i2);
            this.f620z.w(8, i2);
            this.f620z.w(9, i2);
            this.f620z.w(15, i2);
            this.f620z.w(16, i2);
            z2 = !this.E;
        }
        if (z2) {
            this.f620z.C(i2, i4);
        }
    }

    public void h0(int i2) {
        ToolsJni.callSystemCtrl(37, i2);
    }

    @Override // g.p, chip.Chip
    public void j(AudioDevice audioDevice) {
        super.j(audioDevice);
        if (audioDevice instanceof C7604) {
            for (int i2 = 1; i2 < 20; i2++) {
                if (i2 == 1) {
                    audioDevice.V0(i2, 3);
                } else if (audioDevice.j0(i2) == 1) {
                    audioDevice.V0(i2, -4);
                }
            }
        }
    }

    @Override // chip.Chip
    public int l() {
        return Math.max(0, (int) q0.s("/sys/devices/virtual/mstar/msys/TEMP_R"));
    }

    @Override // g.m, chip.Chip
    public String t(String str) {
        return this.f598d;
    }
}

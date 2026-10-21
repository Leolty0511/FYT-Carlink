package n0;

import android.bluetooth.BluetoothClass;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import app.App;
import chip.Chip;
import com.syu.jni.ToolsJni;
import module.sound.AudioDevice;
import module.sound.C32107;

/* JADX INFO: loaded from: classes2.dex */
public class k1 extends c4 {
    public static int[] A = {10, 35, 60};
    public static int[] B = {5, 30, 55};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16480z = 0;

    public class a implements o1.o {
        public a() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != -3) {
                return true;
            }
            int[] iArr2 = u0.b.f17366w == 0 ? k1.A : k1.B;
            int length = iArr2.length;
            int iC = o1.n0.c(iArr2, u0.b.K) - 1;
            if (u0.b.f17332j == 1 && u0.b.f17320f != 0) {
                u0.d.N(0);
                return true;
            }
            if (iC > -1 && iC < length) {
                u0.d.V(o1.o0.a(iArr2[iC], 0, u0.b.Q));
                o1.n0.b();
            } else if (iC == -1) {
                u0.d.N(1);
                a.i.a0(200L);
                u0.d.V(u0.b.Q);
            }
            return true;
        }
    }

    public class b implements c.f.a {
        public b() {
        }

        @Override // c.f.a
        public boolean a() {
            o1.u.J();
            return true;
        }
    }

    public class c implements o1.p {
        public c() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            ToolsJni.cmd_251_Normal_Io_Set(0, ((Integer) obj).intValue() == 6 ? 1 : 0);
        }
    }

    public class d implements c.f.a {
        public d() {
        }

        @Override // c.f.a
        public boolean a() {
            o1.u.i();
            return true;
        }
    }

    @Override // n0.c4
    public void H3(AudioDevice audioDevice) {
        super.H3(audioDevice);
        String strO = o1.s0.o("sys.fyt.bluetooth_type", "0");
        boolean z2 = "2".equals(strO) || "4".equals(strO) || "6".equals(strO);
        if (z2 && (audioDevice instanceof C32107)) {
            C32107.CHANNEL channel = C32107.CHANNEL.TV;
            audioDevice.L0(2, channel.f15215a);
            audioDevice.L0(3, channel.f15215a);
        } else if (z2) {
            audioDevice.L0(2, 4);
            audioDevice.L0(3, 4);
        }
    }

    @Override // n0.c4
    public void I3(e1.c cVar) {
        super.I3(cVar);
        if (cVar instanceof e1.e) {
            ((e1.e) cVar).R(true);
        }
    }

    @Override // n0.c4
    public boolean N2(String str, String str2) {
        if (super.N2(str, str2)) {
            return true;
        }
        new i1.b(21, 20);
        return true;
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() == 6) {
            u0.b.t4[3] = 6;
            y0.d.r();
            y0.d.x();
            z.k.g("/dev/ttyS0");
            return;
        }
        z.a.f18172w.a("/dev/snd/sound_spectrogram");
        z.k.c();
        if (g.e.e() == 7) {
            y0.b.r();
        }
    }

    @Override // n0.c4
    public void X2() throws Throwable {
        b.b.f().b("2", true);
        c.f.b().i(BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA, new b());
        String str = SystemProperties.get("persist.sys.syu.audio", ProxyProperties.LOCAL_EXCL_LIST);
        String strO = o1.s0.o("sys.fyt.bluetooth_type", "0");
        if ((strO.equals("2") || strO.equals("4") || strO.equals("6")) && "32107".equals(str)) {
            u0.c.f17375b.a(new c());
            ToolsJni.cmd_251_Normal_Io_Set(0, u0.b.D != 6 ? 0 : 1);
        }
        super.X2();
        g.g gVar = g.e.f2254a;
        if (gVar instanceof Chip) {
            N2(((Chip) gVar).x(), ProxyProperties.LOCAL_EXCL_LIST);
        }
        new i1.d(23, 22);
        new i1.c(19, 18);
        c.f.b().h(10, new d());
    }

    @Override // n0.c4
    public void Z2() {
        g.f.j();
        g.e.g();
        c1.b.g(6);
    }

    @Override // n0.c4
    public void a3() {
        g.f.k();
        SystemProperties.set("sys.fyt.voice.dzsj", "true");
        if (g.e.g() != 1) {
            g.e.g();
            return;
        }
        if (SystemProperties.getInt("syu.persist.tmps", 0) == 1) {
            z.k.k("/dev/ttyS4", 38400, 11);
            return;
        }
        if (o1.u.k0(App.c().getApplicationContext(), "com.syu.driver")) {
            z.k.k("/dev/ttyS4", 9600, 11);
            return;
        }
        z.k.f("/dev/ttyS4");
        u0.b.t4[3] = 4;
        int[] iArr = y0.b.f17952b;
        iArr[4] = iArr[7];
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        if (g.e.g() != 1) {
            if (g.e.g() == 2) {
                c1.b.g(6);
            }
        } else {
            if (SystemProperties.getInt("syu.persist.tmps", 0) == 1) {
                z.k.k("/dev/ttyS4", 38400, 11);
                return;
            }
            if (o1.u.k0(App.c().getApplicationContext(), "com.syu.driver")) {
                z.k.k("/dev/ttyS4", 9600, 11);
                return;
            }
            z.k.f("/dev/ttyS4");
            u0.b.t4[3] = 4;
            int[] iArr = y0.b.f17952b;
            iArr[4] = iArr[7];
        }
    }

    @Override // n0.c4
    public int h3() {
        if (this.f16341f == 7 || g.e.j(52)) {
            return 2;
        }
        return this.f16341f == 9 ? 12 : -1;
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "DZSJ";
        m1.a.f13515d = 99;
        u0.b.h2 = true;
        u0.b.n2 = true;
        e.b.f1594b = 1;
        u0.b.o2 = 3;
        u0.b.p2 = false;
        super.j3();
        if (o1.q0.v()) {
            u0.b.P2 = 50;
            u0.b.R2 = 50;
        }
        h0.c.f2440i0 = 1;
        u0.b.l2 = false;
    }

    @Override // n0.c4
    public void x3() {
        super.x3();
        u0.b.Y2 = new a();
    }
}

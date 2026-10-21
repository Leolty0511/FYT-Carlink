package n0;

import android.bluetooth.BluetoothClass;
import app.App;
import module.sound.AudioDevice;
import module.sound.C32107;
import module.sound.C32107S;
import module.sound.C7604;
import module.sound.C8288;

/* JADX INFO: loaded from: classes2.dex */
public class e0 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16402z = 0;
    public Runnable A = new c();

    public class a extends c.d {
        public a() {
        }

        @Override // c.d
        public boolean b(int i2) {
            if (h1.a.d().e() > 0) {
                c.e.d().b().c(576);
                return true;
            }
            if (o1.u.k0(App.c(), "vn.com.cogamichi.app")) {
                o1.u.J0("vn.com.cogamichi.app");
                return true;
            }
            if (!o1.u.k0(App.c(), "com.linkgo.linkgoai")) {
                return false;
            }
            o1.u.J0("com.linkgo.linkgoai");
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
            if (!o1.u.l0("com.syu.aftercamera")) {
                return false;
            }
            o1.u.S0("com.syu.aftercamera");
            return true;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18031a != 1) {
                return;
            }
            e0.this.T3();
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.A);
    }

    @Override // n0.c4
    public void H3(AudioDevice audioDevice) {
        super.H3(audioDevice);
        String strO = o1.s0.o("sys.fyt.bluetooth_type", "0");
        boolean z2 = "2".equals(strO) || "4".equals(strO) || "6".equals(strO);
        boolean z3 = audioDevice instanceof C32107;
        if (z3) {
            audioDevice.M0(144, 11);
            audioDevice.L0(6, C32107.CHANNEL.AUX.f15215a);
        }
        if (z2 && (z3 || (audioDevice instanceof C32107S))) {
            C32107.CHANNEL channel = C32107.CHANNEL.TV;
            audioDevice.L0(2, channel.f15215a);
            audioDevice.L0(3, channel.f15215a);
        } else if (z2 && (audioDevice instanceof module.sound.a)) {
            audioDevice.L0(2, 4);
            audioDevice.L0(3, 4);
        } else if (audioDevice instanceof C8288) {
            AudioDevice.Q0(new int[]{0, 15, 25, 55, 75, 90, 100, 107, 114, 120, 125, 130, 134, 135, 139, 143, 147, 151, 155, 159, 163, 167, 171, 173, 176, 178, 180, 182, 184, 186, 188, 189, 190, 191, 192, 193, 194});
        } else if (audioDevice instanceof C7604) {
            audioDevice.L0(4, C7604.CHANNEL.IN3.f15469a);
        }
    }

    @Override // n0.c4
    public void M2() throws Throwable {
        super.M2();
        o1.u.F0("com.etrovision.emaaservice", "com.etrovision.emaaservice.service.EmaaService");
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
            u0.b.t4[7] = 22;
            o1.q0.v();
        }
        if (o1.q0.v()) {
            if (g.e.e() == 8) {
                u0.b.P2 = 67;
                u0.b.R2 = 67;
            } else {
                u0.b.P2 = 0;
                u0.b.R2 = 0;
            }
        }
    }

    public final void T3() {
        int[] iArr = {128, 33, 32, 30, 28, 27, 26, 25, 23, 19, 17, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1, -2, -3, -4, -5, -6, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7};
        y0.b.f17955e[0] = 255;
        for (int i2 = 1; i2 <= 51; i2++) {
            y0.b.f17955e[i2] = iArr[i2] + 128;
        }
    }

    @Override // n0.c4
    public void U2() throws Throwable {
        u0.b.V2 = new int[]{10, 50, 100};
        u0.b.W2 = new int[]{25, 75, 100};
        super.U2();
    }

    @Override // n0.c4
    public void X2() throws Throwable {
        w0.d.R = 0;
        w0.d.S = 1;
        super.X2();
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        if (g.e.g() != 1) {
            if (g.e.g() == 2) {
                u0.b.t4[3] = 6;
                return;
            }
            return;
        }
        if (g.e.e() == 8) {
            if (o1.q0.v()) {
                u0.b.t4[7] = 21;
            } else {
                u0.b.t4[7] = 22;
            }
            u0.b.t4[6] = 24;
        } else if (g.e.e() == 14) {
            u0.b.t4[7] = 22;
        }
        z.k.k("/dev/ttyS1", 19200, 5);
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "AYI";
        m1.a.f13515d = 49;
        u0.b.t4[8] = 21;
        super.j3();
        y0.g.f18091a.a(this.A, 0);
    }

    @Override // n0.c4
    public void x3() {
        super.x3();
        c.e.d().j(BluetoothClass.Device.PHONE_MODEM_OR_GATEWAY, new a());
        c.e.d().i(539, new b());
    }
}

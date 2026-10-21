package n0;

import android.bluetooth.BluetoothClass;
import app.App;
import module.sound.AudioDevice;
import module.sound.C32107;

/* JADX INFO: loaded from: classes2.dex */
public class f0 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16412z = new b();

    public class a extends c.d {
        public a() {
        }

        @Override // c.d
        public boolean b(int i2) {
            o1.u.g("com.vietmap.assistant");
            return true;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18031a == 1 && g.e.a() == 3) {
                f0.this.T3();
            }
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.f16412z);
    }

    @Override // n0.c4
    public void H3(AudioDevice audioDevice) {
        super.H3(audioDevice);
        if (audioDevice instanceof C32107) {
            audioDevice.L0(6, C32107.CHANNEL.DVD.f15215a);
        }
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
        int[] iArr = u0.b.t4;
        iArr[7] = 22;
        iArr[5] = 22;
    }

    public final void T3() {
        int[] iArr = {128, 33, 32, 30, 28, 27, 26, 25, 23, 19, 17, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1, -2, -3, -4, -5, -6, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7};
        y0.b.f17955e[0] = 255;
        for (int i2 = 1; i2 <= 51; i2++) {
            y0.b.f17955e[i2] = iArr[i2] + 128;
        }
        System.arraycopy(new int[]{255, 175, 171, 167, 163, 159, 156, 153, 150, 147, 145, 143, 141, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116}, 0, y0.b.f17954d, 0, 37);
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        if (g.e.g() == 1) {
            int[] iArr = u0.b.t4;
            iArr[7] = 22;
            iArr[5] = 22;
        } else if (g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "PSTAR";
        m1.a.f13515d = 50;
        u0.b.V3 = true;
        y0.f.J0 = 1;
        e.b.f1594b = 1;
        super.j3();
        y0.g.f18091a.a(this.f16412z, 0);
        w0.d.S = 1;
        w0.d.R = 0;
        if (o1.u.k0(App.c(), "com.vietmap.assistant")) {
            c.e.d().i(BluetoothClass.Device.PHONE_MODEM_OR_GATEWAY, new a());
        }
    }
}

package n0;

import base.Configure;
import chip.Chip;
import k0.rt;
import module.sound.AudioDevice;
import module.sound.C8288;

/* JADX INFO: loaded from: classes2.dex */
public class y0 extends c4 {
    @Override // n0.c4
    public void P2() {
        if (g.e.e() != 6) {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
        } else {
            u0.b.t4[3] = 6;
            y0.d.r();
            y0.d.x();
            z.k.g("/dev/ttyS0");
        }
    }

    @Override // n0.c4
    public void S2() throws Throwable {
        super.S2();
        AudioDevice audioDeviceW = AudioDevice.W();
        g.g gVar = g.e.f2254a;
        if (gVar instanceof Chip) {
            Chip chip2 = (Chip) gVar;
            if ((((audioDeviceW instanceof C8288) || rt.a3().g3()) && chip2.u().equals(chip2.x())) || !Configure.Property.TPMS_SERIAL_ENABLE.b(false)) {
                return;
            }
            c1.b.g(13);
            z.k.k(chip2.x(), 38400, 13);
        }
    }

    @Override // n0.c4
    public void X2() throws Throwable {
        super.X2();
        int i2 = o0.e.f16764a;
        if (i2 == 1 || i2 == 2) {
            return;
        }
        AudioDevice audioDeviceW = AudioDevice.W();
        g.g gVar = g.e.f2254a;
        if (gVar instanceof Chip) {
            Chip chip2 = (Chip) gVar;
            if ((((audioDeviceW instanceof C8288) || rt.a3().g3()) && chip2.u().equals(chip2.x())) || !Configure.Property.TPMS_SERIAL_ENABLE.b(false)) {
                return;
            }
            c1.b.g(13);
            z.k.k(chip2.x(), 38400, 13);
        }
    }

    @Override // n0.c4
    public void a3() throws Throwable {
        super.a3();
        AudioDevice audioDeviceW = AudioDevice.W();
        g.g gVar = g.e.f2254a;
        if (gVar instanceof Chip) {
            Chip chip2 = (Chip) gVar;
            if ((((audioDeviceW instanceof C8288) || rt.a3().g3()) && chip2.u().equals("/dev/ttyS4")) || !Configure.Property.TPMS_SERIAL_ENABLE.b(false)) {
                return;
            }
            c1.b.g(13);
            z.k.k("/dev/ttyS4", 38400, 13);
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "HYI";
        m1.a.f13515d = 81;
        super.j3();
        h0.c.f2440i0 = 2;
    }
}

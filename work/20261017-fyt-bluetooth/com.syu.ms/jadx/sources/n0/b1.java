package n0;

/* JADX INFO: loaded from: classes2.dex */
public class b1 extends c4 {
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
    public void j3() {
        j4.f16465c = "YIC";
        m1.a.f13515d = 84;
        super.j3();
    }
}

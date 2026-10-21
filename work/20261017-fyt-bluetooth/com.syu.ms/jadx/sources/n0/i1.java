package n0;

/* JADX INFO: loaded from: classes2.dex */
public class i1 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16456z = 0;

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
    public void j3() {
        j4.f16465c = "XY";
        m1.a.f13515d = 97;
        u0.b.h2 = true;
        u0.b.p2 = false;
        super.j3();
        if (o1.q0.v()) {
            u0.b.P2 = 50;
            u0.b.R2 = 50;
        }
    }
}

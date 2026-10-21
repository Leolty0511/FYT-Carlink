package n0;

/* JADX INFO: loaded from: classes2.dex */
public class b extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16311z = 0;

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
    public void j3() {
        j4.f16465c = "NOR";
        m1.a.f13515d = 180150002;
        u0.b.h2 = true;
        super.j3();
        if (o1.q0.v()) {
            u0.b.P2 = 50;
            u0.b.R2 = 50;
        }
    }
}

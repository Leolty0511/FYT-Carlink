package n0;

/* JADX INFO: loaded from: classes2.dex */
public class a2 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16310z = 0;

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
    public void b3() {
        g.f.l();
        if (g.e.g() == 1) {
            u0.b.t4[5] = 20;
            u0.b.u4[5] = 3;
        } else if (g.e.g() == 2) {
            u0.b.t4[3] = 6;
            y0.d.f18015a[14] = 2;
            y0.d.f18016b[14] = 9;
            y0.d.f18017c[14] = 3;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "GYOU";
        m1.a.f13515d = 121;
        super.j3();
        if (o1.q0.v()) {
            u0.b.P2 = 50;
            u0.b.R2 = 50;
        }
    }
}

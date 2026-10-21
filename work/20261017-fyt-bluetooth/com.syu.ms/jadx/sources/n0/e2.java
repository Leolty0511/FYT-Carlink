package n0;

/* JADX INFO: loaded from: classes2.dex */
public class e2 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16406z = 0;
    public int A = -1;
    public int B = -1;
    public Runnable C = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e2 e2Var = e2.this;
            if (e2Var.A == y0.f.Q0 && e2Var.B == u0.b.j4) {
                return;
            }
            int i2 = y0.f.Q0;
            e2Var.A = i2;
            int i3 = u0.b.j4;
            e2Var.B = i3;
            if (h0.c.G == 0) {
                if (i2 == 1 || i3 == 1) {
                    z.k.s(1, 0, 178);
                } else {
                    z.k.s(1, 0, 177);
                }
            }
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18110t.d(this.C);
        u0.c.G.d(this.C);
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
        if (g.e.g() != 1 && g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "MWS";
        m1.a.f13515d = 131;
        super.j3();
        if (o1.q0.v()) {
            u0.b.P2 = 50;
            u0.b.R2 = 50;
        }
        y0.g.f18110t.a(this.C, 1);
        u0.c.G.a(this.C, 1);
    }
}

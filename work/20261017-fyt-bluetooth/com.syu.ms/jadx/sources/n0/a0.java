package n0;

/* JADX INFO: loaded from: classes2.dex */
public class a0 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16287z = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18031a != 1) {
                return;
            }
            y0.f.f18086x0[0] = 9;
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.f16287z);
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() == 8) {
            u0.b.P2 = 100;
            u0.b.R2 = 100;
        } else {
            u0.b.P2 = 0;
            u0.b.R2 = 0;
        }
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
        j4.f16465c = "XJL";
        m1.a.f13515d = 39;
        u0.b.U2 = 30;
        e.b.f1594b = 1;
        super.j3();
        y0.g.f18091a.a(this.f16287z, 0);
    }
}

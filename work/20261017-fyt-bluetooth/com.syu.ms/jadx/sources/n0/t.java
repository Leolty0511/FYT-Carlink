package n0;

/* JADX INFO: loaded from: classes2.dex */
public class t extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16588z = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18031a != 3) {
                return;
            }
            int[] iArr = y0.f.f18086x0;
            iArr[0] = 9;
            iArr[5] = 7;
            iArr[6] = 8;
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.f16588z);
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() != 6) {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
            u0.b.t4[7] = 22;
        } else {
            u0.b.t4[3] = 6;
            y0.d.r();
            y0.d.x();
            z.k.g("/dev/ttyS0");
        }
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        if (g.e.g() == 1) {
            u0.b.t4[7] = 22;
        } else if (g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "GMI";
        m1.a.f13515d = 32;
        u0.b.T2 = 80;
        u0.b.U2 = 40;
        super.j3();
        y0.g.f18091a.a(this.f16588z, 0);
        if (g.e.a() == 4) {
            y0.f.N = 15;
        }
    }
}

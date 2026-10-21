package n0;

/* JADX INFO: loaded from: classes2.dex */
public class q extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16550z = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18031a != 1) {
                return;
            }
            int[] iArr = y0.f.f18086x0;
            iArr[2] = 10;
            iArr[7] = 10;
        }
    }

    @Override // n0.c4
    public void C3() {
        y0.g.f18091a.d(this.f16550z);
        super.C3();
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
        j4.f16465c = "FFD";
        m1.a.f13515d = 23;
        y0.f.N = 10;
        super.j3();
        y0.g.f18091a.a(this.f16550z, 0);
        o1.v vVar = e.c.D;
        vVar.b();
        vVar.a(e.a.h(), -500);
        vVar.a(e.a.k(), 2000);
    }
}

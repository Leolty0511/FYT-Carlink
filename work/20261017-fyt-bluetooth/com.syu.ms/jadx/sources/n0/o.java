package n0;

/* JADX INFO: loaded from: classes2.dex */
public class o extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16511z = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.P0 == 1) {
                u0.b.t4[1] = 27;
            } else {
                u0.b.t4[1] = 1;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = y0.f.f18031a;
        }
    }

    @Override // n0.c4
    public void C3() {
        y0.g.f18091a.d(this.f16511z);
        super.C3();
    }

    @Override // n0.c4
    public int[] L2() {
        return new int[]{8, 8};
    }

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
    public void X2() throws Throwable {
        super.X2();
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        u0.c.J.a(new a(), 1);
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "KEQ";
        m1.a.f13515d = 21;
        u0.b.V3 = true;
        super.j3();
        y0.g.f18091a.a(this.f16511z, 0);
    }
}

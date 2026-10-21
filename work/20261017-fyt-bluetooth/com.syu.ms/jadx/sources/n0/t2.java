package n0;

/* JADX INFO: loaded from: classes2.dex */
public class t2 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16591z = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18031a != 1) {
                return;
            }
            int[] iArr = y0.f.f18086x0;
            iArr[0] = 18;
            y0.f.f18088y0[0] = 20;
            iArr[3] = 6;
            iArr[5] = 4;
            iArr[6] = 4;
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.f16591z);
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() != 6) {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
            return;
        }
        u0.b.t4[3] = 6;
        y0.d.r();
        y0.d.x();
        z.k.g("/dev/ttyS0");
        u0.b.k2 = true;
    }

    @Override // n0.c4
    public void b3() {
        super.b3();
        if (g.e.g() == 1) {
            u0.b.t4[7] = 22;
        } else if (g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "JKD";
        m1.a.f13515d = 152;
        w0.d.J = false;
        super.j3();
        y0.g.f18091a.a(this.f16591z, 0);
    }
}

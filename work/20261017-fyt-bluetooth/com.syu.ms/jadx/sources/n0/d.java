package n0;

/* JADX INFO: loaded from: classes2.dex */
public class d extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16392z = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18031a != 1) {
                return;
            }
            if (g.e.a() != 4) {
                y0.f.f18086x0[0] = 8;
                return;
            }
            int[] iArr = y0.f.f18086x0;
            iArr[0] = 12;
            iArr[5] = 1;
            iArr[6] = 3;
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.f16392z);
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
        super.b3();
        if (g.e.g() == 1) {
            u0.b.t4[7] = 22;
        } else if (g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "YG";
        m1.a.f13515d = 4;
        u0.b.d4 = false;
        e.b.f1594b = 1;
        for (int i2 = 0; i2 < 48; i2++) {
            y0.f.f18086x0[i2] = 5;
        }
        u0.b.T2 = 95;
        u0.b.U2 = 76;
        super.j3();
        y0.g.f18091a.a(this.f16392z, 0);
    }
}

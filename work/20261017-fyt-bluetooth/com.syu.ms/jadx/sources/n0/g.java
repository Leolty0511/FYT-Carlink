package n0;

/* JADX INFO: loaded from: classes2.dex */
public class g extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16417z = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18031a != 1) {
                return;
            }
            y0.f.f18086x0[6] = 1;
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.f16417z);
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() != 6) {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
            int[] iArr = u0.b.t4;
            iArr[5] = 6;
            iArr[7] = 22;
            o0.e.f16776g = 0;
            return;
        }
        u0.b.t4[3] = 6;
        y0.d.r();
        y0.d.x();
        z.k.g("/dev/ttyS0");
        y0.d.f18015a[14] = 2;
        y0.d.f18016b[14] = 2;
        y0.d.f18017c[14] = 3;
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        if (g.e.g() == 1) {
            int[] iArr = u0.b.t4;
            iArr[5] = 6;
            iArr[7] = 22;
        } else if (g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "RUL";
        m1.a.f13515d = 7;
        u0.b.X3 = true;
        super.j3();
        y0.g.f18091a.a(this.f16417z, 0);
    }
}

package n0;

/* JADX INFO: loaded from: classes2.dex */
public class y extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16619z = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = y0.f.f18031a;
            if (i2 != 1) {
                if (i2 != 2) {
                    return;
                }
                int[] iArr = y0.d.f18016b;
                iArr[12] = 3;
                iArr[13] = 3;
                return;
            }
            if (g.e.e() == 8 || g.e.e() == 11) {
                int[] iArr2 = y0.b.f17952b;
                iArr2[12] = iArr2[7];
                iArr2[13] = iArr2[7];
            }
        }
    }

    @Override // n0.c4
    public void C3() {
        y0.g.f18091a.d(this.f16619z);
        super.C3();
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() != 6) {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
            z.k.k("/dev/ttyS0", 19200, 2);
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
            z.k.k("/dev/ttyS1", 19200, 5);
        } else if (g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "SYZH";
        m1.a.f13515d = 37;
        super.j3();
        y0.g.f18091a.a(this.f16619z, 0);
    }
}

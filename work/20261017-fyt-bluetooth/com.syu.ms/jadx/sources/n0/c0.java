package n0;

/* JADX INFO: loaded from: classes2.dex */
public class c0 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16324z = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = y0.f.f18031a;
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.f16324z);
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
            u0.a.f17293h[14] = 21;
            y0.d.f18017c[14] = 2;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "KNS";
        m1.a.f13515d = 41;
        p0.b.f17025g = 5;
        super.j3();
        y0.g.f18091a.a(this.f16324z, 0);
    }
}

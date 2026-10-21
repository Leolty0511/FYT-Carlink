package n0;

/* JADX INFO: loaded from: classes2.dex */
public class n extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16503z = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18031a != 1) {
                return;
            }
            int[] iArr = y0.f.f18086x0;
            iArr[0] = 10;
            iArr[5] = 4;
            iArr[3] = 4;
        }
    }

    @Override // n0.c4
    public void C3() {
        y0.g.f18091a.d(this.f16503z);
        super.C3();
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() != 6) {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
            z.k.k("/dev/ttyS0", 9600, 1);
        } else {
            u0.b.t4[3] = 6;
            y0.d.r();
            y0.d.x();
            z.k.g("/dev/ttyS0");
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "DCE";
        m1.a.f13515d = 20;
        super.j3();
        y0.g.f18091a.a(this.f16503z, 0);
    }
}

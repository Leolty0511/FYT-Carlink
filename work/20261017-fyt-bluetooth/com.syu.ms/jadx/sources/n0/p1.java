package n0;

/* JADX INFO: loaded from: classes2.dex */
public class p1 extends c4 {
    public static final int[] A = new int[37];

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16534z = new a();

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
                int[] iArr = y0.f.f18086x0;
                iArr[0] = 7;
                iArr[5] = 3;
                iArr[6] = 4;
                return;
            }
            int[] iArr2 = y0.f.f18086x0;
            iArr2[0] = 8;
            iArr2[5] = 4;
            iArr2[3] = 8;
            iArr2[7] = 7;
            iArr2[6] = 7;
            iArr2[2] = 7;
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.f16534z);
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() == 6) {
            u0.b.t4[3] = 6;
            y0.d.r();
            y0.d.x();
            z.k.g("/dev/ttyS0");
            return;
        }
        z.a.f18172w.a("/dev/snd/sound_spectrogram");
        z.k.c();
        if (o1.q0.v()) {
            u0.b.P2 = 0;
            u0.b.R2 = 0;
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
        j4.f16465c = "LUC";
        m1.a.f13515d = 104;
        e.b.f1594b = 1;
        super.j3();
        y0.g.f18091a.a(this.f16534z, 0);
    }
}

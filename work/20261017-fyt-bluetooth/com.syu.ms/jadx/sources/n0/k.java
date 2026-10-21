package n0;

/* JADX INFO: loaded from: classes2.dex */
public class k extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16478z = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = y0.f.f18031a;
            if (i2 == 1) {
                int[] iArr = y0.f.f18086x0;
                iArr[0] = 8;
                iArr[5] = 1;
                iArr[3] = 6;
                iArr[6] = 3;
                k.this.T3();
                return;
            }
            if (i2 != 2) {
                return;
            }
            int[] iArr2 = y0.f.f18086x0;
            iArr2[0] = 7;
            iArr2[5] = 2;
            iArr2[1] = 5;
            iArr2[6] = 0;
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.f16478z);
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
        o0.e.f16785k0 = 1;
        z.k.f("/dev/ttyS0");
        u0.b.t4[3] = 3;
        int[] iArr = y0.b.f17952b;
        iArr[4] = iArr[7];
    }

    public final void T3() {
        int[] iArr = {128, 33, 32, 30, 28, 27, 26, 25, 23, 19, 17, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1, -2, -3, -4, -5, -6, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7};
        y0.b.f17955e[0] = 255;
        for (int i2 = 1; i2 <= 51; i2++) {
            y0.b.f17955e[i2] = iArr[i2] + 128;
        }
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        if (g.e.g() == 1) {
            u0.b.t4[3] = 3;
        } else if (g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "ZHX";
        m1.a.f13515d = 17;
        u0.b.U3 = false;
        u0.b.b4 = 0;
        u0.b.U2 = 62;
        super.j3();
        y0.g.f18091a.a(this.f16478z, 0);
    }
}

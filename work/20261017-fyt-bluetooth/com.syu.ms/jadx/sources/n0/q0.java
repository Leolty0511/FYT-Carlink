package n0;

/* JADX INFO: loaded from: classes2.dex */
public class q0 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16552z = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18031a != 2) {
                return;
            }
            if (g.e.a() == 6) {
                System.arraycopy(new int[]{2, 5, 9, 13, 24, 36, 48, 60, 73, 88, 96, 102, 108, 114, 120, 126, 132, 138, 146, 152, 158, 164, 169, 174, 180, 186, 189, 192, 195, 198, 200, 202, 203, 204, 205, 207}, 0, y0.d.f18026l, 1, 36);
                y0.d.q();
            } else {
                System.arraycopy(new int[]{9, 15, 22, 30, 37, 45, 55, 65, 78, 88, 96, 102, 108, 114, 120, 126, 132, 138, 146, 152, 158, 164, 169, 174, 180, 186, 189, 192, 195, 198, 200, 202, 203, 204, 205, 207}, 0, y0.d.f18026l, 1, 36);
                y0.d.q();
            }
            y0.h.M();
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.f16552z);
    }

    @Override // n0.c4
    public void I3(e1.c cVar) {
        super.I3(cVar);
        if (g.e.a() == 8 && (cVar instanceof e1.e)) {
            cVar.v(5, 4);
        }
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() == 8) {
            u0.b.P2 = 100;
            u0.b.R2 = 100;
        } else {
            u0.b.P2 = 0;
            u0.b.R2 = 0;
        }
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
    public void j3() {
        j4.f16465c = "JY";
        m1.a.f13515d = 67;
        y0.f.X0 = 1;
        y0.f.W0 = 5;
        u0.b.P3 = 1;
        if (j4.f16463a == 4) {
            e.b.f1594b = 1;
        }
        super.j3();
        y0.g.f18091a.a(this.f16552z, 0);
        u0.b.g2 = true;
    }
}

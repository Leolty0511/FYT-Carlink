package n0;

/* JADX INFO: loaded from: classes2.dex */
public class e extends c4 {
    public static final int[] D = new int[37];
    public int A;
    public Runnable B = new c();
    public Runnable C = new d();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16397z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.P0 == 1) {
                u0.b.t4[1] = 23;
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
            if (u0.b.P0 == 1) {
                u0.b.t4[1] = 26;
            } else {
                u0.b.t4[1] = 1;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.e.a() == 3 && u0.b.Q0 == 1 && u0.b.P0 == 1) {
                if (u0.b.X1 > 40) {
                    u0.d.I0(0);
                } else {
                    u0.d.I0(1);
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
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
        y0.b.f17958h = this.f16397z;
        y0.b.f17959i = this.A;
        y0.g.f18091a.d(this.C);
        o1.h.f16866b.d(this.B);
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
        if (!o1.q0.v()) {
            z.k.j("/dev/ttyS0", 38400, 4);
        }
        this.f16397z = y0.b.f17958h;
        y0.b.f17958h = 5;
        this.A = y0.b.f17959i;
        y0.b.f17959i = 8;
        u0.c.J.a(new a(), 1);
        if (o1.q0.v()) {
            u0.b.P2 = 0;
            u0.b.R2 = 0;
        }
    }

    @Override // n0.c4
    public void b3() {
        super.b3();
        if (g.e.g() != 1) {
            if (g.e.g() == 2) {
                u0.b.t4[3] = 6;
            }
        } else {
            u0.b.t4[7] = 22;
            if (!o1.q0.v()) {
                z.k.j("/dev/ttyS1", 38400, 4);
            }
            u0.c.J.a(new b(), 1);
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "MT";
        m1.a.f13515d = 5;
        u0.b.Z1 = 20;
        u0.b.T3 = true;
        u0.b.V3 = true;
        if (j4.f16463a != 2 && g.e.a() != 4) {
            e.b.f1594b = 1;
        }
        super.j3();
        u0.b.R2 = 120;
        u0.b.P2 = 120;
        h0.c.f2440i0 = 1;
        y0.g.f18091a.a(this.C, 0);
        o1.h.f16866b.a(this.B, 0);
    }
}

package n0;

/* JADX INFO: loaded from: classes2.dex */
public class s extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16579z = new f();

    public class a implements o1.o {
        public a() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (o1.u.S(a.b.f31s)) {
                u0.d.I3(60, 0);
            }
            return true;
        }
    }

    public class b implements o1.o {
        public b() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (o1.u.S(a.b.f31s)) {
                u0.d.I3(60, 1);
            } else {
                u0.d.M1();
            }
            return true;
        }
    }

    public class c implements o1.o {
        public c() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (o1.u.S(a.b.f31s)) {
                u0.d.I3(60, 2);
            } else {
                u0.d.O1();
            }
            return true;
        }
    }

    public class d implements o1.o {
        public d() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (o1.u.S(a.b.f31s)) {
                u0.d.I3(60, 3);
            }
            return true;
        }
    }

    public class e implements o1.o {
        public e() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (o1.u.S(a.b.f31s)) {
                u0.d.I3(60, 4);
            }
            return true;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.o4;
            if (i2 == 1) {
                u0.b.f17311c.c(5);
                return;
            }
            if (i2 == 2) {
                u0.b.f17311c.c(6);
            } else if (i2 == 7) {
                u0.b.f17311c.c(1);
            } else {
                u0.b.f17311c.c(8);
            }
        }
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
        u0.b.t4[7] = 22;
        int[] iArr = u0.a.f17293h;
        iArr[1] = 21;
        iArr[6] = 21;
        u0.c.f17383j.a(this.f16579z, 0);
        z.k.k("/dev/ttyS0", 19200, 5);
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
        j4.f16465c = "BRZH";
        m1.a.f13515d = 25;
        super.j3();
        u0.b.Z2 = new a();
        u0.b.a3 = new b();
        u0.b.b3 = new c();
        u0.b.c3 = new d();
        u0.b.d3 = new e();
    }
}

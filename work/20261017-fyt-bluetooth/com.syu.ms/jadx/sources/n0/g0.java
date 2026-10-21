package n0;

/* JADX INFO: loaded from: classes2.dex */
public class g0 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16419z = new b();

    public class a implements o1.o {
        public a() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 0) {
                return true;
            }
            int[] iArr2 = u0.b.f17366w == 0 ? u0.b.V2 : u0.b.W2;
            int length = iArr2.length;
            int iC = o1.n0.c(iArr2, u0.b.K) - 1;
            if (u0.b.f17332j == 1 && u0.b.f17320f != 0) {
                u0.d.N(0);
                return true;
            }
            if (iC > -1 && iC < length) {
                u0.d.V(o1.o0.a(iArr2[iC], 0, u0.b.Q));
                o1.n0.b();
            } else if (iC == -1) {
                u0.d.N(1);
                a.i.a0(200L);
                u0.d.V(u0.b.Q);
            }
            return true;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18031a != 1) {
                return;
            }
            int[] iArr = y0.f.f18086x0;
            iArr[0] = 10;
            iArr[1] = 8;
            iArr[2] = 8;
            iArr[3] = 8;
            iArr[4] = 8;
            iArr[5] = 8;
            iArr[6] = 8;
            iArr[7] = 8;
            iArr[8] = 8;
            iArr[9] = 8;
            iArr[10] = 8;
            iArr[11] = 8;
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.f16419z);
    }

    @Override // n0.c4
    public void P2() {
        u0.b.P2 = 100;
        u0.b.R2 = 100;
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
        o0.g.y(4);
        int[] iArr = u0.b.t4;
        iArr[3] = 3;
        int[] iArr2 = y0.b.f17952b;
        iArr2[4] = iArr2[7];
        iArr[4] = 20;
        iArr2[6] = iArr2[7];
    }

    @Override // n0.c4
    public void X2() throws Throwable {
        u0.b.P3 = 0;
        super.X2();
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        if (g.e.g() != 1) {
            if (g.e.g() == 2) {
                u0.b.t4[3] = 6;
            }
        } else {
            o0.e.f16785k0 = 1;
            o0.g.y(4);
            u0.b.t4[3] = 3;
            y0.b.f17952b[4] = 3;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "KZ";
        m1.a.f13515d = 180150002;
        u0.b.U3 = false;
        u0.b.P3 = 1;
        super.j3();
        y0.g.f18091a.a(this.f16419z, 0);
        e.c.f1612r = new a();
    }
}

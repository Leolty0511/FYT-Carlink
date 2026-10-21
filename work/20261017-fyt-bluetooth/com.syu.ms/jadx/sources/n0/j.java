package n0;

/* JADX INFO: loaded from: classes2.dex */
public class j extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16458z = 0;
    public Runnable A = new b();

    public class a implements o1.o {
        public a() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (iArr != null && iArr.length >= 2 && iArr[1] == 0) {
                if (u0.b.f17320f == 0) {
                    if (iArr[0] == 220) {
                        u0.d.U1(1);
                        z.k.s(1, 170, 145);
                    } else if (u0.b.f17368x != 0) {
                        u0.d.U1(1);
                    }
                    return true;
                }
                if (u0.b.f17332j != 0) {
                    u0.d.N(0);
                    return true;
                }
            }
            return false;
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
            iArr[0] = 7;
            iArr[6] = 4;
            iArr[5] = 5;
            j.this.T3();
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.A);
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() != 6) {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
            u0.b.t4[5] = 22;
            z.k.j("/dev/ttyS0", 9600, 2);
            return;
        }
        int[] iArr = u0.b.t4;
        iArr[3] = 6;
        y0.d.r();
        y0.d.x();
        z.k.g("/dev/ttyS0");
        iArr[5] = 22;
        int[] iArr2 = y0.d.f18015a;
        iArr2[14] = 2;
        iArr2[14] = 2;
        y0.d.f18017c[14] = 3;
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
            u0.b.t4[5] = 22;
        } else if (g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "CXJ";
        m1.a.f13515d = 16;
        super.j3();
        y0.g.f18091a.a(this.A, 0);
        if (o1.q0.v()) {
            u0.b.V3 = true;
        }
        e.c.f1595a = new a();
        o1.v vVar = e.c.D;
        vVar.b();
        vVar.a(e.a.j(), -500);
        vVar.a(e.a.f(), 2000);
    }
}

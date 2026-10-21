package n0;

/* JADX INFO: loaded from: classes2.dex */
public class z extends c4 {

    public class a implements o1.o {
        public a() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != -3) {
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

    @Override // n0.c4
    public void C3() {
        super.C3();
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() != 6) {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
            u0.b.t4[7] = 22;
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
            u0.b.t4[7] = 22;
        } else if (g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "BEJ";
        m1.a.f13515d = 38;
        super.j3();
    }

    @Override // n0.c4
    public void x3() {
        super.x3();
        u0.b.Y2 = new a();
    }
}

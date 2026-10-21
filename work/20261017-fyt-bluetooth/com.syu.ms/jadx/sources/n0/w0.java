package n0;

/* JADX INFO: loaded from: classes2.dex */
public class w0 extends c4 {

    public class a implements o1.o {
        public a() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            o1.u.i();
            return true;
        }
    }

    @Override // n0.c4
    public void P2() {
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
        u0.b.P3 = 0;
        super.X2();
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
        j4.f16465c = "SMS";
        m1.a.f13515d = 73;
        u0.b.P3 = 1;
        super.j3();
        e.c.f1612r = new a();
    }
}

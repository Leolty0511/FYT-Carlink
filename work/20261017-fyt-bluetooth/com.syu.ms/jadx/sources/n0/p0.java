package n0;

/* JADX INFO: loaded from: classes2.dex */
public class p0 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int[] f16532z = {40, 90};
    public static int[] A = {30, 80};

    public class a implements o1.o {
        public a() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != -3) {
                return true;
            }
            int[] iArr2 = u0.b.f17366w == 0 ? p0.f16532z : p0.A;
            int length = iArr2.length;
            int i3 = (u0.b.K > iArr2[0] ? 1 : 0) - 1;
            if (u0.b.f17332j == 1 && u0.b.f17320f != 0) {
                u0.d.N(0);
                return true;
            }
            if (i3 > -1 && i3 < length) {
                u0.d.V(o1.o0.a(iArr2[i3], 0, u0.b.Q));
                o1.n0.b();
            } else if (i3 == -1) {
                u0.d.N(1);
                a.i.a0(200L);
                u0.d.V(u0.b.Q);
            }
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
    public void b3() {
        g.f.l();
        if (g.e.g() == 1) {
            int[] iArr = u0.b.t4;
            iArr[5] = 22;
            iArr[7] = 22;
        } else if (g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "SP";
        m1.a.f13515d = 66;
        super.j3();
    }

    @Override // n0.c4
    public void x3() {
        super.x3();
        u0.b.Y2 = new a();
    }
}

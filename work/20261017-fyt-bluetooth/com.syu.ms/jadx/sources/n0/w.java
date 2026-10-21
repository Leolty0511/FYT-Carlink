package n0;

/* JADX INFO: loaded from: classes2.dex */
public class w extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f16611z = 3;
    public Runnable A = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18031a != 1) {
                return;
            }
            int[] iArr = y0.f.f18086x0;
            iArr[0] = 4;
            iArr[5] = 8;
            iArr[1] = 1;
            w.this.T3();
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.A);
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
        z.k.f("/dev/ttyS0");
        int[] iArr = y0.b.f17952b;
        iArr[4] = iArr[7];
    }

    public final void T3() {
        System.arraycopy(new int[]{255, 192, 185, 180, 175, 170, 166, 165, 161, 158, 155, 153, 150, 149, 148, 147, 146, 145, 144, 143, 142, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125}, 0, y0.b.f17954d, 0, 37);
    }

    @Override // n0.c4, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 != 0) {
            return;
        }
        o1.x.v(bVar, i2, j4.f16470h[0]);
    }

    @Override // n0.c4, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && k3(iArr, 1)) {
            int i3 = iArr[0];
            if (i3 != 1 && i3 != 3) {
                i3 = 3;
            }
            if (m1.a.f13514c) {
                int[] iArr2 = j4.f16470h;
                if (iArr2[0] != i3) {
                    iArr2[0] = i3;
                    k4.l(0, i3);
                    o1.x.x(j4.f16467e, 0, i3);
                    o1.k.a().postDelayed(a.i.f84d, 1000L);
                }
            }
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "HY";
        m1.a.f13515d = 35;
        p0.b.f17025g = 2;
        super.j3();
        y0.g.f18091a.a(this.A, 0);
    }
}

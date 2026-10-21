package n0;

import k0.nt;
import k0.qt;

/* JADX INFO: loaded from: classes2.dex */
public class c extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16321z = new b();

    public class a implements o1.o {
        public a() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            int i3 = nt.L;
            u0.d.m0(a.b.f31s, nt.L != 1);
            qt.f9739s.a(i2, iArr, fArr, strArr, obj);
            return true;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = y0.f.f18031a;
            if (i2 == 1) {
                int[] iArr = y0.f.f18086x0;
                iArr[0] = 7;
                iArr[8] = 8;
            } else {
                if (i2 != 2) {
                    return;
                }
                int[] iArr2 = y0.f.f18086x0;
                iArr2[0] = 8;
                iArr2[5] = 3;
                iArr2[1] = 10;
                iArr2[6] = 1;
            }
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.f16321z);
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() == 6) {
            u0.b.t4[3] = 6;
            y0.d.r();
            y0.d.x();
            z.k.g("/dev/ttyS0");
        } else {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
            z.k.f("/dev/ttyS0");
            u0.b.t4[3] = 3;
            int[] iArr = y0.b.f17952b;
            iArr[4] = iArr[7];
            o0.e.f16776g = 0;
        }
        if (o1.q0.v()) {
            u0.b.P2 = 0;
            u0.b.R2 = 0;
            h0.c.f2446l0 = true;
        }
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        if (g.e.g() != 1) {
            if (g.e.g() == 2) {
                u0.b.t4[3] = 6;
            }
        } else {
            z.k.f("/dev/ttyS1");
            u0.b.t4[3] = 3;
            int[] iArr = y0.b.f17952b;
            iArr[4] = iArr[7];
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "HS";
        m1.a.f13515d = 180150002;
        u0.b.V3 = true;
        u0.b.h2 = true;
        e.b.f1594b = 1;
        super.j3();
        y0.g.f18091a.a(this.f16321z, 0);
        w0.d.R = 5;
        w0.d.S = 6;
        o1.v vVar = e.c.D;
        vVar.b();
        vVar.a(e.a.k(), -500);
        vVar.a(e.a.f(), 2000);
        nt.f8640d0 = new a();
    }
}
